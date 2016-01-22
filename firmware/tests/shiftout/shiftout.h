#ifndef __SHIFTOUT_H__
#define __SHIFTOUT_H__

#include <avr/io.h>

#include "ports.h"

typedef unsigned char uchar;

void shiftout_msbf(uchar bits);
void fast_shiftout_msbf(uchar bits);

#endif /* ifndef __SHIFTOUT_H__ */
