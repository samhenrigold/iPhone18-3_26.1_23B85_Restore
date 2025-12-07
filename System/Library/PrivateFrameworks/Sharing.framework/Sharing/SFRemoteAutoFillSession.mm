@interface SFRemoteAutoFillSession
- (SFRemoteAutoFillSession)init;
- (int)_runContextRequest;
- (int)_runPair;
- (int)_runPairContacts;
- (int)_runPairHomeKit;
- (int)_runPairPIN;
- (int)_runPairVerify;
- (int)_runPairVisual;
- (int)_runPasswordPicker;
- (int)_runSendCredentials;
- (int)_runSessionStart;
- (void)_cleanup;
- (void)_completedWithError:(id)error;
- (void)_handleContextRequestResponse:(id)response error:(id)error;
- (void)_handlePasswordPickerResponse:(id)response password:(id)password error:(id)error;
- (void)_handleSendCredentialsResponse:(id)response error:(id)error;
- (void)_receivedObject:(id)object flags:(unsigned int)flags;
- (void)_run;
- (void)_runContextRequest;
- (void)_runSendCredentials;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)tryPIN:(id)n;
@end

@implementation SFRemoteAutoFillSession

- (SFRemoteAutoFillSession)init
{
  v6.receiver = self;
  v6.super_class = SFRemoteAutoFillSession;
  v2 = [(SFRemoteAutoFillSession *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    [SFRemoteAutoFillService dealloc];
    [(SFRemoteAutoFillSession *)v3 activate];
  }

  else
  {
    [(SFRemoteAutoFillSession *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SFRemoteAutoFillSession;
    [(SFRemoteAutoFillSession *)&v5 dealloc];
  }
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SFRemoteAutoFillSession_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__35__SFRemoteAutoFillSession_activate__block_invoke(uint64_t a1)
{
  result = CFPrefs_GetInt64();
  if (result)
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      __35__SFRemoteAutoFillSession_activate__block_invoke_cold_2();
    }

    *(*(a1 + 32) + 8) = 1;
    return [*(a1 + 32) _run];
  }

  else if (gLogCategory_SFRemoteAutoFillSession <= 50)
  {
    if (gLogCategory_SFRemoteAutoFillSession != -1)
    {
      return __35__SFRemoteAutoFillSession_activate__block_invoke_cold_1();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __35__SFRemoteAutoFillSession_activate__block_invoke_cold_1();
    }
  }

  return result;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SFRemoteAutoFillSession_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __37__SFRemoteAutoFillSession_invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if ((*(*(a1 + 32) + 72) & 1) == 0 && gLogCategory_SFRemoteAutoFillSession <= 30)
  {
    if (gLogCategory_SFRemoteAutoFillSession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __37__SFRemoteAutoFillSession_invalidate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 72) = 1;
  [*(*(v3 + 32) + 144) invalidate];
  v4 = *(v3 + 32);
  v5 = *(v4 + 144);
  *(v4 + 144) = 0;

  v6 = *(v3 + 32);

  return [v6 _cleanup];
}

- (void)_cleanup
{
  contextBundleID = self->_contextBundleID;
  self->_contextBundleID = 0;

  contextURL = self->_contextURL;
  self->_contextURL = 0;

  pairingFinishedHandler = self->_pairingFinishedHandler;
  self->_pairingFinishedHandler = 0;

  self->_pairingFinishedNotified = 0;
  *&self->_pairSubstate.homeKit = 0;
  *&self->_pairSubstate.pairVerify = 0;
  *&self->_pairState = 0;
  self->_passwordPickerState = 0;
  pickedPassword = self->_pickedPassword;
  self->_pickedPassword = 0;

  pickedUsername = self->_pickedUsername;
  self->_pickedUsername = 0;

  promptForPickerHandler = self->_promptForPickerHandler;
  self->_promptForPickerHandler = 0;

  promptForPINHandler = self->_promptForPINHandler;
  self->_promptForPINHandler = 0;

  self->_sendCredentialsState = 0;
  self->_sessionState = 0;
}

- (void)tryPIN:(id)n
{
  nCopy = n;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__SFRemoteAutoFillSession_tryPIN___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = nCopy;
  v6 = nCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __34__SFRemoteAutoFillSession_tryPIN___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (!*(*(a1 + 32) + 144) && gLogCategory_SFRemoteAutoFillSession <= 60)
  {
    if (gLogCategory_SFRemoteAutoFillSession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __34__SFRemoteAutoFillSession_tryPIN___block_invoke_cold_1(a1, a2, a3);
    }
  }

  v4 = *(v3 + 40);
  v5 = *(*(v3 + 32) + 144);

  return [v5 pairSetupTryPIN:v4];
}

- (void)_completedWithError:(id)error
{
  v16[5] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (errorCopy)
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 60 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSession _completedWithError:errorCopy];
    }
  }

  else if (gLogCategory_SFRemoteAutoFillSession <= 30)
  {
    if (gLogCategory_SFRemoteAutoFillSession != -1 || (v5 = _LogCategory_Initialize(), v5))
    {
      [(SFRemoteAutoFillSession *)v5 _completedWithError:v6, v7];
    }
  }

  completedHandler = self->_completedHandler;
  if (completedHandler)
  {
    completedHandler[2](completedHandler, errorCopy);
  }

  v15[0] = @"contextRequestState";
  v9 = [MEMORY[0x1E696AD98] numberWithInt:self->_contextRequestState];
  v16[0] = v9;
  v15[1] = @"pairingState";
  v10 = [MEMORY[0x1E696AD98] numberWithInt:self->_pairState];
  v16[1] = v10;
  v15[2] = @"passwordPickerState";
  v11 = [MEMORY[0x1E696AD98] numberWithInt:self->_passwordPickerState];
  v16[2] = v11;
  v15[3] = @"sendCredentialState";
  v12 = [MEMORY[0x1E696AD98] numberWithInt:self->_sendCredentialsState];
  v16[3] = v12;
  v15[4] = @"sessionState";
  v13 = [MEMORY[0x1E696AD98] numberWithInt:self->_sessionState];
  v16[4] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:5];
  SFMetricsLog(@"com.apple.sharing.AutoFillSession", v14);
}

