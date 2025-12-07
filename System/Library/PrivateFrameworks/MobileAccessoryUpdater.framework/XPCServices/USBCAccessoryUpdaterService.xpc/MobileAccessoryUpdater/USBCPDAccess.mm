@interface USBCPDAccess
- (BOOL)didFailErrorRecovery:(id)recovery;
- (USBCPDAccess)initWithPDController:(id)controller;
- (id)DeviceInAlternateMode:(BOOL *)mode;
- (id)EnterUpdateMode:(id)mode;
- (id)ExitUpdateMode:(id)mode remoteReset:(BOOL)reset;
- (id)IECSReadReg:(BOOL)reg buffer:(void *)buffer bufferLength:(unsigned int)length registerAddress:(unsigned int)address returnedBufferLength:(unsigned int *)bufferLength canRetry:(BOOL)retry canRecover:(BOOL)recover;
- (id)IECSWriteReg:(BOOL)reg buffer:(const void *)buffer bufferLength:(unsigned int)length registerAddress:(unsigned int)address canRetry:(BOOL)retry canRecover:(BOOL)recover;
- (id)LocalExecuteCommand:(unsigned int)command withDelay:(unsigned int)delay canRetry:(BOOL)retry canRecover:(BOOL)recover;
- (id)RemoteExecuteCommand:(unsigned int)command withDelay:(unsigned int)delay canRetry:(BOOL)retry canRecover:(BOOL)recover;
- (id)localPollForIdle;
- (id)remotePollForIdle;
@end

@implementation USBCPDAccess

- (USBCPDAccess)initWithPDController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = USBCPDAccess;
  v6 = [(USBCPDAccess *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pdController, controller);
  }

  return v7;
}

- (BOOL)didFailErrorRecovery:(id)recovery
{
  recoveryCopy = recovery;
  v4 = recoveryCopy;
  v5 = 0;
  if (recoveryCopy)
  {
    v6 = recoveryCopy;
    do
    {
      userInfo = [v6 userInfo];
      v5 |= (([v6 code] >> 8) - 51) < 2;
      v8 = [userInfo objectForKeyedSubscript:@"Previous Error Response"];

      v6 = v8;
    }

    while (v8);
  }

  return v5 & 1;
}

- (id)EnterUpdateMode:(id)mode
{
  [(USBCPDAccess *)self doesNotRecognizeSelector:a2];

  return [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:3840 userInfo:0];
}

- (id)ExitUpdateMode:(id)mode remoteReset:(BOOL)reset
{
  [(USBCPDAccess *)self doesNotRecognizeSelector:a2, reset];

  return [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:3840 userInfo:0];
}

- (id)DeviceInAlternateMode:(BOOL *)mode
{
  [(USBCPDAccess *)self doesNotRecognizeSelector:a2];

  return [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:3840 userInfo:0];
}

- (id)IECSReadReg:(BOOL)reg buffer:(void *)buffer bufferLength:(unsigned int)length registerAddress:(unsigned int)address returnedBufferLength:(unsigned int *)bufferLength canRetry:(BOOL)retry canRecover:(BOOL)recover
{
  [(USBCPDAccess *)self doesNotRecognizeSelector:a2, buffer, *&length, *&address, bufferLength, retry];

  return [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:3840 userInfo:0];
}

- (id)IECSWriteReg:(BOOL)reg buffer:(const void *)buffer bufferLength:(unsigned int)length registerAddress:(unsigned int)address canRetry:(BOOL)retry canRecover:(BOOL)recover
{
  [(USBCPDAccess *)self doesNotRecognizeSelector:a2, buffer, *&length, *&address, retry, recover];

  return [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:3840 userInfo:0];
}

