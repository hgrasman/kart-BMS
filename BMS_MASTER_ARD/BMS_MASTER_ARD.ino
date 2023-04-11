#include <Wire.h>

#define SAM_VSENSE_PIN A5
#define SAM_BAL_PIN 6
#define SAM_T1_PIN A3
#define SAM_T2_PIN A4
#define SAM_RELAY_PIN 8
#define SAM_SSTART_PIN 10
#define SAM_CURR_PIN A2
#define SAM_CHARGE_SWITCH_PIN 7

inline void slowStartRelay(){ //  
  digitalWrite(SAM_SSTART_PIN, HIGH); //precharge for 4.5 seconds
  delay(1500);
  digitalWrite(SAM_RELAY_PIN, HIGH); //close main relay
  delay(500);
  digitalWrite(SAM_SSTART_PIN, LOW); //disconnect precharge relay after additional .5s
}
inline void stopRelay(){ // 
  digitalWrite(SAM_RELAY_PIN, LOW); //cut relay
  digitalWrite(SAM_SSTART_PIN, LOW); //redundant just in case
}


unsigned long lastRead;
double current;
double charge = 0;

void setup() {

  // Setup I2C and uart
  Wire.begin();
  Serial.begin(9600);
  Wire.setWireTimeout(5000, true);

  //setup balance command 
  pinMode(SAM_BAL_PIN, OUTPUT);
  digitalWrite(SAM_BAL_PIN, LOW); //balance init off

  //setup Relay pins
  pinMode(SAM_RELAY_PIN, OUTPUT);
  pinMode(SAM_SSTART_PIN, OUTPUT);
  digitalWrite(SAM_RELAY_PIN, LOW);
  digitalWrite(SAM_SSTART_PIN, LOW);

  //setup charge/discharge switch pin
  pinMode(SAM_CHARGE_SWITCH_PIN, INPUT_PULLUP);
      
  lastRead = millis();
}

#define MINADDR 8
#define MAXADDR 19
#define CONTROLVOLT 0x11
#define ARRADDR addr-MINADDR
#define NUMTEMPS 5
#define BALANCETHRESH -.01

#define CURRENT_MAX_ALLOWED 350 

#define MINV 3.2
#define MINV_LOADED 3.0
#define MAXV 4.2
#define MAXTEMP 60

#define LEM_CENTER_OFFSET 1.485
#define LEM_RANGE 3.0
#define CURRENTMAX 400

double avgs[MAXADDR - MINADDR + 1];
bool balnce[MAXADDR - MINADDR + 1];
double temps[MAXADDR - MINADDR + 1][NUMTEMPS];
bool sam_balance;
double sam_volt;
double sam_temp1;
double sam_temp2;
bool chargeMode;
bool relayClosed = false;

