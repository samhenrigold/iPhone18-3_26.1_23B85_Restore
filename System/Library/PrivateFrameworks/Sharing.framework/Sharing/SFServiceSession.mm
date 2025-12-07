@interface SFServiceSession
- (BOOL)pairingContainsACL:(id)l;
- (SFServiceSession)init;
- (id)pairingDeriveKeyForIdentifier:(id)identifier keyLength:(unint64_t)length;
- (int)_pairSetupCompleted:(int)completed;
- (int)_pairVerifyCompleted:(int)completed;
- (int)setEncryptionReadKey:(const char *)key readKeyLen:(unint64_t)len writeKey:(const char *)writeKey writeKeyLen:(unint64_t)keyLen;
- (void)_hearbeatTimer;
- (void)_receivedObject:(id)object flags:(unsigned int)flags;
- (void)_receivedRequestID:(id)d object:(id)object flags:(unsigned int)flags;
- (void)_receivedResponseID:(id)d object:(id)object flags:(unsigned int)flags;
- (void)_sendFrameType:(unsigned __int8)type data:(id)data;
- (void)_sendFrameType:(unsigned __int8)type unencryptedObject:(id)object;
- (void)_sendRequestWithFlags:(unsigned int)flags object:(id)object responseHandler:(id)handler;
- (void)_sendWithFlags:(unsigned int)flags object:(id)object;
- (void)activate;
- (void)clearEncryptionInfo;
- (void)dealloc;
- (void)invalidate;
- (void)pairSetup:(id)setup start:(BOOL)start;
- (void)pairSetupWithFlags:(unsigned int)flags;
- (void)pairVerify:(id)verify start:(BOOL)start;
- (void)receivedEncryptedData:(id)data type:(unsigned __int8)type;
- (void)receivedStartRequest:(id)request;
- (void)receivedUnencryptedData:(id)data type:(unsigned __int8)type;
- (void)sendEncryptedObject:(id)object;
- (void)sendFrameType:(unsigned __int8)type data:(id)data;
- (void)sendRequestWithFlags:(unsigned int)flags object:(id)object responseHandler:(id)handler;
- (void)sendWithFlags:(unsigned int)flags object:(id)object;
- (void)sessionReceivedFrameType:(unsigned __int8)type data:(id)data;
@end

@implementation SFServiceSession

- (SFServiceSession)init
{
  v3.receiver = self;
  v3.super_class = SFServiceSession;
  result = [(SFSession *)&v3 init];
  if (result)
  {
    result->super._ucatCore = &gLogCategory_SFServiceCore;
    result->super._ucatCrypto = &gLogCategory_SFServiceCrypto;
  }

  return result;
}

- (void)dealloc
{
  if (self->super._transaction)
  {
    [SFServiceSession dealloc];
    [(SFServiceSession *)v3 clearEncryptionInfo];
  }

  else
  {
    [(SFServiceSession *)self clearEncryptionInfo];
    v5.receiver = self;
    v5.super_class = SFServiceSession;
    [(SFSession *)&v5 dealloc];
  }
}

- (void)clearEncryptionInfo
{
  encryptionReadAEAD = self->super._encryptionReadAEAD;
  if (encryptionReadAEAD)
  {
    CFRelease(encryptionReadAEAD);
    self->super._encryptionReadAEAD = 0;
  }

  encryptionWriteAEAD = self->super._encryptionWriteAEAD;
  if (encryptionWriteAEAD)
  {
    CFRelease(encryptionWriteAEAD);
    self->super._encryptionWriteAEAD = 0;
  }

  [(CUPairingSession *)self->_pairSetupSession invalidate];
  pairSetupSession = self->_pairSetupSession;
  self->_pairSetupSession = 0;

  [(CUPairingSession *)self->_pairVerifySession invalidate];
  pairVerifySession = self->_pairVerifySession;
  self->_pairVerifySession = 0;
}

- (void)activate
{
  dispatch_assert_queue_V2(self->super._dispatchQueue);
  v3 = os_transaction_create();
  transaction = self->super._transaction;
  self->super._transaction = v3;

  if (!self->super._transaction)
  {
    ucatCore = self->super._ucatCore;
    if (ucatCore->var0 <= 60)
    {
      if (ucatCore->var0 != -1)
      {
LABEL_4:
        LogPrintF(ucatCore, "[SFServiceSession activate]", 60, "### Create transaction failed\n");
        goto LABEL_6;
      }

      if (_LogCategory_Initialize())
      {
        ucatCore = self->super._ucatCore;
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  [(SFSession *)self _setupMessageSession];
  if ([(SFService *)self->_service touchRemoteEnabled])
  {
    [(SFSession *)self _setupTouchRemote];
  }

  v6 = self->super._ucatCore;
  if (v6->var0 <= 30)
  {
    if (v6->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v6 = self->super._ucatCore;
    }

    LogPrintF(v6, "[SFServiceSession activate]", 30, "Heartbeat start\n");
  }

LABEL_12:
  self->super._heartbeatLastTicks = mach_absolute_time();
  v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->super._dispatchQueue);
  heartbeatTimer = self->super._heartbeatTimer;
  self->super._heartbeatTimer = v7;

  v9 = self->super._heartbeatTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __28__SFServiceSession_activate__block_invoke;
  handler[3] = &unk_1E788B198;
  handler[4] = self;
  dispatch_source_set_event_handler(v9, handler);
  SFDispatchTimerSet(self->super._heartbeatTimer, 3.0, 3.0, -4.0);
  dispatch_resume(self->super._heartbeatTimer);
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->super._dispatchQueue);
  heartbeatTimer = self->super._heartbeatTimer;
  if (heartbeatTimer)
  {
    v4 = heartbeatTimer;
    dispatch_source_cancel(v4);
    v5 = self->super._heartbeatTimer;
    self->super._heartbeatTimer = 0;
  }

  [(SFSession *)self _tearDownMessageSession];
  [(SFSession *)self _tearDownTouchRemote];
  [(NSMutableDictionary *)self->super._requestHandlers removeAllObjects];
  requestHandlers = self->super._requestHandlers;
  self->super._requestHandlers = 0;

  requestMap = self->super._requestMap;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __30__SFServiceSession_invalidate__block_invoke;
  v11[3] = &unk_1E788F430;
  v11[4] = self;
  [(NSMutableDictionary *)requestMap enumerateKeysAndObjectsUsingBlock:v11];
  [(NSMutableDictionary *)self->super._requestMap removeAllObjects];
  v8 = self->super._requestMap;
  self->super._requestMap = 0;

  [(SFServiceSession *)self clearEncryptionInfo];
  transaction = self->super._transaction;
  self->super._transaction = 0;

  ucatCore = self->super._ucatCore;
  if (ucatCore->var0 <= 30)
  {
    if (ucatCore->var0 != -1)
    {
LABEL_5:
      LogPrintF(ucatCore, "[SFServiceSession invalidate]", 30, "Invalidated session 0x%08X\n", self->super._sessionID);
      return;
    }

    if (_LogCategory_Initialize())
    {
      ucatCore = self->super._ucatCore;
      goto LABEL_5;
    }
  }
}

void __30__SFServiceSession_invalidate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 160);
  if (*v7 <= 50)
  {
    if (*v7 != -1)
    {
LABEL_3:
      LogPrintF(v7, "[SFServiceSession invalidate]_block_invoke", 50, "### Canceling request %@ for invalidate\n", v5);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v7 = *(*(a1 + 32) + 160);
      goto LABEL_3;
    }
  }

LABEL_5:
  v8 = [v6 objectForKeyedSubscript:@"_rh"];
  if (v8)
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A768];
    v16 = *MEMORY[0x1E696A578];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v12 = v11;
    v13 = @"?";
    if (v11)
    {
      v13 = v11;
    }

    v17[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v15 = [v9 errorWithDomain:v10 code:-6723 userInfo:v14];
    (v8)[2](v8, 0, v15, 0);
  }
}

- (void)_hearbeatTimer
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (!self->super._heartbeatTimer)
  {
    return;
  }

  mach_absolute_time();
  UpTicksToSecondsF();
  v4 = v3;
  if (v3 >= 300.0)
  {
    ucatCore = self->super._ucatCore;
    if (ucatCore->var0 <= 60)
    {
      if (ucatCore->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        ucatCore = self->super._ucatCore;
      }

      LogPrintF(ucatCore, "[SFServiceSession _hearbeatTimer]", 60, "### Heartbeat timeout after %.3f secs\n", v4);
    }

LABEL_11:
    service = self->_service;
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A768];
    v15 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v11 = v10;
    v12 = @"?";
    if (v10)
    {
      v12 = v10;
    }

    v16[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v14 = [v8 errorWithDomain:v9 code:-71160 userInfo:v13];
    [(SFService *)service serviceSessionFailed:self error:v14];

    return;
  }

  if (v3 > 6.0)
  {
    v5 = self->super._ucatCore;
    if (v5->var0 <= 30)
    {
      if (v5->var0 != -1)
      {
LABEL_6:
        LogPrintF(v5, "[SFServiceSession _hearbeatTimer]", 30, "Heartbeat no I/O in %.3f secs\n", v4);
        return;
      }

      if (_LogCategory_Initialize())
      {
        v5 = self->super._ucatCore;
        goto LABEL_6;
      }
    }
  }
}