- (id)localPollForIdle
{
  HIDWORD(v14) = 4;
  LOBYTE(v14) = 0;
  v3 = [(USBCPDAccess *)self IECSReadReg:1 buffer:v15 bufferLength:4 registerAddress:8 returnedBufferLength:&v14 + 4 canRetry:0 canRecover:v14];
  if (!v3)
  {
    v9 = 0;
    while (1)
    {
      if (HIDWORD(v14) == 4)
      {
        if (!v15[0])
        {
          v4 = 0;
          goto LABEL_5;
        }

        if (v15[0] == 1145914145)
        {
          v11 = +[NSMutableDictionary dictionary];
          [v11 setObject:@"got nCMD" forKeyedSubscript:@"Notes"];
          v12 = 5633;
LABEL_26:
          v4 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:v12 userInfo:v11];

          goto LABEL_5;
        }

        if (v9 >= 0x10)
        {
          break;
        }
      }

      if (v9 >= 0xA)
      {
        v4 = 0;
LABEL_18:
        usleep(0x2710u);
        if (++v9 == 51)
        {
          if (v4)
          {
            goto LABEL_5;
          }

          v11 = +[NSMutableDictionary dictionary];
          [v11 setObject:0 forKeyedSubscript:@"Previous Error Response"];
          v12 = 5634;
          goto LABEL_26;
        }

        goto LABEL_19;
      }

      usleep(0x3E8u);
      v4 = 0;
      ++v9;
LABEL_19:

      HIDWORD(v14) = 4;
      LOBYTE(v14) = 0;
      v10 = [(USBCPDAccess *)self IECSReadReg:1 buffer:v15 bufferLength:4 registerAddress:8 returnedBufferLength:&v14 + 4 canRetry:0 canRecover:v14];
      if (v10)
      {
        v4 = v10;
        if (v9 <= 0x31)
        {
          goto LABEL_3;
        }

        goto LABEL_5;
      }
    }

    BYTE3(v14) = 1;
    v4 = [(USBCPDAccess *)self DeviceInAlternateMode:&v14 + 3];
    if (BYTE3(v14) != 1)
    {
      v13 = +[NSMutableDictionary dictionary];
      v5 = v13;
      if (v4)
      {
        [v13 setObject:v4 forKeyedSubscript:@"Previous Error Response"];
      }

      [v5 setObject:@"Not in alternate mode" forKeyedSubscript:@"Notes"];
      v6 = 6913;
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  v4 = v3;
LABEL_3:
  v5 = +[NSMutableDictionary dictionary];
  [v5 setObject:v4 forKeyedSubscript:@"Previous Error Response"];
  v6 = 5632;
LABEL_4:
  v7 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:v6 userInfo:v5];

  v4 = v7;
LABEL_5:

  return v4;
}

- (id)remotePollForIdle
{
  v3 = 0;
  v4 = 0;
  memset(v14, 0, sizeof(v14));
  do
  {
    v5 = v4;
    HIDWORD(v12) = 4;
    LOBYTE(v12) = 0;
    v4 = [(USBCPDAccess *)self IECSReadReg:0 buffer:v14 bufferLength:4 registerAddress:8 returnedBufferLength:&v12 + 4 canRetry:0 canRecover:v12];

    if (!v4 && HIDWORD(v12) == 4)
    {
      if (!LODWORD(v14[0]))
      {
        goto LABEL_19;
      }

      if (LODWORD(v14[0]) == 1145914145)
      {
        v7 = +[NSMutableDictionary dictionary];
        [v7 setObject:@"got nCMD" forKeyedSubscript:@"Notes"];
        v8 = 5889;
        goto LABEL_15;
      }
    }

    if (v3 >= 6)
    {
      BYTE3(v12) = 0;
      v6 = [(USBCPDAccess *)self DeviceInAlternateMode:&v12 + 3];

      if (v6)
      {
        goto LABEL_16;
      }

      if ((v12 & 0x1000000) == 0)
      {
        sub_100013574(&v13);
        v6 = v13;
        if (!v13)
        {
          goto LABEL_19;
        }

LABEL_17:
        v9 = +[NSMutableDictionary dictionary];
        [v9 setObject:v6 forKeyedSubscript:@"Previous Error Response"];
        v10 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:5888 userInfo:v9];

        goto LABEL_20;
      }

      v4 = 0;
    }

    usleep(0x2710u);
    usleep(0x3E8u);
    ++v3;
  }

  while (v3 != 51);
  v6 = [(USBCPDAccess *)self LocalExecuteCommand:1414677057];

  usleep(0x4C4B40u);
  if (v6)
  {
    goto LABEL_17;
  }

  v7 = +[NSMutableDictionary dictionary];
  v8 = 5890;
LABEL_15:
  v6 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:v8 userInfo:v7];

LABEL_16:
  if (v6)
  {
    goto LABEL_17;
  }

LABEL_19:
  v10 = 0;
LABEL_20:

  return v10;
}

