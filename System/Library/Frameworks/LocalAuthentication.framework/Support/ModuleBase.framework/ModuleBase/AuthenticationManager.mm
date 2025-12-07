@interface AuthenticationManager
+ (id)sharedInstance;
- (AuthenticationManager)init;
- (BOOL)canStartAuthenticationWithPolicy:(int64_t)policy options:(id)options;
- (id)_cancelationErrorWithDescription:(id)description cancelledByHigherPriority:(BOOL)priority;
- (id)findMechanismForEvent:(int64_t)event mustBeRunning:(BOOL)running plugin:(id)plugin;
- (void)_clearAuthentication:(id)authentication;
- (void)_handleCompletionOfAuthentication:(id)authentication result:(id)result error:(id)error;
- (void)_runAuthentication:(id)authentication;
- (void)_runIdleBlocksNow;
- (void)authenticateForPolicy:(int64_t)policy constraintData:(id)data internalInfo:(id)info uiDelegate:(id)delegate originator:(id)originator request:(id)request mechanism:(id)mechanism reply:(id)self0;
- (void)cancelWithError:(id)error originatorId:(unint64_t)id reply:(id)reply;
- (void)runWhenIdle:(id)idle;
@end

@implementation AuthenticationManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[AuthenticationManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __39__AuthenticationManager_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (AuthenticationManager)init
{
  v6.receiver = self;
  v6.super_class = AuthenticationManager;
  v2 = [(AuthenticationManager *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    idleBlocks = v2->_idleBlocks;
    v2->_idleBlocks = v3;
  }

  return v2;
}

- (BOOL)canStartAuthenticationWithPolicy:(int64_t)policy options:(id)options
{
  if (!self->_runningAuthentication)
  {
    return 1;
  }

  v5 = AuthenticationPriorityForPolicy(policy, options);
  policy = [(AuthenticationInProgress *)self->_runningAuthentication policy];
  options = [(AuthenticationInProgress *)self->_runningAuthentication options];
  v8 = v5 >= AuthenticationPriorityForPolicy(policy, options);

  return v8;
}

- (void)authenticateForPolicy:(int64_t)policy constraintData:(id)data internalInfo:(id)info uiDelegate:(id)delegate originator:(id)originator request:(id)request mechanism:(id)mechanism reply:(id)self0
{
  infoCopy = info;
  replyCopy = reply;
  mechanismCopy = mechanism;
  requestCopy = request;
  originatorCopy = originator;
  delegateCopy = delegate;
  v20 = [[AuthenticationInProgress alloc] initWithMechanism:mechanismCopy policy:policy uiDelegate:delegateCopy originator:originatorCopy request:requestCopy internalInfo:infoCopy reply:replyCopy];

  if ([(AuthenticationInProgress *)self->_runningAuthentication shouldEnqueueAuthentication:v20])
  {
    [(AuthenticationInProgress *)self->_runningAuthentication enqueueAuthentication:v20];
    goto LABEL_15;
  }

  v21 = [infoCopy objectForKeyedSubscript:@"Options"];
  if ([(AuthenticationManager *)self canStartAuthenticationWithPolicy:policy options:v21])
  {
    v22 = 0;
  }

  else
  {
    v22 = [(AuthenticationInProgress *)self->_runningAuthentication description];
    v23 = [v21 objectForKeyedSubscript:&unk_284B7A8B0];
    bOOLValue = [v23 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Higher priority authentication already running: %@", v22];
      v30 = [(AuthenticationManager *)self _cancelationErrorWithDescription:v25 cancelledByHigherPriority:1];
      goto LABEL_13;
    }
  }

  v25 = [infoCopy objectForKeyedSubscript:@"InteractiveError"];
  if (!v25)
  {
    v26 = [v21 objectForKeyedSubscript:&unk_284B7A8B0];
    bOOLValue2 = [v26 BOOLValue];
    v25 = @"User interaction is required.";
    v28 = bOOLValue2 ? @"User interaction is required." : 0;
    v29 = v28;

    if (!bOOLValue2)
    {
      objc_storeStrong(&self->_pendingAuthentication, v20);
      if ([(AuthenticationInProgress *)self->_runningAuthentication isRunning])
      {
        policy = [(AuthenticationInProgress *)self->_runningAuthentication policy];
        options = [(AuthenticationInProgress *)self->_runningAuthentication options];
        v34 = AuthenticationPriorityForPolicy(policy, options);
        policy2 = [(AuthenticationInProgress *)v20 policy];
        options2 = [(AuthenticationInProgress *)v20 options];
        v37 = v34 < AuthenticationPriorityForPolicy(policy2, options2);

        mechanism = [(AuthenticationInProgress *)self->_runningAuthentication mechanism];
        v39 = [(AuthenticationManager *)self _cancelationErrorWithDescription:@"Canceled by another authentication." cancelledByHigherPriority:v37];
        [mechanism finishRunWithResult:0 error:v39];
      }

      [(AuthenticationManager *)self _runAuthentication:v20];
      goto LABEL_14;
    }
  }

  v30 = [MEMORY[0x277CD47F0] errorWithCode:-1004 message:v25];
LABEL_13:
  v31 = v30;
  replyCopy[2](replyCopy, 0, v30);

LABEL_14:
LABEL_15:
}

- (void)_runAuthentication:(id)authentication
{
  v27 = *MEMORY[0x277D85DE8];
  authenticationCopy = authentication;
  v6 = LA_LOG_AuthenticationManager(authenticationCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    runningAuthentication = self->_runningAuthentication;
    *buf = 138543618;
    v24 = authenticationCopy;
    v25 = 2114;
    v26 = runningAuthentication;
    _os_log_impl(&dword_238BBF000, v6, OS_LOG_TYPE_DEFAULT, "Started: %{public}@, replaced: %{public}@", buf, 0x16u);
  }

  if (self->_pendingAuthentication == authenticationCopy)
  {
    objc_storeStrong(&self->_runningAuthentication, authentication);
    pendingAuthentication = self->_pendingAuthentication;
    self->_pendingAuthentication = 0;

    objc_initWeak(buf, self);
    v19 = self->_runningAuthentication;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __44__AuthenticationManager__runAuthentication___block_invoke;
    v20[3] = &unk_278A64670;
    objc_copyWeak(&v22, buf);
    v21 = authenticationCopy;
    [(AuthenticationInProgress *)v19 runWithCompletionHandler:v20];

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  else
  {
    v9 = LA_LOG_AuthenticationManager(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_pendingAuthentication;
      *buf = 138543618;
      v24 = authenticationCopy;
      v25 = 2114;
      v26 = v10;
      _os_log_impl(&dword_238BBF000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ was canceled while pending, replaced by %{public}@.", buf, 0x16u);
    }

    if (self->_pendingAuthentication)
    {
      policy = [(AuthenticationInProgress *)authenticationCopy policy];
      options = [(AuthenticationInProgress *)authenticationCopy options];
      v13 = AuthenticationPriorityForPolicy(policy, options);
      policy2 = [(AuthenticationInProgress *)self->_pendingAuthentication policy];
      options2 = [(AuthenticationInProgress *)self->_pendingAuthentication options];
      v16 = v13 < AuthenticationPriorityForPolicy(policy2, options2);

      [(AuthenticationManager *)self _cancelationErrorWithDescription:@"Canceled by another authentication." cancelledByHigherPriority:v16];
    }

    else
    {
      [(AuthenticationManager *)self _invalidationError];
    }
    v17 = ;
    [(AuthenticationInProgress *)authenticationCopy cancelWithError:v17];
  }
}

void __44__AuthenticationManager__runAuthentication___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleCompletionOfAuthentication:*(a1 + 32) result:v8 error:v5];
  }
}

- (void)_handleCompletionOfAuthentication:(id)authentication result:(id)result error:(id)error
{
  authenticationCopy = authentication;
  resultCopy = result;
  errorCopy = error;
  v11 = LA_LOG_AuthenticationManager(errorCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [AuthenticationManager _handleCompletionOfAuthentication:v11 result:? error:?];
  }

  if (self->_completionHandler)
  {
    v12 = MEMORY[0x23EE740C0]();
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;

    v12[2](v12);
  }

  enqueuedAuthentication = [(AuthenticationInProgress *)self->_runningAuthentication enqueuedAuthentication];
  v15 = enqueuedAuthentication;
  if (enqueuedAuthentication)
  {
    v16 = [enqueuedAuthentication shouldDequeueAndRunAfterAuthentication:self->_runningAuthentication result:resultCopy error:errorCopy];
    if (!v16)
    {
      objc_storeStrong(&self->_pendingAuthentication, v15);
      [(AuthenticationManager *)self _runAuthentication:v15];
      goto LABEL_10;
    }

    v17 = v16;
    [v15 cancelWithError:v16];
  }

  objc_initWeak(&location, self);
  mEMORY[0x277CD47C8] = [MEMORY[0x277CD47C8] sharedInstance];
  serverQueue = [mEMORY[0x277CD47C8] serverQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__AuthenticationManager__handleCompletionOfAuthentication_result_error___block_invoke;
  block[3] = &unk_278A64698;
  objc_copyWeak(&v22, &location);
  v21 = authenticationCopy;
  dispatch_async(serverQueue, block);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
LABEL_10:
}

void __72__AuthenticationManager__handleCompletionOfAuthentication_result_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _clearAuthentication:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_clearAuthentication:(id)authentication
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_runningAuthentication == authentication)
  {
    v4 = LA_LOG_AuthenticationManager(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      runningAuthentication = self->_runningAuthentication;
      v7 = 138543362;
      v8 = runningAuthentication;
      _os_log_impl(&dword_238BBF000, v4, OS_LOG_TYPE_DEFAULT, "clearing authentication: %{public}@", &v7, 0xCu);
    }

    v6 = self->_runningAuthentication;
    self->_runningAuthentication = 0;

    [(AuthenticationManager *)self _runIdleBlocks];
  }
}

