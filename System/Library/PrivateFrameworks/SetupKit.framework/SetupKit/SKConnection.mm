@interface SKConnection
- (NSString)description;
- (SKConnection)init;
- (id)deriveKeyWithSaltPtr:(const void *)ptr saltLen:(unint64_t)len infoPtr:(const void *)infoPtr infoLen:(unint64_t)infoLen keyLen:(unint64_t)keyLen error:(id *)error;
- (void)_abortRequestsWithError:(id)error;
- (void)_activateWithCompletion:(id)completion;
- (void)_clientConnectCompleted:(id)completed;
- (void)_clientConnectStart;
- (void)_clientConnectStartBLE;
- (void)_clientError:(id)error;
- (void)_clientPairSetupCompleted:(id)completed;
- (void)_clientPairSetupContinueWithData:(id)data;
- (void)_clientPairSetupPromptWithFlags:(unsigned int)flags passwordType:(int)type throttleSeconds:(int)seconds;
- (void)_clientPairSetupStart;
- (void)_clientPairSetupStartReverse;
- (void)_clientPairVerifyCompleted:(id)completed;
- (void)_clientPairVerifyStart;
- (void)_clientPairVerifyWithData:(id)data;
- (void)_clientRun;
- (void)_invalidateCore:(id)core;
- (void)_invalidateWithError:(id)error;
- (void)_invalidated;
- (void)_pairSetupInvalidate;
- (void)_pairVerifyInvalidate;
- (void)_processSends;
- (void)_pskPrepareClientMode:(BOOL)mode;
- (void)_receiveCompletion:(id)completion;
- (void)_receiveStart:(id)start;
- (void)_receivedEvent:(id)event;
- (void)_receivedHeader:(id *)header body:(id)body;
- (void)_receivedHeader:(id *)header encryptedObjectData:(id)data;
- (void)_receivedHeader:(id *)header unencryptedObjectData:(id)data;
- (void)_receivedObject:(id)object;
- (void)_receivedRequest:(id)request;
- (void)_receivedResponse:(id)response;
- (void)_run;
- (void)_sendEventID:(id)d data:(id)data xid:(unsigned int)xid options:(id)options completion:(id)completion;
- (void)_sendFrameType:(unsigned __int8)type body:(id)body;
- (void)_sendFrameType:(unsigned __int8)type unencryptedObject:(id)object;
- (void)_sendHeaderData:(id)data bodyData:(id)bodyData completion:(id)completion;
- (void)_sendRequestID:(id)d request:(id)request options:(id)options sendEntry:(id)entry responseHandler:(id)handler;
- (void)_sendResponse:(id)response error:(id)error xid:(id)xid requestID:(id)d completion:(id)completion;
- (void)_serverAccept;
- (void)_serverAcceptBLE;
- (void)_serverError:(id)error;
- (void)_serverPairSetupCompleted:(id)completed;
- (void)_serverPairSetupContinueWithData:(id)data start:(BOOL)start;
- (void)_serverPairVerifyCompleted:(id)completed;
- (void)_serverPairVerifyContinueWithData:(id)data start:(BOOL)start;
- (void)_serverRun;
- (void)_timeoutForSendEntry:(id)entry;
- (void)_timeoutForXID:(id)d;
- (void)_updateExternalState;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)receivedData:(id)data;
- (void)sendEventID:(id)d data:(id)data xid:(unsigned int)xid options:(id)options completion:(id)completion;
- (void)sendEventID:(id)d event:(id)event options:(id)options completion:(id)completion;
- (void)sendRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler;
- (void)setLabel:(id)label;
- (void)tryPassword:(id)password;
- (void)updatePasswordType:(int)type;
@end

@implementation SKConnection

- (void)_receivedResponse:(id)response
{
  responseCopy = response;
  v5 = NSDictionaryGetNSNumber();
  unsignedIntValue = [v5 unsignedIntValue];
  if (unsignedIntValue)
  {
    v7 = unsignedIntValue;
    v8 = [(NSMutableDictionary *)self->_requests objectForKeyedSubscript:v5];
    if (v8)
    {
      v9 = v8;
      [(NSMutableDictionary *)self->_requests setObject:0 forKeyedSubscript:v5];
      timer = [v9 timer];
      [v9 setTimer:0];
      if (timer)
      {
        dispatch_source_cancel(timer);
      }

      CFDictionaryGetTypeID();
      v11 = CFDictionaryGetTypedValue();
      if (!v11)
      {
        ucat = self->_ucat;
        if (ucat->var0 > 90)
        {
          goto LABEL_18;
        }

        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_18;
          }

          ucat = self->_ucat;
        }

        v13 = CUPrintErrorCode();
        LogPrintF(ucat, "[SKConnection _receivedResponse:]", 90, "### Received response with no content: XID 0x%X: %@", v7, v13);
LABEL_17:

LABEL_18:
        goto LABEL_19;
      }

      mach_absolute_time();
      [v9 sendTicks];
      v12 = UpTicksToMilliseconds();
      v13 = CUDecodeNSErrorDictionary();
      v14 = self->_ucat;
      var0 = v14->var0;
      if (v13)
      {
        if (var0 <= 90)
        {
          if (var0 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_16;
            }

            v14 = self->_ucat;
          }

          v16 = CUPrintNSError();
          LogPrintF(v14, "[SKConnection _receivedResponse:]", 90, "### Received response error: XID 0x%X, %llu ms, %@", v7, v12, v16);
        }
      }

      else if (var0 <= 30)
      {
        if (var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_16;
          }

          v14 = self->_ucat;
        }

        LogPrintF(v14, "[SKConnection _receivedResponse:]", 30, "Received response: XID 0x%X, %llu ms", v7, v12);
      }

LABEL_16:
      responseHandler = [v9 responseHandler];
      responseHandler[2]();

      goto LABEL_17;
    }

    v19 = self->_ucat;
    if (v19->var0 <= 90)
    {
      if (v19->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_33;
        }

        v19 = self->_ucat;
      }

      LogPrintF(v19, "[SKConnection _receivedResponse:]", 90, "### Received response with no request: XID 0x%X", v7);
    }

LABEL_33:
    v9 = 0;
    goto LABEL_19;
  }

  v18 = self->_ucat;
  if (v18->var0 > 90)
  {
    goto LABEL_20;
  }

  if (v18->var0 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_20;
    }

    v18 = self->_ucat;
  }

  v9 = CUPrintErrorCode();
  LogPrintF(v18, "[SKConnection _receivedResponse:]", 90, "### Received response with no XID: %@", v9);
LABEL_19:

LABEL_20:
}

- (void)_receivedRequest:(id)request
{
  requestCopy = request;
  v22 = 0;
  v5 = NSDictionaryGetNSNumber();
  unsignedIntValue = [v5 unsignedIntValue];
  if (unsignedIntValue)
  {
    v7 = unsignedIntValue;
    CFStringGetTypeID();
    v8 = CFDictionaryGetTypedValue();
    if (v8)
    {
      CFDictionaryGetTypeID();
      v9 = CFDictionaryGetTypedValue();
      ucat = self->_ucat;
      var0 = ucat->var0;
      if (v9)
      {
        v12 = v9;
        if (var0 > 30)
        {
          goto LABEL_8;
        }

        if (var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
LABEL_8:
            if ([v8 isEqual:@"_ping"])
            {
              [(SKConnection *)self _sendResponse:v12 error:0 xid:v5 requestID:v8 completion:&__block_literal_global_283];
LABEL_18:

              goto LABEL_19;
            }

            v13 = MEMORY[0x26676A4C0](self->_receivedRequestHandler);
            v14 = v13;
            if (v13)
            {
              v20[0] = MEMORY[0x277D85DD0];
              v20[1] = 3221225472;
              v20[2] = __33__SKConnection__receivedRequest___block_invoke_3;
              v20[3] = &unk_279BB7BF8;
              v20[4] = self;
              v20[5] = v8;
              v21 = v7;
              v20[6] = v5;
              (*(v13 + 16))(v13, v8, v12, 0, v20);
LABEL_17:

              goto LABEL_18;
            }

            v15 = self->_ucat;
            if (v15->var0 <= 90)
            {
              if (v15->var0 == -1)
              {
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_16;
                }

                v15 = self->_ucat;
              }

              LogPrintF(v15, "[SKConnection _receivedRequest:]", 90, "### Received request with no handler: ID '%@', XID 0x%X", v8, v7);
            }

LABEL_16:
            v16 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960582, "No receive request handler");
            [(SKConnection *)self _sendResponse:0 error:v16 xid:v5 requestID:v8 completion:&__block_literal_global_287];

            goto LABEL_17;
          }

          ucat = self->_ucat;
        }

        LogPrintF(ucat, "-[SKConnection _receivedRequest:]", 30, "Received request: ID '%@', XID 0x%X, %d keys", v8, v7, [v12 count]);
        goto LABEL_8;
      }

      if (var0 <= 90)
      {
        if (var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_35;
          }

          ucat = self->_ucat;
        }

        v19 = CUPrintErrorCode();
        LogPrintF(ucat, "[SKConnection _receivedRequest:]", 90, "### Received request with no content: ID '%@', XID 0x%X, %@", v8, v7, v19);
      }

LABEL_35:
      v12 = 0;
      goto LABEL_18;
    }

    v18 = self->_ucat;
    if (v18->var0 <= 90)
    {
      if (v18->var0 != -1)
      {
LABEL_26:
        v12 = CUPrintErrorCode();
        LogPrintF(v18, "[SKConnection _receivedRequest:]", 90, "### Received request with no ID: XID 0x%X, %@", v7, v12);
        goto LABEL_18;
      }

      if (_LogCategory_Initialize())
      {
        v18 = self->_ucat;
        goto LABEL_26;
      }
    }

    v8 = 0;
    goto LABEL_19;
  }

  v17 = self->_ucat;
  if (v17->var0 > 90)
  {
    goto LABEL_20;
  }

  if (v17->var0 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_20;
    }

    v17 = self->_ucat;
  }

  v8 = CUPrintErrorCode();
  LogPrintF(v17, "[SKConnection _receivedRequest:]", 90, "### Received request with no XID: %@", v8);
LABEL_19:

LABEL_20:
}

void __33__SKConnection__receivedRequest___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v14 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = *(a1 + 32);
  if (*(v12 + 52) != 1)
  {
    [v12 _sendResponse:v14 error:v10 xid:*(a1 + 48) requestID:*(a1 + 40) completion:v11];
    goto LABEL_3;
  }

  v13 = *(v12 + 144);
  if (*v13 <= 90)
  {
    if (*v13 != -1)
    {
LABEL_8:
      LogPrintF(v13, "[SKConnection _receivedRequest:]_block_invoke_3", 90, "### Received request after invalidation: ID '%@', XID 0x%X", *(a1 + 40), *(a1 + 56));
      goto LABEL_3;
    }

    if (_LogCategory_Initialize())
    {
      v13 = *(*(a1 + 32) + 144);
      goto LABEL_8;
    }
  }

LABEL_3:
}

- (void)_receivedEvent:(id)event
{
  eventCopy = event;
  CFDictionaryGetTypeID();
  v5 = CFDictionaryGetTypedValue();
  if (v5)
  {
    CFStringGetTypeID();
    v6 = CFDictionaryGetTypedValue();
    if (v6)
    {
      v7 = NSDictionaryGetNSNumber();
      unsignedIntValue = [v7 unsignedIntValue];
      ucat = self->_ucat;
      if (ucat->var0 <= 30)
      {
        v10 = unsignedIntValue;
        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_7;
          }

          ucat = self->_ucat;
        }

        LogPrintF(ucat, "-[SKConnection _receivedEvent:]", 30, "Received event ID '%@', XID 0x%X, %d keys", v6, v10, [v5 count]);
      }

LABEL_7:
      v11 = MEMORY[0x26676A4C0](self->_receivedEventHandler);
      v12 = v11;
      if (v11)
      {
        (*(v11 + 16))(v11, v6, v5, 0);
      }

      goto LABEL_10;
    }

    v14 = self->_ucat;
    if (v14->var0 <= 90)
    {
      if (v14->var0 != -1)
      {
LABEL_18:
        v7 = CUPrintErrorCode();
        LogPrintF(v14, "[SKConnection _receivedEvent:]", 90, "### Received event with no ID: %@", v7);
LABEL_10:

        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        v14 = self->_ucat;
        goto LABEL_18;
      }
    }

    v6 = 0;
    goto LABEL_11;
  }

  v13 = self->_ucat;
  if (v13->var0 > 90)
  {
    goto LABEL_12;
  }

  if (v13->var0 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_12;
    }

    v13 = self->_ucat;
  }

  v6 = CUPrintErrorCode();
  LogPrintF(v13, "[SKConnection _receivedEvent:]", 90, "### Received event with no content: %@", v6);
LABEL_11:

LABEL_12:
}

- (void)_receivedObject:(id)object
{
  objectCopy = object;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (Int64Ranged == 3)
  {
    p_var0 = [(SKConnection *)self _receivedResponse:objectCopy];
    goto LABEL_10;
  }

  if (Int64Ranged == 2)
  {
    p_var0 = [(SKConnection *)self _receivedRequest:objectCopy];
    goto LABEL_10;
  }

  v5 = objectCopy;
  if (Int64Ranged == 1)
  {
    p_var0 = [(SKConnection *)self _receivedEvent:objectCopy];
LABEL_10:
    v5 = objectCopy;
    goto LABEL_11;
  }

  p_var0 = &self->_ucat->var0;
  if (*p_var0 > 60)
  {
    goto LABEL_11;
  }

  if (*p_var0 != -1)
  {
LABEL_9:
    p_var0 = LogPrintF(p_var0, "[SKConnection _receivedObject:]", 60, "### Unknown message type: %d", Int64Ranged);
    goto LABEL_10;
  }

  p_var0 = _LogCategory_Initialize();
  v5 = objectCopy;
  if (p_var0)
  {
    p_var0 = &self->_ucat->var0;
    goto LABEL_9;
  }

LABEL_11:

  MEMORY[0x2821F96F8](p_var0, v5);
}

- (void)_receivedHeader:(id *)header unencryptedObjectData:(id)data
{
  dataCopy = data;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__243;
  v25 = __Block_byref_object_dispose__244;
  v26 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __54__SKConnection__receivedHeader_unencryptedObjectData___block_invoke;
  v20[3] = &unk_279BB8670;
  v20[4] = self;
  v20[5] = &v21;
  v7 = MEMORY[0x26676A4C0](v20);
  v8 = OPACKDecodeData();
  if (!v8)
  {
    v15 = NSErrorF_safe(*MEMORY[0x277CCA590], 0, "OPACK decode failed");
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960540, "Bad object type %@", v17);
    v19 = v22[5];
    v22[5] = v18;

    goto LABEL_18;
  }

  var0 = header->var0;
  ucat = self->_ucat;
  v11 = ucat->var0;
  if (var0 == 8)
  {
    if (v11 > 50)
    {
      goto LABEL_12;
    }

    if (v11 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_12:
        pairSetupConfigHandler = self->_pairSetupConfigHandler;
        if (pairSetupConfigHandler)
        {
          pairSetupConfigHandler[2](pairSetupConfigHandler, v8);
        }

        goto LABEL_18;
      }

      ucat = self->_ucat;
    }

    v12 = CUPrintNSObjectOneLine();
    LogPrintF(ucat, "[SKConnection _receivedHeader:unencryptedObjectData:]", 50, "PairSetup config: %@", v12);

    goto LABEL_12;
  }

  if (v11 <= 90)
  {
    if (v11 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_18;
      }

      ucat = self->_ucat;
      var0 = header->var0;
    }

    if (var0 > 8)
    {
      v13 = "?";
    }

    else
    {
      v13 = off_279BB7D50[var0];
    }

    LogPrintF(ucat, "-[SKConnection _receivedHeader:unencryptedObjectData:]", 90, "### Ignoring unhandled frame 0x%02X (%s), %d bytes", var0, v13, [dataCopy length]);
  }

