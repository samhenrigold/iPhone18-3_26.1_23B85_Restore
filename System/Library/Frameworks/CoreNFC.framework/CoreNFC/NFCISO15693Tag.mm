@interface NFCISO15693Tag
- (NSData)icSerialNumber;
- (NSData)identifier;
- (id)_generateRequestHeader:(unsigned __int8)header flags:(unsigned __int8)flags;
- (id)_parseResponseErrorWithData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)icManufacturerCode;
- (void)_wtxRetryWithCommnand:(id)commnand maxRetry:(int64_t)retry completionHandler:(id)handler;
- (void)authenticateWithRequestFlags:(unsigned __int8)flags cryptoSuiteIdentifier:(int64_t)identifier message:(id)message completionHandler:(id)handler;
- (void)challengeWithRequestFlags:(unsigned __int8)flags cryptoSuiteIdentifier:(int64_t)identifier message:(id)message completionHandler:(id)handler;
- (void)customCommandWithRequestFlag:(unsigned __int8)flag customCommandCode:(int64_t)code customRequestParameters:(id)parameters completionHandler:(id)handler;
- (void)extendedFastReadMultipleBlocksWithRequestFlag:(unsigned __int8)flag blockRange:(_NSRange)range completionHandler:(id)handler;
- (void)extendedGetMultipleBlockSecurityStatusWithRequestFlag:(unsigned __int8)flag blockRange:(_NSRange)range completionHandler:(id)handler;
- (void)extendedLockBlockWithRequestFlags:(unsigned __int8)flags blockNumber:(int64_t)number completionHandler:(id)handler;
- (void)extendedReadMultipleBlocksWithRequestFlags:(unsigned __int8)flags blockRange:(_NSRange)range completionHandler:(id)handler;
- (void)extendedReadSingleBlockWithRequestFlags:(unsigned __int8)flags blockNumber:(int64_t)number completionHandler:(id)handler;
- (void)extendedWriteMultipleBlocksWithRequestFlags:(unsigned __int8)flags blockRange:(_NSRange)range dataBlocks:(id)blocks completionHandler:(id)handler;
- (void)extendedWriteSingleBlockWithRequestFlags:(unsigned __int8)flags blockNumber:(int64_t)number dataBlock:(id)block completionHandler:(id)handler;
- (void)fastReadMultipleBlocksWithRequestFlag:(unsigned __int8)flag blockRange:(_NSRange)range completionHandler:(id)handler;
- (void)getMultipleBlockSecurityStatusWithRequestFlag:(unsigned __int8)flag blockRange:(_NSRange)range completionHandler:(id)handler;
- (void)getSystemInfoAndUIDWithRequestFlag:(unsigned __int8)flag completionHandler:(id)handler;
- (void)getSystemInfoWithRequestFlag:(unsigned __int8)flag completionHandler:(id)handler;
- (void)keyUpdateWithRequestFlags:(unsigned __int8)flags keyIdentifier:(int64_t)identifier message:(id)message completionHandler:(id)handler;
- (void)lockAFIWithRequestFlag:(unsigned __int8)flag completionHandler:(id)handler;
- (void)lockBlockWithRequestFlags:(unsigned __int8)flags blockNumber:(unsigned __int8)number completionHandler:(id)handler;
- (void)lockDSFIDWithRequestFlag:(unsigned __int8)flag completionHandler:(id)handler;
- (void)readBufferWithRequestFlags:(unsigned __int8)flags completionHandler:(id)handler;
- (void)readMultipleBlocksWithConfiguration:(id)configuration completionHandler:(id)handler;
- (void)readMultipleBlocksWithRequestFlags:(unsigned __int8)flags blockRange:(_NSRange)range completionHandler:(id)handler;
- (void)readSingleBlockWithRequestFlags:(unsigned __int8)flags blockNumber:(unsigned __int8)number completionHandler:(id)handler;
- (void)resetToReadyWithRequestFlags:(unsigned __int8)flags completionHandler:(id)handler;
- (void)selectWithRequestFlags:(unsigned __int8)flags completionHandler:(id)handler;
- (void)sendCustomCommandWithConfiguration:(id)configuration completionHandler:(id)handler;
- (void)sendRequestWithFlag:(int64_t)flag commandCode:(int64_t)code data:(id)data completionHandler:(id)handler;
- (void)stayQuietWithCompletionHandler:(id)handler;
- (void)writeAFIWithRequestFlag:(unsigned __int8)flag afi:(unsigned __int8)afi completionHandler:(id)handler;
- (void)writeDSFIDWithRequestFlag:(unsigned __int8)flag dsfid:(unsigned __int8)dsfid completionHandler:(id)handler;
- (void)writeMultipleBlocksWithRequestFlags:(unsigned __int8)flags blockRange:(_NSRange)range dataBlocks:(id)blocks completionHandler:(id)handler;
- (void)writeSingleBlockWithRequestFlags:(unsigned __int8)flags blockNumber:(unsigned __int8)number dataBlock:(id)block completionHandler:(id)handler;
@end

