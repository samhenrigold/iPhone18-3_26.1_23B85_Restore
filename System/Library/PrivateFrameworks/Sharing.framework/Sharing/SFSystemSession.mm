@interface SFSystemSession
- (SFSystemSession)init;
- (void)_cleanup;
- (void)_processRequests;
- (void)_processRequestsWithError:(id)error;
- (void)_run;
- (void)_runPairVerifyStart;
- (void)_runSFSessionStart;
- (void)activate;
- (void)getProfilesResponse:(id)response error:(id)error completion:(id)completion;
- (void)getProfilesWithCompletion:(id)completion;
- (void)getSystemInfoWithCompletion:(id)completion;
- (void)installProfileResponse:(id)response error:(id)error completion:(id)completion;
- (void)installProfileWithData:(id)data completion:(id)completion;
- (void)installProfileWithURL:(id)l completion:(id)completion;
- (void)invalidate;
- (void)rebootSystemWithCompletion:(id)completion;
- (void)removeProfileWithIdentifier:(id)identifier completion:(id)completion;
@end

@implementation SFSystemSession

- (SFSystemSession)init
{
  v6.receiver = self;
  v6.super_class = SFSystemSession;
  v2 = [(SFSystemSession *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)_cleanup
{
  [(SFSession *)self->_sfSession invalidate];
  sfSession = self->_sfSession;
  self->_sfSession = 0;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__SFSystemSession_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __27__SFSystemSession_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFSystemSession <= 30)
  {
    if (gLogCategory_SFSystemSession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __27__SFSystemSession_activate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = *(v3 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = v4;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__SFSystemSession_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __29__SFSystemSession_invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if ((*(*(a1 + 32) + 16) & 1) == 0 && gLogCategory_SFSystemSession <= 30)
  {
    if (gLogCategory_SFSystemSession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __29__SFSystemSession_invalidate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 16) = 1;
  [*(*(v3 + 32) + 32) invalidate];
  v4 = *(v3 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = 0;

  *(*(v3 + 32) + 40) = 7;
  v6 = *(v3 + 32);

  return [v6 _run];
}

- (void)_run
{
  v19[1] = *MEMORY[0x1E69E9840];
  v16 = *MEMORY[0x1E696A768];
  v17 = *MEMORY[0x1E696A578];
  v3 = &gLogCategory_SFSystemSession;
  state = self->_state;
  do
  {
    if (state <= 10)
    {
      if (state > 6)
      {
        if (state == 7)
        {
          v14 = NSErrorWithOSStatusF(4294960573, "Invalidated");
          [(SFSystemSession *)self _processRequestsWithError:v14];

          goto LABEL_39;
        }

        if (state == 10)
        {
          self->_state = 11;
          [(SFSystemSession *)self _runSFSessionStart];
          goto LABEL_39;
        }
      }

      else
      {
        if (!state)
        {
          self->_state = 10;
          goto LABEL_39;
        }

        if (state == 3)
        {
          if (!self->_stateError)
          {
            v5 = MEMORY[0x1E696ABC0];
            v18 = v17;
            v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
            v7 = v6;
            v8 = @"?";
            if (v6)
            {
              v8 = v6;
            }

            v19[0] = v8;
            [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
            v10 = v9 = v3;
            v11 = [v5 errorWithDomain:v16 code:-6700 userInfo:v10];
            stateError = self->_stateError;
            self->_stateError = v11;

            v3 = v9;
          }

          if (gLogCategory_SFSystemSession <= 60 && (gLogCategory_SFSystemSession != -1 || _LogCategory_Initialize()))
          {
            [(SFSystemSession *)&self->_stateError _run];
          }

          [(SFSystemSession *)self _processRequestsWithError:self->_stateError];
          goto LABEL_39;
        }
      }

      goto LABEL_33;
    }

    if (state > 12)
    {
      if (state == 13)
      {
        if (!self->_stateDone)
        {
          goto LABEL_39;
        }

        if (self->_stateError && !self->_allowUnencrypted)
        {
          v13 = 3;
        }

        else
        {
          v13 = 14;
        }

        goto LABEL_38;
      }

      if (state == 14)
      {
        [(SFSystemSession *)self _processRequests];
        goto LABEL_39;
      }

LABEL_33:
      if (gLogCategory_SFSystemSession <= 60 && (gLogCategory_SFSystemSession != -1 || _LogCategory_Initialize()))
      {
        [(SFSystemSession *)state _run];
      }

      goto LABEL_39;
    }

    if (state != 11)
    {
      self->_state = 13;
      self->_stateDone = 0;
      [(SFSystemSession *)self _runPairVerifyStart];
      goto LABEL_39;
    }

    if (self->_stateDone)
    {
      if (self->_stateError)
      {
        v13 = 3;
      }

      else
      {
        v13 = 12;
      }

LABEL_38:
      self->_state = v13;
    }

LABEL_39:
    v15 = self->_state == state;
    state = self->_state;
  }

  while (!v15);
}

- (void)_runSFSessionStart
{
  selfCopy = self;
  if (gLogCategory_SFSystemSession <= 30)
  {
    if (gLogCategory_SFSystemSession != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFSystemSession *)self _runSFSessionStart];
    }
  }

  v4 = objc_alloc_init(SFSession);
  sfSession = selfCopy->_sfSession;
  selfCopy->_sfSession = v4;

  [(SFSession *)selfCopy->_sfSession setDispatchQueue:selfCopy->_dispatchQueue];
  [(SFSession *)selfCopy->_sfSession setLabel:@"System"];
  [(SFSession *)selfCopy->_sfSession setPeerDevice:selfCopy->_peerDevice];
  [(SFSession *)selfCopy->_sfSession setServiceIdentifier:@"com.apple.sharing.System"];
  [(SFSession *)selfCopy->_sfSession setSessionFlags:33];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__SFSystemSession__runSFSessionStart__block_invoke;
  v8[3] = &unk_1E788B198;
  v8[4] = selfCopy;
  [(SFSession *)selfCopy->_sfSession setSessionStartedHandler:v8];
  v6 = selfCopy->_sfSession;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__SFSystemSession__runSFSessionStart__block_invoke_2;
  v7[3] = &unk_1E788B238;
  v7[4] = selfCopy;
  [(SFSession *)v6 activateWithCompletion:v7];
}

void *__37__SFSystemSession__runSFSessionStart__block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  if ((*(result[4] + 16) & 1) == 0)
  {
    v4 = result;
    if (gLogCategory_SFSystemSession <= 30)
    {
      if (gLogCategory_SFSystemSession != -1 || (result = _LogCategory_Initialize(), result))
      {
        __37__SFSystemSession__runSFSessionStart__block_invoke_cold_1(result, a2, a3);
      }
    }

    *(v4[4] + 44) = 1;
    v5 = v4[4];

    return [v5 _run];
  }

  return result;
}

void __37__SFSystemSession__runSFSessionStart__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v6 = v4;
  if ((*(*(a1 + 32) + 16) & 1) == 0)
  {
    if (v4)
    {
      v7 = v4;
      if (gLogCategory_SFSystemSession <= 60 && (gLogCategory_SFSystemSession != -1 || _LogCategory_Initialize()))
      {
        __37__SFSystemSession__runSFSessionStart__block_invoke_2_cold_1(v7);
      }

      objc_storeStrong((*(a1 + 32) + 48), a2);
      *(*(a1 + 32) + 44) = 1;
      [*(a1 + 32) _run];
      goto LABEL_7;
    }

    if (gLogCategory_SFSystemSession <= 30)
    {
      v7 = 0;
      if (gLogCategory_SFSystemSession != -1 || (v4 = _LogCategory_Initialize(), v6 = 0, v4))
      {
        __37__SFSystemSession__runSFSessionStart__block_invoke_2_cold_2(v4, v6, v5);
LABEL_7:
        v6 = v7;
      }
    }
  }
}

- (void)_runPairVerifyStart
{
  sfSession = self->_sfSession;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__SFSystemSession__runPairVerifyStart__block_invoke;
  v3[3] = &unk_1E788B238;
  v3[4] = self;
  [(SFSession *)sfSession pairVerifyWithFlags:8 completion:v3];
}

void __38__SFSystemSession__runPairVerifyStart__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((*(*(a1 + 32) + 16) & 1) == 0)
  {
    v7 = v4;
    if (v4)
    {
      if (gLogCategory_SFSystemSession <= 60 && (gLogCategory_SFSystemSession != -1 || _LogCategory_Initialize()))
      {
        __38__SFSystemSession__runPairVerifyStart__block_invoke_cold_1(v7);
      }
    }

    else if (gLogCategory_SFSystemSession <= 30)
    {
      if (gLogCategory_SFSystemSession != -1 || (v4 = _LogCategory_Initialize(), v4))
      {
        __38__SFSystemSession__runPairVerifyStart__block_invoke_cold_2(v4, v5, v6);
      }
    }

    objc_storeStrong((*(a1 + 32) + 48), a2);
    *(*(a1 + 32) + 44) = 1;
    [*(a1 + 32) _run];
    v4 = v7;
  }
}

- (void)_processRequests
{
  p_currentRequest = &self->_currentRequest;
  if (!self->_currentRequest)
  {
    firstObject = [(NSMutableArray *)self->_requests firstObject];
    if (firstObject)
    {
      objc_storeStrong(p_currentRequest, firstObject);
      [(NSMutableArray *)self->_requests removeObjectAtIndex:0];
      sfSession = self->_sfSession;
      requestID = [firstObject requestID];
      options = [firstObject options];
      request = [firstObject request];
      v9 = request;
      if (request)
      {
        v10 = request;
      }

      else
      {
        v10 = MEMORY[0x1E695E0F8];
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __35__SFSystemSession__processRequests__block_invoke;
      v11[3] = &unk_1E7891360;
      v12 = firstObject;
      selfCopy = self;
      [(SFSession *)sfSession sendRequestID:requestID options:options request:v10 responseHandler:v11];
    }
  }
}

uint64_t __35__SFSystemSession__processRequests__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = [v7 responseHandler];
  (v11)[2](v11, v10, v9, v8);

  v12 = *(a1 + 40);
  v13 = v12[1];
  if (*(a1 + 32) == v13)
  {
    v12[1] = 0;

    v12 = *(a1 + 40);
  }

  return [v12 _run];
}

- (void)_processRequestsWithError:(id)error
{
  v16 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_requests;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        responseHandler = [*(*(&v11 + 1) + 8 * v9) responseHandler];
        (responseHandler)[2](responseHandler, errorCopy, 0, 0);

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_requests removeAllObjects];
}

- (void)getSystemInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (gLogCategory_SFSystemSession <= 30)
  {
    if (gLogCategory_SFSystemSession != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
    {
      [(SFSystemSession *)completionCopy getSystemInfoWithCompletion:v5, v6];
    }
  }

  v8 = objc_alloc_init(SFSessionRequestInfo);
  [(SFSessionRequestInfo *)v8 setRequestID:@"_getSysInfo"];
  if (self->_allowUnencrypted)
  {
    [(SFSessionRequestInfo *)v8 setOptions:&unk_1F1D7D7E0];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__SFSystemSession_getSystemInfoWithCompletion___block_invoke;
  v14[3] = &unk_1E7890D78;
  v15 = v7;
  v9 = v7;
  [(SFSessionRequestInfo *)v8 setResponseHandler:v14];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__SFSystemSession_getSystemInfoWithCompletion___block_invoke_2;
  block[3] = &unk_1E788A658;
  block[4] = self;
  v13 = v8;
  v11 = v8;
  dispatch_async(dispatchQueue, block);
}

uint64_t __47__SFSystemSession_getSystemInfoWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _run];
}