LABEL_18:

  v7[2](v7);
  _Block_object_dispose(&v21, 8);
}

void __54__SKConnection__receivedHeader_unencryptedObjectData___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = *(*(a1 + 32) + 144);
    if (*v2 <= 90)
    {
      if (*v2 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return;
        }

        v2 = *(*(a1 + 32) + 144);
      }

      v3 = CUPrintNSError();
      LogPrintF(v2, "[SKConnection _receivedHeader:unencryptedObjectData:]_block_invoke", 90, "### Receive unencrypted object failed: %@", v3);
    }
  }
}

- (void)_receivedHeader:(id *)header encryptedObjectData:(id)data
{
  dataCopy = data;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__243;
  v25 = __Block_byref_object_dispose__244;
  v26 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __52__SKConnection__receivedHeader_encryptedObjectData___block_invoke;
  v20[3] = &unk_279BB8670;
  v20[4] = self;
  v20[5] = &v21;
  v7 = MEMORY[0x26676A4C0](v20);
  v8 = self->_mainStream;
  v9 = v8;
  if (v8)
  {
    v10 = (v22 + 5);
    obj = v22[5];
    v11 = [(CUPairingStream *)v8 decryptData:dataCopy aadBytes:header aadLength:4 error:&obj];
    objc_storeStrong(v10, obj);
    if (v11)
    {
      v12 = OPACKDecodeData();
      if (v12)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(SKConnection *)self _receivedObject:v12];
        }

        else
        {
          v15 = objc_opt_class();
          v16 = NSStringFromClass(v15);
          v17 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960540, "Bad object type %@", v16);
          v18 = v22[5];
          v22[5] = v17;
        }
      }

      else
      {
        v14 = NSErrorF_safe(*MEMORY[0x277CCA590], 0, "OPACK decode failed");
      }
    }
  }

  else
  {
    v13 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960593, "Encryption not setup");
    v11 = v22[5];
    v22[5] = v13;
  }

  v7[2](v7);
  _Block_object_dispose(&v21, 8);
}

void __52__SKConnection__receivedHeader_encryptedObjectData___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = *(*(a1 + 32) + 144);
    if (*v2 <= 90)
    {
      if (*v2 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return;
        }

        v2 = *(*(a1 + 32) + 144);
      }

      v3 = CUPrintNSError();
      LogPrintF(v2, "[SKConnection _receivedHeader:encryptedObjectData:]_block_invoke", 90, "### Receive encrypted object failed: %@", v3);
    }
  }
}

- (void)_receivedHeader:(id *)header body:(id)body
{
  bodyCopy = body;
  var0 = header->var0;
  v28 = bodyCopy;
  v8 = [bodyCopy length];
  if (var0 == 5)
  {
    v9 = 10;
  }

  else
  {
    v9 = 30;
  }

  ucat = self->_ucat;
  if (v9 >= ucat->var0)
  {
    v11 = v8;
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_14;
      }

      ucat = self->_ucat;
    }

    if (var0 > 8)
    {
      v12 = "?";
    }

    else
    {
      v12 = off_279BB7D50[var0];
    }

    v13 = CUPrintNSDataHex();
    v14 = v13;
    v15 = "";
    if (v11 > 0x10)
    {
      v15 = "...";
    }

    LogPrintF(ucat, "[SKConnection _receivedHeader:body:]", v9, "Received frame 0x%02X (%s), len %zu, <%@%s>", var0, v12, v11, v13, v15);
  }

LABEL_14:
  if (var0 <= 4)
  {
    switch(var0)
    {
      case 1:
        goto LABEL_50;
      case 2:
        if (self->_clientMode && !self->_reversePairing)
        {
          v24 = self->_ucat;
          if (v24->var0 > 60)
          {
            goto LABEL_50;
          }

          if (v24->var0 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_50;
            }

            v24 = self->_ucat;
          }

          LogPrintF(v24, "[SKConnection _receivedHeader:body:]", 60, "### Ignoring PairSetupStart on client");
          goto LABEL_50;
        }

        selfCopy2 = self;
        v18 = v28;
        v19 = 1;
        break;
      case 3:
        if (self->_clientMode && !self->_reversePairing)
        {
          [(SKConnection *)self _clientPairSetupContinueWithData:v28];
          goto LABEL_50;
        }

        selfCopy2 = self;
        v18 = v28;
        v19 = 0;
        break;
      default:
        goto LABEL_30;
    }

    [(SKConnection *)selfCopy2 _serverPairSetupContinueWithData:v18 start:v19];
    goto LABEL_50;
  }

  if (var0 <= 6)
  {
    if (var0 == 5)
    {
      [(SKConnection *)self _receivedHeader:header encryptedObjectData:v28];
      goto LABEL_50;
    }

    if (self->_clientMode)
    {
      v16 = self->_ucat;
      if (v16->var0 > 60)
      {
        goto LABEL_50;
      }

      if (v16->var0 != -1)
      {
        goto LABEL_20;
      }

      if (_LogCategory_Initialize())
      {
        v16 = self->_ucat;
LABEL_20:
        LogPrintF(v16, "[SKConnection _receivedHeader:body:]", 60, "### Ignoring PairVerifyStart on client", v25, v26, v27);
        goto LABEL_50;
      }

      goto LABEL_50;
    }

    selfCopy4 = self;
    v22 = v28;
    v23 = 1;
LABEL_42:
    [(SKConnection *)selfCopy4 _serverPairVerifyContinueWithData:v22 start:v23];
    goto LABEL_50;
  }

  if (var0 == 7)
  {
    selfCopy4 = self;
    if (self->_clientMode)
    {
      [(SKConnection *)self _clientPairVerifyWithData:v28];
      goto LABEL_50;
    }

    v22 = v28;
    v23 = 0;
    goto LABEL_42;
  }

  if (var0 == 8)
  {
    [(SKConnection *)self _receivedHeader:header unencryptedObjectData:v28];
    goto LABEL_50;
  }

LABEL_30:
  v20 = self->_ucat;
  if (v20->var0 > 60)
  {
    goto LABEL_50;
  }

  if (v20->var0 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_50;
    }

    v20 = self->_ucat;
  }

  [v28 length];
  LogPrintF(v20, "[SKConnection _receivedHeader:body:]", 60, "### Ignoring unhandled frame 0x%02X (%s), %d bytes");
LABEL_50:
}

- (void)_receiveCompletion:(id)completion
{
  completionCopy = completion;
  self->_readRequested = 0;
  error = [completionCopy error];
  v6 = error;
  if (!error)
  {
    v9 = [completionCopy length];
    bufferData = [completionCopy bufferData];
    [bufferData setLength:v9];

    if (self->_receivingHeader)
    {
      data = [completionCopy data];
      if ([data length] <= 3)
      {
        ucat = self->_ucat;
        if (ucat->var0 <= 90)
        {
          if (ucat->var0 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_37;
            }

            ucat = self->_ucat;
          }

          LogPrintF(ucat, "-[SKConnection _receiveCompletion:]", 90, "### Receive bad length: %zu vs %zu", [data length], 4uLL);
        }

LABEL_37:

        goto LABEL_38;
      }

      bytes = [data bytes];
      v13 = *bytes;
      self->_frameHeader = *bytes;
      v14 = (*&v13 << 8) & 0xFF0000 | (*&v13 >> 8) & 0xFF00 | v13.frameLen[2];
      v15 = self->_ucat;
      var0 = v15->var0;
      if (v14)
      {
        if (var0 <= 10)
        {
          if (var0 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_32;
            }

            v15 = self->_ucat;
          }

          LogPrintF(v15, "[SKConnection _receiveCompletion:]", 10, "Received header. Start receiving body: %zu byte(s))", v14);
        }

LABEL_32:
        self->_receivingHeader = 0;
        [completionCopy setMinLength:v14];
        [completionCopy setMaxLength:v14];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __35__SKConnection__receiveCompletion___block_invoke;
        v24[3] = &unk_279BB8648;
        v24[4] = self;
        v21 = completionCopy;
        v25 = v21;
        [v21 setCompletion:v24];
        [(CUReadWriteRequestable *)self->_requestable readWithRequest:v21];
        self->_readRequested = 1;

        goto LABEL_37;
      }

      if (var0 <= 10)
      {
        if (var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_36;
          }

          v15 = self->_ucat;
        }

        LogPrintF(v15, "[SKConnection _receiveCompletion:]", 10, "Received header: empty body");
      }

LABEL_36:
      data2 = [MEMORY[0x277CBEA90] data];
      [(SKConnection *)self _receivedHeader:&self->_frameHeader body:data2];

      [(SKConnection *)self _receiveStart:completionCopy];
      goto LABEL_37;
    }

    v17 = self->_ucat;
    if (v17->var0 <= 10)
    {
      if (v17->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_27;
        }

        v17 = self->_ucat;
      }

      LogPrintF(v17, "-[SKConnection _receiveCompletion:]", 10, "Received body: %zu byte(s)", [completionCopy length]);
    }

LABEL_27:
    data3 = [completionCopy data];
    if (data3)
    {
      [(SKConnection *)self _receivedHeader:&self->_frameHeader body:data3];
    }

    else
    {
      data4 = [MEMORY[0x277CBEA90] data];
      [(SKConnection *)self _receivedHeader:&self->_frameHeader body:data4];
    }

    [(SKConnection *)self _receiveStart:completionCopy];
    goto LABEL_38;
  }

  if ([error code] != -6753 && objc_msgSend(v6, "code") != -71148 && objc_msgSend(v6, "code") != -71143)
  {
    v18 = self->_ucat;
    if (v18->var0 > 90)
    {
      goto LABEL_38;
    }

    if (v18->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_38;
      }

      v18 = self->_ucat;
    }

    v8 = CUPrintNSError();
    LogPrintF(v18, "[SKConnection _receiveCompletion:]", 90, "### Receive failed: %@", v8);
LABEL_8:

    goto LABEL_38;
  }

  v7 = self->_ucat;
  if (v7->var0 <= 30)
  {
    if (v7->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_38;
      }

      v7 = self->_ucat;
    }

    v8 = CUPrintNSError();
    LogPrintF(v7, "[SKConnection _receiveCompletion:]", 30, "Connection ended: %@", v8);
    goto LABEL_8;
  }

LABEL_38:
}

- (void)_receiveStart:(id)start
{
  startCopy = start;
  v5 = startCopy;
  if (!startCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x277D02908]);
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 10)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[SKConnection _receiveStart:]", 10, "Start receiving header");
  }

LABEL_7:
  self->_receivingHeader = 1;
  [v5 setMinLength:4];
  [v5 setMaxLength:4];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __30__SKConnection__receiveStart___block_invoke;
  v11 = &unk_279BB8648;
  selfCopy = self;
  v13 = v5;
  v7 = v5;
  [v7 setCompletion:&v8];
  [(CUReadWriteRequestable *)self->_requestable readWithRequest:v7, v8, v9, v10, v11, selfCopy];
  self->_readRequested = 1;
}

- (void)receivedData:(id)data
{
  dataCopy = data;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__SKConnection_receivedData___block_invoke;
  v7[3] = &unk_279BB8648;
  v8 = dataCopy;
  selfCopy = self;
  v6 = dataCopy;
  dispatch_async(dispatchQueue, v7);
}

void __29__SKConnection_receivedData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) length];
  if (v2 <= 3)
  {
    v4 = *(*(a1 + 40) + 144);
    if (*v4 > 90)
    {
      return;
    }

    if (*v4 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v4 = *(*(a1 + 40) + 144);
    }

    LogPrintF(v4, "[SKConnection receivedData:]_block_invoke", 90, "### Received data too short: %zu", v2);
    return;
  }

  v3 = [*(a1 + 32) bytes];
  v5 = [*(a1 + 32) subdataWithRange:{4, v2 - 4}];
  [*(a1 + 40) _receivedHeader:v3 body:v5];
}

- (void)_timeoutForXID:(id)d
{
  dCopy = d;
  unsignedIntValue = [dCopy unsignedIntValue];
  v5 = [(NSMutableDictionary *)self->_requests objectForKeyedSubscript:dCopy];
  if (v5)
  {
    [(NSMutableDictionary *)self->_requests setObject:0 forKeyedSubscript:dCopy];
    mach_absolute_time();
    [v5 sendTicks];
    UpTicksToSecondsF();
    ucat = self->_ucat;
    if (ucat->var0 <= 60)
    {
      v8 = v6;
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[SKConnection _timeoutForXID:]", 60, "### Request timeout XID 0x%X, %.3f seconds", unsignedIntValue, v8);
    }

LABEL_6:
    responseHandler = [v5 responseHandler];
    v10 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960574, "Request timed out");
    (responseHandler)[2](responseHandler, 0, 0, v10);

    goto LABEL_7;
  }

  v11 = self->_ucat;
  if (v11->var0 <= 90)
  {
    if (v11->var0 != -1)
    {
LABEL_12:
      LogPrintF(v11, "[SKConnection _timeoutForXID:]", 90, "### Timeout with no request: XID 0x%X", unsignedIntValue);
      goto LABEL_7;
    }

    if (_LogCategory_Initialize())
    {
      v11 = self->_ucat;
      goto LABEL_12;
    }
  }

LABEL_7:
}

- (void)_timeoutForSendEntry:(id)entry
{
  entryCopy = entry;
  xidObj = [entryCopy xidObj];
  if (xidObj)
  {
    [(SKConnection *)self _timeoutForXID:xidObj];
    goto LABEL_15;
  }

  mach_absolute_time();
  [entryCopy queueTicks];
  UpTicksToSecondsF();
  v6 = v5;
  v7 = [(NSMutableArray *)self->_sendArray indexOfObject:entryCopy];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_sendArray removeObjectAtIndex:v7];
    ucat = self->_ucat;
    if (ucat->var0 <= 60)
    {
      v11 = entryCopy;
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_13;
        }

        ucat = self->_ucat;
        v11 = entryCopy;
      }

      requestID = [v11 requestID];
      LogPrintF(ucat, "[SKConnection _timeoutForSendEntry:]", 60, "### Request timeout '%@', %.3f seconds", requestID, v6);
    }