@implementation NFCISO15693Tag

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = NFCISO15693Tag;
  return [(NFCTag *)&v4 copyWithZone:zone];
}

- (id)_generateRequestHeader:(unsigned __int8)header flags:(unsigned __int8)flags
{
  headerCopy = header;
  v13[0] = flags;
  v13[1] = header;
  v6 = 1;
  if (header <= 0x9Fu && header != 57)
  {
    if ((flags & 0x10) != 0)
    {
      v6 = 0;
      v7 = flags & 0xDF;
    }

    else
    {
      v7 = flags | 0x20;
    }

    v13[0] = v7;
  }

  v8 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:v13 length:2];
  if (headerCopy == 57 || headerCopy > 0x9F || !v6)
  {
    if (headerCopy - 160 <= 0x3F)
    {
      icManufacturerCode = [(NFCISO15693Tag *)self icManufacturerCode];
      [v8 appendBytes:&icManufacturerCode length:1];
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = NFCISO15693Tag;
    identifier = [(NFCTag *)&v12 identifier];
    [v8 appendData:identifier];
  }

  return v8;
}

- (NSData)identifier
{
  v5.receiver = self;
  v5.super_class = NFCISO15693Tag;
  identifier = [(NFCTag *)&v5 identifier];
  v3 = [NFCISO15693ReaderSessionTag reverseByteOrder:identifier];

  return v3;
}

- (unint64_t)icManufacturerCode
{
  v5 = 0;
  identifier = [(NFCISO15693Tag *)self identifier];
  v3 = [NFCISO15693ReaderSessionTag decodeIdentifier:identifier manufacturerCode:&v5 serialNumber:0];

  if (v3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (NSData)icSerialNumber
{
  identifier = [(NFCISO15693Tag *)self identifier];
  v8 = 0;
  v3 = [NFCISO15693ReaderSessionTag decodeIdentifier:identifier manufacturerCode:0 serialNumber:&v8];
  v4 = v8;

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;

  return v6;
}

- (id)_parseResponseErrorWithData:(id)data
{
  v17[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  bytes = [dataCopy bytes];
  if (![dataCopy length])
  {
    v16 = @"TagResponseInvalidLength";
    v17[0] = MEMORY[0x277CBEC38];
    v6 = MEMORY[0x277CBEAC0];
    v7 = v17;
    v8 = &v16;
LABEL_8:
    v9 = [v6 dictionaryWithObjects:v7 forKeys:v8 count:1];
    v5 = [NFCError errorWithCode:102 userInfo:v9];
    goto LABEL_9;
  }

  if ((*bytes & 1) == 0)
  {
    v5 = 0;
    goto LABEL_10;
  }

  if ([dataCopy length] != 2)
  {
    v12 = @"TagResponseInvalidLength";
    v13 = MEMORY[0x277CBEC38];
    v6 = MEMORY[0x277CBEAC0];
    v7 = &v13;
    v8 = &v12;
    goto LABEL_8;
  }

  v14 = @"ISO15693TagResponseErrorCode";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:bytes[1]];
  v15 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v5 = [NFCError errorWithCode:102 userInfo:v10];

LABEL_9:
LABEL_10:

  return v5;
}

- (void)readMultipleBlocksWithConfiguration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2372BB558;
  v7[3] = &unk_278A29C38;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v7];
}

- (void)sendCustomCommandWithConfiguration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2372BB66C;
  v7[3] = &unk_278A29C38;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v7];
}

- (void)stayQuietWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag stayQuietWithCompletionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  v6 = [(NFCISO15693Tag *)self _generateRequestHeader:2 flags:32];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372BB7E8;
  v8[3] = &unk_278A29C10;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(NFCTag *)self _transceiveWithData:v6 completionHandler:v8];
}

- (void)readSingleBlockWithRequestFlags:(unsigned __int8)flags blockNumber:(unsigned __int8)number completionHandler:(id)handler
{
  flagsCopy = flags;
  numberCopy = number;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag readSingleBlockWithRequestFlags:blockNumber:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  os_activity_scope_leave(&state);

  v9 = [(NFCISO15693Tag *)self _generateRequestHeader:32 flags:flagsCopy];
  [v9 appendBytes:&numberCopy length:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2372BB970;
  v11[3] = &unk_278A29F78;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(NFCTag *)self _transceiveWithData:v9 completionHandler:v11];
}