- (int)_runSessionStart
{
  selfCopy = self;
  sessionState = self->_sessionState;
  if (sessionState)
  {
    if (sessionState != 4 && gLogCategory_SFRemoteAutoFillSession <= 30)
    {
      if (gLogCategory_SFRemoteAutoFillSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return selfCopy->_sessionState;
        }

        sessionState = selfCopy->_sessionState;
      }

      if (sessionState >= 8)
      {
        if (sessionState <= 9)
        {
          v10 = "?";
        }

        else
        {
          v10 = "User";
        }
      }

      else
      {
        v10 = off_1E7890358[sessionState];
      }

      LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _runSessionStart]", 30, "SFSession hasn't succeeded yet (%s)\n", v10);
    }
  }

  else
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30)
    {
      if (gLogCategory_SFRemoteAutoFillSession != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(SFRemoteAutoFillSession *)self _runSessionStart];
      }
    }

    selfCopy->_sessionState = 1;
    [(SFSession *)selfCopy->_session invalidate];
    v5 = objc_alloc_init(SFSession);
    session = selfCopy->_session;
    selfCopy->_session = v5;

    [(SFSession *)selfCopy->_session setDispatchQueue:selfCopy->_dispatchQueue];
    [(SFSession *)selfCopy->_session setPeerDevice:selfCopy->_peerDevice];
    [(SFSession *)selfCopy->_session setServiceIdentifier:@"com.apple.sharing.RemoteAutoFill"];
    contactIdentifier = [(SFDevice *)selfCopy->_peerDevice contactIdentifier];
    [(SFSession *)selfCopy->_session setPeerContactIdentifier:contactIdentifier];

    [(SFSession *)selfCopy->_session setSessionFlags:12];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __43__SFRemoteAutoFillSession__runSessionStart__block_invoke;
    v15[3] = &unk_1E788B238;
    v15[4] = selfCopy;
    [(SFSession *)selfCopy->_session setErrorHandler:v15];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __43__SFRemoteAutoFillSession__runSessionStart__block_invoke_2;
    v14[3] = &unk_1E788B198;
    v14[4] = selfCopy;
    [(SFSession *)selfCopy->_session setInterruptionHandler:v14];
    [(SFSession *)selfCopy->_session setInvalidationHandler:&__block_literal_global_63];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __43__SFRemoteAutoFillSession__runSessionStart__block_invoke_4;
    v13[3] = &unk_1E788CFD0;
    v13[4] = selfCopy;
    [(SFSession *)selfCopy->_session setPromptForPINHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __43__SFRemoteAutoFillSession__runSessionStart__block_invoke_5;
    v12[3] = &unk_1E788CFF8;
    v12[4] = selfCopy;
    [(SFSession *)selfCopy->_session setReceivedObjectHandler:v12];
    v8 = selfCopy->_session;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __43__SFRemoteAutoFillSession__runSessionStart__block_invoke_6;
    v11[3] = &unk_1E788B238;
    v11[4] = selfCopy;
    [(SFSession *)v8 activateWithCompletion:v11];
  }

  return selfCopy->_sessionState;
}

void __43__SFRemoteAutoFillSession__runSessionStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (gLogCategory_SFRemoteAutoFillSession <= 90)
  {
    if (gLogCategory_SFRemoteAutoFillSession != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __43__SFRemoteAutoFillSession__runSessionStart__block_invoke_cold_1(v3);
      v3 = v5;
    }
  }

  [*(a1 + 32) _completedWithError:v3];
}

void __43__SFRemoteAutoFillSession__runSessionStart__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFRemoteAutoFillSession <= 60)
  {
    if (gLogCategory_SFRemoteAutoFillSession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __43__SFRemoteAutoFillSession__runSessionStart__block_invoke_2_cold_1(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);
  v5 = NSErrorWithOSStatusF(4294960534, "SFSession Interrupted");
  [v4 _completedWithError:v5];
}

uint64_t __43__SFRemoteAutoFillSession__runSessionStart__block_invoke_3(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_SFRemoteAutoFillSession <= 30)
  {
    if (gLogCategory_SFRemoteAutoFillSession != -1)
    {
      return __43__SFRemoteAutoFillSession__runSessionStart__block_invoke_3_cold_1(result, a2, a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __43__SFRemoteAutoFillSession__runSessionStart__block_invoke_3_cold_1(result, a2, a3);
    }
  }

  return result;
}

uint64_t __43__SFRemoteAutoFillSession__runSessionStart__block_invoke_4(uint64_t a1, int a2, int a3)
{
  if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _runSessionStart]_block_invoke_4", 30, "Prompt for PIN, flags 0x%X, %d throttle seconds\n", a2, a3);
  }

  result = *(*(a1 + 32) + 192);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void __43__SFRemoteAutoFillSession__runSessionStart__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    v6 = v3;
    if (gLogCategory_SFRemoteAutoFillSession <= 90)
    {
      if (gLogCategory_SFRemoteAutoFillSession != -1 || (v7 = _LogCategory_Initialize(), v6 = v8, v7))
      {
        __43__SFRemoteAutoFillSession__runSessionStart__block_invoke_6_cold_1(v6);
        v6 = v8;
      }
    }

    [*(a1 + 32) _completedWithError:v6];
  }

  else
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30)
    {
      if (gLogCategory_SFRemoteAutoFillSession != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        __43__SFRemoteAutoFillSession__runSessionStart__block_invoke_6_cold_2(v3, v4, v5);
      }
    }

    *(*(a1 + 32) + 152) = 4;
    [*(a1 + 32) _run];
  }
}