LABEL_13:
    responseHandler = [entryCopy responseHandler];
    v13 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960574, "Request timed out before send");
    (responseHandler)[2](responseHandler, 0, 0, v13);

    goto LABEL_14;
  }

  v8 = self->_ucat;
  if (v8->var0 > 90)
  {
    goto LABEL_15;
  }

  if (v8->var0 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_15;
    }

    v8 = self->_ucat;
  }

  responseHandler = [entryCopy requestID];
  LogPrintF(v8, "[SKConnection _timeoutForSendEntry:]", 90, "### Request timeout '%@' not found, %.3f seconds", responseHandler, v6);
LABEL_14:

LABEL_15:
}

- (void)_abortRequestsWithError:(id)error
{
  errorCopy = error;
  requests = self->_requests;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __40__SKConnection__abortRequestsWithError___block_invoke;
  v10 = &unk_279BB7BD0;
  selfCopy = self;
  v12 = errorCopy;
  v6 = errorCopy;
  [(NSMutableDictionary *)requests enumerateKeysAndObjectsUsingBlock:&v7];
  [(NSMutableDictionary *)self->_requests removeAllObjects:v7];
}

void __40__SKConnection__abortRequestsWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = *(*(a1 + 32) + 144);
  if (*v6 <= 60)
  {
    if (*v6 != -1)
    {
LABEL_3:
      v7 = [v11 unsignedIntValue];
      v8 = CUPrintNSError();
      LogPrintF(v6, "[SKConnection _abortRequestsWithError:]_block_invoke", 60, "### Abort request XID 0x%X: %@", v7, v8);

      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v6 = *(*(a1 + 32) + 144);
      goto LABEL_3;
    }
  }

LABEL_5:
  v9 = [v5 timer];
  [v5 setTimer:0];
  if (v9)
  {
    dispatch_source_cancel(v9);
  }

  v10 = [v5 responseHandler];
  [v5 setResponseHandler:0];
  if (v10)
  {
    v10[2](v10, 0, 0, *(a1 + 40));
  }
}

- (void)_processSends
{
  popFirstObject = [(NSMutableArray *)self->_sendArray popFirstObject];
  if (popFirstObject)
  {
    popFirstObject2 = popFirstObject;
    do
    {
      eventID = [popFirstObject2 eventID];
      if (eventID)
      {
        eventData = [popFirstObject2 eventData];
        v7 = eventData;
        if (eventData)
        {
          data = eventData;
        }

        else
        {
          data = [MEMORY[0x277CBEA90] data];
        }

        v10 = data;

        completion = [popFirstObject2 completion];
        v15 = completion;
        if (!completion)
        {
          completion = &__block_literal_global_243;
        }

        v16 = MEMORY[0x26676A4C0](completion);

        v17 = [popFirstObject2 xid];
        options = [popFirstObject2 options];
        [(SKConnection *)self _sendEventID:eventID data:v10 xid:v17 options:options completion:v16];

        goto LABEL_20;
      }

      requestID = [popFirstObject2 requestID];
      if (requestID)
      {
        v10 = requestID;
        request = [popFirstObject2 request];
        v12 = request;
        if (request)
        {
          dictionary = request;
        }

        else
        {
          dictionary = [MEMORY[0x277CBEAC0] dictionary];
        }

        v20 = dictionary;

        responseHandler = [popFirstObject2 responseHandler];
        options2 = [popFirstObject2 options];
        [(SKConnection *)self _sendRequestID:v10 request:v20 options:options2 sendEntry:popFirstObject2 responseHandler:responseHandler];

        goto LABEL_20;
      }

      ucat = self->_ucat;
      if (ucat->var0 <= 90)
      {
        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_19;
          }

          ucat = self->_ucat;
        }

        LogPrintF(ucat, "[SKConnection _processSends]", 90, "### Process unsupported send");
      }

LABEL_19:
      v10 = 0;
LABEL_20:

      popFirstObject2 = [(NSMutableArray *)self->_sendArray popFirstObject];
    }

    while (popFirstObject2);
  }
}

- (void)_sendHeaderData:(id)data bodyData:(id)bodyData completion:(id)completion
{
  v26[2] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  bodyDataCopy = bodyData;
  completionCopy = completion;
  v11 = self->_requestable;
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277D02960]);
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __52__SKConnection__sendHeaderData_bodyData_completion___block_invoke;
    v22 = &unk_279BB82D0;
    v23 = v12;
    v24 = completionCopy;
    [v12 setCompletion:&v19];
    if ([bodyDataCopy length])
    {
      v26[0] = dataCopy;
      v26[1] = bodyDataCopy;
      v13 = MEMORY[0x277CBEA60];
      v14 = v26;
      v15 = 2;
    }

    else
    {
      v25 = dataCopy;
      v13 = MEMORY[0x277CBEA60];
      v14 = &v25;
      v15 = 1;
    }

    v18 = [v13 arrayWithObjects:v14 count:v15];
    [v12 setDataArray:v18];

    [(CUReadWriteRequestable *)v11 writeWithRequest:v12];
  }

  else
  {
    v12 = MEMORY[0x26676A4C0](self->_sendDataHandler);
    if (v12)
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [v16 appendData:dataCopy];
      if ([bodyDataCopy length])
      {
        [v16 appendData:bodyDataCopy];
      }

      (*(v12 + 2))(v12, v16);
      v17 = 0;
    }

    else
    {
      v17 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960534, "No transport");
      v16 = v17;
    }

    (*(completionCopy + 2))(completionCopy, v17);
  }
}

void __52__SKConnection__sendHeaderData_bodyData_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) error];
  v3 = *(a1 + 40);
  v5 = v2;
  if (v2)
  {
    v4 = NSErrorNestedF();
    (*(v3 + 16))(v3, v4);
  }

  else
  {
    (*(v3 + 16))(v3, 0);
  }
}

- (void)_sendFrameType:(unsigned __int8)type unencryptedObject:(id)object
{
  typeCopy = type;
  v10 = 0;
  v6 = MEMORY[0x26676A090](object, 0, &v10);
  if (v6)
  {
    [(SKConnection *)self _sendFrameType:typeCopy body:v6];
  }

  else
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 90)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_3;
        }

        ucat = self->_ucat;
      }

      if (typeCopy > 8)
      {
        v8 = "?";
      }

      else
      {
        v8 = off_279BB7D50[typeCopy];
      }

      v9 = CUPrintErrorCode();
      LogPrintF(ucat, "[SKConnection _sendFrameType:unencryptedObject:]", 90, "### Send encode failed: type %s, %@", v8, v9);
    }
  }

LABEL_3:
}

- (void)_sendFrameType:(unsigned __int8)type body:(id)body
{
  typeCopy = type;
  bodyCopy = body;
  v17[0] = typeCopy;
  v7 = [bodyCopy length];
  v8 = v7;
  if (!(v7 >> 24))
  {
    v17[1] = BYTE2(v7);
    v17[2] = BYTE1(v7);
    v17[3] = v7;
    v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v17 length:4];
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
LABEL_4:
        if (typeCopy > 8)
        {
          v11 = "?";
        }

        else
        {
          v11 = off_279BB7D50[typeCopy];
        }

        v12 = CUPrintNSDataHex();
        v13 = v12;
        v14 = "";
        if (v8 > 0x10)
        {
          v14 = "...";
        }

        LogPrintF(ucat, "[SKConnection _sendFrameType:body:]", 30, "Send frame: 0x%02X (%s), len %zu, <%@%s>", typeCopy, v11, v8, v12, v14);

        goto LABEL_12;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->_ucat;
        goto LABEL_4;
      }
    }

LABEL_12:
    [(SKConnection *)self _sendHeaderData:v9 bodyData:bodyCopy completion:&__block_literal_global_236];

    goto LABEL_13;
  }

  v15 = self->_ucat;
  if (v15->var0 <= 90)
  {
    if (v15->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      v15 = self->_ucat;
    }

    if (typeCopy > 8)
    {
      v16 = "?";
    }

    else
    {
      v16 = off_279BB7D50[typeCopy];
    }

    LogPrintF(v15, "[SKConnection _sendFrameType:body:]", 90, "### Send frame failed: type 0x%X (%s), too big (%zu vs %u)", typeCopy, v16, v8, 0xFFFFFF);
  }

LABEL_13:
}

- (void)_sendResponse:(id)response error:(id)error xid:(id)xid requestID:(id)d completion:(id)completion
{
  responseCopy = response;
  errorCopy = error;
  xidCopy = xid;
  dCopy = d;
  completionCopy = completion;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__243;
  v57 = __Block_byref_object_dispose__244;
  v58 = 0;
  unsignedIntValue = [xidCopy unsignedIntValue];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __61__SKConnection__sendResponse_error_xid_requestID_completion___block_invoke;
  v49[3] = &unk_279BB7BA8;
  v51 = &v53;
  v49[4] = self;
  v52 = unsignedIntValue;
  v45 = completionCopy;
  v50 = v45;
  v43 = MEMORY[0x26676A4C0](v49);
  v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v19 = v18;
  if (errorCopy)
  {
    v20 = 1;
  }

  else
  {
    v20 = responseCopy == 0;
  }

  if (v20)
  {
    v21 = MEMORY[0x277CBEC10];
  }

  else
  {
    v21 = responseCopy;
  }

  [v18 setObject:v21 forKeyedSubscript:&unk_28776E120];
  [v19 setObject:&unk_28776E1B0 forKeyedSubscript:&unk_28776E150];
  [v19 setObject:xidCopy forKeyedSubscript:&unk_28776E180];
  if (errorCopy)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 60)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_12;
        }

        ucat = self->_ucat;
      }

      v23 = CUPrintNSError();
      LogPrintF(ucat, "[SKConnection _sendResponse:error:xid:requestID:completion:]", 60, "### Sending response XID 0x%X, error: %@", unsignedIntValue, v23);
    }

LABEL_12:
    CUEncodeNSErrorDictionary();
  }

  v39 = unsignedIntValue;
  v42 = dCopy;
  v48 = 0;
  v24 = MEMORY[0x26676A090](v19, 0, &v48);
  v25 = v24;
  if (!v24)
  {
    v35 = NSErrorF_safe(*MEMORY[0x277CCA590], v48, "OPACK encode failed");
    v36 = v54[5];
    v54[5] = v35;

    goto LABEL_24;
  }

  v47[0] = 5;
  v26 = self->_mainAuthTagLength + [v24 length];
  if (v26 >> 24)
  {
    v37 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960553, "Frame too big (%zu vs %u)", v26, 0xFFFFFF);
    v27 = v54[5];
    v54[5] = v37;
    goto LABEL_23;
  }

  v47[1] = BYTE2(v26);
  v47[2] = BYTE1(v26);
  v47[3] = v26;
  v27 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v47 length:4];
  v28 = self->_mainStream;
  v29 = v28;
  v40 = xidCopy;
  v41 = responseCopy;
  v44 = errorCopy;
  if (!v28)
  {
    v38 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960593, "Encryption not setup");
    v31 = v54[5];
    v54[5] = v38;
    goto LABEL_22;
  }

  v30 = v54;
  obj = v54[5];
  v31 = [(CUPairingStream *)v28 encryptData:v25 aadData:v27 error:&obj];
  objc_storeStrong(v30 + 5, obj);
  if (v31)
  {
    v32 = self->_ucat;
    if (v32->var0 <= 30)
    {
      if (v32->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_21;
        }

        v32 = self->_ucat;
      }

      v33 = CUPrintNSObject();
      v34 = CUPrintNSError();
      LogPrintF(v32, "[SKConnection _sendResponse:error:xid:requestID:completion:]", 30, "Send response XID 0x%X, <%@> (%zu bytes), %@", v39, v33, v26, v34);
    }

LABEL_21:
    [(SKConnection *)self _sendHeaderData:v27 bodyData:v31 completion:v45];
  }

LABEL_22:

  xidCopy = v40;
  responseCopy = v41;
  errorCopy = v44;
LABEL_23:

LABEL_24:
  v43[2](v43);

  _Block_object_dispose(&v53, 8);
}

uint64_t __61__SKConnection__sendResponse_error_xid_requestID_completion___block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 48) + 8) + 40);
  if (!result)
  {
    return result;
  }

  v3 = *(*(a1 + 32) + 144);
  if (*v3 <= 90)
  {
    if (*v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v3 = *(*(a1 + 32) + 144);
    }

    v4 = *(a1 + 56);
    v5 = CUPrintNSError();
    LogPrintF(v3, "[SKConnection _sendResponse:error:xid:requestID:completion:]_block_invoke", 90, "### Send encrypted response XID 0x%X failed: %@", v4, v5);
  }

LABEL_7:
  v6 = *(*(a1 + 40) + 16);

  return v6();
}

- (void)_sendRequestID:(id)d request:(id)request options:(id)options sendEntry:(id)entry responseHandler:(id)handler
{
  v62[4] = *MEMORY[0x277D85DE8];
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  entryCopy = entry;
  handlerCopy = handler;
  xidLast = self->_xidLast;
  if (xidLast + 1 > 1)
  {
    v15 = xidLast + 1;
  }

  else
  {
    v15 = 1;
  }

  self->_xidLast = v15;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__243;
  v59 = __Block_byref_object_dispose__244;
  v60 = 0;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __73__SKConnection__sendRequestID_request_options_sendEntry_responseHandler___block_invoke;
  v50[3] = &unk_279BB7B58;
  v53 = &v55;
  v50[4] = self;
  v44 = dCopy;
  v51 = v44;
  v54 = v15;
  v40 = handlerCopy;
  v52 = v40;
  v39 = MEMORY[0x26676A4C0](v50);
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v15];
  v61[0] = &unk_28776E120;
  v61[1] = &unk_28776E138;
  v62[0] = requestCopy;
  v62[1] = v44;
  v61[2] = &unk_28776E150;
  v61[3] = &unk_28776E180;
  v62[2] = &unk_28776E198;
  v62[3] = v16;
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:4];
  v38 = v49 = 0;
  v17 = MEMORY[0x26676A090](v38, 0, &v49);
  v18 = v17;
  v42 = v16;
  if (!v17)
  {
    v34 = NSErrorF_safe(*MEMORY[0x277CCA590], v49, "OPACK encode failed");
    v35 = v56[5];
    v56[5] = v34;

    goto LABEL_22;
  }

  v48 = 5;
  v19 = self->_mainAuthTagLength + [v17 length];
  if (v19 >> 24)
  {
    v36 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960553, "Frame too big (%zu vs %u)", v19, 0xFFFFFF);
    v20 = v56[5];
    v56[5] = v36;
    goto LABEL_21;
  }

  BYTE1(v48) = BYTE2(v19);
  BYTE2(v48) = BYTE1(v19);
  HIBYTE(v48) = v19;
  v20 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v48 length:4];
  v21 = self->_mainStream;
  v22 = v21;
  if (v21)
  {
    v23 = v56;
    obj = v56[5];
    v24 = [(CUPairingStream *)v21 encryptData:v18 aadData:v20 error:&obj];
    objc_storeStrong(v23 + 5, obj);
    if (v24)
    {
      v25 = objc_alloc_init(SKRequestEntry);
      [(SKRequestEntry *)v25 setOptions:optionsCopy];
      [(SKRequestEntry *)v25 setRequestID:v44];
      [(SKRequestEntry *)v25 setResponseHandler:v40];
      [(SKRequestEntry *)v25 setSendTicks:mach_absolute_time()];
      if (entryCopy)
      {
        timer = [entryCopy timer];
        [(SKRequestEntry *)v25 setTimer:timer];

        [entryCopy setXidObj:v42];
      }

      requests = self->_requests;
      if (!requests)
      {
        v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v29 = self->_requests;
        self->_requests = v28;

        requests = self->_requests;
      }

      [(NSMutableDictionary *)requests setObject:v25 forKeyedSubscript:v42];
      ucat = self->_ucat;
      if (ucat->var0 > 30)
      {
        goto LABEL_16;
      }

      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
LABEL_16:
          [(SKConnection *)self _sendHeaderData:v20 bodyData:v24 completion:&__block_literal_global_250];
          if (optionsCopy)
          {
            CFDictionaryGetDouble();
            if (v32 > 0.0)
            {
              v33 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
              handler[0] = MEMORY[0x277D85DD0];
              handler[1] = 3221225472;
              handler[2] = __73__SKConnection__sendRequestID_request_options_sendEntry_responseHandler___block_invoke_2;
              handler[3] = &unk_279BB7B80;
              handler[4] = v33;
              handler[5] = self;
              handler[6] = v42;
              dispatch_source_set_event_handler(v33, handler);
              CUDispatchTimerSet();
              dispatch_activate(v33);
              [(SKRequestEntry *)v25 setTimer:v33];
            }
          }

          goto LABEL_20;
        }

        ucat = self->_ucat;
      }

      v31 = CUPrintNSObject();
      LogPrintF(ucat, "[SKConnection _sendRequestID:request:options:sendEntry:responseHandler:]", 30, "SendRequestID '%@', XID 0x%X, <%@> (%zu bytes)", v44, v15, v31, v19);

      goto LABEL_16;
    }
  }

  else
  {
    v37 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960593, "Encryption not setup");
    v24 = v56[5];
    v56[5] = v37;
  }