- (id)_cancelationErrorWithDescription:(id)description cancelledByHigherPriority:(BOOL)priority
{
  priorityCopy = priority;
  v19[2] = *MEMORY[0x277D85DE8];
  descriptionCopy = @"Canceled by another authentication.";
  if (description)
  {
    descriptionCopy = description;
  }

  v7 = MEMORY[0x277D24060];
  v8 = *MEMORY[0x277D23E90];
  v9 = *MEMORY[0x277D23EC0];
  v10 = *MEMORY[0x277D23E70];
  v18[0] = *MEMORY[0x277CCA068];
  v18[1] = v10;
  v19[0] = descriptionCopy;
  v11 = MEMORY[0x277CCABB0];
  v12 = descriptionCopy;
  descriptionCopy2 = description;
  v14 = [v11 numberWithBool:priorityCopy];
  v19[1] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v16 = [v7 errorWithCode:v8 subcode:v9 userInfo:v15];

  return v16;
}

- (void)cancelWithError:(id)error originatorId:(unint64_t)id reply:(id)reply
{
  v26 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  replyCopy = reply;
  runningAuthentication = self->_runningAuthentication;
  if (runningAuthentication && [(AuthenticationInProgress *)runningAuthentication originatorId]== id)
  {
    v11 = self->_runningAuthentication;
    v12 = v11;
    if (!v11)
    {
LABEL_15:
      if (replyCopy)
      {
        replyCopy[2](replyCopy);
      }

      v12 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    pendingAuthentication = self->_pendingAuthentication;
    if (!pendingAuthentication)
    {
      goto LABEL_15;
    }

    if ([(AuthenticationInProgress *)pendingAuthentication originatorId]!= id)
    {
      goto LABEL_15;
    }

    v12 = self->_pendingAuthentication;
    v14 = self->_pendingAuthentication;
    self->_pendingAuthentication = 0;

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  v15 = LA_LOG_AuthenticationManager(v11);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (v12 == self->_runningAuthentication)
    {
      v16 = "running";
    }

    else
    {
      v16 = "pending";
    }

    mechanism = [(AuthenticationInProgress *)v12 mechanism];
    v20 = 136446722;
    v21 = v16;
    v22 = 2114;
    v23 = v12;
    v24 = 2114;
    v25 = mechanism;
    _os_log_impl(&dword_238BBF000, v15, OS_LOG_TYPE_DEFAULT, "canceling %{public}s authentication: %{public}@ mechanism: %{public}@", &v20, 0x20u);
  }

  if ([(AuthenticationInProgress *)v12 isRunning])
  {
    v18 = MEMORY[0x23EE740C0](replyCopy);
    completionHandler = self->_completionHandler;
    self->_completionHandler = v18;

    [(AuthenticationInProgress *)v12 cancelWithError:errorCopy];
  }

  else
  {
    [(AuthenticationInProgress *)v12 cancelWithError:errorCopy];
    if (replyCopy)
    {
      replyCopy[2](replyCopy);
    }
  }

LABEL_18:
}

- (void)runWhenIdle:(id)idle
{
  v14 = *MEMORY[0x277D85DE8];
  idleCopy = idle;
  v5 = LA_LOG_AuthenticationManager(idleCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NSMutableArray *)self->_idleBlocks count];
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = v6;
    _os_log_impl(&dword_238BBF000, v5, OS_LOG_TYPE_DEFAULT, "biometry is now idle, %u blocks in queue", &buf, 8u);
  }

  idleBlocks = self->_idleBlocks;
  v8 = MEMORY[0x23EE740C0](idleCopy);
  [(NSMutableArray *)idleBlocks addObject:v8];

  if (!self->_runningAuthentication)
  {
    objc_initWeak(&buf, self);
    mEMORY[0x277CD47C8] = [MEMORY[0x277CD47C8] sharedInstance];
    serverQueue = [mEMORY[0x277CD47C8] serverQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__AuthenticationManager_runWhenIdle___block_invoke;
    block[3] = &unk_278A64600;
    objc_copyWeak(&v12, &buf);
    dispatch_async(serverQueue, block);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&buf);
  }
}

