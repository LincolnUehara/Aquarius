/*
 * ANINHA PROJECT - inputs.h
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

#ifndef SRC_INPUTS_H_
#define SRC_INPUTS_H_

#include "../mcu/hw_adc.h"

#define INPUT_HYSTERESIS 100

typedef enum INPUTNUM {
    INPUT_1 = 0, INPUT_2
} INPUTNUM;

typedef enum INPUTLEVEL {
    INLVL_1 = (ADC_MAX_VALUE / 4) - (INPUT_HYSTERESIS / 2),
    INHYS_1 = (ADC_MAX_VALUE / 4) + (INPUT_HYSTERESIS / 2),
    INLVL_2 = (ADC_MAX_VALUE / 2) - (INPUT_HYSTERESIS / 2),
    INHYS_2 = (ADC_MAX_VALUE / 2) + (INPUT_HYSTERESIS / 2),
    INLVL_3 = (ADC_MAX_VALUE * 3 / 4) - (INPUT_HYSTERESIS / 2),
    INHYS_3 = (ADC_MAX_VALUE * 3 / 4) + (INPUT_HYSTERESIS / 2),
    INLVL_4 = ADC_MAX_VALUE
} INPUTLEVEL;

extern void inputsInit(void);
extern void inputsStartRead(void);
extern uint32_t inputsGetValue(INPUTNUM input);

#endif /* SRC_INPUTS_H_ */
