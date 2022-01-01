/*
    Main tuning and navigation wheel management
    (c)WR9R  Larry O'Cull 2021
*/
#include "wheel.h"

int wheelValue = 0, lastWheelValue=0; // changes in knob rotation +/-
int lastiostate = 0, iostate = 0;


void processWheel()
{
  iostate = 0;
  if(digitalRead(Encoder_XA)) iostate |= 1;
  if(digitalRead(Encoder_XB)) iostate |= 2;

  if(iostate == lastiostate) return;

  switch (lastiostate)
  {
    case 3:
      if(iostate == 1)
        wheelValue++;
      else
        wheelValue--;
      break;

    case 2:
      if(iostate == 3)
        wheelValue++;
      else
        wheelValue--;
      break;

    case 0:
      if(iostate == 2)
        wheelValue++;
      else
        wheelValue--;
      break;

    case 1:
      if(iostate == 0)
        wheelValue++;
      else
        wheelValue--;
      break;

    default:
      break;
  }
  lastiostate = iostate;
}

void init_Encoder(void)
{
  pinMode(Encoder_XA, INPUT);
  pinMode(Encoder_XB, INPUT);
  pinMode(Enter_Button, INPUT);
}