LABEL_20:

LABEL_21:
LABEL_22:

  v39[2](v39);
  _Block_object_dispose(&v55, 8);
}

uint64_t __73__SKConnection__sendRequestID_request_options_sendEntry_responseHandler___block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 56) + 8) + 40);
  if (!result)
  {
    return result;
  }

  v3 = *(*(a1 + 32) + 144);
  if (*v3 <= 90)
  {
    if (*v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v3 = *(*(a1 + 32) + 144);
    }

    v4 = *(a1 + 40);
    v5 = *(a1 + 64);
    v6 = CUPrintNSError();
    LogPrintF(v3, "[SKConnection _sendRequestID:request:options:sendEntry:responseHandler:]_block_invoke", 90, "### SendRequestID failed: ID '%@', XID 0x%X, %@", v4, v5, v6);
  }

LABEL_7:
  v7 = *(*(a1 + 48) + 16);

  return v7();
}

uint64_t __73__SKConnection__sendRequestID_request_options_sendEntry_responseHandler___block_invoke_2(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 _timeoutForXID:v3];
}

- (void)sendRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 60)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[SKConnection sendRequestID:request:options:responseHandler:]", 60, "### Ignoring SendRequestID when invalidating: ID '%@'", dCopy);
    }

LABEL_11:
    v16 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294896148, "Connection invalidating");
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v16);

    goto LABEL_18;
  }

  if ((self->_runState & 0xFFFFFFF7) == 0x14 && ![(NSMutableArray *)self->_sendArray count])
  {
    [(SKConnection *)self _sendRequestID:dCopy request:requestCopy options:optionsCopy sendEntry:0 responseHandler:handlerCopy];
    goto LABEL_18;
  }

  v15 = self->_ucat;
  if (v15->var0 <= 30)
  {
    if (v15->var0 != -1)
    {
LABEL_9:
      LogPrintF(v15, "[SKConnection sendRequestID:request:options:responseHandler:]", 30, "Queuing SendRequestID '%@' (%d send(s) pending)", dCopy, [(NSMutableArray *)self->_sendArray count]);
      goto LABEL_14;
    }

    if (_LogCategory_Initialize())
    {
      v15 = self->_ucat;
      goto LABEL_9;
    }
  }

LABEL_14:
  v17 = objc_alloc_init(SKSendEntry);
  [(SKSendEntry *)v17 setOptions:optionsCopy];
  [(SKSendEntry *)v17 setQueueTicks:mach_absolute_time()];
  [(SKSendEntry *)v17 setRequestID:dCopy];
  [(SKSendEntry *)v17 setRequest:requestCopy];
  [(SKSendEntry *)v17 setResponseHandler:handlerCopy];
  if (optionsCopy)
  {
    CFDictionaryGetDouble();
    if (v18 > 0.0)
    {
      v19 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __62__SKConnection_sendRequestID_request_options_responseHandler___block_invoke;
      handler[3] = &unk_279BB7B80;
      handler[4] = v19;
      handler[5] = self;
      handler[6] = v17;
      dispatch_source_set_event_handler(v19, handler);
      CUDispatchTimerSet();
      dispatch_activate(v19);
      [(SKSendEntry *)v17 setTimer:v19];
    }
  }

  [(NSMutableArray *)self->_sendArray addObject:v17];

LABEL_18:
}

uint64_t __62__SKConnection_sendRequestID_request_options_responseHandler___block_invoke(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 _timeoutForSendEntry:v3];
}

- (void)_sendEventID:(id)d data:(id)data xid:(unsigned int)xid options:(id)options completion:(id)completion
{
  v9 = *&xid;
  dCopy = d;
  dataCopy = data;
  optionsCopy = options;
  completionCopy = completion;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__243;
  v43 = __Block_byref_object_dispose__244;
  v44 = 0;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __57__SKConnection__sendEventID_data_xid_options_completion___block_invoke;
  v34[3] = &unk_279BB7B58;
  v37 = &v39;
  v34[4] = self;
  v31 = dCopy;
  v35 = v31;
  v38 = v9;
  v16 = completionCopy;
  v36 = v16;
  v17 = MEMORY[0x26676A4C0](v34);
  v33[0] = 5;
  v18 = self->_mainAuthTagLength + [dataCopy length];
  if (v18 >> 24)
  {
    v27 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960553, "Frame too big (%zu vs %u)", v18, 0xFFFFFF);
    v19 = v40[5];
    v40[5] = v27;
    goto LABEL_10;
  }

  v29 = v9;
  v33[1] = BYTE2(v18);
  v33[2] = BYTE1(v18);
  v33[3] = v18;
  v19 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v33 length:4];
  v20 = self->_mainStream;
  v21 = v20;
  v30 = optionsCopy;
  if (!v20)
  {
    v23 = dataCopy;
    v28 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960593, "Encryption not setup");
    v24 = v40[5];
    v40[5] = v28;
    goto LABEL_9;
  }

  v22 = v40;
  obj = v40[5];
  v23 = dataCopy;
  v24 = [(CUPairingStream *)v20 encryptData:dataCopy aadData:v19 error:&obj];
  objc_storeStrong(v22 + 5, obj);
  if (v24)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_8;
        }

        ucat = self->_ucat;
      }

      v26 = CUPrintNSObject();
      LogPrintF(ucat, "[SKConnection _sendEventID:data:xid:options:completion:]", 30, "SendEventID '%@', XID 0x%X, <%@> (%zu bytes)", v31, v29, v26, v18);
    }

LABEL_8:
    [(SKConnection *)self _sendHeaderData:v19 bodyData:v24 completion:v16];
  }

LABEL_9:

  optionsCopy = v30;
  dataCopy = v23;
LABEL_10:

  v17[2](v17);
  _Block_object_dispose(&v39, 8);
}

uint64_t __57__SKConnection__sendEventID_data_xid_options_completion___block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 56) + 8) + 40);
  if (!result)
  {
    return result;
  }

  v3 = *(*(a1 + 32) + 144);
  if (*v3 <= 90)
  {
    if (*v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v3 = *(*(a1 + 32) + 144);
    }

    v4 = *(a1 + 40);
    v5 = *(a1 + 64);
    v6 = CUPrintNSError();
    LogPrintF(v3, "[SKConnection _sendEventID:data:xid:options:completion:]_block_invoke", 90, "### SendEventID failed: ID '%@', XID 0x%X, %@", v4, v5, v6);
  }

LABEL_7:
  v7 = *(*(a1 + 48) + 16);

  return v7();
}

- (void)sendEventID:(id)d data:(id)data xid:(unsigned int)xid options:(id)options completion:(id)completion
{
  v9 = *&xid;
  dCopy = d;
  dataCopy = data;
  optionsCopy = options;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 60)
    {
      v16 = dCopy;
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        ucat = self->_ucat;
        v16 = dCopy;
      }

      LogPrintF(ucat, "[SKConnection sendEventID:data:xid:options:completion:]", 60, "### Ignoring SendEventID when invalidating: ID '%@', XID 0x%X", v16, v9);
    }

LABEL_11:
    v18 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294896148, "Connection invalidating");
    completionCopy[2](completionCopy, v18);

    goto LABEL_15;
  }

  if ((self->_runState & 0xFFFFFFF7) == 0x14 && ![(NSMutableArray *)self->_sendArray count])
  {
    [(SKConnection *)self _sendEventID:dCopy data:dataCopy xid:v9 options:optionsCopy completion:completionCopy];
    goto LABEL_15;
  }

  v17 = self->_ucat;
  if (v17->var0 <= 30)
  {
    if (v17->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_14;
      }

      v17 = self->_ucat;
    }

    LogPrintF(v17, "[SKConnection sendEventID:data:xid:options:completion:]", 30, "Queuing SendEventID '%@', XID 0x%X (%d send(s) pending)", dCopy, v9, [(NSMutableArray *)self->_sendArray count]);
  }

LABEL_14:
  v19 = objc_alloc_init(SKSendEntry);
  [(SKSendEntry *)v19 setCompletion:completionCopy];
  [(SKSendEntry *)v19 setEventID:dCopy];
  [(SKSendEntry *)v19 setEventData:dataCopy];
  [(SKSendEntry *)v19 setOptions:optionsCopy];
  [(SKSendEntry *)v19 setQueueTicks:mach_absolute_time()];
  [(SKSendEntry *)v19 setXid:v9];
  [(NSMutableArray *)self->_sendArray addObject:v19];

LABEL_15:
}

- (void)sendEventID:(id)d event:(id)event options:(id)options completion:(id)completion
{
  v23[4] = *MEMORY[0x277D85DE8];
  dCopy = d;
  optionsCopy = options;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  eventCopy = event;
  dispatch_assert_queue_V2(dispatchQueue);
  xidLast = self->_xidLast;
  if (xidLast + 1 > 1)
  {
    v16 = xidLast + 1;
  }

  else
  {
    v16 = 1;
  }

  self->_xidLast = v16;
  v22[0] = &unk_28776E120;
  v22[1] = &unk_28776E138;
  v23[0] = eventCopy;
  v23[1] = dCopy;
  v23[2] = &unk_28776E168;
  v22[2] = &unk_28776E150;
  v22[3] = &unk_28776E180;
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16];
  v23[3] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];

  v21 = 0;
  v19 = MEMORY[0x26676A090](v18, 0, &v21);
  if (v19)
  {
    [(SKConnection *)self sendEventID:dCopy data:v19 xid:v16 options:optionsCopy completion:completionCopy];
  }

  else
  {
    v20 = NSErrorF_safe(*MEMORY[0x277CCA590], v21, "OPACK encode failed");
    completionCopy[2](completionCopy, v20);
  }
}

- (void)_serverError:(id)error
{
  errorCopy = error;
  ucat = self->_ucat;
  v8 = errorCopy;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      v6 = CUPrintNSError();
      LogPrintF(ucat, "[SKConnection _serverError:]", 30, "Server error: %@", v6);

      errorCopy = v8;
      goto LABEL_5;
    }

    v7 = _LogCategory_Initialize();
    errorCopy = v8;
    if (v7)
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  [(SKConnection *)self _invalidateWithError:errorCopy];
}

- (void)_serverPairVerifyCompleted:(id)completed
{
  completedCopy = completed;
  v5 = completedCopy;
  if (completedCopy || (pairVerifySession = self->_pairVerifySession, v14 = 0, [(CUPairingSession *)pairVerifySession openStreamWithName:@"main" error:&v14], v7 = objc_claimAutoreleasedReturnValue(), v5 = v14, mainStream = self->_mainStream, self->_mainStream = v7, mainStream, v5))
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 90)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_7;
        }

        ucat = self->_ucat;
      }

      v10 = CUPrintNSError();
      LogPrintF(ucat, "[SKConnection _serverPairVerifyCompleted:]", 90, "### PairVerify server failed: %@", v10);
    }

LABEL_7:
    [(SKConnection *)self _pairVerifyInvalidate];

    goto LABEL_8;
  }

  self->_mainAuthTagLength = [(CUPairingStream *)self->_mainStream authTagLength];
  v11 = self->_ucat;
  if (v11->var0 <= 30)
  {
    if (v11->var0 != -1)
    {
LABEL_11:
      LogPrintF(v11, "[SKConnection _serverPairVerifyCompleted:]", 30, "PairVerify server completed");
      goto LABEL_13;
    }

    if (_LogCategory_Initialize())
    {
      v11 = self->_ucat;
      goto LABEL_11;
    }
  }

LABEL_13:
  if (self->_runState == 24)
  {
    v12 = MEMORY[0x26676A4C0](self->_authCompletionHandler);
    v13 = v12;
    if (v12)
    {
      (*(v12 + 16))(v12, 0);
    }

    self->_stepDone = 1;
    [(SKConnection *)self _run];
  }

LABEL_8:
}

- (void)_serverPairVerifyContinueWithData:(id)data start:(BOOL)start
{
  dataCopy = data;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__243;
  v32 = __Block_byref_object_dispose__244;
  v33 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __56__SKConnection__serverPairVerifyContinueWithData_start___block_invoke;
  v27[3] = &unk_279BB8670;
  v27[4] = self;
  v27[5] = &v28;
  v7 = MEMORY[0x26676A4C0](v27);
  v26 = 0;
  v8 = OPACKDecodeData();
  if (!v8)
  {
    v18 = NSErrorF_safe(*MEMORY[0x277CCA590], v26, "OPACK decode failed");
    v17 = v29[5];
    v29[5] = v18;
    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = objc_opt_class();
    v17 = NSStringFromClass(v19);
    v20 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960540, "PairVerify server bad type: %@", v17);
    v21 = v29[5];
    v29[5] = v20;

    goto LABEL_23;
  }

  if (start || !self->_pairVerifySession)
  {
    ucat = self->_ucat;
    if (ucat->var0 > 30)
    {
      goto LABEL_12;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_12:
        [(SKConnection *)self _pairVerifyInvalidate];
        v11 = objc_alloc_init(MEMORY[0x277D028E8]);
        objc_storeStrong(&self->_pairVerifySession, v11);
        [v11 setDispatchQueue:self->_dispatchQueue];
        if (self->_conditionalPersistent || self->_persistentPairing)
        {
          v15 = 8;
        }

        else
        {
          v15 = 0x400000;
        }

        [v11 setFlags:v15];
        if (self->_label)
        {
          label = self->_label;
        }

        else
        {
          label = @"SKCnx";
        }

        [v11 setLabel:label];
        [v11 setSessionType:4];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __56__SKConnection__serverPairVerifyContinueWithData_start___block_invoke_2;
        v25[3] = &unk_279BB7AE0;
        v25[4] = v11;
        v25[5] = self;
        [v11 setSendDataHandler:v25];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __56__SKConnection__serverPairVerifyContinueWithData_start___block_invoke_3;
        v24[3] = &unk_279BB8838;
        v24[4] = v11;
        v24[5] = self;
        [v11 setCompletionHandler:v24];
        [v11 activate];
        goto LABEL_20;
      }

      ucat = self->_ucat;
    }

    v13 = [dataCopy length];
    v14 = CUPrintNSObjectOneLineEx();
    LogPrintF(ucat, "[SKConnection _serverPairVerifyContinueWithData:start:]", 30, "PairVerify start: %d bytes, %@", v13, v14);

    goto LABEL_12;
  }

  v9 = self->_ucat;
  if (v9->var0 > 30)
  {
    goto LABEL_21;
  }

  if (v9->var0 != -1)
  {
    goto LABEL_7;
  }

  if (_LogCategory_Initialize())
  {
    v9 = self->_ucat;
LABEL_7:
    v10 = [dataCopy length];
    v11 = CUPrintNSObjectOneLineEx();
    LogPrintF(v9, "[SKConnection _serverPairVerifyContinueWithData:start:]", 30, "PairVerify next: %d bytes, %@", v10, v11);
LABEL_20:
  }

