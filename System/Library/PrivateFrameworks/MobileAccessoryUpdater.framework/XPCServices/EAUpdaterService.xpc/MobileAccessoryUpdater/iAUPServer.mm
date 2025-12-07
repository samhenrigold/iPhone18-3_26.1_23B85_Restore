@interface iAUPServer
- (BOOL)personalizationComplete;
- (char)assetTypeString:(int)string;
- (char)commandString:(int)string;
- (char)parserStateString:(int)string;
- (char)serverStateString:(int)string;
- (id)initInstanceWithByteEscape:(BOOL)escape;
- (id)processManifestProperties:(char *)properties length:(unsigned int)length;
- (id)sendCommand:(unsigned __int8)command payload:(char *)payload payload_length:(unsigned __int16)payload_length;
- (unsigned)appendByteWithEscaping:(unsigned __int8)escaping toObject:(id *)object;
- (void)accessoryDisconnected;
- (void)appendToLog:(id)log;
- (void)dealloc;
- (void)logCommand:(unsigned __int8)command payload:(char *)payload length:(unsigned int)length;
- (void)processDataFromAccessory:(id)accessory;
- (void)processDownloadCompleteCommand:(char *)command length:(unsigned int)length;
- (void)processIdentifyCommand:(char *)command length:(unsigned int)length;
- (void)processInByte:(unsigned __int8)byte;
- (void)processInTelegram;
- (void)processNotifyAccessoryErrorCommand:(char *)command length:(unsigned int)length;
- (void)processPersonalizationInfo:(char *)info length:(unsigned int)length;
- (void)processRequestDownloadCommand:(char *)command length:(unsigned int)length;
- (void)resetParser;
- (void)setFirmwareBundle:(id)bundle;
- (void)setHSModel:(id)model fallbackModel:(id)fallbackModel error:(id)error;
- (void)setParserState:(int)state;
- (void)setResumeInfo:(char *)info length:(unsigned int)length;
@end

@implementation iAUPServer

- (id)initInstanceWithByteEscape:(BOOL)escape
{
  v6.receiver = self;
  v6.super_class = iAUPServer;
  v4 = [(iAUPServer *)&v6 init];
  if (v4)
  {
    *(v4 + 7) = [[NSMutableData alloc] initWithCapacity:32];
    *(v4 + 1) = 0;
    *(v4 + 4) = 0;
    v4[25] = escape;
    v4[26] = 0;
    *(v4 + 42) = 0;
    *(v4 + 87) = 256;
    [v4 resetParser];
    [v4 setServerState:1];
    *(v4 + 20) = 0;
    *(v4 + 18) = 0;
    memset_pattern16(v4 + 64, &unk_100013E70, 8uLL);
    NSLog(@"%s(): iAUPServer init byteEscape=%d serverState=%s parserState=%s\n", "-[iAUPServer initInstanceWithByteEscape:]", v4[25], [v4 serverStateString:*(v4 + 4)], objc_msgSend(v4, "parserStateString:", *(v4 + 5)));
  }

  return v4;
}

- (void)dealloc
{
  NSLog(@"%s(): iAUPServer dealloc\n", a2, "[iAUPServer dealloc]");

  self->_telegramDataIn = 0;
  v3.receiver = self;
  v3.super_class = iAUPServer;
  [(iAUPServer *)&v3 dealloc];
}