- (void)getProfilesWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (gLogCategory_SFSystemSession <= 30)
  {
    if (gLogCategory_SFSystemSession != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
    {
      [(SFSystemSession *)completionCopy getProfilesWithCompletion:v5, v6];
    }
  }

  v8 = objc_alloc_init(SFSessionRequestInfo);
  [(SFSessionRequestInfo *)v8 setRequestID:@"_profilesGet"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __45__SFSystemSession_getProfilesWithCompletion___block_invoke;
  v14[3] = &unk_1E788C728;
  v14[4] = self;
  v15 = v7;
  v9 = v7;
  [(SFSessionRequestInfo *)v8 setResponseHandler:v14];
  dispatchQueue = self->_dispatchQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__SFSystemSession_getProfilesWithCompletion___block_invoke_2;
  v12[3] = &unk_1E788A658;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  dispatch_async(dispatchQueue, v12);
}

uint64_t __45__SFSystemSession_getProfilesWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _run];
}

- (void)getProfilesResponse:(id)response error:(id)error completion:(id)completion
{
  responseCopy = response;
  completionCopy = completion;
  v8 = completionCopy;
  if (error)
  {
    (*(completionCopy + 2))(completionCopy, 0, error);
  }

  else
  {
    CFArrayGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if (v9)
    {
      (v8)[2](v8, v9, 0);
    }

    else
    {
      v10 = NSErrorWithOSStatusF(4294960584, "No error, but no profiles");
      (v8)[2](v8, 0, v10);
    }
  }
}