LABEL_21:
  CFDataGetTypeID();
  v17 = CFDictionaryGetTypedValue();
  if (v17)
  {
    [(CUPairingSession *)self->_pairVerifySession receivedData:v17];
  }

  else
  {
    v22 = NSErrorF_safe(*MEMORY[0x277CCA590], v26, "PairVerify server no pairing data");
    v23 = v29[5];
    v29[5] = v22;

    v17 = 0;
  }

LABEL_23:

  v7[2](v7);
  _Block_object_dispose(&v28, 8);
}

void *__56__SKConnection__serverPairVerifyContinueWithData_start___block_invoke(void *result)
{
  v1 = result[5];
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  v3 = result[4];
  v4 = v3[18];
  if (*v4 <= 90)
  {
    if (*v4 == -1)
    {
      v6 = _LogCategory_Initialize();
      v3 = v2[4];
      v1 = v2[5];
      if (!v6)
      {
        goto LABEL_7;
      }

      v4 = v3[18];
    }

    v5 = CUPrintNSError();
    LogPrintF(v4, "[SKConnection _serverPairVerifyContinueWithData:start:]_block_invoke", 90, "### PairVerify server receive failed: %@", v5);

    v3 = v2[4];
    v1 = v2[5];
  }

LABEL_7:
  v7 = *(*(v1 + 8) + 40);

  return [v3 _serverPairVerifyCompleted:v7];
}

void __56__SKConnection__serverPairVerifyContinueWithData_start___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  if (*(a1 + 32) == v3[10])
  {
    v7 = @"_pd";
    v8[0] = a3;
    v4 = MEMORY[0x277CBEAC0];
    v5 = a3;
    v6 = [v4 dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [v3 _sendFrameType:7 unencryptedObject:v6];
  }
}

void *__56__SKConnection__serverPairVerifyContinueWithData_start___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[10])
  {
    return [result _serverPairVerifyCompleted:a2];
  }

  return result;
}

- (void)_serverPairSetupCompleted:(id)completed
{
  completedCopy = completed;
  v5 = completedCopy;
  if (!completedCopy)
  {
    pairSetupSession = self->_pairSetupSession;
    v15 = 0;
    v7 = [(CUPairingSession *)pairSetupSession openStreamWithName:@"main" error:&v15];
    v5 = v15;
    mainStream = self->_mainStream;
    self->_mainStream = v7;

    if (!v5)
    {
      self->_mainAuthTagLength = [(CUPairingStream *)self->_mainStream authTagLength];
      ucat = self->_ucat;
      if (ucat->var0 <= 30)
      {
        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_20;
          }

          ucat = self->_ucat;
        }

        LogPrintF(ucat, "[SKConnection _serverPairSetupCompleted:]", 30, "PairSetup server completed");
      }

LABEL_20:
      v5 = 0;
      goto LABEL_8;
    }
  }

  v9 = self->_ucat;
  if (v9->var0 <= 90)
  {
    if (v9->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v9 = self->_ucat;
    }

    v10 = CUPrintNSError();
    LogPrintF(v9, "[SKConnection _serverPairSetupCompleted:]", 90, "### PairSetup server failed: %@", v10);
  }

LABEL_7:
  [(SKConnection *)self _pairSetupInvalidate];
LABEL_8:
  runState = self->_runState;
  if (runState == 24 || runState == 18)
  {
    v12 = MEMORY[0x26676A4C0](self->_authCompletionHandler);
    v13 = v12;
    if (v12)
    {
      (*(v12 + 16))(v12, v5);
    }

    if (!self->_stepError)
    {
      objc_storeStrong(&self->_stepError, v5);
    }

    self->_stepDone = 1;
    [(SKConnection *)self _run];
  }
}

- (void)_serverPairSetupContinueWithData:(id)data start:(BOOL)start
{
  startCopy = start;
  dataCopy = data;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__243;
  v36 = __Block_byref_object_dispose__244;
  v37 = 0;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __55__SKConnection__serverPairSetupContinueWithData_start___block_invoke;
  v31[3] = &unk_279BB8670;
  v31[4] = self;
  v31[5] = &v32;
  v7 = MEMORY[0x26676A4C0](v31);
  v30 = 0;
  v8 = OPACKDecodeData();
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (startCopy)
      {
        Int64 = CFDictionaryGetInt64();
        self->_reversePairing = Int64 != 0;
        if (Int64)
        {
          ucat = self->_ucat;
          if (ucat->var0 <= 30)
          {
            if (ucat->var0 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_37;
              }

              ucat = self->_ucat;
            }

            LogPrintF(ucat, "[SKConnection _serverPairSetupContinueWithData:start:]", 30, "PairSetup reverse start");
          }

LABEL_37:
          [(SKConnection *)self _run];
          goto LABEL_38;
        }
      }

      else if (self->_pairSetupSession)
      {
        v11 = self->_ucat;
        if (v11->var0 > 30)
        {
          goto LABEL_31;
        }

        if (v11->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
LABEL_31:
            CFDataGetTypeID();
            v19 = CFDictionaryGetTypedValue();
            if (v19)
            {
              [(CUPairingSession *)self->_pairSetupSession receivedData:v19];
            }

            else
            {
              v24 = NSErrorF_safe(*MEMORY[0x277CCA590], v30, "PairSetup server no pairing data");
              v25 = v33[5];
              v33[5] = v24;

              v19 = 0;
            }

            goto LABEL_33;
          }

          v11 = self->_ucat;
        }

        v12 = [dataCopy length];
        v13 = CUPrintNSObjectOneLineEx();
        LogPrintF(v11, "[SKConnection _serverPairSetupContinueWithData:start:]", 30, "PairSetup next: %d bytes, %@", v12, v13);
LABEL_30:

        goto LABEL_31;
      }

      v14 = self->_ucat;
      if (v14->var0 <= 30)
      {
        if (v14->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_16;
          }

          v14 = self->_ucat;
        }

        v15 = [dataCopy length];
        v16 = CUPrintNSObjectOneLineEx();
        LogPrintF(v14, "[SKConnection _serverPairSetupContinueWithData:start:]", 30, "PairSetup start: %d bytes, %@", v15, v16);
      }

LABEL_16:
      [(SKConnection *)self _pairSetupInvalidate];
      v13 = objc_alloc_init(MEMORY[0x277D028E8]);
      objc_storeStrong(&self->_pairSetupSession, v13);
      [v13 setDispatchQueue:self->_dispatchQueue];
      [v13 setFixedPIN:self->_password];
      if (self->_conditionalPersistent)
      {
        v17 = 520;
      }

      else if (self->_persistentPairing)
      {
        v17 = 8;
      }

      else
      {
        v17 = 24;
      }

      [v13 setFlags:v17];
      if (self->_label)
      {
        label = self->_label;
      }

      else
      {
        label = @"SKCnx";
      }

      [v13 setLabel:label];
      [v13 setPinType:self->_passwordType];
      [v13 setSessionType:2];
      if (self->_authShowPasswordHandler)
      {
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __55__SKConnection__serverPairSetupContinueWithData_start___block_invoke_2;
        v29[3] = &unk_279BB7B30;
        v29[4] = v13;
        v29[5] = self;
        [v13 setShowPINHandlerEx:v29];
      }

      else
      {
        [v13 setFlags:{objc_msgSend(v13, "flags") | 0x80}];
      }

      if (self->_authHidePasswordHandler)
      {
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __55__SKConnection__serverPairSetupContinueWithData_start___block_invoke_3;
        v28[3] = &unk_279BB8648;
        v28[4] = v13;
        v28[5] = self;
        [v13 setHidePINHandler:v28];
      }

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __55__SKConnection__serverPairSetupContinueWithData_start___block_invoke_4;
      v27[3] = &unk_279BB7AE0;
      v27[4] = v13;
      v27[5] = self;
      [v13 setSendDataHandler:v27];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __55__SKConnection__serverPairSetupContinueWithData_start___block_invoke_5;
      v26[3] = &unk_279BB8838;
      v26[4] = v13;
      v26[5] = self;
      [v13 setCompletionHandler:v26];
      [v13 activate];
      goto LABEL_30;
    }

    v21 = objc_opt_class();
    v19 = NSStringFromClass(v21);
    v22 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960540, "PairSetup server bad type: %@", v19);
    v23 = v33[5];
    v33[5] = v22;
  }

  else
  {
    v20 = NSErrorF_safe(*MEMORY[0x277CCA590], v30, "OPACK decode failed");
    v19 = v33[5];
    v33[5] = v20;
  }

LABEL_33:

LABEL_38:
  v7[2](v7);

  _Block_object_dispose(&v32, 8);
}

void *__55__SKConnection__serverPairSetupContinueWithData_start___block_invoke(void *result)
{
  v1 = result[5];
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  v3 = result[4];
  v4 = v3[18];
  if (*v4 <= 90)
  {
    if (*v4 == -1)
    {
      v6 = _LogCategory_Initialize();
      v3 = v2[4];
      v1 = v2[5];
      if (!v6)
      {
        goto LABEL_7;
      }

      v4 = v3[18];
    }

    v5 = CUPrintNSError();
    LogPrintF(v4, "[SKConnection _serverPairSetupContinueWithData:start:]_block_invoke", 90, "### PairSetup server receive failed: %@", v5);

    v3 = v2[4];
    v1 = v2[5];
  }

LABEL_7:
  v7 = *(*(v1 + 8) + 40);

  return [v3 _serverPairSetupCompleted:v7];
}

void __55__SKConnection__serverPairSetupContinueWithData_start___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 40);
  if (*(a1 + 32) == *(v5 + 72))
  {
    v8 = v4;
    *(v5 + 112) = 1;
    v6 = MEMORY[0x26676A4C0](*(*(a1 + 40) + 192));
    v7 = v6;
    if (v6)
    {
      (*(v6 + 16))(v6, *(*(a1 + 40) + 160), v8);
    }

    v4 = v8;
  }
}

void __55__SKConnection__serverPairSetupContinueWithData_start___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32) == *(v2 + 72) && *(v2 + 112) == 1)
  {
    *(v2 + 112) = 0;
    v3 = MEMORY[0x26676A4C0](*(*(a1 + 40) + 184));
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

void __55__SKConnection__serverPairSetupContinueWithData_start___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  if (*(a1 + 32) == v3[9])
  {
    v7 = @"_pd";
    v8[0] = a3;
    v4 = MEMORY[0x277CBEAC0];
    v5 = a3;
    v6 = [v4 dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [v3 _sendFrameType:3 unencryptedObject:v6];
  }
}

void *__55__SKConnection__serverPairSetupContinueWithData_start___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[9])
  {
    return [result _serverPairSetupCompleted:a2];
  }

  return result;
}

- (void)_serverAcceptBLE
{
  bleConnection = self->_bleConnection;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__SKConnection__serverAcceptBLE__block_invoke;
  v6[3] = &unk_279BB8838;
  v6[4] = bleConnection;
  v6[5] = self;
  v4 = bleConnection;
  [(CBConnection *)v4 setErrorHandler:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__SKConnection__serverAcceptBLE__block_invoke_2;
  v5[3] = &unk_279BB8648;
  v5[4] = v4;
  v5[5] = self;
  [(CBConnection *)v4 setInvalidationHandler:v5];
  [(SKConnection *)self _receiveStart:0];
}

void __32__SKConnection__serverAcceptBLE__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32) == v2[29])
  {
    v3 = NSErrorNestedF();
    [v2 _serverError:v3];
  }
}

void *__32__SKConnection__serverAcceptBLE__block_invoke_2(void *result)
{
  v5 = result[5];
  if (result[4] != *(v5 + 232))
  {
    return result;
  }

  v13 = v1;
  v6 = result;
  v7 = *(v5 + 144);
  if (*v7 <= 30)
  {
    if (*v7 == -1)
    {
      v8 = _LogCategory_Initialize();
      v5 = v6[5];
      if (!v8)
      {
        goto LABEL_6;
      }

      v7 = *(v5 + 144);
    }

    LogPrintF(v7, "[SKConnection _serverAcceptBLE]_block_invoke_2", 30, "BLE server connection invalidated", v2, v13, v3);
    v5 = v6[5];
  }

LABEL_6:
  v9 = *(v5 + 232);
  *(v5 + 232) = 0;

  v10 = v6[5];
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  v12 = v6[5];

  return [v12 _invalidated];
}

- (void)_serverAccept
{
  [(SKConnection *)self _pairSetupInvalidate];
  [(SKConnection *)self _pairVerifyInvalidate];
  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  self->_reversePairing = 0;
  if (self->_bleConnection)
  {

    [(SKConnection *)self _serverAcceptBLE];
  }

  else if (self->_sendDataHandler)
  {
    self->_stepDone = 1;
  }

  else
  {
    v4 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960534, "Server start with no peer");
    v5 = self->_stepError;
    self->_stepError = v4;

    MEMORY[0x2821F96F8](v4, v5);
  }
}