- (int)_runPairContacts
{
  v15 = 0;
  v3 = CFPrefs_GetInt64() != 0;
  if (self->_prefPairContactsDisabled == v3)
  {
    result = self->_pairSubstate.contacts;
    if (!result)
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x3032000000;
      v12 = __Block_byref_object_copy__16;
      v13 = __Block_byref_object_dispose__16;
      v14 = 0;
      if (gLogCategory_SFRemoteAutoFillSession <= 50 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _runPairContacts]", 50, "Pair (contacts) start\n");
      }

      date = [MEMORY[0x1E695DF00] date];
      v6 = v10[5];
      v10[5] = date;

      self->_pairSubstate.contacts = 1;
      session = self->_session;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __43__SFRemoteAutoFillSession__runPairContacts__block_invoke;
      v8[3] = &unk_1E788D020;
      v8[4] = self;
      v8[5] = &v9;
      [(SFSession *)session pairVerifyWithFlags:4096 completion:v8];
      _Block_object_dispose(&v9, 8);

      return self->_pairSubstate.contacts;
    }
  }

  else
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSession _runPairContacts];
    }

    self->_prefPairContactsDisabled = v3;
    result = 2;
    self->_pairSubstate.contacts = 2;
  }

  return result;
}

void __43__SFRemoteAutoFillSession__runPairContacts__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (gLogCategory_SFRemoteAutoFillSession <= 50)
  {
    if (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize())
    {
      __43__SFRemoteAutoFillSession__runPairContacts__block_invoke_cold_1();
    }

    if (gLogCategory_SFRemoteAutoFillSession <= 50 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      __43__SFRemoteAutoFillSession__runPairContacts__block_invoke_cold_2();
    }
  }

  v5 = v7;
  if (v7)
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 50 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      __43__SFRemoteAutoFillSession__runPairContacts__block_invoke_cold_3(v7);
    }

    v6 = 3;
  }

  else
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30)
    {
      if (gLogCategory_SFRemoteAutoFillSession != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        __43__SFRemoteAutoFillSession__runPairContacts__block_invoke_cold_4(v5, v3, v4);
      }
    }

    v6 = 4;
  }

  *(*(a1 + 32) + 92) = v6;
  [*(a1 + 32) _run];
}

- (int)_runPairHomeKit
{
  v14 = 0;
  if (self->_prefPairHomeKitDisabled == (CFPrefs_GetInt64() != 0))
  {
    result = self->_pairSubstate.homeKit;
    if (!result)
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x3032000000;
      v11 = __Block_byref_object_copy__16;
      v12 = __Block_byref_object_dispose__16;
      v13 = 0;
      if (gLogCategory_SFRemoteAutoFillSession <= 50 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _runPairHomeKit]", 50, "Pair (HomeKit) start\n");
      }

      date = [MEMORY[0x1E695DF00] date];
      v5 = v9[5];
      v9[5] = date;

      self->_pairSubstate.homeKit = 1;
      session = self->_session;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __42__SFRemoteAutoFillSession__runPairHomeKit__block_invoke;
      v7[3] = &unk_1E788D020;
      v7[4] = self;
      v7[5] = &v8;
      [(SFSession *)session pairVerifyWithFlags:0x400000 completion:v7];
      _Block_object_dispose(&v8, 8);

      return self->_pairSubstate.homeKit;
    }
  }

  else
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSession _runPairHomeKit];
    }

    self->_prefPairHomeKitDisabled = 1;
    result = 2;
    self->_pairSubstate.homeKit = 2;
  }

  return result;
}

void __42__SFRemoteAutoFillSession__runPairHomeKit__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (gLogCategory_SFRemoteAutoFillSession <= 50)
  {
    if (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize())
    {
      __42__SFRemoteAutoFillSession__runPairHomeKit__block_invoke_cold_1();
    }

    if (gLogCategory_SFRemoteAutoFillSession <= 50 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      __42__SFRemoteAutoFillSession__runPairHomeKit__block_invoke_cold_2();
    }
  }

  v5 = v7;
  if (v7)
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 50 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      __42__SFRemoteAutoFillSession__runPairHomeKit__block_invoke_cold_3(v7);
    }

    v6 = 3;
  }

  else
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30)
    {
      if (gLogCategory_SFRemoteAutoFillSession != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        __42__SFRemoteAutoFillSession__runPairHomeKit__block_invoke_cold_4(v5, v3, v4);
      }
    }

    v6 = 4;
  }

  *(*(a1 + 32) + 96) = v6;
  [*(a1 + 32) _run];
}

