@interface RPLegacySession
- (RPLegacySession)init;
- (int)_runMobileDeviceStart;
- (int)_runPairVerify;
- (void)_activateWithCompletion:(id)completion;
- (void)_cleanup;
- (void)_invalidate;
- (void)_invalidated;
- (void)_pairSetupTryPIN:(id)n;
- (void)_pairSetupWithFlags:(unsigned int)flags completion:(id)completion;
- (void)_pairVerifyWithFlags:(unsigned int)flags completion:(id)completion;
- (void)_run;
- (void)_sendQueuedMessages;
- (void)_unpairWithCompletion:(id)completion;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)pairSetupTryPIN:(id)n;
- (void)pairSetupWithFlags:(unsigned int)flags completion:(id)completion;
- (void)pairVerifyWithFlags:(unsigned int)flags completion:(id)completion;
- (void)requestSystemInfoWithCompletion:(id)completion;
- (void)sendRequestID:(id)d options:(id)options request:(id)request responseHandler:(id)handler;
- (void)unpairWithCompletion:(id)completion;
@end

@implementation RPLegacySession

- (RPLegacySession)init
{
  v5.receiver = self;
  v5.super_class = RPLegacySession;
  v2 = [(RPLegacySession *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
  }

  return v3;
}

- (void)dealloc
{
  [(RPLegacySession *)self _cleanup];
  v3.receiver = self;
  v3.super_class = RPLegacySession;
  [(RPLegacySession *)&v3 dealloc];
}

- (void)_cleanup
{
  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = 0;

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  promptForPINHandler = self->_promptForPINHandler;
  self->_promptForPINHandler = 0;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__RPLegacySession_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E7C92E20;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  v25 = completionCopy;
  if (gLogCategory_RPLegacySupport <= 30)
  {
    if (gLogCategory_RPLegacySupport != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
    {
      [(RPLegacySession *)completionCopy _activateWithCompletion:v5, v6];
    }
  }

  if (self->_invalidateCalled)
  {
    v16 = "Activate after invalidate";
    v17 = 4294960572;
  }

  else if (self->_activateCalled)
  {
    v16 = "Duplicate activate";
    v17 = 4294960575;
  }

  else
  {
    serviceType = self->_serviceType;
    if (serviceType)
    {
      self->_activateCalled = 1;
      if ([(NSString *)serviceType isEqual:@"RPLegacyServiceTypeMobileDevice"])
      {
        mobileDevice = [(RPDevice *)self->_peerDevice mobileDevice];
        if (mobileDevice)
        {
          pairedPeer = mobileDevice;
        }

        else
        {
          pairedPeer = [(RPDevice *)self->_peerDevice pairedPeer];
          info = [pairedPeer info];
          v22 = [info objectForKeyedSubscript:@"udid"];

          if (!v22)
          {
            goto LABEL_11;
          }

          v23 = objc_alloc_init(MEMORY[0x1E69994C8]);
          [v23 setUdid:v22];
          [(RPDevice *)self->_peerDevice setMobileDevice:v23];

          if (!v23)
          {
            goto LABEL_12;
          }

          pairedPeer = v23;
        }

        self->_mdEnabled = 1;
LABEL_11:

LABEL_12:
        [(RPLegacySession *)self _run];
        v15 = 0;
LABEL_20:
        v18 = v25;
        goto LABEL_21;
      }

      v24 = self->_serviceType;
      v16 = "Unsupported service type '%@'";
      v17 = 4294960561;
    }

    else
    {
      v16 = "No service type";
      v17 = 4294896129;
    }
  }

  v15 = RPErrorF(v17, v16, v6, v7, v8, v9, v10, v11, v24);
  v18 = v25;
  if (v15)
  {
    if (gLogCategory_RPLegacySupport <= 60)
    {
      if (gLogCategory_RPLegacySupport != -1 || (v19 = _LogCategory_Initialize(), v18 = v25, v19))
      {
        [RPLegacySession _activateWithCompletion:v15];
        v18 = v25;
      }
    }

    errorHandler = self->_errorHandler;
    if (errorHandler)
    {
      errorHandler[2](errorHandler, v15);
      goto LABEL_20;
    }
  }

LABEL_21:
  if (v18)
  {
    v25[2](v25, v15);
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__RPLegacySession_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  self->_invalidateCalled = 1;
  [(CUMobileDeviceSession *)self->_mdSession invalidate];

  [(RPLegacySession *)self _invalidated];
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
        [(RPLegacySession *)v3 _invalidated];
      }
    }

    if (!self->_mdSession)
    {
      invalidationHandler = self->_invalidationHandler;
      if (invalidationHandler)
      {
        invalidationHandler[2]();
      }

      _cleanup = [(RPLegacySession *)self _cleanup];
      self->_invalidateDone = 1;
      if (gLogCategory_RPLegacySupport <= 30)
      {
        if (gLogCategory_RPLegacySupport != -1 || (_cleanup = _LogCategory_Initialize(), _cleanup))
        {
          [(RPLegacySession *)_cleanup _invalidated];
        }
      }
    }
  }
}