- (void)resetParser
{
  self->_escapeInProgress = 0;
  [(NSMutableData *)self->_telegramDataIn setLength:0];
  if (self->_byteEscape)
  {
    v3 = 4294967294;
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

  [(iAUPServer *)self setParserState:v3];
}

- (void)setParserState:(int)state
{
  v3 = *&state;
  parserState = [(iAUPServer *)self parserState];
  if (v3 < 1 || parserState <= 0)
  {
    NSLog(@"[Parser State]: %s -> %s", [(iAUPServer *)self parserStateString:self->_parserState], [(iAUPServer *)self parserStateString:v3]);
  }

  self->_parserState = v3;
}

- (void)appendToLog:(id)log
{
  delegate = [(iAUPServer *)self delegate];

  [(iAUPServerDelegate *)delegate logStatusString:log];
}

- (void)setFirmwareBundle:(id)bundle
{
  firmwareBundle = self->_firmwareBundle;
  if (firmwareBundle)
  {

    self->_firmwareBundle = 0;
  }

  self->_firmwareBundle = bundle;
  if ([(iAUPServer *)self serverState]!= 1 && [(iAUPServer *)self serverState]!= 7)
  {
    [(iAUPServer *)self resetParser];

    [(iAUPServer *)self setServerState:6];
  }
}

- (void)logCommand:(unsigned __int8)command payload:(char *)payload length:(unsigned int)length
{
  if (command > 95)
  {
    if (command <= 191)
    {
      if ((command - 128) >= 8)
      {
        if ((command - 96) >= 4)
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      }
    }

    else
    {
      if (command == 192)
      {
        v7 = @"Bootloader entry command acknowledged";
        goto LABEL_30;
      }

      if (command == 193)
      {
        v7 = @"App re-entry command acknowledged";
        goto LABEL_30;
      }

      if (command != 194)
      {
        goto LABEL_35;
      }
    }

LABEL_24:
    v9 = [NSString stringWithFormat:@"Command: 0x%X %s", command, [(iAUPServer *)self commandString:command, payload, *&length]];
LABEL_29:
    v7 = v9;
    goto LABEL_30;
  }

  if (command > 4)
  {
    v6 = (command - 6);
    if (v6 > 0x3C)
    {
      goto LABEL_33;
    }

    if (((1 << (command - 6)) & 0x3C000000) == 0)
    {
      if (((1 << (command - 6)) & 0x1400000000000003) == 0)
      {
        if (v6 == 59)
        {
          v7 = @"Setting app re-entry";
          goto LABEL_30;
        }

LABEL_33:
        if (command == 5)
        {
          v9 = [NSString stringWithFormat:@"Downloading [%d] block 0x%04X", *payload, __rev16(*(payload + 1))];
          goto LABEL_29;
        }

LABEL_35:
        v9 = [NSString stringWithFormat:@"Unknown command received (%02X)", command, v10];
        goto LABEL_29;
      }

      goto LABEL_24;
    }

LABEL_28:
    v9 = [NSString stringWithFormat:@"Command: %s", [(iAUPServer *)self commandString:command, payload, *&length], v10];
    goto LABEL_29;
  }

  if ((command - 2) < 3 || !command)
  {
    goto LABEL_24;
  }

  if (command != 1)
  {
    goto LABEL_35;
  }

  v8 = *payload;
  if (v8 > 0x7F)
  {
    if (*payload <= 0x83u)
    {
      if (*payload <= 0x81u)
      {
        if (v8 == 128)
        {
          v7 = @"Bad product ID code!";
          goto LABEL_30;
        }

        if (v8 == 129)
        {
          v7 = @"Bad image start address!";
          goto LABEL_30;
        }

LABEL_67:
        v7 = @"Process status unknown";
        goto LABEL_30;
      }

      if (v8 == 130)
      {
        v7 = @"Bad image end address!";
      }

      else
      {
        v7 = @"Bad object size!";
      }
    }

    else
    {
      if (*payload > 0x85u)
      {
        switch(v8)
        {
          case 0x86u:
            v7 = @"Signature verification failure!";
            goto LABEL_30;
          case 0x87u:
            v7 = @"FW image hash mismatch!";
            goto LABEL_30;
          case 0x88u:
            v7 = @"General update failure!";
            goto LABEL_30;
        }

        goto LABEL_67;
      }

      if (v8 == 132)
      {
        v7 = @"Cert validation failure!";
      }

      else
      {
        v7 = @"Not an accessory update cert!";
      }
    }
  }

  else if (*payload <= 3u)
  {
    if (*payload > 1u)
    {
      if (v8 == 2)
      {
        v7 = @"Certificate received";
      }

      else
      {
        v7 = @"Certificate validated";
      }
    }

    else if (*payload)
    {
      v7 = @"Metadata received";
    }

    else
    {
      v7 = @"Bootloader initialized";
    }
  }

  else
  {
    if (*payload > 5u)
    {
      switch(v8)
      {
        case 6u:
          v7 = @"Firmware mass erased";
          goto LABEL_30;
        case 7u:
          v7 = @"Firmware image installed";
          goto LABEL_30;
        case 8u:
          v7 = @"Firmware image validated";
          goto LABEL_30;
      }

      goto LABEL_67;
    }

    if (v8 == 4)
    {
      v7 = @"Hash received";
    }

    else
    {
      v7 = @"Signature verified";
    }
  }

LABEL_30:

  [(iAUPServer *)self appendToLog:v7, payload, *&length];
}

- (void)processDataFromAccessory:(id)accessory
{
  bytes = [accessory bytes];
  if ([accessory length])
  {
    v6 = 1;
    do
    {
      v7 = *bytes++;
      [(iAUPServer *)self processInByte:v7];
    }

    while ([accessory length] > v6++);
  }
}

- (void)processInByte:(unsigned __int8)byte
{
  byteCopy = byte;
  byteCopy2 = byte;
  if (self->_byteEscape)
  {
    if (byte == 125)
    {
      parserState = self->_parserState;
      v6 = [(iAUPServer *)self parserStateString:parserState];
      if (parserState < 0xFFFFFFFE)
      {
        NSLog(@"[Parser] escaping %s\n", v6);
        self->_escapeInProgress = 1;
        return;
      }

      NSLog(@"[Parser] Invalid StartByte in %s & byteEscape=YES\n", v6);
      goto LABEL_28;
    }

    if (self->_escapeInProgress)
    {
      if (self->_parserState >= 0xFFFFFFFE)
      {
        NSLog(@"[Parser] ??? %s when byteEscape=YES c=0x%02x\n", [(iAUPServer *)self parserStateString:?], byte);
        goto LABEL_28;
      }

      NSLog(@"[Parser] De-escaped [0x%02x -> 0x%02x] %s\n", byte, byte ^ 0x20u, [(iAUPServer *)self parserStateString:?]);
      byteCopy2 = byteCopy ^ 0x20;
      self->_escapeInProgress = 0;
      byteCopy = byteCopy ^ 0x20;
    }
  }

  v7 = self->_parserState;
  if (v7 <= -3)
  {
    if (v7 == -4)
    {
      self->_telegramChecksum += byteCopy;
      v9 = self->_telegramLength | byteCopy;
      self->_telegramLength = v9;
      selfCopy4 = self;
      goto LABEL_32;
    }

    if (v7 == -3)
    {
      self->_telegramChecksum = byteCopy;
      self->_telegramLength = byteCopy << 8;
      selfCopy4 = self;
      v9 = 4294967292;
      goto LABEL_32;
    }

LABEL_35:
    [(NSMutableData *)self->_telegramDataIn appendBytes:&byteCopy2 length:1];
    self->_telegramChecksum += byteCopy2;
    [(iAUPServer *)self setParserState:[(iAUPServer *)self parserState]- 1];
    return;
  }

  if (v7 == -2)
  {
    if (self->_byteEscape)
    {
      v10 = 126;
    }

    else
    {
      v10 = 92;
    }

    if (byteCopy == v10)
    {
      selfCopy4 = self;
      v9 = 4294967293;
      goto LABEL_32;
    }

    NSLog(@"[Parser] Invalid 0x%02x byte in %s & byteEscape=%d\n", byteCopy, [(iAUPServer *)self parserStateString:4294967294], self->_byteEscape);
LABEL_28:

    [(iAUPServer *)self resetParser];
    return;
  }

  if (!v7)
  {
    v11 = (self->_telegramChecksum + byteCopy);
    self->_telegramChecksum += byteCopy;
    if (v11)
    {
      NSLog(@"[Parser] Invalid Checksum c=0x%02x\n", byteCopy, v12, v13);
    }

    else
    {
      [(iAUPServer *)self processInTelegram];
    }

    goto LABEL_28;
  }

  if (v7 != -1)
  {
    goto LABEL_35;
  }

  if (self->_byteEscape)
  {
    sub_10000D3DC(self);
    goto LABEL_28;
  }

  if (byteCopy != 255)
  {
    sub_10000D410(byteCopy, self);
    goto LABEL_28;
  }

  selfCopy4 = self;
  v9 = 4294967294;
LABEL_32:

  [(iAUPServer *)selfCopy4 setParserState:v9];
}

- (void)processInTelegram
{
  mutableBytes = [(NSMutableData *)self->_telegramDataIn mutableBytes];
  v4 = (mutableBytes + 1);
  v5 = *mutableBytes;
  v6 = [(NSMutableData *)self->_telegramDataIn length]- 1;
  [(iAUPServer *)self logCommand:v5 payload:mutableBytes + 1 length:v6];
  if (v5 > 6)
  {
    if (v5 <= 33)
    {
      switch(v5)
      {
        case 7:

          [(iAUPServer *)self setResumeInfo:v4 length:v6];
          break;
        case 0x20:

          [(iAUPServer *)self processIdentifyCommand:v4 length:v6];
          break;
        case 0x21:

          [(iAUPServer *)self processRequestDownloadCommand:v4 length:v6];
          break;
      }

      return;
    }

    if (v5 <= 192)
    {
      if (v5 == 34)
      {

        [(iAUPServer *)self processDownloadCompleteCommand:v4 length:v6];
      }

      else if (v5 == 35)
      {

        [(iAUPServer *)self processNotifyAccessoryErrorCommand:v4 length:v6];
      }

      return;
    }

    if (v5 != 193)
    {
      if (v5 == 194)
      {

        [(iAUPServer *)self processPersonalizationInfo:v4 length:v6];
      }

      return;
    }

    if (!self->_ackAppReentry)
    {
      return;
    }

    goto LABEL_55;
  }

  if (v5 > 2)
  {
    if (v5 <= 4)
    {
      if (v5 != 3)
      {
        v7 = *v4;
        if (!*v4)
        {
          if ([(FirmwareBundle *)self->_firmwareBundle firmwareImage]|| [(FirmwareBundle *)self->_firmwareBundle firmwareLocalURL])
          {
            goto LABEL_78;
          }

          v7 = *v4;
        }

        if (v7 == 2)
        {
          if ([(FirmwareBundle *)self->_firmwareBundle hash])
          {
            goto LABEL_78;
          }

          v7 = *v4;
        }

        if (v7 == 1)
        {
          if ([(FirmwareBundle *)self->_firmwareBundle certificate])
          {
            goto LABEL_78;
          }

          v7 = *v4;
        }

        if (v7 != 3 || ![(FirmwareBundle *)self->_firmwareBundle signature])
        {
          [(iAUPServer *)self appendToLog:@"COMMAND_GetObjectSize: request for empty object."];
          v8 = [[NSError alloc] initWithDomain:@"com.apple.iAUPServer.ErrorDomain" code:-4 userInfo:0];
          v62 = @"Event";
          v63 = @"com.apple.fud.updateFailed";
          v9 = &v63;
          v10 = &v62;
LABEL_69:
          [(iAUPServerDelegate *)self->_delegate firmwareUpdateComplete:[NSDictionary error:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:v9 forKeys:v10 count:1], v8];

          return;
        }

LABEL_78:
        v29 = 0;
        v30 = *v4;
        if (v30 > 1)
        {
          if (v30 == 2)
          {
            signature = [(FirmwareBundle *)self->_firmwareBundle hash];
            goto LABEL_90;
          }

          if (v30 == 3)
          {
            signature = [(FirmwareBundle *)self->_firmwareBundle signature];
            goto LABEL_90;
          }
        }

        else if (*v4)
        {
          if (v30 == 1)
          {
            signature = [(FirmwareBundle *)self->_firmwareBundle certificate];
LABEL_90:
            v29 = bswap32([(NSData *)signature length]);
          }
        }

        else
        {
          v29 = bswap32([(FirmwareBundle *)self->_firmwareBundle firmwareImageSize]);
        }

        v48 = *v4;
        v49 = v29;
        selfCopy4 = self;
        v28 = 132;
LABEL_92:
        [(iAUPServer *)selfCopy4 sendCommand:v28 payload:&v48 payload_length:5];
        return;
      }

      v17 = bswap32(*v4);
      self->_firmwareImageBaseTransferAddress = v17;
      if (v17 < [(FirmwareBundle *)self->_firmwareBundle firmwareImageBaseAddress]|| (firmwareImageBaseTransferAddress = self->_firmwareImageBaseTransferAddress, v19 = firmwareImageBaseTransferAddress - [(FirmwareBundle *)self->_firmwareBundle firmwareImageBaseAddress], v19 >= [(FirmwareBundle *)self->_firmwareBundle firmwareImageSize]))
      {
        [(iAUPServer *)self appendToLog:@"COMMAND_SetBaseImageTransferAddress: Bound check failed"];
        v8 = [[NSError alloc] initWithDomain:@"com.apple.iAUPServer.ErrorDomain" code:-2 userInfo:0];
        v64 = @"Event";
        v65 = @"com.apple.fud.updateFailed";
        v9 = &v65;
        v10 = &v64;
        goto LABEL_69;
      }

      selfCopy5 = self;
      v13 = 131;
      v14 = (mutableBytes + 1);
      v15 = 4;
      goto LABEL_34;
    }

    if (v5 != 5)
    {
      v16 = *v4;
      self->_accessoryCapabilities = v16;
      NSLog(@"_accessoryCapabilities set to 0x%x\n", v16);
      selfCopy5 = self;
      v13 = 134;
      v14 = 0;
      v15 = 0;
LABEL_34:

      [(iAUPServer *)selfCopy5 sendCommand:v13 payload:v14 payload_length:v15];
      return;
    }

    v20 = *v4;
    if (v20 > 3)
    {
      return;
    }

    v21 = *(mutableBytes + 2);
    LODWORD(mutableBytes) = self->objectBlockTransferSizes[v20];
    firmwareBundle = self->_firmwareBundle;
    if (*v4)
    {
      if (v20 == 1)
      {
        if ([(FirmwareBundle *)firmwareBundle certificate])
        {
          firmwareImageSize = [(NSData *)[(FirmwareBundle *)self->_firmwareBundle certificate] length];
          certificate = [(FirmwareBundle *)self->_firmwareBundle certificate];
          goto LABEL_98;
        }
      }

      else if (v20 == 3)
      {
        if ([(FirmwareBundle *)firmwareBundle signature])
        {
          firmwareImageSize = [(NSData *)[(FirmwareBundle *)self->_firmwareBundle signature] length];
          certificate = [(FirmwareBundle *)self->_firmwareBundle signature];
LABEL_98:
          bytes = [(NSData *)certificate bytes];
          goto LABEL_99;
        }
      }

      else if ([(FirmwareBundle *)firmwareBundle hash])
      {
        firmwareImageSize = [(NSData *)[(FirmwareBundle *)self->_firmwareBundle hash] length];
        certificate = [(FirmwareBundle *)self->_firmwareBundle hash];
        goto LABEL_98;
      }
    }

    else if ([(FirmwareBundle *)firmwareBundle firmwareImage]|| [(FirmwareBundle *)self->_firmwareBundle firmwareLocalURL])
    {
      firmwareImageSize = [(FirmwareBundle *)self->_firmwareBundle firmwareImageSize];
      v32 = [(NSData *)[(FirmwareBundle *)self->_firmwareBundle firmwareImage] bytes]+ self->_firmwareImageBaseTransferAddress;
      bytes = &v32[[(FirmwareBundle *)self->_firmwareBundle]];
LABEL_99:
      if (!bytes && ![(FirmwareBundle *)self->_firmwareBundle firmwareLocalURL]|| !firmwareImageSize)
      {
        [(iAUPServer *)self appendToLog:[NSString stringWithFormat:@"COMMAND_GetObjectBlock Failed, Invalid object_type (%c) or Image (object_total_size = %u)", v20, firmwareImageSize]];
        v8 = [[NSError alloc] initWithDomain:@"com.apple.iAUPServer.ErrorDomain" code:-4 userInfo:0];
        v58 = @"Event";
        v59 = @"com.apple.fud.updateFailed";
        v9 = &v59;
        v10 = &v58;
        goto LABEL_69;
      }

      v34 = (bswap32(v21) >> 16) * mutableBytes;
      v35 = firmwareImageSize - v34;
      if (firmwareImageSize < v34)
      {
        [(iAUPServer *)self appendToLog:@"COMMAND_GetObjectBlock: bound check failed: block_offset * block_size > object_total_size"];
        v8 = [[NSError alloc] initWithDomain:@"com.apple.iAUPServer.ErrorDomain" code:-2 userInfo:0];
        v56 = @"Event";
        v57 = @"com.apple.fud.updateFailed";
        v9 = &v57;
        v10 = &v56;
        goto LABEL_69;
      }

      if (v35 >= mutableBytes)
      {
        mutableBytes = mutableBytes;
      }

      else
      {
        mutableBytes = v35;
      }

      v36 = malloc_type_malloc((mutableBytes + 3), 0xB287C21EuLL);
      if (!v36)
      {
        [(iAUPServer *)self appendToLog:@"COMMAND_GetObjectBlock: malloc failed."];
        v8 = [[NSError alloc] initWithDomain:@"com.apple.iAUPServer.ErrorDomain" code:-3 userInfo:0];
        v54 = @"Event";
        v55 = @"com.apple.fud.updateFailed";
        v9 = &v55;
        v10 = &v54;
        goto LABEL_69;
      }

      v37 = v36;
      if (v20 || ![(FirmwareBundle *)self->_firmwareBundle firmwareLocalURL])
      {
        v38 = *v4;
        v39 = &bytes[v34];
        v37[2] = v4[2];
        *v37 = v38;
        v40 = v37 + 3;
        v41 = mutableBytes;
      }

      else
      {
        v43 = [(FirmwareBundle *)self->_firmwareBundle getFirmwareDataInRange:v34 error:mutableBytes, 0];
        if (!v43)
        {
          [(iAUPServer *)self appendToLog:@"COMMAND_GetObjectBlock: Failed to read firmware data from file"];
          v47 = [[NSError alloc] initWithDomain:@"com.apple.iAUPServer.ErrorDomain" code:-4 userInfo:0];
          v52 = @"Event";
          v53 = @"com.apple.fud.updateFailed";
          [(iAUPServerDelegate *)self->_delegate firmwareUpdateComplete:[NSDictionary error:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:&v52 forKeys:1 count:?], v47];

          free(v37);
          return;
        }

        v44 = v43;
        v45 = *v4;
        v37[2] = v4[2];
        *v37 = v45;
        bytes2 = [v43 bytes];
        v41 = [v44 length];
        v40 = v37 + 3;
        v39 = bytes2;
      }

      memcpy(v40, v39, v41);
      [(iAUPServer *)self sendCommand:133 payload:v37 payload_length:(mutableBytes + 3)];
      free(v37);
      self->_totalBytesDownloadedInCurrentSession += mutableBytes;
      if ((self->_accessoryCapabilities & 1) == 0 && !self->_startEventSent)
      {
        v51[0] = @"com.apple.fud.updateStarted";
        v50[0] = @"Event";
        v50[1] = @"resumeCount";
        v51[1] = [NSNumber numberWithUnsignedInt:0];
        v50[2] = @"cumulativeUpdateTime";
        v51[2] = [NSNumber numberWithUnsignedInt:0];
        v50[3] = @"cumulativeCloakTime";
        v51[3] = [NSNumber numberWithUnsignedInt:0];
        v50[4] = @"totalBytesForCompleteUpdate";
        v51[4] = [NSNumber numberWithUnsignedInt:[(FirmwareBundle *)self->_firmwareBundle firmwareImageSize]];
        v50[5] = @"totalBytesDownloadedSoFar";
        v51[5] = [NSNumber numberWithUnsignedInt:0];
        [(iAUPServerDelegate *)self->_delegate handleFirmwareUpdateStatus:[NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:6]];
        self->_startEventSent = 1;
      }

      if (!v20)
      {
        delegate = self->_delegate;
        if (delegate)
        {
          [(iAUPServerDelegate *)delegate updateProgress:(mutableBytes + v34) / firmwareImageSize * 100.0];
        }
      }

      return;
    }

    [(iAUPServer *)self appendToLog:@"COMMAND_GetObjectBlock: request for empty object."];
    v8 = [[NSError alloc] initWithDomain:@"com.apple.iAUPServer.ErrorDomain" code:-4 userInfo:0];
    v60 = @"Event";
    v61 = @"com.apple.fud.updateFailed";
    v9 = &v61;
    v10 = &v60;
    goto LABEL_69;
  }

  if (!v5)
  {
    v48 = *v4;
    if (v48 == 1)
    {
      v26 = bswap32([(FirmwareBundle *)self->_firmwareBundle productIDCode]);
    }

    else
    {
      v26 = 0;
    }

    v49 = v26;
    selfCopy4 = self;
    v28 = 128;
    goto LABEL_92;
  }

  if (v5 != 1)
  {
    v11 = *v4;
    if (v11 > 3)
    {
      return;
    }

    self->objectBlockTransferSizes[v11] = bswap32(*(mutableBytes + 2)) >> 16;
    selfCopy5 = self;
    v13 = 130;
    v14 = (mutableBytes + 1);
    v15 = 3;
    goto LABEL_34;
  }

  if (*v4 == 136)
  {
    [(iAUPServer *)self appendToLog:@"ProcessAbort_GeneralFailure from accessory. Cleaning up."];
    v8 = [[NSError alloc] initWithDomain:@"com.apple.iAUPServer.ErrorDomain" code:-1 userInfo:0];
    v66 = @"Event";
    v67 = @"com.apple.fud.updateFailed";
    v9 = &v67;
    v10 = &v66;
    goto LABEL_69;
  }

  [(iAUPServer *)self sendCommand:129 payload:v4 payload_length:1];
  if (*v4 == 8 && self->_iAUPVersion == 1)
  {
    [(iAUPServer *)self sendCommand:65 payload:0 payload_length:0];
    if (!self->_ackAppReentry)
    {
LABEL_55:
      v25 = self->_delegate;

      [(iAUPServerDelegate *)v25 firmwareUpdateComplete:0 error:0];
    }
  }
}

- (unsigned)appendByteWithEscaping:(unsigned __int8)escaping toObject:(id *)object
{
  escapingCopy = escaping;
  if ((escaping - 125) <= 1 && self->_byteEscape)
  {
    escapingCopy2 = escaping;
    v6[0] = 125;
    v6[1] = escaping & 0x5F;
    [*object appendBytes:v6 length:2];
  }

  else
  {
    [*object appendBytes:&escapingCopy length:1];
    return escapingCopy;
  }

  return escapingCopy2;
}

- (id)sendCommand:(unsigned __int8)command payload:(char *)payload payload_length:(unsigned __int16)payload_length
{
  LODWORD(v5) = payload_length;
  commandCopy = command;
  [iAUPServer logCommand:"logCommand:payload:length:" payload:? length:?];
  v9 = [[NSMutableData alloc] initWithCapacity:(v5 + 4)];
  v10 = v9;
  v18 = v9;
  if (self->_byteEscape)
  {
    v11 = 126;
  }

  else
  {
    v19 = -1;
    [v9 appendBytes:&v19 length:1];
    v11 = 92;
  }

  v19 = v11;
  [v10 appendBytes:&v19 length:{1, v18}];
  v12 = [(iAUPServer *)self appendByteWithEscaping:((v5 + 1) >> 8) toObject:&v18];
  v13 = [(iAUPServer *)self appendByteWithEscaping:(v5 + 1) toObject:&v18]+ v12;
  v14 = v13 + [(iAUPServer *)self appendByteWithEscaping:commandCopy toObject:&v18];
  if (v5)
  {
    v5 = v5;
    do
    {
      v15 = *payload++;
      v14 += [(iAUPServer *)self appendByteWithEscaping:v15 toObject:&v18];
      --v5;
    }

    while (v5);
  }

  [(iAUPServer *)self appendByteWithEscaping:-v14 toObject:&v18];
  v16 = [(iAUPServerDelegate *)self->_delegate writeData:v18];

  return v16;
}

- (id)processManifestProperties:(char *)properties length:(unsigned int)length
{
  serverState = self->_serverState;
  if (serverState != 7)
  {
    NSLog(@"[ProcessManifest] Invalid State=%s\n", [(iAUPServer *)self serverStateString:serverState, *&length]);
    return 0;
  }

  if (length - 1 <= 3)
  {
    NSLog(@"%s: Invalid payload length=%d\n", "[iAUPServer processManifestProperties:length:]", length);
    return 0;
  }

  v7 = bswap32(*(properties + 1));
  getWhitelistedPersonalizationFields = [(iAUPServerDelegate *)self->_delegate getWhitelistedPersonalizationFields];
  v9 = v7 & getWhitelistedPersonalizationFields;
  if ((~(v7 & getWhitelistedPersonalizationFields) & 0x5F) != 0)
  {
    NSLog(@"%s: Invalid personalization properties from accessory = %08x\n", "[iAUPServer processManifestProperties:length:]", v7 & getWhitelistedPersonalizationFields);
    return 0;
  }

  if (length - 5 <= 3)
  {
    NSLog(@"%s: BoardId not present in remaining bytes=%d\n", "[iAUPServer processManifestProperties:length:]", length - 5);
    return 0;
  }

  v10 = bswap32(*(properties + 5));
  if (!v10)
  {
    NSLog(@"%s: Invalid boardID = %d\n", "[iAUPServer processManifestProperties:length:]", 0);
    return 0;
  }

  if (length - 9 <= 3)
  {
    NSLog(@"%s: ChipId not present in remaining bytes=%d\n", "[iAUPServer processManifestProperties:length:]", length - 9);
    return 0;
  }

  v11 = bswap32(*(properties + 9));
  if (!v11)
  {
    NSLog(@"%s: Invalid chipID = %d\n", "[iAUPServer processManifestProperties:length:]", 0);
    return 0;
  }

  if (length - 13 <= 7)
  {
    NSLog(@"%s: Ecid not present in remaining bytes=%d\n", "[iAUPServer processManifestProperties:length:]", length - 13);
    return 0;
  }

  v12 = bswap64(*(properties + 13));
  if (!v12)
  {
    NSLog(@"%s: Invalid ecID = %llu\n", "[iAUPServer processManifestProperties:length:]", 0);
    return 0;
  }

  if (length == 21)
  {
    NSLog(@"%s: SecurityDomain not present in remaining bytes=%d\n", "[iAUPServer processManifestProperties:length:]", 0);
    return 0;
  }

  if (length == 22)
  {
    NSLog(@"%s: ProductionMode not present in remaining bytes=%d\n", "[iAUPServer processManifestProperties:length:]", 0);
    return 0;
  }

  v13 = properties[21];
  v14 = properties[22];
  if ((v9 & 0x20) != 0)
  {
    if (length == 23)
    {
LABEL_45:
      NSLog(@"%s: SecurityMode not present in remaining bytes=%d\n", "[iAUPServer processManifestProperties:length:]", 0);
      return 0;
    }

    v15 = properties[23] != 0;
    v16 = 24;
  }

  else
  {
    v15 = 0;
    v16 = 23;
  }

  if (length - v16 <= 0x1F)
  {
    NSLog(@"%s: Nonce not present in remaining bytes=%d\n", "[iAUPServer processManifestProperties:length:]", length - v16);
    return 0;
  }

  v27 = v15;
  v17 = [NSData dataWithBytes:&properties[v16] length:32];
  if (!v17)
  {
    NSLog(@"%s: Invalid nonce from accessory", "[iAUPServer processManifestProperties:length:]");
    return 0;
  }

  v18 = v17;
  v19 = v16 | 0x20;
  if ((v9 & 0x80) != 0)
  {
    if (v19 == length)
    {
      NSLog(@"%s: ChipEpoch not present in remaining bytes=%d\n", "[iAUPServer processManifestProperties:length:]", 0);
      return 0;
    }

    v22 = properties[v19];
    LODWORD(v19) = v16 + 33;
    v20 = v22;
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  v20 = 0;
  if ((v9 & 0x100) != 0)
  {
LABEL_23:
    if (v19 != length)
    {
      v21 = properties[v19] != 0;
      goto LABEL_25;
    }

    goto LABEL_45;
  }

LABEL_20:
  v21 = 0;
LABEL_25:
  v28[0] = @"BoardID";
  v29[0] = [NSNumber numberWithUnsignedInt:v10];
  v28[1] = @"ChipID";
  v29[1] = [NSNumber numberWithUnsignedInt:v11];
  v28[2] = @"ECID";
  v29[2] = [NSNumber numberWithUnsignedLong:v12];
  v28[3] = @"securityDomain";
  v29[3] = [NSNumber numberWithUnsignedInt:v13];
  v28[4] = @"productionMode";
  v29[4] = [NSNumber numberWithBool:v14 != 0];
  v28[5] = @"securityMode";
  if ((v9 & 0x20) != 0)
  {
    v23 = [NSNumber numberWithBool:v27];
  }

  else
  {
    v23 = +[NSNull null];
  }

  v29[5] = v23;
  v29[6] = v18;
  v28[6] = @"nonceHash";
  v28[7] = @"chipEpoch";
  if ((v9 & 0x80) != 0)
  {
    v24 = [NSNumber numberWithUnsignedInt:v20];
  }

  else
  {
    v24 = +[NSNull null];
  }

  v29[7] = v24;
  v28[8] = @"enableMixMatch";
  v29[8] = [NSNumber numberWithBool:v21];
  v25 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:9];
  NSLog(@"manifest infoDict from accessory: %@", v25);
  return v25;
}

- (void)processPersonalizationInfo:(char *)info length:(unsigned int)length
{
  if (info && length)
  {
    if ((*info & 0xF) == 1)
    {
      v5 = [iAUPServer processManifestProperties:"processManifestProperties:length:" length:?];
      goto LABEL_7;
    }

    NSLog(@"[processPersonalizationInfo] Unsupported infoType = %d\n", a2, *info);
  }

  else
  {
    NSLog(@"[processPersonalizationInfo] Invalid payload length=%d\n", a2, length);
  }

  v5 = 0;
LABEL_7:
  delegate = self->_delegate;

  [(iAUPServerDelegate *)delegate processPersonalizationInfoFromAccessory:v5];
}

- (BOOL)personalizationComplete
{
  if (!self->_firmwareBundle)
  {
    v5 = @"[personalizationComplete] Invalid state: firmwareBundle = NULL";
    goto LABEL_12;
  }

  if (self->_currentAsset != 1)
  {
    v5 = @"[personalizationComplete] Invalid asset for processing personalization";
    goto LABEL_12;
  }

  if ([(iAUPServerDelegate *)self->_delegate getPersonalizationID]>= 0x10)
  {
    currentAsset = [(iAUPServerDelegate *)self->_delegate getPersonalizationID];
    NSLog(@"[RequestDownload] Sending COMMAND_GetPersonalizationInfo");
    v3 = 1;
    if (![(iAUPServer *)self sendCommand:66 payload:&currentAsset payload_length:1])
    {
      return v3;
    }

    v5 = @"[personalizationComplete] Failed to send next Personalization request";
LABEL_12:
    sub_10000D458(&v5->isa, &currentAsset, self);
    return 0;
  }

  currentAsset = self->_currentAsset;
  if ([(iAUPServer *)self sendCommand:97 payload:&currentAsset payload_length:1])
  {
    v5 = @"[personalizationComplete] Failed to send AckRequestDownload";
    goto LABEL_12;
  }

  [(iAUPServer *)self setServerState:6];
  return 1;
}

- (void)setResumeInfo:(char *)info length:(unsigned int)length
{
  if (self->_accessoryCapabilities)
  {
    if (self->_startEventSent)
    {
      NSLog(@"[setResumeInfo] Information already sent to delegate, skipping this\n", a2, info, *&length);
    }

    else if (length == 18)
    {
      v6 = *info;
      v7 = *(info + 2);
      v8 = *(info + 6);
      v9 = bswap32(*(info + 10));
      if (v9 > [(FirmwareBundle *)self->_firmwareBundle firmwareImageSize])
      {
        firmwareImageSize = [(FirmwareBundle *)self->_firmwareBundle firmwareImageSize];
        NSLog(@"[setResumeInfo] Invalid totalBytesForCompleteUpdate = %lu, firmwareImageSize = %lu\n", v18, v19, v20, v9, firmwareImageSize);
      }

      else
      {
        v13 = bswap32(*(info + 14));
        if (v13 >= v9)
        {
          NSLog(@"[setResumeInfo] Invalid totalBytesDownloadedSoFar = %lu, totalBytesForCompleteUpdate = %lu\n", v10, v11, v12, v13, v9);
        }

        else
        {
          v14 = __rev16(v6);
          v22[0] = @"resumeCount";
          v23[0] = [NSNumber numberWithUnsignedInt:v14];
          v22[1] = @"cumulativeUpdateTime";
          v23[1] = [NSNumber numberWithUnsignedInt:bswap32(v7)];
          v22[2] = @"cumulativeCloakTime";
          v23[2] = [NSNumber numberWithUnsignedInt:bswap32(v8)];
          v22[3] = @"totalBytesForCompleteUpdate";
          v23[3] = [NSNumber numberWithUnsignedInt:v9];
          v22[4] = @"totalBytesDownloadedSoFar";
          v23[4] = [NSNumber numberWithUnsignedInt:v13];
          v15 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:5]];
          v16 = v15;
          if (v14)
          {
            v17 = @"com.apple.fud.updateResumed";
          }

          else
          {
            v17 = @"com.apple.fud.updateStarted";
          }

          [(NSMutableDictionary *)v15 setObject:v17 forKey:@"Event"];
          [(iAUPServerDelegate *)self->_delegate handleFirmwareUpdateStatus:v16];
          self->_startEventSent = 1;
          [(iAUPServer *)self sendCommand:135 payload:0 payload_length:0];
        }
      }
    }

    else
    {
      NSLog(@"[setResumeInfo] Invalid payload length=%d\n", a2, info, *&length, length);
    }
  }

  else
  {
    NSLog(@"[setResumeInfo] accessory capabilities not set to allow resume\n", a2, info, *&length);
  }
}