- (id)LocalExecuteCommand:(unsigned int)command withDelay:(unsigned int)delay canRetry:(BOOL)retry canRecover:(BOOL)recover
{
  recoverCopy = recover;
  v9 = 0;
  v10 = 0;
  v26 = HIBYTE(command);
  memset(v30, 0, sizeof(v30));
  v29 = 0u;
  v28 = 0u;
  v25 = BYTE2(command);
  v11 = BYTE1(command);
  commandCopy = command;
  v13 = command & 0xFF000000 | (BYTE2(command) << 16) | (BYTE1(command) << 8) | command;
  do
  {
    v27 = v13;
    v14 = [(USBCPDAccess *)self IECSWriteReg:1 buffer:&v27 bufferLength:4 registerAddress:8 canRetry:retry canRecover:recoverCopy];

    if (v14)
    {
      v15 = +[NSMutableDictionary dictionary];
      [v15 setObject:v14 forKeyedSubscript:@"Previous Error Response"];
      v16 = [NSString stringWithFormat:@"%c%c%c%c (register write)", commandCopy, v11, v25, v26];
      [v15 setObject:v16 forKeyedSubscript:@"Command Attempted"];

      v10 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:5123 userInfo:v15];

      usleep(0x2710u);
      if (!v10)
      {
        goto LABEL_17;
      }
    }

    else
    {
      usleep(delay);
      localPollForIdle = [(USBCPDAccess *)self localPollForIdle];
      if (!localPollForIdle)
      {
        v10 = 0;
        goto LABEL_17;
      }

      v18 = localPollForIdle;
      v19 = +[NSMutableDictionary dictionary];
      [v19 setObject:v18 forKeyedSubscript:@"Previous Error Response"];
      v20 = [NSString stringWithFormat:@"%c%c%c%c (idle after)", commandCopy, v11, v25, v26];
      [v19 setObject:v20 forKeyedSubscript:@"Command Attempted"];

      v10 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:5122 userInfo:v19];

      if (!v10)
      {
        goto LABEL_17;
      }
    }

    if (recoverCopy && ![(USBCPDAccess *)self didFailErrorRecovery:v10])
    {
      if (![(USBCPDAccess *)self attemptErrorRecovery:v10 lastAttempt:v9 == 3])
      {
        break;
      }
    }

    else if (!retry)
    {
      break;
    }

    if (v9 == 3)
    {
      goto LABEL_17;
    }

    ++v9;
    retry = 1;
  }

  while (![(USBCPDAccess *)self didFailErrorRecovery:v10]);
  if (v9 == 3)
  {
    v21 = +[NSMutableDictionary dictionary];
    [v21 setObject:v10 forKeyedSubscript:@"Previous Error Response"];
    v22 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13064 userInfo:v21];

    v10 = v22;
  }

LABEL_17:

  return v10;
}

- (id)RemoteExecuteCommand:(unsigned int)command withDelay:(unsigned int)delay canRetry:(BOOL)retry canRecover:(BOOL)recover
{
  recoverCopy = recover;
  v9 = 0;
  v10 = 0;
  v27 = HIBYTE(command);
  memset(v31, 0, sizeof(v31));
  v30 = 0u;
  v29 = 0u;
  v11 = delay - 1;
  if (!delay)
  {
    v11 = 0;
  }

  v25 = v11;
  v26 = BYTE2(command);
  v12 = BYTE1(command);
  commandCopy = command;
  v14 = command & 0xFF000000 | (BYTE2(command) << 16) | (BYTE1(command) << 8) | command;
  while (1)
  {
    v28 = v14;
    v15 = [(USBCPDAccess *)self IECSWriteReg:0 buffer:&v28 bufferLength:4 registerAddress:8 canRetry:retry canRecover:recoverCopy];

    if (!v15)
    {
      break;
    }

    v16 = +[NSMutableDictionary dictionary];
    [v16 setObject:v15 forKeyedSubscript:@"Previous Error Response"];
    v17 = [NSString stringWithFormat:@"%c%c%c%c (register write)", commandCopy, v12, v26, v27];
    [v16 setObject:v17 forKeyedSubscript:@"Command Attempted"];

    v10 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:5379 userInfo:v16];

    usleep(0);
    if (!v10)
    {
      goto LABEL_19;
    }

    if (recoverCopy && ![(USBCPDAccess *)self didFailErrorRecovery:v10])
    {
      if (![(USBCPDAccess *)self attemptErrorRecovery:v10 lastAttempt:v9 == 3])
      {
        goto LABEL_16;
      }
    }

    else if (!retry)
    {
      goto LABEL_16;
    }

    if (v9 == 3)
    {
      goto LABEL_19;
    }

    ++v9;
    retry = 1;
    if ([(USBCPDAccess *)self didFailErrorRecovery:v10])
    {
      goto LABEL_16;
    }
  }

  usleep(v25);
  remotePollForIdle = [(USBCPDAccess *)self remotePollForIdle];
  if (!remotePollForIdle)
  {
    v10 = 0;
    goto LABEL_19;
  }

  v19 = remotePollForIdle;
  v20 = +[NSMutableDictionary dictionary];
  [v20 setObject:v19 forKeyedSubscript:@"Previous Error Response"];
  v21 = [NSString stringWithFormat:@"%c%c%c%c (idle after)", commandCopy, v12, v26, v27];
  [v20 setObject:v21 forKeyedSubscript:@"Command Attempted"];

  v10 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:5378 userInfo:v20];

  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (v9 == 3)
  {
    v22 = +[NSMutableDictionary dictionary];
    [v22 setObject:v10 forKeyedSubscript:@"Previous Error Response"];
    v23 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13065 userInfo:v22];

    v10 = v23;
  }

LABEL_19:

  return v10;
}

@end