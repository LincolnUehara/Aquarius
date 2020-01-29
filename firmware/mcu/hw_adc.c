/*
 * ANINHA PROJECT - hw_adc.c
 *
 * @author : Everton Lincoln Uehara
 * @date   : 2019-03-10
 * @brief  : [DESCRIPTION]
 *
 ******************************************************************************
 * BSD 2-Clause License
 *
 * Copyright (c) 2018, Everton Lincoln Uehara
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * * Redistributions of source code must retain the above copyright notice, this
 *   list of conditions and the following disclaimer.
 *
 * * Redistributions in binary form must reproduce the above copyright notice,
 *   this list of conditions and the following disclaimer in the documentation
 *  and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *****************************************************************************
 */

//*****************************************************************************
//
// single_ended.c - Example demonstrating how to configure the ADC for
//                  single ended operation.
//
// Copyright (c) 2010-2013 Texas Instruments Incorporated.  All rights reserved.
// Software License Agreement
//
//   Redistribution and use in source and binary forms, with or without
//   modification, are permitted provided that the following conditions
//   are met:
//
//   Redistributions of source code must retain the above copyright
//   notice, this list of conditions and the following disclaimer.
//
//   Redistributions in binary form must reproduce the above copyright
//   notice, this list of conditions and the following disclaimer in the
//   documentation and/or other materials provided with the
//   distribution.
//
//   Neither the name of Texas Instruments Incorporated nor the names of
//   its contributors may be used to endorse or promote products derived
//   from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
// This is part of revision 2.0.1.11577 of the Tiva Firmware Development Package.
//
//*****************************************************************************
/*
 #include <stdint.h>
 #include <stdbool.h>
 #include <driverlib/timer.h>
 #include <driverlib/sysctl.h>
 #include <inc/hw_memmap.h>
 #include <driverlib/gpio.h>
 #include <driverlib/adc.h>

 #include <driverlib/uart.h>
 #include <utils/uartstdio.c>
 #include <driverlib/pin_map.h>
 */
//#include "inc/tm4c123gh6pm.h"

//*****************************************************************************
//
// single_ended.c - Example demonstrating how to configure the ADC for
//                  single ended operation.
//
// Copyright (c) 2010-2013 Texas Instruments Incorporated.  All rights reserved.
// Software License Agreement
//
//   Redistribution and use in source and binary forms, with or without
//   modification, are permitted provided that the following conditions
//   are met:
//
//   Redistributions of source code must retain the above copyright
//   notice, this list of conditions and the following disclaimer.
//
//   Redistributions in binary form must reproduce the above copyright
//   notice, this list of conditions and the following disclaimer in the
//   documentation and/or other materials provided with the
//   distribution.
//
//   Neither the name of Texas Instruments Incorporated nor the names of
//   its contributors may be used to endorse or promote products derived
//   from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
// This is part of revision 2.0.1.11577 of the Tiva Firmware Development Package.
//
//*****************************************************************************
//*****************************************************************************
//
//! <h1>Single Multi Reading</h1>
//!
//! This program use 12 channels provided by TM4C123GH6PM microcontroller in
//! single ended mode.
//!
//! The following UART signals are configured only for displaying console
//! messages for this example.  These are not required for operation of the
//! ADC.
//! - UART0 peripheral
//! - GPIO Port A peripheral (for UART0 pins)
//! - UART0RX - PA0
//! - UART0TX - PA1
//!
//! No interrupt handlers are used in this program.
//!
//! The following GPIO ports are used in this program:
//! - Port B
//! - Port D
//! - Port E
//! The relationship between AINx and physical pins are described at Macro DEFINE.
//
//*****************************************************************************
#include <stdint.h>
#include <stdbool.h>
#include <driverlib/timer.h>
#include <driverlib/sysctl.h>
#include <inc/hw_memmap.h>
#include <driverlib/gpio.h>
#include <driverlib/adc.h>
#include <driverlib/pin_map.h>
#include "hw_adc.h"

//*****************************************************************************
//
// Relationship between AINx pins and external (physical) pins.
// You can check it on page 801 of TM4C123GH6PM datasheet.
//
//*****************************************************************************