- (void)processIdentifyCommand:(char *)command length:(unsigned int)length
{
  v4 = *&length;
  v7 = "valid";
  if (!command)
  {
    v7 = "nil";
  }

  NSLog(@"%s(): payload=%s length=%d \n", a2, "[iAUPServer processIdentifyCommand:length:]", v7, length);
  if (self->_serverState != 1)
  {
    NSLog(@"[Identify] Invalid State=%s\n", [(iAUPServer *)self serverStateString:?]);
LABEL_12:
    [(iAUPServer *)self setIAUPVersion:2];
    [(iAUPServer *)self setServerState:0];
    v8 = [[NSError alloc] initWithDomain:@"com.apple.iAUPServer.ErrorDomain" code:-1 userInfo:0];
    v9 = @"Event";
    v10 = @"com.apple.fud.updateFailed";
    [(iAUPServerDelegate *)self->_delegate firmwareUpdateComplete:[NSDictionary error:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:&v9 forKeys:1 count:?], v8];

    return;
  }

  if (v4 != 1)
  {
    NSLog(@"[Identify] Invalid payload length=%d\n", v4);
    goto LABEL_12;
  }

  if (*command != 2)
  {
    NSLog(@"[Identify] Invalid protocol version=%d\n", *command);
    goto LABEL_12;
  }

  [(iAUPServer *)self setIAUPVersion:2];
  [(iAUPServer *)self setServerState:2];
  [(iAUPServer *)self sendCommand:96 payload:0 payload_length:0];

  [(iAUPServer *)self setServerState:3];
}

