/*
 * ANINHA PROJECT - main.c
 *
 * @author : Everton Lincoln Uehara
 * @date   : 2019-01-22
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

#include <stdbool.h>
#include <stdint.h>
#include "../mcu/hw_clock.h"
#include "stars.h"
#include "inputs.h"

static uint32_t pot1Level = 0;
static uint8_t actualBright = 0;
static uint8_t lastBright = 0;
static uint32_t pot2Level = 0;
static uint8_t actualFreq = 0;
static uint8_t lastFreq = 0;
static bool firstRead = true;

int main(void) {

    /* First */
    clock_init();

    /*  */
    starsInit();
    inputsInit();

    while (1) {

        /* */
        inputsStartRead();

        pot1Level = inputsGetValue(INPUT_1);
        pot2Level = inputsGetValue(INPUT_2);

        /*  */
        if (pot1Level <= INLVL_1) {
            actualBright = BRLVL_1;
        } else if ((pot1Level > INLVL_1) && (pot1Level <= INHYS_1)) {
            if (firstRead == true) {
                actualBright = BRLVL_1;
            } else {
                actualBright = lastBright;
            }
        } else if ((pot1Level > INHYS_1) && (pot1Level <= INLVL_2)) {
            actualBright = BRLVL_2;
        } else if ((pot1Level > INLVL_2) && (pot1Level <= INHYS_2)) {
            if (firstRead == true) {
                actualBright = BRLVL_2;
            } else {
                actualBright = lastBright;
            }
        } else if ((pot1Level > INHYS_2) && (pot1Level <= INLVL_3)) {
            actualBright = BRLVL_3;
        } else if ((pot1Level > INLVL_3) && (pot1Level <= INHYS_3)) {
            if (firstRead == true) {
                actualBright = BRLVL_3;
            } else {
                actualBright = lastBright;
            }
        } else if ((pot1Level > INHYS_3) && (pot1Level <= INLVL_4)) {
            actualBright = BRLVL_4;
        }

        /*  */
        if (pot2Level <= INLVL_1) {
            actualFreq = FRLVL_1;
        } else if ((pot2Level > INLVL_1) && (pot2Level <= INHYS_1)) {
            if (firstRead == true) {
                actualFreq = FRLVL_1;
            } else {
                actualFreq = lastFreq;
            }
        } else if ((pot2Level > INHYS_1) && (pot2Level <= INLVL_2)) {
            actualFreq = FRLVL_2;
        } else if ((pot2Level > INLVL_2) && (pot2Level <= INHYS_2)) {
            if (firstRead == true) {
                actualFreq = FRLVL_2;
            } else {
                actualFreq = lastFreq;
            }
        } else if ((pot2Level > INHYS_2) && (pot2Level <= INLVL_3)) {
            actualFreq = FRLVL_3;
        } else if ((pot2Level > INLVL_3) && (pot2Level <= INHYS_3)) {
            if (firstRead == true) {
                actualFreq = FRLVL_3;
            } else {
                actualFreq = lastFreq;
            }
        } else if ((pot2Level > INHYS_3) && (pot2Level <= INLVL_4)) {
            actualFreq = FRLVL_4;
        }

        lastBright = actualBright;
        lastFreq = actualFreq;
        firstRead = false;
        starsSet(true, actualBright, actualFreq);
    }
}
