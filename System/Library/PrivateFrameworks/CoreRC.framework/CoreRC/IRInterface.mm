@interface IRInterface
- (BOOL)processTimings:(const unsigned int *)timings range:(_NSRange)range timestamp:(unint64_t)timestamp;
- (BOOL)setLearnedProtocolMask:(unsigned int)mask error:(id *)error;
- (void)receivedCommand:(id)command;
- (void)receivedFrame:(id)frame;
@end

@implementation IRInterface

- (void)receivedCommand:(id)command
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __31__IRInterface_receivedCommand___block_invoke;
  v3[3] = &unk_278EA29D8;
  v3[4] = self;
  v3[5] = command;
  [(CoreRCInterface *)self dispatchAsyncHighPriority:v3];
}

uint64_t __31__IRInterface_receivedCommand___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 interface:v3 receivedCommand:v4];
}

- (BOOL)setLearnedProtocolMask:(unsigned int)mask error:(id *)error
{
  isRxInterface = [(IRInterface *)self isRxInterface];
  if (!isRxInterface)
  {
    [CoreIRDeviceProvider sendHIDEvent:? target:? error:?];
    v6 = v8;
    if (!error)
    {
      return isRxInterface;
    }

    goto LABEL_3;
  }

  v6 = 0;
  if (error)
  {
LABEL_3:
    *error = v6;
  }

  return isRxInterface;
}

- (void)receivedFrame:(id)frame
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [frame count];
  timestamp = [frame timestamp];
  if (gLogCategory_CoreRCInterface <= 10 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCInterface, "[IRInterface receivedFrame:]", 10, "#intervals: %u\n", v5);
  }

  [frame getTimings:v12 range:{0, v5}];
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
      {
        if (i)
        {
          v8 = "";
          if (10 * (i / 0xA) == i)
          {
            v8 = "\n    ";
          }
        }

        else
        {
          v8 = "    ";
        }

        if (i)
        {
          v9 = "      ";
        }

        else
        {
          v9 = " ";
        }

        LogPrintF(&gLogCategory_CoreRCInterface, "[IRInterface receivedFrame:]", 524328, "%s%4u%s", v8, v12[i], v9);
      }
    }
  }

  if (gLogCategory_CoreRCInterface < 41 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCInterface, "[IRInterface receivedFrame:]", 524328, "\n");
  }

  if (v5 < 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    for (j = 1; j < v5; j += 2)
    {
      if (v12[j] >= 0x1D4Du)
      {
        if (![(IRInterface *)self processTimings:v12 range:v10 timestamp:j - v10, timestamp])
        {
          return;
        }

        v10 = j + 1;
      }
    }
  }

  if (v5 > v10)
  {
    [IRInterface processTimings:"processTimings:range:timestamp:" range:v12 timestamp:?];
  }
}

- (BOOL)processTimings:(const unsigned int *)timings range:(_NSRange)range timestamp:(unint64_t)timestamp
{
  length = range.length;
  location = range.location;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  if (gLogCategory_CoreRCInterface <= 10 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCInterface, "[IRInterface processTimings:range:timestamp:]", 10, "processing frame @%u+%u\n", location, length);
  }

  if (IRDecoder_Decode(&timings[location], length, &v16, &v15, &v14, &v13))
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v10 = [IRProtocol protocolWithID:v16 options:v15];
    if (v10)
    {
      v10 = [IRCommand commandWithProtocol:v10 payload:v14 repeat:v13 != 0];
      if (v10)
      {
        v11 = v10;
        [(IRProtocol *)v10 setTimestamp:timestamp];
        [(IRInterface *)self receivedCommand:v11];
        LOBYTE(v10) = 1;
      }
    }
  }

  return v10;
}

@end