- (void)writeSingleBlockWithRequestFlags:(unsigned __int8)flags blockNumber:(unsigned __int8)number dataBlock:(id)block completionHandler:(id)handler
{
  flagsCopy = flags;
  numberCopy = number;
  blockCopy = block;
  handlerCopy = handler;
  v12 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag writeSingleBlockWithRequestFlags:blockNumber:dataBlock:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v12, &state);
  os_activity_scope_leave(&state);

  if ([blockCopy length])
  {
    v13 = [(NFCISO15693Tag *)self _generateRequestHeader:33 flags:flagsCopy];
    [v13 appendBytes:&numberCopy length:1];
    [v13 appendData:blockCopy];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2372BBD7C;
    v15[3] = &unk_278A29F78;
    v15[4] = self;
    v16 = handlerCopy;
    v14 = handlerCopy;
    [(NFCTag *)self _transceiveWithData:v13 completionHandler:v15];
  }

  else
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2372BBBE4;
    v17[3] = &unk_278A29BE8;
    v17[4] = self;
    v18 = handlerCopy;
    v19 = a2;
    v13 = handlerCopy;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v17];
    v14 = v18;
  }
}

- (void)lockBlockWithRequestFlags:(unsigned __int8)flags blockNumber:(unsigned __int8)number completionHandler:(id)handler
{
  flagsCopy = flags;
  numberCopy = number;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag lockBlockWithRequestFlags:blockNumber:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  os_activity_scope_leave(&state);

  v9 = [(NFCISO15693Tag *)self _generateRequestHeader:34 flags:flagsCopy];
  [v9 appendBytes:&numberCopy length:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2372BBF00;
  v11[3] = &unk_278A29F78;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(NFCTag *)self _transceiveWithData:v9 completionHandler:v11];
}

- (void)readMultipleBlocksWithRequestFlags:(unsigned __int8)flags blockRange:(_NSRange)range completionHandler:(id)handler
{
  length = range.length;
  location = range.location;
  flagsCopy = flags;
  handlerCopy = handler;
  v11 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag readMultipleBlocksWithRequestFlags:blockRange:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  if (length && location + length < 0x101)
  {
    v12 = [(NFCISO15693Tag *)self _generateRequestHeader:35 flags:flagsCopy];
    LOBYTE(state.opaque[0]) = location;
    BYTE1(state.opaque[0]) = length - 1;
    [v12 appendBytes:&state length:2];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2372BC2E0;
    v14[3] = &unk_278A29FA0;
    v19 = flagsCopy;
    v16 = location;
    v17 = length;
    v18 = a2;
    v14[4] = self;
    v15 = handlerCopy;
    v13 = handlerCopy;
    [(NFCTag *)self _transceiveWithData:v12 completionHandler:v14];
  }

  else
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2372BC130;
    v20[3] = &unk_278A29BE8;
    v20[4] = self;
    v21 = handlerCopy;
    v22 = a2;
    v12 = handlerCopy;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v20];
  }
}

- (void)writeMultipleBlocksWithRequestFlags:(unsigned __int8)flags blockRange:(_NSRange)range dataBlocks:(id)blocks completionHandler:(id)handler
{
  length = range.length;
  location = range.location;
  flagsCopy = flags;
  v45 = *MEMORY[0x277D85DE8];
  blocksCopy = blocks;
  handlerCopy = handler;
  v14 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag writeMultipleBlocksWithRequestFlags:blockRange:dataBlocks:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v14, &state);
  os_activity_scope_leave(&state);

  if (location + length < 0x101)
  {
    if ([blocksCopy count] == length)
    {
      if (length)
      {
        v24 = a2;
        v15 = [(NFCISO15693Tag *)self _generateRequestHeader:36 flags:flagsCopy];
        LOBYTE(state.opaque[0]) = location;
        BYTE1(state.opaque[0]) = length - 1;
        [v15 appendBytes:&state length:2];
        firstObject = [blocksCopy firstObject];
        v17 = [firstObject length];

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v18 = blocksCopy;
        v19 = [v18 countByEnumeratingWithState:&v30 objects:v44 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v31;
          while (2)
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v31 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v30 + 1) + 8 * i);
              if (v17 != [v23 length])
              {
                v27[0] = MEMORY[0x277D85DD0];
                v27[1] = 3221225472;
                v27[2] = sub_2372BCE68;
                v27[3] = &unk_278A29BE8;
                v27[4] = self;
                v28 = handlerCopy;
                v29 = v24;
                [(NFCTag *)self dispatchOnDelegateQueueAsync:v27];

                goto LABEL_17;
              }

              [v15 appendData:v23];
            }

            v20 = [v18 countByEnumeratingWithState:&v30 objects:v44 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = sub_2372BD000;
        v25[3] = &unk_278A29F78;
        v25[4] = self;
        v26 = handlerCopy;
        [(NFCTag *)self _transceiveWithData:v15 completionHandler:v25];
      }

      else
      {
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = sub_2372BCCD0;
        v34[3] = &unk_278A29BE8;
        v34[4] = self;
        v35 = handlerCopy;
        v36 = a2;
        [(NFCTag *)self dispatchOnDelegateQueueAsync:v34];
        v15 = v35;
      }
    }

    else
    {
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = sub_2372BCB38;
      v37[3] = &unk_278A29BE8;
      v37[4] = self;
      v38 = handlerCopy;
      v39 = a2;
      [(NFCTag *)self dispatchOnDelegateQueueAsync:v37];
      v15 = v38;
    }
  }

  else
  {
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = sub_2372BC9A0;
    v40[3] = &unk_278A29BE8;
    v40[4] = self;
    v41 = handlerCopy;
    v42 = a2;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v40];
    v15 = v41;
  }