- (void)receivedEncryptedData:(id)data type:(unsigned __int8)type
{
  typeCopy = type;
  dataCopy = data;
  dispatch_assert_queue_V2(self->super._dispatchQueue);
  if (!self->super._encryptionReadAEAD)
  {
    ucatCore = self->super._ucatCore;
    if (ucatCore->var0 <= 60)
    {
      if (ucatCore->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_43;
        }

        ucatCore = self->super._ucatCore;
      }

      LogPrintF(ucatCore, "[SFServiceSession receivedEncryptedData:type:]", 60, "### Received encrypted without encryption info\n");
    }

LABEL_43:
    v11 = 0;
    goto LABEL_44;
  }

  v7 = [dataCopy length];
  v8 = v7;
  if (v7 <= 0xF)
  {
    v22 = self->super._ucatCore;
    if (v22->var0 <= 60)
    {
      if (v22->var0 != -1)
      {
LABEL_24:
        LogPrintF(v22, "[SFServiceSession receivedEncryptedData:type:]", 60, "### Received encrypted too short (%zu)\n");
        goto LABEL_43;
      }

      if (_LogCategory_Initialize())
      {
        v22 = self->super._ucatCore;
        goto LABEL_24;
      }
    }

    goto LABEL_43;
  }

  v9 = v7 - 16;
  bytes = [dataCopy bytes];
  v11 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v8 - 16];
  if ([v11 length] != v9)
  {
    v23 = self->super._ucatCore;
    if (v23->var0 <= 60)
    {
      if (v23->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_44;
        }

        v23 = self->super._ucatCore;
      }

      LogPrintF(v23, "[SFServiceSession receivedEncryptedData:type:]", 60, "### Received encrypted without enough memory (%zu bytes)?\n");
    }

LABEL_44:
    v17 = 0;
    goto LABEL_45;
  }

  [v11 mutableBytes];
  encryptionReadNonce = self->super._encryptionReadNonce;
  v29 = bytes + v9;
  v13 = CryptoAEADDecryptMessage();
  v14 = 0;
  v30 = v13;
  do
  {
    if (++encryptionReadNonce[v14])
    {
      v16 = 1;
    }

    else
    {
      v16 = v14 == 11;
    }

    ++v14;
  }

  while (!v16);
  if (v13)
  {
    v24 = self->super._ucatCore;
    if (v24->var0 <= 60)
    {
      if (v24->var0 != -1)
      {
LABEL_31:
        LogPrintF(v24, "[SFServiceSession receivedEncryptedData:type:]", 60, "### Received encrypted decrypt failed: %#m\n");
        goto LABEL_44;
      }

      if (_LogCategory_Initialize())
      {
        v24 = self->super._ucatCore;
        goto LABEL_31;
      }
    }

    goto LABEL_44;
  }

  if (typeCopy == 28)
  {
    v17 = NSDataDecompress();
    v18 = 0;
    if (!v17)
    {
      [SFServiceSession receivedEncryptedData:type:];
      goto LABEL_45;
    }
  }

  else
  {
    v17 = v11;
  }

  v19 = OPACKDecodeData();
  if (!v19)
  {
    v25 = self->super._ucatCore;
    if (v25->var0 <= 60)
    {
      if (v25->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_45;
        }

        v25 = self->super._ucatCore;
      }

      LogPrintF(v25, "[SFServiceSession receivedEncryptedData:type:]", 60, "### Received encrypted decode failed: %#m\n", v30, 16);
    }

LABEL_45:
    v20 = 0;
    goto LABEL_18;
  }

  v20 = v19;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SFServiceSession *)self _receivedObject:v20 flags:1, v29, 16];
  }

  else
  {
    v26 = self->super._ucatCore;
    if (v26->var0 <= 60)
    {
      if (v26->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_18;
        }

        v26 = self->super._ucatCore;
      }

      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      LogPrintF(v26, "[SFServiceSession receivedEncryptedData:type:]", 60, "### Received encrypted bad type (%@)\n", v28, 16);
    }
  }

LABEL_18:
}

- (void)receivedUnencryptedData:(id)data type:(unsigned __int8)type
{
  typeCopy = type;
  dataCopy = data;
  dispatch_assert_queue_V2(self->super._dispatchQueue);
  if (typeCopy == 29)
  {
    v7 = NSDataDecompress();
    v8 = 0;

    if (!v7)
    {
      [SFServiceSession receivedUnencryptedData:type:];
      dataCopy = 0;
      goto LABEL_18;
    }

    dataCopy = v7;
  }

  v9 = OPACKDecodeData();
  if (!v9)
  {
    ucatCore = self->super._ucatCore;
    if (ucatCore->var0 <= 60)
    {
      if (ucatCore->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_27;
        }

        ucatCore = self->super._ucatCore;
      }

      v17 = SFNearbyBLEFrameTypeToString(typeCopy);
      LogPrintF(ucatCore, "[SFServiceSession receivedUnencryptedData:type:]", 60, "### Received unencrypted %s decode failed: %#m\n", v17);
    }

LABEL_27:
    v7 = 0;
    goto LABEL_18;
  }

  v7 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (typeCopy <= 17)
    {
      if (typeCopy == 16)
      {
        selfCopy2 = self;
        v11 = v7;
        v12 = 1;
        goto LABEL_15;
      }

      if (typeCopy == 17)
      {
        selfCopy2 = self;
        v11 = v7;
        v12 = 0;
LABEL_15:
        [(SFServiceSession *)selfCopy2 pairSetup:v11 start:v12];
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    if (typeCopy == 18)
    {
      selfCopy4 = self;
      v14 = v7;
      v15 = 1;
    }

    else
    {
      if (typeCopy != 19)
      {
LABEL_13:
        [(SFServiceSession *)self _receivedObject:v7 flags:0];
        goto LABEL_18;
      }

      selfCopy4 = self;
      v14 = v7;
      v15 = 0;
    }

    [(SFServiceSession *)selfCopy4 pairVerify:v14 start:v15];
    goto LABEL_18;
  }

  v18 = self->super._ucatCore;
  if (v18->var0 <= 60)
  {
    if (v18->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_18;
      }

      v18 = self->super._ucatCore;
    }

    v19 = SFNearbyBLEFrameTypeToString(typeCopy);
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    LogPrintF(v18, "[SFServiceSession receivedUnencryptedData:type:]", 60, "### Received unencrypted %s bad type (%@)\n", v19, v21);
  }

LABEL_18:
}

- (void)_receivedObject:(id)object flags:(unsigned int)flags
{
  v4 = *&flags;
  objectCopy = object;
  v6 = [objectCopy objectForKeyedSubscript:@"_xc"];
  if (!v6)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"_xs"];
    if (v8)
    {
      v7 = v8;
      [(SFServiceSession *)self _receivedResponseID:v8 object:objectCopy flags:v4];
      goto LABEL_14;
    }

    if ([(SFSession *)self _sessionReceivedEvent:objectCopy flags:v4])
    {
      goto LABEL_13;
    }

    receivedObjectHandler = [(SFService *)self->_service receivedObjectHandler];

    if (receivedObjectHandler)
    {
      receivedObjectHandler2 = [(SFService *)self->_service receivedObjectHandler];
      (receivedObjectHandler2)[2](receivedObjectHandler2, self, v4, objectCopy);
    }

    else
    {
      ucatCore = self->super._ucatCore;
      if (ucatCore->var0 <= 50)
      {
        if (ucatCore->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_13;
          }

          ucatCore = self->super._ucatCore;
        }

        LogPrintF(ucatCore, "[SFServiceSession _receivedObject:flags:]", 50, "### Received object with no handler\n");
      }
    }

LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  v7 = v6;
  if (![(SFSession *)self _sessionReceivedRegisteredRequestID:objectCopy flags:v4 xidKey:@"_xc" xidValue:v6])
  {
    [(SFServiceSession *)self _receivedRequestID:v7 object:objectCopy flags:v4];
  }

LABEL_14:
}

