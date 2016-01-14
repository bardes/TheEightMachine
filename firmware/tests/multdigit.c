#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/sfr_defs.h>
#include <util/delay.h>

void fazcoisa();

int main(void) {
	DDRD 	= _BV(PD4);	// Ajusta porta de saida do clk (porta 4)
	DDRC	= 0x1F;
	DDRB 	= _BV(PB5);	// Saida para piscar o LED (porta 13)
	UCSR0B 	= _BV(TXEN0);	// Ativa o tx
	UCSR0C 	= _BV(UMSEL00) | _BV(UMSEL01)	// Coloca em modo MSPIM
		| _BV(UCPOL0)  | _BV(UCPHA0);	// Polaridade e fase do clock
	UBRR0H 	= 0; 		// Divisor do baud rate
	UBRR0L 	= 0; 		// Continuacao do divisor

	TCCR0A |= _BV(WGM01);			// Set timer0 mode to CTC
	TCCR0B |= _BV(CS01); //| _BV(CS02);	// Set prescaler to 1024
	TIMSK0 |= _BV(OCIE0A);		// Enable interrupt on OCR0A match

	// Fire an interrupt at ~80KHz
	OCR0A = 100;

	// Garante que o clock esta baixo
	PORTB &= ~_BV(PB5);

	sei();			// Enable interrupts globally

//	do {
//		fazcoisa();
//		_delay_ms(500);
//	} while(1);

	while(1);		// Tail spin :p
	return 0;		// Good luck whith that
}

//				 S     T     I     C     L
const char char_table[26] = {
	0b10111110, 	//A
	0b11111000, 	//B
	0b01101100, 	//C
	0b11110010, 	//D
	0b01111100, 	//E
	0b00111100,	//F
	0x01, 		//G
	0b10111010,	//H
	0b00101000, 	//I
	0b11100010,	//J
	0x01, 		//K
	0b01101000, 	//L
	0x01, 		//M
	0b10110000,	//N
	0b11110000, 	//O
	0b00111110,	//P
	0b10011110,	//Q
	0b00110000,	//R
	0b11011100, 	//S
	0b01111000, 	//T
	0b11101010,	//U
	0x01, 		//V
	0x01, 		//W
	0x00, 		//X
	0b11011010,	//Y
	0x01, 		//Z
};

volatile char display_buffer[5];// {'s', 't', 'i', 'c', 'l'};

ISR(TIMER0_COMPA_vect) {
	static unsigned int cnt = 0;

	if(cnt % 8000 == 0) {
		static char flag = 1;
		if(flag) {
			display_buffer[0] = 'h';
			display_buffer[1] = 'e';
			display_buffer[2] = 'l';
			display_buffer[3] = 'l';
			display_buffer[4] = 'o';
		} else {
			display_buffer[0] = 's';
			display_buffer[1] = 't';
			display_buffer[2] = 'i';
			display_buffer[3] = 'c';
			display_buffer[4] = 'l';
		}
		flag = !flag;
	}

	if(cnt % 40 == 0) {
		fazcoisa();
	}
	cnt = ++cnt % 8000;
}

void fazcoisa() {
	static int buff_pos = 0;

	PORTC = ~(1 << buff_pos);
	UDR0 = char_table[display_buffer[buff_pos] - 'a'];

	loop_until_bit_is_set(UCSR0A, TXC0);
	UCSR0A |= _BV(TXC0);

	PORTB ^= _BV(PB5);
	PORTB ^= _BV(PB5);

	++buff_pos;
	buff_pos %= 5;
}

