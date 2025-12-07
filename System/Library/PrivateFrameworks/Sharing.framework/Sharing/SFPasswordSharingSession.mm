@interface SFPasswordSharingSession
- (SFPasswordSharingSession)init;
- (int)_runPair;
- (int)_runPasswordShare;
- (int)_runSFSessionStart;
- (void)_cleanup;
- (void)_completedWithError:(id)error;
- (void)_receivedObject:(id)object flags:(unsigned int)flags;
- (void)_run;
- (void)_runPasswordShareReceiveResponse:(id)response;
- (void)_runPasswordShareSendInfo;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)tryPIN:(id)n;
@end

@implementation SFPasswordSharingSession

- (SFPasswordSharingSession)init
{
  v6.receiver = self;
  v6.super_class = SFPasswordSharingSession;
  v2 = [(SFPasswordSharingSession *)&v6 init];
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
    [(SFPasswordSharingSession *)v3 activate];
  }

  else
  {
    [(SFPasswordSharingSession *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SFPasswordSharingSession;
    [(SFPasswordSharingSession *)&v5 dealloc];
  }
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__SFPasswordSharingSession_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __36__SFPasswordSharingSession_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFPasswordSharingSession <= 30)
  {
    if (gLogCategory_SFPasswordSharingSession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __36__SFPasswordSharingSession_activate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  v4 = [MEMORY[0x1E695DF00] date];
  v5 = *(v3 + 32);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  *(*(v3 + 32) + 8) = 1;
  v7 = *(v3 + 32);
  v8 = v7[12];
  if (v8)
  {
    (*(v8 + 16))(v7[12], 10, 0);
    v7 = *(v3 + 32);
  }

  return [v7 _run];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__SFPasswordSharingSession_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __38__SFPasswordSharingSession_invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if ((*(*(a1 + 32) + 9) & 1) == 0 && gLogCategory_SFPasswordSharingSession <= 30)
  {
    if (gLogCategory_SFPasswordSharingSession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __38__SFPasswordSharingSession_invalidate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 9) = 1;
  [*(*(v3 + 32) + 24) invalidate];
  v4 = *(v3 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;

  v6 = *(v3 + 32);

  return [v6 _cleanup];
}

- (void)tryPIN:(id)n
{
  nCopy = n;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__SFPasswordSharingSession_tryPIN___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = nCopy;
  v6 = nCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __35__SFPasswordSharingSession_tryPIN___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (!*(*(a1 + 32) + 24) && gLogCategory_SFPasswordSharingSession <= 60)
  {
    if (gLogCategory_SFPasswordSharingSession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __35__SFPasswordSharingSession_tryPIN___block_invoke_cold_1(a1, a2, a3);
    }
  }

  v4 = *(v3 + 40);
  v5 = *(*(v3 + 32) + 24);

  return [v5 pairSetupTryPIN:v4];
}

- (void)_cleanup
{
  self->_pairState = 0;
  self->_passwordShareState = 0;
  self->_sfSessionState = 0;
}

- (void)_completedWithError:(id)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (gLogCategory_SFPasswordSharingSession <= 50 && (gLogCategory_SFPasswordSharingSession != -1 || _LogCategory_Initialize()))
  {
    [SFPasswordSharingSession _completedWithError:?];
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = errorCopy;
  v8 = v5;
  if (v5)
  {
    if (gLogCategory_SFPasswordSharingSession <= 60 && (gLogCategory_SFPasswordSharingSession != -1 || _LogCategory_Initialize()))
    {
      [SFPasswordSharingSession _completedWithError:v8];
    }

    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      v12 = @"eo";
      v13[0] = v8;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      progressHandler[2](progressHandler, 20, v10);
    }
  }

  else
  {
    if (gLogCategory_SFPasswordSharingSession <= 30)
    {
      if (gLogCategory_SFPasswordSharingSession != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        [(SFPasswordSharingSession *)v5 _completedWithError:v6, v7];
      }
    }

    v11 = self->_progressHandler;
    if (v11)
    {
      v11[2](v11, 20, 0);
    }
  }
}

- (int)_runSFSessionStart
{
  selfCopy = self;
  sfSessionState = self->_sfSessionState;
  if (sfSessionState)
  {
    if (sfSessionState != 4 && gLogCategory_SFPasswordSharingSession <= 30)
    {
      if (gLogCategory_SFPasswordSharingSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return selfCopy->_sfSessionState;
        }

        sfSessionState = selfCopy->_sfSessionState;
      }

      LogPrintF(&gLogCategory_SFPasswordSharingSession, "[SFPasswordSharingSession _runSFSessionStart]", 30, "SFSession hasn't succeeded yet (%d)\n", sfSessionState);
    }
  }

  else
  {
    if (gLogCategory_SFPasswordSharingSession <= 30)
    {
      if (gLogCategory_SFPasswordSharingSession != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(SFPasswordSharingSession *)self _runSFSessionStart];
      }
    }

    selfCopy->_sfSessionState = 1;
    [(SFSession *)selfCopy->_sfSession invalidate];
    v5 = objc_alloc_init(SFSession);
    sfSession = selfCopy->_sfSession;
    selfCopy->_sfSession = v5;

    [(SFSession *)selfCopy->_sfSession setDispatchQueue:selfCopy->_dispatchQueue];
    [(SFSession *)selfCopy->_sfSession setPeerDevice:selfCopy->_peerDevice];
    [(SFSession *)selfCopy->_sfSession setServiceIdentifier:@"com.apple.sharing.PasswordSharing"];
    contactIdentifier = [(SFDevice *)selfCopy->_peerDevice contactIdentifier];
    [(SFSession *)selfCopy->_sfSession setPeerContactIdentifier:contactIdentifier];

    [(SFSession *)selfCopy->_sfSession setSessionFlags:12];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __46__SFPasswordSharingSession__runSFSessionStart__block_invoke;
    v14[3] = &unk_1E788B238;
    v14[4] = selfCopy;
    [(SFSession *)selfCopy->_sfSession setErrorHandler:v14];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __46__SFPasswordSharingSession__runSFSessionStart__block_invoke_2;
    v13[3] = &unk_1E788B198;
    v13[4] = selfCopy;
    [(SFSession *)selfCopy->_sfSession setInterruptionHandler:v13];
    [(SFSession *)selfCopy->_sfSession setInvalidationHandler:&__block_literal_global_20];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__SFPasswordSharingSession__runSFSessionStart__block_invoke_4;
    v12[3] = &unk_1E788CFD0;
    v12[4] = selfCopy;
    [(SFSession *)selfCopy->_sfSession setPromptForPINHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __46__SFPasswordSharingSession__runSFSessionStart__block_invoke_5;
    v11[3] = &unk_1E788CFF8;
    v11[4] = selfCopy;
    [(SFSession *)selfCopy->_sfSession setReceivedObjectHandler:v11];
    v8 = selfCopy->_sfSession;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__SFPasswordSharingSession__runSFSessionStart__block_invoke_6;
    v10[3] = &unk_1E788B238;
    v10[4] = selfCopy;
    [(SFSession *)v8 activateWithCompletion:v10];
  }

  return selfCopy->_sfSessionState;
}

void __46__SFPasswordSharingSession__runSFSessionStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (gLogCategory_SFPasswordSharingSession <= 90)
  {
    if (gLogCategory_SFPasswordSharingSession != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __46__SFPasswordSharingSession__runSFSessionStart__block_invoke_cold_1(v3);
      v3 = v5;
    }
  }

  [*(a1 + 32) _completedWithError:v3];
}

void __46__SFPasswordSharingSession__runSFSessionStart__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFPasswordSharingSession <= 60)
  {
    if (gLogCategory_SFPasswordSharingSession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __46__SFPasswordSharingSession__runSFSessionStart__block_invoke_2_cold_1(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);
  v5 = NSErrorWithOSStatusF(4294960534, "SFSession Interrupted");
  [v4 _completedWithError:v5];
}

uint64_t __46__SFPasswordSharingSession__runSFSessionStart__block_invoke_3(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_SFPasswordSharingSession <= 30)
  {
    if (gLogCategory_SFPasswordSharingSession != -1)
    {
      return __46__SFPasswordSharingSession__runSFSessionStart__block_invoke_3_cold_1(result, a2, a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __46__SFPasswordSharingSession__runSFSessionStart__block_invoke_3_cold_1(result, a2, a3);
    }
  }

  return result;
}

uint64_t __46__SFPasswordSharingSession__runSFSessionStart__block_invoke_4(uint64_t a1, int a2, int a3)
{
  if (gLogCategory_SFPasswordSharingSession <= 30 && (gLogCategory_SFPasswordSharingSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFPasswordSharingSession, "[SFPasswordSharingSession _runSFSessionStart]_block_invoke_4", 30, "Prompt for PIN, flags 0x%X, %d throttle seconds\n", a2, a3);
  }

  result = *(*(a1 + 32) + 104);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void __46__SFPasswordSharingSession__runSFSessionStart__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    v6 = v3;
    if (gLogCategory_SFPasswordSharingSession <= 90)
    {
      if (gLogCategory_SFPasswordSharingSession != -1 || (v7 = _LogCategory_Initialize(), v6 = v8, v7))
      {
        __46__SFPasswordSharingSession__runSFSessionStart__block_invoke_6_cold_1(v6);
        v6 = v8;
      }
    }

    [*(a1 + 32) _completedWithError:v6];
  }

  else
  {
    if (gLogCategory_SFPasswordSharingSession <= 30)
    {
      if (gLogCategory_SFPasswordSharingSession != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        __46__SFPasswordSharingSession__runSFSessionStart__block_invoke_6_cold_2(v3, v4, v5);
      }
    }

    *(*(a1 + 32) + 32) = 4;
    [*(a1 + 32) _run];
  }
}

