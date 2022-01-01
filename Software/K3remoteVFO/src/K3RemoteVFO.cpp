/*
  K3 REMOTE VFO

  2021/12/22
  (c)WR9R  Larry O'Cull 2021  LDO Systems LLC
 */

#include <Arduino.h>
#include "wheel.h"
#include "EE24C32.h"

EE24C32 EEPROM(0x50);
USBSerial COMM_PORT;

#define PC_LINK Serial1
#define RIG_LINK Serial2
#define HOST_SIDE PC_LINK
//#define HOST_SIDE COMM_PORT  // -- for using USB port for configuration

#define KEY0  PA4
#define KEY1  PB11
#define KEY2  PB10
#define KEY3  PA5
#define KEY4  PB1
#define KEY5  PA6
#define KEY6  PB0
#define KEY7  PA7
#define ENTER PB5

#define LED0  PB12
#define LED1  PB13
#define LED2  PB14

#define MAX_WHEEL_MODE 3
#define MAX_MESSAGE_INDEX 8
#define MAX_ENCMES_INDEX 8
#define MAX_MESSAGE_SIZE 128

struct EPROM_PLAN 
{
    uint8_t checkValue = 0x14;
    
    char keyMessage[MAX_MESSAGE_INDEX][MAX_MESSAGE_SIZE] = {
        {"SWT09;"},   // BAND +
        {"SWT10;"},   // BAMD -
        {"SWT17;"},   // MODE ++
        {"SWT29;"},   // XFIL
        {"SWT21;"},   // M1-M4...
        {"SWT31;"},
        {"SWT35;"},
        {"SWT39;"}};
    
    char encMessage[MAX_MESSAGE_INDEX][MAX_MESSAGE_SIZE] = {
        {"UP0;"},    // encoder base
        {"DN0;"},
        {"UP1;"},    // encoder up 1 level
        {"DN1;"},
        {"UP8;"},    // encoder up 2nd level
        {"DN8;"},
        {"UP4;"},    // encoder up 3nd level
        {"DN4;"}};

    int wheelMode = 0;

} rigSettings, backupSettings;

int initialized = 0;

// the setup function runs once when you press reset or power the board
void setup() {
  // initialize digital pin PB1 as an output.
  pinMode(LED0, OUTPUT);
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);

  pinMode(KEY0,INPUT_PULLUP);
  pinMode(KEY1,INPUT_PULLUP);
  pinMode(KEY2,INPUT_PULLUP);
  pinMode(KEY3,INPUT_PULLUP);
  pinMode(KEY4,INPUT_PULLUP);
  pinMode(KEY5,INPUT_PULLUP);
  pinMode(KEY6,INPUT_PULLUP);
  pinMode(KEY7,INPUT_PULLUP);
  pinMode(ENTER,INPUT_PULLUP);

  PC_LINK.begin(38400); // PC side of life..  

  pinMode(PA3,INPUT_PULLUP);
  pinMode(PA2,OUTPUT);
  RIG_LINK.begin(38400); // Rig side of life..
  init_Encoder();
   COMM_PORT.begin(115200);
}

// lists the values of the stored message/macros for keys and encoder
void printMacros()
{
    int i;
      
    for(i=0; i< MAX_MESSAGE_INDEX; i++)
    {
      HOST_SIDE.print("<K");
      HOST_SIDE.print(i);
      HOST_SIDE.print(">");
      HOST_SIDE.print(rigSettings.keyMessage[i]);
      HOST_SIDE.println("</K>");
    }

    for(i=0; i< MAX_ENCMES_INDEX; i++)
    {
      HOST_SIDE.print("<E");
      HOST_SIDE.print(i);
      HOST_SIDE.print(">");
      HOST_SIDE.print(rigSettings.encMessage[i]);
      HOST_SIDE.println("</E>");
    }
}

// returns a key value 1-8 (9 for main dial), 0 if none pressed
int getKeyPress()
{
  if(!digitalRead(KEY0)) return 1;
  if(!digitalRead(KEY1)) return 2;
  if(!digitalRead(KEY2)) return 3;
  if(!digitalRead(KEY3)) return 4;
  if(!digitalRead(KEY4)) return 5;
  if(!digitalRead(KEY5)) return 6;
  if(!digitalRead(KEY6)) return 7;
  if(!digitalRead(KEY7)) return 8;
  if(!digitalRead(ENTER)) return 9;
  return 0;
}

// set LEDs based on lower 3-bits of 'n'
void setLEDs(int n)
{
  digitalWrite(LED0,HIGH);
  digitalWrite(LED1,HIGH);
  digitalWrite(LED2,HIGH);

  if(n & 1)
      digitalWrite(LED0,LOW);
  if(n & 2)
      digitalWrite(LED1,LOW);
  if(n & 4)
      digitalWrite(LED2,LOW);
}

void saveRigSettings(int force)
{
    uint8_t *rp, *bp;

    rp = (uint8_t *)&rigSettings;
    bp = (uint8_t *)&backupSettings;       // save any changed memories to EEPROM
    for (int i=0; i < (int) sizeof(rigSettings); i++)
    {
        if((*rp != *bp) || (force != 0))
        {
            EEPROM.write(i, *rp);
            *bp = *rp;
            // chk = 1;
        }    
        bp++;
        rp++;
    }
}

