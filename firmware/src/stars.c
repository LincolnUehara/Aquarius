/*
 * ANINHA PROJECT - stars.c
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
#include <stdbool.h>
#include <stdlib.h>
#include <utils/random.h>
#include "../mcu/hw_pwm.h"
#include "../mcu/hw_timer.h"
#include "stars.h"

#define STARS_QTY  PWM_PIN_QTY

typedef struct star_t {

    uint8_t hwPin;
    bool upCount;
    int32_t actualBright;
    int32_t period;

} star_t;

static star_t star[STARS_QTY];

static bool mutexUsing = false;
static bool runSmoothly = true;
static int32_t maxBright = 100;
static int32_t maxFreq = 100;

static int32_t getRandomNumber(void);

//*****************************************************************************
//
//
//
//*****************************************************************************
void starsInit(void) {

    uint8_t aux = 0;

    pwm_init();
    timer0_init();

    /* */
    for (aux = 0; aux < STARS_QTY; aux++) {
        star[aux].actualBright = 0;
        star[aux].upCount = true;
        star[aux].period = getRandomNumber();
    }
}

void starsBlink(void) {

    uint8_t aux = 0;
    uint8_t percent = 0;

    /* Clear the timer interrupt. */
    timer0_clearInt();

    /* */
    if (mutexUsing == false) {
        mutexUsing = true;

        /* */
        if (runSmoothly == true) {
            for (aux = 0; aux < STARS_QTY; aux++) {

                if (star[aux].upCount == true) {

                    star[aux].actualBright += star[aux].period;

                    if (star[aux].actualBright > 99) {/* Parece que 100% não vai...*/
                        star[aux].upCount = false;
                        star[aux].actualBright -= star[aux].period;
                    }
                } else {

                    star[aux].actualBright -= star[aux].period;

                    if (star[aux].actualBright < 0) {
                        star[aux].upCount = true;
                        star[aux].period = getRandomNumber();
                        star[aux].actualBright += star[aux].period;
                    }
                }

                percent = (uint8_t) (star[aux].actualBright
                        * maxBright / 100);
                pwm_set(aux, percent);
            }
        }
        mutexUsing = false;
    }
}

void starsSet(bool smoothly, BRIGHTLEVEL bright, FREQLEVEL frequency) {

    if (mutexUsing == false) {

        mutexUsing = true;

        if (smoothly == true) {
            runSmoothly = true;
        } else {
            runSmoothly = false;
        }

        switch (bright) {
        case BRLVL_1:
            maxBright = 10;
            break;
        case BRLVL_2:
            maxBright = 40;
            break;
        case BRLVL_3:
            maxBright = 70;
            break;
        case BRLVL_4:
            maxBright = 100;
            break;
        default:
            maxBright = 100;
        }

        switch (frequency) {
        case FRLVL_1:
            maxFreq = 1;
            break;
        case FRLVL_2:
            maxFreq = 2;
            break;
        case FRLVL_3:
            maxFreq = 3;
            break;
        case FRLVL_4:
            maxFreq = 4;
            break;
        default:
            maxFreq = 1;
        }

        mutexUsing = false;
    }
}

static int32_t getRandomNumber(void) {

    static int32_t lastResult = 0;
    int32_t result = 50;
    do {
        result = (int32_t) rand();
        result &= 0b111;
    } while ((lastResult == result) || (result == 0));
    //result = (result * maxFreq / 100);
    lastResult = result;
    return (result * maxFreq);
}
