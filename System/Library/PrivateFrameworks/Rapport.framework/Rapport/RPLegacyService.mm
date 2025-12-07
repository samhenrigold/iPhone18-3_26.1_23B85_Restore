@interface RPLegacyService
- (RPLegacyService)init;
- (id)description;
- (int)_bonjourUpdateService;
- (int)_bonjourUpdateTXT;
- (int)_tcpStart;
- (void)_activateWithCompletion:(id)completion;
- (void)_bonjourUpdateTXT;
- (void)_cleanup;
- (void)_invalidate;
- (void)_invalidated;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)registerRequestID:(id)d options:(id)options handler:(id)handler;
@end

@implementation RPLegacyService

- (RPLegacyService)init
{
  v5.receiver = self;
  v5.super_class = RPLegacyService;
  v2 = [(RPLegacyService *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    *&v3->_tcpSockV4 = -1;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    v3 = [RPLegacyDeviceDiscovery dealloc];
    [(RPLegacyService *)v3 _cleanup];
  }

  else
  {
    [(RPLegacyService *)self _cleanup];
    v5.receiver = self;
    v5.super_class = RPLegacyService;
    [(RPLegacyService *)&v5 dealloc];
  }
}

- (void)_cleanup
{
  [(NSMutableDictionary *)self->_requestMap removeAllObjects];
  requestMap = self->_requestMap;
  self->_requestMap = 0;

  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = 0;

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  sessionStartedHandler = self->_sessionStartedHandler;
  self->_sessionStartedHandler = 0;

  sessionEndedHandler = self->_sessionEndedHandler;
  self->_sessionEndedHandler = 0;

  showPINHandler = self->_showPINHandler;
  self->_showPINHandler = 0;

  hidePINHandler = self->_hidePINHandler;
  self->_hidePINHandler = 0;
}

- (id)description
{
  v4 = 0;
  NSAppendPrintF(&v4, "RPLegacyService %{ptr}", self);
  v2 = v4;

  return v2;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__RPLegacyService_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E7C92E20;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  v20 = completionCopy;
  if (gLogCategory_RPLegacySupport <= 30)
  {
    if (gLogCategory_RPLegacySupport != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
    {
      [(RPLegacyService *)completionCopy _activateWithCompletion:v5, v6];
    }
  }

  if (self->_invalidateCalled)
  {
    _bonjourUpdateService = 4294960572;
LABEL_15:
    if (gLogCategory_RPLegacySupport <= 60 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
    {
      [RPLegacyService _activateWithCompletion:_bonjourUpdateService];
    }

    goto LABEL_20;
  }

  if (self->_activateCalled)
  {
    _bonjourUpdateService = 4294960575;
    goto LABEL_15;
  }

  serviceType = self->_serviceType;
  if (!serviceType)
  {
    _bonjourUpdateService = 4294896129;
    goto LABEL_15;
  }

  self->_activateCalled = 1;
  if (*[(NSString *)serviceType UTF8String]== 95)
  {
    _tcpStart = [(RPLegacyService *)self _tcpStart];
    if (_tcpStart)
    {
      _bonjourUpdateService = _tcpStart;
    }

    else
    {
      _bonjourUpdateService = [(RPLegacyService *)self _bonjourUpdateService];
      if (!_bonjourUpdateService)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_15;
  }

  if (gLogCategory_RPLegacySupport <= 90)
  {
    if (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize())
    {
      [RPLegacyService _activateWithCompletion:];
    }

    _bonjourUpdateService = 4294960561;
    goto LABEL_15;
  }

  _bonjourUpdateService = 4294960561;
LABEL_20:
  errorHandler = self->_errorHandler;
  if (errorHandler)
  {
    v16 = RPErrorF(_bonjourUpdateService, "Activate failed", v6, v7, v8, v9, v10, v11, v19);
    errorHandler[2](errorHandler, v16);
  }

LABEL_22:
  v17 = v20;
  if (v20)
  {
    v18 = RPErrorF(_bonjourUpdateService, "Activate failed", v6, v7, v8, v9, v10, v11, v19);
    (*(v20 + 2))(v20, v18);

    v17 = v20;
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__RPLegacyService_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    if (gLogCategory_RPLegacySupport <= 30)
    {
      if (gLogCategory_RPLegacySupport != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        [(RPLegacyService *)v3 _invalidate];
      }
    }

    if (self->_bonjourAdvertiser)
    {
      BonjourAdvertiserStop();
    }

    tcpSockV4 = self->_tcpSockV4;
    if ((tcpSockV4 & 0x80000000) == 0)
    {
      if (close(tcpSockV4) && *__error())
      {
        __error();
      }

      self->_tcpSockV4 = -1;
    }

    tcpSockV6 = self->_tcpSockV6;
    if ((tcpSockV6 & 0x80000000) == 0)
    {
      if (close(tcpSockV6) && *__error())
      {
        __error();
      }

      self->_tcpSockV6 = -1;
    }

    [(RPLegacyService *)self _invalidated];
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_RPLegacySupport <= 60)
    {
      if (gLogCategory_RPLegacySupport != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        [(RPLegacyService *)v3 _invalidated];
      }
    }

    if (!self->_bonjourAdvertiser)
    {
      invalidationHandler = self->_invalidationHandler;
      if (invalidationHandler)
      {
        invalidationHandler[2]();
      }

      _cleanup = [(RPLegacyService *)self _cleanup];
      self->_invalidateDone = 1;
      if (gLogCategory_RPLegacySupport <= 30)
      {
        if (gLogCategory_RPLegacySupport != -1 || (_cleanup = _LogCategory_Initialize(), _cleanup))
        {
          [(RPLegacyService *)_cleanup _invalidated];
        }
      }
    }
  }
}

- (void)registerRequestID:(id)d options:(id)options handler:(id)handler
{
  dCopy = d;
  optionsCopy = options;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__RPLegacyService_registerRequestID_options_handler___block_invoke;
  v15[3] = &unk_1E7C935C8;
  v15[4] = self;
  v16 = dCopy;
  v17 = optionsCopy;
  v18 = handlerCopy;
  v12 = optionsCopy;
  v13 = handlerCopy;
  v14 = dCopy;
  dispatch_async(dispatchQueue, v15);
}

void __53__RPLegacyService_registerRequestID_options_handler___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 16))
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = v2;
  }

  v9[0] = @"handler";
  v5 = _Block_copy(*(a1 + 56));
  v6 = v5;
  v9[1] = @"options";
  v7 = *(a1 + 48);
  if (!v7)
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  v10[0] = v5;
  v10[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [*(*(a1 + 32) + 16) setObject:v8 forKeyedSubscript:*(a1 + 40)];
}