void restoreRigSettings(void)
{
    uint8_t *rp,*bp;

    if(rigSettings.checkValue != EEPROM.read(0))
    {
        saveRigSettings(1); // factory defaults on 1st time on.
    } 
    else
    {
        rp = (uint8_t *)&rigSettings;      // copy EEPROM to rig and backup (comparison) local memory
        bp = (uint8_t *)&backupSettings;
        for (int i=0; i < (int) sizeof(rigSettings); i++)
        {
            *rp = *bp = EEPROM.read(i);
            rp++;
            bp++;
        }   
    }     
}

// blocking read character routine..
char getchBlocking()
{
  char c;
  while(!HOST_SIDE.available()) 
      ;
  c = HOST_SIDE.read();    
  HOST_SIDE.write( c );
  return c;
}  

int engSeqCnt = 0;  // escape sequence counter..

// this routing watches the stream from the PC 
// and if '$$$' is detected, then parses and stores macro definitions
// until '&' is detected.  When '&' arrives, the macros are saved
// to EEPROM and then listed back to the 'console'
void commandProc()
{
    char c, t, *p;
    int i;

    if(!HOST_SIDE.available()) return;
    
    c = HOST_SIDE.peek();
    if(c == '$')
    {
      c = getchBlocking();
      engSeqCnt++;
    }
    else
      engSeqCnt = 0;

    if(engSeqCnt >= 3)
    {
      HOST_SIDE.print('>'); // prompt to indicate terminal mode..
      c = getchBlocking();
      while(1)
      {
        if( c == '?')
        {
          printMacros(); 
        }

        if( c == '&') 
        {
          saveRigSettings(0);
          printMacros();   
          return;
        }

        if( c == '<')
        {
          t = getchBlocking();  // grab K or E
          c = getchBlocking();  // and the index
          i = (int) c - '0';
          getchBlocking();      // eat the carrot..

          HOST_SIDE.print(t);
          HOST_SIDE.print(i);
          HOST_SIDE.println(":");

          if(i < MAX_MESSAGE_INDEX)
          {
            p = &rigSettings.keyMessage[i][0];
            if( t == 'E')
              p = &rigSettings.encMessage[i][0];

            while(1)
            { 
              c = getchBlocking();
              if( c == '<') break;
              *p++ = c;
            }
            *p = 0;  // terminate string...
          }
          getchBlocking();      // eat the slash..
          getchBlocking();      // eat the end mark..
          getchBlocking();      // eat the carrot..
        }
        c =  getchBlocking();   // next char...
      }
    } 
}

// the loop function runs over and over again forever
void loop() 
{
  char c;

  if(!initialized)
  {
    delay(8000);
    COMM_PORT.println("Initialize VFO..");
    // printMacros();    
    delay(1000);
    initialized = 1;
    setLEDs(0);
    COMM_PORT.println("Initialize I2C..");
      
    EEPROM.begin(&Wire);
    int test = EEPROM.read(0x0);
    COMM_PORT.print("EEPROM TEST: ");
    COMM_PORT.println(test, HEX);
    restoreRigSettings();     // get rig state from EEPROM
    
    setLEDs(1<<rigSettings.wheelMode); // restore LEDs to reflect last state
  }

  if(initialized)
  {
    commandProc();

    while(PC_LINK.available() || RIG_LINK.available())
    {
      while(PC_LINK.available())  // exchange left<->right
      { 
        c = PC_LINK.read();
        RIG_LINK.write(c);
      }
      while(RIG_LINK.available())
      {
        c = RIG_LINK.read();
        PC_LINK.write(c);
      }
      delay(20);  // look for opening in communications
    }

    if(getKeyPress() != 0) // look for key presses..
    {
      delay(20);
      if(getKeyPress() != 0)  // debounce on (pressed)
      {
        if(getKeyPress() < 9)     // macro key preses
        {  
          RIG_LINK.print(rigSettings.keyMessage[getKeyPress()-1]);
        }
        else
        {
          rigSettings.wheelMode++;
          if(rigSettings.wheelMode > MAX_WHEEL_MODE)
            rigSettings.wheelMode = 0;
          setLEDs(1<<rigSettings.wheelMode);  // jog-wheel presses
          saveRigSettings(0);                 // save state to EEPROM
        }

        while(getKeyPress() != 0) // debounce off (released)
        delay(20);
      }
    }

    extern int wheelValue, lastWheelValue;

    processWheel();
    if(wheelValue != lastWheelValue)      // send macro message for appropriate mode, for up and down
    {
        if(lastWheelValue > wheelValue)
            RIG_LINK.print(rigSettings.encMessage[rigSettings.wheelMode*2]);
        else
            RIG_LINK.print(rigSettings.encMessage[(rigSettings.wheelMode*2)+1]);

        lastWheelValue = wheelValue;
    }
  }
}