- (void)_receivedRequestID:(id)d object:(id)object flags:(unsigned int)flags
{
  v5 = *&flags;
  dCopy = d;
  v9 = [object mutableCopy];
  [v9 removeObjectForKey:@"_xc"];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__SFServiceSession__receivedRequestID_object_flags___block_invoke;
  aBlock[3] = &unk_1E7890570;
  aBlock[4] = self;
  v10 = dCopy;
  v16 = v10;
  v11 = _Block_copy(aBlock);
  if (![(SFSession *)self _sessionReceivedRequest:v9 flags:v5 responseHandler:v11])
  {
    receivedRequestHandler = [(SFService *)self->_service receivedRequestHandler];

    if (receivedRequestHandler)
    {
      receivedRequestHandler2 = [(SFService *)self->_service receivedRequestHandler];
      (receivedRequestHandler2)[2](receivedRequestHandler2, self, v5, v9, v11);
    }

    else
    {
      ucatCore = self->super._ucatCore;
      if (ucatCore->var0 <= 50)
      {
        if (ucatCore->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_8;
          }

          ucatCore = self->super._ucatCore;
        }

        LogPrintF(ucatCore, "[SFServiceSession _receivedRequestID:object:flags:]", 50, "### Received request %@ with no requestHandler\n", v10);
      }
    }
  }

LABEL_8:
}

void __52__SFServiceSession__receivedRequestID_object_flags___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    v9 = *(*(a1 + 32) + 160);
    if (*v9 > 90)
    {
      goto LABEL_11;
    }

    if (*v9 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v9 = *(*(a1 + 32) + 160);
    }

    LogPrintF(v9, "[SFServiceSession _receivedRequestID:object:flags:]_block_invoke", 90, "### Response for %@ non-nil with error: %@\n", *(a1 + 40), v7);
LABEL_11:
    v16 = [v8 mutableCopy];
    [v16 setObject:*(a1 + 40) forKeyedSubscript:@"_xc"];
    [*(a1 + 32) sendWithFlags:a2 object:v16];

    goto LABEL_12;
  }

  v10 = *(a1 + 32);
  v17[0] = @"er";
  v11 = MEMORY[0x1E696AD98];
  v12 = NSErrorToOSStatus();
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = 4294960596;
  }

  v14 = [v11 numberWithInt:v13];
  v17[1] = @"_xc";
  v18[0] = v14;
  v18[1] = *(a1 + 40);
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  [v10 sendWithFlags:a2 object:v15];

LABEL_12:
}

- (void)_receivedResponseID:(id)d object:(id)object flags:(unsigned int)flags
{
  v5 = *&flags;
  v24[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  objectCopy = object;
  v10 = [(NSMutableDictionary *)self->super._requestMap objectForKeyedSubscript:dCopy];
  if (!v10)
  {
    [SFServiceSession _receivedResponseID:? object:? flags:?];
    goto LABEL_6;
  }

  [(NSMutableDictionary *)self->super._requestMap removeObjectForKey:dCopy];
  v11 = [v10 objectForKeyedSubscript:@"_rh"];
  if (!v11)
  {
    [SFServiceSession _receivedResponseID:? object:? flags:?];
    goto LABEL_6;
  }

  v12 = v11;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if ((v5 & 1) != 0 || (Int64Ranged & 1) == 0)
  {
    v14 = [objectCopy mutableCopy];
    [v14 removeObjectForKey:@"_xs"];
    (v12)[2](v12, v5, 0, v14);

    goto LABEL_6;
  }

  ucatCore = self->super._ucatCore;
  if (ucatCore->var0 <= 50)
  {
    if (ucatCore->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      ucatCore = self->super._ucatCore;
    }

    LogPrintF(ucatCore, "[SFServiceSession _receivedResponseID:object:flags:]", 50, "### Received unencrypted response xid %@ for encrypted request\n", dCopy);
  }

LABEL_13:
  v16 = MEMORY[0x1E696ABC0];
  v17 = *MEMORY[0x1E696A768];
  v23 = *MEMORY[0x1E696A578];
  v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
  v19 = v18;
  v20 = @"?";
  if (v18)
  {
    v20 = v18;
  }

  v24[0] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v22 = [v16 errorWithDomain:v17 code:-6768 userInfo:v21];
  (v12)[2](v12, 0, v22, 0);

LABEL_6:
}

- (void)receivedStartRequest:(id)request
{
  requestCopy = request;
  v22 = 0;
  block = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __41__SFServiceSession_receivedStartRequest___block_invoke;
  v20 = &unk_1E788B198;
  selfCopy = self;
  if (receivedStartRequest__onceToken != -1)
  {
    dispatch_once(&receivedStartRequest__onceToken, &block);
  }

  v5 = OPACKDecodeData();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  ucatCore = self->super._ucatCore;
  var0 = ucatCore->var0;
  if ((isKindOfClass & 1) == 0)
  {
    if (var0 <= 60)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_34;
        }

        ucatCore = self->super._ucatCore;
      }

      LogPrintF(ucatCore, "[SFServiceSession receivedStartRequest:]", 60, "### Decode start request failed: %#m\n", v22, block, v18, v19, v20, selfCopy);
    }

LABEL_34:
    v10 = 0;
    goto LABEL_28;
  }

  if (var0 > 30)
  {
    goto LABEL_8;
  }

  if (var0 != -1)
  {
    goto LABEL_6;
  }

  if (_LogCategory_Initialize())
  {
    ucatCore = self->super._ucatCore;
LABEL_6:
    LogPrintF(ucatCore, "[SFServiceSession receivedStartRequest:]", 30, "Start request received: %##@\n", v5, block, v18, v19, v20, selfCopy);
  }

LABEL_8:
  self->super._sessionID = CFDictionaryGetInt64Ranged();
  CFStringGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  v10 = v9;
  if (v9)
  {
    [v9 UTF8String];
    v11 = TextToSourceVersion();
    self->super._sharingSourceVersion = v11;
    if (v11)
    {
      goto LABEL_16;
    }
  }

  else if (self->super._sharingSourceVersion)
  {
    goto LABEL_16;
  }

  v12 = self->super._ucatCore;
  if (v12->var0 <= 115)
  {
    if (v12->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_16;
      }

      v12 = self->super._ucatCore;
    }

    LogPrintF(v12, "[SFServiceSession receivedStartRequest:]", 115, "Error: Sharing version %@ is not convertable to SourceVersion\n", v10);
  }

LABEL_16:
  sessionFlags = self->super._sessionFlags;
  if ((sessionFlags & 1) != 0 && self->super._sharingSourceVersion >= 0x7E57C0)
  {
    sessionFlags |= 2u;
    self->super._sessionFlags = sessionFlags;
  }

  if ((sessionFlags & 0x20) != 0 && self->super._sharingSourceVersion >= 0x8FE454)
  {
    self->super._sessionFlags = sessionFlags | 0x40;
  }

  v14 = self->super._ucatCore;
  if (v14->var0 > 30)
  {
    goto LABEL_26;
  }

  if (v14->var0 != -1)
  {
    goto LABEL_24;
  }

  if (_LogCategory_Initialize())
  {
    v14 = self->super._ucatCore;
LABEL_24:
    LogPrintF(v14, "[SFServiceSession receivedStartRequest:]", 30, "Start ack send: %##@\n", &unk_1F1D7D740);
  }

LABEL_26:
  DataMutable = OPACKEncoderCreateDataMutable();
  if (DataMutable)
  {
    v16 = DataMutable;
    [(SFServiceSession *)self _sendFrameType:24 data:DataMutable];
  }

  else
  {
    [(SFServiceSession *)&self->super._ucatCore receivedStartRequest:v10, &v23];
    v10 = v23;
  }

LABEL_28:
}

int *__41__SFServiceSession_receivedStartRequest___block_invoke(uint64_t a1)
{
  [@"1945.10.6" UTF8String];
  result = TextToSourceVersion();
  if (!result)
  {
    result = *(*(a1 + 32) + 160);
    if (*result <= 115)
    {
      if (*result != -1)
      {
        return LogPrintF(result, "[SFServiceSession receivedStartRequest:]_block_invoke", 115, "Error: Local Sharing version %@ is not convertable to SourceVersion\n", @"1945.10.6");
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        result = *(*(a1 + 32) + 160);
        return LogPrintF(result, "[SFServiceSession receivedStartRequest:]_block_invoke", 115, "Error: Local Sharing version %@ is not convertable to SourceVersion\n", @"1945.10.6");
      }
    }
  }

  return result;
}