- (int)_bonjourUpdateService
{
  p_bonjourAdvertiser = &self->_bonjourAdvertiser;
  if (self->_bonjourAdvertiser)
  {
    if (gLogCategory_RPLegacySupport <= 30 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
    {
      [(RPLegacyService *)self _bonjourUpdateService];
    }

    _bonjourUpdateTXT = [(RPLegacyService *)self _bonjourUpdateTXT];
    if (!_bonjourUpdateTXT)
    {
      v5 = BonjourAdvertiserUpdate();
      goto LABEL_7;
    }
  }

  else
  {
    if (gLogCategory_RPLegacySupport <= 30)
    {
      if (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize())
      {
        [(RPLegacyService *)self _bonjourUpdateService];
      }

      if (*p_bonjourAdvertiser)
      {
        BonjourAdvertiserStop();
        CFRelease(*p_bonjourAdvertiser);
        *p_bonjourAdvertiser = 0;
      }
    }

    _bonjourUpdateTXT = BonjourAdvertiserCreate();
    if (!_bonjourUpdateTXT)
    {
      BonjourAdvertiserSetDispatchQueue();
      BonjourAdvertiserSetPort();
      [(NSString *)self->_serviceType UTF8String];
      BonjourAdvertiserSetServiceType();
      _bonjourUpdateTXT = [(RPLegacyService *)self _bonjourUpdateTXT];
      if (!_bonjourUpdateTXT)
      {
        v5 = BonjourAdvertiserStart();
LABEL_7:
        v6 = v5;
        if (!v5)
        {
          return v6;
        }

        goto LABEL_17;
      }
    }
  }

  v6 = _bonjourUpdateTXT;
LABEL_17:
  if (gLogCategory_RPLegacySupport <= 60 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
  {
    [(RPLegacyService *)v6 _bonjourUpdateService];
  }

  return v6;
}

- (int)_bonjourUpdateTXT
{
  v32 = *MEMORY[0x1E69E9840];
  txtRecord = 0uLL;
  TXTRecordCreate(&txtRecord, 0x100u, buffer);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = self->_txtDictionary;
  v4 = [(NSDictionary *)v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = v4;
  v6 = *v25;
  while (2)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v25 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v24 + 1) + 8 * i);
      v9 = [(NSDictionary *)self->_txtDictionary objectForKeyedSubscript:v8];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(RPLegacyService *)v8 _bonjourUpdateTXT];
        goto LABEL_34;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        uTF8String = [v9 UTF8String];
        v11 = strlen(uTF8String);
        if (v11 < 0x100)
        {
          v12 = v11;
          goto LABEL_12;
        }

        [(RPLegacyService *)v8 _bonjourUpdateTXT];
LABEL_34:
        v16 = value[0];
        v17 = &unk_1EB97A000;
LABEL_35:

        goto LABEL_38;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(RPLegacyService *)v9 _bonjourUpdateTXT];
        goto LABEL_34;
      }

      uTF8String = 0;
      v12 = 0;