LABEL_17:
}

- (void)selectWithRequestFlags:(unsigned __int8)flags completionHandler:(id)handler
{
  flagsCopy = flags;
  handlerCopy = handler;
  v7 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag selectWithRequestFlags:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  os_activity_scope_leave(&state);

  0x20 = [(NFCISO15693Tag *)self _generateRequestHeader:37 flags:flagsCopy & 0xFFFFFFCF | 0x20];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2372BD178;
  v10[3] = &unk_278A29F78;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(NFCTag *)self _transceiveWithData:0x20 completionHandler:v10];
}

- (void)resetToReadyWithRequestFlags:(unsigned __int8)flags completionHandler:(id)handler
{
  flagsCopy = flags;
  handlerCopy = handler;
  v7 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag resetToReadyWithRequestFlags:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  os_activity_scope_leave(&state);

  v8 = [(NFCISO15693Tag *)self _generateRequestHeader:38 flags:flagsCopy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2372BD2EC;
  v10[3] = &unk_278A29F78;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(NFCTag *)self _transceiveWithData:v8 completionHandler:v10];
}

- (void)writeAFIWithRequestFlag:(unsigned __int8)flag afi:(unsigned __int8)afi completionHandler:(id)handler
{
  flagCopy = flag;
  afiCopy = afi;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag writeAFIWithRequestFlag:afi:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  os_activity_scope_leave(&state);

  v9 = [(NFCISO15693Tag *)self _generateRequestHeader:39 flags:flagCopy];
  [v9 appendBytes:&afiCopy length:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2372BD470;
  v11[3] = &unk_278A29F78;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(NFCTag *)self _transceiveWithData:v9 completionHandler:v11];
}

- (void)lockAFIWithRequestFlag:(unsigned __int8)flag completionHandler:(id)handler
{
  flagCopy = flag;
  handlerCopy = handler;
  v7 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag lockAFIWithRequestFlag:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  os_activity_scope_leave(&state);

  v8 = [(NFCISO15693Tag *)self _generateRequestHeader:40 flags:flagCopy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2372BD5E4;
  v10[3] = &unk_278A29F78;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(NFCTag *)self _transceiveWithData:v8 completionHandler:v10];
}

- (void)writeDSFIDWithRequestFlag:(unsigned __int8)flag dsfid:(unsigned __int8)dsfid completionHandler:(id)handler
{
  flagCopy = flag;
  dsfidCopy = dsfid;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag writeDSFIDWithRequestFlag:dsfid:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  os_activity_scope_leave(&state);

  v9 = [(NFCISO15693Tag *)self _generateRequestHeader:41 flags:flagCopy];
  [v9 appendBytes:&dsfidCopy length:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2372BD768;
  v11[3] = &unk_278A29F78;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(NFCTag *)self _transceiveWithData:v9 completionHandler:v11];
}

- (void)lockDSFIDWithRequestFlag:(unsigned __int8)flag completionHandler:(id)handler
{
  flagCopy = flag;
  handlerCopy = handler;
  v7 = [(NFCISO15693Tag *)self _generateRequestHeader:42 flags:flagCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372BD8A4;
  v9[3] = &unk_278A29F78;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(NFCTag *)self _transceiveWithData:v7 completionHandler:v9];
}

- (void)getSystemInfoWithRequestFlag:(unsigned __int8)flag completionHandler:(id)handler
{
  flagCopy = flag;
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372BD9BC;
  v8[3] = &unk_278A29FC8;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(NFCISO15693Tag *)self getSystemInfoAndUIDWithRequestFlag:flagCopy completionHandler:v8];
}

