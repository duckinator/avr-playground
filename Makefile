MCU_TYPE := attiny85

FILE ?= blink-led.hex

all: ${FILE}

%.hex: src/%.c
	# TODO

check-fuses: check-fuses-${MCU_TYPE}

check-fuses-attiny85:
	avrdude -c usbtiny -p attiny85 -U lfuse:v:0x62:m -U hfuse:v:0xDF:m -P usb -v

flash: ${FILE}
	avrdude -c usbtiny -p ${MCU_TYPE} -U flash:w:${FILE} -v

clean:
	rm -f *.hex

.PHONY: all clean
