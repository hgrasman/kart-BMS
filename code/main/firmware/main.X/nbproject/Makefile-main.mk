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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/main/driver/i2c/src/drv_i2c.c ../src/config/main/osal/osal_freertos.c ../src/config/main/peripheral/adc/plib_adc0.c ../src/config/main/peripheral/adc/plib_adc1.c ../src/config/main/peripheral/can/plib_can0.c ../src/config/main/peripheral/clock/plib_clock.c ../src/config/main/peripheral/dsu/plib_dsu.c ../src/config/main/peripheral/eic/plib_eic.c ../src/config/main/peripheral/evsys/plib_evsys.c ../src/config/main/peripheral/nvic/plib_nvic.c ../src/config/main/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/main/peripheral/port/plib_port.c ../src/config/main/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c ../src/config/main/peripheral/tc/plib_tc1.c ../src/config/main/peripheral/tc/plib_tc0.c ../src/config/main/peripheral/tcc/plib_tcc0.c ../src/config/main/stdio/xc32_monitor.c ../src/config/main/system/int/src/sys_int.c ../src/config/main/initialization.c ../src/config/main/interrupts.c ../src/config/main/exceptions.c ../src/config/main/startup_xc32.c ../src/config/main/libc_syscalls.c ../src/config/main/freertos_hooks.c ../src/config/main/tasks.c ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0/port.c ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/main.c ../src/i2c.c ../src/can.c ../src/vt_sense.c ../src/average.c ../src/current.c ../../../../../../../RECOVERY/startup.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_4.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/995796491/drv_i2c.o ${OBJECTDIR}/_ext/1728049874/osal_freertos.o ${OBJECTDIR}/_ext/897574800/plib_adc0.o ${OBJECTDIR}/_ext/897574800/plib_adc1.o ${OBJECTDIR}/_ext/897576640/plib_can0.o ${OBJECTDIR}/_ext/716943618/plib_clock.o ${OBJECTDIR}/_ext/897578166/plib_dsu.o ${OBJECTDIR}/_ext/897578799/plib_eic.o ${OBJECTDIR}/_ext/714794132/plib_evsys.o ${OBJECTDIR}/_ext/2055419890/plib_nvic.o ${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o ${OBJECTDIR}/_ext/2055473041/plib_port.o ${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o ${OBJECTDIR}/_ext/444596607/plib_tc1.o ${OBJECTDIR}/_ext/444596607/plib_tc0.o ${OBJECTDIR}/_ext/897593028/plib_tcc0.o ${OBJECTDIR}/_ext/2033665318/xc32_monitor.o ${OBJECTDIR}/_ext/1575887385/sys_int.o ${OBJECTDIR}/_ext/779799956/initialization.o ${OBJECTDIR}/_ext/779799956/interrupts.o ${OBJECTDIR}/_ext/779799956/exceptions.o ${OBJECTDIR}/_ext/779799956/startup_xc32.o ${OBJECTDIR}/_ext/779799956/libc_syscalls.o ${OBJECTDIR}/_ext/779799956/freertos_hooks.o ${OBJECTDIR}/_ext/779799956/tasks.o ${OBJECTDIR}/_ext/1624415188/port.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/i2c.o ${OBJECTDIR}/_ext/1360937237/can.o ${OBJECTDIR}/_ext/1360937237/vt_sense.o ${OBJECTDIR}/_ext/1360937237/average.o ${OBJECTDIR}/_ext/1360937237/current.o ${OBJECTDIR}/_ext/1278705188/startup.o ${OBJECTDIR}/_ext/1665200909/heap_4.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/995796491/drv_i2c.o.d ${OBJECTDIR}/_ext/1728049874/osal_freertos.o.d ${OBJECTDIR}/_ext/897574800/plib_adc0.o.d ${OBJECTDIR}/_ext/897574800/plib_adc1.o.d ${OBJECTDIR}/_ext/897576640/plib_can0.o.d ${OBJECTDIR}/_ext/716943618/plib_clock.o.d ${OBJECTDIR}/_ext/897578166/plib_dsu.o.d ${OBJECTDIR}/_ext/897578799/plib_eic.o.d ${OBJECTDIR}/_ext/714794132/plib_evsys.o.d ${OBJECTDIR}/_ext/2055419890/plib_nvic.o.d ${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/2055473041/plib_port.o.d ${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o.d ${OBJECTDIR}/_ext/444596607/plib_tc1.o.d ${OBJECTDIR}/_ext/444596607/plib_tc0.o.d ${OBJECTDIR}/_ext/897593028/plib_tcc0.o.d ${OBJECTDIR}/_ext/2033665318/xc32_monitor.o.d ${OBJECTDIR}/_ext/1575887385/sys_int.o.d ${OBJECTDIR}/_ext/779799956/initialization.o.d ${OBJECTDIR}/_ext/779799956/interrupts.o.d ${OBJECTDIR}/_ext/779799956/exceptions.o.d ${OBJECTDIR}/_ext/779799956/startup_xc32.o.d ${OBJECTDIR}/_ext/779799956/libc_syscalls.o.d ${OBJECTDIR}/_ext/779799956/freertos_hooks.o.d ${OBJECTDIR}/_ext/779799956/tasks.o.d ${OBJECTDIR}/_ext/1624415188/port.o.d ${OBJECTDIR}/_ext/404212886/croutine.o.d ${OBJECTDIR}/_ext/404212886/list.o.d ${OBJECTDIR}/_ext/404212886/queue.o.d ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d ${OBJECTDIR}/_ext/404212886/timers.o.d ${OBJECTDIR}/_ext/404212886/event_groups.o.d ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/i2c.o.d ${OBJECTDIR}/_ext/1360937237/can.o.d ${OBJECTDIR}/_ext/1360937237/vt_sense.o.d ${OBJECTDIR}/_ext/1360937237/average.o.d ${OBJECTDIR}/_ext/1360937237/current.o.d ${OBJECTDIR}/_ext/1278705188/startup.o.d ${OBJECTDIR}/_ext/1665200909/heap_4.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/995796491/drv_i2c.o ${OBJECTDIR}/_ext/1728049874/osal_freertos.o ${OBJECTDIR}/_ext/897574800/plib_adc0.o ${OBJECTDIR}/_ext/897574800/plib_adc1.o ${OBJECTDIR}/_ext/897576640/plib_can0.o ${OBJECTDIR}/_ext/716943618/plib_clock.o ${OBJECTDIR}/_ext/897578166/plib_dsu.o ${OBJECTDIR}/_ext/897578799/plib_eic.o ${OBJECTDIR}/_ext/714794132/plib_evsys.o ${OBJECTDIR}/_ext/2055419890/plib_nvic.o ${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o ${OBJECTDIR}/_ext/2055473041/plib_port.o ${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o ${OBJECTDIR}/_ext/444596607/plib_tc1.o ${OBJECTDIR}/_ext/444596607/plib_tc0.o ${OBJECTDIR}/_ext/897593028/plib_tcc0.o ${OBJECTDIR}/_ext/2033665318/xc32_monitor.o ${OBJECTDIR}/_ext/1575887385/sys_int.o ${OBJECTDIR}/_ext/779799956/initialization.o ${OBJECTDIR}/_ext/779799956/interrupts.o ${OBJECTDIR}/_ext/779799956/exceptions.o ${OBJECTDIR}/_ext/779799956/startup_xc32.o ${OBJECTDIR}/_ext/779799956/libc_syscalls.o ${OBJECTDIR}/_ext/779799956/freertos_hooks.o ${OBJECTDIR}/_ext/779799956/tasks.o ${OBJECTDIR}/_ext/1624415188/port.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/i2c.o ${OBJECTDIR}/_ext/1360937237/can.o ${OBJECTDIR}/_ext/1360937237/vt_sense.o ${OBJECTDIR}/_ext/1360937237/average.o ${OBJECTDIR}/_ext/1360937237/current.o ${OBJECTDIR}/_ext/1278705188/startup.o ${OBJECTDIR}/_ext/1665200909/heap_4.o

# Source Files
SOURCEFILES=../src/config/main/driver/i2c/src/drv_i2c.c ../src/config/main/osal/osal_freertos.c ../src/config/main/peripheral/adc/plib_adc0.c ../src/config/main/peripheral/adc/plib_adc1.c ../src/config/main/peripheral/can/plib_can0.c ../src/config/main/peripheral/clock/plib_clock.c ../src/config/main/peripheral/dsu/plib_dsu.c ../src/config/main/peripheral/eic/plib_eic.c ../src/config/main/peripheral/evsys/plib_evsys.c ../src/config/main/peripheral/nvic/plib_nvic.c ../src/config/main/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/main/peripheral/port/plib_port.c ../src/config/main/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c ../src/config/main/peripheral/tc/plib_tc1.c ../src/config/main/peripheral/tc/plib_tc0.c ../src/config/main/peripheral/tcc/plib_tcc0.c ../src/config/main/stdio/xc32_monitor.c ../src/config/main/system/int/src/sys_int.c ../src/config/main/initialization.c ../src/config/main/interrupts.c ../src/config/main/exceptions.c ../src/config/main/startup_xc32.c ../src/config/main/libc_syscalls.c ../src/config/main/freertos_hooks.c ../src/config/main/tasks.c ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0/port.c ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/main.c ../src/i2c.c ../src/can.c ../src/vt_sense.c ../src/average.c ../src/current.c ../../../../../../../RECOVERY/startup.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_4.c

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
${OBJECTDIR}/_ext/995796491/drv_i2c.o: ../src/config/main/driver/i2c/src/drv_i2c.c  .generated_files/flags/main/fac6206bf33abc6c9d96f2f31290fba0f367791c .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/995796491" 
	@${RM} ${OBJECTDIR}/_ext/995796491/drv_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/995796491/drv_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/995796491/drv_i2c.o.d" -o ${OBJECTDIR}/_ext/995796491/drv_i2c.o ../src/config/main/driver/i2c/src/drv_i2c.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728049874/osal_freertos.o: ../src/config/main/osal/osal_freertos.c  .generated_files/flags/main/258c8bd99cb04b082d96d9eac7cf46eb3f39e1f0 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/1728049874" 
	@${RM} ${OBJECTDIR}/_ext/1728049874/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728049874/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728049874/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/1728049874/osal_freertos.o ../src/config/main/osal/osal_freertos.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897574800/plib_adc0.o: ../src/config/main/peripheral/adc/plib_adc0.c  .generated_files/flags/main/1dad0fc20251ed463fe58c7b1d0eb37a05ef7d90 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/897574800" 
	@${RM} ${OBJECTDIR}/_ext/897574800/plib_adc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/897574800/plib_adc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897574800/plib_adc0.o.d" -o ${OBJECTDIR}/_ext/897574800/plib_adc0.o ../src/config/main/peripheral/adc/plib_adc0.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897574800/plib_adc1.o: ../src/config/main/peripheral/adc/plib_adc1.c  .generated_files/flags/main/c2a9ac80d3717039075f7d048a69bda629f1227b .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/897574800" 
	@${RM} ${OBJECTDIR}/_ext/897574800/plib_adc1.o.d 
	@${RM} ${OBJECTDIR}/_ext/897574800/plib_adc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897574800/plib_adc1.o.d" -o ${OBJECTDIR}/_ext/897574800/plib_adc1.o ../src/config/main/peripheral/adc/plib_adc1.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897576640/plib_can0.o: ../src/config/main/peripheral/can/plib_can0.c  .generated_files/flags/main/d2545aa10ca0e78a4e5483dcb0fa1b90445f60ac .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/897576640" 
	@${RM} ${OBJECTDIR}/_ext/897576640/plib_can0.o.d 
	@${RM} ${OBJECTDIR}/_ext/897576640/plib_can0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897576640/plib_can0.o.d" -o ${OBJECTDIR}/_ext/897576640/plib_can0.o ../src/config/main/peripheral/can/plib_can0.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/716943618/plib_clock.o: ../src/config/main/peripheral/clock/plib_clock.c  .generated_files/flags/main/c7a111143055c34f47854da97b807b833947d554 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/716943618" 
	@${RM} ${OBJECTDIR}/_ext/716943618/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/716943618/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/716943618/plib_clock.o.d" -o ${OBJECTDIR}/_ext/716943618/plib_clock.o ../src/config/main/peripheral/clock/plib_clock.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897578166/plib_dsu.o: ../src/config/main/peripheral/dsu/plib_dsu.c  .generated_files/flags/main/2b698835925ebf7f4f5f51b612778162415248b4 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/897578166" 
	@${RM} ${OBJECTDIR}/_ext/897578166/plib_dsu.o.d 
	@${RM} ${OBJECTDIR}/_ext/897578166/plib_dsu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897578166/plib_dsu.o.d" -o ${OBJECTDIR}/_ext/897578166/plib_dsu.o ../src/config/main/peripheral/dsu/plib_dsu.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897578799/plib_eic.o: ../src/config/main/peripheral/eic/plib_eic.c  .generated_files/flags/main/b1e951253e2777c1b74d943fb8a03992c5439aa7 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/897578799" 
	@${RM} ${OBJECTDIR}/_ext/897578799/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/897578799/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897578799/plib_eic.o.d" -o ${OBJECTDIR}/_ext/897578799/plib_eic.o ../src/config/main/peripheral/eic/plib_eic.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/714794132/plib_evsys.o: ../src/config/main/peripheral/evsys/plib_evsys.c  .generated_files/flags/main/fce20e29fe4ad48ce9d1d4cc63d8b840d8819484 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/714794132" 
	@${RM} ${OBJECTDIR}/_ext/714794132/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/714794132/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/714794132/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/714794132/plib_evsys.o ../src/config/main/peripheral/evsys/plib_evsys.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2055419890/plib_nvic.o: ../src/config/main/peripheral/nvic/plib_nvic.c  .generated_files/flags/main/6abfff21b6453398f45129dc05622f29c911be6c .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/2055419890" 
	@${RM} ${OBJECTDIR}/_ext/2055419890/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2055419890/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2055419890/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/2055419890/plib_nvic.o ../src/config/main/peripheral/nvic/plib_nvic.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o: ../src/config/main/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/main/f90ac86c47d308cd59950080867c17bba02997f6 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/330986880" 
	@${RM} ${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o ../src/config/main/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2055473041/plib_port.o: ../src/config/main/peripheral/port/plib_port.c  .generated_files/flags/main/99ce67f903ce383a7ea3ff069e5c8333b0a9c979 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/2055473041" 
	@${RM} ${OBJECTDIR}/_ext/2055473041/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2055473041/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2055473041/plib_port.o.d" -o ${OBJECTDIR}/_ext/2055473041/plib_port.o ../src/config/main/peripheral/port/plib_port.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o: ../src/config/main/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c  .generated_files/flags/main/e97167f048fd4eb01ff02a0d3552aad3c5e724b9 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/1716667835" 
	@${RM} ${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o.d" -o ${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o ../src/config/main/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/444596607/plib_tc1.o: ../src/config/main/peripheral/tc/plib_tc1.c  .generated_files/flags/main/196604659024faaf3b2c69680481bb1a2f9bc6b1 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/444596607" 
	@${RM} ${OBJECTDIR}/_ext/444596607/plib_tc1.o.d 
	@${RM} ${OBJECTDIR}/_ext/444596607/plib_tc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/444596607/plib_tc1.o.d" -o ${OBJECTDIR}/_ext/444596607/plib_tc1.o ../src/config/main/peripheral/tc/plib_tc1.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/444596607/plib_tc0.o: ../src/config/main/peripheral/tc/plib_tc0.c  .generated_files/flags/main/fa7b6e5ee131a694022f8768904833cfe87cbbaf .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/444596607" 
	@${RM} ${OBJECTDIR}/_ext/444596607/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/444596607/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/444596607/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/444596607/plib_tc0.o ../src/config/main/peripheral/tc/plib_tc0.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897593028/plib_tcc0.o: ../src/config/main/peripheral/tcc/plib_tcc0.c  .generated_files/flags/main/a2d07a244031703f05144b6926024f9f9c5ac42a .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/897593028" 
	@${RM} ${OBJECTDIR}/_ext/897593028/plib_tcc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/897593028/plib_tcc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897593028/plib_tcc0.o.d" -o ${OBJECTDIR}/_ext/897593028/plib_tcc0.o ../src/config/main/peripheral/tcc/plib_tcc0.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2033665318/xc32_monitor.o: ../src/config/main/stdio/xc32_monitor.c  .generated_files/flags/main/8eaaa057193b1fe88702193e229abceb63d6c840 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/2033665318" 
	@${RM} ${OBJECTDIR}/_ext/2033665318/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/2033665318/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2033665318/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/2033665318/xc32_monitor.o ../src/config/main/stdio/xc32_monitor.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1575887385/sys_int.o: ../src/config/main/system/int/src/sys_int.c  .generated_files/flags/main/3131459f447384b8fa959e3e37e40556bb5e3e3a .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/1575887385" 
	@${RM} ${OBJECTDIR}/_ext/1575887385/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1575887385/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1575887385/sys_int.o.d" -o ${OBJECTDIR}/_ext/1575887385/sys_int.o ../src/config/main/system/int/src/sys_int.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/initialization.o: ../src/config/main/initialization.c  .generated_files/flags/main/5498190bc8fa4f64bd8015d4cc98636bb2046f54 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/initialization.o.d" -o ${OBJECTDIR}/_ext/779799956/initialization.o ../src/config/main/initialization.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/interrupts.o: ../src/config/main/interrupts.c  .generated_files/flags/main/9d5a8c753a1652753cd75141c0bf7f00b1d86343 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/interrupts.o.d" -o ${OBJECTDIR}/_ext/779799956/interrupts.o ../src/config/main/interrupts.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/exceptions.o: ../src/config/main/exceptions.c  .generated_files/flags/main/b0b02e200b62d412c44ce0f25ec77abcd71d65c3 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/exceptions.o.d" -o ${OBJECTDIR}/_ext/779799956/exceptions.o ../src/config/main/exceptions.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/startup_xc32.o: ../src/config/main/startup_xc32.c  .generated_files/flags/main/aad701a1907fe81eb16d1d611c851b7d23c28cff .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/779799956/startup_xc32.o ../src/config/main/startup_xc32.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/libc_syscalls.o: ../src/config/main/libc_syscalls.c  .generated_files/flags/main/f54991f5c5d1085d6e4ad3fd7baea7a7c8b38e1e .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/779799956/libc_syscalls.o ../src/config/main/libc_syscalls.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/freertos_hooks.o: ../src/config/main/freertos_hooks.c  .generated_files/flags/main/2021189499543e4f52f30cef92c923db70f2c122 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/779799956/freertos_hooks.o ../src/config/main/freertos_hooks.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/tasks.o: ../src/config/main/tasks.c  .generated_files/flags/main/e8e80e0a05212eeeac13012d19de1f1474c91857 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/tasks.o.d" -o ${OBJECTDIR}/_ext/779799956/tasks.o ../src/config/main/tasks.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1624415188/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0/port.c  .generated_files/flags/main/a572bc5fa7fbcc7615d34ada650d3c55eb9502a7 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/1624415188" 
	@${RM} ${OBJECTDIR}/_ext/1624415188/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1624415188/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1624415188/port.o.d" -o ${OBJECTDIR}/_ext/1624415188/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0/port.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/main/6c37f975993f4a87999f70743de5e69221e6a61 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/main/14c54a055d04aaf49ff4076497f9531571ebab0b .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/main/cdcd5713bad9fa2bf73e7d3baeaf7d68cd7d8190 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/main/2785f0897a75fb5b2ad9198fec562996afb1c570 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/main/a330410bc81ba4c16f98f74c39616acb6ff16d0b .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/main/c5821ce627a0970509601bf0956c1921bb9bbaa9 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/main/90f814346b153bac51b12b863ef149702f0696e2 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/main/e953d5f88e546d342cc607b3a37831d5dfa7a003 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/i2c.o: ../src/i2c.c  .generated_files/flags/main/aa8b2ff79112a2a6328bbf1a790660b47e8f198c .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/i2c.o.d" -o ${OBJECTDIR}/_ext/1360937237/i2c.o ../src/i2c.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/can.o: ../src/can.c  .generated_files/flags/main/2d548870ddc46b6139b91853ff1bff7351d8d97d .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/can.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/can.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/can.o.d" -o ${OBJECTDIR}/_ext/1360937237/can.o ../src/can.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/vt_sense.o: ../src/vt_sense.c  .generated_files/flags/main/15e8bbe128dc7ac38e4c01f406ae96a83673cc2c .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/vt_sense.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/vt_sense.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/vt_sense.o.d" -o ${OBJECTDIR}/_ext/1360937237/vt_sense.o ../src/vt_sense.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/average.o: ../src/average.c  .generated_files/flags/main/470a02cee636aa90aadbbd2cc684fe2e79294d7c .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/average.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/average.o.d" -o ${OBJECTDIR}/_ext/1360937237/average.o ../src/average.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/current.o: ../src/current.c  .generated_files/flags/main/95ca8ef65040ac099648cb4db6986c3daec9ee6b .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/current.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/current.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/current.o.d" -o ${OBJECTDIR}/_ext/1360937237/current.o ../src/current.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1278705188/startup.o: ../../../../../../../RECOVERY/startup.c  .generated_files/flags/main/901c3733c773ef3093acaf24b127084f72333a8c .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/1278705188" 
	@${RM} ${OBJECTDIR}/_ext/1278705188/startup.o.d 
	@${RM} ${OBJECTDIR}/_ext/1278705188/startup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1278705188/startup.o.d" -o ${OBJECTDIR}/_ext/1278705188/startup.o ../../../../../../../RECOVERY/startup.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1665200909/heap_4.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_4.c  .generated_files/flags/main/61b57e74a09d2236b7f19df7137294cd75228b98 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_4.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_4.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_4.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/995796491/drv_i2c.o: ../src/config/main/driver/i2c/src/drv_i2c.c  .generated_files/flags/main/4435897ecaf454eeef0b2ebe3385e57930a669f7 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/995796491" 
	@${RM} ${OBJECTDIR}/_ext/995796491/drv_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/995796491/drv_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/995796491/drv_i2c.o.d" -o ${OBJECTDIR}/_ext/995796491/drv_i2c.o ../src/config/main/driver/i2c/src/drv_i2c.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728049874/osal_freertos.o: ../src/config/main/osal/osal_freertos.c  .generated_files/flags/main/8de8469e147d544f730286b6f5532cb0e6034292 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/1728049874" 
	@${RM} ${OBJECTDIR}/_ext/1728049874/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728049874/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728049874/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/1728049874/osal_freertos.o ../src/config/main/osal/osal_freertos.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897574800/plib_adc0.o: ../src/config/main/peripheral/adc/plib_adc0.c  .generated_files/flags/main/6081ecaec4ff02da27344802a37c969979c9c7c5 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/897574800" 
	@${RM} ${OBJECTDIR}/_ext/897574800/plib_adc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/897574800/plib_adc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897574800/plib_adc0.o.d" -o ${OBJECTDIR}/_ext/897574800/plib_adc0.o ../src/config/main/peripheral/adc/plib_adc0.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897574800/plib_adc1.o: ../src/config/main/peripheral/adc/plib_adc1.c  .generated_files/flags/main/befde5c09fc5714b0e6a6b0dfd1b5dd090d3b5c5 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/897574800" 
	@${RM} ${OBJECTDIR}/_ext/897574800/plib_adc1.o.d 
	@${RM} ${OBJECTDIR}/_ext/897574800/plib_adc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897574800/plib_adc1.o.d" -o ${OBJECTDIR}/_ext/897574800/plib_adc1.o ../src/config/main/peripheral/adc/plib_adc1.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897576640/plib_can0.o: ../src/config/main/peripheral/can/plib_can0.c  .generated_files/flags/main/233b2a3f5555626da23f07dc6998de67f600e46a .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/897576640" 
	@${RM} ${OBJECTDIR}/_ext/897576640/plib_can0.o.d 
	@${RM} ${OBJECTDIR}/_ext/897576640/plib_can0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897576640/plib_can0.o.d" -o ${OBJECTDIR}/_ext/897576640/plib_can0.o ../src/config/main/peripheral/can/plib_can0.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/716943618/plib_clock.o: ../src/config/main/peripheral/clock/plib_clock.c  .generated_files/flags/main/83db8162a7bc5e1d5f4eac3dccad37b11f0ccc0e .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/716943618" 
	@${RM} ${OBJECTDIR}/_ext/716943618/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/716943618/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/716943618/plib_clock.o.d" -o ${OBJECTDIR}/_ext/716943618/plib_clock.o ../src/config/main/peripheral/clock/plib_clock.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897578166/plib_dsu.o: ../src/config/main/peripheral/dsu/plib_dsu.c  .generated_files/flags/main/4ac275f33d804817047c909660743c878fc23113 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/897578166" 
	@${RM} ${OBJECTDIR}/_ext/897578166/plib_dsu.o.d 
	@${RM} ${OBJECTDIR}/_ext/897578166/plib_dsu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897578166/plib_dsu.o.d" -o ${OBJECTDIR}/_ext/897578166/plib_dsu.o ../src/config/main/peripheral/dsu/plib_dsu.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897578799/plib_eic.o: ../src/config/main/peripheral/eic/plib_eic.c  .generated_files/flags/main/373519f16d206ba2a30a6e81a508dd2b4ac26241 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/897578799" 
	@${RM} ${OBJECTDIR}/_ext/897578799/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/897578799/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897578799/plib_eic.o.d" -o ${OBJECTDIR}/_ext/897578799/plib_eic.o ../src/config/main/peripheral/eic/plib_eic.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/714794132/plib_evsys.o: ../src/config/main/peripheral/evsys/plib_evsys.c  .generated_files/flags/main/816ed19f587ef70b1879cd3075a11b02ed21b291 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/714794132" 
	@${RM} ${OBJECTDIR}/_ext/714794132/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/714794132/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/714794132/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/714794132/plib_evsys.o ../src/config/main/peripheral/evsys/plib_evsys.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2055419890/plib_nvic.o: ../src/config/main/peripheral/nvic/plib_nvic.c  .generated_files/flags/main/c1da36d0c879637c6fd19017bb5fb29e2cae0d1e .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/2055419890" 
	@${RM} ${OBJECTDIR}/_ext/2055419890/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2055419890/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2055419890/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/2055419890/plib_nvic.o ../src/config/main/peripheral/nvic/plib_nvic.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o: ../src/config/main/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/main/c2e16c5d3736a790dca2f2f2a3832f348f75251 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/330986880" 
	@${RM} ${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o ../src/config/main/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2055473041/plib_port.o: ../src/config/main/peripheral/port/plib_port.c  .generated_files/flags/main/9521838e9e3069e364626397154a85441d14eb6c .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/2055473041" 
	@${RM} ${OBJECTDIR}/_ext/2055473041/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2055473041/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2055473041/plib_port.o.d" -o ${OBJECTDIR}/_ext/2055473041/plib_port.o ../src/config/main/peripheral/port/plib_port.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o: ../src/config/main/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c  .generated_files/flags/main/c9fc7276e730fae65e9dfe21d24162042e9abe62 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/1716667835" 
	@${RM} ${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o.d" -o ${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o ../src/config/main/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/444596607/plib_tc1.o: ../src/config/main/peripheral/tc/plib_tc1.c  .generated_files/flags/main/a27b1d235fd165cb07b637d2f521d4667a14ba15 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/444596607" 
	@${RM} ${OBJECTDIR}/_ext/444596607/plib_tc1.o.d 
	@${RM} ${OBJECTDIR}/_ext/444596607/plib_tc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/444596607/plib_tc1.o.d" -o ${OBJECTDIR}/_ext/444596607/plib_tc1.o ../src/config/main/peripheral/tc/plib_tc1.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/444596607/plib_tc0.o: ../src/config/main/peripheral/tc/plib_tc0.c  .generated_files/flags/main/b90350e6c8764a3e61d1c83727b018076f2805ef .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/444596607" 
	@${RM} ${OBJECTDIR}/_ext/444596607/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/444596607/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/444596607/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/444596607/plib_tc0.o ../src/config/main/peripheral/tc/plib_tc0.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897593028/plib_tcc0.o: ../src/config/main/peripheral/tcc/plib_tcc0.c  .generated_files/flags/main/b686a7942427180cd9fae460b9ac9ca56b3b81a5 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/897593028" 
	@${RM} ${OBJECTDIR}/_ext/897593028/plib_tcc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/897593028/plib_tcc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897593028/plib_tcc0.o.d" -o ${OBJECTDIR}/_ext/897593028/plib_tcc0.o ../src/config/main/peripheral/tcc/plib_tcc0.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2033665318/xc32_monitor.o: ../src/config/main/stdio/xc32_monitor.c  .generated_files/flags/main/9542d8bcc0704a736e1f2334585f3c9af01f917b .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/2033665318" 
	@${RM} ${OBJECTDIR}/_ext/2033665318/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/2033665318/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2033665318/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/2033665318/xc32_monitor.o ../src/config/main/stdio/xc32_monitor.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1575887385/sys_int.o: ../src/config/main/system/int/src/sys_int.c  .generated_files/flags/main/3d73f889e4bf8ee71c34808bfe3649e619355b5 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/1575887385" 
	@${RM} ${OBJECTDIR}/_ext/1575887385/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1575887385/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1575887385/sys_int.o.d" -o ${OBJECTDIR}/_ext/1575887385/sys_int.o ../src/config/main/system/int/src/sys_int.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/initialization.o: ../src/config/main/initialization.c  .generated_files/flags/main/8e83ce33c2764e917a0919ade8d94350bf1d1ea8 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/initialization.o.d" -o ${OBJECTDIR}/_ext/779799956/initialization.o ../src/config/main/initialization.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/interrupts.o: ../src/config/main/interrupts.c  .generated_files/flags/main/1a70f596674e801115e8527b095550834837ac05 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/interrupts.o.d" -o ${OBJECTDIR}/_ext/779799956/interrupts.o ../src/config/main/interrupts.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/exceptions.o: ../src/config/main/exceptions.c  .generated_files/flags/main/f0023e0b06af6196b48b2c986501906dbc011311 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/exceptions.o.d" -o ${OBJECTDIR}/_ext/779799956/exceptions.o ../src/config/main/exceptions.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/startup_xc32.o: ../src/config/main/startup_xc32.c  .generated_files/flags/main/342f1ecae11d2fd49fda95ebe0cc3bd358777df7 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/779799956/startup_xc32.o ../src/config/main/startup_xc32.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/libc_syscalls.o: ../src/config/main/libc_syscalls.c  .generated_files/flags/main/6808c10809043cb5f2b1cde98facb191ae959af5 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/779799956/libc_syscalls.o ../src/config/main/libc_syscalls.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/freertos_hooks.o: ../src/config/main/freertos_hooks.c  .generated_files/flags/main/146921d2134d7da953659da93a2f0693af928ea1 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/779799956/freertos_hooks.o ../src/config/main/freertos_hooks.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/tasks.o: ../src/config/main/tasks.c  .generated_files/flags/main/30e3db17710f61d922b46286d4cc0af3f1c3fcf6 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/tasks.o.d" -o ${OBJECTDIR}/_ext/779799956/tasks.o ../src/config/main/tasks.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1624415188/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0/port.c  .generated_files/flags/main/212e29973f9ebca9375c837b7b02f8833870c1fc .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/1624415188" 
	@${RM} ${OBJECTDIR}/_ext/1624415188/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1624415188/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1624415188/port.o.d" -o ${OBJECTDIR}/_ext/1624415188/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0/port.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/main/c650cc62b97b6ed6da096fea2d9dcdcd2949ea19 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/main/24c71d0f800612db6026cc76cc8673376f0bb1ab .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/main/2c87353ed9ba059bba39e51e5f8972b09efbee56 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/main/941f1935eee4917bab61b3a6d3f8b8913747c811 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/main/f6519d089bd6b85ff60ad7e95818e650ee4db143 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/main/54d73ce3c80417b32ddbcb25fef9412ed5ae832c .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/main/72f1fe0f701f85c09d3399951ac4870991813ac5 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/main/d020f240ee9c07a555e56e102a54b22d92e6f345 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/i2c.o: ../src/i2c.c  .generated_files/flags/main/fc331f04fa61afbf832069fbfc35743f2dc2be71 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/i2c.o.d" -o ${OBJECTDIR}/_ext/1360937237/i2c.o ../src/i2c.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/can.o: ../src/can.c  .generated_files/flags/main/4d5d2ec753a5dbdb8eccf44ebd466baf0d6eedfe .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/can.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/can.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/can.o.d" -o ${OBJECTDIR}/_ext/1360937237/can.o ../src/can.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/vt_sense.o: ../src/vt_sense.c  .generated_files/flags/main/edf95223b0df3e14baa8efb6eb5b3e4dc76c64de .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/vt_sense.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/vt_sense.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/vt_sense.o.d" -o ${OBJECTDIR}/_ext/1360937237/vt_sense.o ../src/vt_sense.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/average.o: ../src/average.c  .generated_files/flags/main/d98d1beaf7eee79b711462fe6d89095bff019ee3 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/average.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/average.o.d" -o ${OBJECTDIR}/_ext/1360937237/average.o ../src/average.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/current.o: ../src/current.c  .generated_files/flags/main/c4cab7e27467ad809e2728a12a625b5b48518e56 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/current.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/current.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/current.o.d" -o ${OBJECTDIR}/_ext/1360937237/current.o ../src/current.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1278705188/startup.o: ../../../../../../../RECOVERY/startup.c  .generated_files/flags/main/9900bda3ac9969b2423fff60242489843f7af9ac .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/1278705188" 
	@${RM} ${OBJECTDIR}/_ext/1278705188/startup.o.d 
	@${RM} ${OBJECTDIR}/_ext/1278705188/startup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1278705188/startup.o.d" -o ${OBJECTDIR}/_ext/1278705188/startup.o ../../../../../../../RECOVERY/startup.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1665200909/heap_4.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_4.c  .generated_files/flags/main/95dc101fd3a45615bf72dba2c910bb2b44561a49 .generated_files/flags/main/6590811ac567574daa77ab6400bb466c36d12bdf
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_4.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_4.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_4.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
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
