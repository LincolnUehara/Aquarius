/*
 * ANINHA PROJECT - hw_pwm.c
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

#include <stdbool.h>
#include <stdint.h>
#include "driverlib/gpio.h"
#include "driverlib/sysctl.h"
#include "driverlib/pin_map.h"
#include "driverlib/pwm.h"
#include "inc/hw_memmap.h"
#include "hw_pwm.h"

typedef struct pwm_pin_t {

    uint32_t pin;
    uint32_t base;
    uint32_t output;
    uint32_t generator;

} pwm_pin_t;

static pwm_pin_t pwm_pin[PWM_PIN_QTY];

void pwm_init(void) {

    uint8_t aux = 0;

    /* Config for PB6 */
    pwm_pin[0].pin = GPIO_PB6_M0PWM0;
    pwm_pin[0].base = PWM0_BASE;
    pwm_pin[0].output = PWM_OUT_0;
    pwm_pin[0].generator = PWM_GEN_0;

    /* Config for PB7 */
    pwm_pin[1].pin = GPIO_PB7_M0PWM1;
    pwm_pin[1].base = PWM0_BASE;
    pwm_pin[1].output = PWM_OUT_1;
    pwm_pin[1].generator = PWM_GEN_0;

    /* Config for PB4 */
    pwm_pin[2].pin = GPIO_PB4_M0PWM2;
    pwm_pin[2].base = PWM0_BASE;
    pwm_pin[2].output = PWM_OUT_2;
    pwm_pin[2].generator = PWM_GEN_1;

    /* Config for PB5 */
    pwm_pin[3].pin = GPIO_PB5_M0PWM3;
    pwm_pin[3].base = PWM0_BASE;
    pwm_pin[3].output = PWM_OUT_3;
    pwm_pin[3].generator = PWM_GEN_1;

    /* Config for PE4 */
    pwm_pin[4].pin = GPIO_PE4_M0PWM4;
    pwm_pin[4].base = PWM0_BASE;
    pwm_pin[4].output = PWM_OUT_4;
    pwm_pin[4].generator = PWM_GEN_2;

    /* Config for PE5 */
    pwm_pin[5].pin = GPIO_PE5_M0PWM5;
    pwm_pin[5].base = PWM0_BASE;
    pwm_pin[5].output = PWM_OUT_5;
    pwm_pin[5].generator = PWM_GEN_2;

    /* Config for PC4 */
    pwm_pin[6].pin = GPIO_PC4_M0PWM6;
    pwm_pin[6].base = PWM0_BASE;
    pwm_pin[6].output = PWM_OUT_6;
    pwm_pin[6].generator = PWM_GEN_3;

    /* Config for PC5 */
    pwm_pin[7].pin = GPIO_PC5_M0PWM7;
    pwm_pin[7].base = PWM0_BASE;
    pwm_pin[7].output = PWM_OUT_7;
    pwm_pin[7].generator = PWM_GEN_3;

    /* Config for PD0 */
    pwm_pin[8].pin = GPIO_PD0_M1PWM0;
    pwm_pin[8].base = PWM1_BASE;
    pwm_pin[8].output = PWM_OUT_0;
    pwm_pin[8].generator = PWM_GEN_0;

    /* Config for PD1 */
    pwm_pin[9].pin = GPIO_PD1_M1PWM1;
    pwm_pin[9].base = PWM1_BASE;
    pwm_pin[9].output = PWM_OUT_1;
    pwm_pin[9].generator = PWM_GEN_0;

    /* Config for PA6 */
    pwm_pin[10].pin = GPIO_PA6_M1PWM2;
    pwm_pin[10].base = PWM1_BASE;
    pwm_pin[10].output = PWM_OUT_2;
    pwm_pin[10].generator = PWM_GEN_1;

    /* Config for PA7 */
    pwm_pin[11].pin = GPIO_PA7_M1PWM3;
    pwm_pin[11].base = PWM1_BASE;
    pwm_pin[11].output = PWM_OUT_3;
    pwm_pin[11].generator = PWM_GEN_1;

    /* Config for PF1 */
    pwm_pin[12].pin = GPIO_PF1_M1PWM5;
    pwm_pin[12].base = PWM1_BASE;
    pwm_pin[12].output = PWM_OUT_5;
    pwm_pin[12].generator = PWM_GEN_2;

    /* Set the PWM clock to the system clock. */
    SysCtlPWMClockSet(SYSCTL_PWMDIV_1);

    /* Both PWM peripherals must be enabled for use. */
    SysCtlPeripheralEnable(SYSCTL_PERIPH_PWM0);
    SysCtlPeripheralEnable(SYSCTL_PERIPH_PWM1);

    /* Enabling the pins */
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOA);
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOB);
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOC);
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOD);
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOE);
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);

    /*
     * Configure the GPIO pin muxing to select functions for these pins.
     * This step selects which alternate function is available for these pins.
     * This is necessary if your part supports GPIO pin function muxing.
     */
    for (aux = 0; aux < PWM_PIN_QTY; aux++) {
        GPIOPinConfigure(pwm_pin[aux].pin);
    }

    /* Configure the PWM function for these pin. */
    GPIOPinTypePWM(GPIO_PORTB_BASE, GPIO_PIN_6);
    GPIOPinTypePWM(GPIO_PORTB_BASE, GPIO_PIN_7);
    GPIOPinTypePWM(GPIO_PORTB_BASE, GPIO_PIN_4);
    GPIOPinTypePWM(GPIO_PORTB_BASE, GPIO_PIN_5);
    GPIOPinTypePWM(GPIO_PORTE_BASE, GPIO_PIN_4);
    GPIOPinTypePWM(GPIO_PORTE_BASE, GPIO_PIN_5);
    GPIOPinTypePWM(GPIO_PORTC_BASE, GPIO_PIN_4);
    GPIOPinTypePWM(GPIO_PORTC_BASE, GPIO_PIN_5);
    GPIOPinTypePWM(GPIO_PORTD_BASE, GPIO_PIN_0);
    GPIOPinTypePWM(GPIO_PORTD_BASE, GPIO_PIN_1);
    GPIOPinTypePWM(GPIO_PORTA_BASE, GPIO_PIN_6);
    GPIOPinTypePWM(GPIO_PORTA_BASE, GPIO_PIN_7);
    GPIOPinTypePWM(GPIO_PORTF_BASE, GPIO_PIN_1);

    /* Configure the PWM0 to count up/down without synchronization. */
    PWMGenConfigure(PWM0_BASE, PWM_GEN_0, PWM_GEN_MODE_UP_DOWN |
    PWM_GEN_MODE_NO_SYNC);
    PWMGenConfigure(PWM0_BASE, PWM_GEN_1, PWM_GEN_MODE_UP_DOWN |
    PWM_GEN_MODE_NO_SYNC);
    PWMGenConfigure(PWM0_BASE, PWM_GEN_2, PWM_GEN_MODE_UP_DOWN |
    PWM_GEN_MODE_NO_SYNC);
    PWMGenConfigure(PWM0_BASE, PWM_GEN_3, PWM_GEN_MODE_UP_DOWN |
    PWM_GEN_MODE_NO_SYNC);
    PWMGenConfigure(PWM1_BASE, PWM_GEN_0, PWM_GEN_MODE_UP_DOWN |
    PWM_GEN_MODE_NO_SYNC);
    PWMGenConfigure(PWM1_BASE, PWM_GEN_1, PWM_GEN_MODE_UP_DOWN |
    PWM_GEN_MODE_NO_SYNC);
    PWMGenConfigure(PWM1_BASE, PWM_GEN_2, PWM_GEN_MODE_UP_DOWN |
    PWM_GEN_MODE_NO_SYNC);

    /*
     * Set the PWM period to 250Hz.  To calculate the appropriate parameter
     * use the following equation: N = (1 / f) * SysClk.  Where N is the
     * function parameter, f is the desired frequency, and SysClk is the
     * system clock frequency.
     * In this case you get: (1 / 250Hz) * 16MHz = 64000 cycles.  Note that
     * the maximum period you can set is 2^16.
     */
    PWMGenPeriodSet(PWM0_BASE, PWM_GEN_0, 64000);
    PWMGenPeriodSet(PWM0_BASE, PWM_GEN_1, 64000);
    PWMGenPeriodSet(PWM0_BASE, PWM_GEN_2, 64000);
    PWMGenPeriodSet(PWM0_BASE, PWM_GEN_3, 64000);
    PWMGenPeriodSet(PWM1_BASE, PWM_GEN_0, 64000);
    PWMGenPeriodSet(PWM1_BASE, PWM_GEN_1, 64000);
    PWMGenPeriodSet(PWM1_BASE, PWM_GEN_2, 64000);

    /*
     * Set PWM0 to a duty cycle of 25%.  You set the duty cycle as a function
     * of the period.  Since the period was set above, you can use the
     * PWMGenPeriodGet() function.  For this example the PWM will be high for
     * 25% of the time or 16000 clock ticks (64000 / 4).
     */
    PWMPulseWidthSet(PWM0_BASE, PWM_OUT_0, 0);
    PWMPulseWidthSet(PWM0_BASE, PWM_OUT_1, 0);
    PWMPulseWidthSet(PWM0_BASE, PWM_OUT_2, 0);
    PWMPulseWidthSet(PWM0_BASE, PWM_OUT_3, 0);
    PWMPulseWidthSet(PWM0_BASE, PWM_OUT_4, 0);
    PWMPulseWidthSet(PWM0_BASE, PWM_OUT_5, 0);
    PWMPulseWidthSet(PWM0_BASE, PWM_OUT_6, 0);
    PWMPulseWidthSet(PWM0_BASE, PWM_OUT_7, 0);
    PWMPulseWidthSet(PWM1_BASE, PWM_OUT_0, 0);
    PWMPulseWidthSet(PWM1_BASE, PWM_OUT_1, 0);
    PWMPulseWidthSet(PWM1_BASE, PWM_OUT_2, 0);
    PWMPulseWidthSet(PWM1_BASE, PWM_OUT_3, 0);
    PWMPulseWidthSet(PWM1_BASE, PWM_OUT_5, 0);


    /* Enable the PWM output signal. */
    PWMOutputState(PWM0_BASE, PWM_OUT_0_BIT, true);
    PWMOutputState(PWM0_BASE, PWM_OUT_1_BIT, true);
    PWMOutputState(PWM0_BASE, PWM_OUT_2_BIT, true);
    PWMOutputState(PWM0_BASE, PWM_OUT_3_BIT, true);
    PWMOutputState(PWM0_BASE, PWM_OUT_4_BIT, true);
    PWMOutputState(PWM0_BASE, PWM_OUT_5_BIT, true);
    PWMOutputState(PWM0_BASE, PWM_OUT_6_BIT, true);
    PWMOutputState(PWM0_BASE, PWM_OUT_7_BIT, true);
    PWMOutputState(PWM1_BASE, PWM_OUT_0_BIT, true);
    PWMOutputState(PWM1_BASE, PWM_OUT_1_BIT, true);
    PWMOutputState(PWM1_BASE, PWM_OUT_2_BIT, true);
    PWMOutputState(PWM1_BASE, PWM_OUT_3_BIT, true);
    PWMOutputState(PWM1_BASE, PWM_OUT_5_BIT, true);

    /* Enable the PWM generator block. */
    PWMGenEnable(PWM0_BASE, PWM_GEN_0);
    PWMGenEnable(PWM0_BASE, PWM_GEN_1);
    PWMGenEnable(PWM0_BASE, PWM_GEN_2);
    PWMGenEnable(PWM0_BASE, PWM_GEN_3);
    PWMGenEnable(PWM1_BASE, PWM_GEN_0);
    PWMGenEnable(PWM1_BASE, PWM_GEN_1);
    PWMGenEnable(PWM1_BASE, PWM_GEN_2);
}

void pwm_set(uint8_t pin, uint8_t percent) {

    PWMPulseWidthSet(pwm_pin[pin].base, pwm_pin[pin].output,
            PWMGenPeriodGet(pwm_pin[pin].base, pwm_pin[pin].generator)
                    * (uint32_t) percent
                    / 100);
}
