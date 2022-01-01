#ifndef EE24C32_H
#define EE24C32_H

#include <Arduino.h> 
#include <Wire.h>

#define EE24C32_SIZE    4096
#define EE24C32_PSIZE   32

class EE24C32
{
  private: 
    TwoWire *communication;
    uint8_t _eepromAddr;
  public:
    EE24C32(uint8_t eepromAddr);
    uint8_t begin(TwoWire *_comm);
    uint8_t write(uint16_t addr, uint8_t* values, uint16_t nBytes);
    uint8_t write(uint16_t addr, uint8_t value);
    uint8_t read(uint16_t addr, uint8_t* values, uint16_t nBytes);
    uint8_t read(uint16_t addr);
    uint8_t update(uint16_t addr, uint8_t value);
};

#endif