- (void)sendEncryptedObject:(id)object
{
  v18[2] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v16 = 0;
  v18[0] = 0;
  v18[1] = 0;
  dispatch_assert_queue_V2(self->super._dispatchQueue);
  if (!self->_service->_xpcCnx)
  {
    [SFServiceSession sendEncryptedObject:];
LABEL_21:
    v6 = v17;
    goto LABEL_16;
  }

  if (!self->super._encryptionWriteAEAD)
  {
    [SFServiceSession sendEncryptedObject:];
    goto LABEL_21;
  }

  DataMutable = OPACKEncoderCreateDataMutable();
  if (!DataMutable)
  {
    [(SFServiceSession *)self sendEncryptedObject:&v17];
    goto LABEL_21;
  }

  v6 = DataMutable;
  if ((self->super._sessionFlags & 2) != 0)
  {
    v8 = NSDataCompress();
    v9 = 0;
    if (!v8)
    {
      [SFServiceSession sendEncryptedObject:];
      goto LABEL_16;
    }

    v10 = [v8 mutableCopy];

    v7 = 28;
    v6 = v10;
  }

  else
  {
    v7 = 6;
  }

  [v6 mutableBytes];
  [v6 length];
  encryptionWriteNonce = self->super._encryptionWriteNonce;
  v12 = CryptoAEADEncryptMessage();
  v13 = 0;
  v16 = v12;
  do
  {
    if (++encryptionWriteNonce[v13])
    {
      v15 = 1;
    }

    else
    {
      v15 = v13 == 11;
    }

    ++v13;
  }

  while (!v15);
  if (v12)
  {
    [SFServiceSession sendEncryptedObject:];
    goto LABEL_21;
  }

  [v6 appendBytes:v18 length:{16, v18, 16}];
  [(SFServiceSession *)self _sendFrameType:v7 data:v6];
LABEL_16:
}

- (void)sendFrameType:(unsigned __int8)type data:(id)data
{
  dataCopy = data;
  dispatchQueue = self->super._dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SFServiceSession_sendFrameType_data___block_invoke;
  block[3] = &unk_1E788F2F0;
  typeCopy = type;
  block[4] = self;
  v10 = dataCopy;
  v8 = dataCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_sendFrameType:(unsigned __int8)type data:(id)data
{
  typeCopy = type;
  dataCopy = data;
  self->_sendLastTicks = mach_absolute_time();
  [(SFService *)self->_service _sendToPeer:self->super._peer type:typeCopy data:dataCopy];
}

- (void)_sendFrameType:(unsigned __int8)type unencryptedObject:(id)object
{
  typeCopy = type;
  objectCopy = object;
  self->_sendLastTicks = mach_absolute_time();
  [(SFService *)self->_service _sendToPeer:self->super._peer type:typeCopy unencryptedObject:objectCopy];
}

- (void)sendRequestWithFlags:(unsigned int)flags object:(id)object responseHandler:(id)handler
{
  objectCopy = object;
  handlerCopy = handler;
  dispatchQueue = self->super._dispatchQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__SFServiceSession_sendRequestWithFlags_object_responseHandler___block_invoke;
  v13[3] = &unk_1E788EAB8;
  flagsCopy = flags;
  v13[4] = self;
  v14 = objectCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = objectCopy;
  dispatch_async(dispatchQueue, v13);
}

- (void)_sendRequestWithFlags:(unsigned int)flags object:(id)object responseHandler:(id)handler
{
  v6 = *&flags;
  v17[2] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v9 = [object mutableCopy];
  RandomBytes();
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:0];
  [v9 setObject:v10 forKeyedSubscript:@"_xs"];
  if (!self->super._requestMap)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    requestMap = self->super._requestMap;
    self->super._requestMap = v11;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{v6, 0, @"_fl"}];
  v16[1] = @"_rh";
  v17[0] = v13;
  v14 = _Block_copy(handlerCopy);

  v17[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [(NSMutableDictionary *)self->super._requestMap setObject:v15 forKeyedSubscript:v10];

  [(SFServiceSession *)self _sendWithFlags:v6 object:v9];
}

- (void)sendWithFlags:(unsigned int)flags object:(id)object
{
  objectCopy = object;
  dispatchQueue = self->super._dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SFServiceSession_sendWithFlags_object___block_invoke;
  block[3] = &unk_1E788EC90;
  flagsCopy = flags;
  block[4] = self;
  v10 = objectCopy;
  v8 = objectCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_sendWithFlags:(unsigned int)flags object:(id)object
{
  flagsCopy = flags;
  objectCopy = object;
  v8 = objectCopy;
  if (flagsCopy)
  {
    [(SFServiceSession *)self sendEncryptedObject:objectCopy];
  }

  else
  {
    if ((self->super._sessionFlags & 2) != 0)
    {
      v7 = 29;
    }

    else
    {
      v7 = 5;
    }

    [(SFServiceSession *)self _sendFrameType:v7 unencryptedObject:objectCopy];
  }
}

- (void)sessionReceivedFrameType:(unsigned __int8)type data:(id)data
{
  typeCopy = type;
  dataCopy = data;
  v10 = dataCopy;
  if (typeCopy > 22)
  {
    if (typeCopy <= 28)
    {
      if (typeCopy == 23)
      {
        [(SFServiceSession *)self receivedStartRequest:dataCopy];
        goto LABEL_18;
      }

      if (typeCopy != 28)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    if (typeCopy != 29)
    {
      if (typeCopy == 64)
      {
        selfCopy2 = self;
        v8 = dataCopy;
        v9 = 0;
      }

      else
      {
        if (typeCopy != 65)
        {
          goto LABEL_19;
        }

        selfCopy2 = self;
        v8 = dataCopy;
        v9 = 1;
      }

      [(SFSession *)selfCopy2 sessionReceivedFragmentData:v8 last:v9];
      goto LABEL_18;
    }

LABEL_11:
    [(SFServiceSession *)self receivedUnencryptedData:dataCopy type:typeCopy];
LABEL_18:
    dataCopy = v10;
    goto LABEL_19;
  }

  if ((typeCopy - 16) < 4 || typeCopy == 5)
  {
    goto LABEL_11;
  }

  if (typeCopy == 6)
  {
LABEL_14:
    [(SFServiceSession *)self receivedEncryptedData:dataCopy type:typeCopy];
    goto LABEL_18;
  }

LABEL_19:
}

- (BOOL)pairingContainsACL:(id)l
{
  dispatchQueue = self->super._dispatchQueue;
  lCopy = l;
  dispatch_assert_queue_V2(dispatchQueue);
  pairVerifySession = self->_pairVerifySession;
  if (!pairVerifySession)
  {
    pairVerifySession = self->_pairSetupSession;
  }

  pairedPeer = [(CUPairingSession *)pairVerifySession pairedPeer];
  v8 = [pairedPeer acl];
  Int64 = CFDictionaryGetInt64();

  return Int64 != 0;
}

- (id)pairingDeriveKeyForIdentifier:(id)identifier keyLength:(unint64_t)length
{
  identifierCopy = identifier;
  uTF8String = [identifierCopy UTF8String];
  v8 = strlen(uTF8String);
  v9 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:length];
  v10 = v9;
  pairSetupSession = self->_pairSetupSession;
  if (pairSetupSession || (pairSetupSession = self->_pairVerifySession) != 0)
  {
    v12 = -[CUPairingSession deriveKeyWithSaltPtr:saltLen:infoPtr:infoLen:keyLen:outputKeyPtr:](pairSetupSession, "deriveKeyWithSaltPtr:saltLen:infoPtr:infoLen:keyLen:outputKeyPtr:", "IdentifierKeyInfo", 17, uTF8String, v8, length, [v9 mutableBytes]);
    if (!v12)
    {
      v13 = v10;
      goto LABEL_5;
    }

    v15 = v12;
  }

  else
  {
    v15 = 4294960551;
  }

  ucatCore = self->super._ucatCore;
  if (ucatCore->var0 <= 60)
  {
    if (ucatCore->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      ucatCore = self->super._ucatCore;
    }

    LogPrintF(ucatCore, "[SFServiceSession pairingDeriveKeyForIdentifier:keyLength:]", 60, "### Derive identifier '%@' key failed: %#m\n", identifierCopy, v15);
  }

LABEL_13:
  v13 = 0;
LABEL_5:

  return v13;
}

- (void)pairSetupWithFlags:(unsigned int)flags
{
  RandomBytes();
  ucatCore = self->super._ucatCore;
  if (ucatCore->var0 > 30)
  {
    goto LABEL_5;
  }

  if (ucatCore->var0 != -1)
  {
    goto LABEL_3;
  }

  if (_LogCategory_Initialize())
  {
    ucatCore = self->super._ucatCore;
LABEL_3:
    LogPrintF(ucatCore, "[SFServiceSession pairSetupWithFlags:]", 30, "PairSetup client start: XID 0x%X\n", self->_pairSetupXID);
  }

LABEL_5:
  if ((self->super._sessionFlags & 0x800) != 0)
  {
    v6 = 20;
  }

  else
  {
    v6 = flags & 0x18 | 4;
    showPINHandler = [(SFService *)self->_service showPINHandler];
    if (showPINHandler)
    {
    }

    else
    {
      showPINHandlerEx = [(SFService *)self->_service showPINHandlerEx];

      if (showPINHandlerEx)
      {
        v6 = v6;
      }

      else
      {
        v6 = flags & 0x18 | 0x84;
      }
    }
  }

  promptForPINHandler = [(SFService *)self->_service promptForPINHandler];

  [(CUPairingSession *)self->_pairSetupSession invalidate];
  v10 = objc_alloc_init(MEMORY[0x1E69994F8]);
  pairSetupSession = self->_pairSetupSession;
  self->_pairSetupSession = v10;

  pairSetupACL = [(SFService *)self->_service pairSetupACL];

  if (pairSetupACL)
  {
    pairSetupACL2 = [(SFService *)self->_service pairSetupACL];
    [(CUPairingSession *)self->_pairSetupSession setAcl:pairSetupACL2];
  }

  [(CUPairingSession *)self->_pairSetupSession setDispatchQueue:self->super._dispatchQueue];
  [(CUPairingSession *)self->_pairSetupSession setFlags:v6];
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:self->super._ucatCrypto->var4];
  [(CUPairingSession *)self->_pairSetupSession setLabel:v14];

  [(CUPairingSession *)self->_pairSetupSession setPinType:[(SFService *)self->_service pinType]];
  [(CUPairingSession *)self->_pairSetupSession setSessionType:1];
  v15 = self->super._fixedPIN;
  if (![(NSString *)v15 length])
  {
    fixedPIN = [(SFService *)self->_service fixedPIN];

    v15 = fixedPIN;
  }

  if (![(NSString *)v15 length]&& IsAppleInternalBuild())
  {
    CFStringGetTypeID();
    v17 = CFPrefs_CopyTypedValue();

    v15 = v17;
  }

  if ([(NSString *)v15 length])
  {
    [(CUPairingSession *)self->_pairSetupSession setFixedPIN:v15];
  }

  showPINHandlerEx2 = [(SFService *)self->_service showPINHandlerEx];

  service = self->_service;
  if (showPINHandlerEx2)
  {
    showPINHandlerEx3 = [(SFService *)service showPINHandlerEx];
    [(CUPairingSession *)self->_pairSetupSession setShowPINHandlerEx:showPINHandlerEx3];
  }

  else
  {
    showPINHandler2 = [(SFService *)service showPINHandler];

    if (!showPINHandler2)
    {
      goto LABEL_26;
    }

    showPINHandlerEx3 = [(SFService *)self->_service showPINHandler];
    [(CUPairingSession *)self->_pairSetupSession setShowPINHandler:showPINHandlerEx3];
  }

LABEL_26:
  hidePINHandler = [(SFService *)self->_service hidePINHandler];

  if (hidePINHandler)
  {
    hidePINHandler2 = [(SFService *)self->_service hidePINHandler];
    [(CUPairingSession *)self->_pairSetupSession setHidePINHandler:hidePINHandler2];
  }

  if (promptForPINHandler)
  {
    promptForPINHandler2 = [(SFService *)self->_service promptForPINHandler];
    [(CUPairingSession *)self->_pairSetupSession setPromptForPINHandler:promptForPINHandler2];
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __39__SFServiceSession_pairSetupWithFlags___block_invoke;
  v27[3] = &unk_1E7890598;
  v27[4] = self;
  flagsCopy = flags;
  [(CUPairingSession *)self->_pairSetupSession setSendDataHandler:v27];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __39__SFServiceSession_pairSetupWithFlags___block_invoke_2;
  v26[3] = &unk_1E788B238;
  v26[4] = self;
  [(CUPairingSession *)self->_pairSetupSession setCompletionHandler:v26];
  v25 = self->super._ucatCore;
  if (v25->var0 <= 30)
  {
    if (v25->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_34;
      }

      v25 = self->super._ucatCore;
    }

    LogPrintF(v25, "[SFServiceSession pairSetupWithFlags:]", 30, "PairSetup client start: XID 0x%X, SF %#{flags}, PF %#{flags}\n", self->_pairSetupXID, self->super._sessionFlags, &unk_1A998FF40, v6, &unk_1A9990015);
  }

LABEL_34:
  [(CUPairingSession *)self->_pairSetupSession activate];
}

