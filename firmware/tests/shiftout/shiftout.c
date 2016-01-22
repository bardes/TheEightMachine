#include <avr/interrupt.h>

#include "shiftout.h"

// Output digit buffer (see comment below for segment reference)
volatile uchar digits[5];

// Current time
volatile uchar hour, min, sec;

static void set_time(uchar h, uchar m, uchar s);

static void output(uchar data)
{
    PORTD &= (uchar)~_BV(5);
    fast_shiftout_msbf(data);
    PORTD |= (uchar)_BV(5);
}


int main(void)
{
    // Set the outputs
    DDRD |= (uchar)(_BV(DATA_PIN) | _BV(CLOCK_PIN) | _BV(5));
    DDRC |= (uchar)0x1F;

    // Light up portb 5 (aka digital pin 13) to show we are alive...
    DDRB |= (uchar)_BV(5);
    PORTB |= _BV(5);

    // Setup the timer interrupt
    TCCR0A |= _BV(WGM01);  // Set timer0 mode to CTC
    TCCR0B |= _BV(CS01);   // Set prescaler to 8
    TIMSK0 |= _BV(OCIE0A); // Enable interrupt on OCR0A match

    // Fire an interrupt at 8KHz
    OCR0A = 250; // ~300Hz (60Hz/disp)

    set_time(6, 33, 0);
    digits[4] = (uchar) ~0;

    sei();
    while (1)
        continue;

    return 0;
}

//   _7_
// 6|   |5
//  |_4_|
// 3|   |1
//  |_2_| .0
const uchar decode_table[7] = {
    (uchar) ~0,
    (uchar) ~(_BV(2)),
    (uchar) ~(_BV(2) | _BV(4)),
    (uchar) ~(_BV(2) | _BV(4) | _BV(7)),
    (uchar) ~(_BV(0) | _BV(2)),
    (uchar) ~(_BV(0) | _BV(2) | _BV(4)),
    (uchar) ~(_BV(0) | _BV(2) | _BV(4) | _BV(7))
};

// Updates the digits based on current time
static void update_digits()
{
    if (min < 30) {
        digits[2] = decode_table[min / 5];
        digits[3] = decode_table[0];
    } else {
        digits[2] = decode_table[6];
        digits[3] = decode_table[(min - 30) / 5];
    }

    if (hour < 7) {
        digits[0] = decode_table[hour];
        digits[1] = decode_table[0];
    } else {
        digits[0] = decode_table[6];
        digits[1] = decode_table[hour - 6];
    }
}

// Sets the time and updates the digits
static void set_time(uchar h, uchar m, uchar s)
{
    hour = h;
    min  = m;
    sec = s;
    update_digits();
}

// Updates the clock time (shuld be called every second)
static void update_clock()
{
    if (++sec == 60) {
        sec = 0;
        if (++min == 60) {
            min = 0;
            if (++hour == 12) {
                hour = 0;
            }
        }
        update_digits();
    }
}

// Interrupt handler for the timer
ISR(TIMER0_COMPA_vect)
{
    static uchar active     = _BV(0); // Bit value of the active port
    static uchar n_active   = 0;      // Number of the current active port;
    static unsigned int div = 0;      // Clock divider to reduce 8kHz into 1Hz

    PORTC = 0; // Turn the display off before shifting the data...
    output(digits[n_active]); // Outputs the current active digit
    PORTC = active;           // Turn it back on when done.
    /*PORTC |= _BV(n_active);*/

    // Updates the active digit
    active = active & _BV(4) ? _BV(0) : active << 1;
    if (++n_active == 5) n_active = 0;

    // Updates the clock when necessary
    if (++div == 8000) {
        update_clock();
        digits[4] ^= _BV(4);
        div = 0;
    } else if (div == 4000) {
        digits[4] ^= _BV(4);
    }
}
