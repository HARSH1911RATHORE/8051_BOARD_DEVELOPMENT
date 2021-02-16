
#ifndef __DRIVERLIB__H_
#define __DRIVERLIB__H_

/* Common Modules */
#include <ti/devices/msp432p4xx/driverlib/adc14.h>
#include <ti/devices/msp432p4xx/driverlib/aes256.h>
#include <ti/devices/msp432p4xx/driverlib/comp_e.h>
#include <ti/devices/msp432p4xx/driverlib/cpu.h>
#include <ti/devices/msp432p4xx/driverlib/crc32.h>
#include <ti/devices/msp432p4xx/driverlib/cs.h>
#include <ti/devices/msp432p4xx/driverlib/dma.h>
#include <ti/devices/msp432p4xx/driverlib/eusci.h>
#include <ti/devices/msp432p4xx/driverlib/fpu.h>
#include <ti/devices/msp432p4xx/driverlib/gpio.h>
#include <ti/devices/msp432p4xx/driverlib/i2c.h>
#include <ti/devices/msp432p4xx/driverlib/interrupt.h>
#include <ti/devices/msp432p4xx/driverlib/mpu.h>
#include <ti/devices/msp432p4xx/driverlib/pcm.h>
#include <ti/devices/msp432p4xx/driverlib/pmap.h>
#include <ti/devices/msp432p4xx/driverlib/pss.h>
#include <ti/devices/msp432p4xx/driverlib/ref_a.h>
#include <ti/devices/msp432p4xx/driverlib/reset.h>
#include <ti/devices/msp432p4xx/driverlib/rom.h>
#include <ti/devices/msp432p4xx/driverlib/rom_map.h>
#include <ti/devices/msp432p4xx/driverlib/rtc_c.h>
#include <ti/devices/msp432p4xx/driverlib/spi.h>
#include <ti/devices/msp432p4xx/driverlib/systick.h>
#include <ti/devices/msp432p4xx/driverlib/timer32.h>
#include <ti/devices/msp432p4xx/driverlib/timer_a.h>
#include <ti/devices/msp432p4xx/driverlib/uart.h>
#include <ti/devices/msp432p4xx/driverlib/wdt_a.h>

/* Device specific modules */
#if defined(__MCU_HAS_SYSCTL_A__)
#include <ti/devices/msp432p4xx/driverlib/sysctl_a.h>
#endif

#if defined(__MCU_HAS_SYSCTL__)
#include <ti/devices/msp432p4xx/driverlib/sysctl.h>
#endif

#if defined(__MCU_HAS_FLCTL_A__)
#include <ti/devices/msp432p4xx/driverlib/flash_a.h>
#endif

#if defined(__MCU_HAS_FLCTL__)
#include <ti/devices/msp432p4xx/driverlib/flash.h>
#endif

#if defined(__MCU_HAS_LCD_F__)
#include <ti/devices/msp432p4xx/driverlib/lcd_f.h>
#endif

/* Offset Definitions */
#define HWREG8(x)         (*((volatile uint8_t *)(x)))
#define HWREG16(x)        (*((volatile uint16_t *)(x)))
#define HWREG32(x)        (*((volatile uint32_t *)(x)))
#define HWREG(x)          (HWREG16(x))
#define HWREG8_L(x)       (*((volatile uint8_t *)((uint8_t *)&x)))
#define HWREG8_H(x)       (*((volatile uint8_t *)(((uint8_t *)&x)+1)))
#define HWREG16_L(x)      (*((volatile uint16_t *)((uint16_t *)&x)))
#define HWREG16_H(x)      (*((volatile uint16_t *)(((uint16_t *)&x)+1)))


#endif