- (void)getSystemInfoAndUIDWithRequestFlag:(unsigned __int8)flag completionHandler:(id)handler
{
  flagCopy = flag;
  handlerCopy = handler;
  v7 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag getSystemInfoAndUIDWithRequestFlag:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  os_activity_scope_leave(&state);

  v8 = [(NFCISO15693Tag *)self _generateRequestHeader:43 flags:flagCopy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2372BDAE4;
  v10[3] = &unk_278A29F78;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(NFCTag *)self _transceiveWithData:v8 completionHandler:v10];
}

- (void)getMultipleBlockSecurityStatusWithRequestFlag:(unsigned __int8)flag blockRange:(_NSRange)range completionHandler:(id)handler
{
  length = range.length;
  location = range.location;
  flagCopy = flag;
  handlerCopy = handler;
  v11 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag getMultipleBlockSecurityStatusWithRequestFlag:blockRange:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  if (location + length < 0x101)
  {
    v12 = [(NFCISO15693Tag *)self _generateRequestHeader:44 flags:flagCopy];
    LOBYTE(state.opaque[0]) = location;
    BYTE1(state.opaque[0]) = length - 1;
    [v12 appendBytes:&state length:2];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2372BE088;
    v14[3] = &unk_278A29FF0;
    v16 = location;
    v17 = length;
    v14[4] = self;
    v15 = handlerCopy;
    v13 = handlerCopy;
    [(NFCTag *)self _transceiveWithData:v12 completionHandler:v14];
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2372BDED8;
    v18[3] = &unk_278A29BE8;
    v18[4] = self;
    v19 = handlerCopy;
    v20 = a2;
    v12 = handlerCopy;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v18];
  }
}

- (void)fastReadMultipleBlocksWithRequestFlag:(unsigned __int8)flag blockRange:(_NSRange)range completionHandler:(id)handler
{
  length = range.length;
  location = range.location;
  flagCopy = flag;
  handlerCopy = handler;
  v11 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag fastReadMultipleBlocksWithRequestFlag:blockRange:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  if (location + length < 0x101)
  {
    v12 = [(NFCISO15693Tag *)self _generateRequestHeader:45 flags:flagCopy];
    LOBYTE(state.opaque[0]) = location;
    BYTE1(state.opaque[0]) = length - 1;
    [v12 appendBytes:&state length:2];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2372BE5B0;
    v14[3] = &unk_278A2A018;
    v16 = location;
    v17 = length;
    v18 = a2;
    v14[4] = self;
    v15 = handlerCopy;
    v13 = handlerCopy;
    [(NFCTag *)self _transceiveWithData:v12 completionHandler:v14];
  }

  else
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_2372BE400;
    v19[3] = &unk_278A29BE8;
    v19[4] = self;
    v20 = handlerCopy;
    v21 = a2;
    v12 = handlerCopy;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v19];
  }
}

- (void)customCommandWithRequestFlag:(unsigned __int8)flag customCommandCode:(int64_t)code customRequestParameters:(id)parameters completionHandler:(id)handler
{
  flagCopy = flag;
  parametersCopy = parameters;
  handlerCopy = handler;
  v13 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag customCommandWithRequestFlag:customCommandCode:customRequestParameters:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v13, &state);
  os_activity_scope_leave(&state);

  if ((code - 224) > 0xFFFFFFFFFFFFFFBFLL)
  {
    v14 = [(NFCISO15693Tag *)self _generateRequestHeader:code flags:flagCopy];
    if ([parametersCopy length])
    {
      [v14 appendData:parametersCopy];
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2372BEBD0;
    v16[3] = &unk_278A29F78;
    v16[4] = self;
    v17 = handlerCopy;
    v15 = handlerCopy;
    [(NFCTag *)self _transceiveWithData:v14 completionHandler:v16];
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2372BEA20;
    v18[3] = &unk_278A29BE8;
    v18[4] = self;
    v19 = handlerCopy;
    v20 = a2;
    v14 = handlerCopy;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v18];
    v15 = v19;
  }
}

- (void)extendedReadSingleBlockWithRequestFlags:(unsigned __int8)flags blockNumber:(int64_t)number completionHandler:(id)handler
{
  flagsCopy = flags;
  handlerCopy = handler;
  v10 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag extendedReadSingleBlockWithRequestFlags:blockNumber:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  os_activity_scope_leave(&state);

  if (number < 0x10000)
  {
    v11 = [(NFCISO15693Tag *)self _generateRequestHeader:48 flags:flagsCopy];
    LOWORD(state.opaque[0]) = number;
    [v11 appendBytes:&state length:2];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2372BEFDC;
    v13[3] = &unk_278A29F78;
    v13[4] = self;
    v14 = handlerCopy;
    v12 = handlerCopy;
    [(NFCTag *)self _transceiveWithData:v11 completionHandler:v13];
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2372BEE2C;
    v15[3] = &unk_278A29BE8;
    v15[4] = self;
    v16 = handlerCopy;
    v17 = a2;
    v11 = handlerCopy;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v15];
  }
}

