# Basic info about the micro
MCU   = atmega328p
F_CPU = 16000000UL
PROGRAMMER_TYPE = arduino
PROGRAMMER_ARGS = -P /dev/ttyUSB0 -b 57600 

# By default target name is the parent directory
TARGET = $(lastword $(subst /, ,$(CURDIR)))

# Source files
SRCS = $(shell find -name '*.[csS]')
HDRS = $(shell find -name '*.h')

# Generated files
OBJS = $(SRCS:=.o)
DEPS = $(SRCS:=.dep)

# Compiler warnings
WARNINGS = -pedantic -Wall -Wextra -Wcast-align -Wcast-qual \
		   -Wdisabled-optimization -Wformat=2 -Wlogical-op -Wmissing-declarations \
		   -Wmissing-include-dirs -Wredundant-decls -Wshadow -Wsign-conversion \
		   -Wstrict-overflow=5 -Wundef

# Compiler settings
CFLAGS = $(WARNINGS) -fpack-struct -std=gnu11 -O2
CPPFLAGS = -DF_CPU=$(F_CPU)

# Linker settings
LDFLAGS = 

# Which tools to use
CC = avr-gcc
OBJCOPY = avr-objcopy
OBJDUMP = avr-objdump
AVRSIZE = avr-size
AVRDUDE = avrdude

.PHONY: all clean prog debug

all: $(TARGET).hex

debug: CFLAGS += -g -Og
debug: all

# Links and generates the .elf
$(TARGET).elf: $(DEPS) $(OBJS)
	$(CC) -mmcu=$(MCU) $(LDFLAGS) -o $@ $(OBJS) 

# Generates the .hex file from the .elf
%.hex: %.elf
	$(OBJCOPY) -j .text -j .data -O ihex $< $@

# Compiles each source file
%.o:
	$(CC) -mmcu=$(MCU) $(CPPFLAGS) $(CFLAGS) -c $< -o $@

# Generats the .dep files
%.dep: %
	$(CC) -mmcu=$(MCU) -MM -MT "$@ $(@:.dep=.o)" $(CPPFLAGS) $< -MF $@

clean:
	rm -f $(OBJS) $(DEPS) $(TARGET).elf $(TARGET).hex

prog: $(TARGET).hex
	$(AVRDUDE) -c $(PROGRAMMER_TYPE) -p $(MCU) $(PROGRAMMER_ARGS) -U flash:w:$<:i

-include $(DEPS)