void __39__SFServiceSession_pairSetupWithFlags___block_invoke(uint64_t a1, int a2, void *a3)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 160);
  if (*v7 > 30)
  {
    goto LABEL_5;
  }

  if (*v7 != -1)
  {
    goto LABEL_3;
  }

  v8 = _LogCategory_Initialize();
  v6 = *(a1 + 32);
  if (v8)
  {
    v7 = *(v6 + 160);
LABEL_3:
    LogPrintF(v7, "[SFServiceSession pairSetupWithFlags:]_block_invoke", 30, "sending data with flags %d", a2);
    v6 = *(a1 + 32);
  }

LABEL_5:
  v15[0] = @"pd";
  v15[1] = @"pxid";
  v16[0] = v5;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v6 + 608)];
  v16[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

  if (a2)
  {
    v12 = [v10 mutableCopy];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 40)];
    [v12 setObject:v13 forKeyedSubscript:@"pf"];

    v14 = [v12 copy];
    v11 = 16;
    v10 = v14;
  }

  else
  {
    v11 = 17;
  }

  [*(a1 + 32) _sendFrameType:v11 unencryptedObject:v10];
}

void __39__SFServiceSession_pairSetupWithFlags___block_invoke_2(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 632) pairSetupCompletionHandler];

  if (v4)
  {
    v5 = [*(*(a1 + 32) + 632) pairSetupCompletionHandler];
    (v5)[2](v5, v3);
  }

  v6 = [*(a1 + 32) _pairSetupCompleted:NSErrorToOSStatus()];
  if (v6)
  {
    v7 = *(a1 + 32);
    v10 = @"er";
    v8 = [MEMORY[0x1E696AD98] numberWithInt:v6];
    v11[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v7 _sendFrameType:17 unencryptedObject:v9];
  }
}

- (void)pairSetup:(id)setup start:(BOOL)start
{
  startCopy = start;
  v50[1] = *MEMORY[0x1E69E9840];
  setupCopy = setup;
  v47 = 0;
  if (![(SFService *)self->_service pairSetupDisabled])
  {
    ucatCore = self->super._ucatCore;
    if (ucatCore->var0 <= 30)
    {
      if (ucatCore->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_12;
        }

        ucatCore = self->super._ucatCore;
      }

      v11 = "no";
      if (startCopy)
      {
        v11 = "yes";
      }

      if (self->_pairSetupSession)
      {
        v12 = @"not nil";
      }

      else
      {
        v12 = @"is nil";
      }

      LogPrintF(ucatCore, "[SFServiceSession pairSetup:start:]", 30, "pairSetup inStart = %s | _pairSetupSession = %@", v11, v12);
    }

LABEL_12:
    if (!startCopy && self->_pairSetupSession)
    {
      v13 = self->super._ucatCore;
      if (v13->var0 > 30)
      {
        goto LABEL_58;
      }

      if (v13->var0 != -1)
      {
        goto LABEL_16;
      }

      if (_LogCategory_Initialize())
      {
        v13 = self->super._ucatCore;
LABEL_16:
        LogPrintF(v13, "[SFServiceSession pairSetup:start:]", 30, "PairSetup server next: XID 0x%X\n", self->_pairSetupXID);
      }

LABEL_58:
      CFDataGetTypeID();
      v42 = CFDictionaryGetTypedValue();
      v9 = v42;
      if (v47)
      {
        [SFServiceSession pairSetup:start:];
      }

      else
      {
        if (v42)
        {
          [(CUPairingSession *)self->_pairSetupSession receivedData:v42];
          goto LABEL_61;
        }

        if (([SFServiceSession pairSetup:? start:?]& 1) != 0)
        {
          v9 = 0;
          goto LABEL_66;
        }
      }

      v9 = v48;
      goto LABEL_61;
    }

    Int64Ranged = CFDictionaryGetInt64Ranged();
    self->_pairSetupXID = CFDictionaryGetInt64Ranged();
    if ((self->super._sessionFlags & 0x800) != 0)
    {
      v15 = 20;
    }

    else
    {
      v15 = Int64Ranged & 0x18 | 4;
      showPINHandler = [(SFService *)self->_service showPINHandler];
      if (showPINHandler)
      {
      }

      else
      {
        showPINHandlerEx = [(SFService *)self->_service showPINHandlerEx];

        if (!showPINHandlerEx)
        {
          v15 = Int64Ranged & 0x18 | 0x84;
        }
      }
    }

    v18 = v15 | Int64Ranged & 0x100u;
    promptForPINHandler = [(SFService *)self->_service promptForPINHandler];

    [(CUPairingSession *)self->_pairSetupSession setCompletionHandler:0];
    [(CUPairingSession *)self->_pairSetupSession setSendDataHandler:0];
    [(CUPairingSession *)self->_pairSetupSession invalidate];
    v20 = objc_alloc_init(MEMORY[0x1E69994F8]);
    pairSetupSession = self->_pairSetupSession;
    self->_pairSetupSession = v20;

    pairSetupACL = [(SFService *)self->_service pairSetupACL];

    if (pairSetupACL)
    {
      pairSetupACL2 = [(SFService *)self->_service pairSetupACL];
      [(CUPairingSession *)self->_pairSetupSession setAcl:pairSetupACL2];
    }

    [(CUPairingSession *)self->_pairSetupSession setDispatchQueue:self->super._dispatchQueue];
    [(CUPairingSession *)self->_pairSetupSession setFlags:v18];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:self->super._ucatCrypto->var4];
    [(CUPairingSession *)self->_pairSetupSession setLabel:v24];

    [(CUPairingSession *)self->_pairSetupSession setPinType:[(SFService *)self->_service pinType]];
    if (promptForPINHandler)
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    [(CUPairingSession *)self->_pairSetupSession setSessionType:v25];
    peerDevice = [(SFSession *)self peerDevice];
    -[CUPairingSession setPeerDeviceClass:](self->_pairSetupSession, "setPeerDeviceClass:", MGDeviceClassFromSFDeviceClassCode([peerDevice deviceClassCode]));

    v27 = self->super._fixedPIN;
    if (![(NSString *)v27 length])
    {
      fixedPIN = [(SFService *)self->_service fixedPIN];

      v27 = fixedPIN;
    }

    if (![(NSString *)v27 length]&& IsAppleInternalBuild())
    {
      CFStringGetTypeID();
      v29 = CFPrefs_CopyTypedValue();

      v27 = v29;
    }

    if ([(NSString *)v27 length])
    {
      [(CUPairingSession *)self->_pairSetupSession setFixedPIN:v27];
    }

    showPINHandlerEx2 = [(SFService *)self->_service showPINHandlerEx];

    service = self->_service;
    if (showPINHandlerEx2)
    {
      showPINHandlerEx3 = [(SFService *)service showPINHandlerEx];
      [(CUPairingSession *)self->_pairSetupSession setShowPINHandlerEx:showPINHandlerEx3];
    }

    else
    {
      showPINHandler2 = [(SFService *)service showPINHandler];

      if (!showPINHandler2)
      {
        goto LABEL_40;
      }

      showPINHandlerEx3 = [(SFService *)self->_service showPINHandler];
      [(CUPairingSession *)self->_pairSetupSession setShowPINHandler:showPINHandlerEx3];
    }