- (void)extendedWriteSingleBlockWithRequestFlags:(unsigned __int8)flags blockNumber:(int64_t)number dataBlock:(id)block completionHandler:(id)handler
{
  flagsCopy = flags;
  blockCopy = block;
  handlerCopy = handler;
  v13 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag extendedWriteSingleBlockWithRequestFlags:blockNumber:dataBlock:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v13, &state);
  os_activity_scope_leave(&state);

  if (number < 0x10000)
  {
    if ([blockCopy length])
    {
      v14 = [(NFCISO15693Tag *)self _generateRequestHeader:49 flags:flagsCopy];
      LOWORD(state.opaque[0]) = number;
      [v14 appendBytes:&state length:2];
      [v14 appendData:blockCopy];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = sub_2372BF5F4;
      v15[3] = &unk_278A29F78;
      v15[4] = self;
      v16 = handlerCopy;
      [(NFCTag *)self _transceiveWithData:v14 completionHandler:v15];
    }

    else
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = sub_2372BF45C;
      v17[3] = &unk_278A29BE8;
      v17[4] = self;
      v18 = handlerCopy;
      v19 = a2;
      [(NFCTag *)self dispatchOnDelegateQueueAsync:v17];
      v14 = v18;
    }
  }

  else
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2372BF2C4;
    v20[3] = &unk_278A29BE8;
    v20[4] = self;
    v21 = handlerCopy;
    v22 = a2;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v20];
    v14 = v21;
  }
}

- (void)extendedLockBlockWithRequestFlags:(unsigned __int8)flags blockNumber:(int64_t)number completionHandler:(id)handler
{
  flagsCopy = flags;
  handlerCopy = handler;
  v10 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag extendedLockBlockWithRequestFlags:blockNumber:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  os_activity_scope_leave(&state);

  if (number < 0x10000)
  {
    v11 = [(NFCISO15693Tag *)self _generateRequestHeader:50 flags:flagsCopy];
    LOWORD(state.opaque[0]) = number;
    [v11 appendBytes:&state length:2];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2372BF994;
    v13[3] = &unk_278A29F78;
    v13[4] = self;
    v14 = handlerCopy;
    v12 = handlerCopy;
    [(NFCTag *)self _transceiveWithData:v11 completionHandler:v13];
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2372BF7FC;
    v15[3] = &unk_278A29BE8;
    v15[4] = self;
    v16 = handlerCopy;
    v17 = a2;
    v11 = handlerCopy;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v15];
  }
}

- (void)extendedReadMultipleBlocksWithRequestFlags:(unsigned __int8)flags blockRange:(_NSRange)range completionHandler:(id)handler
{
  length = range.length;
  location = range.location;
  flagsCopy = flags;
  handlerCopy = handler;
  v11 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag extendedReadMultipleBlocksWithRequestFlags:blockRange:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  if (location + length <= 0x10000)
  {
    v12 = [(NFCISO15693Tag *)self _generateRequestHeader:51 flags:flagsCopy];
    LOWORD(state.opaque[0]) = location;
    WORD1(state.opaque[0]) = length - 1;
    [v12 appendBytes:&state length:4];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2372BFD78;
    v14[3] = &unk_278A29FF0;
    v16 = location;
    v17 = length;
    v14[4] = self;
    v15 = handlerCopy;
    v13 = handlerCopy;
    [(NFCTag *)self _transceiveWithData:v12 completionHandler:v14];
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2372BFBC8;
    v18[3] = &unk_278A29BE8;
    v18[4] = self;
    v19 = handlerCopy;
    v20 = a2;
    v12 = handlerCopy;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v18];
  }
}

