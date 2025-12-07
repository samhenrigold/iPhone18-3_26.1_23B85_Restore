@interface _SKRaptorQRReceptionDetails
- (_SKRaptorQRReceptionDetails)init;
- (unsigned)symbolsShouldHaveReceived:(unint64_t)received;
- (void)updateWithESI:(unsigned int)i;
@end

@implementation _SKRaptorQRReceptionDetails

- (_SKRaptorQRReceptionDetails)init
{
  v3.receiver = self;
  v3.super_class = _SKRaptorQRReceptionDetails;
  result = [(_SKRaptorQRReceptionDetails *)&v3 init];
  if (result)
  {
    *&result->_firstESI = -1;
    result->_largestESI = -1;
  }

  return result;
}

- (void)updateWithESI:(unsigned int)i
{
  self->_lastESI = i;
  if (self->_firstESI == -1)
  {
    self->_firstESI = i;
    largestESI = self->_largestESI;
    if (largestESI == -1 || largestESI < i)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = self->_largestESI;
    if (v3 == -1 || v3 < i)
    {
LABEL_12:
      self->_largestESI = i;
    }
  }
}

- (unsigned)symbolsShouldHaveReceived:(unint64_t)received
{
  v19 = *MEMORY[0x277D85DE8];
  firstESI = self->_firstESI;
  if (firstESI == -1)
  {
    return 0;
  }

  lastESI = self->_lastESI;
  if (lastESI >= firstESI)
  {
    return lastESI - firstESI + 1;
  }

  largestESI = self->_largestESI;
  v6 = largestESI / received;
  v7 = ceil(v6);
  if (v7 - v6 <= 0.1)
  {
    largestESI = (v7 * received);
  }

  else
  {
    if (MIBUOnceToken != -1)
    {
      [_SKRaptorQRReceptionDetails symbolsShouldHaveReceived:];
    }

    v10 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_largestESI;
      v13 = 134218496;
      v14 = v6;
      v15 = 1024;
      v16 = v11;
      v17 = 2048;
      receivedCopy = received;
      _os_log_impl(&dword_259B04000, v10, OS_LOG_TYPE_DEFAULT, "_largestESI / symbolCount = %lf (%u / %lu), not close to an integer. Using a non-integer repair factor, or a lot of packets get lost while host sends packets with largest esi?", &v13, 0x1Cu);
    }

    firstESI = self->_firstESI;
    lastESI = self->_lastESI;
  }

  return largestESI - firstESI + lastESI + 2;
}

@end