- (int)_runPair
{
  pairState = self->_pairState;
  if (pairState)
  {
    if (pairState != 4 && gLogCategory_SFPasswordSharingSession <= 30)
    {
      if (gLogCategory_SFPasswordSharingSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return self->_pairState;
        }

        pairState = self->_pairState;
      }

      LogPrintF(&gLogCategory_SFPasswordSharingSession, "[SFPasswordSharingSession _runPair]", 30, "Pair hasn't succeeded yet (%d)\n", pairState);
    }
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__4;
    v14 = __Block_byref_object_dispose__4;
    v15 = 0;
    if (gLogCategory_SFPasswordSharingSession <= 50 && (gLogCategory_SFPasswordSharingSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFPasswordSharingSession, "[SFPasswordSharingSession _runPair]", 50, "Pair start\n");
    }

    date = [MEMORY[0x1E695DF00] date];
    v5 = v11[5];
    v11[5] = date;

    self->_pairState = 1;
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](progressHandler, 60, 0);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __36__SFPasswordSharingSession__runPair__block_invoke;
    aBlock[3] = &unk_1E788D020;
    aBlock[4] = self;
    aBlock[5] = &v10;
    v7 = _Block_copy(aBlock);
    [(SFSession *)self->_sfSession pairVerifyWithFlags:4096 completion:v7];

    _Block_object_dispose(&v10, 8);
  }

  return self->_pairState;
}