- (int)_runPairVerify
{
  v14 = 0;
  if (self->_prefPairVerifyDisabled == (CFPrefs_GetInt64() != 0))
  {
    result = self->_pairSubstate.pairVerify;
    if (!result)
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x3032000000;
      v11 = __Block_byref_object_copy__16;
      v12 = __Block_byref_object_dispose__16;
      v13 = 0;
      if (gLogCategory_SFRemoteAutoFillSession <= 50 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _runPairVerify]", 50, "Pair (verify) start\n");
      }

      date = [MEMORY[0x1E695DF00] date];
      v5 = v9[5];
      v9[5] = date;

      self->_pairSubstate.pairVerify = 1;
      session = self->_session;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __41__SFRemoteAutoFillSession__runPairVerify__block_invoke;
      v7[3] = &unk_1E788D020;
      v7[4] = self;
      v7[5] = &v8;
      [(SFSession *)session pairVerifyWithFlags:0 completion:v7];
      _Block_object_dispose(&v8, 8);

      return self->_pairSubstate.pairVerify;
    }
  }

  else
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSession _runPairVerify];
    }

    self->_prefPairVerifyDisabled = 1;
    result = 2;
    self->_pairSubstate.pairVerify = 2;
  }

  return result;
}

void __41__SFRemoteAutoFillSession__runPairVerify__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (gLogCategory_SFRemoteAutoFillSession <= 50)
  {
    if (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize())
    {
      __41__SFRemoteAutoFillSession__runPairVerify__block_invoke_cold_1();
    }

    if (gLogCategory_SFRemoteAutoFillSession <= 50 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      __41__SFRemoteAutoFillSession__runPairVerify__block_invoke_cold_2();
    }
  }

  v5 = v7;
  if (v7)
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 50 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      __41__SFRemoteAutoFillSession__runPairVerify__block_invoke_cold_3(v7);
    }

    v6 = 3;
  }

  else
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30)
    {
      if (gLogCategory_SFRemoteAutoFillSession != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        __41__SFRemoteAutoFillSession__runPairVerify__block_invoke_cold_4(v5, v3, v4);
      }
    }

    v6 = 4;
  }

  *(*(a1 + 32) + 104) = v6;
  [*(a1 + 32) _run];
}

- (int)_runPairPIN
{
  result = self->_pairSubstate.pin;
  if (!result)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__16;
    v12 = __Block_byref_object_dispose__16;
    v13 = 0;
    if (gLogCategory_SFRemoteAutoFillSession <= 50 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _runPairPIN]", 50, "Pair (PIN) start\n");
    }

    date = [MEMORY[0x1E695DF00] date];
    v5 = v9[5];
    v9[5] = date;

    self->_pairSubstate.pin = 1;
    session = self->_session;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __38__SFRemoteAutoFillSession__runPairPIN__block_invoke;
    v7[3] = &unk_1E788D020;
    v7[4] = self;
    v7[5] = &v8;
    [(SFSession *)session pairSetupWithFlags:16 completion:v7];
    _Block_object_dispose(&v8, 8);

    return self->_pairSubstate.pin;
  }

  return result;
}

void __38__SFRemoteAutoFillSession__runPairPIN__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (gLogCategory_SFRemoteAutoFillSession <= 50)
  {
    if (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize())
    {
      __38__SFRemoteAutoFillSession__runPairPIN__block_invoke_cold_1();
    }

    if (gLogCategory_SFRemoteAutoFillSession <= 50 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      __38__SFRemoteAutoFillSession__runPairPIN__block_invoke_cold_2();
    }
  }

  v5 = v7;
  if (v7)
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 50 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      __38__SFRemoteAutoFillSession__runPairPIN__block_invoke_cold_3(v7);
    }

    v6 = 3;
  }

  else
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30)
    {
      if (gLogCategory_SFRemoteAutoFillSession != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        __38__SFRemoteAutoFillSession__runPairPIN__block_invoke_cold_4(v5, v3, v4);
      }
    }

    v6 = 4;
  }

  *(*(a1 + 32) + 108) = v6;
  [*(a1 + 32) _run];
}

- (int)_runPairVisual
{
  v14 = 0;
  if (self->_prefPairVisualDisabled == (CFPrefs_GetInt64() != 0))
  {
    result = self->_pairSubstate.visual;
    if (!result)
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x3032000000;
      v11 = __Block_byref_object_copy__16;
      v12 = __Block_byref_object_dispose__16;
      v13 = 0;
      if (gLogCategory_SFRemoteAutoFillSession <= 50 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _runPairVisual]", 50, "Pair (visual) start\n");
      }

      date = [MEMORY[0x1E695DF00] date];
      v5 = v9[5];
      v9[5] = date;

      self->_pairSubstate.visual = 1;
      session = self->_session;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __41__SFRemoteAutoFillSession__runPairVisual__block_invoke;
      v7[3] = &unk_1E788D020;
      v7[4] = self;
      v7[5] = &v8;
      [(SFSession *)session pairSetupWithFlags:272 completion:v7];
      _Block_object_dispose(&v8, 8);

      return self->_pairSubstate.visual;
    }
  }

  else
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSession _runPairVisual];
    }

    self->_prefPairVisualDisabled = 1;
    result = 2;
    self->_pairSubstate.visual = 2;
  }

  return result;
}

