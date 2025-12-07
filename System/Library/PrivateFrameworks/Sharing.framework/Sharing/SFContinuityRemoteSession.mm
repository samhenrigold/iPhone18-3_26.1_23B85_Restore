@interface SFContinuityRemoteSession
- (SFContinuityRemoteSession)init;
- (void)_cleanup;
- (void)_run;
- (void)_sendCommand:(int)command options:(id)options;
- (void)_sendQueuedMesssages;
- (void)_sfSessionStart;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)sendCommand:(int)command;
- (void)sendCommand:(int)command options:(id)options;
@end

@implementation SFContinuityRemoteSession

- (SFContinuityRemoteSession)init
{
  v6.receiver = self;
  v6.super_class = SFContinuityRemoteSession;
  v2 = [(SFContinuityRemoteSession *)&v6 init];
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
    [(SFContinuityRemoteSession *)v3 _cleanup];
  }

  else
  {
    [(SFContinuityRemoteSession *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SFContinuityRemoteSession;
    [(SFContinuityRemoteSession *)&v5 dealloc];
  }
}

- (void)_cleanup
{
  activateHandler = self->_activateHandler;
  self->_activateHandler = 0;

  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = 0;

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__SFContinuityRemoteSession_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E788B210;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __52__SFContinuityRemoteSession_activateWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFContinuityRemoteSession <= 30)
  {
    if (gLogCategory_SFContinuityRemoteSession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __52__SFContinuityRemoteSession_activateWithCompletion___block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 8) = 1;
  v4 = _Block_copy(*(v3 + 40));
  v5 = *(v3 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = v4;

  v7 = *(v3 + 32);

  return [v7 _run];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SFContinuityRemoteSession_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __39__SFContinuityRemoteSession_invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v18[1] = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 24) & 1) == 0 && gLogCategory_SFContinuityRemoteSession <= 30)
  {
    if (gLogCategory_SFContinuityRemoteSession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __39__SFContinuityRemoteSession_invalidate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 24) = 1;
  [*(*(v3 + 32) + 48) invalidate];
  v4 = *(v3 + 32);
  v5 = *(v4 + 48);
  *(v4 + 48) = 0;

  *(*(v3 + 32) + 56) = 0;
  v6 = *(v3 + 32);
  v7 = v6[2];
  if (v7)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A768];
    v17 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v11 = v10;
    v12 = @"?";
    if (v10)
    {
      v12 = v10;
    }

    v18[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v14 = [v8 errorWithDomain:v9 code:-6723 userInfo:v13];
    (*(v7 + 16))(v7, v14);

    v6 = *(v3 + 32);
  }

  v15 = v6[10];
  if (v15)
  {
    (*(v15 + 16))(v6[10]);
    v6 = *(v3 + 32);
  }

  return [v6 _cleanup];
}

- (void)_run
{
  if (gLogCategory_SFContinuityRemoteSession <= 30 && (gLogCategory_SFContinuityRemoteSession != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2_1(&gLogCategory_SFContinuityRemoteSession, "[SFContinuityRemoteSession _run]", a3, "PairVerify not done yet\n");
  }
}

void __33__SFContinuityRemoteSession__run__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 41) = 0;
  v4 = *(*(a1 + 32) + 16);
  v7 = v3;
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = 0;

    v3 = v7;
  }

  if (!v3)
  {
    *(*(a1 + 32) + 40) = 1;
    [*(a1 + 32) _run];
    v3 = v7;
  }
}

- (void)_sfSessionStart
{
  selfCopy = self;
  if (gLogCategory_SFContinuityRemoteSession <= 30)
  {
    if (gLogCategory_SFContinuityRemoteSession != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFContinuityRemoteSession *)self _sfSessionStart];
    }
  }

  [(SFSession *)selfCopy->_sfSession invalidate];
  v4 = objc_alloc_init(SFSession);
  sfSession = selfCopy->_sfSession;
  selfCopy->_sfSession = v4;

  [(SFSession *)selfCopy->_sfSession setDispatchQueue:selfCopy->_dispatchQueue];
  [(SFSession *)selfCopy->_sfSession setPeerDevice:selfCopy->_peerDevice];
  [(SFSession *)selfCopy->_sfSession setServiceIdentifier:@"com.apple.sharing.ContinuityRemote"];
  [(SFSession *)selfCopy->_sfSession setReceivedObjectHandler:&__block_literal_global_38];
  v6 = selfCopy->_sfSession;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SFContinuityRemoteSession__sfSessionStart__block_invoke_2;
  v7[3] = &unk_1E788B238;
  v7[4] = selfCopy;
  [(SFSession *)v6 activateWithCompletion:v7];
}

void __44__SFContinuityRemoteSession__sfSessionStart__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (gLogCategory_SFContinuityRemoteSession <= 30)
  {
    v7 = v4;
    if (gLogCategory_SFContinuityRemoteSession != -1 || (v6 = _LogCategory_Initialize(), v5 = v7, v6))
    {
      __44__SFContinuityRemoteSession__sfSessionStart__block_invoke_cold_1(v5, a2);
      v5 = v7;
    }
  }
}

void __44__SFContinuityRemoteSession__sfSessionStart__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (!v3)
  {
    v7 = 0;
    if (gLogCategory_SFContinuityRemoteSession <= 30)
    {
      if (gLogCategory_SFContinuityRemoteSession != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        __44__SFContinuityRemoteSession__sfSessionStart__block_invoke_2_cold_2(v3, v5, v4);
      }
    }

    *(*(a1 + 32) + 56) = 1;
    [*(a1 + 32) _run];
    goto LABEL_10;
  }

  if (gLogCategory_SFContinuityRemoteSession <= 90)
  {
    v7 = v3;
    if (gLogCategory_SFContinuityRemoteSession != -1 || (v6 = _LogCategory_Initialize(), v5 = v7, v6))
    {
      __44__SFContinuityRemoteSession__sfSessionStart__block_invoke_2_cold_1(v5);
LABEL_10:
      v5 = v7;
    }
  }
}

- (void)sendCommand:(int)command
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__SFContinuityRemoteSession_sendCommand___block_invoke;
  v4[3] = &unk_1E788D970;
  v4[4] = self;
  commandCopy = command;
  dispatch_async(dispatchQueue, v4);
}

- (void)sendCommand:(int)command options:(id)options
{
  optionsCopy = options;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__SFContinuityRemoteSession_sendCommand_options___block_invoke;
  block[3] = &unk_1E788EC90;
  commandCopy = command;
  block[4] = self;
  v10 = optionsCopy;
  v8 = optionsCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_sendCommand:(int)command options:(id)options
{
  v4 = *&command;
  v6 = [options mutableCopy];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v11 = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithInt:v4];
  [v11 setObject:v7 forKeyedSubscript:@"c"];

  messageQueue = self->_messageQueue;
  if (!messageQueue)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = self->_messageQueue;
    self->_messageQueue = v9;

    messageQueue = self->_messageQueue;
  }

  [(NSMutableArray *)messageQueue addObject:v11];
  [(SFContinuityRemoteSession *)self _sendQueuedMesssages];
}

- (void)_sendQueuedMesssages
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_sfSessionActivated)
  {
    firstObject = [(NSMutableArray *)self->_messageQueue firstObject];
    if (firstObject)
    {
      firstObject2 = firstObject;
      do
      {
        [(NSMutableArray *)self->_messageQueue removeObjectAtIndex:0];
        [(SFSession *)self->_sfSession sendWithFlags:1 object:firstObject2];

        firstObject2 = [(NSMutableArray *)self->_messageQueue firstObject];
      }

      while (firstObject2);
    }
  }
}

@end