LABEL_40:
    hidePINHandler = [(SFService *)self->_service hidePINHandler];

    if (hidePINHandler)
    {
      hidePINHandler2 = [(SFService *)self->_service hidePINHandler];
      [(CUPairingSession *)self->_pairSetupSession setHidePINHandler:hidePINHandler2];
    }

    if (promptForPINHandler)
    {
      promptForPINHandler2 = [(SFService *)self->_service promptForPINHandler];
      [(CUPairingSession *)self->_pairSetupSession setPromptForPINHandler:promptForPINHandler2];
    }

    isCLIMode = [(SFService *)self->_service isCLIMode];
    v38 = self->super._ucatCore;
    var0 = v38->var0;
    if (!isCLIMode)
    {
      if (var0 > 30)
      {
        goto LABEL_53;
      }

      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
LABEL_53:
          v46[0] = MEMORY[0x1E69E9820];
          v46[1] = 3221225472;
          v46[2] = __36__SFServiceSession_pairSetup_start___block_invoke;
          v46[3] = &unk_1E78905C0;
          v46[4] = self;
          [(CUPairingSession *)self->_pairSetupSession setSendDataHandler:v46];
          v45[0] = MEMORY[0x1E69E9820];
          v45[1] = 3221225472;
          v45[2] = __36__SFServiceSession_pairSetup_start___block_invoke_2;
          v45[3] = &unk_1E788B238;
          v45[4] = self;
          [(CUPairingSession *)self->_pairSetupSession setCompletionHandler:v45];
          v41 = self->super._ucatCore;
          if (v41->var0 <= 30)
          {
            if (v41->var0 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_57;
              }

              v41 = self->super._ucatCore;
            }

            LogPrintF(v41, "[SFServiceSession pairSetup:start:]", 30, "PairSetup server start: XID 0x%X, SF %#{flags}, PF %#{flags}\n", self->_pairSetupXID, self->super._sessionFlags, &unk_1A998FF40, v18, &unk_1A9990015);
          }

LABEL_57:
          [(CUPairingSession *)self->_pairSetupSession activate];

          goto LABEL_58;
        }

        v38 = self->super._ucatCore;
      }

      LogPrintF(v38, "[SFServiceSession pairSetup:start:]", 30, "pairSetup NOT in cli mode, using regular passcode");
      goto LABEL_53;
    }

    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_52;
        }

        v38 = self->super._ucatCore;
      }

      LogPrintF(v38, "[SFServiceSession pairSetup:start:]", 30, "pairSetup in cli mode, using forced passcode");
    }

LABEL_52:
    forcedPin = [(SFService *)self->_service forcedPin];
    [(CUPairingSession *)self->_pairSetupSession setFixedPIN:forcedPin];

    goto LABEL_53;
  }

  v47 = -6731;
  v49 = @"er";
  v7 = [MEMORY[0x1E696AD98] numberWithInt:4294960565];
  v50[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
  [(SFServiceSession *)self _sendFrameType:17 unencryptedObject:v8];

  v9 = 0;
LABEL_61:
  v43 = v47;
  if (v47)
  {
    v44 = self->super._ucatCore;
    if (v44->var0 <= 60)
    {
      if (v44->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_66;
        }

        v44 = self->super._ucatCore;
        v43 = v47;
      }

      LogPrintF(v44, "[SFServiceSession pairSetup:start:]", 60, "### PairSetup failed: %#m\n", v43);
    }
  }

LABEL_66:
}

void __36__SFServiceSession_pairSetup_start___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v9[0] = @"pd";
  v9[1] = @"pxid";
  v10[0] = a3;
  v4 = MEMORY[0x1E696AD98];
  v5 = v3[152];
  v6 = a3;
  v7 = [v4 numberWithUnsignedInt:v5];
  v10[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v3 _sendFrameType:17 unencryptedObject:v8];
}

void __36__SFServiceSession_pairSetup_start___block_invoke_2(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 632) pairSetupCompletionHandler];

  if (v4)
  {
    v5 = [*(*(a1 + 32) + 632) pairSetupCompletionHandler];
    (v5)[2](v5, v3);
  }

  v6 = [*(a1 + 32) _pairSetupCompleted:NSErrorToOSStatus()];
  if (v6)
  {
    v7 = *(a1 + 32);
    v10 = @"er";
    v8 = [MEMORY[0x1E696AD98] numberWithInt:v6];
    v11[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v7 _sendFrameType:17 unencryptedObject:v9];
  }
}

- (int)_pairSetupCompleted:(int)completed
{
  sessionSecuredHandler = *&completed;
  v13 = *MEMORY[0x1E69E9840];
  memset(__s, 0, sizeof(__s));
  memset(v11, 0, sizeof(v11));
  if (completed)
  {
LABEL_16:
    ucatCore = self->super._ucatCore;
    if (ucatCore->var0 <= 60)
    {
      if (ucatCore->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_20;
        }

        ucatCore = self->super._ucatCore;
      }

      LogPrintF(ucatCore, "[SFServiceSession _pairSetupCompleted:]", 60, "### PairSetup server failed: %#m\n", sessionSecuredHandler);
    }

LABEL_20:
    [(CUPairingSession *)self->_pairSetupSession invalidate];
    pairSetupSession = self->_pairSetupSession;
    self->_pairSetupSession = 0;
    goto LABEL_12;
  }

  v5 = self->_pairSetupSession;
  if (!v5)
  {
    sessionSecuredHandler = 4294960534;
    goto LABEL_16;
  }

  v6 = [(CUPairingSession *)v5 deriveKeyWithSaltPtr:"ReadKeySalt" saltLen:11 infoPtr:"ReadKeyInfo" infoLen:11 keyLen:32 outputKeyPtr:v11];
  if (v6 || (v6 = [(CUPairingSession *)self->_pairSetupSession deriveKeyWithSaltPtr:"WriteKeySalt" saltLen:12 infoPtr:"WriteKeyInfo" infoLen:12 keyLen:32 outputKeyPtr:__s], v6) || (v6 = [(SFServiceSession *)self setEncryptionReadKey:__s readKeyLen:32 writeKey:v11 writeKeyLen:32], v6))
  {
    sessionSecuredHandler = v6;
    goto LABEL_16;
  }

  memset_s(__s, 0x20uLL, 0, 0x20uLL);
  memset_s(v11, 0x20uLL, 0, 0x20uLL);
  v7 = self->super._ucatCore;
  if (v7->var0 > 30)
  {
    goto LABEL_10;
  }

  if (v7->var0 != -1)
  {
    goto LABEL_8;
  }

  if (_LogCategory_Initialize())
  {
    v7 = self->super._ucatCore;
LABEL_8:
    LogPrintF(v7, "[SFServiceSession _pairSetupCompleted:]", 30, "PairSetup server completed\n");
  }

