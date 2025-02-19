# 1 "mcc_generated_files/pwm2.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "mcc_generated_files/pwm2.c" 2
# 51 "mcc_generated_files/pwm2.c"
# 1 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\xc.h" 1 3
# 18 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\xc.h" 3
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.40\\pic\\include\\c99\\xc8debug.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.40\\pic\\include\\c99\\stdlib.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.40\\pic\\include\\c99\\musl_xc8.h" 1 3
# 4 "C:\\Program Files\\Microchip\\xc8\\v2.40\\pic\\include\\c99\\stdlib.h" 2 3






# 1 "C:\\Program Files\\Microchip\\xc8\\v2.40\\pic\\include\\c99\\features.h" 1 3
# 10 "C:\\Program Files\\Microchip\\xc8\\v2.40\\pic\\include\\c99\\stdlib.h" 2 3
# 21 "C:\\Program Files\\Microchip\\xc8\\v2.40\\pic\\include\\c99\\stdlib.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.40\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 18 "C:\\Program Files\\Microchip\\xc8\\v2.40\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long int wchar_t;
# 122 "C:\\Program Files\\Microchip\\xc8\\v2.40\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned size_t;
# 168 "C:\\Program Files\\Microchip\\xc8\\v2.40\\pic\\include\\c99\\bits/alltypes.h" 3
typedef __int24 int24_t;
# 204 "C:\\Program Files\\Microchip\\xc8\\v2.40\\pic\\include\\c99\\bits/alltypes.h" 3
typedef __uint24 uint24_t;
# 21 "C:\\Program Files\\Microchip\\xc8\\v2.40\\pic\\include\\c99\\stdlib.h" 2 3


int atoi (const char *);
long atol (const char *);
long long atoll (const char *);
double atof (const char *);

float strtof (const char *restrict, char **restrict);
double strtod (const char *restrict, char **restrict);
long double strtold (const char *restrict, char **restrict);



long strtol (const char *restrict, char **restrict, int);
unsigned long strtoul (const char *restrict, char **restrict, int);
long long strtoll (const char *restrict, char **restrict, int);
unsigned long long strtoull (const char *restrict, char **restrict, int);

int rand (void);
void srand (unsigned);

void *malloc (size_t);
void *calloc (size_t, size_t);
void *realloc (void *, size_t);
void free (void *);

          void abort (void);
int atexit (void (*) (void));
          void exit (int);
          void _Exit (int);

void *bsearch (const void *, const void *, size_t, size_t, int (*)(const void *, const void *));







__attribute__((nonreentrant)) void qsort (void *, size_t, size_t, int (*)(const void *, const void *));

int abs (int);
long labs (long);
long long llabs (long long);

typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;
typedef struct { long long quot, rem; } lldiv_t;

div_t div (int, int);
ldiv_t ldiv (long, long);
lldiv_t lldiv (long long, long long);

typedef struct { unsigned int quot, rem; } udiv_t;
typedef struct { unsigned long quot, rem; } uldiv_t;
udiv_t udiv (unsigned int, unsigned int);
uldiv_t uldiv (unsigned long, unsigned long);
# 4 "C:\\Program Files\\Microchip\\xc8\\v2.40\\pic\\include\\c99\\xc8debug.h" 2 3








#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);
# 24 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\xc.h" 2 3
# 1 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\builtins.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.40\\pic\\include\\c99\\stdint.h" 1 3
# 22 "C:\\Program Files\\Microchip\\xc8\\v2.40\\pic\\include\\c99\\stdint.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.40\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 127 "C:\\Program Files\\Microchip\\xc8\\v2.40\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned long uintptr_t;
# 142 "C:\\Program Files\\Microchip\\xc8\\v2.40\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long intptr_t;
# 158 "C:\\Program Files\\Microchip\\xc8\\v2.40\\pic\\include\\c99\\bits/alltypes.h" 3
typedef signed char int8_t;




typedef short int16_t;
# 173 "C:\\Program Files\\Microchip\\xc8\\v2.40\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long int32_t;





typedef long long int64_t;
# 188 "C:\\Program Files\\Microchip\\xc8\\v2.40\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long long intmax_t;





typedef unsigned char uint8_t;




typedef unsigned short uint16_t;
# 209 "C:\\Program Files\\Microchip\\xc8\\v2.40\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned long uint32_t;





typedef unsigned long long uint64_t;
# 229 "C:\\Program Files\\Microchip\\xc8\\v2.40\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned long long uintmax_t;
# 22 "C:\\Program Files\\Microchip\\xc8\\v2.40\\pic\\include\\c99\\stdint.h" 2 3


typedef int8_t int_fast8_t;

typedef int64_t int_fast64_t;


typedef int8_t int_least8_t;
typedef int16_t int_least16_t;

typedef int24_t int_least24_t;
typedef int24_t int_fast24_t;

typedef int32_t int_least32_t;

typedef int64_t int_least64_t;


typedef uint8_t uint_fast8_t;

typedef uint64_t uint_fast64_t;


typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;

typedef uint24_t uint_least24_t;
typedef uint24_t uint_fast24_t;

typedef uint32_t uint_least32_t;

typedef uint64_t uint_least64_t;
# 144 "C:\\Program Files\\Microchip\\xc8\\v2.40\\pic\\include\\c99\\stdint.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.40\\pic\\include\\c99\\bits/stdint.h" 1 3
typedef int16_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef uint16_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
# 144 "C:\\Program Files\\Microchip\\xc8\\v2.40\\pic\\include\\c99\\stdint.h" 2 3
# 5 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\builtins.h" 2 3


#pragma intrinsic(__nop)
extern void __nop(void);


#pragma intrinsic(_delay)
extern __attribute__((nonreentrant)) void _delay(uint32_t);
#pragma intrinsic(_delaywdt)
extern __attribute__((nonreentrant)) void _delaywdt(uint32_t);

#pragma intrinsic(_delay3)
extern __attribute__((nonreentrant)) void _delay3(uint8_t);
# 25 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\xc.h" 2 3



# 1 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\pic.h" 1 3




# 1 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\htc.h" 1 3



# 1 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\xc.h" 1 3
# 5 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\htc.h" 2 3
# 6 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\pic.h" 2 3







# 1 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\pic_chip_select.h" 1 3
# 140 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\pic_chip_select.h" 3
# 1 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 1 3
# 45 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
# 1 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\__at.h" 1 3
# 46 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 2 3







extern volatile unsigned char INDF0 __attribute__((address(0x000)));

__asm("INDF0 equ 00h");


typedef union {
    struct {
        unsigned INDF0 :8;
    };
} INDF0bits_t;
extern volatile INDF0bits_t INDF0bits __attribute__((address(0x000)));
# 73 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char INDF1 __attribute__((address(0x001)));

__asm("INDF1 equ 01h");


typedef union {
    struct {
        unsigned INDF1 :8;
    };
} INDF1bits_t;
extern volatile INDF1bits_t INDF1bits __attribute__((address(0x001)));
# 93 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char PCL __attribute__((address(0x002)));

__asm("PCL equ 02h");


typedef union {
    struct {
        unsigned PCL :8;
    };
} PCLbits_t;
extern volatile PCLbits_t PCLbits __attribute__((address(0x002)));
# 113 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char STATUS __attribute__((address(0x003)));

__asm("STATUS equ 03h");


