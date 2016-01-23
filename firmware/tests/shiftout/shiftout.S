#include "ports.h"

.section .text

.global fast_shiftout_msbf

; Original code

;void fast_shiftout_msbf(uchar bits)
;{
;    OUTPUT &= (uchar) ~_BV(CLOCK_PIN);
;
;    for(uchar i = 7; i != 255; --i) {
;        // Data starts LOW
;        OUTPUT &= (uchar) ~_BV(DATA_PIN);
;
;        // And is changed to HIGH if necessary
;        if(bits & _BV(i))
;            OUTPUT |= (uchar) _BV(DATA_PIN);
;
;        // Pulse the clock
;        OUTPUT |= (uchar) _BV(CLOCK_PIN);
;        OUTPUT &= (uchar) ~_BV(CLOCK_PIN);
;    }
;}

; Hand optimized version:
fast_shiftout_msbf:
    cbi     _SFR_IO_ADDR(OUTPUT), CLOCK_PIN ; Set Clock LOW before starting

    ; Transmits one bit
    cbi     _SFR_IO_ADDR(OUTPUT), DATA_PIN  ; Set data to 0
    sbrc    r24, 7                          ; Check if the data bit is actually 0
    sbi     _SFR_IO_ADDR(OUTPUT), DATA_PIN  ; If it isn't, sei it to HIGH
    sbi     _SFR_IO_ADDR(OUTPUT), CLOCK_PIN ; Pulses the clock HIGH
    cbi     _SFR_IO_ADDR(OUTPUT), CLOCK_PIN ; And back to low again

    ; Now do it all over again for each bit...
    cbi     _SFR_IO_ADDR(OUTPUT), DATA_PIN
    sbrc    r24, 6
    sbi     _SFR_IO_ADDR(OUTPUT), DATA_PIN
    sbi     _SFR_IO_ADDR(OUTPUT), CLOCK_PIN
    cbi     _SFR_IO_ADDR(OUTPUT), CLOCK_PIN

    cbi     _SFR_IO_ADDR(OUTPUT), DATA_PIN
    sbrc    r24, 5
    sbi     _SFR_IO_ADDR(OUTPUT), DATA_PIN
    sbi     _SFR_IO_ADDR(OUTPUT), CLOCK_PIN
    cbi     _SFR_IO_ADDR(OUTPUT), CLOCK_PIN

    cbi     _SFR_IO_ADDR(OUTPUT), DATA_PIN
    sbrc    r24, 4
    sbi     _SFR_IO_ADDR(OUTPUT), DATA_PIN
    sbi     _SFR_IO_ADDR(OUTPUT), CLOCK_PIN
    cbi     _SFR_IO_ADDR(OUTPUT), CLOCK_PIN

    cbi     _SFR_IO_ADDR(OUTPUT), DATA_PIN
    sbrc    r24, 3
    sbi     _SFR_IO_ADDR(OUTPUT), DATA_PIN
    sbi     _SFR_IO_ADDR(OUTPUT), CLOCK_PIN
    cbi     _SFR_IO_ADDR(OUTPUT), CLOCK_PIN

    cbi     _SFR_IO_ADDR(OUTPUT), DATA_PIN
    sbrc    r24, 2
    sbi     _SFR_IO_ADDR(OUTPUT), DATA_PIN
    sbi     _SFR_IO_ADDR(OUTPUT), CLOCK_PIN
    cbi     _SFR_IO_ADDR(OUTPUT), CLOCK_PIN

    cbi     _SFR_IO_ADDR(OUTPUT), DATA_PIN
    sbrc    r24, 1
    sbi     _SFR_IO_ADDR(OUTPUT), DATA_PIN
    sbi     _SFR_IO_ADDR(OUTPUT), CLOCK_PIN
    cbi     _SFR_IO_ADDR(OUTPUT), CLOCK_PIN

    cbi     _SFR_IO_ADDR(OUTPUT), DATA_PIN
    sbrc    r24, 0
    sbi     _SFR_IO_ADDR(OUTPUT), DATA_PIN
    sbi     _SFR_IO_ADDR(OUTPUT), CLOCK_PIN
    cbi     _SFR_IO_ADDR(OUTPUT), CLOCK_PIN

    ret