- (void)_serverRun
{
  if (!self->_invalidateCalled)
  {
    while (1)
    {
      runState = self->_runState;
      if (runState > 25)
      {
        break;
      }

      if (runState <= 23)
      {
        if (runState)
        {
          if (runState != 23)
          {
            return;
          }

          [(SKConnection *)self _serverAccept];
          if ([(NSData *)self->_pskData length])
          {
            v4 = 27;
          }

          else
          {
LABEL_14:
            v4 = self->_runState + 1;
          }

LABEL_30:
          self->_runState = v4;
          goto LABEL_31;
        }

LABEL_17:
        v4 = 23;
        goto LABEL_30;
      }

      if (runState != 24)
      {
        [(SKConnection *)self _clientPairSetupStart];
        goto LABEL_14;
      }

      if (self->_reversePairing)
      {
        v4 = 25;
        goto LABEL_30;
      }

      if (self->_stepError)
      {
        goto LABEL_26;
      }

      if (self->_stepDone)
      {
        self->_stepDone = 0;
        goto LABEL_29;
      }

      v4 = 24;
LABEL_31:
      if (v4 == runState)
      {
        return;
      }

      ucat = self->_ucat;
      if (ucat->var0 <= 30)
      {
        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_38;
          }

          ucat = self->_ucat;
          v4 = self->_runState;
        }

        v6 = "?";
        if (v4 <= 0x1D)
        {
          v6 = off_279BB7C18[v4];
        }

        LogPrintF(ucat, "[SKConnection _serverRun]", 30, "Server state: %s -> %s", off_279BB7C18[runState], v6);
      }

LABEL_38:
      [(SKConnection *)self _updateExternalState];
    }

    if (runState > 27)
    {
      if (runState != 28)
      {
        if (runState != 29)
        {
          return;
        }

        goto LABEL_17;
      }

      if (!self->_stepError)
      {
        [(SKConnection *)self _processSends];
        v4 = self->_runState;
        goto LABEL_31;
      }
    }

    else if (runState == 26)
    {
      if (!self->_stepError)
      {
        if (!self->_stepDone)
        {
          v4 = 26;
          goto LABEL_31;
        }

        goto LABEL_29;
      }
    }

    else
    {
      [(SKConnection *)self _pskPrepareClientMode:0];
      if (!self->_stepError)
      {
LABEL_29:
        v4 = 28;
        goto LABEL_30;
      }
    }

LABEL_26:
    v4 = 29;
    goto LABEL_30;
  }
}

- (void)_clientError:(id)error
{
  errorCopy = error;
  ucat = self->_ucat;
  v12 = errorCopy;
  if (ucat->var0 <= 90)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      v6 = CUPrintNSError();
      LogPrintF(ucat, "[SKConnection _clientError:]", 90, "Client error: %@", v6);

      errorCopy = v12;
      goto LABEL_5;
    }

    v7 = _LogCategory_Initialize();
    errorCopy = v12;
    if (v7)
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  startTimer = self->_startTimer;
  if (startTimer)
  {
    v9 = startTimer;
    dispatch_source_cancel(v9);
    v10 = self->_startTimer;
    self->_startTimer = 0;

    errorCopy = v12;
  }

  if (errorCopy)
  {
    [(SKConnection *)self _abortRequestsWithError:?];
  }

  else
  {
    v11 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960596, "Client error");
    [(SKConnection *)self _abortRequestsWithError:v11];
  }

  [(CBConnection *)self->_bleConnection invalidate];
  [(SKConnection *)self _invalidateWithError:v12];
}

- (void)_clientPairVerifyCompleted:(id)completed
{
  completedCopy = completed;
  v5 = completedCopy;
  if (completedCopy || (pairVerifySession = self->_pairVerifySession, v14 = 0, [(CUPairingSession *)pairVerifySession openStreamWithName:@"main" error:&v14], v7 = objc_claimAutoreleasedReturnValue(), v5 = v14, mainStream = self->_mainStream, self->_mainStream = v7, mainStream, v5))
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 90)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_7;
        }

        ucat = self->_ucat;
      }

      v10 = CUPrintNSError();
      LogPrintF(ucat, "[SKConnection _clientPairVerifyCompleted:]", 90, "### PairVerify client failed: %@", v10);
    }

LABEL_7:
    [(SKConnection *)self _pairVerifyInvalidate];
    goto LABEL_8;
  }

  self->_mainAuthTagLength = [(CUPairingStream *)self->_mainStream authTagLength];
  v11 = self->_ucat;
  if (v11->var0 <= 30)
  {
    if (v11->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_15;
      }

      v11 = self->_ucat;
    }

    LogPrintF(v11, "[SKConnection _clientPairVerifyCompleted:]", 30, "PairVerify client completed");
  }

LABEL_15:
  v12 = MEMORY[0x26676A4C0](self->_authCompletionHandler);
  v13 = v12;
  if (v12)
  {
    (*(v12 + 16))(v12, 0);
  }

  v5 = 0;
LABEL_8:
  if (!self->_stepError)
  {
    objc_storeStrong(&self->_stepError, v5);
  }

  self->_stepDone = 1;
  [(SKConnection *)self _run];
}

- (void)_clientPairVerifyWithData:(id)data
{
  dataCopy = data;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__243;
  v24 = __Block_byref_object_dispose__244;
  v25 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __42__SKConnection__clientPairVerifyWithData___block_invoke;
  v19[3] = &unk_279BB8670;
  v19[4] = self;
  v19[5] = &v20;
  v5 = MEMORY[0x26676A4C0](v19);
  if (!self->_pairVerifySession)
  {
    v11 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960551, "No PairVerify client session");
    v12 = v21[5];
    v21[5] = v11;

    goto LABEL_11;
  }

  v6 = OPACKDecodeData();
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      ucat = self->_ucat;
      if (ucat->var0 > 30)
      {
        goto LABEL_8;
      }

      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
LABEL_8:
          CFDataGetTypeID();
          v10 = CFDictionaryGetTypedValue();
          if (v10)
          {
            [(CUPairingSession *)self->_pairVerifySession receivedData:v10];
          }

          else
          {
            v17 = NSErrorF_safe(*MEMORY[0x277CCA590], 0, "PairVerify request with no pairing data");
            v18 = v21[5];
            v21[5] = v17;

            v10 = 0;
          }

          goto LABEL_10;
        }

        ucat = self->_ucat;
      }

      v8 = [dataCopy length];
      v9 = CUPrintNSObjectOneLineEx();
      LogPrintF(ucat, "[SKConnection _clientPairVerifyWithData:]", 30, "PairVerify client next: %d bytes, %@", v8, v9);

      goto LABEL_8;
    }

    v14 = objc_opt_class();
    v10 = NSStringFromClass(v14);
    v15 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960540, "Bad PairVerify request object type %@", v10);
    v16 = v21[5];
    v21[5] = v15;
  }

  else
  {
    v13 = NSErrorF_safe(*MEMORY[0x277CCA590], 0, "OPACK decode failed");
    v10 = v21[5];
    v21[5] = v13;
  }

LABEL_10:

LABEL_11:
  v5[2](v5);

  _Block_object_dispose(&v20, 8);
}

void *__42__SKConnection__clientPairVerifyWithData___block_invoke(void *result)
{
  v1 = result[5];
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  v3 = result[4];
  v4 = v3[18];
  if (*v4 <= 90)
  {
    if (*v4 == -1)
    {
      v6 = _LogCategory_Initialize();
      v3 = v2[4];
      v1 = v2[5];
      if (!v6)
      {
        goto LABEL_7;
      }

      v4 = v3[18];
    }

    v5 = CUPrintNSError();
    LogPrintF(v4, "[SKConnection _clientPairVerifyWithData:]_block_invoke", 90, "### PairVerify client receive failed: %@", v5);

    v3 = v2[4];
    v1 = v2[5];
  }

LABEL_7:
  v7 = *(*(v1 + 8) + 40);

  return [v3 _clientPairVerifyCompleted:v7];
}

- (void)_clientPairVerifyStart
{
  [(SKConnection *)self _pairVerifyInvalidate];
  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[SKConnection _clientPairVerifyStart]", 30, "PairVerify client start");
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  v5 = objc_alloc_init(MEMORY[0x277D028E8]);
  objc_storeStrong(&self->_pairVerifySession, v5);
  [v5 setDispatchQueue:self->_dispatchQueue];
  v6 = 8;
  if (!self->_conditionalPersistent)
  {
    if (self->_persistentPairing)
    {
      v6 = 8;
    }

    else
    {
      v6 = 0x400000;
    }
  }

  [v5 setFlags:v6];
  if (self->_label)
  {
    label = self->_label;
  }

  else
  {
    label = @"SKCnx";
  }

  [v5 setLabel:label];
  [v5 setSessionType:3];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__SKConnection__clientPairVerifyStart__block_invoke;
  v9[3] = &unk_279BB7AE0;
  v9[4] = v5;
  v9[5] = self;
  [v5 setSendDataHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__SKConnection__clientPairVerifyStart__block_invoke_2;
  v8[3] = &unk_279BB8838;
  v8[4] = v5;
  v8[5] = self;
  [v5 setCompletionHandler:v8];
  [v5 activate];
}

void __38__SKConnection__clientPairVerifyStart__block_invoke(uint64_t a1, char a2, void *a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  if (*(a1 + 32) == v3[10])
  {
    v4 = a2 & 1;
    v8 = @"_pd";
    v9[0] = a3;
    v5 = MEMORY[0x277CBEAC0];
    v6 = a3;
    v7 = [v5 dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [v3 _sendFrameType:v4 ^ 7u unencryptedObject:v7];
  }
}

void *__38__SKConnection__clientPairVerifyStart__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[10])
  {
    return [result _clientPairVerifyCompleted:a2];
  }

  return result;
}

- (void)_clientPairSetupCompleted:(id)completed
{
  completedCopy = completed;
  authThrottleTimer = self->_authThrottleTimer;
  if (authThrottleTimer)
  {
    v6 = authThrottleTimer;
    dispatch_source_cancel(v6);
    v7 = self->_authThrottleTimer;
    self->_authThrottleTimer = 0;
  }

  v8 = completedCopy;
  v9 = v8;
  if (v8 || (pairSetupSession = self->_pairSetupSession, v18 = 0, [(CUPairingSession *)pairSetupSession openStreamWithName:@"main" error:&v18], v11 = objc_claimAutoreleasedReturnValue(), v9 = v18, mainStream = self->_mainStream, self->_mainStream = v11, mainStream, v9))
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 90)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_9;
        }

        ucat = self->_ucat;
      }

      v14 = CUPrintNSError();
      LogPrintF(ucat, "[SKConnection _clientPairSetupCompleted:]", 90, "### PairSetup client failed: %@", v14);
    }

LABEL_9:
    [(SKConnection *)self _pairSetupInvalidate];
    goto LABEL_10;
  }

  self->_mainAuthTagLength = [(CUPairingStream *)self->_mainStream authTagLength];
  v17 = self->_ucat;
  if (v17->var0 <= 30)
  {
    if (v17->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_19;
      }

      v17 = self->_ucat;
    }

    LogPrintF(v17, "[SKConnection _clientPairSetupCompleted:]", 30, "PairSetup client completed");
  }

LABEL_19:
  v9 = 0;
LABEL_10:
  v15 = MEMORY[0x26676A4C0](self->_authCompletionHandler);
  v16 = v15;
  if (v15)
  {
    (*(v15 + 16))(v15, v9);
  }

  if (!self->_stepError)
  {
    objc_storeStrong(&self->_stepError, v9);
  }

  self->_stepDone = 1;
  [(SKConnection *)self _run];
}

- (void)_clientPairSetupPromptWithFlags:(unsigned int)flags passwordType:(int)type throttleSeconds:(int)seconds
{
  v5 = *&seconds;
  v6 = *&type;
  v7 = *&flags;
  ucat = self->_ucat;
  if (ucat->var0 > 30)
  {
    goto LABEL_6;
  }

  if (ucat->var0 != -1)
  {
    goto LABEL_3;
  }

  if (!_LogCategory_Initialize())
  {
LABEL_6:
    if ((v7 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  ucat = self->_ucat;
LABEL_3:
  v10 = CUPrintFlags32();
  v11 = v10;
  if ((v6 + 1) > 0xA)
  {
    v12 = "?";
  }

  else
  {
    v12 = off_279BB8270[(v6 + 1)];
  }

  LogPrintF(ucat, "[SKConnection _clientPairSetupPromptWithFlags:passwordType:throttleSeconds:]", 30, "PairSetup prompt flags %@, passwordType %s, throttleSeconds %d", v10, v12, v5);

  if ((v7 & 0x20000) == 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  if (v5 >= 1)
  {
    v13 = mach_absolute_time();
    self->_authThrottleDeadlineTicks = SecondsToUpTicks() + v13;
    authThrottleTimer = self->_authThrottleTimer;
    if (authThrottleTimer)
    {
      v15 = authThrottleTimer;
      dispatch_source_cancel(v15);
      v16 = self->_authThrottleTimer;
      self->_authThrottleTimer = 0;
    }

    v17 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
    v18 = self->_authThrottleTimer;
    self->_authThrottleTimer = v17;

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __77__SKConnection__clientPairSetupPromptWithFlags_passwordType_throttleSeconds___block_invoke;
    handler[3] = &unk_279BB7B08;
    handler[4] = v17;
    handler[5] = self;
    v24 = v6;
    dispatch_source_set_event_handler(v17, handler);
    CUDispatchTimerSet();
    dispatch_activate(v17);
    v19 = MEMORY[0x26676A4C0](self->_authPromptHandler);
    v20 = v19;
    if (v19)
    {
      (*(v19 + 16))(v19, v6, v7, v5);
    }

    return;
  }

LABEL_16:
  v21 = MEMORY[0x26676A4C0](self->_authPromptHandler);
  if (v21)
  {
    v22 = v21;
    v21[2](v21, v6, v7, 0);
    v21 = v22;
  }
}

void __77__SKConnection__clientPairSetupPromptWithFlags_passwordType_throttleSeconds___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32) != *(v2 + 24))
  {
    return;
  }

  v4 = *(v2 + 16);
  if ((v4 - mach_absolute_time()) < 1)
  {
    v4 = 0;
  }

  else
  {
    UpTicksToSecondsF();
    LODWORD(v4) = llround(v5);
  }

  v6 = *(a1 + 40);
  v7 = v6[18];
  if (*v7 <= 30)
  {
    if (*v7 == -1)
    {
      v8 = _LogCategory_Initialize();
      v6 = *(a1 + 40);
      if (!v8)
      {
        goto LABEL_9;
      }

      v7 = v6[18];
    }

    LogPrintF(v7, "[SKConnection _clientPairSetupPromptWithFlags:passwordType:throttleSeconds:]_block_invoke", 30, "PairSetup throttle remaining seconds: %d", v4);
    v6 = *(a1 + 40);
  }

LABEL_9:
  if (v4 <= 0)
  {
    v10 = v6[3];
    if (v10)
    {
      v11 = v10;
      dispatch_source_cancel(v11);
      v12 = *(a1 + 40);
      v13 = *(v12 + 24);
      *(v12 + 24) = 0;

      v9 = 0;
      v6 = *(a1 + 40);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0x20000;
  }

  v14 = MEMORY[0x26676A4C0](v6[25]);
  if (v14)
  {
    v15 = v14;
    v14[2](v14, *(a1 + 48), v9, v4);
    v14 = v15;
  }
}

- (void)_clientPairSetupContinueWithData:(id)data
{
  dataCopy = data;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__243;
  v26 = __Block_byref_object_dispose__244;
  v27 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __49__SKConnection__clientPairSetupContinueWithData___block_invoke;
  v21[3] = &unk_279BB8670;
  v21[4] = self;
  v21[5] = &v22;
  v5 = MEMORY[0x26676A4C0](v21);
  v6 = self->_pairSetupSession;
  if (!v6)
  {
    v14 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960534, "No PairSetup client session");
    v15 = v23[5];
    v23[5] = v14;

    goto LABEL_13;
  }

  v7 = OPACKDecodeData();
  if (!v7)
  {
    v16 = NSErrorF_safe(*MEMORY[0x277CCA590], 0, "OPACK decode failed");
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = objc_opt_class();
    v13 = NSStringFromClass(v17);
    v18 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960540, "PairSetup client bad type %@", v13);
LABEL_19:
    v20 = v23[5];
    v23[5] = v18;

    goto LABEL_11;
  }

  v8 = CUDecodeNSErrorDictionary();
  v9 = v23[5];
  v23[5] = v8;

  if (v23[5])
  {
    v19 = NSErrorNestedF();
    goto LABEL_12;
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_7:
      v11 = [dataCopy length];
      v12 = CUPrintNSObjectOneLineEx();
      LogPrintF(ucat, "[SKConnection _clientPairSetupContinueWithData:]", 30, "PairSetup client next: %d bytes, %@", v11, v12);

      goto LABEL_9;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_7;
    }
  }