void __41__SFRemoteAutoFillSession__runPairVisual__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (gLogCategory_SFRemoteAutoFillSession <= 50)
  {
    if (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize())
    {
      __41__SFRemoteAutoFillSession__runPairVisual__block_invoke_cold_1();
    }

    if (gLogCategory_SFRemoteAutoFillSession <= 50 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      __41__SFRemoteAutoFillSession__runPairVisual__block_invoke_cold_2();
    }
  }

  v5 = v7;
  if (v7)
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 60 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      __41__SFRemoteAutoFillSession__runPairVisual__block_invoke_cold_3(v7);
    }

    v6 = 3;
  }

  else
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30)
    {
      if (gLogCategory_SFRemoteAutoFillSession != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        __41__SFRemoteAutoFillSession__runPairVisual__block_invoke_cold_4(v5, v3, v4);
      }
    }

    v6 = 4;
  }

  *(*(a1 + 32) + 100) = v6;
  [*(a1 + 32) _run];
}

- (int)_runContextRequest
{
  contextRequestState = self->_contextRequestState;
  if (contextRequestState)
  {
    if (contextRequestState != 4 && gLogCategory_SFRemoteAutoFillSession <= 30)
    {
      if (gLogCategory_SFRemoteAutoFillSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return self->_contextRequestState;
        }

        contextRequestState = self->_contextRequestState;
      }

      if (contextRequestState >= 8)
      {
        if (contextRequestState <= 9)
        {
          v7 = "?";
        }

        else
        {
          v7 = "User";
        }
      }

      else
      {
        v7 = off_1E7890358[contextRequestState];
      }

      LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _runContextRequest]", 30, "ContextRequest hasn't succeeded yet (%s)\n", v7);
    }
  }

  else if (self->_session)
  {
    self->_contextRequestState = 1;
    session = self->_session;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__SFRemoteAutoFillSession__runContextRequest__block_invoke;
    v8[3] = &unk_1E788D070;
    v8[4] = self;
    [(SFSession *)session sendRequestWithFlags:1 object:&unk_1F1D7D6F0 responseHandler:v8];
  }

  else
  {
    [(SFRemoteAutoFillSession *)self _runContextRequest];
  }

  return self->_contextRequestState;
}

- (void)_handleContextRequestResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteAutoFillSession _handleContextRequestResponse:responseCopy error:?];
    if (errorCopy)
    {
LABEL_5:
      if (gLogCategory_SFRemoteAutoFillSession <= 60 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
      {
        [SFRemoteAutoFillSession _handleContextRequestResponse:errorCopy error:?];
      }

      self->_contextRequestState = 3;
      [(SFRemoteAutoFillSession *)self _completedWithError:errorCopy];
      goto LABEL_45;
    }
  }

  else if (errorCopy)
  {
    goto LABEL_5;
  }

  v9 = responseCopy;
  if (!responseCopy && gLogCategory_SFRemoteAutoFillSession <= 60)
  {
    if (gLogCategory_SFRemoteAutoFillSession != -1 || (v9 = _LogCategory_Initialize(), v9))
    {
      [(SFRemoteAutoFillSession *)v9 _handleContextRequestResponse:v7 error:v8];
    }
  }

  CFDataGetTypeID();
  v10 = CFDictionaryGetTypedValue();
  v13 = v10;
  if (v10)
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30)
    {
      if (gLogCategory_SFRemoteAutoFillSession != -1 || (v10 = _LogCategory_Initialize(), v10))
      {
        [(SFRemoteAutoFillSession *)v10 _handleContextRequestResponse:v11 error:v12];
      }
    }

    v14 = [v13 copy];
    contextAppIconData = self->_contextAppIconData;
    self->_contextAppIconData = v14;
  }

  CFArrayGetTypeID();
  v16 = CFDictionaryGetTypedValue();
  if (v16)
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSession _handleContextRequestResponse:v16 error:?];
    }

    v17 = [v16 copy];
    contextAssociatedDomains = self->_contextAssociatedDomains;
    self->_contextAssociatedDomains = v17;
  }

  CFStringGetTypeID();
  v20 = CFDictionaryGetTypedValue();
  if (v20)
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSession _handleContextRequestResponse:v20 error:v19];
    }

    objc_storeStrong(&self->_contextBundleID, v20);
  }

  CFStringGetTypeID();
  v21 = CFDictionaryGetTypedValue();

  if (v21)
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSession _handleContextRequestResponse:v21 error:v22];
    }

    v23 = [v21 copy];
    contextLocalizedAppName = self->_contextLocalizedAppName;
    self->_contextLocalizedAppName = v23;
  }

  CFStringGetTypeID();
  v25 = CFDictionaryGetTypedValue();

  if (v25)
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSession _handleContextRequestResponse:v25 error:v26];
    }

    v27 = [v25 copy];
    contextUnlocalizedAppName = self->_contextUnlocalizedAppName;
    self->_contextUnlocalizedAppName = v27;
  }

  CFStringGetTypeID();
  v29 = CFDictionaryGetTypedValue();

  if (v29)
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSession _handleContextRequestResponse:v29 error:v30];
    }

    objc_storeStrong(&self->_contextURL, v29);
  }

  self->_contextRequestState = 4;
  [(SFRemoteAutoFillSession *)self _run];

LABEL_45:
}