LABEL_10:
  sessionSecuredHandler = [(SFService *)self->_service sessionSecuredHandler];

  if (sessionSecuredHandler)
  {
    pairSetupSession = [(SFService *)self->_service sessionSecuredHandler];
    (pairSetupSession)[2](pairSetupSession, self);
    LODWORD(sessionSecuredHandler) = 0;
LABEL_12:
  }

  return sessionSecuredHandler;
}

- (void)pairVerify:(id)verify start:(BOOL)start
{
  verifyCopy = verify;
  v26 = 0;
  if (start || !self->_pairVerifySession)
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
    if ((CFDictionaryGetInt64Ranged() & 8) != 0)
    {
      v8 = 12;
    }

    else
    {
      v8 = 4;
    }

    [(CUPairingSession *)self->_pairVerifySession setCompletionHandler:0];
    [(CUPairingSession *)self->_pairVerifySession setSendDataHandler:0];
    [(CUPairingSession *)self->_pairVerifySession invalidate];
    if (([(SFService *)self->_service sessionFlags]& 4) != 0)
    {
      if (([(SFService *)self->_service sessionFlags]& 8) != 0)
      {
        v9 = 1052672;
      }

      else
      {
        v9 = 4096;
      }

      v8 = v9 & 0xFFDFFFFF | ((([(SFService *)self->_service sessionFlags]>> 4) & 1) << 21) | v8;
    }

    else if ((Int64Ranged & 0x400) == 0)
    {
      v8 = v8 & 0xFBFFFFFF | (((self->super._sessionFlags >> 6) & 1) << 26);
    }

    v10 = objc_alloc_init(MEMORY[0x1E69994F8]);
    pairVerifySession = self->_pairVerifySession;
    self->_pairVerifySession = v10;

    pairVerifyACL = [(SFService *)self->_service pairVerifyACL];

    if (pairVerifyACL)
    {
      pairVerifyACL2 = [(SFService *)self->_service pairVerifyACL];
      [(CUPairingSession *)self->_pairVerifySession setAcl:pairVerifyACL2];
    }

    [(CUPairingSession *)self->_pairVerifySession setDispatchQueue:self->super._dispatchQueue];
    [(CUPairingSession *)self->_pairVerifySession setFlags:v8];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:self->super._ucatCrypto->var4];
    [(CUPairingSession *)self->_pairVerifySession setLabel:v14];

    [(CUPairingSession *)self->_pairVerifySession setSessionType:4];
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    myAppleIDInfoClient = [(SFService *)self->_service myAppleIDInfoClient];

    service = self->_service;
    if (myAppleIDInfoClient)
    {
      myAppleIDInfoClient2 = [(SFService *)service myAppleIDInfoClient];
      [(CUPairingSession *)self->_pairVerifySession setMyAppleIDInfoClient:myAppleIDInfoClient2];
    }

    else
    {
      myAppleID = [(SFService *)service myAppleID];

      if (!myAppleID)
      {
        goto LABEL_21;
      }

      myAppleIDInfoClient2 = [(SFService *)self->_service myAppleID];
      [(CUPairingSession *)self->_pairVerifySession setMyAppleID:myAppleIDInfoClient2];
    }

LABEL_21:
    if (self->super._peerAppleID)
    {
      [(CUPairingSession *)self->_pairVerifySession setPeerAppleID:?];
    }

    else
    {
      peerAppleID = [(SFService *)self->_service peerAppleID];
      [(CUPairingSession *)self->_pairVerifySession setPeerAppleID:peerAppleID];
    }

LABEL_24:
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __37__SFServiceSession_pairVerify_start___block_invoke;
    v25[3] = &unk_1E78905C0;
    v25[4] = self;
    [(CUPairingSession *)self->_pairVerifySession setSendDataHandler:v25];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __37__SFServiceSession_pairVerify_start___block_invoke_2;
    v24[3] = &unk_1E788B238;
    v24[4] = self;
    [(CUPairingSession *)self->_pairVerifySession setCompletionHandler:v24];
    [(CUPairingSession *)self->_pairVerifySession activate];
  }

  CFDataGetTypeID();
  v20 = CFDictionaryGetTypedValue();
  v21 = v20;
  if (v26)
  {
    [SFServiceSession pairVerify:start:];
LABEL_36:
    v21 = v27;
    goto LABEL_28;
  }

  if (!v20)
  {
    [(SFServiceSession *)&v26 pairVerify:&v27 start:?];
    goto LABEL_36;
  }

  [(CUPairingSession *)self->_pairVerifySession receivedData:v20];
LABEL_28:
  v22 = v26;
  if (v26)
  {
    ucatCore = self->super._ucatCore;
    if (ucatCore->var0 <= 60)
    {
      if (ucatCore->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_33;
        }

        ucatCore = self->super._ucatCore;
        v22 = v26;
      }

      LogPrintF(ucatCore, "[SFServiceSession pairVerify:start:]", 60, "### PairVerify failed: %#m\n", v22);
    }
  }

LABEL_33:
}

void __37__SFServiceSession_pairVerify_start___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v7 = @"pd";
  v8[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v3 _sendFrameType:19 unencryptedObject:v6];
}

void __37__SFServiceSession_pairVerify_start___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) _pairVerifyCompleted:NSErrorToOSStatus()];
  if (v3)
  {
    v4 = *(a1 + 32);
    v7 = @"er";
    v5 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [v4 _sendFrameType:19 unencryptedObject:v6];
  }
}

- (int)_pairVerifyCompleted:(int)completed
{
  sessionSecuredHandler = *&completed;
  v13 = *MEMORY[0x1E69E9840];
  memset(__s, 0, sizeof(__s));
  memset(v11, 0, sizeof(v11));
  if (completed)
  {
LABEL_16:
    ucatCore = self->super._ucatCore;
    if (ucatCore->var0 <= 60)
    {
      if (ucatCore->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_20;
        }

        ucatCore = self->super._ucatCore;
      }

      LogPrintF(ucatCore, "[SFServiceSession _pairVerifyCompleted:]", 60, "### PairVerify failed: %#m\n", sessionSecuredHandler);
    }

LABEL_20:
    [(CUPairingSession *)self->_pairVerifySession invalidate];
    pairVerifySession = self->_pairVerifySession;
    self->_pairVerifySession = 0;
    goto LABEL_12;
  }

  v5 = self->_pairVerifySession;
  if (!v5)
  {
    sessionSecuredHandler = 4294960534;
    goto LABEL_16;
  }

  v6 = [(CUPairingSession *)v5 deriveKeyWithSaltPtr:"ReadKeySalt" saltLen:11 infoPtr:"ReadKeyInfo" infoLen:11 keyLen:32 outputKeyPtr:v11];
  if (v6 || (v6 = [(CUPairingSession *)self->_pairVerifySession deriveKeyWithSaltPtr:"WriteKeySalt" saltLen:12 infoPtr:"WriteKeyInfo" infoLen:12 keyLen:32 outputKeyPtr:__s], v6) || (v6 = [(SFServiceSession *)self setEncryptionReadKey:__s readKeyLen:32 writeKey:v11 writeKeyLen:32], v6))
  {
    sessionSecuredHandler = v6;
    goto LABEL_16;
  }

  memset_s(__s, 0x20uLL, 0, 0x20uLL);
  memset_s(v11, 0x20uLL, 0, 0x20uLL);
  v7 = self->super._ucatCore;
  if (v7->var0 > 30)
  {
    goto LABEL_10;
  }

  if (v7->var0 != -1)
  {
    goto LABEL_8;
  }

  if (_LogCategory_Initialize())
  {
    v7 = self->super._ucatCore;
LABEL_8:
    LogPrintF(v7, "[SFServiceSession _pairVerifyCompleted:]", 30, "PairVerify completed\n");
  }

LABEL_10:
  sessionSecuredHandler = [(SFService *)self->_service sessionSecuredHandler];

  if (sessionSecuredHandler)
  {
    pairVerifySession = [(SFService *)self->_service sessionSecuredHandler];
    (pairVerifySession)[2](pairVerifySession, self);
    LODWORD(sessionSecuredHandler) = 0;
LABEL_12:
  }

  return sessionSecuredHandler;
}