- (int)_runMobileDeviceStart
{
  selfCopy = self;
  mdState = self->_mdState;
  if (mdState != 4 && mdState != 2)
  {
    if (mdState)
    {
      if (gLogCategory_RPLegacySupport <= 30)
      {
        if (gLogCategory_RPLegacySupport == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_mdState;
          }

          mdState = selfCopy->_mdState;
        }

        LogPrintF(&gLogCategory_RPLegacySupport, "[RPLegacySession _runMobileDeviceStart]", 30, "MobileDeviceSession hasn't succeeded yet (%d)\n", mdState);
      }
    }

    else
    {
      if (gLogCategory_RPLegacySupport <= 30)
      {
        if (gLogCategory_RPLegacySupport != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(RPLegacySession *)self _runMobileDeviceStart];
        }
      }

      selfCopy->_mdState = 1;
      v6 = objc_alloc_init(MEMORY[0x1E69994D8]);
      mdSession = selfCopy->_mdSession;
      selfCopy->_mdSession = v6;

      [(CUMobileDeviceSession *)selfCopy->_mdSession setDispatchQueue:selfCopy->_dispatchQueue];
      mobileDevice = [(RPDevice *)selfCopy->_peerDevice mobileDevice];
      [(CUMobileDeviceSession *)selfCopy->_mdSession setPeerDevice:mobileDevice];

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __40__RPLegacySession__runMobileDeviceStart__block_invoke;
      v10[3] = &unk_1E7C92CE8;
      v10[4] = selfCopy;
      [(CUMobileDeviceSession *)selfCopy->_mdSession setInvalidationHandler:v10];
      [(CUMobileDeviceSession *)selfCopy->_mdSession setPromptForPINHandler:selfCopy->_promptForPINHandler];
      [(CUMobileDeviceSession *)selfCopy->_mdSession activate];
      selfCopy->_mdState = 4;
    }
  }

  return selfCopy->_mdState;
}

_BYTE *__40__RPLegacySession__runMobileDeviceStart__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  result = *(a1 + 32);
  if (result[9] == 1)
  {

    return [result _invalidated];
  }

  return result;
}

- (int)_runPairVerify
{
  selfCopy = self;
  pairVerifyState = self->_pairVerifyState;
  if (pairVerifyState != 4 && pairVerifyState != 2)
  {
    if (pairVerifyState)
    {
      if (gLogCategory_RPLegacySupport <= 30)
      {
        if (gLogCategory_RPLegacySupport == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_pairVerifyState;
          }

          pairVerifyState = selfCopy->_pairVerifyState;
        }

        LogPrintF(&gLogCategory_RPLegacySupport, "[RPLegacySession _runPairVerify]", 30, "PairVerify hasn't succeeded yet (%d)\n", pairVerifyState);
      }
    }

    else
    {
      if (gLogCategory_RPLegacySupport <= 30)
      {
        if (gLogCategory_RPLegacySupport != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(RPLegacySession *)self _runPairVerify];
        }
      }

      selfCopy->_pairVerifyState = 1;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __33__RPLegacySession__runPairVerify__block_invoke;
      v7[3] = &unk_1E7C92D58;
      v7[4] = selfCopy;
      [(RPLegacySession *)selfCopy pairVerifyWithFlags:8 completion:v7];
    }
  }

  return selfCopy->_pairVerifyState;
}