void __36__SFPasswordSharingSession__runPair__block_invoke(uint64_t a1, void *a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (gLogCategory_SFPasswordSharingSession <= 50 && (gLogCategory_SFPasswordSharingSession != -1 || _LogCategory_Initialize()))
  {
    __36__SFPasswordSharingSession__runPair__block_invoke_cold_1(a1);
  }

  if (v3)
  {
    if (gLogCategory_SFPasswordSharingSession <= 50 && (gLogCategory_SFPasswordSharingSession != -1 || _LogCategory_Initialize()))
    {
      __36__SFPasswordSharingSession__runPair__block_invoke_cold_2(v3);
    }

    *(*(a1 + 32) + 12) = 3;
    v4 = v3;
    v5 = *(a1 + 32);
    v6 = v5[12];
    if (v6)
    {
      v24 = @"eo";
      v25[0] = v4;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      (*(v6 + 16))(v6, 30, v7);

      v5 = *(a1 + 32);
    }

    [v5 _completedWithError:v4];
  }

  else
  {
    *(*(a1 + 32) + 12) = 4;
    v8 = *(a1 + 32);
    v9 = v8[12];
    if (v9)
    {
      (*(v9 + 16))(v8[12], 70, 0);
      v8 = *(a1 + 32);
    }

    [v8 _run];
  }

  [*(*(*(a1 + 40) + 8) + 40) timeIntervalSinceNow];
  v11 = v10;
  [*(*(*(a1 + 40) + 8) + 40) timeIntervalSinceNow];
  if (v11 < 0.0)
  {
    v12 = -v12;
  }

  v13 = (v12 * 1000.0);
  v22[0] = @"_cat";
  v22[1] = @"_op";
  v23[0] = @"PasswordSharing";
  v23[1] = @"PairVerify";
  v22[2] = @"durationMS";
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
  v23[2] = v14;
  v22[3] = @"errorCode";
  v15 = [MEMORY[0x1E696AD98] numberWithInt:NSErrorToOSStatus()];
  v23[3] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:4];
  SFDashboardLogJSON(v16);

  v20[0] = @"durationMS";
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
  v20[1] = @"errorCode";
  v21[0] = v17;
  v18 = [MEMORY[0x1E696AD98] numberWithInt:NSErrorToOSStatus()];
  v21[1] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  SFMetricsLog(@"com.apple.sharing.PasswordSharingPairVerify", v19);
}

