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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/main/peripheral/adc/plib_adc0.c ../src/config/main/peripheral/adc/plib_adc1.c ../src/config/main/peripheral/can/plib_can0.c ../src/config/main/peripheral/clock/plib_clock.c ../src/config/main/peripheral/dsu/plib_dsu.c ../src/config/main/peripheral/eic/plib_eic.c ../src/config/main/peripheral/evsys/plib_evsys.c ../src/config/main/peripheral/nvic/plib_nvic.c ../src/config/main/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/main/peripheral/port/plib_port.c ../src/config/main/stdio/xc32_monitor.c ../src/config/main/initialization.c ../src/config/main/interrupts.c ../src/config/main/exceptions.c ../src/config/main/startup_xc32.c ../src/config/main/libc_syscalls.c ../src/config/main/freertos_hooks.c ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0/port.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/main.c ../src/config/main/peripheral/tcc/plib_tcc0.c ../src/config/main/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c ../src/config/main/system/int/src/sys_int.c ../src/config/main/osal/osal_freertos.c ../src/app.c ../src/config/main/tasks.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/897574800/plib_adc0.o ${OBJECTDIR}/_ext/897574800/plib_adc1.o ${OBJECTDIR}/_ext/897576640/plib_can0.o ${OBJECTDIR}/_ext/716943618/plib_clock.o ${OBJECTDIR}/_ext/897578166/plib_dsu.o ${OBJECTDIR}/_ext/897578799/plib_eic.o ${OBJECTDIR}/_ext/714794132/plib_evsys.o ${OBJECTDIR}/_ext/2055419890/plib_nvic.o ${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o ${OBJECTDIR}/_ext/2055473041/plib_port.o ${OBJECTDIR}/_ext/2033665318/xc32_monitor.o ${OBJECTDIR}/_ext/779799956/initialization.o ${OBJECTDIR}/_ext/779799956/interrupts.o ${OBJECTDIR}/_ext/779799956/exceptions.o ${OBJECTDIR}/_ext/779799956/startup_xc32.o ${OBJECTDIR}/_ext/779799956/libc_syscalls.o ${OBJECTDIR}/_ext/779799956/freertos_hooks.o ${OBJECTDIR}/_ext/1624415188/port.o ${OBJECTDIR}/_ext/1665200909/heap_1.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/897593028/plib_tcc0.o ${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o ${OBJECTDIR}/_ext/1575887385/sys_int.o ${OBJECTDIR}/_ext/1728049874/osal_freertos.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/779799956/tasks.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/897574800/plib_adc0.o.d ${OBJECTDIR}/_ext/897574800/plib_adc1.o.d ${OBJECTDIR}/_ext/897576640/plib_can0.o.d ${OBJECTDIR}/_ext/716943618/plib_clock.o.d ${OBJECTDIR}/_ext/897578166/plib_dsu.o.d ${OBJECTDIR}/_ext/897578799/plib_eic.o.d ${OBJECTDIR}/_ext/714794132/plib_evsys.o.d ${OBJECTDIR}/_ext/2055419890/plib_nvic.o.d ${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/2055473041/plib_port.o.d ${OBJECTDIR}/_ext/2033665318/xc32_monitor.o.d ${OBJECTDIR}/_ext/779799956/initialization.o.d ${OBJECTDIR}/_ext/779799956/interrupts.o.d ${OBJECTDIR}/_ext/779799956/exceptions.o.d ${OBJECTDIR}/_ext/779799956/startup_xc32.o.d ${OBJECTDIR}/_ext/779799956/libc_syscalls.o.d ${OBJECTDIR}/_ext/779799956/freertos_hooks.o.d ${OBJECTDIR}/_ext/1624415188/port.o.d ${OBJECTDIR}/_ext/1665200909/heap_1.o.d ${OBJECTDIR}/_ext/404212886/croutine.o.d ${OBJECTDIR}/_ext/404212886/list.o.d ${OBJECTDIR}/_ext/404212886/queue.o.d ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d ${OBJECTDIR}/_ext/404212886/timers.o.d ${OBJECTDIR}/_ext/404212886/event_groups.o.d ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/897593028/plib_tcc0.o.d ${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o.d ${OBJECTDIR}/_ext/1575887385/sys_int.o.d ${OBJECTDIR}/_ext/1728049874/osal_freertos.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/779799956/tasks.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/897574800/plib_adc0.o ${OBJECTDIR}/_ext/897574800/plib_adc1.o ${OBJECTDIR}/_ext/897576640/plib_can0.o ${OBJECTDIR}/_ext/716943618/plib_clock.o ${OBJECTDIR}/_ext/897578166/plib_dsu.o ${OBJECTDIR}/_ext/897578799/plib_eic.o ${OBJECTDIR}/_ext/714794132/plib_evsys.o ${OBJECTDIR}/_ext/2055419890/plib_nvic.o ${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o ${OBJECTDIR}/_ext/2055473041/plib_port.o ${OBJECTDIR}/_ext/2033665318/xc32_monitor.o ${OBJECTDIR}/_ext/779799956/initialization.o ${OBJECTDIR}/_ext/779799956/interrupts.o ${OBJECTDIR}/_ext/779799956/exceptions.o ${OBJECTDIR}/_ext/779799956/startup_xc32.o ${OBJECTDIR}/_ext/779799956/libc_syscalls.o ${OBJECTDIR}/_ext/779799956/freertos_hooks.o ${OBJECTDIR}/_ext/1624415188/port.o ${OBJECTDIR}/_ext/1665200909/heap_1.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/897593028/plib_tcc0.o ${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o ${OBJECTDIR}/_ext/1575887385/sys_int.o ${OBJECTDIR}/_ext/1728049874/osal_freertos.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/779799956/tasks.o

# Source Files
SOURCEFILES=../src/config/main/peripheral/adc/plib_adc0.c ../src/config/main/peripheral/adc/plib_adc1.c ../src/config/main/peripheral/can/plib_can0.c ../src/config/main/peripheral/clock/plib_clock.c ../src/config/main/peripheral/dsu/plib_dsu.c ../src/config/main/peripheral/eic/plib_eic.c ../src/config/main/peripheral/evsys/plib_evsys.c ../src/config/main/peripheral/nvic/plib_nvic.c ../src/config/main/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/main/peripheral/port/plib_port.c ../src/config/main/stdio/xc32_monitor.c ../src/config/main/initialization.c ../src/config/main/interrupts.c ../src/config/main/exceptions.c ../src/config/main/startup_xc32.c ../src/config/main/libc_syscalls.c ../src/config/main/freertos_hooks.c ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0/port.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/main.c ../src/config/main/peripheral/tcc/plib_tcc0.c ../src/config/main/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c ../src/config/main/system/int/src/sys_int.c ../src/config/main/osal/osal_freertos.c ../src/app.c ../src/config/main/tasks.c

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
${OBJECTDIR}/_ext/897574800/plib_adc0.o: ../src/config/main/peripheral/adc/plib_adc0.c  .generated_files/flags/main/4a5915f8e38ead70b32190acb3a071e991b5d132 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/897574800" 
	@${RM} ${OBJECTDIR}/_ext/897574800/plib_adc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/897574800/plib_adc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897574800/plib_adc0.o.d" -o ${OBJECTDIR}/_ext/897574800/plib_adc0.o ../src/config/main/peripheral/adc/plib_adc0.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897574800/plib_adc1.o: ../src/config/main/peripheral/adc/plib_adc1.c  .generated_files/flags/main/6aa8493510ff931fd2cdb3d8b868107b1445e5d6 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/897574800" 
	@${RM} ${OBJECTDIR}/_ext/897574800/plib_adc1.o.d 
	@${RM} ${OBJECTDIR}/_ext/897574800/plib_adc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897574800/plib_adc1.o.d" -o ${OBJECTDIR}/_ext/897574800/plib_adc1.o ../src/config/main/peripheral/adc/plib_adc1.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897576640/plib_can0.o: ../src/config/main/peripheral/can/plib_can0.c  .generated_files/flags/main/de759fcda49a6a44c2bb3a82cfeb38b041237588 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/897576640" 
	@${RM} ${OBJECTDIR}/_ext/897576640/plib_can0.o.d 
	@${RM} ${OBJECTDIR}/_ext/897576640/plib_can0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897576640/plib_can0.o.d" -o ${OBJECTDIR}/_ext/897576640/plib_can0.o ../src/config/main/peripheral/can/plib_can0.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/716943618/plib_clock.o: ../src/config/main/peripheral/clock/plib_clock.c  .generated_files/flags/main/31b8869981e73684fcb3ad9b624a304882a4d00d .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/716943618" 
	@${RM} ${OBJECTDIR}/_ext/716943618/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/716943618/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/716943618/plib_clock.o.d" -o ${OBJECTDIR}/_ext/716943618/plib_clock.o ../src/config/main/peripheral/clock/plib_clock.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897578166/plib_dsu.o: ../src/config/main/peripheral/dsu/plib_dsu.c  .generated_files/flags/main/c8bebcb3195de7917c0cd2672af2708b56861497 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/897578166" 
	@${RM} ${OBJECTDIR}/_ext/897578166/plib_dsu.o.d 
	@${RM} ${OBJECTDIR}/_ext/897578166/plib_dsu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897578166/plib_dsu.o.d" -o ${OBJECTDIR}/_ext/897578166/plib_dsu.o ../src/config/main/peripheral/dsu/plib_dsu.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897578799/plib_eic.o: ../src/config/main/peripheral/eic/plib_eic.c  .generated_files/flags/main/112a2825bc6514b34ee23c6547374d21168ceab3 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/897578799" 
	@${RM} ${OBJECTDIR}/_ext/897578799/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/897578799/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897578799/plib_eic.o.d" -o ${OBJECTDIR}/_ext/897578799/plib_eic.o ../src/config/main/peripheral/eic/plib_eic.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/714794132/plib_evsys.o: ../src/config/main/peripheral/evsys/plib_evsys.c  .generated_files/flags/main/873b3aaa48c26e70512e8f8cca1672b5581de6fd .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/714794132" 
	@${RM} ${OBJECTDIR}/_ext/714794132/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/714794132/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/714794132/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/714794132/plib_evsys.o ../src/config/main/peripheral/evsys/plib_evsys.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2055419890/plib_nvic.o: ../src/config/main/peripheral/nvic/plib_nvic.c  .generated_files/flags/main/cd98268bfbb778378d093777f5a5a2b556da05fa .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/2055419890" 
	@${RM} ${OBJECTDIR}/_ext/2055419890/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2055419890/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2055419890/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/2055419890/plib_nvic.o ../src/config/main/peripheral/nvic/plib_nvic.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o: ../src/config/main/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/main/a106c5ad75a0a94011671e967d9ec4c783932741 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/330986880" 
	@${RM} ${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o ../src/config/main/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2055473041/plib_port.o: ../src/config/main/peripheral/port/plib_port.c  .generated_files/flags/main/832b1369fe2df8ee1b41a82dee73b96ea0c63cb9 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/2055473041" 
	@${RM} ${OBJECTDIR}/_ext/2055473041/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2055473041/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2055473041/plib_port.o.d" -o ${OBJECTDIR}/_ext/2055473041/plib_port.o ../src/config/main/peripheral/port/plib_port.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2033665318/xc32_monitor.o: ../src/config/main/stdio/xc32_monitor.c  .generated_files/flags/main/df9e8a8c2dedef108a95075dea92f578a0a0e64 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/2033665318" 
	@${RM} ${OBJECTDIR}/_ext/2033665318/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/2033665318/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2033665318/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/2033665318/xc32_monitor.o ../src/config/main/stdio/xc32_monitor.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/initialization.o: ../src/config/main/initialization.c  .generated_files/flags/main/5badd06b23389240e1a98a4a63b4b8c5af609f5f .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/initialization.o.d" -o ${OBJECTDIR}/_ext/779799956/initialization.o ../src/config/main/initialization.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/interrupts.o: ../src/config/main/interrupts.c  .generated_files/flags/main/7c7d3327513b38e90a75224e3c62bfff708ff3b2 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/interrupts.o.d" -o ${OBJECTDIR}/_ext/779799956/interrupts.o ../src/config/main/interrupts.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/exceptions.o: ../src/config/main/exceptions.c  .generated_files/flags/main/eb0ba94101613998aca3a958f907efdb593ecd22 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/exceptions.o.d" -o ${OBJECTDIR}/_ext/779799956/exceptions.o ../src/config/main/exceptions.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/startup_xc32.o: ../src/config/main/startup_xc32.c  .generated_files/flags/main/8ed90cb536ff89e342201c0e66622d521a466fdb .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/779799956/startup_xc32.o ../src/config/main/startup_xc32.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/libc_syscalls.o: ../src/config/main/libc_syscalls.c  .generated_files/flags/main/dd3da50468ca754ae20957a5d29857fe709d8e2c .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/779799956/libc_syscalls.o ../src/config/main/libc_syscalls.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/freertos_hooks.o: ../src/config/main/freertos_hooks.c  .generated_files/flags/main/bca5b0437baf30a82ffcd00af63abc09391303cc .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/779799956/freertos_hooks.o ../src/config/main/freertos_hooks.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1624415188/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0/port.c  .generated_files/flags/main/6e6a4ed7a04692bc2faa653ae0740d045bd128ae .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1624415188" 
	@${RM} ${OBJECTDIR}/_ext/1624415188/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1624415188/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1624415188/port.o.d" -o ${OBJECTDIR}/_ext/1624415188/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0/port.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1665200909/heap_1.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  .generated_files/flags/main/bf970dea08892f0e2292b23dbbb0602dbfa229ab .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_1.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_1.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/main/bf5caf2ab26b475495202bbd7c953fe1096c4448 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/main/4021216fc716e9fb87df68a9b8ebe511c5b22cd8 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/main/be1cf72a54dd6a96cab98972ab60e839b55c45f9 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/main/60164c3f3649e0f3957c9042600ae8ddb93132de .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/main/5be02c04cd5b158b1f16d56bd83eecb0dd722ddf .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/main/9d1e31a3cfe882533bec98714abc0f5bb946fc7 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/main/841262239014eca21cd934d2b98ccdcd5923a7d0 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/main/31c9a2563c99106a3ab579d4225e176ff41842ec .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897593028/plib_tcc0.o: ../src/config/main/peripheral/tcc/plib_tcc0.c  .generated_files/flags/main/a5f0f427e91eef28e8a31c1baa93ab7c5225ed23 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/897593028" 
	@${RM} ${OBJECTDIR}/_ext/897593028/plib_tcc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/897593028/plib_tcc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897593028/plib_tcc0.o.d" -o ${OBJECTDIR}/_ext/897593028/plib_tcc0.o ../src/config/main/peripheral/tcc/plib_tcc0.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o: ../src/config/main/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c  .generated_files/flags/main/56e146553eefaadda3464150beabbc28fdc627ac .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1716667835" 
	@${RM} ${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o.d" -o ${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o ../src/config/main/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1575887385/sys_int.o: ../src/config/main/system/int/src/sys_int.c  .generated_files/flags/main/cdb8de2df6a3a621c7d35caa3eede256f3b72abc .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1575887385" 
	@${RM} ${OBJECTDIR}/_ext/1575887385/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1575887385/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1575887385/sys_int.o.d" -o ${OBJECTDIR}/_ext/1575887385/sys_int.o ../src/config/main/system/int/src/sys_int.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728049874/osal_freertos.o: ../src/config/main/osal/osal_freertos.c  .generated_files/flags/main/481f8a95017d2543b3209f50a36248b114f741ed .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1728049874" 
	@${RM} ${OBJECTDIR}/_ext/1728049874/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728049874/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728049874/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/1728049874/osal_freertos.o ../src/config/main/osal/osal_freertos.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/main/8aad17989a286c21f359c30de206ca3355f9261e .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/tasks.o: ../src/config/main/tasks.c  .generated_files/flags/main/4790c56a4d4cb4f3861edec0ca99c816f5b9bf82 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/tasks.o.d" -o ${OBJECTDIR}/_ext/779799956/tasks.o ../src/config/main/tasks.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/897574800/plib_adc0.o: ../src/config/main/peripheral/adc/plib_adc0.c  .generated_files/flags/main/50122091a4816823af52cc47c3388b724720f072 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/897574800" 
	@${RM} ${OBJECTDIR}/_ext/897574800/plib_adc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/897574800/plib_adc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897574800/plib_adc0.o.d" -o ${OBJECTDIR}/_ext/897574800/plib_adc0.o ../src/config/main/peripheral/adc/plib_adc0.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897574800/plib_adc1.o: ../src/config/main/peripheral/adc/plib_adc1.c  .generated_files/flags/main/15262b9b59424779b4677fc05617ac1612ddf09e .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/897574800" 
	@${RM} ${OBJECTDIR}/_ext/897574800/plib_adc1.o.d 
	@${RM} ${OBJECTDIR}/_ext/897574800/plib_adc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897574800/plib_adc1.o.d" -o ${OBJECTDIR}/_ext/897574800/plib_adc1.o ../src/config/main/peripheral/adc/plib_adc1.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897576640/plib_can0.o: ../src/config/main/peripheral/can/plib_can0.c  .generated_files/flags/main/27d27d6b8e066889c48c58402abb816852d8cfe7 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/897576640" 
	@${RM} ${OBJECTDIR}/_ext/897576640/plib_can0.o.d 
	@${RM} ${OBJECTDIR}/_ext/897576640/plib_can0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897576640/plib_can0.o.d" -o ${OBJECTDIR}/_ext/897576640/plib_can0.o ../src/config/main/peripheral/can/plib_can0.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/716943618/plib_clock.o: ../src/config/main/peripheral/clock/plib_clock.c  .generated_files/flags/main/aab040c7de7710a1dc76881016776a028f84f2f5 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/716943618" 
	@${RM} ${OBJECTDIR}/_ext/716943618/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/716943618/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/716943618/plib_clock.o.d" -o ${OBJECTDIR}/_ext/716943618/plib_clock.o ../src/config/main/peripheral/clock/plib_clock.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897578166/plib_dsu.o: ../src/config/main/peripheral/dsu/plib_dsu.c  .generated_files/flags/main/7c95b0554d650eb3a63eb533c197cc4801b2b321 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/897578166" 
	@${RM} ${OBJECTDIR}/_ext/897578166/plib_dsu.o.d 
	@${RM} ${OBJECTDIR}/_ext/897578166/plib_dsu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897578166/plib_dsu.o.d" -o ${OBJECTDIR}/_ext/897578166/plib_dsu.o ../src/config/main/peripheral/dsu/plib_dsu.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897578799/plib_eic.o: ../src/config/main/peripheral/eic/plib_eic.c  .generated_files/flags/main/94579e36e0093542b6646ab62e386d92fcd15491 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/897578799" 
	@${RM} ${OBJECTDIR}/_ext/897578799/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/897578799/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897578799/plib_eic.o.d" -o ${OBJECTDIR}/_ext/897578799/plib_eic.o ../src/config/main/peripheral/eic/plib_eic.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/714794132/plib_evsys.o: ../src/config/main/peripheral/evsys/plib_evsys.c  .generated_files/flags/main/88f1f12abb957ad5ef31ff20e02eea7b720ac6c9 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/714794132" 
	@${RM} ${OBJECTDIR}/_ext/714794132/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/714794132/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/714794132/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/714794132/plib_evsys.o ../src/config/main/peripheral/evsys/plib_evsys.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2055419890/plib_nvic.o: ../src/config/main/peripheral/nvic/plib_nvic.c  .generated_files/flags/main/4af7fa13baa55bfe68ce15c3d68d625bf21eacaa .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/2055419890" 
	@${RM} ${OBJECTDIR}/_ext/2055419890/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2055419890/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2055419890/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/2055419890/plib_nvic.o ../src/config/main/peripheral/nvic/plib_nvic.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o: ../src/config/main/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/main/4104c15da65ed9208aae9c8270011a0236e1a88 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/330986880" 
	@${RM} ${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/330986880/plib_nvmctrl.o ../src/config/main/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2055473041/plib_port.o: ../src/config/main/peripheral/port/plib_port.c  .generated_files/flags/main/7260e8a0040e6aece6e07c2cbf32ce0162f08c2a .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/2055473041" 
	@${RM} ${OBJECTDIR}/_ext/2055473041/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2055473041/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2055473041/plib_port.o.d" -o ${OBJECTDIR}/_ext/2055473041/plib_port.o ../src/config/main/peripheral/port/plib_port.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2033665318/xc32_monitor.o: ../src/config/main/stdio/xc32_monitor.c  .generated_files/flags/main/9194e1580069f9d088ea59c52392fd932dfff0d2 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/2033665318" 
	@${RM} ${OBJECTDIR}/_ext/2033665318/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/2033665318/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2033665318/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/2033665318/xc32_monitor.o ../src/config/main/stdio/xc32_monitor.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/initialization.o: ../src/config/main/initialization.c  .generated_files/flags/main/8707c239dee78ebef7a44b2e8e3a31eca2bcca7f .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/initialization.o.d" -o ${OBJECTDIR}/_ext/779799956/initialization.o ../src/config/main/initialization.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/interrupts.o: ../src/config/main/interrupts.c  .generated_files/flags/main/aa65868f1d1530082d989e589d1d3e0c4b75ac88 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/interrupts.o.d" -o ${OBJECTDIR}/_ext/779799956/interrupts.o ../src/config/main/interrupts.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/exceptions.o: ../src/config/main/exceptions.c  .generated_files/flags/main/c5e47ebaf89fdea7aa77972749ea8c0c963dd1be .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/exceptions.o.d" -o ${OBJECTDIR}/_ext/779799956/exceptions.o ../src/config/main/exceptions.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/startup_xc32.o: ../src/config/main/startup_xc32.c  .generated_files/flags/main/707078382b19d31bd41c9cc0640833fa2b37a093 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/779799956/startup_xc32.o ../src/config/main/startup_xc32.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/libc_syscalls.o: ../src/config/main/libc_syscalls.c  .generated_files/flags/main/4deb90983095e5bc8730c343dd1d099ffc798b3f .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/779799956/libc_syscalls.o ../src/config/main/libc_syscalls.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/freertos_hooks.o: ../src/config/main/freertos_hooks.c  .generated_files/flags/main/c2382e8c63cf9891068351e0167d1d39f319d46c .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/779799956/freertos_hooks.o ../src/config/main/freertos_hooks.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1624415188/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0/port.c  .generated_files/flags/main/4a8f3f8d1d7c10937b623647816f017bbce9cb5a .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1624415188" 
	@${RM} ${OBJECTDIR}/_ext/1624415188/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1624415188/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1624415188/port.o.d" -o ${OBJECTDIR}/_ext/1624415188/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0/port.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1665200909/heap_1.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  .generated_files/flags/main/16d2c9570a0244fdfadeb616db10bda8ba285e3f .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_1.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_1.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/main/5abe0f9f42d9626af5e3afb77d202dbc2600d119 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/main/e9d8b9133a0cf7b1569464f441fa1479dfe369b .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/main/c729c88a3db5af88c7c1fa1e06c3e284e2c7a592 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/main/5f2397dc182a25aac81d6fc5e31996a942d2aa10 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/main/3e2943ffc0264babfe118460d1f210c05e3e5f3d .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/main/314f46781b461de4a0817f545ee14e4fa5536133 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/main/2edda1d780bf71a1c81c350532c97195bba9a8a6 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/main/93464dd50e50ad8e802e8b5f1b13ca253afbd48b .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/897593028/plib_tcc0.o: ../src/config/main/peripheral/tcc/plib_tcc0.c  .generated_files/flags/main/df35a091819d66e7c14bb14969052d08e77ae8d6 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/897593028" 
	@${RM} ${OBJECTDIR}/_ext/897593028/plib_tcc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/897593028/plib_tcc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897593028/plib_tcc0.o.d" -o ${OBJECTDIR}/_ext/897593028/plib_tcc0.o ../src/config/main/peripheral/tcc/plib_tcc0.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o: ../src/config/main/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c  .generated_files/flags/main/1d2ca51e59dcf10a7977e6ca13511cdfa2e76b46 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1716667835" 
	@${RM} ${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o.d" -o ${OBJECTDIR}/_ext/1716667835/plib_sercom3_i2c_master.o ../src/config/main/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1575887385/sys_int.o: ../src/config/main/system/int/src/sys_int.c  .generated_files/flags/main/6f3cde5e225f420b965ba2331d4b1737127f8be0 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1575887385" 
	@${RM} ${OBJECTDIR}/_ext/1575887385/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1575887385/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1575887385/sys_int.o.d" -o ${OBJECTDIR}/_ext/1575887385/sys_int.o ../src/config/main/system/int/src/sys_int.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728049874/osal_freertos.o: ../src/config/main/osal/osal_freertos.c  .generated_files/flags/main/40297c66600dc9ebf0f272e0fff4ac6d34cf80b0 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1728049874" 
	@${RM} ${OBJECTDIR}/_ext/1728049874/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728049874/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728049874/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/1728049874/osal_freertos.o ../src/config/main/osal/osal_freertos.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/main/dbf86b5e021f03d705bcb21450ba0fceb7a55e36 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/779799956/tasks.o: ../src/config/main/tasks.c  .generated_files/flags/main/a411a70cef05eb7dffc8bfa116c2dad03f567433 .generated_files/flags/main/81c20d57a1e7a6ecb6db30d49dfd629ef63a3908
	@${MKDIR} "${OBJECTDIR}/_ext/779799956" 
	@${RM} ${OBJECTDIR}/_ext/779799956/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/779799956/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/main" -I"../src/packs/ATSAMC21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/779799956/tasks.o.d" -o ${OBJECTDIR}/_ext/779799956/tasks.o ../src/config/main/tasks.c    -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g  -D__MPLAB_DEBUGGER_SIMULATOR=1 -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/main.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_main=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--defsym=_min_heap_size=1024,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samc21"
	
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