void __37__AuthenticationManager_runWhenIdle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _runIdleBlocks];
    WeakRetained = v2;
  }
}

- (void)_runIdleBlocksNow
{
  v16 = *MEMORY[0x277D85DE8];
  *&v2 = 136315650;
  v9 = v2;
  do
  {
    v4 = [(NSMutableArray *)self->_idleBlocks count];
    if (!v4)
    {
      break;
    }

    v5 = LA_LOG_AuthenticationManager(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSMutableArray count](self->_idleBlocks, "count")}];
      *buf = v9;
      v11 = "[AuthenticationManager _runIdleBlocksNow]";
      v12 = 2114;
      v13 = v6;
      v14 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_238BBF000, v5, OS_LOG_TYPE_DEFAULT, "%s %{public}@ block(s) in queue on %@", buf, 0x20u);
    }

    v7 = [(NSMutableArray *)self->_idleBlocks objectAtIndexedSubscript:0];
    [(NSMutableArray *)self->_idleBlocks removeObjectAtIndex:0];
    v7[2](v7);
    runningAuthentication = self->_runningAuthentication;
  }

  while (!runningAuthentication);
}

- (id)findMechanismForEvent:(int64_t)event mustBeRunning:(BOOL)running plugin:(id)plugin
{
  runningCopy = running;
  v21 = *MEMORY[0x277D85DE8];
  pluginCopy = plugin;
  runningAuthentication = [(AuthenticationManager *)self runningAuthentication];
  mechanism = [runningAuthentication mechanism];
  v11 = [mechanism findMechanismWithEventIdentifier:event];

  if (!v11)
  {
    v15 = LA_LOG_AuthenticationManager(isRunning);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 67109120;
      LODWORD(v20) = event;
      _os_log_impl(&dword_238BBF000, v15, OS_LOG_TYPE_DEFAULT, "No mechanism found for event %d", &v19, 8u);
    }

    goto LABEL_17;
  }

  if (runningCopy)
  {
    isRunning = [v11 isRunning];
    if ((isRunning & 1) == 0)
    {
      v14 = LA_LOG_AuthenticationManager(isRunning);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138543362;
        v20 = v11;
        _os_log_impl(&dword_238BBF000, v14, OS_LOG_TYPE_DEFAULT, "Found %{public}@ but it's not running", &v19, 0xCu);
      }

      goto LABEL_16;
    }
  }

  if (pluginCopy)
  {
    cachedExternalizationDelegate = [v11 cachedExternalizationDelegate];

    if (cachedExternalizationDelegate != pluginCopy)
    {
      v14 = LA_LOG_AuthenticationManager(isRunning);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [AuthenticationManager findMechanismForEvent:v11 mustBeRunning:pluginCopy plugin:v14];
      }

LABEL_16:

LABEL_17:
      v17 = 0;
      goto LABEL_18;
    }
  }

  v16 = LA_LOG_AuthenticationManager(isRunning);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [AuthenticationManager findMechanismForEvent:v11 mustBeRunning:v16 plugin:?];
  }

  v17 = v11;
LABEL_18:

  return v17;
}

- (void)_handleCompletionOfAuthentication:(uint64_t)a1 result:(NSObject *)a2 error:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&dword_238BBF000, a2, OS_LOG_TYPE_DEBUG, "authentication completed: %{public}@", &v3, 0xCu);
}

- (void)findMechanismForEvent:(uint64_t)a1 mustBeRunning:(uint64_t)a2 plugin:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_238BBF000, log, OS_LOG_TYPE_ERROR, "Found %{public}@ but it does not belong to %{public}@", &v3, 0x16u);
}

- (void)findMechanismForEvent:(uint64_t)a1 mustBeRunning:(NSObject *)a2 plugin:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_238BBF000, a2, OS_LOG_TYPE_DEBUG, "Found %{public}@", &v2, 0xCu);
}

@end