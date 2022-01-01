
#ifndef Wheel_H_
#define Wheel_H_

/*
    Main tuning and navigation wheel management
    (c)WR9R  Larry O'Cull 2020
*/
#include <Arduino.h>

#define Enter_Button PB5
#define Encoder_XA PA15 /* (PB3 not working)  wheel encoder phases A & B */
#define Encoder_XB PB4
#define Enter_Pressed (!digitalRead(Enter_Button))

extern int wheelValue, lastWheelValue; // changes in knob rotation +/-

void init_Encoder(void);
void processWheel();

#endif