void loop() {
  // put your main code here, to run repeatedly:

  union booga{
    uint8_t raw[2];
    uint16_t mashed;
  }booling;  

  chargeMode = digitalRead(SAM_CHARGE_SWITCH_PIN); //poll switch for pack mode

  double rel_avg = 0;
  uint8_t count = 0;
  double min_v = 5;
  double max_v = 0;
  double max_temp = 0;
  for (int addr = MINADDR; addr <= MAXADDR; addr++ ){
    //Serial.print("Polling:"); Serial.println(addr);

    Wire.beginTransmission(addr);
    Wire.write(CONTROLVOLT | balnce[ARRADDR]<<5);
    byte error = Wire.endTransmission(); // run transaction
    delay(2);

    if (error){
      //Serial.println("NACK");
      avgs[ARRADDR] = -1;
    }else{
      Wire.requestFrom(addr, 2);
      booling.raw[0] = Wire.read();
      booling.raw[1] = Wire.read();
      if (avgs[ARRADDR]>0){ avgs[ARRADDR] = (double) (.85*(double)avgs[ARRADDR] + .15*(double)booling.mashed);} //convert to volts
      else{avgs[ARRADDR] = (double)booling.mashed;} //lost contact, get value
      double volts = (2.048 * 1024) / avgs[ARRADDR];
      Serial.print("Found: "); Serial.print(addr); Serial.print(" Counts: "); Serial.print(avgs[ARRADDR]); Serial.print(" VOLTS: "); Serial.println(volts);
      rel_avg += volts; count++;
      if (volts>max_v){max_v = volts;}
      if (volts<min_v){min_v = volts;}

      //get temp data
      for (int i = 0; i<NUMTEMPS; i++){
        Wire.beginTransmission(addr);
        Wire.write((uint8_t) i+1 | balnce[ARRADDR]<<5);
        byte error = Wire.endTransmission(); // run transaction
        delay(2);

        if (error){
          //Serial.println("NACK");
          temps[ARRADDR][i] = -1;
        }else{
          Wire.requestFrom(addr, 2);
          booling.raw[0] = Wire.read();
          booling.raw[1] = Wire.read();      
        }
        if (temps[ARRADDR][i]>0){ temps[ARRADDR][i] = (double) (.5*(double)temps[ARRADDR][i] + .5*(double)booling.mashed);} //convert to volts
        else{temps[ARRADDR][i] = (double)booling.mashed;} //lost contact, get value
        double temp_OHMS = -(100000*temps[ARRADDR][i]) / (temps[ARRADDR][i] - 1024);
        double temp_actual = 55.31 * exp((temp_OHMS/1000)*-0.07449) + 63.29*exp((temp_OHMS/1000)*-0.009305);
        if (temp_actual>max_temp){max_temp = temp_actual;}
        Serial.print(" T"); Serial.print(i+1); Serial.print(": "); Serial.print(temp_actual);
        delay(3);
      }   
      Serial.println();       
    }
    delay(3);  

  }

  digitalWrite(SAM_BAL_PIN, LOW); //stop balancing
  delay(80); //necessary for voltage to stabilize
  sam_volt = .5*sam_volt + .5*(double) analogRead(SAM_VSENSE_PIN); //include samc
  double sam_volt_actual = (sam_volt*5 ) / 1024;
  if (sam_volt_actual>max_v){max_v = sam_volt_actual;}
  if (sam_volt_actual<min_v){min_v = sam_volt_actual;}
  sam_temp1 = .5*sam_temp1 + .5*(double) analogRead(SAM_T1_PIN);
  sam_temp2 = .5*sam_temp2 + .5*(double) analogRead(SAM_T2_PIN);
  double sam_t1_OHMS = -(100000*sam_temp1) / (sam_temp1 - sam_volt); //scales temp reading to pack voltage
  double sam_t2_OHMS = -(100000*sam_temp2) / (sam_temp2 - sam_volt); //because thermistors are not referenced to 5v
  double sam_T1_actual = 55.31 * exp((sam_t1_OHMS/1000)*-0.07449) + 63.29*exp((sam_t1_OHMS/1000)*-0.009305);
  double sam_T2_actual = 55.31 * exp((sam_t2_OHMS/1000)*-0.07449) + 63.29*exp((sam_t2_OHMS/1000)*-0.009305);
  Serial.print("NEG: Volt: "); Serial.print(sam_volt_actual); Serial.print(" T1: "); Serial.print(sam_T1_actual); Serial.print(" T2: "); Serial.println(sam_T2_actual); 

  //calculate avg voltages
  if (count>1){
    rel_avg += sam_volt_actual; //include samc
    Serial.print("Count: "); Serial.print(count); Serial.print(" TOT: "); Serial.println(rel_avg);
    rel_avg = rel_avg/(count+1);
  }else if (count==1){
    rel_avg = rel_avg;
  }else{
    Serial.println("Zero Count");
    rel_avg = -1;
  }

  //decide balancing
  for (int addr = MINADDR; addr <= MAXADDR; addr++ ){
    if (avgs[ARRADDR]<0){continue;}   
    if (rel_avg<0){break;} 
    double volts = (2.048 * 1024) / avgs[ARRADDR];
    if (chargeMode && ((volts - rel_avg) > BALANCETHRESH)){ //flag for balance during charge only
      balnce[ARRADDR] = true;
      Serial.print("Balancing: "); Serial.println(addr);
    }else{
      balnce[ARRADDR] = false;
    }  
  }

  if (rel_avg>0){
    if (chargeMode && ((sam_volt_actual - rel_avg) > BALANCETHRESH)){
      digitalWrite(SAM_BAL_PIN, HIGH);
      Serial.println("Balancing SAM");
    }
  }

  Serial.print("MIN: "); Serial.print(min_v);  Serial.print(" AVG: "); Serial.print(rel_avg); Serial.print(" MAX: "); Serial.println(max_v);
  Serial.print("MAX TEMP: "); Serial.println(max_temp);

  //current sensing
  double lem_volts = ((double)analogRead(SAM_CURR_PIN)*5)/1024;
  current = ((lem_volts - LEM_CENTER_OFFSET)/(LEM_RANGE/2)) * CURRENTMAX; //Current
  charge += current*(double)(lastRead-millis()) /1000; //charge count
  lastRead = millis();
  Serial.print("LEM Volts: "); Serial.print(lem_volts); Serial.print("Current: "); Serial.print(current); Serial.print(" Charge: "); Serial.println(charge);


  //determine if relay should be closed/open
  if (chargeMode && relayClosed){ 
    stopRelay(); //open relay
    relayClosed = false;
    Serial.println("RELAY OPEN: CHARGE READY");
  }
  if (!chargeMode && !relayClosed){ //need to discharge but relay is open
    if (min_v > MINV){ //close if above min cell voltage
      slowStartRelay(); //close relay
      relayClosed = true;
      Serial.println("RELAY CLOSED: DISCHARGE READY");
    }else{Serial.println("CANNOT CLOSE RELAY: VOLTAGE LOW");}
  }

  // enforce safety limits
  if (chargeMode){
    if (max_v >= MAXV){stopRelay(); relayClosed = false; Serial.println("RELAY TRIP MAX V");} //too high disconnect charger
  }else{
    if (min_v <= MINV_LOADED){stopRelay(); relayClosed = false; Serial.println("RELAY TRIP MIN V");} //enforce minimum loaded
  }
  if (current > CURRENT_MAX_ALLOWED){
    stopRelay();
    Serial.println("OVERCURRENT: TIMEOUT 1s");
    delay(1000);
  }
  if (max_temp>MAXTEMP){
    stopRelay();
    Serial.println("OVERTEMP: TIMEOUT 1s");
    delay(1000);
  }
  if (count == 0) {
    stopRelay();
    Serial.println("Cell Lost: TIMEOUT 1s");
    delay(1000);
  } 
  
}
