#include <stdint.h>

#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>

// Interrupt Service Routine for TIMER1 overflows.
ISR(TIMER1_OVC_vect)
{
    // TODO.
}

void io_setup(void)
{
    // TODO.
}

int main(void)
{
    io_setup();

    // All of the actual work is done in the TIMER1_OVC_vect ISR.
    while (1) {
        sleep_mode();
    }

    return 0;
}