- (int)_runPasswordPicker
{
  passwordPickerState = self->_passwordPickerState;
  if (passwordPickerState)
  {
    if (passwordPickerState != 4 && gLogCategory_SFRemoteAutoFillSession <= 30)
    {
      if (gLogCategory_SFRemoteAutoFillSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return self->_passwordPickerState;
        }

        passwordPickerState = self->_passwordPickerState;
      }

      if (passwordPickerState >= 8)
      {
        if (passwordPickerState <= 9)
        {
          v13 = "?";
        }

        else
        {
          v13 = "User";
        }
      }

      else
      {
        v13 = off_1E7890358[passwordPickerState];
      }

      LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _runPasswordPicker]", 30, "PasswordPicker hasn't succeeded yet (%s)\n", v13);
    }
  }

  else
  {
    promptForPickerHandler = self->_promptForPickerHandler;
    if (promptForPickerHandler)
    {
      contextBundleID = self->_contextBundleID;
      contextLocalizedAppName = self->_contextLocalizedAppName;
      contextUnlocalizedAppName = self->_contextUnlocalizedAppName;
      contextURL = self->_contextURL;
      contextAppIconData = self->_contextAppIconData;
      contextAssociatedDomains = self->_contextAssociatedDomains;
      name = [(SFDevice *)self->_peerDevice name];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __45__SFRemoteAutoFillSession__runPasswordPicker__block_invoke;
      v14[3] = &unk_1E7890338;
      v14[4] = self;
      promptForPickerHandler[2](promptForPickerHandler, contextURL, contextBundleID, contextLocalizedAppName, contextUnlocalizedAppName, contextAssociatedDomains, contextAppIconData, name, v14);
    }
  }

  return self->_passwordPickerState;
}

void __45__SFRemoteAutoFillSession__runPasswordPicker__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(v10 + 168);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __45__SFRemoteAutoFillSession__runPasswordPicker__block_invoke_2;
  v15[3] = &unk_1E788B9C0;
  v15[4] = v10;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v11, v15);
}

- (void)_handlePasswordPickerResponse:(id)response password:(id)password error:(id)error
{
  responseCopy = response;
  passwordCopy = password;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v13 = responseCopy;
  if (errorCopy)
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 60 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSession _handlePasswordPickerResponse:errorCopy password:? error:?];
    }

    self->_passwordPickerState = 3;
    [(SFRemoteAutoFillSession *)self _completedWithError:errorCopy];
  }

  else
  {
    if (responseCopy)
    {
      if (gLogCategory_SFRemoteAutoFillSession <= 10 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
      {
        [SFRemoteAutoFillSession _handlePasswordPickerResponse:responseCopy password:v11 error:?];
      }

      objc_storeStrong(&self->_pickedUsername, response);
    }

    if (passwordCopy)
    {
      if (gLogCategory_SFRemoteAutoFillSession <= 10 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
      {
        [SFRemoteAutoFillSession _handlePasswordPickerResponse:passwordCopy password:v11 error:?];
      }

      objc_storeStrong(&self->_pickedPassword, password);
    }

    if (self->_pickedUsername || self->_pickedPassword)
    {
      self->_passwordPickerState = 4;
      [(SFRemoteAutoFillSession *)self _run];
    }

    else
    {
      if (gLogCategory_SFRemoteAutoFillSession <= 60)
      {
        if (gLogCategory_SFRemoteAutoFillSession != -1 || (v13 = _LogCategory_Initialize(), v13))
        {
          [SFRemoteAutoFillSession _handlePasswordPickerResponse:v13 password:v11 error:v12];
        }
      }

      self->_passwordPickerState = 3;
      v14 = NSErrorWithOSStatusF(4294960590, "Neither a username nor a password was chosen");
      [(SFRemoteAutoFillSession *)self _completedWithError:v14];
    }
  }
}

- (int)_runSendCredentials
{
  sendCredentialsState = self->_sendCredentialsState;
  if (sendCredentialsState)
  {
    if (sendCredentialsState != 4 && gLogCategory_SFRemoteAutoFillSession <= 30)
    {
      if (gLogCategory_SFRemoteAutoFillSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return self->_sendCredentialsState;
        }

        sendCredentialsState = self->_sendCredentialsState;
      }

      if (sendCredentialsState >= 8)
      {
        if (sendCredentialsState <= 9)
        {
          v10 = "?";
        }

        else
        {
          v10 = "User";
        }
      }

      else
      {
        v10 = off_1E7890358[sendCredentialsState];
      }

      LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _runSendCredentials]", 30, "SendCredentials hasn't succeeded yet (%s)\n", v10);
    }
  }

  else if (self->_session)
  {
    if (self->_pickedPassword || self->_pickedUsername)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v5 setObject:&unk_1F1D7D108 forKeyedSubscript:@"op"];
      pickedUsername = self->_pickedUsername;
      if (pickedUsername)
      {
        [v5 setObject:pickedUsername forKeyedSubscript:@"un"];
      }

      pickedPassword = self->_pickedPassword;
      if (pickedPassword)
      {
        [v5 setObject:pickedPassword forKeyedSubscript:@"pw"];
      }

      self->_sendCredentialsState = 1;
      session = self->_session;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __46__SFRemoteAutoFillSession__runSendCredentials__block_invoke;
      v11[3] = &unk_1E788D070;
      v11[4] = self;
      [(SFSession *)session sendRequestWithFlags:1 object:v5 responseHandler:v11];
    }

    else
    {
      [(SFRemoteAutoFillSession *)self _runSendCredentials];
    }
  }

  else
  {
    [(SFRemoteAutoFillSession *)self _runSendCredentials];
  }

  return self->_sendCredentialsState;
}

- (void)_handleSendCredentialsResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (errorCopy)
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 60 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSession _handleSendCredentialsResponse:errorCopy error:?];
    }

    v7 = 3;
  }

  else
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSession _handleSendCredentialsResponse:responseCopy error:?];
    }

    v7 = 4;
  }

  self->_sendCredentialsState = v7;
  [(SFRemoteAutoFillSession *)self _run];
}