- (void)installProfileWithData:(id)data completion:(id)completion
{
  v24[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  completionCopy = completion;
  v22 = 0;
  v8 = NSDataCompress();
  v9 = 0;
  if (v8)
  {
    if (gLogCategory_SFSystemSession <= 30 && (gLogCategory_SFSystemSession != -1 || _LogCategory_Initialize()))
    {
      [SFSystemSession installProfileWithData:dataCopy completion:v8];
    }

    v10 = objc_alloc_init(SFSessionRequestInfo);
    [(SFSessionRequestInfo *)v10 setRequestID:@"_profileInstall"];
    v23 = @"profileData";
    v24[0] = v8;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    [(SFSessionRequestInfo *)v10 setRequest:v11];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __53__SFSystemSession_installProfileWithData_completion___block_invoke_2;
    v17[3] = &unk_1E788C728;
    v17[4] = self;
    v18 = completionCopy;
    [(SFSessionRequestInfo *)v10 setResponseHandler:v17];
    dispatchQueue = self->_dispatchQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__SFSystemSession_installProfileWithData_completion___block_invoke_3;
    v15[3] = &unk_1E788A658;
    v15[4] = self;
    v16 = v10;
    v13 = v10;
    dispatch_async(dispatchQueue, v15);
  }

  else
  {
    v14 = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__SFSystemSession_installProfileWithData_completion___block_invoke;
    block[3] = &unk_1E788B318;
    v21 = completionCopy;
    v20 = v9;
    dispatch_async(v14, block);

    v13 = v21;
  }
}

uint64_t __53__SFSystemSession_installProfileWithData_completion___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _run];
}