- (void)processRequestDownloadCommand:(char *)command length:(unsigned int)length
{
  v4 = *&length;
  v7 = "valid";
  if (!command)
  {
    v7 = "nil";
  }

  NSLog(@"%s(): payload=%s length=%d \n", a2, "[iAUPServer processRequestDownloadCommand:length:]", v7, length);
  if (!v4)
  {
    NSLog(@"[RequestDownload] Invalid payload length=%d\n", 0);
    return;
  }

  if (*command >= 2u)
  {
    NSLog(@"[RequestDownload] Unsupported asset type=%d\n", *command);
    return;
  }

  if (self->_serverState != 3)
  {
    NSLog(@"[RequestDownload] Invalid State=%s\n", [(iAUPServer *)self serverStateString:?]);
    goto LABEL_27;
  }

  [(iAUPServer *)self setServerState:4];
  if (*command != 1)
  {
    if (!*command)
    {
      if (v4 <= 5)
      {
        NSLog(@"[RequestDownload] Invalid HS Asset payload length=%d\n", v4);
      }

      else
      {
        serverState = self->_serverState;
        v9 = command[1];
        v10 = command[2];
        v11 = command[3];
        v12 = command[4];
        v13 = command[5];
        v14 = objc_alloc_init(HSModel);
        self->_hsModel = v14;
        if (v14)
        {
          [(HSModel *)v14 setDelegate:self];
          [(iAUPServer *)self setServerState:5];
          [(iAUPServer *)self setCurrentAsset:0];
          if ([(HSModel *)self->_hsModel getHSModelForEngineMajorVersion:v10 | (v9 << 8) minorVersion:v12 | (v11 << 8) numHSModels:v13 modelBuffer:command + 6 length:(v4 - 6)])
          {
            return;
          }

          NSLog(@"[RequestDownload] Failed to create HS Model instance\n");
          [(iAUPServer *)self setServerState:serverState];
        }

        else
        {
          NSLog(@"[RequestDownload] Failed to create HS Model instance\n", v18);
        }
      }
    }

    goto LABEL_27;
  }

  if ([(iAUPServer *)self iAUPVersion]<= 1)
  {
    NSLog(@"[RequestDownload] RequestDownload not supported in this protocol version", v18);
    goto LABEL_27;
  }

  if ([(iAUPServer *)self iAUPVersion]!= 2)
  {
LABEL_27:
    v16 = 0;
    v17 = 0;
    goto LABEL_28;
  }

  if ([(iAUPServerDelegate *)self->_delegate updateRequiresPersonalization])
  {
    getPersonalizationID = [(iAUPServerDelegate *)self->_delegate getPersonalizationID];
    NSLog(@"[RequestDownload] Sending COMMAND_GetPersonalizationInfo");
    if (![(iAUPServer *)self sendCommand:66 payload:&getPersonalizationID payload_length:1])
    {
      v15 = 7;
LABEL_19:
      [(iAUPServer *)self setServerState:v15];
      [(iAUPServer *)self setCurrentAsset:1];
      return;
    }

    v16 = @"Failed to send Personalization Request";
    v17 = 4294967291;
  }

  else
  {
    getPersonalizationID = 1;
    if (![(iAUPServer *)self sendCommand:97 payload:&getPersonalizationID payload_length:1])
    {
      v15 = 6;
      goto LABEL_19;
    }

    NSLog(@"[RequestDownload] Failed to send AckRequestDownload");
    v17 = 0;
    v16 = 0;
  }

LABEL_28:
  [(iAUPServer *)self setCurrentAsset:4];
  if (*command == 1)
  {
    v20[0] = -1;
    [(iAUPServer *)self sendCommand:99 payload:v20 payload_length:1];
    [(iAUPServerDelegate *)self->_delegate handleSessionError:v17 message:v16];
  }

  else if (!*command)
  {
    [(iAUPServer *)self setServerState:3];
    v20[0] = *command;
    v20[1] = 0;
    [(iAUPServer *)self sendCommand:97 payload:v20 payload_length:2];

    self->_hsModel = 0;
  }
}