- (int)setEncryptionReadKey:(const char *)key readKeyLen:(unint64_t)len writeKey:(const char *)writeKey writeKeyLen:(unint64_t)keyLen
{
  OUTLINED_FUNCTION_7_2();
  v7 = v6;
  dispatch_assert_queue_V2(*(v6 + 8));
  v8 = *(v7 + 16);
  if (v8)
  {
    CFRelease(v8);
    *(v7 + 16) = 0;
  }

  v9 = CryptoAEADCreate();
  *(v7 + 16) = v9;
  if (v9)
  {
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    v10 = *(v7 + 40);
    if (v10)
    {
      CFRelease(v10);
      *(v7 + 40) = 0;
    }

    v11 = CryptoAEADCreate();
    *(v7 + 40) = v11;
    if (v11)
    {
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      v12 = *(v7 + 160);
      if (*v12 <= 30)
      {
        if (*v12 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return 0;
          }

          v12 = *(v7 + 160);
        }

        LogPrintF(v12, "[SFServiceSession setEncryptionReadKey:readKeyLen:writeKey:writeKeyLen:]", 30, "Configured encryption\n");
      }
    }
  }

  return 0;
}

- (void)receivedEncryptedData:type:.cold.1()
{
  OUTLINED_FUNCTION_3_13();
  v3 = OUTLINED_FUNCTION_1_18(v2);
  if (v6 ^ v7 | v5)
  {
    if (v4 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      v3 = *(v1 + 160);
    }

    LogPrintF(v3, "[SFServiceSession receivedEncryptedData:type:]", 60, "### Received encrypted decompress failed: %{error}\n", v0);
  }

LABEL_6:
}

- (void)receivedUnencryptedData:type:.cold.1()
{
  OUTLINED_FUNCTION_3_13();
  v3 = OUTLINED_FUNCTION_1_18(v2);
  if (v6 ^ v7 | v5)
  {
    if (v4 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      v3 = *(v1 + 160);
    }

    LogPrintF(v3, "[SFServiceSession receivedUnencryptedData:type:]", 60, "### Received unencrypted decompress failed: %{error}\n", v0);
  }

LABEL_6:
}

- (int)_receivedResponseID:(uint64_t)a1 object:flags:.cold.1(uint64_t a1)
{
  result = *(a1 + 160);
  if (*result <= 50)
  {
    OUTLINED_FUNCTION_5_7();
    if (!v5)
    {
      return LogPrintF(v4, "[SFServiceSession _receivedResponseID:object:flags:]", 50, "### Received response xid %@ without response handler\n", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v4 = *(a1 + 160);
      return LogPrintF(v4, "[SFServiceSession _receivedResponseID:object:flags:]", 50, "### Received response xid %@ without response handler\n", v1);
    }
  }

  return result;
}

- (int)_receivedResponseID:(uint64_t)a1 object:flags:.cold.2(uint64_t a1)
{
  result = *(a1 + 160);
  if (*result <= 50)
  {
    OUTLINED_FUNCTION_5_7();
    if (!v5)
    {
      return LogPrintF(v4, "[SFServiceSession _receivedResponseID:object:flags:]", 50, "### Received response xid %@ without request\n", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v4 = *(a1 + 160);
      return LogPrintF(v4, "[SFServiceSession _receivedResponseID:object:flags:]", 50, "### Received response xid %@ without request\n", v1);
    }
  }

  return result;
}

- (void)receivedStartRequest:(uint64_t)a3 .cold.1(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_2_17();
  if (v11 ^ v12 | v10)
  {
    v13 = v8;
    if (v9 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      v7 = *a1;
    }

    LogPrintF(v7, "[SFServiceSession receivedStartRequest:]", 60, "### Encode start ack failed: %#m\n", *v13);
  }

LABEL_6:
  *a4 = a3;
}

- (void)sendEncryptedObject:.cold.1()
{
  OUTLINED_FUNCTION_3_13();
  v3 = OUTLINED_FUNCTION_1_18(v2);
  if (v6 ^ v7 | v5)
  {
    if (v4 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      v3 = *(v1 + 160);
    }

    LogPrintF(v3, "[SFServiceSession sendEncryptedObject:]", 60, "### Send encrypted compress failed: %{error}\n", v0);
  }

LABEL_6:
}

- (void)sendEncryptedObject:.cold.2()
{
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_2_17();
  if (v8 ^ v9 | v7)
  {
    if (v6 == -1)
    {
      v10 = v4;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      v3 = *(v2 + 160);
      v5 = *v10;
    }

    LogPrintF(v3, "[SFServiceSession sendEncryptedObject:]", 60, "### Send encrypted without encryption info: %#m\n", v5);
  }

LABEL_6:
  *v0 = v1;
}

- (void)sendEncryptedObject:(void *)a3 .cold.3(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_2_17();
  if (v9 ^ v10 | v8)
  {
    v11 = v6;
    if (v7 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      v5 = *(a1 + 160);
    }

    LogPrintF(v5, "[SFServiceSession sendEncryptedObject:]", 60, "### Send encrypted encode failed: %#m\n", *v11);
  }

LABEL_6:
  *a3 = 0;
}

- (uint64_t)sendEncryptedObject:.cold.4()
{
  OUTLINED_FUNCTION_3_13();
  result = OUTLINED_FUNCTION_1_18(v2);
  if (v6 ^ v7 | v5)
  {
    if (v4 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_6;
      }

      result = *(v1 + 160);
    }

    result = LogPrintF(result, "[SFServiceSession sendEncryptedObject:]", 60, "### Send encrypted without encryption info\n");
  }

LABEL_6:
  *v0 = 0;
  return result;
}

- (uint64_t)sendEncryptedObject:.cold.5()
{
  OUTLINED_FUNCTION_3_13();
  result = OUTLINED_FUNCTION_1_18(v2);
  if (v6 ^ v7 | v5)
  {
    if (v4 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_6;
      }

      result = *(v1 + 160);
    }

    result = LogPrintF(result, "[SFServiceSession sendEncryptedObject:]", 60, "### Send encrypted without connection\n");
  }

LABEL_6:
  *v0 = 0;
  return result;
}

- (void)pairSetup:(uint64_t)a3 start:(void *)a4 .cold.1(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_2_17();
  if (v11 ^ v12 | v10)
  {
    if (v9 == -1)
    {
      if (!OUTLINED_FUNCTION_8_3(v7))
      {
        goto LABEL_6;
      }

      v7 = *a1;
      v8 = *v4;
    }

    LogPrintF(v7, "[SFServiceSession pairSetup:start:]", 60, "### PairSetup request no flags: %#m\n", v8);
  }

LABEL_6:
  *a4 = 0;
}

- (void)pairSetup:start:.cold.2()
{
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_2_17();
  if (v8 ^ v9 | v7)
  {
    if (v6 == -1)
    {
      v10 = v4;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      v3 = *v2;
      v5 = *v10;
    }

    LogPrintF(v3, "[SFServiceSession pairSetup:start:]", 60, "### PairSetup request no pairing data: %#m\n", v5);
  }

LABEL_6:
  *v0 = v1;
}

- (uint64_t)pairSetup:(_DWORD *)a1 start:.cold.3(_DWORD *a1)
{
  *a1 = -6762;
  OUTLINED_FUNCTION_2_17();
  if (!(v9 ^ v10 | v8))
  {
    return 1;
  }

  v13 = v1;
  v14 = v6;
  v11 = v5;
  if (v7 == -1)
  {
    if (!OUTLINED_FUNCTION_8_3(v4))
    {
      goto LABEL_6;
    }

    v4 = *v2;
  }

  LogPrintF(v4, "[SFServiceSession pairSetup:start:]", 60, "### PairSetup request no pairing data?\n", v2, v13, v3, v14);
LABEL_6:
  result = 0;
  *v11 = 0;
  return result;
}

- (void)pairVerify:(uint64_t)a3 start:(void *)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_2_17();
  if (v11 ^ v12 | v10)
  {
    if (v9 == -1)
    {
      if (!OUTLINED_FUNCTION_8_3(v7))
      {
        goto LABEL_6;
      }

      v7 = *(a1 + 160);
      v8 = *v4;
    }

    LogPrintF(v7, "[SFServiceSession pairVerify:start:]", 60, "### PairVerify request no flags: %#m\n", v8);
  }

LABEL_6:
  *a4 = 0;
}

- (void)pairVerify:start:.cold.2()
{
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_2_17();
  if (v8 ^ v9 | v7)
  {
    if (v6 == -1)
    {
      v10 = v4;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      v3 = *(v2 + 160);
      v5 = *v10;
    }

    LogPrintF(v3, "[SFServiceSession pairVerify:start:]", 60, "### PairVerify request no pairing data: %#m\n", v5);
  }

LABEL_6:
  *v0 = v1;
}

- (void)pairVerify:(void *)a3 start:.cold.3(_DWORD *a1, uint64_t a2, void *a3)
{
  *a1 = -6762;
  OUTLINED_FUNCTION_2_17();
  if (v8 ^ v9 | v7)
  {
    if (v6 == -1)
    {
      if (!OUTLINED_FUNCTION_8_3(v5))
      {
        goto LABEL_6;
      }

      v5 = *(v3 + 160);
    }

    LogPrintF(v5, "[SFServiceSession pairVerify:start:]", 60, "### PairVerify request no pairing data?\n");
  }

LABEL_6:
  *a3 = 0;
}

@end