LABEL_9:
  CFDataGetTypeID();
  v13 = CFDictionaryGetTypedValue();
  if (!v13)
  {
    v18 = NSErrorF_safe(*MEMORY[0x277CCA590], 0, "PairSetup client no pairing data");
    goto LABEL_19;
  }

  [(CUPairingSession *)v6 receivedData:v13];
LABEL_11:

LABEL_12:
LABEL_13:

  v5[2](v5);
  _Block_object_dispose(&v22, 8);
}

void *__49__SKConnection__clientPairSetupContinueWithData___block_invoke(void *result)
{
  v1 = result[5];
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  v3 = result[4];
  v4 = v3[18];
  if (*v4 <= 90)
  {
    if (*v4 == -1)
    {
      v6 = _LogCategory_Initialize();
      v3 = v2[4];
      v1 = v2[5];
      if (!v6)
      {
        goto LABEL_7;
      }

      v4 = v3[18];
    }

    v5 = CUPrintNSError();
    LogPrintF(v4, "[SKConnection _clientPairSetupContinueWithData:]_block_invoke", 90, "### PairSetup client receive failed: %@", v5);

    v3 = v2[4];
    v1 = v2[5];
  }

LABEL_7:
  v7 = *(*(v1 + 8) + 40);

  return [v3 _clientPairSetupCompleted:v7];
}

- (void)_clientPairSetupStartReverse
{
  v7[1] = *MEMORY[0x277D85DE8];
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[SKConnection _clientPairSetupStartReverse]", 30, "PairSetup client start reverse");
  }

LABEL_5:
  [(SKConnection *)self _pairSetupInvalidate];
  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  v6 = @"_pairReverse";
  v7[0] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(SKConnection *)self _sendFrameType:2 unencryptedObject:v5];
}

- (void)_clientPairSetupStart
{
  [(SKConnection *)self _pairSetupInvalidate];
  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  ucat = self->_ucat;
  if (ucat->var0 > 30)
  {
    goto LABEL_5;
  }

  if (ucat->var0 != -1)
  {
    goto LABEL_3;
  }

  if (_LogCategory_Initialize())
  {
    ucat = self->_ucat;
LABEL_3:
    LogPrintF(ucat, "[SKConnection _clientPairSetupStart]", 30, "PairSetup client start");
  }

LABEL_5:
  v5 = objc_alloc_init(MEMORY[0x277D028E8]);
  objc_storeStrong(&self->_pairSetupSession, v5);
  [v5 setDispatchQueue:self->_dispatchQueue];
  [v5 setFixedPIN:self->_password];
  if (self->_conditionalPersistent)
  {
    v6 = 520;
  }

  else if (self->_persistentPairing)
  {
    v6 = 8;
  }

  else
  {
    v6 = 24;
  }

  [v5 setFlags:v6];
  if (self->_label)
  {
    label = self->_label;
  }

  else
  {
    label = @"SKCnx";
  }

  [v5 setLabel:label];
  [v5 setSessionType:1];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37__SKConnection__clientPairSetupStart__block_invoke;
  v10[3] = &unk_279BB7AB8;
  v10[4] = self;
  v10[5] = v5;
  [v5 setPromptForPINHandler:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__SKConnection__clientPairSetupStart__block_invoke_2;
  v9[3] = &unk_279BB7AE0;
  v9[4] = v5;
  v9[5] = self;
  [v5 setSendDataHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__SKConnection__clientPairSetupStart__block_invoke_3;
  v8[3] = &unk_279BB8838;
  v8[4] = v5;
  v8[5] = self;
  [v5 setCompletionHandler:v8];
  [v5 activate];
}

uint64_t __37__SKConnection__clientPairSetupStart__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) pinTypeActual];

  return [v5 _clientPairSetupPromptWithFlags:a2 passwordType:v6 throttleSeconds:a3];
}

void __37__SKConnection__clientPairSetupStart__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  if (*(a1 + 32) == v3[9])
  {
    v4 = a2 & 1;
    v8 = @"_pd";
    v9[0] = a3;
    v5 = MEMORY[0x277CBEAC0];
    v6 = a3;
    v7 = [v5 dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [v3 _sendFrameType:v4 ^ 3u unencryptedObject:v7];
  }
}

void *__37__SKConnection__clientPairSetupStart__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[9])
  {
    return [result _clientPairSetupCompleted:a2];
  }

  return result;
}

- (void)_clientConnectCompleted:(id)completed
{
  completedCopy = completed;
  ucat = self->_ucat;
  var0 = ucat->var0;
  v10 = completedCopy;
  if (completedCopy)
  {
    if (var0 > 90)
    {
      goto LABEL_9;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_9:
        if (!self->_stepError)
        {
          v8 = NSErrorNestedF();
          stepError = self->_stepError;
          self->_stepError = v8;
        }

        goto LABEL_15;
      }

      ucat = self->_ucat;
    }

    v7 = CUPrintNSError();
    LogPrintF(ucat, "[SKConnection _clientConnectCompleted:]", 90, "### BLE connect failed: %@", v7);

    goto LABEL_9;
  }

  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[SKConnection _clientConnectCompleted:]", 30, "BLE connect success");
  }

LABEL_12:
  if (!self->_readRequested)
  {
    [(SKConnection *)self _receiveStart:0];
  }

  self->_stepDone = 1;
LABEL_15:
  [(SKConnection *)self _run];
}

- (void)_clientConnectStartBLE
{
  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  [(CBConnection *)self->_bleConnection invalidate];
  ucat = self->_ucat;
  if (ucat->var0 > 30)
  {
    goto LABEL_5;
  }

  if (ucat->var0 != -1)
  {
    goto LABEL_3;
  }

  if (_LogCategory_Initialize())
  {
    ucat = self->_ucat;
LABEL_3:
    LogPrintF(ucat, "[SKConnection _clientConnectStartBLE]", 30, "BLE connect start: %@", self->_blePeerDevice);
  }

LABEL_5:
  v5 = objc_alloc_init(MEMORY[0x277CBE008]);
  bleConnection = self->_bleConnection;
  self->_bleConnection = v5;

  blePSM = [(SKDevice *)self->_blePeerDevice blePSM];
  if (blePSM)
  {
    v8 = blePSM;
  }

  else
  {
    v8 = 130;
  }

  [(CBConnection *)v5 setBlePSM:v8];
  [(CBConnection *)v5 setConnectionFlags:64];
  [(CBConnection *)v5 setConnectTimeoutSeconds:10.0];
  [(CBConnection *)v5 setDispatchQueue:self->_dispatchQueue];
  if (self->_label)
  {
    label = self->_label;
  }

  else
  {
    label = @"SKCnx";
  }

  [(CBConnection *)v5 setLabel:label];
  [(CBConnection *)v5 setUseCase:self->_bluetoothUseCase];
  identifier = [(SKDevice *)self->_blePeerDevice identifier];
  if (identifier)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBE020]);
    [v11 setIdentifier:identifier];
    [(CBConnection *)v5 setPeerDevice:v11];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __38__SKConnection__clientConnectStartBLE__block_invoke;
    v16[3] = &unk_279BB8838;
    v16[4] = v5;
    v16[5] = self;
    [(CBConnection *)v5 setErrorHandler:v16];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __38__SKConnection__clientConnectStartBLE__block_invoke_2;
    v15[3] = &unk_279BB8648;
    v15[4] = v5;
    v15[5] = self;
    [(CBConnection *)v5 setInvalidationHandler:v15];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __38__SKConnection__clientConnectStartBLE__block_invoke_3;
    v14[3] = &unk_279BB8838;
    v14[4] = v5;
    v14[5] = self;
    [(CBConnection *)v5 activateWithCompletion:v14];
  }

  else
  {
    v12 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960591, "Client start with no peer ID");
    v13 = self->_stepError;
    self->_stepError = v12;
  }
}

void __38__SKConnection__clientConnectStartBLE__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32) == v2[29])
  {
    v3 = NSErrorNestedF();
    [v2 _clientError:v3];
  }
}

void *__38__SKConnection__clientConnectStartBLE__block_invoke_2(void *result)
{
  v5 = result[5];
  if (result[4] != *(v5 + 232))
  {
    return result;
  }

  v12 = v1;
  v13 = v4;
  v6 = result;
  v7 = *(v5 + 144);
  if (*v7 <= 30)
  {
    if (*v7 != -1)
    {
LABEL_4:
      LogPrintF(v7, "[SKConnection _clientConnectStartBLE]_block_invoke_2", 30, "BLE connection invalidated", v2, v12, v3, v4);
      v5 = v6[5];
      goto LABEL_6;
    }

    v8 = _LogCategory_Initialize();
    v5 = v6[5];
    if (v8)
    {
      v7 = *(v5 + 144);
      goto LABEL_4;
    }
  }

LABEL_6:
  v9 = *(v5 + 232);
  *(v5 + 232) = 0;

  v10 = v6[5];
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  result = v6[5];
  if (*(result + 52) == 1)
  {

    return [result _invalidated];
  }

  return result;
}

void __38__SKConnection__clientConnectStartBLE__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 232);
  if (*(a1 + 32) == v4)
  {
    objc_storeStrong((v3 + 40), v4);
    v6 = a2;
    [*(a1 + 40) _clientConnectCompleted:v6];
  }
}

- (void)_clientConnectStart
{
  if (self->_blePeerDevice)
  {

    [(SKConnection *)self _clientConnectStartBLE];
  }

  else if (self->_sendDataHandler)
  {
    self->_stepDone = 1;
  }

  else
  {
    v3 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960534, "Client start with no peer device");
    stepError = self->_stepError;
    self->_stepError = v3;

    MEMORY[0x2821F96F8](v3, stepError);
  }
}

- (void)_clientRun
{
  if (!self->_invalidateCalled)
  {
    v3 = *MEMORY[0x277CCA590];
    while (1)
    {
      runState = self->_runState;
      if (runState > 0xF)
      {
        if (self->_runState <= 0x12uLL)
        {
          if (runState != 16)
          {
            if (runState == 17)
            {
              [(SKConnection *)self _clientPairSetupStartReverse];
              goto LABEL_34;
            }

            if (runState != 18)
            {
              goto LABEL_46;
            }
          }

          if (!self->_stepError)
          {
            goto LABEL_37;
          }

          goto LABEL_41;
        }

        switch(runState)
        {
          case 0x13uLL:
            [(SKConnection *)self _pskPrepareClientMode:1];
            if (!self->_stepError)
            {
              goto LABEL_38;
            }

LABEL_41:
            self->_runState = 21;
            break;
          case 0x14uLL:
            if (self->_stepError)
            {
              goto LABEL_41;
            }

            [(SKConnection *)self _processSends];
            break;
          case 0x15uLL:
            if (self->_stepError)
            {
              [(SKConnection *)self _clientError:?];
            }

            else
            {
              v6 = NSErrorF_safe(v3, 4294960534, "Client error without error");
              [(SKConnection *)self _clientError:v6];
            }

            self->_runState = 3;
            break;
        }
      }

      else
      {
        if (self->_runState <= 0xCuLL)
        {
          if (!self->_runState)
          {
            self->_runState = 11;
            goto LABEL_46;
          }

          if (runState == 11)
          {
            self->_runState = 12;
            [(SKConnection *)self _clientConnectStart];
            goto LABEL_46;
          }

          if (runState != 12)
          {
            goto LABEL_46;
          }

          if (!self->_stepError)
          {
            if (!self->_stepDone)
            {
              goto LABEL_46;
            }

            if ([(NSData *)self->_pskData length])
            {
              v5 = 19;
              goto LABEL_39;
            }

LABEL_34:
            v5 = self->_runState + 1;
            goto LABEL_39;
          }

          goto LABEL_41;
        }

        if (runState == 13)
        {
          self->_runState = 14;
          [(SKConnection *)self _clientPairVerifyStart];
          goto LABEL_46;
        }

        if (runState == 14)
        {
          if (self->_stepError)
          {
            v5 = 15;
          }

          else
          {
LABEL_37:
            if (!self->_stepDone)
            {
              goto LABEL_46;
            }

LABEL_38:
            v5 = 20;
          }

LABEL_39:
          self->_runState = v5;
          goto LABEL_46;
        }

        if (runState != 15)
        {
          goto LABEL_46;
        }

        if (self->_reversePairing)
        {
          v5 = 17;
          goto LABEL_39;
        }

        self->_runState = 16;
        [(SKConnection *)self _clientPairSetupStart];
      }

LABEL_46:
      v7 = self->_runState;
      if (v7 == runState)
      {
        return;
      }

      ucat = self->_ucat;
      if (ucat->var0 <= 30)
      {
        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_55;
          }

          ucat = self->_ucat;
          v7 = self->_runState;
        }

        v9 = "?";
        if (runState <= 0x1D)
        {
          v9 = off_279BB7C18[runState];
        }

        v10 = "?";
        if (v7 <= 0x1D)
        {
          v10 = off_279BB7C18[v7];
        }

        LogPrintF(ucat, "[SKConnection _clientRun]", 30, "Client state: %s -> %s", v9, v10);
      }

LABEL_55:
      [(SKConnection *)self _updateExternalState];
    }
  }
}

- (void)_updateExternalState
{
  state = self->_state;
  v3 = (self->_runState - 20) & 0xFFFFFFF7;
  v4 = v3 == 0;
  if (state == v4)
  {
    return;
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_4:
      v7 = "?";
      v8 = "Ready";
      if (state == 1)
      {
        v7 = "Ready";
      }

      if (!state)
      {
        v7 = "Unknown";
      }

      if (v3)
      {
        v8 = "Unknown";
      }

      LogPrintF(ucat, "[SKConnection _updateExternalState]", 30, "External state changed: %s -> %s", v7, v8);
      goto LABEL_12;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_4;
    }
  }

LABEL_12:
  self->_state = v4;
  v9 = MEMORY[0x26676A4C0](self->_stateChangedHandler);
  if (v9)
  {
    v10 = v9;
    v9[2]();
    v9 = v10;
  }
}

