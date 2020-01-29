/*
 * ANINHA PROJECT - inputs.c
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

#include <stdint.h>
#include "../mcu/hw_adc.h"
#include "inputs.h"

static uint32_t analogValue1 = 0;
static uint32_t analogValue2 = 0;

void inputsInit(void) {

    adc_init();
}

void inputsStartRead(void) {

    uint32_t * dataPtr;

    /* Trigger the ADC conversion. */
    adc_trigConv();

    /* Wait for conversion to be completed. */
    adc_waitConv();

    /* Clear the ADC interrupt flag. */
    adc_clearInt();

    /* Return ADC Value. */
    dataPtr = adc_getData();
    analogValue1 = dataPtr[0];
    analogValue2 = dataPtr[1];
}

uint32_t inputsGetValue(uint8_t input) {

    if (input == INPUT_1) {
        return analogValue1;
    } else if (input == INPUT_2) {
        return analogValue2;
    } else {
        return 0;
    }
}