typedef union {
    struct {
        unsigned C :1;
        unsigned DC :1;
        unsigned Z :1;
        unsigned nPD :1;
        unsigned nTO :1;
    };
    struct {
        unsigned CARRY :1;
        unsigned :1;
        unsigned ZERO :1;
    };
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __attribute__((address(0x003)));
# 172 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned short FSR0 __attribute__((address(0x004)));



extern volatile unsigned char FSR0L __attribute__((address(0x004)));

__asm("FSR0L equ 04h");


typedef union {
    struct {
        unsigned FSR0L :8;
    };
} FSR0Lbits_t;
extern volatile FSR0Lbits_t FSR0Lbits __attribute__((address(0x004)));
# 196 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char FSR0H __attribute__((address(0x005)));

__asm("FSR0H equ 05h");


typedef union {
    struct {
        unsigned FSR0H :8;
    };
} FSR0Hbits_t;
extern volatile FSR0Hbits_t FSR0Hbits __attribute__((address(0x005)));
# 216 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned short FSR1 __attribute__((address(0x006)));



extern volatile unsigned char FSR1L __attribute__((address(0x006)));

__asm("FSR1L equ 06h");


typedef union {
    struct {
        unsigned FSR1L :8;
    };
} FSR1Lbits_t;
extern volatile FSR1Lbits_t FSR1Lbits __attribute__((address(0x006)));
# 240 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char FSR1H __attribute__((address(0x007)));

__asm("FSR1H equ 07h");


typedef union {
    struct {
        unsigned FSR1H :8;
    };
} FSR1Hbits_t;
extern volatile FSR1Hbits_t FSR1Hbits __attribute__((address(0x007)));
# 260 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char BSR __attribute__((address(0x008)));

__asm("BSR equ 08h");


typedef union {
    struct {
        unsigned BSR :5;
    };
    struct {
        unsigned BSR0 :1;
        unsigned BSR1 :1;
        unsigned BSR2 :1;
        unsigned BSR3 :1;
        unsigned BSR4 :1;
    };
} BSRbits_t;
extern volatile BSRbits_t BSRbits __attribute__((address(0x008)));
# 312 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char WREG __attribute__((address(0x009)));

__asm("WREG equ 09h");


typedef union {
    struct {
        unsigned WREG0 :8;
    };
} WREGbits_t;
extern volatile WREGbits_t WREGbits __attribute__((address(0x009)));
# 332 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char PCLATH __attribute__((address(0x00A)));

__asm("PCLATH equ 0Ah");


typedef union {
    struct {
        unsigned PCLATH :7;
    };
} PCLATHbits_t;
extern volatile PCLATHbits_t PCLATHbits __attribute__((address(0x00A)));
# 352 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char INTCON __attribute__((address(0x00B)));

__asm("INTCON equ 0Bh");


typedef union {
    struct {
        unsigned IOCIF :1;
        unsigned INTF :1;
        unsigned TMR0IF :1;
        unsigned IOCIE :1;
        unsigned INTE :1;
        unsigned TMR0IE :1;
        unsigned PEIE :1;
        unsigned GIE :1;
    };
    struct {
        unsigned :2;
        unsigned T0IF :1;
        unsigned :2;
        unsigned T0IE :1;
    };
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __attribute__((address(0x00B)));
# 430 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char PORTA __attribute__((address(0x00C)));

__asm("PORTA equ 0Ch");


typedef union {
    struct {
        unsigned RA0 :1;
        unsigned RA1 :1;
        unsigned RA2 :1;
        unsigned RA3 :1;
        unsigned RA4 :1;
        unsigned RA5 :1;
    };
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __attribute__((address(0x00C)));
# 480 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char PORTB __attribute__((address(0x00D)));

__asm("PORTB equ 0Dh");


typedef union {
    struct {
        unsigned :4;
        unsigned RB4 :1;
        unsigned RB5 :1;
        unsigned RB6 :1;
        unsigned RB7 :1;
    };
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __attribute__((address(0x00D)));
# 519 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char PORTC __attribute__((address(0x00E)));

__asm("PORTC equ 0Eh");


typedef union {
    struct {
        unsigned RC0 :1;
        unsigned RC1 :1;
        unsigned RC2 :1;
        unsigned RC3 :1;
        unsigned RC4 :1;
        unsigned RC5 :1;
        unsigned RC6 :1;
        unsigned RC7 :1;
    };
} PORTCbits_t;
extern volatile PORTCbits_t PORTCbits __attribute__((address(0x00E)));
# 581 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char PIR1 __attribute__((address(0x011)));

__asm("PIR1 equ 011h");


typedef union {
    struct {
        unsigned TMR1IF :1;
        unsigned TMR2IF :1;
        unsigned :1;
        unsigned SSP1IF :1;
        unsigned TXIF :1;
        unsigned RCIF :1;
        unsigned ADIF :1;
        unsigned TMR1GIF :1;
    };
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __attribute__((address(0x011)));
# 638 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char PIR2 __attribute__((address(0x012)));

__asm("PIR2 equ 012h");


typedef union {
    struct {
        unsigned :2;
        unsigned NCO1IF :1;
        unsigned BCL1IF :1;
        unsigned :1;
        unsigned C1IF :1;
        unsigned C2IF :1;
        unsigned OSFIF :1;
    };
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __attribute__((address(0x012)));
# 684 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char PIR3 __attribute__((address(0x013)));

__asm("PIR3 equ 013h");


typedef union {
    struct {
        unsigned CLC1IF :1;
        unsigned CLC2IF :1;
        unsigned CLC3IF :1;
        unsigned CLC4IF :1;
    };
} PIR3bits_t;
extern volatile PIR3bits_t PIR3bits __attribute__((address(0x013)));
# 722 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char TMR0 __attribute__((address(0x015)));

__asm("TMR0 equ 015h");


typedef union {
    struct {
        unsigned TMR0 :8;
    };
} TMR0bits_t;
extern volatile TMR0bits_t TMR0bits __attribute__((address(0x015)));
# 742 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned short TMR1 __attribute__((address(0x016)));

__asm("TMR1 equ 016h");




extern volatile unsigned char TMR1L __attribute__((address(0x016)));

__asm("TMR1L equ 016h");


typedef union {
    struct {
        unsigned TMR1L :8;
    };
} TMR1Lbits_t;
extern volatile TMR1Lbits_t TMR1Lbits __attribute__((address(0x016)));
# 769 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char TMR1H __attribute__((address(0x017)));

__asm("TMR1H equ 017h");


typedef union {
    struct {
        unsigned TMR1H :8;
    };
} TMR1Hbits_t;
extern volatile TMR1Hbits_t TMR1Hbits __attribute__((address(0x017)));
# 789 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char T1CON __attribute__((address(0x018)));

__asm("T1CON equ 018h");


typedef union {
    struct {
        unsigned TMR1ON :1;
        unsigned :1;
        unsigned nT1SYNC :1;
        unsigned T1OSCEN :1;
        unsigned T1CKPS :2;
        unsigned TMR1CS :2;
    };
    struct {
        unsigned :4;
        unsigned T1CKPS0 :1;
        unsigned T1CKPS1 :1;
        unsigned TMR1CS0 :1;
        unsigned TMR1CS1 :1;
    };
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __attribute__((address(0x018)));
# 861 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char T1GCON __attribute__((address(0x019)));

__asm("T1GCON equ 019h");


typedef union {
    struct {
        unsigned T1GSS :2;
        unsigned T1GVAL :1;
        unsigned T1GGO_nDONE :1;
        unsigned T1GSPM :1;
        unsigned T1GTM :1;
        unsigned T1GPOL :1;
        unsigned TMR1GE :1;
    };
    struct {
        unsigned T1GSS0 :1;
        unsigned T1GSS1 :1;
    };
} T1GCONbits_t;
extern volatile T1GCONbits_t T1GCONbits __attribute__((address(0x019)));
# 931 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char TMR2 __attribute__((address(0x01A)));

__asm("TMR2 equ 01Ah");


typedef union {
    struct {
        unsigned TMR2 :8;
    };
} TMR2bits_t;
extern volatile TMR2bits_t TMR2bits __attribute__((address(0x01A)));
# 951 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char PR2 __attribute__((address(0x01B)));

__asm("PR2 equ 01Bh");


typedef union {
    struct {
        unsigned PR2 :8;
    };
} PR2bits_t;
extern volatile PR2bits_t PR2bits __attribute__((address(0x01B)));
# 971 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char T2CON __attribute__((address(0x01C)));

__asm("T2CON equ 01Ch");


typedef union {
    struct {
        unsigned T2CKPS :2;
        unsigned TMR2ON :1;
        unsigned T2OUTPS :4;
    };
    struct {
        unsigned T2CKPS0 :1;
        unsigned T2CKPS1 :1;
        unsigned :1;
        unsigned T2OUTPS0 :1;
        unsigned T2OUTPS1 :1;
        unsigned T2OUTPS2 :1;
        unsigned T2OUTPS3 :1;
    };
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __attribute__((address(0x01C)));
# 1042 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char TRISA __attribute__((address(0x08C)));

__asm("TRISA equ 08Ch");


typedef union {
    struct {
        unsigned TRISA0 :1;
        unsigned TRISA1 :1;
        unsigned TRISA2 :1;
        unsigned TRISA3 :1;
        unsigned TRISA4 :1;
        unsigned TRISA5 :1;
    };
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __attribute__((address(0x08C)));
# 1092 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char TRISB __attribute__((address(0x08D)));

__asm("TRISB equ 08Dh");


typedef union {
    struct {
        unsigned :4;
        unsigned TRISB4 :1;
        unsigned TRISB5 :1;
        unsigned TRISB6 :1;
        unsigned TRISB7 :1;
    };
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __attribute__((address(0x08D)));
# 1131 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char TRISC __attribute__((address(0x08E)));

__asm("TRISC equ 08Eh");


typedef union {
    struct {
        unsigned TRISC0 :1;
        unsigned TRISC1 :1;
        unsigned TRISC2 :1;
        unsigned TRISC3 :1;
        unsigned TRISC4 :1;
        unsigned TRISC5 :1;
        unsigned TRISC6 :1;
        unsigned TRISC7 :1;
    };
} TRISCbits_t;
extern volatile TRISCbits_t TRISCbits __attribute__((address(0x08E)));
# 1193 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char PIE1 __attribute__((address(0x091)));

__asm("PIE1 equ 091h");


typedef union {
    struct {
        unsigned TMR1IE :1;
        unsigned TMR2IE :1;
        unsigned :1;
        unsigned SSP1IE :1;
        unsigned TXIE :1;
        unsigned RCIE :1;
        unsigned ADIE :1;
        unsigned TMR1GIE :1;
    };
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __attribute__((address(0x091)));
# 1250 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char PIE2 __attribute__((address(0x092)));

__asm("PIE2 equ 092h");


typedef union {
    struct {
        unsigned :2;
        unsigned NCO1IE :1;
        unsigned BCL1IE :1;
        unsigned :1;
        unsigned C1IE :1;
        unsigned C2IE :1;
        unsigned OSFIE :1;
    };
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __attribute__((address(0x092)));
# 1296 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char PIE3 __attribute__((address(0x093)));

__asm("PIE3 equ 093h");


typedef union {
    struct {
        unsigned CLC1IE :1;
        unsigned CLC2IE :1;
        unsigned CLC3IE :1;
        unsigned CLC4IE :1;
    };
} PIE3bits_t;
extern volatile PIE3bits_t PIE3bits __attribute__((address(0x093)));
# 1334 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char OPTION_REG __attribute__((address(0x095)));

__asm("OPTION_REG equ 095h");


typedef union {
    struct {
        unsigned PS :3;
        unsigned PSA :1;
        unsigned TMR0SE :1;
        unsigned TMR0CS :1;
        unsigned INTEDG :1;
        unsigned nWPUEN :1;
    };
    struct {
        unsigned PS0 :1;
        unsigned PS1 :1;
        unsigned PS2 :1;
        unsigned :1;
        unsigned T0SE :1;
        unsigned T0CS :1;
    };
} OPTION_REGbits_t;
extern volatile OPTION_REGbits_t OPTION_REGbits __attribute__((address(0x095)));
# 1417 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char PCON __attribute__((address(0x096)));

__asm("PCON equ 096h");


typedef union {
    struct {
        unsigned nBOR :1;
        unsigned nPOR :1;
        unsigned nRI :1;
        unsigned nRMCLR :1;
        unsigned nRWDT :1;
        unsigned :1;
        unsigned STKUNF :1;
        unsigned STKOVF :1;
    };
} PCONbits_t;
extern volatile PCONbits_t PCONbits __attribute__((address(0x096)));
# 1474 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char WDTCON __attribute__((address(0x097)));

__asm("WDTCON equ 097h");


typedef union {
    struct {
        unsigned SWDTEN :1;
        unsigned WDTPS :5;
    };
    struct {
        unsigned :1;
        unsigned WDTPS0 :1;
        unsigned WDTPS1 :1;
        unsigned WDTPS2 :1;
        unsigned WDTPS3 :1;
        unsigned WDTPS4 :1;
    };
} WDTCONbits_t;
extern volatile WDTCONbits_t WDTCONbits __attribute__((address(0x097)));
# 1533 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char OSCCON __attribute__((address(0x099)));

__asm("OSCCON equ 099h");


typedef union {
    struct {
        unsigned SCS :2;
        unsigned :1;
        unsigned IRCF :4;
    };
    struct {
        unsigned SCS0 :1;
        unsigned SCS1 :1;
        unsigned :1;
        unsigned IRCF0 :1;
        unsigned IRCF1 :1;
        unsigned IRCF2 :1;
        unsigned IRCF3 :1;
    };
} OSCCONbits_t;
extern volatile OSCCONbits_t OSCCONbits __attribute__((address(0x099)));
# 1599 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char OSCSTAT __attribute__((address(0x09A)));

__asm("OSCSTAT equ 09Ah");


typedef union {
    struct {
        unsigned HFIOFS :1;
        unsigned LFIOFR :1;
        unsigned :2;
        unsigned HFIOFR :1;
        unsigned OSTS :1;
        unsigned :1;
        unsigned SOSCR :1;
    };
} OSCSTATbits_t;
extern volatile OSCSTATbits_t OSCSTATbits __attribute__((address(0x09A)));
# 1645 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned short ADRES __attribute__((address(0x09B)));

__asm("ADRES equ 09Bh");




extern volatile unsigned char ADRESL __attribute__((address(0x09B)));

__asm("ADRESL equ 09Bh");


typedef union {
    struct {
        unsigned ADRESL :8;
    };
} ADRESLbits_t;
extern volatile ADRESLbits_t ADRESLbits __attribute__((address(0x09B)));
# 1672 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char ADRESH __attribute__((address(0x09C)));

__asm("ADRESH equ 09Ch");


typedef union {
    struct {
        unsigned ADRESH :8;
    };
} ADRESHbits_t;
extern volatile ADRESHbits_t ADRESHbits __attribute__((address(0x09C)));
# 1692 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char ADCON0 __attribute__((address(0x09D)));

__asm("ADCON0 equ 09Dh");


typedef union {
    struct {
        unsigned ADON :1;
        unsigned GO_nDONE :1;
        unsigned CHS :5;
    };
    struct {
        unsigned :1;
        unsigned ADGO :1;
        unsigned CHS0 :1;
        unsigned CHS1 :1;
        unsigned CHS2 :1;
        unsigned CHS3 :1;
        unsigned CHS4 :1;
    };
    struct {
        unsigned :1;
        unsigned GO :1;
    };
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __attribute__((address(0x09D)));
# 1772 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char ADCON1 __attribute__((address(0x09E)));

__asm("ADCON1 equ 09Eh");


typedef union {
    struct {
        unsigned ADPREF :2;
        unsigned :2;
        unsigned ADCS :3;
        unsigned ADFM :1;
    };
    struct {
        unsigned ADPREF0 :1;
        unsigned ADPREF1 :1;
    };
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __attribute__((address(0x09E)));
# 1819 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char ADCON2 __attribute__((address(0x09F)));

__asm("ADCON2 equ 09Fh");


typedef union {
    struct {
        unsigned :4;
        unsigned TRIGSEL :4;
    };
    struct {
        unsigned :4;
        unsigned TRIGSEL0 :1;
        unsigned TRIGSEL1 :1;
        unsigned TRIGSEL2 :1;
        unsigned TRIGSEL3 :1;
    };
} ADCON2bits_t;
extern volatile ADCON2bits_t ADCON2bits __attribute__((address(0x09F)));
# 1867 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char LATA __attribute__((address(0x10C)));

__asm("LATA equ 010Ch");


typedef union {
    struct {
        unsigned LATA0 :1;
        unsigned LATA1 :1;
        unsigned LATA2 :1;
        unsigned :1;
        unsigned LATA4 :1;
        unsigned LATA5 :1;
    };
} LATAbits_t;
extern volatile LATAbits_t LATAbits __attribute__((address(0x10C)));
# 1912 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char LATB __attribute__((address(0x10D)));

__asm("LATB equ 010Dh");


typedef union {
    struct {
        unsigned :4;
        unsigned LATB4 :1;
        unsigned LATB5 :1;
        unsigned LATB6 :1;
        unsigned LATB7 :1;
    };
} LATBbits_t;
extern volatile LATBbits_t LATBbits __attribute__((address(0x10D)));
# 1951 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char LATC __attribute__((address(0x10E)));

__asm("LATC equ 010Eh");


typedef union {
    struct {
        unsigned LATC0 :1;
        unsigned LATC1 :1;
        unsigned LATC2 :1;
        unsigned LATC3 :1;
        unsigned LATC4 :1;
        unsigned LATC5 :1;
        unsigned LATC6 :1;
        unsigned LATC7 :1;
    };
} LATCbits_t;
extern volatile LATCbits_t LATCbits __attribute__((address(0x10E)));
# 2013 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CM1CON0 __attribute__((address(0x111)));

__asm("CM1CON0 equ 0111h");


typedef union {
    struct {
        unsigned C1SYNC :1;
        unsigned C1HYS :1;
        unsigned C1SP :1;
        unsigned :1;
        unsigned C1POL :1;
        unsigned C1OE :1;
        unsigned C1OUT :1;
        unsigned C1ON :1;
    };
} CM1CON0bits_t;
extern volatile CM1CON0bits_t CM1CON0bits __attribute__((address(0x111)));
# 2070 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CM1CON1 __attribute__((address(0x112)));

__asm("CM1CON1 equ 0112h");


typedef union {
    struct {
        unsigned C1NCH0 :1;
        unsigned C1NCH1 :1;
        unsigned C1NCH2 :1;
        unsigned :1;
        unsigned C1PCH0 :1;
        unsigned C1PCH1 :1;
        unsigned C1INTN :1;
        unsigned C1INTP :1;
    };
    struct {
        unsigned C1NCH :3;
        unsigned :1;
        unsigned C1PCH :2;
    };
} CM1CON1bits_t;
extern volatile CM1CON1bits_t CM1CON1bits __attribute__((address(0x112)));
# 2142 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CM2CON0 __attribute__((address(0x113)));

__asm("CM2CON0 equ 0113h");


typedef union {
    struct {
        unsigned C2SYNC :1;
        unsigned C2HYS :1;
        unsigned C2SP :1;
        unsigned :1;
        unsigned C2POL :1;
        unsigned C2OE :1;
        unsigned C2OUT :1;
        unsigned C2ON :1;
    };
} CM2CON0bits_t;
extern volatile CM2CON0bits_t CM2CON0bits __attribute__((address(0x113)));
# 2199 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CM2CON1 __attribute__((address(0x114)));

__asm("CM2CON1 equ 0114h");


typedef union {
    struct {
        unsigned C2NCH0 :1;
        unsigned C2NCH1 :1;
        unsigned C2NCH2 :1;
        unsigned :1;
        unsigned C2PCH0 :1;
        unsigned C2PCH1 :1;
        unsigned C2INTN :1;
        unsigned C2INTP :1;
    };
    struct {
        unsigned C2NCH :3;
        unsigned :1;
        unsigned C2PCH :2;
    };
} CM2CON1bits_t;
extern volatile CM2CON1bits_t CM2CON1bits __attribute__((address(0x114)));
# 2271 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CMOUT __attribute__((address(0x115)));

__asm("CMOUT equ 0115h");


typedef union {
    struct {
        unsigned MC1OUT :1;
        unsigned MC2OUT :1;
    };
} CMOUTbits_t;
extern volatile CMOUTbits_t CMOUTbits __attribute__((address(0x115)));
# 2297 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char BORCON __attribute__((address(0x116)));

__asm("BORCON equ 0116h");


typedef union {
    struct {
        unsigned BORRDY :1;
        unsigned :5;
        unsigned BORFS :1;
        unsigned SBOREN :1;
    };
} BORCONbits_t;
extern volatile BORCONbits_t BORCONbits __attribute__((address(0x116)));
# 2330 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char FVRCON __attribute__((address(0x117)));

__asm("FVRCON equ 0117h");


typedef union {
    struct {
        unsigned ADFVR :2;
        unsigned CDAFVR :2;
        unsigned TSRNG :1;
        unsigned TSEN :1;
        unsigned FVRRDY :1;
        unsigned FVREN :1;
    };
    struct {
        unsigned ADFVR0 :1;
        unsigned ADFVR1 :1;
        unsigned CDAFVR0 :1;
        unsigned CDAFVR1 :1;
    };
} FVRCONbits_t;
extern volatile FVRCONbits_t FVRCONbits __attribute__((address(0x117)));
# 2406 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char DACCON0 __attribute__((address(0x118)));

__asm("DACCON0 equ 0118h");


typedef union {
    struct {
        unsigned :2;
        unsigned DACPSS :1;
        unsigned :1;
        unsigned DACOE2 :1;
        unsigned DACOE1 :1;
        unsigned :1;
        unsigned DACEN :1;
    };
} DACCON0bits_t;
extern volatile DACCON0bits_t DACCON0bits __attribute__((address(0x118)));
# 2447 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char DACCON1 __attribute__((address(0x119)));

__asm("DACCON1 equ 0119h");


typedef union {
    struct {
        unsigned DACR :5;
    };
    struct {
        unsigned DACR0 :1;
        unsigned DACR1 :1;
        unsigned DACR2 :1;
        unsigned DACR3 :1;
        unsigned DACR4 :1;
    };
} DACCON1bits_t;
extern volatile DACCON1bits_t DACCON1bits __attribute__((address(0x119)));
# 2499 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char APFCON __attribute__((address(0x11D)));

__asm("APFCON equ 011Dh");


typedef union {
    struct {
        unsigned NCO1SEL :1;
        unsigned CLC1SEL :1;
        unsigned :1;
        unsigned T1GSEL :1;
        unsigned SSSEL :1;
    };
    struct {
        unsigned NCOSEL :1;
    };
} APFCONbits_t;
extern volatile APFCONbits_t APFCONbits __attribute__((address(0x11D)));
# 2546 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char ANSELA __attribute__((address(0x18C)));

__asm("ANSELA equ 018Ch");


typedef union {
    struct {
        unsigned ANSA0 :1;
        unsigned ANSA1 :1;
        unsigned ANSA2 :1;
        unsigned :1;
        unsigned ANSA4 :1;
    };
    struct {
        unsigned ANSELA :6;
    };
} ANSELAbits_t;
extern volatile ANSELAbits_t ANSELAbits __attribute__((address(0x18C)));
# 2593 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char ANSELB __attribute__((address(0x18D)));

__asm("ANSELB equ 018Dh");


typedef union {
    struct {
        unsigned :4;
        unsigned ANSB4 :1;
        unsigned ANSB5 :1;
    };
    struct {
        unsigned :4;
        unsigned ANSB :4;
    };
} ANSELBbits_t;
extern volatile ANSELBbits_t ANSELBbits __attribute__((address(0x18D)));
# 2629 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char ANSELC __attribute__((address(0x18E)));

__asm("ANSELC equ 018Eh");


typedef union {
    struct {
        unsigned ANSC0 :1;
        unsigned ANSC1 :1;
        unsigned ANSC2 :1;
        unsigned ANSC3 :1;
        unsigned :2;
        unsigned ANSC6 :1;
        unsigned ANSC7 :1;
    };
    struct {
        unsigned ANSELC :8;
    };
} ANSELCbits_t;
extern volatile ANSELCbits_t ANSELCbits __attribute__((address(0x18E)));
# 2688 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned short PMADR __attribute__((address(0x191)));

__asm("PMADR equ 0191h");




extern volatile unsigned char PMADRL __attribute__((address(0x191)));

__asm("PMADRL equ 0191h");


typedef union {
    struct {
        unsigned PMADRL :8;
    };
} PMADRLbits_t;
extern volatile PMADRLbits_t PMADRLbits __attribute__((address(0x191)));
# 2715 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char PMADRH __attribute__((address(0x192)));

__asm("PMADRH equ 0192h");


typedef union {
    struct {
        unsigned PMADRH :7;
    };
} PMADRHbits_t;
extern volatile PMADRHbits_t PMADRHbits __attribute__((address(0x192)));
# 2735 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned short PMDAT __attribute__((address(0x193)));

__asm("PMDAT equ 0193h");




extern volatile unsigned char PMDATL __attribute__((address(0x193)));

__asm("PMDATL equ 0193h");


typedef union {
    struct {
        unsigned PMDATL :8;
    };
} PMDATLbits_t;
extern volatile PMDATLbits_t PMDATLbits __attribute__((address(0x193)));
# 2762 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char PMDATH __attribute__((address(0x194)));

__asm("PMDATH equ 0194h");


typedef union {
    struct {
        unsigned PMDATH :6;
    };
} PMDATHbits_t;
extern volatile PMDATHbits_t PMDATHbits __attribute__((address(0x194)));
# 2782 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char PMCON1 __attribute__((address(0x195)));

__asm("PMCON1 equ 0195h");


typedef union {
    struct {
        unsigned RD :1;
        unsigned WR :1;
        unsigned WREN :1;
        unsigned WRERR :1;
        unsigned FREE :1;
        unsigned LWLO :1;
        unsigned CFGS :1;
    };
} PMCON1bits_t;
extern volatile PMCON1bits_t PMCON1bits __attribute__((address(0x195)));
# 2838 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char PMCON2 __attribute__((address(0x196)));

__asm("PMCON2 equ 0196h");


typedef union {
    struct {
        unsigned PMCON2 :8;
    };
} PMCON2bits_t;
extern volatile PMCON2bits_t PMCON2bits __attribute__((address(0x196)));
# 2858 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char VREGCON __attribute__((address(0x197)));

__asm("VREGCON equ 0197h");


typedef union {
    struct {
        unsigned :1;
        unsigned VREGPM :1;
    };
} VREGCONbits_t;
extern volatile VREGCONbits_t VREGCONbits __attribute__((address(0x197)));
# 2879 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char RCREG __attribute__((address(0x199)));

__asm("RCREG equ 0199h");


typedef union {
    struct {
        unsigned RCREG :8;
    };
} RCREGbits_t;
extern volatile RCREGbits_t RCREGbits __attribute__((address(0x199)));
# 2899 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char TXREG __attribute__((address(0x19A)));

__asm("TXREG equ 019Ah");


typedef union {
    struct {
        unsigned TXREG :8;
    };
} TXREGbits_t;
extern volatile TXREGbits_t TXREGbits __attribute__((address(0x19A)));
# 2919 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned short SPBRG __attribute__((address(0x19B)));

__asm("SPBRG equ 019Bh");




extern volatile unsigned char SPBRGL __attribute__((address(0x19B)));

__asm("SPBRGL equ 019Bh");


typedef union {
    struct {
        unsigned SPBRGL :8;
    };
} SPBRGLbits_t;
extern volatile SPBRGLbits_t SPBRGLbits __attribute__((address(0x19B)));
# 2946 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char SPBRGH __attribute__((address(0x19C)));

__asm("SPBRGH equ 019Ch");


typedef union {
    struct {
        unsigned SPBRGH :8;
    };
} SPBRGHbits_t;
extern volatile SPBRGHbits_t SPBRGHbits __attribute__((address(0x19C)));
# 2966 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char RCSTA __attribute__((address(0x19D)));

__asm("RCSTA equ 019Dh");


typedef union {
    struct {
        unsigned RX9D :1;
        unsigned OERR :1;
        unsigned FERR :1;
        unsigned ADDEN :1;
        unsigned CREN :1;
        unsigned SREN :1;
        unsigned RX9 :1;
        unsigned SPEN :1;
    };
} RCSTAbits_t;
extern volatile RCSTAbits_t RCSTAbits __attribute__((address(0x19D)));
# 3028 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char TXSTA __attribute__((address(0x19E)));

__asm("TXSTA equ 019Eh");


typedef union {
    struct {
        unsigned TX9D :1;
        unsigned TRMT :1;
        unsigned BRGH :1;
        unsigned SENDB :1;
        unsigned SYNC :1;
        unsigned TXEN :1;
        unsigned TX9 :1;
        unsigned CSRC :1;
    };
} TXSTAbits_t;
extern volatile TXSTAbits_t TXSTAbits __attribute__((address(0x19E)));
# 3090 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char BAUDCON __attribute__((address(0x19F)));

__asm("BAUDCON equ 019Fh");


typedef union {
    struct {
        unsigned ABDEN :1;
        unsigned WUE :1;
        unsigned :1;
        unsigned BRG16 :1;
        unsigned SCKP :1;
        unsigned :1;
        unsigned RCIDL :1;
        unsigned ABDOVF :1;
    };
} BAUDCONbits_t;
extern volatile BAUDCONbits_t BAUDCONbits __attribute__((address(0x19F)));
# 3142 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char WPUA __attribute__((address(0x20C)));

__asm("WPUA equ 020Ch");


typedef union {
    struct {
        unsigned WPUA0 :1;
        unsigned WPUA1 :1;
        unsigned WPUA2 :1;
        unsigned WPUA3 :1;
        unsigned WPUA4 :1;
        unsigned WPUA5 :1;
    };
    struct {
        unsigned WPUA :6;
    };
} WPUAbits_t;
extern volatile WPUAbits_t WPUAbits __attribute__((address(0x20C)));
# 3200 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char WPUB __attribute__((address(0x20D)));

__asm("WPUB equ 020Dh");


typedef union {
    struct {
        unsigned :4;
        unsigned WPUB4 :1;
        unsigned WPUB5 :1;
        unsigned WPUB6 :1;
        unsigned WPUB7 :1;
    };
    struct {
        unsigned :4;
        unsigned WPUB :4;
    };
} WPUBbits_t;
extern volatile WPUBbits_t WPUBbits __attribute__((address(0x20D)));
# 3248 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char SSP1BUF __attribute__((address(0x211)));

__asm("SSP1BUF equ 0211h");


extern volatile unsigned char SSPBUF __attribute__((address(0x211)));

__asm("SSPBUF equ 0211h");


typedef union {
    struct {
        unsigned SSPBUF :8;
    };
} SSP1BUFbits_t;
extern volatile SSP1BUFbits_t SSP1BUFbits __attribute__((address(0x211)));







typedef union {
    struct {
        unsigned SSPBUF :8;
    };
} SSPBUFbits_t;
extern volatile SSPBUFbits_t SSPBUFbits __attribute__((address(0x211)));
# 3286 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char SSP1ADD __attribute__((address(0x212)));

__asm("SSP1ADD equ 0212h");


extern volatile unsigned char SSPADD __attribute__((address(0x212)));

__asm("SSPADD equ 0212h");


typedef union {
    struct {
        unsigned ADD :8;
    };
} SSP1ADDbits_t;
extern volatile SSP1ADDbits_t SSP1ADDbits __attribute__((address(0x212)));







typedef union {
    struct {
        unsigned ADD :8;
    };
} SSPADDbits_t;
extern volatile SSPADDbits_t SSPADDbits __attribute__((address(0x212)));
# 3324 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char SSP1MSK __attribute__((address(0x213)));

__asm("SSP1MSK equ 0213h");


extern volatile unsigned char SSPMSK __attribute__((address(0x213)));

__asm("SSPMSK equ 0213h");


typedef union {
    struct {
        unsigned MSK :8;
    };
} SSP1MSKbits_t;
extern volatile SSP1MSKbits_t SSP1MSKbits __attribute__((address(0x213)));







typedef union {
    struct {
        unsigned MSK :8;
    };
} SSPMSKbits_t;
extern volatile SSPMSKbits_t SSPMSKbits __attribute__((address(0x213)));
# 3362 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char SSP1STAT __attribute__((address(0x214)));

__asm("SSP1STAT equ 0214h");


extern volatile unsigned char SSPSTAT __attribute__((address(0x214)));

__asm("SSPSTAT equ 0214h");


typedef union {
    struct {
        unsigned BF :1;
        unsigned UA :1;
        unsigned R_nW :1;
        unsigned S :1;
        unsigned P :1;
        unsigned D_nA :1;
        unsigned CKE :1;
        unsigned SMP :1;
    };
} SSP1STATbits_t;
extern volatile SSP1STATbits_t SSP1STATbits __attribute__((address(0x214)));
# 3427 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
typedef union {
    struct {
        unsigned BF :1;
        unsigned UA :1;
        unsigned R_nW :1;
        unsigned S :1;
        unsigned P :1;
        unsigned D_nA :1;
        unsigned CKE :1;
        unsigned SMP :1;
    };
} SSPSTATbits_t;
extern volatile SSPSTATbits_t SSPSTATbits __attribute__((address(0x214)));
# 3484 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char SSP1CON1 __attribute__((address(0x215)));

__asm("SSP1CON1 equ 0215h");


extern volatile unsigned char SSPCON __attribute__((address(0x215)));

__asm("SSPCON equ 0215h");

extern volatile unsigned char SSPCON1 __attribute__((address(0x215)));

__asm("SSPCON1 equ 0215h");


typedef union {
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM :4;
    };
} SSP1CON1bits_t;
extern volatile SSP1CON1bits_t SSP1CON1bits __attribute__((address(0x215)));
# 3561 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
typedef union {
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM :4;
    };
} SSPCONbits_t;
extern volatile SSPCONbits_t SSPCONbits __attribute__((address(0x215)));
# 3623 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
typedef union {
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM :4;
    };
} SSPCON1bits_t;
extern volatile SSPCON1bits_t SSPCON1bits __attribute__((address(0x215)));
# 3688 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char SSP1CON2 __attribute__((address(0x216)));

__asm("SSP1CON2 equ 0216h");


extern volatile unsigned char SSPCON2 __attribute__((address(0x216)));

__asm("SSPCON2 equ 0216h");


typedef union {
    struct {
        unsigned SEN :1;
        unsigned RSEN :1;
        unsigned PEN :1;
        unsigned RCEN :1;
        unsigned ACKEN :1;
        unsigned ACKDT :1;
        unsigned ACKSTAT :1;
        unsigned GCEN :1;
    };
} SSP1CON2bits_t;
extern volatile SSP1CON2bits_t SSP1CON2bits __attribute__((address(0x216)));
# 3753 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
typedef union {
    struct {
        unsigned SEN :1;
        unsigned RSEN :1;
        unsigned PEN :1;
        unsigned RCEN :1;
        unsigned ACKEN :1;
        unsigned ACKDT :1;
        unsigned ACKSTAT :1;
        unsigned GCEN :1;
    };
} SSPCON2bits_t;
extern volatile SSPCON2bits_t SSPCON2bits __attribute__((address(0x216)));
# 3810 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char SSP1CON3 __attribute__((address(0x217)));

__asm("SSP1CON3 equ 0217h");


extern volatile unsigned char SSPCON3 __attribute__((address(0x217)));

__asm("SSPCON3 equ 0217h");


typedef union {
    struct {
        unsigned DHEN :1;
        unsigned AHEN :1;
        unsigned SBCDE :1;
        unsigned SDAHT :1;
        unsigned BOEN :1;
        unsigned SCIE :1;
        unsigned PCIE :1;
        unsigned ACKTIM :1;
    };
} SSP1CON3bits_t;
extern volatile SSP1CON3bits_t SSP1CON3bits __attribute__((address(0x217)));
# 3875 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
typedef union {
    struct {
        unsigned DHEN :1;
        unsigned AHEN :1;
        unsigned SBCDE :1;
        unsigned SDAHT :1;
        unsigned BOEN :1;
        unsigned SCIE :1;
        unsigned PCIE :1;
        unsigned ACKTIM :1;
    };
} SSPCON3bits_t;
extern volatile SSPCON3bits_t SSPCON3bits __attribute__((address(0x217)));
# 3932 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char IOCAP __attribute__((address(0x391)));

__asm("IOCAP equ 0391h");


typedef union {
    struct {
        unsigned IOCAP0 :1;
        unsigned IOCAP1 :1;
        unsigned IOCAP2 :1;
        unsigned IOCAP3 :1;
        unsigned IOCAP4 :1;
        unsigned IOCAP5 :1;
    };
    struct {
        unsigned IOCAP :6;
    };
} IOCAPbits_t;
extern volatile IOCAPbits_t IOCAPbits __attribute__((address(0x391)));
# 3990 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char IOCAN __attribute__((address(0x392)));

__asm("IOCAN equ 0392h");


typedef union {
    struct {
        unsigned IOCAN0 :1;
        unsigned IOCAN1 :1;
        unsigned IOCAN2 :1;
        unsigned IOCAN3 :1;
        unsigned IOCAN4 :1;
        unsigned IOCAN5 :1;
    };
    struct {
        unsigned IOCAN :6;
    };
} IOCANbits_t;
extern volatile IOCANbits_t IOCANbits __attribute__((address(0x392)));
# 4048 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char IOCAF __attribute__((address(0x393)));

__asm("IOCAF equ 0393h");


typedef union {
    struct {
        unsigned IOCAF0 :1;
        unsigned IOCAF1 :1;
        unsigned IOCAF2 :1;
        unsigned IOCAF3 :1;
        unsigned IOCAF4 :1;
        unsigned IOCAF5 :1;
    };
    struct {
        unsigned IOCAF :6;
    };
} IOCAFbits_t;
extern volatile IOCAFbits_t IOCAFbits __attribute__((address(0x393)));
# 4106 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char IOCBP __attribute__((address(0x394)));

__asm("IOCBP equ 0394h");


typedef union {
    struct {
        unsigned :4;
        unsigned IOCBP4 :1;
        unsigned IOCBP5 :1;
        unsigned IOCBP6 :1;
        unsigned IOCBP7 :1;
    };
    struct {
        unsigned :4;
        unsigned IOCBP :4;
    };
} IOCBPbits_t;
extern volatile IOCBPbits_t IOCBPbits __attribute__((address(0x394)));
# 4154 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char IOCBN __attribute__((address(0x395)));

__asm("IOCBN equ 0395h");


typedef union {
    struct {
        unsigned :4;
        unsigned IOCBN4 :1;
        unsigned IOCBN5 :1;
        unsigned IOCBN6 :1;
        unsigned IOCBN7 :1;
    };
    struct {
        unsigned :4;
        unsigned IOCBN :4;
    };
} IOCBNbits_t;
extern volatile IOCBNbits_t IOCBNbits __attribute__((address(0x395)));
# 4202 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char IOCBF __attribute__((address(0x396)));

__asm("IOCBF equ 0396h");


typedef union {
    struct {
        unsigned :4;
        unsigned IOCBF4 :1;
        unsigned IOCBF5 :1;
        unsigned IOCBF6 :1;
        unsigned IOCBF7 :1;
    };
    struct {
        unsigned :4;
        unsigned IOCBF :4;
    };
} IOCBFbits_t;
extern volatile IOCBFbits_t IOCBFbits __attribute__((address(0x396)));
# 4251 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile __uint24 NCO1ACC __attribute__((address(0x498)));


__asm("NCO1ACC equ 0498h");




extern volatile unsigned char NCO1ACCL __attribute__((address(0x498)));

__asm("NCO1ACCL equ 0498h");


typedef union {
    struct {
        unsigned NCO1ACC0 :1;
        unsigned NCO1ACC1 :1;
        unsigned NCO1ACC2 :1;
        unsigned NCO1ACC3 :1;
        unsigned NCO1ACC4 :1;
        unsigned NCO1ACC5 :1;
        unsigned NCO1ACC6 :1;
        unsigned NCO1ACC7 :1;
    };
} NCO1ACCLbits_t;
extern volatile NCO1ACCLbits_t NCO1ACCLbits __attribute__((address(0x498)));
# 4321 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char NCO1ACCH __attribute__((address(0x499)));

__asm("NCO1ACCH equ 0499h");


typedef union {
    struct {
        unsigned NCO1ACC8 :1;
        unsigned NCO1ACC9 :1;
        unsigned NCO1ACC10 :1;
        unsigned NCO1ACC11 :1;
        unsigned NCO1ACC12 :1;
        unsigned NCO1ACC13 :1;
        unsigned NCO1ACC14 :1;
        unsigned NCO1ACC15 :1;
    };
} NCO1ACCHbits_t;
extern volatile NCO1ACCHbits_t NCO1ACCHbits __attribute__((address(0x499)));
# 4383 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char NCO1ACCU __attribute__((address(0x49A)));

__asm("NCO1ACCU equ 049Ah");


typedef union {
    struct {
        unsigned NCO1ACC16 :1;
        unsigned NCO1ACC17 :1;
        unsigned NCO1ACC18 :1;
        unsigned NCO1ACC19 :1;
    };
} NCO1ACCUbits_t;
extern volatile NCO1ACCUbits_t NCO1ACCUbits __attribute__((address(0x49A)));
# 4422 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile __uint24 NCO1INC __attribute__((address(0x49B)));


__asm("NCO1INC equ 049Bh");




extern volatile unsigned char NCO1INCL __attribute__((address(0x49B)));

__asm("NCO1INCL equ 049Bh");


typedef union {
    struct {
        unsigned NCO1INC0 :1;
        unsigned NCO1INC1 :1;
        unsigned NCO1INC2 :1;
        unsigned NCO1INC3 :1;
        unsigned NCO1INC4 :1;
        unsigned NCO1INC5 :1;
        unsigned NCO1INC6 :1;
        unsigned NCO1INC7 :1;
    };
} NCO1INCLbits_t;
extern volatile NCO1INCLbits_t NCO1INCLbits __attribute__((address(0x49B)));
# 4492 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char NCO1INCH __attribute__((address(0x49C)));

__asm("NCO1INCH equ 049Ch");


typedef union {
    struct {
        unsigned NCO1INC8 :1;
        unsigned NCO1INC9 :1;
        unsigned NCO1INC10 :1;
        unsigned NCO1INC11 :1;
        unsigned NCO1INC12 :1;
        unsigned NCO1INC13 :1;
        unsigned NCO1INC14 :1;
        unsigned NCO1INC15 :1;
    };
} NCO1INCHbits_t;
extern volatile NCO1INCHbits_t NCO1INCHbits __attribute__((address(0x49C)));
# 4554 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char NCO1INCU __attribute__((address(0x49D)));

__asm("NCO1INCU equ 049Dh");




extern volatile unsigned char NCO1CON __attribute__((address(0x49E)));

__asm("NCO1CON equ 049Eh");


typedef union {
    struct {
        unsigned N1PFM :1;
        unsigned :3;
        unsigned N1POL :1;
        unsigned N1OUT :1;
        unsigned N1OE :1;
        unsigned N1EN :1;
    };
} NCO1CONbits_t;
extern volatile NCO1CONbits_t NCO1CONbits __attribute__((address(0x49E)));
# 4606 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char NCO1CLK __attribute__((address(0x49F)));

__asm("NCO1CLK equ 049Fh");


typedef union {
    struct {
        unsigned N1CKS :4;
        unsigned :1;
        unsigned N1PWS :3;
    };
    struct {
        unsigned N1CKS0 :1;
        unsigned N1CKS1 :1;
        unsigned :3;
        unsigned N1PWS0 :1;
        unsigned N1PWS1 :1;
        unsigned N1PWS2 :1;
    };
} NCO1CLKbits_t;
extern volatile NCO1CLKbits_t NCO1CLKbits __attribute__((address(0x49F)));
# 4666 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char PWM1DCL __attribute__((address(0x611)));

__asm("PWM1DCL equ 0611h");


typedef union {
    struct {
        unsigned :6;
        unsigned PWM1DCL :2;
    };
    struct {
        unsigned :6;
        unsigned PWM1DCL0 :1;
        unsigned PWM1DCL1 :1;
    };
} PWM1DCLbits_t;
extern volatile PWM1DCLbits_t PWM1DCLbits __attribute__((address(0x611)));
# 4702 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char PWM1DCH __attribute__((address(0x612)));

__asm("PWM1DCH equ 0612h");


typedef union {
    struct {
        unsigned PWM1DCH :8;
    };
    struct {
        unsigned PWM1DCH0 :1;
        unsigned PWM1DCH1 :1;
        unsigned PWM1DCH2 :1;
        unsigned PWM1DCH3 :1;
        unsigned PWM1DCH4 :1;
        unsigned PWM1DCH5 :1;
        unsigned PWM1DCH6 :1;
        unsigned PWM1DCH7 :1;
    };
} PWM1DCHbits_t;
extern volatile PWM1DCHbits_t PWM1DCHbits __attribute__((address(0x612)));
# 4772 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char PWM1CON __attribute__((address(0x613)));

__asm("PWM1CON equ 0613h");


extern volatile unsigned char PWM1CON0 __attribute__((address(0x613)));

__asm("PWM1CON0 equ 0613h");


typedef union {
    struct {
        unsigned :4;
        unsigned PWM1POL :1;
        unsigned PWM1OUT :1;
        unsigned PWM1OE :1;
        unsigned PWM1EN :1;
    };
} PWM1CONbits_t;
extern volatile PWM1CONbits_t PWM1CONbits __attribute__((address(0x613)));
# 4814 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
typedef union {
    struct {
        unsigned :4;
        unsigned PWM1POL :1;
        unsigned PWM1OUT :1;
        unsigned PWM1OE :1;
        unsigned PWM1EN :1;
    };
} PWM1CON0bits_t;
extern volatile PWM1CON0bits_t PWM1CON0bits __attribute__((address(0x613)));
# 4848 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char PWM2DCL __attribute__((address(0x614)));

__asm("PWM2DCL equ 0614h");


typedef union {
    struct {
        unsigned :6;
        unsigned PWM2DCL :2;
    };
    struct {
        unsigned :6;
        unsigned PWM2DCL0 :1;
        unsigned PWM2DCL1 :1;
    };
} PWM2DCLbits_t;
extern volatile PWM2DCLbits_t PWM2DCLbits __attribute__((address(0x614)));
# 4884 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char PWM2DCH __attribute__((address(0x615)));

__asm("PWM2DCH equ 0615h");


typedef union {
    struct {
        unsigned PWM2DCH :8;
    };
    struct {
        unsigned PWM2DCH0 :1;
        unsigned PWM2DCH1 :1;
        unsigned PWM2DCH2 :1;
        unsigned PWM2DCH3 :1;
        unsigned PWM2DCH4 :1;
        unsigned PWM2DCH5 :1;
        unsigned PWM2DCH6 :1;
        unsigned PWM2DCH7 :1;
    };
} PWM2DCHbits_t;
extern volatile PWM2DCHbits_t PWM2DCHbits __attribute__((address(0x615)));
# 4954 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char PWM2CON __attribute__((address(0x616)));

__asm("PWM2CON equ 0616h");


extern volatile unsigned char PWM2CON0 __attribute__((address(0x616)));

__asm("PWM2CON0 equ 0616h");


typedef union {
    struct {
        unsigned :4;
        unsigned PWM2POL :1;
        unsigned PWM2OUT :1;
        unsigned PWM2OE :1;
        unsigned PWM2EN :1;
    };
} PWM2CONbits_t;
extern volatile PWM2CONbits_t PWM2CONbits __attribute__((address(0x616)));
# 4996 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
typedef union {
    struct {
        unsigned :4;
        unsigned PWM2POL :1;
        unsigned PWM2OUT :1;
        unsigned PWM2OE :1;
        unsigned PWM2EN :1;
    };
} PWM2CON0bits_t;
extern volatile PWM2CON0bits_t PWM2CON0bits __attribute__((address(0x616)));
# 5030 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char PWM3DCL __attribute__((address(0x617)));

__asm("PWM3DCL equ 0617h");


typedef union {
    struct {
        unsigned :6;
        unsigned PWM3DCL :2;
    };
    struct {
        unsigned :6;
        unsigned PWM3DCL0 :1;
        unsigned PWM3DCL1 :1;
    };
} PWM3DCLbits_t;
extern volatile PWM3DCLbits_t PWM3DCLbits __attribute__((address(0x617)));
# 5066 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char PWM3DCH __attribute__((address(0x618)));

__asm("PWM3DCH equ 0618h");


typedef union {
    struct {
        unsigned PWM3DCH :8;
    };
    struct {
        unsigned PWM3DCH0 :1;
        unsigned PWM3DCH1 :1;
        unsigned PWM3DCH2 :1;
        unsigned PWM3DCH3 :1;
        unsigned PWM3DCH4 :1;
        unsigned PWM3DCH5 :1;
        unsigned PWM3DCH6 :1;
        unsigned PWM3DCH7 :1;
    };
} PWM3DCHbits_t;
extern volatile PWM3DCHbits_t PWM3DCHbits __attribute__((address(0x618)));
# 5136 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char PWM3CON __attribute__((address(0x619)));

__asm("PWM3CON equ 0619h");


extern volatile unsigned char PWM3CON0 __attribute__((address(0x619)));

__asm("PWM3CON0 equ 0619h");


typedef union {
    struct {
        unsigned :4;
        unsigned PWM3POL :1;
        unsigned PWM3OUT :1;
        unsigned PWM3OE :1;
        unsigned PWM3EN :1;
    };
} PWM3CONbits_t;
extern volatile PWM3CONbits_t PWM3CONbits __attribute__((address(0x619)));
# 5178 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
typedef union {
    struct {
        unsigned :4;
        unsigned PWM3POL :1;
        unsigned PWM3OUT :1;
        unsigned PWM3OE :1;
        unsigned PWM3EN :1;
    };
} PWM3CON0bits_t;
extern volatile PWM3CON0bits_t PWM3CON0bits __attribute__((address(0x619)));
# 5212 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char PWM4DCL __attribute__((address(0x61A)));

__asm("PWM4DCL equ 061Ah");


typedef union {
    struct {
        unsigned :6;
        unsigned PWM4DCL :2;
    };
    struct {
        unsigned :6;
        unsigned PWM4DCL0 :1;
        unsigned PWM4DCL1 :1;
    };
} PWM4DCLbits_t;
extern volatile PWM4DCLbits_t PWM4DCLbits __attribute__((address(0x61A)));
# 5248 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char PWM4DCH __attribute__((address(0x61B)));

__asm("PWM4DCH equ 061Bh");


typedef union {
    struct {
        unsigned PWM4DCH :8;
    };
    struct {
        unsigned PWM4DCH0 :1;
        unsigned PWM4DCH1 :1;
        unsigned PWM4DCH2 :1;
        unsigned PWM4DCH3 :1;
        unsigned PWM4DCH4 :1;
        unsigned PWM4DCH5 :1;
        unsigned PWM4DCH6 :1;
        unsigned PWM4DCH7 :1;
    };
} PWM4DCHbits_t;
extern volatile PWM4DCHbits_t PWM4DCHbits __attribute__((address(0x61B)));
# 5318 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char PWM4CON __attribute__((address(0x61C)));

__asm("PWM4CON equ 061Ch");


extern volatile unsigned char PWM4CON0 __attribute__((address(0x61C)));

__asm("PWM4CON0 equ 061Ch");


typedef union {
    struct {
        unsigned :4;
        unsigned PWM4POL :1;
        unsigned PWM4OUT :1;
        unsigned PWM4OE :1;
        unsigned PWM4EN :1;
    };
} PWM4CONbits_t;
extern volatile PWM4CONbits_t PWM4CONbits __attribute__((address(0x61C)));
# 5360 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
typedef union {
    struct {
        unsigned :4;
        unsigned PWM4POL :1;
        unsigned PWM4OUT :1;
        unsigned PWM4OE :1;
        unsigned PWM4EN :1;
    };
} PWM4CON0bits_t;
extern volatile PWM4CON0bits_t PWM4CON0bits __attribute__((address(0x61C)));
# 5394 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CWG1DBR __attribute__((address(0x691)));

__asm("CWG1DBR equ 0691h");


typedef union {
    struct {
        unsigned CWG1DBR :6;
    };
    struct {
        unsigned CWG1DBR0 :1;
        unsigned CWG1DBR1 :1;
        unsigned CWG1DBR2 :1;
        unsigned CWG1DBR3 :1;
        unsigned CWG1DBR4 :1;
        unsigned CWG1DBR5 :1;
    };
} CWG1DBRbits_t;
extern volatile CWG1DBRbits_t CWG1DBRbits __attribute__((address(0x691)));
# 5452 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CWG1DBF __attribute__((address(0x692)));

__asm("CWG1DBF equ 0692h");


typedef union {
    struct {
        unsigned CWG1DBF :6;
    };
    struct {
        unsigned CWG1DBF0 :1;
        unsigned CWG1DBF1 :1;
        unsigned CWG1DBF2 :1;
        unsigned CWG1DBF3 :1;
        unsigned CWG1DBF4 :1;
        unsigned CWG1DBF5 :1;
    };
} CWG1DBFbits_t;
extern volatile CWG1DBFbits_t CWG1DBFbits __attribute__((address(0x692)));
# 5510 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CWG1CON0 __attribute__((address(0x693)));

__asm("CWG1CON0 equ 0693h");


typedef union {
    struct {
        unsigned G1CS0 :1;
        unsigned :2;
        unsigned G1POLA :1;
        unsigned G1POLB :1;
        unsigned G1OEA :1;
        unsigned G1OEB :1;
        unsigned G1EN :1;
    };
    struct {
        unsigned G1CS :2;
    };
} CWG1CON0bits_t;
extern volatile CWG1CON0bits_t CWG1CON0bits __attribute__((address(0x693)));
# 5569 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CWG1CON1 __attribute__((address(0x694)));

__asm("CWG1CON1 equ 0694h");


typedef union {
    struct {
        unsigned G1IS0 :1;
        unsigned G1IS1 :1;
        unsigned G1IS2 :1;
        unsigned :1;
        unsigned G1ASDLA :2;
        unsigned G1ASDLB :2;
    };
    struct {
        unsigned G1IS :4;
        unsigned G1ASDLA0 :1;
        unsigned G1ASDLA1 :1;
        unsigned G1ASDLB0 :1;
        unsigned G1ASDLB1 :1;
    };
} CWG1CON1bits_t;
extern volatile CWG1CON1bits_t CWG1CON1bits __attribute__((address(0x694)));
# 5646 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CWG1CON2 __attribute__((address(0x695)));

__asm("CWG1CON2 equ 0695h");


typedef union {
    struct {
        unsigned G1ASDSCLC2 :1;
        unsigned G1ASDSFLT :1;
        unsigned G1ASDSC1 :1;
        unsigned G1ASDSC2 :1;
        unsigned :2;
        unsigned G1ARSEN :1;
        unsigned G1ASE :1;
    };
} CWG1CON2bits_t;
extern volatile CWG1CON2bits_t CWG1CON2bits __attribute__((address(0x695)));
# 5697 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLCDATA __attribute__((address(0xF0F)));

__asm("CLCDATA equ 0F0Fh");


typedef union {
    struct {
        unsigned MCLC1OUT :1;
        unsigned MCLC2OUT :1;
        unsigned MCLC3OUT :1;
        unsigned MCLC4OUT :1;
    };
} CLCDATAbits_t;
extern volatile CLCDATAbits_t CLCDATAbits __attribute__((address(0xF0F)));
# 5735 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC1CON __attribute__((address(0xF10)));

__asm("CLC1CON equ 0F10h");


typedef union {
    struct {
        unsigned LC1MODE0 :1;
        unsigned LC1MODE1 :1;
        unsigned LC1MODE2 :1;
        unsigned LC1INTN :1;
        unsigned LC1INTP :1;
        unsigned LC1OUT :1;
        unsigned LC1OE :1;
        unsigned LC1EN :1;
    };
    struct {
        unsigned LCMODE0 :1;
        unsigned LCMODE1 :1;
        unsigned LCMODE2 :1;
        unsigned LCINTN :1;
        unsigned LCINTP :1;
        unsigned LCOUT :1;
        unsigned LCOE :1;
        unsigned LCEN :1;
    };
    struct {
        unsigned LC1MODE :3;
    };
} CLC1CONbits_t;
extern volatile CLC1CONbits_t CLC1CONbits __attribute__((address(0xF10)));
# 5855 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC1POL __attribute__((address(0xF11)));

__asm("CLC1POL equ 0F11h");


typedef union {
    struct {
        unsigned LC1G1POL :1;
        unsigned LC1G2POL :1;
        unsigned LC1G3POL :1;
        unsigned LC1G4POL :1;
        unsigned :3;
        unsigned LC1POL :1;
    };
    struct {
        unsigned G1POL :1;
        unsigned G2POL :1;
        unsigned G3POL :1;
        unsigned G4POL :1;
        unsigned :3;
        unsigned POL :1;
    };
} CLC1POLbits_t;
extern volatile CLC1POLbits_t CLC1POLbits __attribute__((address(0xF11)));
# 5933 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC1SEL0 __attribute__((address(0xF12)));

__asm("CLC1SEL0 equ 0F12h");


typedef union {
    struct {
        unsigned LC1D1S0 :1;
        unsigned LC1D1S1 :1;
        unsigned LC1D1S2 :1;
        unsigned :1;
        unsigned LC1D2S0 :1;
        unsigned LC1D2S1 :1;
        unsigned LC1D2S2 :1;
    };
    struct {
        unsigned D1S0 :1;
        unsigned D1S1 :1;
        unsigned D1S2 :1;
        unsigned :1;
        unsigned D2S0 :1;
        unsigned D2S1 :1;
        unsigned D2S2 :1;
    };
    struct {
        unsigned LC1D1S :3;
        unsigned :1;
        unsigned LC1D2S :3;
    };
} CLC1SEL0bits_t;
extern volatile CLC1SEL0bits_t CLC1SEL0bits __attribute__((address(0xF12)));
# 6038 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC1SEL1 __attribute__((address(0xF13)));

__asm("CLC1SEL1 equ 0F13h");


typedef union {
    struct {
        unsigned LC1D3S0 :1;
        unsigned LC1D3S1 :1;
        unsigned LC1D3S2 :1;
        unsigned :1;
        unsigned LC1D4S0 :1;
        unsigned LC1D4S1 :1;
        unsigned LC1D4S2 :1;
    };
    struct {
        unsigned D3S0 :1;
        unsigned D3S1 :1;
        unsigned D3S2 :1;
        unsigned :1;
        unsigned D4S0 :1;
        unsigned D4S1 :1;
        unsigned D4S2 :1;
    };
    struct {
        unsigned LC1D3S :3;
        unsigned :1;
        unsigned LC1D4S :3;
    };
} CLC1SEL1bits_t;
extern volatile CLC1SEL1bits_t CLC1SEL1bits __attribute__((address(0xF13)));
# 6143 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC1GLS0 __attribute__((address(0xF14)));

__asm("CLC1GLS0 equ 0F14h");


typedef union {
    struct {
        unsigned LC1G1D1N :1;
        unsigned LC1G1D1T :1;
        unsigned LC1G1D2N :1;
        unsigned LC1G1D2T :1;
        unsigned LC1G1D3N :1;
        unsigned LC1G1D3T :1;
        unsigned LC1G1D4N :1;
        unsigned LC1G1D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC1GLS0bits_t;
extern volatile CLC1GLS0bits_t CLC1GLS0bits __attribute__((address(0xF14)));
# 6255 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC1GLS1 __attribute__((address(0xF15)));

__asm("CLC1GLS1 equ 0F15h");


typedef union {
    struct {
        unsigned LC1G2D1N :1;
        unsigned LC1G2D1T :1;
        unsigned LC1G2D2N :1;
        unsigned LC1G2D2T :1;
        unsigned LC1G2D3N :1;
        unsigned LC1G2D3T :1;
        unsigned LC1G2D4N :1;
        unsigned LC1G2D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC1GLS1bits_t;
extern volatile CLC1GLS1bits_t CLC1GLS1bits __attribute__((address(0xF15)));
# 6367 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC1GLS2 __attribute__((address(0xF16)));

__asm("CLC1GLS2 equ 0F16h");


typedef union {
    struct {
        unsigned LC1G3D1N :1;
        unsigned LC1G3D1T :1;
        unsigned LC1G3D2N :1;
        unsigned LC1G3D2T :1;
        unsigned LC1G3D3N :1;
        unsigned LC1G3D3T :1;
        unsigned LC1G3D4N :1;
        unsigned LC1G3D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC1GLS2bits_t;
extern volatile CLC1GLS2bits_t CLC1GLS2bits __attribute__((address(0xF16)));
# 6479 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC1GLS3 __attribute__((address(0xF17)));

__asm("CLC1GLS3 equ 0F17h");


typedef union {
    struct {
        unsigned LC1G4D1N :1;
        unsigned LC1G4D1T :1;
        unsigned LC1G4D2N :1;
        unsigned LC1G4D2T :1;
        unsigned LC1G4D3N :1;
        unsigned LC1G4D3T :1;
        unsigned LC1G4D4N :1;
        unsigned LC1G4D4T :1;
    };
    struct {
        unsigned G4D1N :1;
        unsigned G4D1T :1;
        unsigned G4D2N :1;
        unsigned G4D2T :1;
        unsigned G4D3N :1;
        unsigned G4D3T :1;
        unsigned G4D4N :1;
        unsigned G4D4T :1;
    };
} CLC1GLS3bits_t;
extern volatile CLC1GLS3bits_t CLC1GLS3bits __attribute__((address(0xF17)));
# 6591 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC2CON __attribute__((address(0xF18)));

__asm("CLC2CON equ 0F18h");


typedef union {
    struct {
        unsigned LC2MODE0 :1;
        unsigned LC2MODE1 :1;
        unsigned LC2MODE2 :1;
        unsigned LC2INTN :1;
        unsigned LC2INTP :1;
        unsigned LC2OUT :1;
        unsigned LC2OE :1;
        unsigned LC2EN :1;
    };
    struct {
        unsigned LCMODE0 :1;
        unsigned LCMODE1 :1;
        unsigned LCMODE2 :1;
        unsigned LCINTN :1;
        unsigned LCINTP :1;
        unsigned LCOUT :1;
        unsigned LCOE :1;
        unsigned LCEN :1;
    };
    struct {
        unsigned LC2MODE :3;
    };
} CLC2CONbits_t;
extern volatile CLC2CONbits_t CLC2CONbits __attribute__((address(0xF18)));
# 6711 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC2POL __attribute__((address(0xF19)));

__asm("CLC2POL equ 0F19h");


typedef union {
    struct {
        unsigned LC2G1POL :1;
        unsigned LC2G2POL :1;
        unsigned LC2G3POL :1;
        unsigned LC2G4POL :1;
        unsigned :3;
        unsigned LC2POL :1;
    };
    struct {
        unsigned G1POL :1;
        unsigned G2POL :1;
        unsigned G3POL :1;
        unsigned G4POL :1;
        unsigned :3;
        unsigned POL :1;
    };
} CLC2POLbits_t;
extern volatile CLC2POLbits_t CLC2POLbits __attribute__((address(0xF19)));
# 6789 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC2SEL0 __attribute__((address(0xF1A)));

__asm("CLC2SEL0 equ 0F1Ah");


typedef union {
    struct {
        unsigned LC2D1S0 :1;
        unsigned LC2D1S1 :1;
        unsigned LC2D1S2 :1;
        unsigned :1;
        unsigned LC2D2S0 :1;
        unsigned LC2D2S1 :1;
        unsigned LC2D2S2 :1;
    };
    struct {
        unsigned D1S0 :1;
        unsigned D1S1 :1;
        unsigned D1S2 :1;
        unsigned :1;
        unsigned D2S0 :1;
        unsigned D2S1 :1;
        unsigned D2S2 :1;
    };
    struct {
        unsigned LC2D1S :3;
        unsigned :1;
        unsigned LC2D2S :3;
    };
} CLC2SEL0bits_t;
extern volatile CLC2SEL0bits_t CLC2SEL0bits __attribute__((address(0xF1A)));
# 6894 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC2SEL1 __attribute__((address(0xF1B)));

__asm("CLC2SEL1 equ 0F1Bh");


typedef union {
    struct {
        unsigned LC2D3S0 :1;
        unsigned LC2D3S1 :1;
        unsigned LC2D3S2 :1;
        unsigned :1;
        unsigned LC2D4S0 :1;
        unsigned LC2D4S1 :1;
        unsigned LC2D4S2 :1;
    };
    struct {
        unsigned D3S0 :1;
        unsigned D3S1 :1;
        unsigned D3S2 :1;
        unsigned :1;
        unsigned D4S0 :1;
        unsigned D4S1 :1;
        unsigned D4S2 :1;
    };
    struct {
        unsigned LC2D3S :3;
        unsigned :1;
        unsigned LC2D4S :3;
    };
} CLC2SEL1bits_t;
extern volatile CLC2SEL1bits_t CLC2SEL1bits __attribute__((address(0xF1B)));
# 6999 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC2GLS0 __attribute__((address(0xF1C)));

__asm("CLC2GLS0 equ 0F1Ch");


typedef union {
    struct {
        unsigned LC2G1D1N :1;
        unsigned LC2G1D1T :1;
        unsigned LC2G1D2N :1;
        unsigned LC2G1D2T :1;
        unsigned LC2G1D3N :1;
        unsigned LC2G1D3T :1;
        unsigned LC2G1D4N :1;
        unsigned LC2G1D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC2GLS0bits_t;
extern volatile CLC2GLS0bits_t CLC2GLS0bits __attribute__((address(0xF1C)));
# 7111 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC2GLS1 __attribute__((address(0xF1D)));

__asm("CLC2GLS1 equ 0F1Dh");


typedef union {
    struct {
        unsigned LC2G2D1N :1;
        unsigned LC2G2D1T :1;
        unsigned LC2G2D2N :1;
        unsigned LC2G2D2T :1;
        unsigned LC2G2D3N :1;
        unsigned LC2G2D3T :1;
        unsigned LC2G2D4N :1;
        unsigned LC2G2D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC2GLS1bits_t;
extern volatile CLC2GLS1bits_t CLC2GLS1bits __attribute__((address(0xF1D)));
# 7223 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC2GLS2 __attribute__((address(0xF1E)));

__asm("CLC2GLS2 equ 0F1Eh");


typedef union {
    struct {
        unsigned LC2G3D1N :1;
        unsigned LC2G3D1T :1;
        unsigned LC2G3D2N :1;
        unsigned LC2G3D2T :1;
        unsigned LC2G3D3N :1;
        unsigned LC2G3D3T :1;
        unsigned LC2G3D4N :1;
        unsigned LC2G3D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC2GLS2bits_t;
extern volatile CLC2GLS2bits_t CLC2GLS2bits __attribute__((address(0xF1E)));
# 7335 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC2GLS3 __attribute__((address(0xF1F)));

__asm("CLC2GLS3 equ 0F1Fh");


typedef union {
    struct {
        unsigned LC2G4D1N :1;
        unsigned LC2G4D1T :1;
        unsigned LC2G4D2N :1;
        unsigned LC2G4D2T :1;
        unsigned LC2G4D3N :1;
        unsigned LC2G4D3T :1;
        unsigned LC2G4D4N :1;
        unsigned LC2G4D4T :1;
    };
    struct {
        unsigned G4D1N :1;
        unsigned G4D1T :1;
        unsigned G4D2N :1;
        unsigned G4D2T :1;
        unsigned G4D3N :1;
        unsigned G4D3T :1;
        unsigned G4D4N :1;
        unsigned G4D4T :1;
    };
} CLC2GLS3bits_t;
extern volatile CLC2GLS3bits_t CLC2GLS3bits __attribute__((address(0xF1F)));
# 7447 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC3CON __attribute__((address(0xF20)));

__asm("CLC3CON equ 0F20h");


typedef union {
    struct {
        unsigned LC3MODE0 :1;
        unsigned LC3MODE1 :1;
        unsigned LC3MODE2 :1;
        unsigned LC3INTN :1;
        unsigned LC3INTP :1;
        unsigned LC3OUT :1;
        unsigned LC3OE :1;
        unsigned LC3EN :1;
    };
    struct {
        unsigned LCMODE0 :1;
        unsigned LCMODE1 :1;
        unsigned LCMODE2 :1;
        unsigned LCINTN :1;
        unsigned LCINTP :1;
        unsigned LCOUT :1;
        unsigned LCOE :1;
        unsigned LCEN :1;
    };
    struct {
        unsigned LC3MODE :3;
    };
} CLC3CONbits_t;
extern volatile CLC3CONbits_t CLC3CONbits __attribute__((address(0xF20)));
# 7567 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC3POL __attribute__((address(0xF21)));

__asm("CLC3POL equ 0F21h");


typedef union {
    struct {
        unsigned LC3G1POL :1;
        unsigned LC3G2POL :1;
        unsigned LC3G3POL :1;
        unsigned LC3G4POL :1;
        unsigned :3;
        unsigned LC3POL :1;
    };
    struct {
        unsigned G1POL :1;
        unsigned G2POL :1;
        unsigned G3POL :1;
        unsigned G4POL :1;
        unsigned :3;
        unsigned POL :1;
    };
} CLC3POLbits_t;
extern volatile CLC3POLbits_t CLC3POLbits __attribute__((address(0xF21)));
# 7645 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC3SEL0 __attribute__((address(0xF22)));

__asm("CLC3SEL0 equ 0F22h");


typedef union {
    struct {
        unsigned LC3D1S0 :1;
        unsigned LC3D1S1 :1;
        unsigned LC3D1S2 :1;
        unsigned :1;
        unsigned LC3D2S0 :1;
        unsigned LC3D2S1 :1;
        unsigned LC3D2S2 :1;
    };
    struct {
        unsigned D1S0 :1;
        unsigned D1S1 :1;
        unsigned D1S2 :1;
        unsigned :1;
        unsigned D2S0 :1;
        unsigned D2S1 :1;
        unsigned D2S2 :1;
    };
    struct {
        unsigned LC3D1S :3;
        unsigned :1;
        unsigned LC3D2S :3;
    };
} CLC3SEL0bits_t;
extern volatile CLC3SEL0bits_t CLC3SEL0bits __attribute__((address(0xF22)));
# 7750 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC3SEL1 __attribute__((address(0xF23)));

__asm("CLC3SEL1 equ 0F23h");


typedef union {
    struct {
        unsigned LC3D3S0 :1;
        unsigned LC3D3S1 :1;
        unsigned LC3D3S2 :1;
        unsigned :1;
        unsigned LC3D4S0 :1;
        unsigned LC3D4S1 :1;
        unsigned LC3D4S2 :1;
    };
    struct {
        unsigned D3S0 :1;
        unsigned D3S1 :1;
        unsigned D3S2 :1;
        unsigned :1;
        unsigned D4S0 :1;
        unsigned D4S1 :1;
        unsigned D4S2 :1;
    };
    struct {
        unsigned LC3D3S :3;
        unsigned :1;
        unsigned LC3D4S :3;
    };
} CLC3SEL1bits_t;
extern volatile CLC3SEL1bits_t CLC3SEL1bits __attribute__((address(0xF23)));
# 7855 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC3GLS0 __attribute__((address(0xF24)));

__asm("CLC3GLS0 equ 0F24h");


typedef union {
    struct {
        unsigned LC3G1D1N :1;
        unsigned LC3G1D1T :1;
        unsigned LC3G1D2N :1;
        unsigned LC3G1D2T :1;
        unsigned LC3G1D3N :1;
        unsigned LC3G1D3T :1;
        unsigned LC3G1D4N :1;
        unsigned LC3G1D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC3GLS0bits_t;
extern volatile CLC3GLS0bits_t CLC3GLS0bits __attribute__((address(0xF24)));
# 7967 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC3GLS1 __attribute__((address(0xF25)));

__asm("CLC3GLS1 equ 0F25h");


typedef union {
    struct {
        unsigned LC3G2D1N :1;
        unsigned LC3G2D1T :1;
        unsigned LC3G2D2N :1;
        unsigned LC3G2D2T :1;
        unsigned LC3G2D3N :1;
        unsigned LC3G2D3T :1;
        unsigned LC3G2D4N :1;
        unsigned LC3G2D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC3GLS1bits_t;
extern volatile CLC3GLS1bits_t CLC3GLS1bits __attribute__((address(0xF25)));
# 8079 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC3GLS2 __attribute__((address(0xF26)));

__asm("CLC3GLS2 equ 0F26h");


typedef union {
    struct {
        unsigned LC3G3D1N :1;
        unsigned LC3G3D1T :1;
        unsigned LC3G3D2N :1;
        unsigned LC3G3D2T :1;
        unsigned LC3G3D3N :1;
        unsigned LC3G3D3T :1;
        unsigned LC3G3D4N :1;
        unsigned LC3G3D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC3GLS2bits_t;
extern volatile CLC3GLS2bits_t CLC3GLS2bits __attribute__((address(0xF26)));
# 8191 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC3GLS3 __attribute__((address(0xF27)));

__asm("CLC3GLS3 equ 0F27h");


typedef union {
    struct {
        unsigned LC3G4D1N :1;
        unsigned LC3G4D1T :1;
        unsigned LC3G4D2N :1;
        unsigned LC3G4D2T :1;
        unsigned LC3G4D3N :1;
        unsigned LC3G4D3T :1;
        unsigned LC3G4D4N :1;
        unsigned LC3G4D4T :1;
    };
    struct {
        unsigned G4D1N :1;
        unsigned G4D1T :1;
        unsigned G4D2N :1;
        unsigned G4D2T :1;
        unsigned G4D3N :1;
        unsigned G4D3T :1;
        unsigned G4D4N :1;
        unsigned G4D4T :1;
    };
} CLC3GLS3bits_t;
extern volatile CLC3GLS3bits_t CLC3GLS3bits __attribute__((address(0xF27)));
# 8303 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC4CON __attribute__((address(0xF28)));

__asm("CLC4CON equ 0F28h");


typedef union {
    struct {
        unsigned LC4MODE0 :1;
        unsigned LC4MODE1 :1;
        unsigned LC4MODE2 :1;
        unsigned LC4INTN :1;
        unsigned LC4INTP :1;
        unsigned LC4OUT :1;
        unsigned LC4OE :1;
        unsigned LC4EN :1;
    };
    struct {
        unsigned LCMODE0 :1;
        unsigned LCMODE1 :1;
        unsigned LCMODE2 :1;
        unsigned LCINTN :1;
        unsigned LCINTP :1;
        unsigned LCOUT :1;
        unsigned LCOE :1;
        unsigned LCEN :1;
    };
    struct {
        unsigned LC4MODE :3;
    };
} CLC4CONbits_t;
extern volatile CLC4CONbits_t CLC4CONbits __attribute__((address(0xF28)));
# 8423 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC4POL __attribute__((address(0xF29)));

__asm("CLC4POL equ 0F29h");


typedef union {
    struct {
        unsigned LC4G1POL :1;
        unsigned LC4G2POL :1;
        unsigned LC4G3POL :1;
        unsigned LC4G4POL :1;
        unsigned :3;
        unsigned LC4POL :1;
    };
    struct {
        unsigned G1POL :1;
        unsigned G2POL :1;
        unsigned G3POL :1;
        unsigned G4POL :1;
        unsigned :3;
        unsigned POL :1;
    };
} CLC4POLbits_t;
extern volatile CLC4POLbits_t CLC4POLbits __attribute__((address(0xF29)));
# 8501 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC4SEL0 __attribute__((address(0xF2A)));

__asm("CLC4SEL0 equ 0F2Ah");


typedef union {
    struct {
        unsigned LC4D1S0 :1;
        unsigned LC4D1S1 :1;
        unsigned LC4D1S2 :1;
        unsigned :1;
        unsigned LC4D2S0 :1;
        unsigned LC4D2S1 :1;
        unsigned LC4D2S2 :1;
    };
    struct {
        unsigned D1S0 :1;
        unsigned D1S1 :1;
        unsigned D1S2 :1;
        unsigned :1;
        unsigned D2S0 :1;
        unsigned D2S1 :1;
        unsigned D2S2 :1;
    };
    struct {
        unsigned LC4D1S :3;
        unsigned :1;
        unsigned LC4D2S :3;
    };
} CLC4SEL0bits_t;
extern volatile CLC4SEL0bits_t CLC4SEL0bits __attribute__((address(0xF2A)));
# 8606 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC4SEL1 __attribute__((address(0xF2B)));

__asm("CLC4SEL1 equ 0F2Bh");


typedef union {
    struct {
        unsigned LC4D3S0 :1;
        unsigned LC4D3S1 :1;
        unsigned LC4D3S2 :1;
        unsigned :1;
        unsigned LC4D4S0 :1;
        unsigned LC4D4S1 :1;
        unsigned LC4D4S2 :1;
    };
    struct {
        unsigned D3S0 :1;
        unsigned D3S1 :1;
        unsigned D3S2 :1;
        unsigned :1;
        unsigned D4S0 :1;
        unsigned D4S1 :1;
        unsigned D4S2 :1;
    };
    struct {
        unsigned LC4D3S :3;
        unsigned :1;
        unsigned LC4D4S :3;
    };
} CLC4SEL1bits_t;
extern volatile CLC4SEL1bits_t CLC4SEL1bits __attribute__((address(0xF2B)));
# 8711 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC4GLS0 __attribute__((address(0xF2C)));

__asm("CLC4GLS0 equ 0F2Ch");


typedef union {
    struct {
        unsigned LC4G1D1N :1;
        unsigned LC4G1D1T :1;
        unsigned LC4G1D2N :1;
        unsigned LC4G1D2T :1;
        unsigned LC4G1D3N :1;
        unsigned LC4G1D3T :1;
        unsigned LC4G1D4N :1;
        unsigned LC4G1D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC4GLS0bits_t;
extern volatile CLC4GLS0bits_t CLC4GLS0bits __attribute__((address(0xF2C)));
# 8823 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC4GLS1 __attribute__((address(0xF2D)));

__asm("CLC4GLS1 equ 0F2Dh");


typedef union {
    struct {
        unsigned LC4G2D1N :1;
        unsigned LC4G2D1T :1;
        unsigned LC4G2D2N :1;
        unsigned LC4G2D2T :1;
        unsigned LC4G2D3N :1;
        unsigned LC4G2D3T :1;
        unsigned LC4G2D4N :1;
        unsigned LC4G2D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC4GLS1bits_t;
extern volatile CLC4GLS1bits_t CLC4GLS1bits __attribute__((address(0xF2D)));
# 8935 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC4GLS2 __attribute__((address(0xF2E)));

__asm("CLC4GLS2 equ 0F2Eh");


typedef union {
    struct {
        unsigned LC4G3D1N :1;
        unsigned LC4G3D1T :1;
        unsigned LC4G3D2N :1;
        unsigned LC4G3D2T :1;
        unsigned LC4G3D3N :1;
        unsigned LC4G3D3T :1;
        unsigned LC4G3D4N :1;
        unsigned LC4G3D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC4GLS2bits_t;
extern volatile CLC4GLS2bits_t CLC4GLS2bits __attribute__((address(0xF2E)));
# 9047 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char CLC4GLS3 __attribute__((address(0xF2F)));

__asm("CLC4GLS3 equ 0F2Fh");


typedef union {
    struct {
        unsigned LC4G4D1N :1;
        unsigned LC4G4D1T :1;
        unsigned LC4G4D2N :1;
        unsigned LC4G4D2T :1;
        unsigned LC4G4D3N :1;
        unsigned LC4G4D3T :1;
        unsigned LC4G4D4N :1;
        unsigned LC4G4D4T :1;
    };
    struct {
        unsigned G4D1N :1;
        unsigned G4D1T :1;
        unsigned G4D2N :1;
        unsigned G4D2T :1;
        unsigned G4D3N :1;
        unsigned G4D3T :1;
        unsigned G4D4N :1;
        unsigned G4D4T :1;
    };
} CLC4GLS3bits_t;
extern volatile CLC4GLS3bits_t CLC4GLS3bits __attribute__((address(0xF2F)));
# 9159 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char ICDIO __attribute__((address(0xF8C)));

__asm("ICDIO equ 0F8Ch");


typedef union {
    struct {
        unsigned :2;
        unsigned TRIS_ICDCLK :1;
        unsigned TRIS_ICDDAT :1;
        unsigned LAT_ICDCLK :1;
        unsigned LAT_ICDDAT :1;
        unsigned PORT_ICDCLK :1;
        unsigned PORT_ICDDAT :1;
    };
} ICDIObits_t;
extern volatile ICDIObits_t ICDIObits __attribute__((address(0xF8C)));
# 9210 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char ICDCON0 __attribute__((address(0xF8D)));

__asm("ICDCON0 equ 0F8Dh");


typedef union {
    struct {
        unsigned RSTVEC :1;
        unsigned :2;
        unsigned DBGINEX :1;
        unsigned :1;
        unsigned SSTEP :1;
        unsigned FREEZ :1;
        unsigned INBUG :1;
    };
} ICDCON0bits_t;
extern volatile ICDCON0bits_t ICDCON0bits __attribute__((address(0xF8D)));
# 9256 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char ICDSTAT __attribute__((address(0xF91)));

__asm("ICDSTAT equ 0F91h");


typedef union {
    struct {
        unsigned :1;
        unsigned USRHLTF :1;
        unsigned :4;
        unsigned TRP0HLTF :1;
        unsigned TRP1HLTF :1;
    };
} ICDSTATbits_t;
extern volatile ICDSTATbits_t ICDSTATbits __attribute__((address(0xF91)));
# 9290 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char DEVSEL __attribute__((address(0xF95)));

__asm("DEVSEL equ 0F95h");


typedef union {
    struct {
        unsigned DEVSEL0 :1;
        unsigned DEVSEL1 :1;
        unsigned DEVSEL2 :1;
    };
} DEVSELbits_t;
extern volatile DEVSELbits_t DEVSELbits __attribute__((address(0xF95)));
# 9322 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char ICDINSTL __attribute__((address(0xF96)));

__asm("ICDINSTL equ 0F96h");


typedef union {
    struct {
        unsigned DBGIN0 :1;
        unsigned DBGIN1 :1;
        unsigned DBGIN2 :1;
        unsigned DBGIN3 :1;
        unsigned DBGIN4 :1;
        unsigned DBGIN5 :1;
        unsigned DBGIN6 :1;
        unsigned DBGIN7 :1;
    };
} ICDINSTLbits_t;
extern volatile ICDINSTLbits_t ICDINSTLbits __attribute__((address(0xF96)));
# 9384 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char ICDINSTH __attribute__((address(0xF97)));

__asm("ICDINSTH equ 0F97h");


typedef union {
    struct {
        unsigned DBGIN8 :1;
        unsigned DBGIN9 :1;
        unsigned DBGIN10 :1;
        unsigned DBGIN11 :1;
        unsigned DBGIN12 :1;
        unsigned DBGIN13 :1;
    };
} ICDINSTHbits_t;
extern volatile ICDINSTHbits_t ICDINSTHbits __attribute__((address(0xF97)));
# 9434 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char ICDBK0CON __attribute__((address(0xF9C)));

__asm("ICDBK0CON equ 0F9Ch");


typedef union {
    struct {
        unsigned BKHLT :1;
        unsigned :6;
        unsigned BKEN :1;
    };
} ICDBK0CONbits_t;
extern volatile ICDBK0CONbits_t ICDBK0CONbits __attribute__((address(0xF9C)));
# 9461 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char ICDBK0L __attribute__((address(0xF9D)));

__asm("ICDBK0L equ 0F9Dh");


typedef union {
    struct {
        unsigned BKA0 :1;
        unsigned BKA1 :1;
        unsigned BKA2 :1;
        unsigned BKA3 :1;
        unsigned BKA4 :1;
        unsigned BKA5 :1;
        unsigned BKA6 :1;
        unsigned BKA7 :1;
    };
} ICDBK0Lbits_t;
extern volatile ICDBK0Lbits_t ICDBK0Lbits __attribute__((address(0xF9D)));
# 9523 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char ICDBK0H __attribute__((address(0xF9E)));

__asm("ICDBK0H equ 0F9Eh");


typedef union {
    struct {
        unsigned BKA8 :1;
        unsigned BKA9 :1;
        unsigned BKA10 :1;
        unsigned BKA11 :1;
        unsigned BKA12 :1;
        unsigned BKA13 :1;
        unsigned BKA14 :1;
    };
} ICDBK0Hbits_t;
extern volatile ICDBK0Hbits_t ICDBK0Hbits __attribute__((address(0xF9E)));
# 9579 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char BSRICDSHAD __attribute__((address(0xFE3)));

__asm("BSRICDSHAD equ 0FE3h");


typedef union {
    struct {
        unsigned BSR_ICDSHAD :5;
    };
} BSRICDSHADbits_t;
extern volatile BSRICDSHADbits_t BSRICDSHADbits __attribute__((address(0xFE3)));
# 9599 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char STATUS_SHAD __attribute__((address(0xFE4)));

__asm("STATUS_SHAD equ 0FE4h");


typedef union {
    struct {
        unsigned C_SHAD :1;
        unsigned DC_SHAD :1;
        unsigned Z_SHAD :1;
    };
} STATUS_SHADbits_t;
extern volatile STATUS_SHADbits_t STATUS_SHADbits __attribute__((address(0xFE4)));
# 9631 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char WREG_SHAD __attribute__((address(0xFE5)));

__asm("WREG_SHAD equ 0FE5h");


typedef union {
    struct {
        unsigned WREG_SHAD :8;
    };
} WREG_SHADbits_t;
extern volatile WREG_SHADbits_t WREG_SHADbits __attribute__((address(0xFE5)));
# 9651 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char BSR_SHAD __attribute__((address(0xFE6)));

__asm("BSR_SHAD equ 0FE6h");


typedef union {
    struct {
        unsigned BSR_SHAD :5;
    };
} BSR_SHADbits_t;
extern volatile BSR_SHADbits_t BSR_SHADbits __attribute__((address(0xFE6)));
# 9671 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char PCLATH_SHAD __attribute__((address(0xFE7)));

__asm("PCLATH_SHAD equ 0FE7h");


typedef union {
    struct {
        unsigned PCLATH_SHAD :7;
    };
} PCLATH_SHADbits_t;
extern volatile PCLATH_SHADbits_t PCLATH_SHADbits __attribute__((address(0xFE7)));
# 9691 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char FSR0L_SHAD __attribute__((address(0xFE8)));

__asm("FSR0L_SHAD equ 0FE8h");


typedef union {
    struct {
        unsigned FSR0L_SHAD :8;
    };
} FSR0L_SHADbits_t;
extern volatile FSR0L_SHADbits_t FSR0L_SHADbits __attribute__((address(0xFE8)));
# 9711 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char FSR0H_SHAD __attribute__((address(0xFE9)));

__asm("FSR0H_SHAD equ 0FE9h");


typedef union {
    struct {
        unsigned FSR0H_SHAD :8;
    };
} FSR0H_SHADbits_t;
extern volatile FSR0H_SHADbits_t FSR0H_SHADbits __attribute__((address(0xFE9)));
# 9731 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char FSR1L_SHAD __attribute__((address(0xFEA)));

__asm("FSR1L_SHAD equ 0FEAh");


typedef union {
    struct {
        unsigned FSR1L_SHAD :8;
    };
} FSR1L_SHADbits_t;
extern volatile FSR1L_SHADbits_t FSR1L_SHADbits __attribute__((address(0xFEA)));
# 9751 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char FSR1H_SHAD __attribute__((address(0xFEB)));

__asm("FSR1H_SHAD equ 0FEBh");


typedef union {
    struct {
        unsigned FSR1H_SHAD :8;
    };
} FSR1H_SHADbits_t;
extern volatile FSR1H_SHADbits_t FSR1H_SHADbits __attribute__((address(0xFEB)));
# 9771 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char STKPTR __attribute__((address(0xFED)));

__asm("STKPTR equ 0FEDh");


typedef union {
    struct {
        unsigned STKPTR :5;
    };
} STKPTRbits_t;
extern volatile STKPTRbits_t STKPTRbits __attribute__((address(0xFED)));
# 9791 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char TOSL __attribute__((address(0xFEE)));

__asm("TOSL equ 0FEEh");


typedef union {
    struct {
        unsigned TOSL :8;
    };
} TOSLbits_t;
extern volatile TOSLbits_t TOSLbits __attribute__((address(0xFEE)));
# 9811 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile unsigned char TOSH __attribute__((address(0xFEF)));

__asm("TOSH equ 0FEFh");


typedef union {
    struct {
        unsigned TOSH :7;
    };
} TOSHbits_t;
extern volatile TOSHbits_t TOSHbits __attribute__((address(0xFEF)));
# 9841 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\proc\\pic16f1508.h" 3
extern volatile __bit ABDEN __attribute__((address(0xCF8)));


extern volatile __bit ABDOVF __attribute__((address(0xCFF)));


extern volatile __bit ACKDT __attribute__((address(0x10B5)));


extern volatile __bit ACKEN __attribute__((address(0x10B4)));


extern volatile __bit ACKSTAT __attribute__((address(0x10B6)));


extern volatile __bit ACKTIM __attribute__((address(0x10BF)));


extern volatile __bit ADDEN __attribute__((address(0xCEB)));


extern volatile __bit ADFM __attribute__((address(0x4F7)));


extern volatile __bit ADFVR0 __attribute__((address(0x8B8)));


extern volatile __bit ADFVR1 __attribute__((address(0x8B9)));


extern volatile __bit ADGO __attribute__((address(0x4E9)));


extern volatile __bit ADIE __attribute__((address(0x48E)));


extern volatile __bit ADIF __attribute__((address(0x8E)));


extern volatile __bit ADON __attribute__((address(0x4E8)));


extern volatile __bit ADPREF0 __attribute__((address(0x4F0)));


extern volatile __bit ADPREF1 __attribute__((address(0x4F1)));


extern volatile __bit AHEN __attribute__((address(0x10B9)));


extern volatile __bit ANSA0 __attribute__((address(0xC60)));


extern volatile __bit ANSA1 __attribute__((address(0xC61)));


extern volatile __bit ANSA2 __attribute__((address(0xC62)));


extern volatile __bit ANSA4 __attribute__((address(0xC64)));


extern volatile __bit ANSB4 __attribute__((address(0xC6C)));


extern volatile __bit ANSB5 __attribute__((address(0xC6D)));


extern volatile __bit ANSC0 __attribute__((address(0xC70)));


extern volatile __bit ANSC1 __attribute__((address(0xC71)));


extern volatile __bit ANSC2 __attribute__((address(0xC72)));


extern volatile __bit ANSC3 __attribute__((address(0xC73)));


extern volatile __bit ANSC6 __attribute__((address(0xC76)));


extern volatile __bit ANSC7 __attribute__((address(0xC77)));


extern volatile __bit BCL1IE __attribute__((address(0x493)));


extern volatile __bit BCL1IF __attribute__((address(0x93)));


extern volatile __bit BF __attribute__((address(0x10A0)));


extern volatile __bit BKA0 __attribute__((address(0x7CE8)));


extern volatile __bit BKA1 __attribute__((address(0x7CE9)));


extern volatile __bit BKA10 __attribute__((address(0x7CF2)));


extern volatile __bit BKA11 __attribute__((address(0x7CF3)));


extern volatile __bit BKA12 __attribute__((address(0x7CF4)));


extern volatile __bit BKA13 __attribute__((address(0x7CF5)));


extern volatile __bit BKA14 __attribute__((address(0x7CF6)));


extern volatile __bit BKA2 __attribute__((address(0x7CEA)));


extern volatile __bit BKA3 __attribute__((address(0x7CEB)));


extern volatile __bit BKA4 __attribute__((address(0x7CEC)));


extern volatile __bit BKA5 __attribute__((address(0x7CED)));


extern volatile __bit BKA6 __attribute__((address(0x7CEE)));


extern volatile __bit BKA7 __attribute__((address(0x7CEF)));


extern volatile __bit BKA8 __attribute__((address(0x7CF0)));


extern volatile __bit BKA9 __attribute__((address(0x7CF1)));


extern volatile __bit BKEN __attribute__((address(0x7CE7)));


extern volatile __bit BKHLT __attribute__((address(0x7CE0)));


extern volatile __bit BOEN __attribute__((address(0x10BC)));


extern volatile __bit BORFS __attribute__((address(0x8B6)));


extern volatile __bit BORRDY __attribute__((address(0x8B0)));


extern volatile __bit BRG16 __attribute__((address(0xCFB)));


extern volatile __bit BRGH __attribute__((address(0xCF2)));


extern volatile __bit BSR0 __attribute__((address(0x40)));


extern volatile __bit BSR1 __attribute__((address(0x41)));


extern volatile __bit BSR2 __attribute__((address(0x42)));


extern volatile __bit BSR3 __attribute__((address(0x43)));


extern volatile __bit BSR4 __attribute__((address(0x44)));


extern volatile __bit C1HYS __attribute__((address(0x889)));


extern volatile __bit C1IE __attribute__((address(0x495)));


extern volatile __bit C1IF __attribute__((address(0x95)));


extern volatile __bit C1INTN __attribute__((address(0x896)));


extern volatile __bit C1INTP __attribute__((address(0x897)));


extern volatile __bit C1NCH0 __attribute__((address(0x890)));


extern volatile __bit C1NCH1 __attribute__((address(0x891)));


extern volatile __bit C1NCH2 __attribute__((address(0x892)));


extern volatile __bit C1OE __attribute__((address(0x88D)));


extern volatile __bit C1ON __attribute__((address(0x88F)));


extern volatile __bit C1OUT __attribute__((address(0x88E)));


extern volatile __bit C1PCH0 __attribute__((address(0x894)));


extern volatile __bit C1PCH1 __attribute__((address(0x895)));


extern volatile __bit C1POL __attribute__((address(0x88C)));


extern volatile __bit C1SP __attribute__((address(0x88A)));


extern volatile __bit C1SYNC __attribute__((address(0x888)));


extern volatile __bit C2HYS __attribute__((address(0x899)));


extern volatile __bit C2IE __attribute__((address(0x496)));


extern volatile __bit C2IF __attribute__((address(0x96)));


extern volatile __bit C2INTN __attribute__((address(0x8A6)));


extern volatile __bit C2INTP __attribute__((address(0x8A7)));


extern volatile __bit C2NCH0 __attribute__((address(0x8A0)));


extern volatile __bit C2NCH1 __attribute__((address(0x8A1)));


extern volatile __bit C2NCH2 __attribute__((address(0x8A2)));


extern volatile __bit C2OE __attribute__((address(0x89D)));


extern volatile __bit C2ON __attribute__((address(0x89F)));


extern volatile __bit C2OUT __attribute__((address(0x89E)));


extern volatile __bit C2PCH0 __attribute__((address(0x8A4)));


extern volatile __bit C2PCH1 __attribute__((address(0x8A5)));


extern volatile __bit C2POL __attribute__((address(0x89C)));


extern volatile __bit C2SP __attribute__((address(0x89A)));


extern volatile __bit C2SYNC __attribute__((address(0x898)));


extern volatile __bit CARRY __attribute__((address(0x18)));


extern volatile __bit CDAFVR0 __attribute__((address(0x8BA)));


extern volatile __bit CDAFVR1 __attribute__((address(0x8BB)));


extern volatile __bit CFGS __attribute__((address(0xCAE)));


extern volatile __bit CHS0 __attribute__((address(0x4EA)));


extern volatile __bit CHS1 __attribute__((address(0x4EB)));


extern volatile __bit CHS2 __attribute__((address(0x4EC)));


extern volatile __bit CHS3 __attribute__((address(0x4ED)));


extern volatile __bit CHS4 __attribute__((address(0x4EE)));


extern volatile __bit CKE __attribute__((address(0x10A6)));


extern volatile __bit CKP __attribute__((address(0x10AC)));


extern volatile __bit CLC1IE __attribute__((address(0x498)));


extern volatile __bit CLC1IF __attribute__((address(0x98)));


extern volatile __bit CLC1SEL __attribute__((address(0x8E9)));


extern volatile __bit CLC2IE __attribute__((address(0x499)));


extern volatile __bit CLC2IF __attribute__((address(0x99)));


extern volatile __bit CLC3IE __attribute__((address(0x49A)));


extern volatile __bit CLC3IF __attribute__((address(0x9A)));


extern volatile __bit CLC4IE __attribute__((address(0x49B)));


extern volatile __bit CLC4IF __attribute__((address(0x9B)));


extern volatile __bit CREN __attribute__((address(0xCEC)));


extern volatile __bit CSRC __attribute__((address(0xCF7)));


extern volatile __bit CWG1DBF0 __attribute__((address(0x3490)));


extern volatile __bit CWG1DBF1 __attribute__((address(0x3491)));


extern volatile __bit CWG1DBF2 __attribute__((address(0x3492)));


extern volatile __bit CWG1DBF3 __attribute__((address(0x3493)));


extern volatile __bit CWG1DBF4 __attribute__((address(0x3494)));


extern volatile __bit CWG1DBF5 __attribute__((address(0x3495)));


extern volatile __bit CWG1DBR0 __attribute__((address(0x3488)));


extern volatile __bit CWG1DBR1 __attribute__((address(0x3489)));


extern volatile __bit CWG1DBR2 __attribute__((address(0x348A)));


extern volatile __bit CWG1DBR3 __attribute__((address(0x348B)));


extern volatile __bit CWG1DBR4 __attribute__((address(0x348C)));


extern volatile __bit CWG1DBR5 __attribute__((address(0x348D)));


extern volatile __bit C_SHAD __attribute__((address(0x7F20)));


extern volatile __bit DACEN __attribute__((address(0x8C7)));


extern volatile __bit DACOE1 __attribute__((address(0x8C5)));


extern volatile __bit DACOE2 __attribute__((address(0x8C4)));


extern volatile __bit DACPSS __attribute__((address(0x8C2)));


extern volatile __bit DACR0 __attribute__((address(0x8C8)));


extern volatile __bit DACR1 __attribute__((address(0x8C9)));


extern volatile __bit DACR2 __attribute__((address(0x8CA)));


extern volatile __bit DACR3 __attribute__((address(0x8CB)));


extern volatile __bit DACR4 __attribute__((address(0x8CC)));


extern volatile __bit DBGIN0 __attribute__((address(0x7CB0)));


extern volatile __bit DBGIN1 __attribute__((address(0x7CB1)));


extern volatile __bit DBGIN10 __attribute__((address(0x7CBA)));


extern volatile __bit DBGIN11 __attribute__((address(0x7CBB)));


extern volatile __bit DBGIN12 __attribute__((address(0x7CBC)));


extern volatile __bit DBGIN13 __attribute__((address(0x7CBD)));


extern volatile __bit DBGIN2 __attribute__((address(0x7CB2)));


extern volatile __bit DBGIN3 __attribute__((address(0x7CB3)));


extern volatile __bit DBGIN4 __attribute__((address(0x7CB4)));


extern volatile __bit DBGIN5 __attribute__((address(0x7CB5)));


extern volatile __bit DBGIN6 __attribute__((address(0x7CB6)));


extern volatile __bit DBGIN7 __attribute__((address(0x7CB7)));


extern volatile __bit DBGIN8 __attribute__((address(0x7CB8)));


extern volatile __bit DBGIN9 __attribute__((address(0x7CB9)));


extern volatile __bit DBGINEX __attribute__((address(0x7C6B)));


extern volatile __bit DC __attribute__((address(0x19)));


extern volatile __bit DC_SHAD __attribute__((address(0x7F21)));


extern volatile __bit DEVSEL0 __attribute__((address(0x7CA8)));


extern volatile __bit DEVSEL1 __attribute__((address(0x7CA9)));


extern volatile __bit DEVSEL2 __attribute__((address(0x7CAA)));


extern volatile __bit DHEN __attribute__((address(0x10B8)));


extern volatile __bit D_nA __attribute__((address(0x10A5)));


extern volatile __bit FERR __attribute__((address(0xCEA)));


extern volatile __bit FREE __attribute__((address(0xCAC)));


extern volatile __bit FREEZ __attribute__((address(0x7C6E)));


extern volatile __bit FVREN __attribute__((address(0x8BF)));


extern volatile __bit FVRRDY __attribute__((address(0x8BE)));


extern volatile __bit G1ARSEN __attribute__((address(0x34AE)));


extern volatile __bit G1ASDLA0 __attribute__((address(0x34A4)));


extern volatile __bit G1ASDLA1 __attribute__((address(0x34A5)));


extern volatile __bit G1ASDLB0 __attribute__((address(0x34A6)));


extern volatile __bit G1ASDLB1 __attribute__((address(0x34A7)));


extern volatile __bit G1ASDSC1 __attribute__((address(0x34AA)));


extern volatile __bit G1ASDSC2 __attribute__((address(0x34AB)));


extern volatile __bit G1ASDSCLC2 __attribute__((address(0x34A8)));


extern volatile __bit G1ASDSFLT __attribute__((address(0x34A9)));


extern volatile __bit G1ASE __attribute__((address(0x34AF)));


extern volatile __bit G1CS0 __attribute__((address(0x3498)));


extern volatile __bit G1EN __attribute__((address(0x349F)));


extern volatile __bit G1IS0 __attribute__((address(0x34A0)));


extern volatile __bit G1IS1 __attribute__((address(0x34A1)));


extern volatile __bit G1IS2 __attribute__((address(0x34A2)));


extern volatile __bit G1OEA __attribute__((address(0x349D)));


extern volatile __bit G1OEB __attribute__((address(0x349E)));


extern volatile __bit G1POLA __attribute__((address(0x349B)));


extern volatile __bit G1POLB __attribute__((address(0x349C)));


extern volatile __bit GCEN __attribute__((address(0x10B7)));


extern volatile __bit GIE __attribute__((address(0x5F)));


extern volatile __bit GO __attribute__((address(0x4E9)));


extern volatile __bit GO_nDONE __attribute__((address(0x4E9)));


extern volatile __bit HFIOFR __attribute__((address(0x4D4)));


extern volatile __bit HFIOFS __attribute__((address(0x4D0)));


extern volatile __bit INBUG __attribute__((address(0x7C6F)));


extern volatile __bit INTE __attribute__((address(0x5C)));


extern volatile __bit INTEDG __attribute__((address(0x4AE)));


extern volatile __bit INTF __attribute__((address(0x59)));


extern volatile __bit IOCAF0 __attribute__((address(0x1C98)));


extern volatile __bit IOCAF1 __attribute__((address(0x1C99)));


extern volatile __bit IOCAF2 __attribute__((address(0x1C9A)));


extern volatile __bit IOCAF3 __attribute__((address(0x1C9B)));


extern volatile __bit IOCAF4 __attribute__((address(0x1C9C)));


extern volatile __bit IOCAF5 __attribute__((address(0x1C9D)));


extern volatile __bit IOCAN0 __attribute__((address(0x1C90)));


extern volatile __bit IOCAN1 __attribute__((address(0x1C91)));


extern volatile __bit IOCAN2 __attribute__((address(0x1C92)));


extern volatile __bit IOCAN3 __attribute__((address(0x1C93)));


extern volatile __bit IOCAN4 __attribute__((address(0x1C94)));


extern volatile __bit IOCAN5 __attribute__((address(0x1C95)));


extern volatile __bit IOCAP0 __attribute__((address(0x1C88)));


extern volatile __bit IOCAP1 __attribute__((address(0x1C89)));


extern volatile __bit IOCAP2 __attribute__((address(0x1C8A)));


extern volatile __bit IOCAP3 __attribute__((address(0x1C8B)));


extern volatile __bit IOCAP4 __attribute__((address(0x1C8C)));


extern volatile __bit IOCAP5 __attribute__((address(0x1C8D)));


extern volatile __bit IOCBF4 __attribute__((address(0x1CB4)));


extern volatile __bit IOCBF5 __attribute__((address(0x1CB5)));


extern volatile __bit IOCBF6 __attribute__((address(0x1CB6)));


extern volatile __bit IOCBF7 __attribute__((address(0x1CB7)));


extern volatile __bit IOCBN4 __attribute__((address(0x1CAC)));


extern volatile __bit IOCBN5 __attribute__((address(0x1CAD)));


extern volatile __bit IOCBN6 __attribute__((address(0x1CAE)));


extern volatile __bit IOCBN7 __attribute__((address(0x1CAF)));


extern volatile __bit IOCBP4 __attribute__((address(0x1CA4)));


extern volatile __bit IOCBP5 __attribute__((address(0x1CA5)));


extern volatile __bit IOCBP6 __attribute__((address(0x1CA6)));


extern volatile __bit IOCBP7 __attribute__((address(0x1CA7)));


extern volatile __bit IOCIE __attribute__((address(0x5B)));


extern volatile __bit IOCIF __attribute__((address(0x58)));


extern volatile __bit IRCF0 __attribute__((address(0x4CB)));


extern volatile __bit IRCF1 __attribute__((address(0x4CC)));


extern volatile __bit IRCF2 __attribute__((address(0x4CD)));


extern volatile __bit IRCF3 __attribute__((address(0x4CE)));


extern volatile __bit LATA0 __attribute__((address(0x860)));


extern volatile __bit LATA1 __attribute__((address(0x861)));


extern volatile __bit LATA2 __attribute__((address(0x862)));


extern volatile __bit LATA4 __attribute__((address(0x864)));


extern volatile __bit LATA5 __attribute__((address(0x865)));


extern volatile __bit LATB4 __attribute__((address(0x86C)));


extern volatile __bit LATB5 __attribute__((address(0x86D)));


extern volatile __bit LATB6 __attribute__((address(0x86E)));


extern volatile __bit LATB7 __attribute__((address(0x86F)));


extern volatile __bit LATC0 __attribute__((address(0x870)));


extern volatile __bit LATC1 __attribute__((address(0x871)));


extern volatile __bit LATC2 __attribute__((address(0x872)));


extern volatile __bit LATC3 __attribute__((address(0x873)));


extern volatile __bit LATC4 __attribute__((address(0x874)));


extern volatile __bit LATC5 __attribute__((address(0x875)));


extern volatile __bit LATC6 __attribute__((address(0x876)));


extern volatile __bit LATC7 __attribute__((address(0x877)));


extern volatile __bit LAT_ICDCLK __attribute__((address(0x7C64)));


extern volatile __bit LAT_ICDDAT __attribute__((address(0x7C65)));


extern volatile __bit LC1D1S0 __attribute__((address(0x7890)));


extern volatile __bit LC1D1S1 __attribute__((address(0x7891)));


extern volatile __bit LC1D1S2 __attribute__((address(0x7892)));


extern volatile __bit LC1D2S0 __attribute__((address(0x7894)));


extern volatile __bit LC1D2S1 __attribute__((address(0x7895)));


extern volatile __bit LC1D2S2 __attribute__((address(0x7896)));


extern volatile __bit LC1D3S0 __attribute__((address(0x7898)));


extern volatile __bit LC1D3S1 __attribute__((address(0x7899)));


extern volatile __bit LC1D3S2 __attribute__((address(0x789A)));


extern volatile __bit LC1D4S0 __attribute__((address(0x789C)));


extern volatile __bit LC1D4S1 __attribute__((address(0x789D)));


extern volatile __bit LC1D4S2 __attribute__((address(0x789E)));


extern volatile __bit LC1EN __attribute__((address(0x7887)));


extern volatile __bit LC1G1D1N __attribute__((address(0x78A0)));


extern volatile __bit LC1G1D1T __attribute__((address(0x78A1)));


extern volatile __bit LC1G1D2N __attribute__((address(0x78A2)));


extern volatile __bit LC1G1D2T __attribute__((address(0x78A3)));


extern volatile __bit LC1G1D3N __attribute__((address(0x78A4)));


extern volatile __bit LC1G1D3T __attribute__((address(0x78A5)));


extern volatile __bit LC1G1D4N __attribute__((address(0x78A6)));


extern volatile __bit LC1G1D4T __attribute__((address(0x78A7)));


extern volatile __bit LC1G1POL __attribute__((address(0x7888)));


extern volatile __bit LC1G2D1N __attribute__((address(0x78A8)));


extern volatile __bit LC1G2D1T __attribute__((address(0x78A9)));


extern volatile __bit LC1G2D2N __attribute__((address(0x78AA)));


extern volatile __bit LC1G2D2T __attribute__((address(0x78AB)));


extern volatile __bit LC1G2D3N __attribute__((address(0x78AC)));


extern volatile __bit LC1G2D3T __attribute__((address(0x78AD)));


extern volatile __bit LC1G2D4N __attribute__((address(0x78AE)));


extern volatile __bit LC1G2D4T __attribute__((address(0x78AF)));


extern volatile __bit LC1G2POL __attribute__((address(0x7889)));


extern volatile __bit LC1G3D1N __attribute__((address(0x78B0)));


extern volatile __bit LC1G3D1T __attribute__((address(0x78B1)));


extern volatile __bit LC1G3D2N __attribute__((address(0x78B2)));


extern volatile __bit LC1G3D2T __attribute__((address(0x78B3)));


extern volatile __bit LC1G3D3N __attribute__((address(0x78B4)));


extern volatile __bit LC1G3D3T __attribute__((address(0x78B5)));


extern volatile __bit LC1G3D4N __attribute__((address(0x78B6)));


extern volatile __bit LC1G3D4T __attribute__((address(0x78B7)));


extern volatile __bit LC1G3POL __attribute__((address(0x788A)));


extern volatile __bit LC1G4D1N __attribute__((address(0x78B8)));


extern volatile __bit LC1G4D1T __attribute__((address(0x78B9)));


extern volatile __bit LC1G4D2N __attribute__((address(0x78BA)));


extern volatile __bit LC1G4D2T __attribute__((address(0x78BB)));


extern volatile __bit LC1G4D3N __attribute__((address(0x78BC)));


extern volatile __bit LC1G4D3T __attribute__((address(0x78BD)));


extern volatile __bit LC1G4D4N __attribute__((address(0x78BE)));


extern volatile __bit LC1G4D4T __attribute__((address(0x78BF)));


extern volatile __bit LC1G4POL __attribute__((address(0x788B)));


extern volatile __bit LC1INTN __attribute__((address(0x7883)));


extern volatile __bit LC1INTP __attribute__((address(0x7884)));


extern volatile __bit LC1MODE0 __attribute__((address(0x7880)));


extern volatile __bit LC1MODE1 __attribute__((address(0x7881)));


extern volatile __bit LC1MODE2 __attribute__((address(0x7882)));


extern volatile __bit LC1OE __attribute__((address(0x7886)));


extern volatile __bit LC1OUT __attribute__((address(0x7885)));


extern volatile __bit LC1POL __attribute__((address(0x788F)));


extern volatile __bit LC2D1S0 __attribute__((address(0x78D0)));


extern volatile __bit LC2D1S1 __attribute__((address(0x78D1)));


extern volatile __bit LC2D1S2 __attribute__((address(0x78D2)));


extern volatile __bit LC2D2S0 __attribute__((address(0x78D4)));


extern volatile __bit LC2D2S1 __attribute__((address(0x78D5)));


extern volatile __bit LC2D2S2 __attribute__((address(0x78D6)));


extern volatile __bit LC2D3S0 __attribute__((address(0x78D8)));


extern volatile __bit LC2D3S1 __attribute__((address(0x78D9)));


extern volatile __bit LC2D3S2 __attribute__((address(0x78DA)));


extern volatile __bit LC2D4S0 __attribute__((address(0x78DC)));


extern volatile __bit LC2D4S1 __attribute__((address(0x78DD)));


extern volatile __bit LC2D4S2 __attribute__((address(0x78DE)));


extern volatile __bit LC2EN __attribute__((address(0x78C7)));


extern volatile __bit LC2G1D1N __attribute__((address(0x78E0)));


extern volatile __bit LC2G1D1T __attribute__((address(0x78E1)));


extern volatile __bit LC2G1D2N __attribute__((address(0x78E2)));


extern volatile __bit LC2G1D2T __attribute__((address(0x78E3)));


extern volatile __bit LC2G1D3N __attribute__((address(0x78E4)));


extern volatile __bit LC2G1D3T __attribute__((address(0x78E5)));


extern volatile __bit LC2G1D4N __attribute__((address(0x78E6)));


extern volatile __bit LC2G1D4T __attribute__((address(0x78E7)));


extern volatile __bit LC2G1POL __attribute__((address(0x78C8)));


extern volatile __bit LC2G2D1N __attribute__((address(0x78E8)));


extern volatile __bit LC2G2D1T __attribute__((address(0x78E9)));


extern volatile __bit LC2G2D2N __attribute__((address(0x78EA)));


extern volatile __bit LC2G2D2T __attribute__((address(0x78EB)));


extern volatile __bit LC2G2D3N __attribute__((address(0x78EC)));


extern volatile __bit LC2G2D3T __attribute__((address(0x78ED)));


extern volatile __bit LC2G2D4N __attribute__((address(0x78EE)));


extern volatile __bit LC2G2D4T __attribute__((address(0x78EF)));


extern volatile __bit LC2G2POL __attribute__((address(0x78C9)));


extern volatile __bit LC2G3D1N __attribute__((address(0x78F0)));


extern volatile __bit LC2G3D1T __attribute__((address(0x78F1)));


extern volatile __bit LC2G3D2N __attribute__((address(0x78F2)));


extern volatile __bit LC2G3D2T __attribute__((address(0x78F3)));


extern volatile __bit LC2G3D3N __attribute__((address(0x78F4)));


extern volatile __bit LC2G3D3T __attribute__((address(0x78F5)));


extern volatile __bit LC2G3D4N __attribute__((address(0x78F6)));


extern volatile __bit LC2G3D4T __attribute__((address(0x78F7)));


extern volatile __bit LC2G3POL __attribute__((address(0x78CA)));


extern volatile __bit LC2G4D1N __attribute__((address(0x78F8)));


extern volatile __bit LC2G4D1T __attribute__((address(0x78F9)));


extern volatile __bit LC2G4D2N __attribute__((address(0x78FA)));


extern volatile __bit LC2G4D2T __attribute__((address(0x78FB)));


extern volatile __bit LC2G4D3N __attribute__((address(0x78FC)));


extern volatile __bit LC2G4D3T __attribute__((address(0x78FD)));


extern volatile __bit LC2G4D4N __attribute__((address(0x78FE)));


extern volatile __bit LC2G4D4T __attribute__((address(0x78FF)));


extern volatile __bit LC2G4POL __attribute__((address(0x78CB)));


extern volatile __bit LC2INTN __attribute__((address(0x78C3)));


extern volatile __bit LC2INTP __attribute__((address(0x78C4)));


extern volatile __bit LC2MODE0 __attribute__((address(0x78C0)));


extern volatile __bit LC2MODE1 __attribute__((address(0x78C1)));


extern volatile __bit LC2MODE2 __attribute__((address(0x78C2)));


extern volatile __bit LC2OE __attribute__((address(0x78C6)));


extern volatile __bit LC2OUT __attribute__((address(0x78C5)));


extern volatile __bit LC2POL __attribute__((address(0x78CF)));


extern volatile __bit LC3D1S0 __attribute__((address(0x7910)));


extern volatile __bit LC3D1S1 __attribute__((address(0x7911)));


extern volatile __bit LC3D1S2 __attribute__((address(0x7912)));


extern volatile __bit LC3D2S0 __attribute__((address(0x7914)));


extern volatile __bit LC3D2S1 __attribute__((address(0x7915)));


extern volatile __bit LC3D2S2 __attribute__((address(0x7916)));


extern volatile __bit LC3D3S0 __attribute__((address(0x7918)));


extern volatile __bit LC3D3S1 __attribute__((address(0x7919)));


extern volatile __bit LC3D3S2 __attribute__((address(0x791A)));


extern volatile __bit LC3D4S0 __attribute__((address(0x791C)));


extern volatile __bit LC3D4S1 __attribute__((address(0x791D)));


extern volatile __bit LC3D4S2 __attribute__((address(0x791E)));


extern volatile __bit LC3EN __attribute__((address(0x7907)));


extern volatile __bit LC3G1D1N __attribute__((address(0x7920)));


extern volatile __bit LC3G1D1T __attribute__((address(0x7921)));


extern volatile __bit LC3G1D2N __attribute__((address(0x7922)));


extern volatile __bit LC3G1D2T __attribute__((address(0x7923)));


extern volatile __bit LC3G1D3N __attribute__((address(0x7924)));


extern volatile __bit LC3G1D3T __attribute__((address(0x7925)));


extern volatile __bit LC3G1D4N __attribute__((address(0x7926)));


extern volatile __bit LC3G1D4T __attribute__((address(0x7927)));


extern volatile __bit LC3G1POL __attribute__((address(0x7908)));


extern volatile __bit LC3G2D1N __attribute__((address(0x7928)));


extern volatile __bit LC3G2D1T __attribute__((address(0x7929)));


extern volatile __bit LC3G2D2N __attribute__((address(0x792A)));


extern volatile __bit LC3G2D2T __attribute__((address(0x792B)));


extern volatile __bit LC3G2D3N __attribute__((address(0x792C)));


extern volatile __bit LC3G2D3T __attribute__((address(0x792D)));


extern volatile __bit LC3G2D4N __attribute__((address(0x792E)));


extern volatile __bit LC3G2D4T __attribute__((address(0x792F)));


extern volatile __bit LC3G2POL __attribute__((address(0x7909)));


extern volatile __bit LC3G3D1N __attribute__((address(0x7930)));


extern volatile __bit LC3G3D1T __attribute__((address(0x7931)));


extern volatile __bit LC3G3D2N __attribute__((address(0x7932)));


extern volatile __bit LC3G3D2T __attribute__((address(0x7933)));


extern volatile __bit LC3G3D3N __attribute__((address(0x7934)));


extern volatile __bit LC3G3D3T __attribute__((address(0x7935)));


extern volatile __bit LC3G3D4N __attribute__((address(0x7936)));


extern volatile __bit LC3G3D4T __attribute__((address(0x7937)));


extern volatile __bit LC3G3POL __attribute__((address(0x790A)));


extern volatile __bit LC3G4D1N __attribute__((address(0x7938)));


extern volatile __bit LC3G4D1T __attribute__((address(0x7939)));


extern volatile __bit LC3G4D2N __attribute__((address(0x793A)));


extern volatile __bit LC3G4D2T __attribute__((address(0x793B)));


extern volatile __bit LC3G4D3N __attribute__((address(0x793C)));


extern volatile __bit LC3G4D3T __attribute__((address(0x793D)));


extern volatile __bit LC3G4D4N __attribute__((address(0x793E)));


extern volatile __bit LC3G4D4T __attribute__((address(0x793F)));


extern volatile __bit LC3G4POL __attribute__((address(0x790B)));


extern volatile __bit LC3INTN __attribute__((address(0x7903)));


extern volatile __bit LC3INTP __attribute__((address(0x7904)));


extern volatile __bit LC3MODE0 __attribute__((address(0x7900)));


extern volatile __bit LC3MODE1 __attribute__((address(0x7901)));


extern volatile __bit LC3MODE2 __attribute__((address(0x7902)));


extern volatile __bit LC3OE __attribute__((address(0x7906)));


extern volatile __bit LC3OUT __attribute__((address(0x7905)));


extern volatile __bit LC3POL __attribute__((address(0x790F)));


extern volatile __bit LC4D1S0 __attribute__((address(0x7950)));


extern volatile __bit LC4D1S1 __attribute__((address(0x7951)));


extern volatile __bit LC4D1S2 __attribute__((address(0x7952)));


extern volatile __bit LC4D2S0 __attribute__((address(0x7954)));


extern volatile __bit LC4D2S1 __attribute__((address(0x7955)));


extern volatile __bit LC4D2S2 __attribute__((address(0x7956)));


extern volatile __bit LC4D3S0 __attribute__((address(0x7958)));


extern volatile __bit LC4D3S1 __attribute__((address(0x7959)));


extern volatile __bit LC4D3S2 __attribute__((address(0x795A)));


extern volatile __bit LC4D4S0 __attribute__((address(0x795C)));


extern volatile __bit LC4D4S1 __attribute__((address(0x795D)));


extern volatile __bit LC4D4S2 __attribute__((address(0x795E)));


extern volatile __bit LC4EN __attribute__((address(0x7947)));


extern volatile __bit LC4G1D1N __attribute__((address(0x7960)));


extern volatile __bit LC4G1D1T __attribute__((address(0x7961)));


extern volatile __bit LC4G1D2N __attribute__((address(0x7962)));


extern volatile __bit LC4G1D2T __attribute__((address(0x7963)));


extern volatile __bit LC4G1D3N __attribute__((address(0x7964)));


extern volatile __bit LC4G1D3T __attribute__((address(0x7965)));


extern volatile __bit LC4G1D4N __attribute__((address(0x7966)));


extern volatile __bit LC4G1D4T __attribute__((address(0x7967)));


extern volatile __bit LC4G1POL __attribute__((address(0x7948)));


extern volatile __bit LC4G2D1N __attribute__((address(0x7968)));


extern volatile __bit LC4G2D1T __attribute__((address(0x7969)));


extern volatile __bit LC4G2D2N __attribute__((address(0x796A)));


extern volatile __bit LC4G2D2T __attribute__((address(0x796B)));


extern volatile __bit LC4G2D3N __attribute__((address(0x796C)));


extern volatile __bit LC4G2D3T __attribute__((address(0x796D)));


extern volatile __bit LC4G2D4N __attribute__((address(0x796E)));


extern volatile __bit LC4G2D4T __attribute__((address(0x796F)));


extern volatile __bit LC4G2POL __attribute__((address(0x7949)));


extern volatile __bit LC4G3D1N __attribute__((address(0x7970)));


extern volatile __bit LC4G3D1T __attribute__((address(0x7971)));


extern volatile __bit LC4G3D2N __attribute__((address(0x7972)));


extern volatile __bit LC4G3D2T __attribute__((address(0x7973)));


extern volatile __bit LC4G3D3N __attribute__((address(0x7974)));


extern volatile __bit LC4G3D3T __attribute__((address(0x7975)));


extern volatile __bit LC4G3D4N __attribute__((address(0x7976)));


extern volatile __bit LC4G3D4T __attribute__((address(0x7977)));


extern volatile __bit LC4G3POL __attribute__((address(0x794A)));


extern volatile __bit LC4G4D1N __attribute__((address(0x7978)));


extern volatile __bit LC4G4D1T __attribute__((address(0x7979)));


extern volatile __bit LC4G4D2N __attribute__((address(0x797A)));


extern volatile __bit LC4G4D2T __attribute__((address(0x797B)));


extern volatile __bit LC4G4D3N __attribute__((address(0x797C)));


extern volatile __bit LC4G4D3T __attribute__((address(0x797D)));


extern volatile __bit LC4G4D4N __attribute__((address(0x797E)));


extern volatile __bit LC4G4D4T __attribute__((address(0x797F)));


extern volatile __bit LC4G4POL __attribute__((address(0x794B)));


extern volatile __bit LC4INTN __attribute__((address(0x7943)));


extern volatile __bit LC4INTP __attribute__((address(0x7944)));


extern volatile __bit LC4MODE0 __attribute__((address(0x7940)));


extern volatile __bit LC4MODE1 __attribute__((address(0x7941)));


extern volatile __bit LC4MODE2 __attribute__((address(0x7942)));


extern volatile __bit LC4OE __attribute__((address(0x7946)));


extern volatile __bit LC4OUT __attribute__((address(0x7945)));


extern volatile __bit LC4POL __attribute__((address(0x794F)));


extern volatile __bit LFIOFR __attribute__((address(0x4D1)));


extern volatile __bit LWLO __attribute__((address(0xCAD)));


extern volatile __bit MC1OUT __attribute__((address(0x8A8)));


extern volatile __bit MC2OUT __attribute__((address(0x8A9)));


extern volatile __bit MCLC1OUT __attribute__((address(0x7878)));


extern volatile __bit MCLC2OUT __attribute__((address(0x7879)));


extern volatile __bit MCLC3OUT __attribute__((address(0x787A)));


extern volatile __bit MCLC4OUT __attribute__((address(0x787B)));


extern volatile __bit N1CKS0 __attribute__((address(0x24F8)));


extern volatile __bit N1CKS1 __attribute__((address(0x24F9)));


extern volatile __bit N1EN __attribute__((address(0x24F7)));


extern volatile __bit N1OE __attribute__((address(0x24F6)));


extern volatile __bit N1OUT __attribute__((address(0x24F5)));


extern volatile __bit N1PFM __attribute__((address(0x24F0)));


extern volatile __bit N1POL __attribute__((address(0x24F4)));


extern volatile __bit N1PWS0 __attribute__((address(0x24FD)));


extern volatile __bit N1PWS1 __attribute__((address(0x24FE)));


extern volatile __bit N1PWS2 __attribute__((address(0x24FF)));


extern volatile __bit NCO1ACC0 __attribute__((address(0x24C0)));


extern volatile __bit NCO1ACC1 __attribute__((address(0x24C1)));


extern volatile __bit NCO1ACC10 __attribute__((address(0x24CA)));


extern volatile __bit NCO1ACC11 __attribute__((address(0x24CB)));


extern volatile __bit NCO1ACC12 __attribute__((address(0x24CC)));


extern volatile __bit NCO1ACC13 __attribute__((address(0x24CD)));


extern volatile __bit NCO1ACC14 __attribute__((address(0x24CE)));


extern volatile __bit NCO1ACC15 __attribute__((address(0x24CF)));


extern volatile __bit NCO1ACC16 __attribute__((address(0x24D0)));


extern volatile __bit NCO1ACC17 __attribute__((address(0x24D1)));


extern volatile __bit NCO1ACC18 __attribute__((address(0x24D2)));


extern volatile __bit NCO1ACC19 __attribute__((address(0x24D3)));


extern volatile __bit NCO1ACC2 __attribute__((address(0x24C2)));


extern volatile __bit NCO1ACC3 __attribute__((address(0x24C3)));


extern volatile __bit NCO1ACC4 __attribute__((address(0x24C4)));


extern volatile __bit NCO1ACC5 __attribute__((address(0x24C5)));


extern volatile __bit NCO1ACC6 __attribute__((address(0x24C6)));


extern volatile __bit NCO1ACC7 __attribute__((address(0x24C7)));


extern volatile __bit NCO1ACC8 __attribute__((address(0x24C8)));


extern volatile __bit NCO1ACC9 __attribute__((address(0x24C9)));


extern volatile __bit NCO1IE __attribute__((address(0x492)));


extern volatile __bit NCO1IF __attribute__((address(0x92)));


extern volatile __bit NCO1INC0 __attribute__((address(0x24D8)));


extern volatile __bit NCO1INC1 __attribute__((address(0x24D9)));


extern volatile __bit NCO1INC10 __attribute__((address(0x24E2)));


extern volatile __bit NCO1INC11 __attribute__((address(0x24E3)));


extern volatile __bit NCO1INC12 __attribute__((address(0x24E4)));


extern volatile __bit NCO1INC13 __attribute__((address(0x24E5)));


extern volatile __bit NCO1INC14 __attribute__((address(0x24E6)));


extern volatile __bit NCO1INC15 __attribute__((address(0x24E7)));


extern volatile __bit NCO1INC2 __attribute__((address(0x24DA)));


extern volatile __bit NCO1INC3 __attribute__((address(0x24DB)));


extern volatile __bit NCO1INC4 __attribute__((address(0x24DC)));


extern volatile __bit NCO1INC5 __attribute__((address(0x24DD)));


extern volatile __bit NCO1INC6 __attribute__((address(0x24DE)));


extern volatile __bit NCO1INC7 __attribute__((address(0x24DF)));


extern volatile __bit NCO1INC8 __attribute__((address(0x24E0)));


extern volatile __bit NCO1INC9 __attribute__((address(0x24E1)));


extern volatile __bit NCO1SEL __attribute__((address(0x8E8)));


extern volatile __bit NCOSEL __attribute__((address(0x8E8)));


extern volatile __bit OERR __attribute__((address(0xCE9)));


extern volatile __bit OSFIE __attribute__((address(0x497)));


extern volatile __bit OSFIF __attribute__((address(0x97)));


extern volatile __bit OSTS __attribute__((address(0x4D5)));


extern volatile __bit PCIE __attribute__((address(0x10BE)));


extern volatile __bit PEIE __attribute__((address(0x5E)));


extern volatile __bit PEN __attribute__((address(0x10B2)));


extern volatile __bit PORT_ICDCLK __attribute__((address(0x7C66)));


extern volatile __bit PORT_ICDDAT __attribute__((address(0x7C67)));


extern volatile __bit PS0 __attribute__((address(0x4A8)));


extern volatile __bit PS1 __attribute__((address(0x4A9)));


extern volatile __bit PS2 __attribute__((address(0x4AA)));


extern volatile __bit PSA __attribute__((address(0x4AB)));


extern volatile __bit PWM1DCH0 __attribute__((address(0x3090)));


extern volatile __bit PWM1DCH1 __attribute__((address(0x3091)));


extern volatile __bit PWM1DCH2 __attribute__((address(0x3092)));


extern volatile __bit PWM1DCH3 __attribute__((address(0x3093)));


extern volatile __bit PWM1DCH4 __attribute__((address(0x3094)));


extern volatile __bit PWM1DCH5 __attribute__((address(0x3095)));


extern volatile __bit PWM1DCH6 __attribute__((address(0x3096)));


extern volatile __bit PWM1DCH7 __attribute__((address(0x3097)));


extern volatile __bit PWM1DCL0 __attribute__((address(0x308E)));


extern volatile __bit PWM1DCL1 __attribute__((address(0x308F)));


extern volatile __bit PWM1EN __attribute__((address(0x309F)));


extern volatile __bit PWM1OE __attribute__((address(0x309E)));


extern volatile __bit PWM1OUT __attribute__((address(0x309D)));


extern volatile __bit PWM1POL __attribute__((address(0x309C)));


extern volatile __bit PWM2DCH0 __attribute__((address(0x30A8)));


extern volatile __bit PWM2DCH1 __attribute__((address(0x30A9)));


extern volatile __bit PWM2DCH2 __attribute__((address(0x30AA)));


extern volatile __bit PWM2DCH3 __attribute__((address(0x30AB)));


extern volatile __bit PWM2DCH4 __attribute__((address(0x30AC)));


extern volatile __bit PWM2DCH5 __attribute__((address(0x30AD)));


extern volatile __bit PWM2DCH6 __attribute__((address(0x30AE)));


extern volatile __bit PWM2DCH7 __attribute__((address(0x30AF)));


extern volatile __bit PWM2DCL0 __attribute__((address(0x30A6)));


extern volatile __bit PWM2DCL1 __attribute__((address(0x30A7)));


extern volatile __bit PWM2EN __attribute__((address(0x30B7)));


extern volatile __bit PWM2OE __attribute__((address(0x30B6)));


extern volatile __bit PWM2OUT __attribute__((address(0x30B5)));


extern volatile __bit PWM2POL __attribute__((address(0x30B4)));


extern volatile __bit PWM3DCH0 __attribute__((address(0x30C0)));


extern volatile __bit PWM3DCH1 __attribute__((address(0x30C1)));


extern volatile __bit PWM3DCH2 __attribute__((address(0x30C2)));


extern volatile __bit PWM3DCH3 __attribute__((address(0x30C3)));


extern volatile __bit PWM3DCH4 __attribute__((address(0x30C4)));


extern volatile __bit PWM3DCH5 __attribute__((address(0x30C5)));


extern volatile __bit PWM3DCH6 __attribute__((address(0x30C6)));


extern volatile __bit PWM3DCH7 __attribute__((address(0x30C7)));


extern volatile __bit PWM3DCL0 __attribute__((address(0x30BE)));


extern volatile __bit PWM3DCL1 __attribute__((address(0x30BF)));


extern volatile __bit PWM3EN __attribute__((address(0x30CF)));


extern volatile __bit PWM3OE __attribute__((address(0x30CE)));


extern volatile __bit PWM3OUT __attribute__((address(0x30CD)));


extern volatile __bit PWM3POL __attribute__((address(0x30CC)));


extern volatile __bit PWM4DCH0 __attribute__((address(0x30D8)));


extern volatile __bit PWM4DCH1 __attribute__((address(0x30D9)));


extern volatile __bit PWM4DCH2 __attribute__((address(0x30DA)));


extern volatile __bit PWM4DCH3 __attribute__((address(0x30DB)));


extern volatile __bit PWM4DCH4 __attribute__((address(0x30DC)));


extern volatile __bit PWM4DCH5 __attribute__((address(0x30DD)));


extern volatile __bit PWM4DCH6 __attribute__((address(0x30DE)));


extern volatile __bit PWM4DCH7 __attribute__((address(0x30DF)));


extern volatile __bit PWM4DCL0 __attribute__((address(0x30D6)));


extern volatile __bit PWM4DCL1 __attribute__((address(0x30D7)));


extern volatile __bit PWM4EN __attribute__((address(0x30E7)));


extern volatile __bit PWM4OE __attribute__((address(0x30E6)));


extern volatile __bit PWM4OUT __attribute__((address(0x30E5)));


extern volatile __bit PWM4POL __attribute__((address(0x30E4)));


extern volatile __bit RA0 __attribute__((address(0x60)));


extern volatile __bit RA1 __attribute__((address(0x61)));


extern volatile __bit RA2 __attribute__((address(0x62)));


extern volatile __bit RA3 __attribute__((address(0x63)));


extern volatile __bit RA4 __attribute__((address(0x64)));


extern volatile __bit RA5 __attribute__((address(0x65)));


extern volatile __bit RB4 __attribute__((address(0x6C)));


extern volatile __bit RB5 __attribute__((address(0x6D)));


extern volatile __bit RB6 __attribute__((address(0x6E)));


extern volatile __bit RB7 __attribute__((address(0x6F)));


extern volatile __bit RC0 __attribute__((address(0x70)));


extern volatile __bit RC1 __attribute__((address(0x71)));


extern volatile __bit RC2 __attribute__((address(0x72)));


extern volatile __bit RC3 __attribute__((address(0x73)));


extern volatile __bit RC4 __attribute__((address(0x74)));


extern volatile __bit RC5 __attribute__((address(0x75)));


extern volatile __bit RC6 __attribute__((address(0x76)));


extern volatile __bit RC7 __attribute__((address(0x77)));


extern volatile __bit RCEN __attribute__((address(0x10B3)));


extern volatile __bit RCIDL __attribute__((address(0xCFE)));


extern volatile __bit RCIE __attribute__((address(0x48D)));


extern volatile __bit RCIF __attribute__((address(0x8D)));


extern volatile __bit RD __attribute__((address(0xCA8)));


extern volatile __bit RSEN __attribute__((address(0x10B1)));


extern volatile __bit RSTVEC __attribute__((address(0x7C68)));


extern volatile __bit RX9 __attribute__((address(0xCEE)));


extern volatile __bit RX9D __attribute__((address(0xCE8)));


extern volatile __bit R_nW __attribute__((address(0x10A2)));


extern volatile __bit SBCDE __attribute__((address(0x10BA)));


extern volatile __bit SBOREN __attribute__((address(0x8B7)));


extern volatile __bit SCIE __attribute__((address(0x10BD)));


extern volatile __bit SCKP __attribute__((address(0xCFC)));


extern volatile __bit SCS0 __attribute__((address(0x4C8)));


extern volatile __bit SCS1 __attribute__((address(0x4C9)));


extern volatile __bit SDAHT __attribute__((address(0x10BB)));


extern volatile __bit SEN __attribute__((address(0x10B0)));


extern volatile __bit SENDB __attribute__((address(0xCF3)));


extern volatile __bit SMP __attribute__((address(0x10A7)));


extern volatile __bit SOSCR __attribute__((address(0x4D7)));


extern volatile __bit SPEN __attribute__((address(0xCEF)));


extern volatile __bit SREN __attribute__((address(0xCED)));


extern volatile __bit SSP1IE __attribute__((address(0x48B)));


extern volatile __bit SSP1IF __attribute__((address(0x8B)));


extern volatile __bit SSPEN __attribute__((address(0x10AD)));


extern volatile __bit SSPM0 __attribute__((address(0x10A8)));


extern volatile __bit SSPM1 __attribute__((address(0x10A9)));


extern volatile __bit SSPM2 __attribute__((address(0x10AA)));


extern volatile __bit SSPM3 __attribute__((address(0x10AB)));


extern volatile __bit SSPOV __attribute__((address(0x10AE)));


extern volatile __bit SSSEL __attribute__((address(0x8EC)));


extern volatile __bit SSTEP __attribute__((address(0x7C6D)));


extern volatile __bit STKOVF __attribute__((address(0x4B7)));


extern volatile __bit STKUNF __attribute__((address(0x4B6)));


extern volatile __bit SWDTEN __attribute__((address(0x4B8)));


extern volatile __bit SYNC __attribute__((address(0xCF4)));


extern volatile __bit T0CS __attribute__((address(0x4AD)));


extern volatile __bit T0IE __attribute__((address(0x5D)));


extern volatile __bit T0IF __attribute__((address(0x5A)));


extern volatile __bit T0SE __attribute__((address(0x4AC)));


extern volatile __bit T1CKPS0 __attribute__((address(0xC4)));


extern volatile __bit T1CKPS1 __attribute__((address(0xC5)));


extern volatile __bit T1GGO_nDONE __attribute__((address(0xCB)));


extern volatile __bit T1GPOL __attribute__((address(0xCE)));


extern volatile __bit T1GSEL __attribute__((address(0x8EB)));


extern volatile __bit T1GSPM __attribute__((address(0xCC)));


extern volatile __bit T1GSS0 __attribute__((address(0xC8)));


extern volatile __bit T1GSS1 __attribute__((address(0xC9)));


extern volatile __bit T1GTM __attribute__((address(0xCD)));


extern volatile __bit T1GVAL __attribute__((address(0xCA)));


extern volatile __bit T1OSCEN __attribute__((address(0xC3)));


extern volatile __bit T2CKPS0 __attribute__((address(0xE0)));


extern volatile __bit T2CKPS1 __attribute__((address(0xE1)));


extern volatile __bit T2OUTPS0 __attribute__((address(0xE3)));


extern volatile __bit T2OUTPS1 __attribute__((address(0xE4)));


extern volatile __bit T2OUTPS2 __attribute__((address(0xE5)));


extern volatile __bit T2OUTPS3 __attribute__((address(0xE6)));


extern volatile __bit TMR0CS __attribute__((address(0x4AD)));


extern volatile __bit TMR0IE __attribute__((address(0x5D)));


extern volatile __bit TMR0IF __attribute__((address(0x5A)));


extern volatile __bit TMR0SE __attribute__((address(0x4AC)));


extern volatile __bit TMR1CS0 __attribute__((address(0xC6)));


extern volatile __bit TMR1CS1 __attribute__((address(0xC7)));


extern volatile __bit TMR1GE __attribute__((address(0xCF)));


extern volatile __bit TMR1GIE __attribute__((address(0x48F)));


extern volatile __bit TMR1GIF __attribute__((address(0x8F)));


extern volatile __bit TMR1IE __attribute__((address(0x488)));


extern volatile __bit TMR1IF __attribute__((address(0x88)));


extern volatile __bit TMR1ON __attribute__((address(0xC0)));


extern volatile __bit TMR2IE __attribute__((address(0x489)));


extern volatile __bit TMR2IF __attribute__((address(0x89)));


extern volatile __bit TMR2ON __attribute__((address(0xE2)));


extern volatile __bit TRIGSEL0 __attribute__((address(0x4FC)));


extern volatile __bit TRIGSEL1 __attribute__((address(0x4FD)));


extern volatile __bit TRIGSEL2 __attribute__((address(0x4FE)));


extern volatile __bit TRIGSEL3 __attribute__((address(0x4FF)));


extern volatile __bit TRISA0 __attribute__((address(0x460)));


extern volatile __bit TRISA1 __attribute__((address(0x461)));


extern volatile __bit TRISA2 __attribute__((address(0x462)));


extern volatile __bit TRISA3 __attribute__((address(0x463)));


extern volatile __bit TRISA4 __attribute__((address(0x464)));


extern volatile __bit TRISA5 __attribute__((address(0x465)));


extern volatile __bit TRISB4 __attribute__((address(0x46C)));


extern volatile __bit TRISB5 __attribute__((address(0x46D)));


extern volatile __bit TRISB6 __attribute__((address(0x46E)));


extern volatile __bit TRISB7 __attribute__((address(0x46F)));


extern volatile __bit TRISC0 __attribute__((address(0x470)));


extern volatile __bit TRISC1 __attribute__((address(0x471)));


extern volatile __bit TRISC2 __attribute__((address(0x472)));


extern volatile __bit TRISC3 __attribute__((address(0x473)));


extern volatile __bit TRISC4 __attribute__((address(0x474)));


extern volatile __bit TRISC5 __attribute__((address(0x475)));


extern volatile __bit TRISC6 __attribute__((address(0x476)));


extern volatile __bit TRISC7 __attribute__((address(0x477)));


extern volatile __bit TRIS_ICDCLK __attribute__((address(0x7C62)));


extern volatile __bit TRIS_ICDDAT __attribute__((address(0x7C63)));


extern volatile __bit TRMT __attribute__((address(0xCF1)));


extern volatile __bit TRP0HLTF __attribute__((address(0x7C8E)));


extern volatile __bit TRP1HLTF __attribute__((address(0x7C8F)));


extern volatile __bit TSEN __attribute__((address(0x8BD)));


extern volatile __bit TSRNG __attribute__((address(0x8BC)));


extern volatile __bit TX9 __attribute__((address(0xCF6)));


extern volatile __bit TX9D __attribute__((address(0xCF0)));


extern volatile __bit TXEN __attribute__((address(0xCF5)));


extern volatile __bit TXIE __attribute__((address(0x48C)));


extern volatile __bit TXIF __attribute__((address(0x8C)));


extern volatile __bit UA __attribute__((address(0x10A1)));


extern volatile __bit USRHLTF __attribute__((address(0x7C89)));


extern volatile __bit VREGPM __attribute__((address(0xCB9)));


extern volatile __bit WCOL __attribute__((address(0x10AF)));


extern volatile __bit WDTPS0 __attribute__((address(0x4B9)));


extern volatile __bit WDTPS1 __attribute__((address(0x4BA)));


extern volatile __bit WDTPS2 __attribute__((address(0x4BB)));


extern volatile __bit WDTPS3 __attribute__((address(0x4BC)));


extern volatile __bit WDTPS4 __attribute__((address(0x4BD)));


extern volatile __bit WPUA0 __attribute__((address(0x1060)));


extern volatile __bit WPUA1 __attribute__((address(0x1061)));


extern volatile __bit WPUA2 __attribute__((address(0x1062)));


extern volatile __bit WPUA3 __attribute__((address(0x1063)));


extern volatile __bit WPUA4 __attribute__((address(0x1064)));


extern volatile __bit WPUA5 __attribute__((address(0x1065)));


extern volatile __bit WPUB4 __attribute__((address(0x106C)));


extern volatile __bit WPUB5 __attribute__((address(0x106D)));


extern volatile __bit WPUB6 __attribute__((address(0x106E)));


extern volatile __bit WPUB7 __attribute__((address(0x106F)));


extern volatile __bit WR __attribute__((address(0xCA9)));


extern volatile __bit WREN __attribute__((address(0xCAA)));


extern volatile __bit WRERR __attribute__((address(0xCAB)));


extern volatile __bit WUE __attribute__((address(0xCF9)));


extern volatile __bit ZERO __attribute__((address(0x1A)));


extern volatile __bit Z_SHAD __attribute__((address(0x7F22)));


extern volatile __bit nBOR __attribute__((address(0x4B0)));


extern volatile __bit nPD __attribute__((address(0x1B)));


extern volatile __bit nPOR __attribute__((address(0x4B1)));


extern volatile __bit nRI __attribute__((address(0x4B2)));


extern volatile __bit nRMCLR __attribute__((address(0x4B3)));


extern volatile __bit nRWDT __attribute__((address(0x4B4)));


extern volatile __bit nT1SYNC __attribute__((address(0xC2)));


extern volatile __bit nTO __attribute__((address(0x1C)));


extern volatile __bit nWPUEN __attribute__((address(0x4AF)));
# 141 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\pic_chip_select.h" 2 3
# 14 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\pic.h" 2 3
# 76 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\pic.h" 3
__attribute__((__unsupported__("The " "FLASH_READ" " macro function is no longer supported. Please use the MPLAB X MCC."))) unsigned char __flash_read(unsigned short addr);

__attribute__((__unsupported__("The " "FLASH_WRITE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_write(unsigned short addr, unsigned short data);

__attribute__((__unsupported__("The " "FLASH_ERASE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_erase(unsigned short addr);



# 1 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\eeprom_routines.h" 1 3
# 84 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\pic.h" 2 3
# 118 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\pic.h" 3
extern __bank0 unsigned char __resetbits;
extern __bank0 __bit __powerdown;
extern __bank0 __bit __timeout;
# 29 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC12-16F1xxx_DFP/1.3.90/xc8\\pic\\include\\xc.h" 2 3
# 51 "mcc_generated_files/pwm2.c" 2

# 1 "mcc_generated_files/pwm2.h" 1
# 102 "mcc_generated_files/pwm2.h"
 void PWM2_Initialize(void);
# 129 "mcc_generated_files/pwm2.h"
 void PWM2_LoadDutyValue(uint16_t dutyValue);
# 52 "mcc_generated_files/pwm2.c" 2






 void PWM2_Initialize(void)
 {


    PWM2CON = 0xD0;


    PWM2DCH = 0x00;


    PWM2DCL = 0x00;

 }

 void PWM2_LoadDutyValue(uint16_t dutyValue)
 {

     PWM2DCH = (dutyValue & 0x03FC)>>2;


     PWM2DCL = (dutyValue & 0x0003)<<6;
 }