- (void)updatePasswordType:(int)type
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__SKConnection_updatePasswordType___block_invoke;
  v4[3] = &unk_279BB7FA0;
  v4[4] = self;
  typeCopy = type;
  dispatch_async(dispatchQueue, v4);
}

void __35__SKConnection_updatePasswordType___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((v1[52] & 1) == 0)
  {
    v4 = @"_pt";
    v2 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
    v5[0] = v2;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
    [v1 _sendFrameType:8 unencryptedObject:v3];
  }
}

- (void)tryPassword:(id)password
{
  passwordCopy = password;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__SKConnection_tryPassword___block_invoke;
  v7[3] = &unk_279BB8648;
  v7[4] = self;
  v8 = passwordCopy;
  v6 = passwordCopy;
  dispatch_async(dispatchQueue, v7);
}

int *__28__SKConnection_tryPassword___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 156) & 1) != 0 || (*(v2 + 159))
  {
    v3 = *(v2 + 72);
    v4 = v3;
    v7 = v3;
    if (v3)
    {
      v5 = [v3 tryPIN:*(a1 + 40)];
    }

    else
    {
      v5 = *(*(a1 + 32) + 144);
      if (*v5 > 90)
      {
        goto LABEL_6;
      }

      if (*v5 == -1)
      {
        v5 = _LogCategory_Initialize();
        v4 = 0;
        if (!v5)
        {
          goto LABEL_6;
        }

        v5 = *(*(a1 + 32) + 144);
      }

      v5 = LogPrintF(v5, "[SKConnection tryPassword:]_block_invoke", 90, "### TryPassword without PairSetup session");
    }

    v4 = v7;
LABEL_6:

    return MEMORY[0x2821F96F8](v5, v4);
  }

  result = *(v2 + 144);
  if (*result > 90)
  {
    return result;
  }

  if (*result == -1)
  {
    result = _LogCategory_Initialize();
    if (!result)
    {
      return result;
    }

    result = *(*(a1 + 32) + 144);
  }

  return LogPrintF(result, "[SKConnection tryPassword:]_block_invoke", 90, "### TryPassword invalid in server mode");
}

- (void)_run
{
  if (self->_clientMode)
  {
    [(SKConnection *)self _clientRun];
  }

  else
  {
    [(SKConnection *)self _serverRun];
  }
}

- (void)_pskPrepareClientMode:(BOOL)mode
{
  modeCopy = mode;
  v5 = objc_alloc_init(MEMORY[0x277D028F0]);
  v6 = self->_pskData;
  v12 = 0;
  v7 = [v5 prepareWithName:@"main" isClient:modeCopy pskData:v6 error:&v12];
  v8 = v12;
  if ((v7 & 1) == 0)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 90)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_7;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[SKConnection _pskPrepareClientMode:]", 90, "### PSK prepare failed: %@", v8);
    }

LABEL_7:
    v10 = NSErrorNestedF();
    stepError = self->_stepError;
    self->_stepError = v10;

    goto LABEL_8;
  }

  objc_storeStrong(&self->_mainStream, v5);
  self->_mainAuthTagLength = [v5 authTagLength];
LABEL_8:
}

- (void)_pairVerifyInvalidate
{
  [(CUPairingSession *)self->_pairVerifySession setCompletionHandler:0];
  [(CUPairingSession *)self->_pairVerifySession setSendDataHandler:0];
  [(CUPairingSession *)self->_pairVerifySession invalidate];
  pairVerifySession = self->_pairVerifySession;
  self->_pairVerifySession = 0;
}

- (void)_pairSetupInvalidate
{
  authThrottleTimer = self->_authThrottleTimer;
  if (authThrottleTimer)
  {
    v4 = authThrottleTimer;
    dispatch_source_cancel(v4);
    v5 = self->_authThrottleTimer;
    self->_authThrottleTimer = 0;
  }

  [(CUPairingSession *)self->_pairSetupSession setCompletionHandler:0];
  [(CUPairingSession *)self->_pairSetupSession setSendDataHandler:0];
  [(CUPairingSession *)self->_pairSetupSession invalidate];
  pairSetupSession = self->_pairSetupSession;
  self->_pairSetupSession = 0;
}

- (id)deriveKeyWithSaltPtr:(const void *)ptr saltLen:(unint64_t)len infoPtr:(const void *)infoPtr infoLen:(unint64_t)infoLen keyLen:(unint64_t)keyLen error:(id *)error
{
  pairSetupSession = self->_pairSetupSession;
  if (pairSetupSession)
  {
    v15 = pairSetupSession;
LABEL_4:
    v16 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:keyLen];
    v17 = -[CUPairingSession deriveKeyWithSaltPtr:saltLen:infoPtr:infoLen:keyLen:outputKeyPtr:](v15, "deriveKeyWithSaltPtr:saltLen:infoPtr:infoLen:keyLen:outputKeyPtr:", ptr, len, infoPtr, infoLen, keyLen, [v16 mutableBytes]);
    if (v17)
    {
      if (error)
      {
        NSErrorF_safe(*MEMORY[0x277CCA590], v17, "Derive key failed");
        *error = v18 = 0;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = v16;
    }

    goto LABEL_7;
  }

  v15 = self->_pairVerifySession;
  if (v15)
  {
    goto LABEL_4;
  }

  if (error)
  {
    NSErrorF_safe(*MEMORY[0x277CCA590], 4294960593, "No pairing session");
    *error = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_7:

  return v18;
}

- (void)_invalidated
{
  if (self->_invalidateDone || self->_bleConnection)
  {
    return;
  }

  [(SKConnection *)self _pairSetupInvalidate];
  [(SKConnection *)self _pairVerifyInvalidate];
  startTimer = self->_startTimer;
  if (startTimer)
  {
    v4 = startTimer;
    dispatch_source_cancel(v4);
    v5 = self->_startTimer;
    self->_startTimer = 0;
  }

  v19 = MEMORY[0x26676A4C0](self->_invalidationHandler);
  authCompletionHandler = self->_authCompletionHandler;
  self->_authCompletionHandler = 0;

  authShowPasswordHandler = self->_authShowPasswordHandler;
  self->_authShowPasswordHandler = 0;

  authHidePasswordHandler = self->_authHidePasswordHandler;
  self->_authHidePasswordHandler = 0;

  authPromptHandler = self->_authPromptHandler;
  self->_authPromptHandler = 0;

  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  pairSetupConfigHandler = self->_pairSetupConfigHandler;
  self->_pairSetupConfigHandler = 0;

  receivedEventHandler = self->_receivedEventHandler;
  self->_receivedEventHandler = 0;

  receivedRequestHandler = self->_receivedRequestHandler;
  self->_receivedRequestHandler = 0;

  sendDataHandler = self->_sendDataHandler;
  self->_sendDataHandler = 0;

  stateChangedHandler = self->_stateChangedHandler;
  self->_stateChangedHandler = 0;

  v17 = v19;
  self->_invalidateDone = 1;
  if (v19)
  {
    (*(v19 + 16))(v19);
    v17 = v19;
  }

  p_var0 = &self->_ucat->var0;
  if (*p_var0 <= 30)
  {
    if (*p_var0 == -1)
    {
      p_var0 = _LogCategory_Initialize();
      v17 = v19;
      if (!p_var0)
      {
        goto LABEL_12;
      }

      p_var0 = &self->_ucat->var0;
    }

    p_var0 = LogPrintF(p_var0, "[SKConnection _invalidated]", 30, "Invalidated");
    v17 = v19;
  }

LABEL_12:

  MEMORY[0x2821F96F8](p_var0, v17);
}

- (void)_invalidateCore:(id)core
{
  v34 = *MEMORY[0x277D85DE8];
  coreCopy = core;
  startTimer = self->_startTimer;
  if (startTimer)
  {
    v6 = startTimer;
    dispatch_source_cancel(v6);
    v7 = self->_startTimer;
    self->_startTimer = 0;
  }

  [(CBConnection *)self->_bleConnection invalidate];
  if (self->_showPasswordCalled)
  {
    self->_showPasswordCalled = 0;
    v8 = MEMORY[0x26676A4C0](self->_authHidePasswordHandler);
    v9 = v8;
    if (v8)
    {
      (*(v8 + 16))(v8);
    }
  }

  stepError = coreCopy;
  v26 = coreCopy;
  if (coreCopy || (stepError = self->_stepError) != 0)
  {
    v11 = stepError;
  }

  else
  {
    v11 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294896148, "Connection invalidated");
  }

  v12 = v11;
  [(SKConnection *)self _abortRequestsWithError:v11];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = self->_sendArray;
  v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      v16 = 0;
      do
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v29 + 1) + 8 * v16);
        ucat = self->_ucat;
        if (ucat->var0 <= 60)
        {
          if (ucat->var0 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_23;
            }

            ucat = self->_ucat;
          }

          requestID = [v17 requestID];
          eventID = requestID;
          if (!requestID)
          {
            eventID = [v17 eventID];
            v27 = eventID;
          }

          v21 = CUPrintNSError();
          LogPrintF(ucat, "[SKConnection _invalidateCore:]", 60, "### Abort queued ID '%@': %@", eventID, v21);

          if (!requestID)
          {
          }
        }

LABEL_23:
        timer = [v17 timer];
        [v17 setTimer:0];
        if (timer)
        {
          dispatch_source_cancel(timer);
        }

        completion = [v17 completion];
        [v17 setCompletion:0];
        if (completion)
        {
          (completion)[2](completion, v12);
        }

        else
        {
          responseHandler = [v17 responseHandler];
          [v17 setResponseHandler:0];
          if (responseHandler)
          {
            (responseHandler)[2](responseHandler, 0, 0, v12);
          }
        }

        ++v16;
      }

      while (v14 != v16);
      v25 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      v14 = v25;
    }

    while (v25);
  }

  [(NSMutableArray *)self->_sendArray removeAllObjects];
}

- (void)_invalidateWithError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    ucat = self->_ucat;
    v8 = errorCopy;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
      }

      v7 = CUPrintNSError();
      LogPrintF(ucat, "[SKConnection _invalidateWithError:]", 30, "Invalidating: %@", v7);
    }

LABEL_6:
    [(SKConnection *)self _invalidateCore:v8];
    errorCopy = [(SKConnection *)self _invalidated];
    v5 = v8;
  }

  MEMORY[0x2821F96F8](errorCopy, v5);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__SKConnection_invalidate__block_invoke;
  block[3] = &unk_279BB87E8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__243;
  v22 = __Block_byref_object_dispose__244;
  v23 = 0;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __40__SKConnection__activateWithCompletion___block_invoke;
  v14 = &unk_279BB8500;
  v17 = &v18;
  selfCopy = self;
  v5 = completionCopy;
  v16 = v5;
  v6 = MEMORY[0x26676A4C0](&v11);
  if (self->_activateCalled)
  {
    NSErrorF_safe(*MEMORY[0x277CCA590], 4294960575, "Activate already called");
    goto LABEL_15;
  }

  if (self->_invalidateCalled)
  {
    NSErrorF_safe(*MEMORY[0x277CCA590], 4294896148, "Activate after invalidate");
    goto LABEL_15;
  }

  if (self->_blePeerDevice)
  {
    self->_clientMode = 1;
    goto LABEL_8;
  }

  bleConnection = self->_bleConnection;
  if (bleConnection)
  {
    self->_clientMode = 0;
    objc_storeStrong(&self->_requestable, bleConnection);
    goto LABEL_8;
  }

  if (!self->_sendDataHandler)
  {
    NSErrorF_safe(*MEMORY[0x277CCA590], 4294960591, "No peer");
    v9 = LABEL_15:;
    v10 = v19[5];
    v19[5] = v9;

    goto LABEL_13;
  }

LABEL_8:
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[SKConnection _activateWithCompletion:]", 30, "Activate: %@", self, v11, v12, v13, v14, selfCopy);
  }

LABEL_12:
  self->_activateCalled = 1;
  [(SKConnection *)self _run];
  (*(v5 + 2))(v5, 0);
LABEL_13:
  v6[2](v6);

  _Block_object_dispose(&v18, 8);
}

uint64_t __40__SKConnection__activateWithCompletion___block_invoke(void *a1)
{
  result = *(*(a1[6] + 8) + 40);
  if (!result)
  {
    return result;
  }

  v3 = *(a1[4] + 144);
  if (*v3 <= 90)
  {
    if (*v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v3 = *(a1[4] + 144);
    }

    v4 = CUPrintNSError();
    LogPrintF(v3, "[SKConnection _activateWithCompletion:]_block_invoke", 90, "### Activate failed: %@", v4);
  }

LABEL_7:
  v5 = *(a1[5] + 16);

  return v5();
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__SKConnection_activateWithCompletion___block_invoke;
  v7[3] = &unk_279BB82D0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  uTF8String = [labelCopy UTF8String];

  LogCategoryReplaceF(&self->_ucat, "%s", uTF8String);
}

- (NSString)description
{
  v31 = 12;
  v3 = self->_label;
  v4 = v3;
  v5 = "-";
  v30 = 0;
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v5 = "";
    v6 = &stru_2877689A8;
  }

  CUAppendF(&v30, &v31, "SKCnx%s%@", v5, v6);
  v7 = v30;
  v29 = v7;
  if (self->_clientMode)
  {
    v8 = "client";
  }

  else
  {
    v8 = "server";
  }

  CUAppendF(&v29, &v31, "mode %s", v8);
  v9 = v29;

  v28 = v9;
  if (self->_conditionalPersistent)
  {
    v10 = "conditional";
  }

  else if (self->_persistentPairing)
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  CUAppendF(&v28, &v31, "persistent %s", v10);
  v11 = v28;

  v27 = v11;
  if (self->_reversePairing)
  {
    v12 = "yes";
  }

  else
  {
    v12 = "no";
  }

  CUAppendF(&v27, &v31, "reverse %s", v12);
  v13 = v27;

  v26 = v13;
  CUAppendF(&v26, &v31, "XID 0x%X", self->_xidLast);
  v14 = v26;

  bleConnection = self->_bleConnection;
  if (bleConnection)
  {
    v25 = v14;
    v16 = &v25;
    CUAppendF(&v25, &v31, "BLECnx %@", bleConnection);
  }

  else
  {
    blePeerDevice = self->_blePeerDevice;
    if (blePeerDevice)
    {
      v24 = v14;
      v16 = &v24;
      CUAppendF(&v24, &v31, "BLEPeer %@", blePeerDevice);
    }

    else
    {
      if (!self->_sendDataHandler)
      {
        goto LABEL_22;
      }

      v23 = v14;
      v16 = &v23;
      CUAppendF(&v23, &v31, "External I/O", v22);
    }
  }

  v18 = *v16;

  v14 = v18;
LABEL_22:
  if (v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = &stru_2877689A8;
  }

  v20 = v19;

  return v20;
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove();
    self->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = SKConnection;
  [(SKConnection *)&v4 dealloc];
}

- (SKConnection)init
{
  v8.receiver = self;
  v8.super_class = SKConnection;
  v2 = [(SKConnection *)&v8 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sendArray = v3->_sendArray;
    v3->_sendArray = v4;

    v3->_ucat = &gLogCategory_SKConnection;
    RandomBytes();
    v6 = v3;
  }

  return v3;
}

@end