void __33__RPLegacySession__runPairVerify__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (!v3)
  {
    if (gLogCategory_RPLegacySupport <= 30)
    {
      if (gLogCategory_RPLegacySupport != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        __33__RPLegacySession__runPairVerify__block_invoke_cold_2(v3, v4, v5);
      }
    }

    *(*(a1 + 32) + 28) = 4;
    [*(a1 + 32) _run];
    goto LABEL_11;
  }

  v6 = v3;
  if (gLogCategory_RPLegacySupport <= 30)
  {
    if (gLogCategory_RPLegacySupport != -1 || (v7 = _LogCategory_Initialize(), v6 = v9, v7))
    {
      __33__RPLegacySession__runPairVerify__block_invoke_cold_1(v6);
      v6 = v9;
    }
  }

  *(*(a1 + 32) + 28) = 3;
  v8 = *(*(a1 + 32) + 88);
  if (v8)
  {
    (*(v8 + 16))(v8, v9);
LABEL_11:
    v6 = v9;
  }
}

- (void)pairSetupWithFlags:(unsigned int)flags completion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__RPLegacySession_pairSetupWithFlags_completion___block_invoke;
  block[3] = &unk_1E7C92EC0;
  flagsCopy = flags;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_pairSetupWithFlags:(unsigned int)flags completion:(id)completion
{
  v4 = *&flags;
  completionCopy = completion;
  v13 = completionCopy;
  if (!self->_mdEnabled)
  {
    v15 = "PairSetup unsupported service";
    v16 = 4294960561;
LABEL_6:
    v17 = RPErrorF(v16, v15, v7, v8, v9, v10, v11, v12, v18[0]);
    (v13)[2](v13, v17);

    goto LABEL_7;
  }

  mdSession = self->_mdSession;
  if (!mdSession)
  {
    v15 = "No MobileDevice session";
    v16 = 4294960551;
    goto LABEL_6;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __50__RPLegacySession__pairSetupWithFlags_completion___block_invoke;
  v18[3] = &unk_1E7C93470;
  v18[4] = self;
  v19 = completionCopy;
  [(CUMobileDeviceSession *)mdSession pairSetupWithFlags:v4 completion:v18];

LABEL_7:
}

uint64_t __50__RPLegacySession__pairSetupWithFlags_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    *(*(a1 + 32) + 32) = 1;
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)pairSetupTryPIN:(id)n
{
  nCopy = n;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__RPLegacySession_pairSetupTryPIN___block_invoke;
  v7[3] = &unk_1E7C92D80;
  v7[4] = self;
  v8 = nCopy;
  v6 = nCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_pairSetupTryPIN:(id)n
{
  if (self->_mdEnabled)
  {
    [(CUMobileDeviceSession *)self->_mdSession pairSetupTryPIN:n];
  }
}

- (void)pairVerifyWithFlags:(unsigned int)flags completion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__RPLegacySession_pairVerifyWithFlags_completion___block_invoke;
  block[3] = &unk_1E7C92EC0;
  flagsCopy = flags;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_pairVerifyWithFlags:(unsigned int)flags completion:(id)completion
{
  v4 = *&flags;
  completionCopy = completion;
  v13 = completionCopy;
  if (!self->_mdEnabled)
  {
    v15 = "PairVerify unsupported service";
    v16 = 4294960561;
LABEL_6:
    v17 = RPErrorF(v16, v15, v7, v8, v9, v10, v11, v12, v18[0]);
    (v13)[2](v13, v17);

    goto LABEL_7;
  }

  mdSession = self->_mdSession;
  if (!mdSession)
  {
    v15 = "No MobileDevice session";
    v16 = 4294960551;
    goto LABEL_6;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __51__RPLegacySession__pairVerifyWithFlags_completion___block_invoke;
  v18[3] = &unk_1E7C93470;
  v18[4] = self;
  v19 = completionCopy;
  [(CUMobileDeviceSession *)mdSession pairVerifyWithFlags:v4 completion:v18];

LABEL_7:
}

uint64_t __51__RPLegacySession__pairVerifyWithFlags_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    *(*(a1 + 32) + 32) = 1;
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)unpairWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__RPLegacySession_unpairWithCompletion___block_invoke;
  v7[3] = &unk_1E7C92E20;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_unpairWithCompletion:(id)completion
{
  completionCopy = completion;
  v11 = completionCopy;
  if (!self->_mdEnabled)
  {
    v13 = "Unpair unsupported service";
    v14 = 4294960561;
LABEL_6:
    v15 = RPErrorF(v14, v13, v5, v6, v7, v8, v9, v10, v16);
    (v11)[2](v11, v15);

    goto LABEL_7;
  }

  mdSession = self->_mdSession;
  if (!mdSession)
  {
    v13 = "No MobileDevice session";
    v14 = 4294960551;
    goto LABEL_6;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __41__RPLegacySession__unpairWithCompletion___block_invoke;
  v17[3] = &unk_1E7C92DA8;
  v18 = completionCopy;
  [(CUMobileDeviceSession *)mdSession unpairWithCompletion:v17];

LABEL_7:
}

- (void)sendRequestID:(id)d options:(id)options request:(id)request responseHandler:(id)handler
{
  dCopy = d;
  optionsCopy = options;
  requestCopy = request;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__RPLegacySession_sendRequestID_options_request_responseHandler___block_invoke;
  block[3] = &unk_1E7C94AA8;
  v20 = requestCopy;
  v21 = optionsCopy;
  selfCopy = self;
  v24 = handlerCopy;
  v22 = dCopy;
  v15 = handlerCopy;
  v16 = dCopy;
  v17 = optionsCopy;
  v18 = requestCopy;
  dispatch_async(dispatchQueue, block);
}

void __65__RPLegacySession_sendRequestID_options_request_responseHandler___block_invoke(uint64_t a1)
{
  v6 = objc_alloc_init(RPLegacySessionMessage);
  [(RPLegacySessionMessage *)v6 setMessage:*(a1 + 32)];
  [(RPLegacySessionMessage *)v6 setOptions:*(a1 + 40)];
  [(RPLegacySessionMessage *)v6 setRequestID:*(a1 + 48)];
  [(RPLegacySessionMessage *)v6 setResponseHandler:*(a1 + 64)];
  v2 = *(*(a1 + 56) + 16);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = *(a1 + 56);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(*(a1 + 56) + 16);
  }

  [v2 addObject:v6];
  [*(a1 + 56) _sendQueuedMessages];
}

- (void)_sendQueuedMessages
{
  if (self->_messagingReady)
  {
    firstObject = [(NSMutableArray *)self->_messageSendQueue firstObject];
    if (firstObject)
    {
      firstObject2 = firstObject;
      do
      {
        [(NSMutableArray *)self->_messageSendQueue removeObjectAtIndex:0];
        [(RPLegacySession *)self _sendMessage:firstObject2];

        firstObject2 = [(NSMutableArray *)self->_messageSendQueue firstObject];
      }

      while (firstObject2);
    }
  }
}

- (void)requestSystemInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__RPLegacySession_requestSystemInfoWithCompletion___block_invoke;
  v6[3] = &unk_1E7C93780;
  v7 = completionCopy;
  v5 = completionCopy;
  [(RPLegacySession *)self sendRequestID:@"_systemInfo" options:&unk_1F2EEC9B8 request:MEMORY[0x1E695E0F8] responseHandler:v6];
}

- (void)_run
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    if (!self->_mdEnabled || ((v3 = [(RPLegacySession *)self _runMobileDeviceStart], v3 != 4) ? (v4 = v3 == 2) : (v4 = 1), v4))
    {
      if ((self->_securityFlags & 2) != 0 || ((v5 = [(RPLegacySession *)self _runPairVerify], v5 != 4) ? (v6 = v5 == 2) : (v6 = 1), v6))
      {
        if (gLogCategory_RPLegacySupport <= 30 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_RPLegacySupport, "[RPLegacySession _run]", 30, "Session ready\n");
        }

        self->_messagingReady = 1;

        [(RPLegacySession *)self _sendQueuedMessages];
      }
    }
  }
}

@end