- (void)installProfileWithURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  v13 = 0;
  v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:l options:0 error:&v13];
  v8 = v13;
  if (v7)
  {
    [(SFSystemSession *)self installProfileWithData:v7 completion:completionCopy];
  }

  else
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__SFSystemSession_installProfileWithURL_completion___block_invoke;
    block[3] = &unk_1E788B318;
    v12 = completionCopy;
    v11 = v8;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)installProfileResponse:(id)response error:(id)error completion:(id)completion
{
  responseCopy = response;
  completionCopy = completion;
  v8 = completionCopy;
  if (error)
  {
    (*(completionCopy + 2))(completionCopy, 0, error);
  }

  else
  {
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if (v9)
    {
      (v8)[2](v8, v9, 0);
    }

    else
    {
      v10 = NSErrorWithOSStatusF(4294960584, "No error, but no identfier");
      (v8)[2](v8, 0, v10);
    }
  }
}

- (void)removeProfileWithIdentifier:(id)identifier completion:(id)completion
{
  v18[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  if (gLogCategory_SFSystemSession <= 30 && (gLogCategory_SFSystemSession != -1 || _LogCategory_Initialize()))
  {
    [SFSystemSession removeProfileWithIdentifier:identifierCopy completion:?];
  }

  v8 = objc_alloc_init(SFSessionRequestInfo);
  [(SFSessionRequestInfo *)v8 setRequestID:@"_profileRemove"];
  v17 = @"id";
  v18[0] = identifierCopy;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  [(SFSessionRequestInfo *)v8 setRequest:v9];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__SFSystemSession_removeProfileWithIdentifier_completion___block_invoke;
  v15[3] = &unk_1E7890D78;
  v16 = completionCopy;
  v10 = completionCopy;
  [(SFSessionRequestInfo *)v8 setResponseHandler:v15];
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__SFSystemSession_removeProfileWithIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E788A658;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  dispatch_async(dispatchQueue, v13);
}

uint64_t __58__SFSystemSession_removeProfileWithIdentifier_completion___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _run];
}

- (void)rebootSystemWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (gLogCategory_SFSystemSession <= 30)
  {
    if (gLogCategory_SFSystemSession != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
    {
      [(SFSystemSession *)completionCopy rebootSystemWithCompletion:v5, v6];
    }
  }

  v8 = objc_alloc_init(SFSessionRequestInfo);
  [(SFSessionRequestInfo *)v8 setRequestID:@"_rebootSystem"];
  [(SFSessionRequestInfo *)v8 setRequest:MEMORY[0x1E695E0F8]];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__SFSystemSession_rebootSystemWithCompletion___block_invoke;
  v12[3] = &unk_1E7890D78;
  v13 = v7;
  v9 = v7;
  [(SFSessionRequestInfo *)v8 setResponseHandler:v12];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SFSystemSession_rebootSystemWithCompletion___block_invoke_2;
  block[3] = &unk_1E788A658;
  block[4] = self;
  block[5] = v8;
  dispatch_async(dispatchQueue, block);
}

uint64_t __46__SFSystemSession_rebootSystemWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _run];
}

@end