LABEL_12:
      v13 = TXTRecordSetValue(&txtRecord, [v8 UTF8String], v12, uTF8String);
      if (v13)
      {
        v16 = v13;
        v17 = &unk_1EB97A000;
        if (gLogCategory_RPLegacySupport <= 90 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_RPLegacySupport, "[RPLegacyService _bonjourUpdateTXT]", 90, "### Bad TXT item '%@ = %@': %#m\n", v8, v9, v16);
        }

        goto LABEL_35;
      }
    }

    v5 = [(NSDictionary *)v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_15:

  if (!self->_deviceActionType)
  {
    goto LABEL_20;
  }

  v14 = SNPrintF(value, 256, "%u", self->_deviceActionType);
  if (v14 > 255)
  {
    v16 = 4294960553;
LABEL_19:
    v17 = &unk_1EB97A000;
    goto LABEL_38;
  }

  v15 = TXTRecordSetValue(&txtRecord, "rpFl", v14, value);
  if (v15)
  {
    v16 = v15;
    goto LABEL_19;
  }

LABEL_20:
  v17 = &unk_1EB97A000;
  if (!self->_needsSetup)
  {
    goto LABEL_24;
  }

  v18 = SNPrintF(value, 256, "0x%llX", 1);
  if (v18 > 255)
  {
    v16 = 4294960553;
    goto LABEL_38;
  }

  v19 = TXTRecordSetValue(&txtRecord, "rpDA", v18, value);
  if (v19)
  {
    v16 = v19;
    goto LABEL_38;
  }

LABEL_24:
  if (!self->_bonjourAdvertiser)
  {
    v16 = 4294960534;
    goto LABEL_38;
  }

  BytesPtr = TXTRecordGetBytesPtr(&txtRecord);
  Length = TXTRecordGetLength(&txtRecord);
  if (gLogCategory_RPLegacySupport <= 20 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_RPLegacySupport, "[RPLegacyService _bonjourUpdateTXT]", 20, "Bonjour update TXT %@: %#{txt}\n", self->_serviceType, BytesPtr, Length);
  }

  v16 = BonjourAdvertiserSetTXTRecord();
  if (v16)
  {
LABEL_38:
    v22 = v17[852];
    if (v22 <= 60 && (v22 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_RPLegacySupport, "[RPLegacyService _bonjourUpdateTXT]", 60, "### Bonjour update TXT %@ failed: %#m\n", self->_serviceType, v16);
    }
  }

  TXTRecordDeallocate(&txtRecord);
  return v16;
}

- (int)_tcpStart
{
  if (gLogCategory_RPLegacySupport <= 30 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
  {
    [(RPLegacyService *)self _tcpStart];
  }

  if ((self->_tcpSockV4 & 0x80000000) == 0 || (self->_tcpSockV6 & 0x80000000) == 0)
  {
    v3 = 4294960575;
    goto LABEL_7;
  }

  v3 = ServerSocketPairOpen();
  if (v3)
  {
LABEL_7:
    if (gLogCategory_RPLegacySupport <= 60 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_RPLegacySupport, "[RPLegacyService _tcpStart]", 60, "### TCP start service %@ failed: %#m\n", self->_serviceType, v3);
    }

    return v3;
  }

  if (gLogCategory_RPLegacySupport <= 30 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
  {
    [(RPLegacyService *)self _tcpStart];
  }

  LODWORD(v3) = 0;
  return v3;
}

- (void)_bonjourUpdateTXT
{
  if (gLogCategory_RPLegacySupport <= 90)
  {
    OUTLINED_FUNCTION_6();
    if (!v4 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_RPLegacySupport, "[RPLegacyService _bonjourUpdateTXT]", 90, "### Bad TXT key type '%@'\n", v2);
    }
  }

  *a2 = -6743;
}

@end