- (void)processDownloadCompleteCommand:(char *)command length:(unsigned int)length
{
  v4 = *&length;
  v7 = "valid";
  if (!command)
  {
    v7 = "nil";
  }

  NSLog(@"%s(): payload=%s length=%d \n", a2, "[iAUPServer processDownloadCompleteCommand:length:]", v7, length);
  serverState = self->_serverState;
  if (serverState != 3 && serverState != 6)
  {
    NSLog(@"[DownloadComplete] Invalid State=%s\n", [(iAUPServer *)self serverStateString:?]);
LABEL_11:
    [(iAUPServer *)self setServerState:0];
    v12 = [[NSError alloc] initWithDomain:@"com.apple.iAUPServer.ErrorDomain" code:-1 userInfo:0];
    v13 = @"Event";
    v14 = @"com.apple.fud.updateFailed";
    [(iAUPServerDelegate *)self->_delegate firmwareUpdateComplete:[NSDictionary error:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:&v13 forKeys:1 count:?], v12];

    return;
  }

  if (v4 != 2)
  {
    NSLog(@"[DownloadComplete] Invalid payload length=%d\n", v4);
    goto LABEL_11;
  }

  v10 = command[1];
  self->_restartRequired |= v10 >> 7;
  self->_sleepWakeRequired |= (command[1] & 0x40) != 0;
  v11 = (command[1] >> 5) & 1 | self->_urgentUpdate;
  self->_urgentUpdate |= (command[1] & 0x20) != 0;
  NSLog(@"[DownloadComplete] downloadStatus=%d noMoreDownloads=%d urgentUpdateRequest=%d\n", *command, v10 & 1, v11);
  if (v10)
  {
    [(iAUPServer *)self setServerState:0];
    v15 = @"Event";
    v16 = @"com.apple.fud.updateCompleted";
    [(iAUPServerDelegate *)self->_delegate firmwareUpdateComplete:[NSDictionary error:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:&v15 forKeys:1 count:?], 0];
  }

  else
  {
    [(iAUPServer *)self setServerState:3];
    [(iAUPServer *)self sendCommand:98 payload:0 payload_length:0];
  }

  self->_currentAsset = 4;

  self->_firmwareBundle = 0;
}