- (void)_receivedObject:(id)object flags:(unsigned int)flags
{
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (gLogCategory_SFRemoteAutoFillSession <= 50 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteAutoFillSession _receivedObject:Int64Ranged flags:?];
  }

  if (Int64Ranged == 5)
  {
    v6 = NSErrorWithOSStatusF(4294960573, "Peer stopped requesting");
    [(SFRemoteAutoFillSession *)self _completedWithError:v6];
  }

  else if (gLogCategory_SFRemoteAutoFillSession <= 60 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
  {
    [(SFRemoteAutoFillSession *)Int64Ranged _receivedObject:Int64Ranged flags:?];
  }
}

- (void)_run
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_activateCalled && !self->_invalidateCalled && [(SFRemoteAutoFillSession *)self _runSessionStart]== 4 && [(SFRemoteAutoFillSession *)self _runPair]== 4)
  {
    if (!self->_pairingFinishedNotified)
    {
      pairingFinishedHandler = self->_pairingFinishedHandler;
      if (pairingFinishedHandler)
      {
        self->_pairingFinishedNotified = 1;
        pairingFinishedHandler[2]();
      }
    }

    _runContextRequest = [(SFRemoteAutoFillSession *)self _runContextRequest];
    v5 = _runContextRequest == 4 || _runContextRequest == 2;
    if (v5 && [(SFRemoteAutoFillSession *)self _runPasswordPicker]== 4 && [(SFRemoteAutoFillSession *)self _runSendCredentials]== 4)
    {

      [(SFRemoteAutoFillSession *)self _completedWithError:0];
    }
  }
}

- (int)_runPair
{
  pairState = self->_pairState;
  if (pairState <= 1)
  {
    if (!pairState)
    {
      self->_pairState = 1;
      if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _runPair]", 30, "Pair start");
      }

      date = [MEMORY[0x1E695DF00] date];
      pairClock = self->_pairClock;
      self->_pairClock = date;
    }

    _runPairVerify = [(SFRemoteAutoFillSession *)self _runPairVerify];
    if (_runPairVerify != 4)
    {
      OUTLINED_FUNCTION_5_5();
      if (!v7)
      {
        return self->_pairState;
      }

      _runPairVerify = [(SFRemoteAutoFillSession *)self _runPairHomeKit];
      if (_runPairVerify != 4)
      {
        OUTLINED_FUNCTION_5_5();
        if (!v7)
        {
          return self->_pairState;
        }

        _runPairVerify = [(SFRemoteAutoFillSession *)self _runPairContacts];
        if (_runPairVerify != 4)
        {
          OUTLINED_FUNCTION_5_5();
          if (!v7)
          {
            return self->_pairState;
          }

          _runPairVerify = [(SFRemoteAutoFillSession *)self _runPairVisual];
          if (_runPairVerify != 4)
          {
            OUTLINED_FUNCTION_5_5();
            if (!v7)
            {
              return self->_pairState;
            }

            _runPairVerify = [(SFRemoteAutoFillSession *)self _runPairPIN];
            if (_runPairVerify != 4)
            {
              OUTLINED_FUNCTION_5_5();
              if (!v7)
              {
                return self->_pairState;
              }
            }
          }
        }
      }
    }

    v7 = _runPairVerify == 4 || _runPairVerify == 2;
    if (v7)
    {
      pairState = 4;
    }

    else
    {
      pairState = 3;
    }

    self->_pairState = pairState;
  }

  if (pairState != 4 && gLogCategory_SFRemoteAutoFillSession <= 30)
  {
    if (gLogCategory_SFRemoteAutoFillSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return self->_pairState;
      }

      pairState = self->_pairState;
    }

    if (pairState >= 8)
    {
      if (pairState <= 9)
      {
        v9 = "?";
      }

      else
      {
        v9 = "User";
      }
    }

    else
    {
      v9 = off_1E7890358[pairState];
    }

    LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _runPair]", 30, "Pair hasn't succeeded yet (%s)\n", v9);
  }

  return self->_pairState;
}

void __43__SFRemoteAutoFillSession__runPairContacts__block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E695DF00] date];
  OUTLINED_FUNCTION_3_11(v0, v1);
  LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _runPairContacts]_block_invoke", 50, "Pair (contacts) duration: %f\n", v2);
}

void __43__SFRemoteAutoFillSession__runPairContacts__block_invoke_cold_2()
{
  v0 = [MEMORY[0x1E695DF00] date];
  OUTLINED_FUNCTION_4_7(v0, v1);
  LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _runPairContacts]_block_invoke", 50, "Pair total duration: %f\n", v2);
}

void __42__SFRemoteAutoFillSession__runPairHomeKit__block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E695DF00] date];
  OUTLINED_FUNCTION_3_11(v0, v1);
  LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _runPairHomeKit]_block_invoke", 50, "Pair (HomeKit) duration: %f\n", v2);
}

void __42__SFRemoteAutoFillSession__runPairHomeKit__block_invoke_cold_2()
{
  v0 = [MEMORY[0x1E695DF00] date];
  OUTLINED_FUNCTION_4_7(v0, v1);
  LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _runPairHomeKit]_block_invoke", 50, "Pair total duration: %f\n", v2);
}

