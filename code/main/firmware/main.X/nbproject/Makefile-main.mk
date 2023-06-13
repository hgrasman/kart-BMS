#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-main.mk)" "nbproject/Makefile-local-main.mk"
include nbproject/Makefile-local-main.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=main
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/main.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/main.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/main/driver/i2c/src/drv_i2c.c ../src/config/main/osal/osal_freertos.c ../src/config/main/peripheral/adc/plib_adc0.c ../src/config/main/peripheral/adc/plib_adc1.c ../src/config/main/peripheral/can/plib_can0.c ../src/config/main/peripheral/clock/plib_clock.c ../src/config/main/peripheral/dsu/plib_dsu.c ../src/config/main/peripheral/eic/plib_eic.c ../src/config/main/peripheral/evsys/plib_evsys.c ../src/config/main/peripheral/nvic/plib_nvic.c ../src/config/main/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/main/peripheral/port/plib_port.c ../src/config/main/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c ../src/config/main/peripheral/supc/plib_supc.c ../src/config/main/peripheral/tc/plib_tc1.c ../src/config/main/peripheral/tc/plib_tc0.c ../src/config/main/peripheral/tcc/plib_tcc0.c ../src/config/main/stdio/xc32_monitor.c ../src/config/main/system/int/src/sys_int.c ../src/config/main/initialization.c ../src/config/main/interrupts.c ../src/config/main/exceptions.c ../src/config/main/startup_xc32.c ../src/config/main/libc_syscalls.c ../src/config/main/freertos_hooks.c ../src/config/main/tasks.c ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0/port.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_4.c ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/main.c ../src/i2c.c ../src/can.c ../src/vt_sense.c ../src/average.c ../src/current.c ../src/startup.c ../src/checks.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/995796491/drv_i2c.o ${OBJECTDIR}/_ext/1728049874/osal_freertos.o ${OBJECTDIR}/_ext/897574800/plib_adc0.o ${OBJECTDIR}/_ext/897574800/plib_adc1.o ${OBJECTDIR}/_ext/897576640/plib_can0.o ${OBJECTDIR}/_ext/716943618/plib_clock.o ${OBJECTDIR}/_ext/897578166/plib_dsu.o ${OBJECTDIR}/_ext/897578799/plib_eic.o ${OBJECTDIR}/_ext/714794132/plib_evsys.o ${OBJECTDIR}/_ext/2055419890/plib_nvic.o ${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o ${OBJECTDIR}/_ext/2055473041/plib_port.o ${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o ${OBJECTDIR}/_ext/2055568101/plib_supc.o ${OBJECTDIR}/_ext/444596607/plib_tc1.o ${OBJECTDIR}/_ext/444596607/plib_tc0.o ${OBJECTDIR}/_ext/897593028/plib_tcc0.o ${OBJECTDIR}/_ext/2033665318/xc32_monitor.o ${OBJECTDIR}/_ext/1575887385/sys_int.o ${OBJECTDIR}/_ext/779799956/initialization.o ${OBJECTDIR}/_ext/779799956/interrupts.o ${OBJECTDIR}/_ext/779799956/exceptions.o ${OBJECTDIR}/_ext/779799956/startup_xc32.o ${OBJECTDIR}/_ext/779799956/libc_syscalls.o ${OBJECTDIR}/_ext/779799956/freertos_hooks.o ${OBJECTDIR}/_ext/779799956/tasks.o ${OBJECTDIR}/_ext/1624415188/port.o ${OBJECTDIR}/_ext/1665200909/heap_4.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/i2c.o ${OBJECTDIR}/_ext/1360937237/can.o ${OBJECTDIR}/_ext/1360937237/vt_sense.o ${OBJECTDIR}/_ext/1360937237/average.o ${OBJECTDIR}/_ext/1360937237/current.o ${OBJECTDIR}/_ext/1360937237/startup.o ${OBJECTDIR}/_ext/1360937237/checks.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/995796491/drv_i2c.o.d ${OBJECTDIR}/_ext/1728049874/osal_freertos.o.d ${OBJECTDIR}/_ext/897574800/plib_adc0.o.d ${OBJECTDIR}/_ext/897574800/plib_adc1.o.d ${OBJECTDIR}/_ext/897576640/plib_can0.o.d ${OBJECTDIR}/_ext/716943618/plib_clock.o.d ${OBJECTDIR}/_ext/897578166/plib_dsu.o.d ${OBJECTDIR}/_ext/897578799/plib_eic.o.d ${OBJECTDIR}/_ext/714794132/plib_evsys.o.d ${OBJECTDIR}/_ext/2055419890/plib_nvic.o.d ${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/2055473041/plib_port.o.d ${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o.d ${OBJECTDIR}/_ext/2055568101/plib_supc.o.d ${OBJECTDIR}/_ext/444596607/plib_tc1.o.d ${OBJECTDIR}/_ext/444596607/plib_tc0.o.d ${OBJECTDIR}/_ext/897593028/plib_tcc0.o.d ${OBJECTDIR}/_ext/2033665318/xc32_monitor.o.d ${OBJECTDIR}/_ext/1575887385/sys_int.o.d ${OBJECTDIR}/_ext/779799956/initialization.o.d ${OBJECTDIR}/_ext/779799956/interrupts.o.d ${OBJECTDIR}/_ext/779799956/exceptions.o.d ${OBJECTDIR}/_ext/779799956/startup_xc32.o.d ${OBJECTDIR}/_ext/779799956/libc_syscalls.o.d ${OBJECTDIR}/_ext/779799956/freertos_hooks.o.d ${OBJECTDIR}/_ext/779799956/tasks.o.d ${OBJECTDIR}/_ext/1624415188/port.o.d ${OBJECTDIR}/_ext/1665200909/heap_4.o.d ${OBJECTDIR}/_ext/404212886/croutine.o.d ${OBJECTDIR}/_ext/404212886/list.o.d ${OBJECTDIR}/_ext/404212886/queue.o.d ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d ${OBJECTDIR}/_ext/404212886/timers.o.d ${OBJECTDIR}/_ext/404212886/event_groups.o.d ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/i2c.o.d ${OBJECTDIR}/_ext/1360937237/can.o.d ${OBJECTDIR}/_ext/1360937237/vt_sense.o.d ${OBJECTDIR}/_ext/1360937237/average.o.d ${OBJECTDIR}/_ext/1360937237/current.o.d ${OBJECTDIR}/_ext/1360937237/startup.o.d ${OBJECTDIR}/_ext/1360937237/checks.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/995796491/drv_i2c.o ${OBJECTDIR}/_ext/1728049874/osal_freertos.o ${OBJECTDIR}/_ext/897574800/plib_adc0.o ${OBJECTDIR}/_ext/897574800/plib_adc1.o ${OBJECTDIR}/_ext/897576640/plib_can0.o ${OBJECTDIR}/_ext/716943618/plib_clock.o ${OBJECTDIR}/_ext/897578166/plib_dsu.o ${OBJECTDIR}/_ext/897578799/plib_eic.o ${OBJECTDIR}/_ext/714794132/plib_evsys.o ${OBJECTDIR}/_ext/2055419890/plib_nvic.o ${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o ${OBJECTDIR}/_ext/2055473041/plib_port.o ${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o ${OBJECTDIR}/_ext/2055568101/plib_supc.o ${OBJECTDIR}/_ext/444596607/plib_tc1.o ${OBJECTDIR}/_ext/444596607/plib_tc0.o ${OBJECTDIR}/_ext/897593028/plib_tcc0.o ${OBJECTDIR}/_ext/2033665318/xc32_monitor.o ${OBJECTDIR}/_ext/1575887385/sys_int.o ${OBJECTDIR}/_ext/779799956/initialization.o ${OBJECTDIR}/_ext/779799956/interrupts.o ${OBJECTDIR}/_ext/779799956/exceptions.o ${OBJECTDIR}/_ext/779799956/startup_xc32.o ${OBJECTDIR}/_ext/779799956/libc_syscalls.o ${OBJECTDIR}/_ext/779799956/freertos_hooks.o ${OBJECTDIR}/_ext/779799956/tasks.o ${OBJECTDIR}/_ext/1624415188/port.o ${OBJECTDIR}/_ext/1665200909/heap_4.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/i2c.o ${OBJECTDIR}/_ext/1360937237/can.o ${OBJECTDIR}/_ext/1360937237/vt_sense.o ${OBJECTDIR}/_ext/1360937237/average.o ${OBJECTDIR}/_ext/1360937237/current.o ${OBJECTDIR}/_ext/1360937237/startup.o ${OBJECTDIR}/_ext/1360937237/checks.o

# Source Files
SOURCEFILES=../src/config/main/driver/i2c/src/drv_i2c.c ../src/config/main/osal/osal_freertos.c ../src/config/main/peripheral/adc/plib_adc0.c ../src/config/main/peripheral/adc/plib_adc1.c ../src/config/main/peripheral/can/plib_can0.c ../src/config/main/peripheral/clock/plib_clock.c ../src/config/main/peripheral/dsu/plib_dsu.c ../src/config/main/peripheral/eic/plib_eic.c ../src/config/main/peripheral/evsys/plib_evsys.c ../src/config/main/peripheral/nvic/plib_nvic.c ../src/config/main/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/main/peripheral/port/plib_port.c ../src/config/main/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c ../src/config/main/peripheral/supc/plib_supc.c ../src/config/main/peripheral/tc/plib_tc1.c ../src/config/main/peripheral/tc/plib_tc0.c ../src/config/main/peripheral/tcc/plib_tcc0.c ../src/config/main/stdio/xc32_monitor.c ../src/config/main/system/int/src/sys_int.c ../src/config/main/initialization.c ../src/config/main/interrupts.c ../src/config/main/exceptions.c ../src/config/main/startup_xc32.c ../src/config/main/libc_syscalls.c ../src/config/main/freertos_hooks.c ../src/config/main/tasks.c ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0/port.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_4.c ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/main.c ../src/i2c.c ../src/can.c ../src/vt_sense.c ../src/average.c ../src/current.c ../src/startup.c ../src/checks.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-main.mk ${DISTDIR}/main.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAMC21E18A
MP_LINKER_FILE_OPTION=,--script="..\src\config\main\ATSAMC21E18A.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/995796491/drv_i2c.o: ../src/config/main/driver/i2c/src/drv_i2c.c  .generated_files/flags/main/36723851a2096fb9bb209260a72607c2ef48c6c0 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/995796491" 
	@${RM} ${OBJECTDIR}/_ext/995796491/drv_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/995796491/drv_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/995796491/drv_i2c.o.d" -o ${OBJECTDIR}/_ext/995796491/drv_i2c.o ../src/config/main/driver/i2c/src/drv_i2c.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728049874/osal_freertos.o: ../src/config/main/osal/osal_freertos.c  .generated_files/flags/main/a2b8e727e55908ee9daa00c639a0e46cf9d86a3b .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1728049874" 
	@${RM} ${OBJECTDIR}/_ext/1728049874/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728049874/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728049874/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/1728049874/osal_freertos.o ../src/config/main/osal/osal_freertos.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897574800/plib_adc0.o: ../src/config/main/peripheral/adc/plib_adc0.c  .generated_files/flags/main/951f543c05c460b6e3ba08de52a30434d5dd39b4 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/897574800" 
	@${RM} ${OBJECTDIR}/_ext/897574800/plib_adc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/897574800/plib_adc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897574800/plib_adc0.o.d" -o ${OBJECTDIR}/_ext/897574800/plib_adc0.o ../src/config/main/peripheral/adc/plib_adc0.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897574800/plib_adc1.o: ../src/config/main/peripheral/adc/plib_adc1.c  .generated_files/flags/main/40530889795acef01c4ea1fa1b29cdaa45e3eba7 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/897574800" 
	@${RM} ${OBJECTDIR}/_ext/897574800/plib_adc1.o.d 
	@${RM} ${OBJECTDIR}/_ext/897574800/plib_adc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897574800/plib_adc1.o.d" -o ${OBJECTDIR}/_ext/897574800/plib_adc1.o ../src/config/main/peripheral/adc/plib_adc1.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897576640/plib_can0.o: ../src/config/main/peripheral/can/plib_can0.c  .generated_files/flags/main/a1e94db450ca4aae0be4b49fa076fbedced79bc9 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/897576640" 
	@${RM} ${OBJECTDIR}/_ext/897576640/plib_can0.o.d 
	@${RM} ${OBJECTDIR}/_ext/897576640/plib_can0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897576640/plib_can0.o.d" -o ${OBJECTDIR}/_ext/897576640/plib_can0.o ../src/config/main/peripheral/can/plib_can0.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/716943618/plib_clock.o: ../src/config/main/peripheral/clock/plib_clock.c  .generated_files/flags/main/2932e09972b705bee754713ede5662f8cea203d5 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/716943618" 
	@${RM} ${OBJECTDIR}/_ext/716943618/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/716943618/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/716943618/plib_clock.o.d" -o ${OBJECTDIR}/_ext/716943618/plib_clock.o ../src/config/main/peripheral/clock/plib_clock.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897578166/plib_dsu.o: ../src/config/main/peripheral/dsu/plib_dsu.c  .generated_files/flags/main/1f34287d3633c9b55fd0b21a8ec0d9d709a0778c .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/897578166" 
	@${RM} ${OBJECTDIR}/_ext/897578166/plib_dsu.o.d 
	@${RM} ${OBJECTDIR}/_ext/897578166/plib_dsu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897578166/plib_dsu.o.d" -o ${OBJECTDIR}/_ext/897578166/plib_dsu.o ../src/config/main/peripheral/dsu/plib_dsu.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897578799/plib_eic.o: ../src/config/main/peripheral/eic/plib_eic.c  .generated_files/flags/main/9a495a270a22a35d97d5f000acd766d68afbbb2d .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/897578799" 
	@${RM} ${OBJECTDIR}/_ext/897578799/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/897578799/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897578799/plib_eic.o.d" -o ${OBJECTDIR}/_ext/897578799/plib_eic.o ../src/config/main/peripheral/eic/plib_eic.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/714794132/plib_evsys.o: ../src/config/main/peripheral/evsys/plib_evsys.c  .generated_files/flags/main/2ef2508821b78a8e28db0d32a717ee80655297b3 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/714794132" 
	@${RM} ${OBJECTDIR}/_ext/714794132/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/714794132/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/714794132/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/714794132/plib_evsys.o ../src/config/main/peripheral/evsys/plib_evsys.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2055419890/plib_nvic.o: ../src/config/main/peripheral/nvic/plib_nvic.c  .generated_files/flags/main/c50f8415603097e67414aee5a7742f6008600a80 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/2055419890" 
	@${RM} ${OBJECTDIR}/_ext/2055419890/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2055419890/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2055419890/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/2055419890/plib_nvic.o ../src/config/main/peripheral/nvic/plib_nvic.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o: ../src/config/main/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/main/618bba3503ff65dde4a219828d64e61c49fc98a5 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/330986880" 
	@${RM} ${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o ../src/config/main/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2055473041/plib_port.o: ../src/config/main/peripheral/port/plib_port.c  .generated_files/flags/main/816afbef86609bb85727740c419c2eb40dce8c05 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/2055473041" 
	@${RM} ${OBJECTDIR}/_ext/2055473041/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2055473041/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2055473041/plib_port.o.d" -o ${OBJECTDIR}/_ext/2055473041/plib_port.o ../src/config/main/peripheral/port/plib_port.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o: ../src/config/main/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c  .generated_files/flags/main/485ffce2acdae0c3a292893aeb5e8cbbb8afc9e1 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1716667835" 
	@${RM} ${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o.d" -o ${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o ../src/config/main/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2055568101/plib_supc.o: ../src/config/main/peripheral/supc/plib_supc.c  .generated_files/flags/main/69dd23353a95b89bd631d9372db0dbcbf46b9b30 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/2055568101" 
	@${RM} ${OBJECTDIR}/_ext/2055568101/plib_supc.o.d 
	@${RM} ${OBJECTDIR}/_ext/2055568101/plib_supc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2055568101/plib_supc.o.d" -o ${OBJECTDIR}/_ext/2055568101/plib_supc.o ../src/config/main/peripheral/supc/plib_supc.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/444596607/plib_tc1.o: ../src/config/main/peripheral/tc/plib_tc1.c  .generated_files/flags/main/251f1e8deaca62d420bd531f348283144dd70b26 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/444596607" 
	@${RM} ${OBJECTDIR}/_ext/444596607/plib_tc1.o.d 
	@${RM} ${OBJECTDIR}/_ext/444596607/plib_tc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/444596607/plib_tc1.o.d" -o ${OBJECTDIR}/_ext/444596607/plib_tc1.o ../src/config/main/peripheral/tc/plib_tc1.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/444596607/plib_tc0.o: ../src/config/main/peripheral/tc/plib_tc0.c  .generated_files/flags/main/efaf541bd7d8091b4cd4c651afc8e915b44e0f50 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/444596607" 
	@${RM} ${OBJECTDIR}/_ext/444596607/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/444596607/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/444596607/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/444596607/plib_tc0.o ../src/config/main/peripheral/tc/plib_tc0.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897593028/plib_tcc0.o: ../src/config/main/peripheral/tcc/plib_tcc0.c  .generated_files/flags/main/4688891742bb5f6ee2f5657c9d051ecad6dd2e95 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/897593028" 
	@${RM} ${OBJECTDIR}/_ext/897593028/plib_tcc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/897593028/plib_tcc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897593028/plib_tcc0.o.d" -o ${OBJECTDIR}/_ext/897593028/plib_tcc0.o ../src/config/main/peripheral/tcc/plib_tcc0.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2033665318/xc32_monitor.o: ../src/config/main/stdio/xc32_monitor.c  .generated_files/flags/main/1edbacda4c6aa284ce1469b4a3993a72e43d89ed .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/2033665318" 
	@${RM} ${OBJECTDIR}/_ext/2033665318/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/2033665318/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2033665318/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/2033665318/xc32_monitor.o ../src/config/main/stdio/xc32_monitor.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1575887385/sys_int.o: ../src/config/main/system/int/src/sys_int.c  .generated_files/flags/main/1ce0f8395dc4dfd7e490bf9b407a8e5ff8b3dff2 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1575887385" 
	@${RM} ${OBJECTDIR}/_ext/1575887385/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1575887385/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1575887385/sys_int.o.d" -o ${OBJECTDIR}/_ext/1575887385/sys_int.o ../src/config/main/system/int/src/sys_int.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/initialization.o: ../src/config/main/initialization.c  .generated_files/flags/main/ece1e4f302ed7670d855ac9b51dbe5ac14dd129a .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/initialization.o.d" -o ${OBJECTDIR}/_ext/779799956/initialization.o ../src/config/main/initialization.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/interrupts.o: ../src/config/main/interrupts.c  .generated_files/flags/main/137f254c2cad501889686a277084376b30e3376f .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/interrupts.o.d" -o ${OBJECTDIR}/_ext/779799956/interrupts.o ../src/config/main/interrupts.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/exceptions.o: ../src/config/main/exceptions.c  .generated_files/flags/main/b61947b649f41f9066b883b29716e7571849e8ae .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/exceptions.o.d" -o ${OBJECTDIR}/_ext/779799956/exceptions.o ../src/config/main/exceptions.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/startup_xc32.o: ../src/config/main/startup_xc32.c  .generated_files/flags/main/891a47643c91f07185ca48f6a085b8bbfd70ce5d .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/779799956/startup_xc32.o ../src/config/main/startup_xc32.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/libc_syscalls.o: ../src/config/main/libc_syscalls.c  .generated_files/flags/main/3321ce81da56adf2a99cd6027bd5b9664fd164a8 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/779799956/libc_syscalls.o ../src/config/main/libc_syscalls.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/freertos_hooks.o: ../src/config/main/freertos_hooks.c  .generated_files/flags/main/30e56ef685998cce2c930a40ee89bb2a4ba9a4d3 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/779799956/freertos_hooks.o ../src/config/main/freertos_hooks.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/tasks.o: ../src/config/main/tasks.c  .generated_files/flags/main/7a17a7daf4325cb4927c6b4abaabc92a0de1c2fe .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/tasks.o.d" -o ${OBJECTDIR}/_ext/779799956/tasks.o ../src/config/main/tasks.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1624415188/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0/port.c  .generated_files/flags/main/ab71014d69f44daab004508f1c1fe83084f19a9 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1624415188" 
	@${RM} ${OBJECTDIR}/_ext/1624415188/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1624415188/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1624415188/port.o.d" -o ${OBJECTDIR}/_ext/1624415188/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0/port.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1665200909/heap_4.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_4.c  .generated_files/flags/main/6c496f89118ff90d0df6c8eb029ead188127e639 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_4.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_4.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_4.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/main/a3c520387abcf31e0b1123578a66311cc39ac28 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/main/2197186feac68c2b19caf303eb47a67109812171 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/main/c2f9721884cc31e4456e13f5c87ec3838f2c7aa5 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/main/2777a2fd470c46b05a2c1bad068ebace07fd5e78 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/main/d8521b93496bf6d8b0e6d67b408ed4ac239365cc .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/main/f3ecc701cb54f80b561cea0c889d3d386651f8 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/main/4efe83b558713f9c95c345fe0d9fb872072d3304 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/main/e782cc36d45ee013ce1ee3010b6b108a4e0fce3a .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/i2c.o: ../src/i2c.c  .generated_files/flags/main/cb682a65c1ad67dc05a3a8b2768b8fb63ea03bd5 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/i2c.o.d" -o ${OBJECTDIR}/_ext/1360937237/i2c.o ../src/i2c.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/can.o: ../src/can.c  .generated_files/flags/main/1d12042d39ceedf6513264652ce6f8c290fd0f09 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/can.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/can.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/can.o.d" -o ${OBJECTDIR}/_ext/1360937237/can.o ../src/can.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/vt_sense.o: ../src/vt_sense.c  .generated_files/flags/main/b54bceddd900a0d5bb8bce51955e8e69b2b69e06 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/vt_sense.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/vt_sense.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/vt_sense.o.d" -o ${OBJECTDIR}/_ext/1360937237/vt_sense.o ../src/vt_sense.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/average.o: ../src/average.c  .generated_files/flags/main/41bd6bfb240c538be2c8b569c887b237eff13d2a .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/average.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/average.o.d" -o ${OBJECTDIR}/_ext/1360937237/average.o ../src/average.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/current.o: ../src/current.c  .generated_files/flags/main/f13e913aff3fca4bcdb1dda8e8e256f478a4405d .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/current.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/current.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/current.o.d" -o ${OBJECTDIR}/_ext/1360937237/current.o ../src/current.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/startup.o: ../src/startup.c  .generated_files/flags/main/7a286a27bdbbebff885eeb93105415fcffe0e50d .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/startup.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/startup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/startup.o.d" -o ${OBJECTDIR}/_ext/1360937237/startup.o ../src/startup.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/checks.o: ../src/checks.c  .generated_files/flags/main/4a82fd26fd720282ca0f1f89127002ceed6c4b19 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/checks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/checks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/checks.o.d" -o ${OBJECTDIR}/_ext/1360937237/checks.o ../src/checks.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/995796491/drv_i2c.o: ../src/config/main/driver/i2c/src/drv_i2c.c  .generated_files/flags/main/d0bc0e2d970a3b444f1a591b0b934c039274e23 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/995796491" 
	@${RM} ${OBJECTDIR}/_ext/995796491/drv_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/995796491/drv_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/995796491/drv_i2c.o.d" -o ${OBJECTDIR}/_ext/995796491/drv_i2c.o ../src/config/main/driver/i2c/src/drv_i2c.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728049874/osal_freertos.o: ../src/config/main/osal/osal_freertos.c  .generated_files/flags/main/f24eaa868034a1b66097466cf27e75d2b4a92c7d .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1728049874" 
	@${RM} ${OBJECTDIR}/_ext/1728049874/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728049874/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728049874/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/1728049874/osal_freertos.o ../src/config/main/osal/osal_freertos.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897574800/plib_adc0.o: ../src/config/main/peripheral/adc/plib_adc0.c  .generated_files/flags/main/9a39969e67861fa22da64207a4a876529e8892a9 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/897574800" 
	@${RM} ${OBJECTDIR}/_ext/897574800/plib_adc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/897574800/plib_adc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897574800/plib_adc0.o.d" -o ${OBJECTDIR}/_ext/897574800/plib_adc0.o ../src/config/main/peripheral/adc/plib_adc0.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897574800/plib_adc1.o: ../src/config/main/peripheral/adc/plib_adc1.c  .generated_files/flags/main/1832334eafd55cd0cc98d016159a4e3f162deb3c .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/897574800" 
	@${RM} ${OBJECTDIR}/_ext/897574800/plib_adc1.o.d 
	@${RM} ${OBJECTDIR}/_ext/897574800/plib_adc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897574800/plib_adc1.o.d" -o ${OBJECTDIR}/_ext/897574800/plib_adc1.o ../src/config/main/peripheral/adc/plib_adc1.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897576640/plib_can0.o: ../src/config/main/peripheral/can/plib_can0.c  .generated_files/flags/main/6ca0a0e9ab7b0c9b10351456c412e8547533a7f1 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/897576640" 
	@${RM} ${OBJECTDIR}/_ext/897576640/plib_can0.o.d 
	@${RM} ${OBJECTDIR}/_ext/897576640/plib_can0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897576640/plib_can0.o.d" -o ${OBJECTDIR}/_ext/897576640/plib_can0.o ../src/config/main/peripheral/can/plib_can0.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/716943618/plib_clock.o: ../src/config/main/peripheral/clock/plib_clock.c  .generated_files/flags/main/992d5ef0cca7f63693883dc19573e4cef3d580f4 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/716943618" 
	@${RM} ${OBJECTDIR}/_ext/716943618/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/716943618/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/716943618/plib_clock.o.d" -o ${OBJECTDIR}/_ext/716943618/plib_clock.o ../src/config/main/peripheral/clock/plib_clock.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897578166/plib_dsu.o: ../src/config/main/peripheral/dsu/plib_dsu.c  .generated_files/flags/main/e65531b0bafea77c5e30436c15162adc796cbb18 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/897578166" 
	@${RM} ${OBJECTDIR}/_ext/897578166/plib_dsu.o.d 
	@${RM} ${OBJECTDIR}/_ext/897578166/plib_dsu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897578166/plib_dsu.o.d" -o ${OBJECTDIR}/_ext/897578166/plib_dsu.o ../src/config/main/peripheral/dsu/plib_dsu.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897578799/plib_eic.o: ../src/config/main/peripheral/eic/plib_eic.c  .generated_files/flags/main/e7c7db8479a6b2e0c7eecfeafeda3a2ce977b0da .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/897578799" 
	@${RM} ${OBJECTDIR}/_ext/897578799/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/897578799/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897578799/plib_eic.o.d" -o ${OBJECTDIR}/_ext/897578799/plib_eic.o ../src/config/main/peripheral/eic/plib_eic.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/714794132/plib_evsys.o: ../src/config/main/peripheral/evsys/plib_evsys.c  .generated_files/flags/main/3c511ad4caa365858c3298f64c27a617096abf09 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/714794132" 
	@${RM} ${OBJECTDIR}/_ext/714794132/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/714794132/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/714794132/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/714794132/plib_evsys.o ../src/config/main/peripheral/evsys/plib_evsys.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2055419890/plib_nvic.o: ../src/config/main/peripheral/nvic/plib_nvic.c  .generated_files/flags/main/7b7b84eb9a530330d35f2debe7e92ba787148631 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/2055419890" 
	@${RM} ${OBJECTDIR}/_ext/2055419890/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2055419890/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2055419890/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/2055419890/plib_nvic.o ../src/config/main/peripheral/nvic/plib_nvic.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o: ../src/config/main/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/main/e209b9266af9fb8895cc04edc7948c56397cb3fc .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/330986880" 
	@${RM} ${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o ../src/config/main/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2055473041/plib_port.o: ../src/config/main/peripheral/port/plib_port.c  .generated_files/flags/main/b245ba0e999b6734f552f38a432368d9f9f69344 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/2055473041" 
	@${RM} ${OBJECTDIR}/_ext/2055473041/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2055473041/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2055473041/plib_port.o.d" -o ${OBJECTDIR}/_ext/2055473041/plib_port.o ../src/config/main/peripheral/port/plib_port.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o: ../src/config/main/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c  .generated_files/flags/main/9330f2f701967dc4c20a9f6d9cb0b8e94479ddae .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1716667835" 
	@${RM} ${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o.d" -o ${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o ../src/config/main/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2055568101/plib_supc.o: ../src/config/main/peripheral/supc/plib_supc.c  .generated_files/flags/main/f605521479cc29b2a7f7c1d9954b15405cb65d82 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/2055568101" 
	@${RM} ${OBJECTDIR}/_ext/2055568101/plib_supc.o.d 
	@${RM} ${OBJECTDIR}/_ext/2055568101/plib_supc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2055568101/plib_supc.o.d" -o ${OBJECTDIR}/_ext/2055568101/plib_supc.o ../src/config/main/peripheral/supc/plib_supc.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/444596607/plib_tc1.o: ../src/config/main/peripheral/tc/plib_tc1.c  .generated_files/flags/main/14f44a4877a49a980fe19f5ec8226beb97a600f6 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/444596607" 
	@${RM} ${OBJECTDIR}/_ext/444596607/plib_tc1.o.d 
	@${RM} ${OBJECTDIR}/_ext/444596607/plib_tc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/444596607/plib_tc1.o.d" -o ${OBJECTDIR}/_ext/444596607/plib_tc1.o ../src/config/main/peripheral/tc/plib_tc1.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/444596607/plib_tc0.o: ../src/config/main/peripheral/tc/plib_tc0.c  .generated_files/flags/main/24b59573a583e83dde718b984450261d3fc29f2e .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/444596607" 
	@${RM} ${OBJECTDIR}/_ext/444596607/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/444596607/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/444596607/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/444596607/plib_tc0.o ../src/config/main/peripheral/tc/plib_tc0.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897593028/plib_tcc0.o: ../src/config/main/peripheral/tcc/plib_tcc0.c  .generated_files/flags/main/95792a8c79d1636cf451c0feccf72075ccc19115 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/897593028" 
	@${RM} ${OBJECTDIR}/_ext/897593028/plib_tcc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/897593028/plib_tcc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897593028/plib_tcc0.o.d" -o ${OBJECTDIR}/_ext/897593028/plib_tcc0.o ../src/config/main/peripheral/tcc/plib_tcc0.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2033665318/xc32_monitor.o: ../src/config/main/stdio/xc32_monitor.c  .generated_files/flags/main/a67d52ebfe0739acd6bbc12a1dd461ed399235a2 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/2033665318" 
	@${RM} ${OBJECTDIR}/_ext/2033665318/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/2033665318/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2033665318/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/2033665318/xc32_monitor.o ../src/config/main/stdio/xc32_monitor.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1575887385/sys_int.o: ../src/config/main/system/int/src/sys_int.c  .generated_files/flags/main/a89ec1f46b8d5300c7ae0f0774a16436b9b96556 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1575887385" 
	@${RM} ${OBJECTDIR}/_ext/1575887385/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1575887385/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1575887385/sys_int.o.d" -o ${OBJECTDIR}/_ext/1575887385/sys_int.o ../src/config/main/system/int/src/sys_int.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/initialization.o: ../src/config/main/initialization.c  .generated_files/flags/main/e531d31dc90efba3227978c6a13a1eac0661330f .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/initialization.o.d" -o ${OBJECTDIR}/_ext/779799956/initialization.o ../src/config/main/initialization.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/interrupts.o: ../src/config/main/interrupts.c  .generated_files/flags/main/15baef29f269d56236dd6a56f35ca405723cf0b7 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/interrupts.o.d" -o ${OBJECTDIR}/_ext/779799956/interrupts.o ../src/config/main/interrupts.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/exceptions.o: ../src/config/main/exceptions.c  .generated_files/flags/main/8e614f658bd2f7eb387d5d9d0e6a1422835d23de .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/exceptions.o.d" -o ${OBJECTDIR}/_ext/779799956/exceptions.o ../src/config/main/exceptions.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/startup_xc32.o: ../src/config/main/startup_xc32.c  .generated_files/flags/main/d7ea1be25c1c216310111e338099e6ef16ecc02d .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/779799956/startup_xc32.o ../src/config/main/startup_xc32.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/libc_syscalls.o: ../src/config/main/libc_syscalls.c  .generated_files/flags/main/b5a1f3eaf9678b112f956cdffb1b93236aebe25 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/779799956/libc_syscalls.o ../src/config/main/libc_syscalls.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/freertos_hooks.o: ../src/config/main/freertos_hooks.c  .generated_files/flags/main/167a0602fe9a532dd2f7fb937a86e24852b8b6dd .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/779799956/freertos_hooks.o ../src/config/main/freertos_hooks.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/tasks.o: ../src/config/main/tasks.c  .generated_files/flags/main/526d138431573b963e9e1fd1c635763447a47926 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/tasks.o.d" -o ${OBJECTDIR}/_ext/779799956/tasks.o ../src/config/main/tasks.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1624415188/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0/port.c  .generated_files/flags/main/14915117c050370eeb3900d92db8dac8e220a316 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1624415188" 
	@${RM} ${OBJECTDIR}/_ext/1624415188/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1624415188/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1624415188/port.o.d" -o ${OBJECTDIR}/_ext/1624415188/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0/port.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1665200909/heap_4.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_4.c  .generated_files/flags/main/b6cb381ddc7a7dc9f9b4ff7279ec6ae128417430 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_4.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_4.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_4.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/main/d14875a0e54ad628f9b563e004e4fe71a981613e .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/main/50e34cb58aca93aa559afd205d80a45aceeda67b .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/main/4637a3fb68ea7728bdeff918a55ce4c7ce72cae2 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/main/a993b9a348a39b845174097431d7c8e1c528f8bc .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/main/e0b8bdccade959585ad0eafcfd3704ad65d7466c .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/main/1f41b393446df0b272d60f8c56e731806d2b1600 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/main/92359a45279ecbb92a91805016cc621b9769cee1 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/main/aa633905f9916c8559e02a144f2428da8c4f231a .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/i2c.o: ../src/i2c.c  .generated_files/flags/main/c9e593fe0645e427cd4ce20f263069ea9911d5cf .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/i2c.o.d" -o ${OBJECTDIR}/_ext/1360937237/i2c.o ../src/i2c.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/can.o: ../src/can.c  .generated_files/flags/main/97c070144f8114c46491113439358b2efe895fa8 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/can.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/can.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/can.o.d" -o ${OBJECTDIR}/_ext/1360937237/can.o ../src/can.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/vt_sense.o: ../src/vt_sense.c  .generated_files/flags/main/4195a1b0872cf7381bfb4e3e70841b4b4bef5590 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/vt_sense.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/vt_sense.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/vt_sense.o.d" -o ${OBJECTDIR}/_ext/1360937237/vt_sense.o ../src/vt_sense.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/average.o: ../src/average.c  .generated_files/flags/main/376da1bd304ec0c1b600aedbf69e3b1b52ba6967 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/average.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/average.o.d" -o ${OBJECTDIR}/_ext/1360937237/average.o ../src/average.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/current.o: ../src/current.c  .generated_files/flags/main/c687e153670dcd93af09d06c54d6f203e7118077 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/current.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/current.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/current.o.d" -o ${OBJECTDIR}/_ext/1360937237/current.o ../src/current.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/startup.o: ../src/startup.c  .generated_files/flags/main/27a5fd9e21109aff20d6a08f3ef16abc16328500 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/startup.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/startup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/startup.o.d" -o ${OBJECTDIR}/_ext/1360937237/startup.o ../src/startup.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/checks.o: ../src/checks.c  .generated_files/flags/main/9f1bd31058704f135805b38f020a69cf04063dbf .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/checks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/checks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/checks.o.d" -o ${OBJECTDIR}/_ext/1360937237/checks.o ../src/checks.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/main.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/main/ATSAMC21E18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/main.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=1024,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samc21"
	
else
${DISTDIR}/main.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/main/ATSAMC21E18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/main.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=1024,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samc21"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/main.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