#define GPIO_INT_AIN0           0x00000008      // PE3
#define GPIO_INT_AIN1           0x00000004      // PE2
#define GPIO_INT_AIN2           0x00000002      // PE1
#define GPIO_INT_AIN3           0x00000001      // PE0
#define GPIO_INT_AIN4           0x00000008      // PD3
#define GPIO_INT_AIN5           0x00000004      // PD2
#define GPIO_INT_AIN6           0x00000002      // PD1
#define GPIO_INT_AIN7           0x00000001      // PD0
#define GPIO_INT_AIN8           0x00000020      // PE5
#define GPIO_INT_AIN9           0x00000010      // PE4
#define GPIO_INT_AIN10          0x00000010      // PB4
#define GPIO_INT_AIN11          0x00000020      // PB5

//
// This array is used for storing the data read from the ADC FIFO. It
// must be as large as the FIFO for the sequencer in use.  In this
// program uses sequence 0 (which has a FIFO depth of 8) and 1 (which
// has a FIFO depth of 4).  The array size is adjusted for each sample
// sequencer.
//
uint32_t pui32ADC0Value[2];

//*****************************************************************************
//
// Configure ADC0 and ADC1 for a single-ended inputs and a single sample.  Once the
// sample is ready, an interrupt flag will be set.  Using a polling method,
// the data will be read then displayed on the console via UART0.
//
//*****************************************************************************
void adc_init(void) {

    /* Enabling ADC0 peripheral. */
    SysCtlPeripheralEnable(SYSCTL_PERIPH_ADC0);

    /*
     * Enable the ports and select the analog ADC function for these pins.
     * Consult the data sheet to see which functions are allocated per pin.
     * -> Check the page 801 on TM4C123GH6PM datasheet
     */
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOE);
    GPIOPinTypeADC(GPIO_PORTE_BASE, GPIO_INT_AIN0 | GPIO_INT_AIN1);


    /*
     * Enable sample sequence 0 on ADC0 (with priority 0 - highest) and
     * sequence 1 on ADC1 (with priority 1 - less high) with a processor
     * signal trigger. For example, Sequence 0 will do 8 samples when
     * the processor sends a signal to start the conversion. Each ADC
     * module has 4 programmable sequences, sequence 0 to sequence 3.
     */
    ADCSequenceConfigure(ADC0_BASE, 0, ADC_TRIGGER_PROCESSOR, 0);

    /*
     * Configure the Steps on Sequences. For example, it will configure
     * the step 0 on sequence 0, and after it will be the step 1 on sequence 0.
     * Sample channel 0 (ADC_CTL_CH0) in single-ended mode (default) and
     * configure the interrupt flag (ADC_CTL_IE) to be set when the sample
     * is done. Tell the ADC logic that this is the last conversion on the
     * sequence (ADC_CTL_END). Sequence 0 has 8 programmable steps and sequence
     * 1 has 4 steps, in a total of 12 channels for measurement.
     */
    ADCSequenceStepConfigure(ADC0_BASE, 0, 0, ADC_CTL_CH0 | ADC_CTL_IE);
    ADCSequenceStepConfigure(ADC0_BASE, 0, 1,
            ADC_CTL_CH1 | ADC_CTL_IE | ADC_CTL_END);

    /* Since sample sequences is now configured, they must be enabled. */
    ADCSequenceEnable(ADC0_BASE, 0);

    /*
     * Clear the interrupt status flag.  This is done to make sure the
     * interrupt flag is cleared before we sample.
     */
    ADCIntClear(ADC0_BASE, 0);
}

void adc_trigConv(void) {

    ADCProcessorTrigger(ADC0_BASE, 0);
}

void adc_waitConv(void) {

    while (!ADCIntStatus(ADC0_BASE, 0, false)) {
    }
}

void adc_clearInt(void) {

    ADCIntClear(ADC0_BASE, 0);
}

uint32_t * adc_getData(void) {

    ADCSequenceDataGet(ADC0_BASE, 0, pui32ADC0Value);

    return &pui32ADC0Value[0];
}