void __41__SFRemoteAutoFillSession__runPairVerify__block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E695DF00] date];
  OUTLINED_FUNCTION_3_11(v0, v1);
  LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _runPairVerify]_block_invoke", 50, "Pair (verify) duration: %f\n", v2);
}

void __41__SFRemoteAutoFillSession__runPairVerify__block_invoke_cold_2()
{
  v0 = [MEMORY[0x1E695DF00] date];
  OUTLINED_FUNCTION_4_7(v0, v1);
  LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _runPairVerify]_block_invoke", 50, "Pair total duration: %f\n", v2);
}

void __38__SFRemoteAutoFillSession__runPairPIN__block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E695DF00] date];
  OUTLINED_FUNCTION_3_11(v0, v1);
  LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _runPairPIN]_block_invoke", 50, "Pair (PIN) duration: %f\n", v2);
}

void __38__SFRemoteAutoFillSession__runPairPIN__block_invoke_cold_2()
{
  v0 = [MEMORY[0x1E695DF00] date];
  OUTLINED_FUNCTION_4_7(v0, v1);
  LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _runPairPIN]_block_invoke", 50, "Pair total duration: %f\n", v2);
}

void __41__SFRemoteAutoFillSession__runPairVisual__block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E695DF00] date];
  OUTLINED_FUNCTION_3_11(v0, v1);
  LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _runPairVisual]_block_invoke", 50, "Pair (visual) duration: %f\n", v2);
}

void __41__SFRemoteAutoFillSession__runPairVisual__block_invoke_cold_2()
{
  v0 = [MEMORY[0x1E695DF00] date];
  OUTLINED_FUNCTION_4_7(v0, v1);
  LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _runPairVisual]_block_invoke", 50, "Pair total duration: %f\n", v2);
}

- (void)_runContextRequest
{
  if (gLogCategory_SFRemoteAutoFillSession <= 60 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_1_16(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _runContextRequest]", a3, "### Cannot request context without session\n");
  }
}

- (uint64_t)_handleContextRequestResponse:(uint64_t)a1 error:(uint64_t)a2 .cold.6(uint64_t a1, uint64_t a2)
{
  IsAppleInternalBuild();
  OUTLINED_FUNCTION_2_15();
  return LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _handleContextRequestResponse:error:]", 30, "Received context bundleID: %@\n");
}

- (uint64_t)_handleContextRequestResponse:(uint64_t)a1 error:(uint64_t)a2 .cold.7(uint64_t a1, uint64_t a2)
{
  IsAppleInternalBuild();
  OUTLINED_FUNCTION_2_15();
  return LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _handleContextRequestResponse:error:]", 30, "Received context localized app name: %@\n");
}

- (uint64_t)_handleContextRequestResponse:(uint64_t)a1 error:(uint64_t)a2 .cold.8(uint64_t a1, uint64_t a2)
{
  IsAppleInternalBuild();
  OUTLINED_FUNCTION_2_15();
  return LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _handleContextRequestResponse:error:]", 30, "Received context unlocalized app name: %@\n");
}

- (uint64_t)_handleContextRequestResponse:(uint64_t)a1 error:(uint64_t)a2 .cold.9(uint64_t a1, uint64_t a2)
{
  IsAppleInternalBuild();
  OUTLINED_FUNCTION_2_15();
  return LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _handleContextRequestResponse:error:]", 30, "Received context URL: %@\n");
}

- (uint64_t)_handlePasswordPickerResponse:(uint64_t)a1 password:(uint64_t)a2 error:.cold.2(uint64_t a1, uint64_t a2)
{
  IsAppleInternalBuild();
  OUTLINED_FUNCTION_2_15();
  return LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _handlePasswordPickerResponse:password:error:]", 10, "User picked username: %@\n");
}

- (uint64_t)_handlePasswordPickerResponse:(uint64_t)a1 password:(uint64_t)a2 error:.cold.3(uint64_t a1, uint64_t a2)
{
  IsAppleInternalBuild();
  OUTLINED_FUNCTION_2_15();
  return LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _handlePasswordPickerResponse:password:error:]", 10, "User picked password: %@\n");
}

- (void)_runSendCredentials
{
  if (gLogCategory_SFRemoteAutoFillSession <= 60 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_1_16(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _runSendCredentials]", a3, "### Cannot send credentials without session\n");
  }
}

- (uint64_t)_receivedObject:(uint64_t)result flags:.cold.1(uint64_t result)
{
  if (result <= 60)
  {
    if (result != -1)
    {
      return LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _receivedObject:flags:]", 60, "### No opcode?\n", v1, v2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _receivedObject:flags:]", 60, "### No opcode?\n", v1, v2);
    }
  }

  return result;
}

- (uint64_t)_receivedObject:(unsigned __int8)a1 flags:(char)a2 .cold.2(unsigned __int8 a1, char a2)
{
  if (a1 > 5u)
  {
    v2 = "?";
  }

  else
  {
    v2 = off_1E7890398[a2 & 7];
  }

  return LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _receivedObject:flags:]", 50, "Received object. %s\n", v2);
}

- (uint64_t)_receivedObject:(uint64_t)a3 flags:.cold.3(unsigned __int8 a1, char a2, uint64_t a3)
{
  if (a1 > 5u)
  {
    v3 = "?";
  }

  else
  {
    v3 = off_1E7890398[a2 & 7];
  }

  return LogPrintF(&gLogCategory_SFRemoteAutoFillSession, "[SFRemoteAutoFillSession _receivedObject:flags:]", 60, "Unsupported opCode: %s (%ld)", v3, a3);
}

@end