- (void)processNotifyAccessoryErrorCommand:(char *)command length:(unsigned int)length
{
  v6 = "valid";
  if (!command)
  {
    v6 = "nil";
  }

  NSLog(@"%s(): payload=%s length=%d \n", a2, "[iAUPServer processNotifyAccessoryErrorCommand:length:]", v6, length);
  NSLog(@"[NotifyAccessoryError] Accessory notified error reason=%d\n", *command);
  [(iAUPServer *)self setServerState:0];
  v7 = [[NSError alloc] initWithDomain:@"com.apple.iAUPServer.ErrorDomain" code:-1 userInfo:0];
  v8 = @"Event";
  v9 = @"com.apple.fud.updateFailed";
  [(iAUPServerDelegate *)self->_delegate firmwareUpdateComplete:[NSDictionary error:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:&v8 forKeys:1 count:?], v7];

  self->_firmwareBundle = 0;
}

- (void)accessoryDisconnected
{
  NSLog(@"%s()\n", a2, "[iAUPServer accessoryDisconnected]");
  hsModel = self->_hsModel;
  if (hsModel)
  {
    [(HSModel *)hsModel setDelegate:0];

    self->_hsModel = 0;
  }
}

- (void)setHSModel:(id)model fallbackModel:(id)fallbackModel error:(id)error
{
  dispatchQ = self->_dispatchQ;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004690;
  v6[3] = &unk_1000205D0;
  v6[4] = model;
  v6[5] = fallbackModel;
  v6[6] = error;
  v6[7] = self;
  dispatch_async(dispatchQ, v6);
}