- (int)_runPasswordShare
{
  passwordShareState = self->_passwordShareState;
  if (passwordShareState)
  {
    if (passwordShareState != 4 && gLogCategory_SFPasswordSharingSession <= 30)
    {
      if (gLogCategory_SFPasswordSharingSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return self->_passwordShareState;
        }

        passwordShareState = self->_passwordShareState;
      }

      LogPrintF(&gLogCategory_SFPasswordSharingSession, "[SFPasswordSharingSession _runPasswordShare]", 30, "Password sharing hasn't succeeded yet (%d)\n", passwordShareState);
    }
  }

  else
  {
    if (gLogCategory_SFPasswordSharingSession <= 50 && (gLogCategory_SFPasswordSharingSession != -1 || _LogCategory_Initialize()))
    {
      [SFPasswordSharingSession _runPasswordShare];
    }

    [(SFPasswordSharingSession *)self _runPasswordShareSendInfo];
  }

  return self->_passwordShareState;
}

- (void)_runPasswordShareSendInfo
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A768];
  selfCopy = self;
  *a2 = *MEMORY[0x1E696A578];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
  v9 = v8;
  v10 = @"?";
  if (v8)
  {
    v10 = v8;
  }

  *a3 = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:a3 forKeys:a2 count:1];
  v12 = [v5 errorWithDomain:v6 code:selfCopy userInfo:v11];
  LogPrintF(&gLogCategory_SFPasswordSharingSession, "[SFPasswordSharingSession _runPasswordShareSendInfo]", 60, "### Error sending password info: %@\n", v12);
}

- (void)_runPasswordShareReceiveResponse:(id)response
{
  v18[1] = *MEMORY[0x1E69E9840];
  responseCopy = response;
  if (CFDictionaryGetInt64())
  {
    if (gLogCategory_SFPasswordSharingSession <= 30 && (gLogCategory_SFPasswordSharingSession != -1 || _LogCategory_Initialize()))
    {
      [SFPasswordSharingSession _runPasswordShareReceiveResponse:];
    }

    self->_passwordShareState = 4;
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](progressHandler, 83, 0);
    }
  }

  else
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
    if (gLogCategory_SFPasswordSharingSession <= 60 && (gLogCategory_SFPasswordSharingSession != -1 || _LogCategory_Initialize()))
    {
      [SFPasswordSharingSession _runPasswordShareReceiveResponse:?];
    }

    self->_passwordShareState = 4;
    if (self->_progressHandler)
    {
      if (Int64Ranged)
      {
        v17 = @"eo";
        v7 = MEMORY[0x1E696ABC0];
        v8 = *MEMORY[0x1E696A768];
        v15 = *MEMORY[0x1E696A578];
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
        v10 = v9;
        v11 = @"?";
        if (v9)
        {
          v11 = v9;
        }

        v16 = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        v13 = [v7 errorWithDomain:v8 code:Int64Ranged userInfo:v12];
        v18[0] = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      }

      else
      {
        v14 = 0;
      }

      (*(self->_progressHandler + 2))();
    }
  }

  [(SFPasswordSharingSession *)self _completedWithError:0];
}

- (void)_receivedObject:(id)object flags:(unsigned int)flags
{
  objectCopy = object;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (Int64Ranged == 5)
  {
    [(SFPasswordSharingSession *)self _runPasswordShareReceiveResponse:objectCopy];
  }

  else if (gLogCategory_SFPasswordSharingSession <= 60 && (gLogCategory_SFPasswordSharingSession != -1 || _LogCategory_Initialize()))
  {
    [SFPasswordSharingSession _receivedObject:? flags:?];
  }
}

- (void)_run
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled && [(SFPasswordSharingSession *)self _runSFSessionStart]== 4 && [(SFPasswordSharingSession *)self _runPair]== 4)
  {

    [(SFPasswordSharingSession *)self _runPasswordShare];
  }
}

- (void)_completedWithError:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v3 = [MEMORY[0x1E695DF00] date];
  [v3 timeIntervalSinceDate:*(a1 + 40)];
  LogPrintF(&gLogCategory_SFPasswordSharingSession, "[SFPasswordSharingSession _completedWithError:]", 50, "Completed: %f\n", v2);
}

void __36__SFPasswordSharingSession__runPair__block_invoke_cold_1(uint64_t a1)
{
  v3 = [MEMORY[0x1E695DF00] date];
  [v3 timeIntervalSinceDate:*(*(*(a1 + 40) + 8) + 40)];
  LogPrintF(&gLogCategory_SFPasswordSharingSession, "[SFPasswordSharingSession _runPair]_block_invoke", 50, "Pair duration: %f\n", v2);
}

- (void)_receivedObject:flags:.cold.1()
{
  if (gLogCategory_SFPasswordSharingSession <= 60 && (gLogCategory_SFPasswordSharingSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFPasswordSharingSession, "[SFPasswordSharingSession _receivedObject:flags:]", 60, "### No opcode?\n", v0, v1);
  }
}

@end