- (void)extendedWriteMultipleBlocksWithRequestFlags:(unsigned __int8)flags blockRange:(_NSRange)range dataBlocks:(id)blocks completionHandler:(id)handler
{
  length = range.length;
  location = range.location;
  flagsCopy = flags;
  v45 = *MEMORY[0x277D85DE8];
  blocksCopy = blocks;
  handlerCopy = handler;
  v14 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag extendedWriteMultipleBlocksWithRequestFlags:blockRange:dataBlock:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v14, &state);
  os_activity_scope_leave(&state);

  if (location + length <= 0x10000)
  {
    if ([blocksCopy count] == length)
    {
      if (length)
      {
        v24 = a2;
        v15 = [(NFCISO15693Tag *)self _generateRequestHeader:52 flags:flagsCopy];
        LOWORD(state.opaque[0]) = location;
        WORD1(state.opaque[0]) = length - 1;
        [v15 appendBytes:&state length:4];
        firstObject = [blocksCopy firstObject];
        v17 = [firstObject length];

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v18 = blocksCopy;
        v19 = [v18 countByEnumeratingWithState:&v30 objects:v44 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v31;
          while (2)
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v31 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v30 + 1) + 8 * i);
              if (v17 != [v23 length])
              {
                v27[0] = MEMORY[0x277D85DD0];
                v27[1] = 3221225472;
                v27[2] = sub_2372C07F0;
                v27[3] = &unk_278A29BE8;
                v27[4] = self;
                v28 = handlerCopy;
                v29 = v24;
                [(NFCTag *)self dispatchOnDelegateQueueAsync:v27];

                goto LABEL_17;
              }

              [v15 appendData:v23];
            }

            v20 = [v18 countByEnumeratingWithState:&v30 objects:v44 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = sub_2372C0988;
        v25[3] = &unk_278A29F78;
        v25[4] = self;
        v26 = handlerCopy;
        [(NFCTag *)self _transceiveWithData:v15 completionHandler:v25];
      }

      else
      {
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = sub_2372C0658;
        v34[3] = &unk_278A29BE8;
        v34[4] = self;
        v35 = handlerCopy;
        v36 = a2;
        [(NFCTag *)self dispatchOnDelegateQueueAsync:v34];
        v15 = v35;
      }
    }

    else
    {
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = sub_2372C04C0;
      v37[3] = &unk_278A29BE8;
      v37[4] = self;
      v38 = handlerCopy;
      v39 = a2;
      [(NFCTag *)self dispatchOnDelegateQueueAsync:v37];
      v15 = v38;
    }
  }

  else
  {
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = sub_2372C0328;
    v40[3] = &unk_278A29BE8;
    v40[4] = self;
    v41 = handlerCopy;
    v42 = a2;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v40];
    v15 = v41;
  }

LABEL_17:
}

- (void)authenticateWithRequestFlags:(unsigned __int8)flags cryptoSuiteIdentifier:(int64_t)identifier message:(id)message completionHandler:(id)handler
{
  identifierCopy = identifier;
  flagsCopy = flags;
  messageCopy = message;
  handlerCopy = handler;
  v12 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag authenticateWithRequestFlags:cryptoSuiteIdentifier:message:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v12, &state);
  os_activity_scope_leave(&state);

  v13 = [(NFCISO15693Tag *)self _generateRequestHeader:53 flags:flagsCopy];
  LOBYTE(state.opaque[0]) = identifierCopy;
  [v13 appendBytes:&state length:1];
  if ([messageCopy length])
  {
    [v13 appendData:messageCopy];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2372C0B40;
  v15[3] = &unk_278A29F78;
  v15[4] = self;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [(NFCTag *)self _transceiveWithData:v13 completionHandler:v15];
}

- (void)keyUpdateWithRequestFlags:(unsigned __int8)flags keyIdentifier:(int64_t)identifier message:(id)message completionHandler:(id)handler
{
  identifierCopy = identifier;
  flagsCopy = flags;
  messageCopy = message;
  handlerCopy = handler;
  v12 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag keyUpdateWithRequestFlags:keyIdentifier:message:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v12, &state);
  os_activity_scope_leave(&state);

  v13 = [(NFCISO15693Tag *)self _generateRequestHeader:54 flags:flagsCopy];
  LOBYTE(state.opaque[0]) = identifierCopy;
  [v13 appendBytes:&state length:1];
  if ([messageCopy length])
  {
    [v13 appendData:messageCopy];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2372C0D74;
  v15[3] = &unk_278A29F78;
  v15[4] = self;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [(NFCTag *)self _transceiveWithData:v13 completionHandler:v15];
}

- (void)challengeWithRequestFlags:(unsigned __int8)flags cryptoSuiteIdentifier:(int64_t)identifier message:(id)message completionHandler:(id)handler
{
  identifierCopy = identifier;
  flagsCopy = flags;
  messageCopy = message;
  handlerCopy = handler;
  v12 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag challengeWithRequestFlags:cryptoSuiteIdentifier:message:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v12, &state);
  os_activity_scope_leave(&state);

  v13 = [(NFCISO15693Tag *)self _generateRequestHeader:57 flags:flagsCopy];
  LOBYTE(state.opaque[0]) = identifierCopy;
  [v13 appendBytes:&state length:1];
  if ([messageCopy length])
  {
    [v13 appendData:messageCopy];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2372C0FA8;
  v15[3] = &unk_278A29C10;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [(NFCTag *)self _transceiveWithData:v13 completionHandler:v15];
}

