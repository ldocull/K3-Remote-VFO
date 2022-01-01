#include "EE24C32.h"

EE24C32::EE24C32(uint8_t eepromAddr)
{
  _eepromAddr = eepromAddr;
}

uint8_t EE24C32::begin(TwoWire *_comm)
{
  communication = _comm;
  communication->begin();
  communication->beginTransmission(_eepromAddr);
  communication->write((uint8_t)0);
  communication->write((uint8_t)0);
  return communication->endTransmission();
}

uint8_t EE24C32::write(uint16_t addr, uint8_t *values, uint16_t nBytes)
{
uint8_t txStatus = 0;
uint8_t nWrite;
uint8_t nPage;
//----------------------
  if ((addr + nBytes) > 4096) return 9;
  while (nBytes) 
  {
    nPage = 32 - (addr & 31);
    nWrite = nBytes < nPage ? nBytes : nPage;
    nWrite = BUFFER_LENGTH - 2 < nWrite ? BUFFER_LENGTH - 2 : nWrite;
    communication->beginTransmission(_eepromAddr);
    communication->write((uint8_t)(addr >> 8));  // high addr byte
    communication->write((uint8_t)addr);         // low addr byte
    communication->write(values, nWrite);
    txStatus = communication->endTransmission();
    if (txStatus != 0) return txStatus;
    //wait up to 50ms for the write to complete
    for (uint8_t i = 100; i; --i) 
    {
      delayMicroseconds(500);
      communication->beginTransmission(_eepromAddr);
      communication->write((uint8_t)0);  // high addr byte
      communication->write((uint8_t)0);  // low addr byte
      txStatus = communication->endTransmission();
      if (txStatus == 0) break;
    }
    if (txStatus != 0) return txStatus;
    addr += nWrite;         // increment the EEPROM address
    values += nWrite;       // increment the input data pointer
    nBytes -= nWrite;       // decrement the number of bytes left to write
  }
  return txStatus;
}

uint8_t EE24C32::write(uint16_t addr, uint8_t value)
{
  return write(addr, &value, 1);
}

uint8_t EE24C32::read(uint16_t addr, uint8_t *values, uint16_t nBytes)
{
uint8_t rxStatus;
uint8_t nRead;
//----------------------
  if (addr + nBytes > 4096) return 9;
  while (nBytes > 0)
  {
    nRead = BUFFER_LENGTH < nBytes ? BUFFER_LENGTH : nBytes;
    communication->beginTransmission(_eepromAddr);
    communication->write((uint8_t)(addr >> 8)); // high addr byte
    communication->write((uint8_t)addr);        // low addr byte
    rxStatus = communication->endTransmission();
    if (rxStatus != 0) return rxStatus;         // read error
    communication->requestFrom(_eepromAddr, nRead);
    for (byte i = 0; i < nRead; i++) 
      values[i] = communication->read();
    addr += nRead;          // increment the EEPROM address
    values += nRead;        // increment the input data pointer
    nBytes -= nRead;        // decrement the number of bytes left to write
  }
  return 0;
}

uint8_t EE24C32::read(uint16_t addr)
{
uint8_t data;
int ret;
    ret = read(addr, &data, 1);
    return ret == 0 ? data : ret;
}

uint8_t EE24C32::update(uint16_t addr, uint8_t value)
{
    return (value != read(addr) ? write(addr, &value, 1) : 0);
}