- (char)commandString:(int)string
{
  if (string <= 65)
  {
    if (string > 5)
    {
      if (string > 32)
      {
        switch(string)
        {
          case '!':
            return "COMMAND_iAUPv2_RequestDownload";
          case '""':
            return "COMMAND_iAUPv2_DownloadComplete";
          case '#':
            return "COMMAND_iAUPv2_NotifyAccessoryError";
        }
      }

      else
      {
        switch(string)
        {
          case 6:
            return "COMMAND_SetAccessoryCapabilities";
          case 7:
            return "COMMAND_SetResumeInfo";
          case 32:
            return "COMMAND_iAUPv2_Identify";
        }
      }

      return "unknown";
    }

    if (string <= 2)
    {
      switch(string)
      {
        case 0:
          return "COMMAND_GetMetadata";
        case 1:
          return "COMMAND_NotifyProcessStatus";
        case 2:
          return "COMMAND_SetBlockTransferSize";
      }

      return "unknown";
    }

    if (string == 3)
    {
      return "COMMAND_SetBaseImageTransferAddress";
    }

    else if (string == 4)
    {
      return "COMMAND_GetObjectSize";
    }

    else
    {
      return "COMMAND_GetObjectBlock";
    }
  }

  else
  {
    if (string <= 128)
    {
      if (string > 97)
      {
        switch(string)
        {
          case 98:
            return "COMMAND_iAUPv2_AckDownloadComplete";
          case 99:
            return "COMMAND_iAUPv2_NotifyDeviceError";
          case 128:
            return "COMMAND_RetMetadata";
        }
      }

      else
      {
        switch(string)
        {
          case 'B':
            return "COMMAND_GetPersonalizationInfo";
            return "COMMAND_iAUPv2_AckIdentify";
          case 'a':
            return "COMMAND_iAUPv2_AckRequestDownload";
        }
      }

      return "unknown";
    }

    if (string > 131)
    {
      if (string <= 133)
      {
        if (string == 132)
        {
          return "COMMAND_RetObjectSize";
        }

        else
        {
          return "COMMAND_RetObjectBlock";
        }
      }

      if (string == 134)
      {
        return "COMMAND_AckAccessoryCapabilities";
      }

      if (string == 135)
      {
        return "COMMAND_AckResumeInfo";
      }

      return "unknown";
    }

    if (string == 129)
    {
      return "COMMAND_AckNotifyProcessStatus";
    }

    else if (string == 130)
    {
      return "COMMAND_AckSetBlockTransferSize";
    }

    else
    {
      return "COMMAND_AckSetBaseImageTransferAddress";
    }
  }
}

- (char)assetTypeString:(int)string
{
  if (string > 2)
  {
    return "unknown";
  }

  else
  {
    return (&off_1000205F0)[string];
  }
}

- (char)serverStateString:(int)string
{
  if (string > 7)
  {
    return "Unknown";
  }

  else
  {
    return (&off_100020608)[string];
  }
}

- (char)parserStateString:(int)string
{
  if (string != 0 && string < 0xFFFFFFFC)
  {
    return "PayloadCountdown";
  }

  else
  {
    return (&off_100020648)[string + 4];
  }
}

@end