- (void)readBufferWithRequestFlags:(unsigned __int8)flags completionHandler:(id)handler
{
  flagsCopy = flags;
  handlerCopy = handler;
  v7 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag readBufferWithRequestFlags:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  os_activity_scope_leave(&state);

  v8 = [(NFCISO15693Tag *)self _generateRequestHeader:58 flags:flagsCopy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2372C112C;
  v10[3] = &unk_278A29F78;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(NFCTag *)self _transceiveWithData:v8 completionHandler:v10];
}

- (void)extendedGetMultipleBlockSecurityStatusWithRequestFlag:(unsigned __int8)flag blockRange:(_NSRange)range completionHandler:(id)handler
{
  length = range.length;
  location = range.location;
  flagCopy = flag;
  handlerCopy = handler;
  v11 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag extendedGetMultipleBlockSecurityStatusWithRequestFlag:blockRange:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  if (location + length <= 0x10000)
  {
    v12 = [(NFCISO15693Tag *)self _generateRequestHeader:60 flags:flagCopy];
    LOWORD(state.opaque[0]) = location;
    WORD1(state.opaque[0]) = length - 1;
    [v12 appendBytes:&state length:4];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2372C158C;
    v14[3] = &unk_278A29FF0;
    v16 = location;
    v17 = length;
    v14[4] = self;
    v15 = handlerCopy;
    v13 = handlerCopy;
    [(NFCTag *)self _transceiveWithData:v12 completionHandler:v14];
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2372C13DC;
    v18[3] = &unk_278A29BE8;
    v18[4] = self;
    v19 = handlerCopy;
    v20 = a2;
    v12 = handlerCopy;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v18];
  }
}

- (void)_wtxRetryWithCommnand:(id)commnand maxRetry:(int64_t)retry completionHandler:(id)handler
{
  commnandCopy = commnand;
  handlerCopy = handler;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2372C182C;
  v13[3] = &unk_278A2A040;
  v15 = handlerCopy;
  retryCopy = retry;
  v17 = a2;
  v13[4] = self;
  v14 = commnandCopy;
  v11 = commnandCopy;
  v12 = handlerCopy;
  [(NFCTag *)self _transceiveWithData:v11 completionHandler:v13];
}

- (void)extendedFastReadMultipleBlocksWithRequestFlag:(unsigned __int8)flag blockRange:(_NSRange)range completionHandler:(id)handler
{
  length = range.length;
  location = range.location;
  flagCopy = flag;
  handlerCopy = handler;
  v11 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag extendedFastReadMultipleBlocksWithRequestFlag:blockRange:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  if (location + length <= 0x10000)
  {
    v13 = [(NFCISO15693Tag *)self _generateRequestHeader:61 flags:flagCopy];
    LOWORD(state.opaque[0]) = location;
    WORD1(state.opaque[0]) = length - 1;
    [v13 appendBytes:&state length:4];
    _getInternalReaderSession = [(NFCTag *)self _getInternalReaderSession];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2372C1F38;
    v16[3] = &unk_278A2A068;
    v16[4] = self;
    v17 = v13;
    v20 = length;
    v21 = a2;
    v18 = handlerCopy;
    v19 = location;
    v15 = handlerCopy;
    v12 = v13;
    [_getInternalReaderSession submitBlockOnSessionQueue:v16];
  }

  else
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_2372C1D88;
    v22[3] = &unk_278A29BE8;
    v22[4] = self;
    v23 = handlerCopy;
    v24 = a2;
    v12 = handlerCopy;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v22];
  }
}

- (void)sendRequestWithFlag:(int64_t)flag commandCode:(int64_t)code data:(id)data completionHandler:(id)handler
{
  codeCopy = code;
  flagCopy = flag;
  dataCopy = data;
  handlerCopy = handler;
  v12 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag sendRequestWithFlag:commandCode:data:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v12, &state);
  os_activity_scope_leave(&state);

  LOBYTE(state.opaque[0]) = flagCopy;
  BYTE1(state.opaque[0]) = codeCopy;
  v13 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:&state length:2];
  v14 = v13;
  if (dataCopy)
  {
    [v13 appendData:dataCopy];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2372C23A8;
  v16[3] = &unk_278A29C10;
  v17 = handlerCopy;
  v15 = handlerCopy;
  [(NFCTag *)self _transceiveWithData:v14 completionHandler:v16];
}

@end