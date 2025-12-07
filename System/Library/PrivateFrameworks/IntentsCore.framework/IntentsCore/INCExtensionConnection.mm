@interface INCExtensionConnection
+ (void)initialize;
- (BOOL)_cancelRequestTimer;
- (BOOL)_carPlayIsActive;
- (BOOL)_carPlaySupportsVideoPlayback;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)requiresTCC;
- (BOOL)requiresTrustCheck;
- (INCExtensionConnection)initWithIntent:(id)intent supportedExtensionTypes:(int64_t)types donateInteraction:(BOOL)interaction groupIdentifier:(id)identifier remoteProxyProvider:(id)provider;
- (double)_timeoutIntervalForTransactionState:(id)state;
- (id)xpcListenerEndpointWithInterface:(id)interface object:(id)object;
- (void)_invalidateAssertions;
- (void)_invalidateDisplayLayoutMonitor;
- (void)_invalidateInUseAssertion;
- (void)_invalidateRunningBoardAssertion;
- (void)_setShouldObserveLayout:(BOOL)layout;
- (void)_startRequestTimerWithExtensionProxy:(id)proxy;
- (void)_takeAssertionsForIntent:(id)intent extensionBundleIdentifier:(id)identifier processIdentifier:(int)processIdentifier;
- (void)_takeInUseAssertionForIntent:(id)intent extensionBundleIdentifier:(id)identifier;
- (void)_takeRunningBoardAssertionForProcessIdentifier:(int)identifier;
- (void)dealloc;
- (void)reset;
- (void)resumeWithCompletionHandler:(id)handler;
- (void)setIntent:(id)intent;
- (void)setRequiresTCC:(BOOL)c;
- (void)setRequiresTrustCheck:(BOOL)check;
@end

@implementation INCExtensionConnection

- (void)_invalidateDisplayLayoutMonitor
{
  os_unfair_lock_lock(&self->_displayLayoutMonitorLock);
  [(FBSDisplayLayoutMonitor *)self->_displayLayoutMonitor invalidate];
  displayLayoutMonitor = self->_displayLayoutMonitor;
  self->_displayLayoutMonitor = 0;

  os_unfair_lock_unlock(&self->_displayLayoutMonitorLock);
}

- (BOOL)_cancelRequestTimer
{
  v14 = *MEMORY[0x277D85DE8];
  requestTimer = self->_requestTimer;
  if (requestTimer && ([(INWatchdogTimer *)requestTimer cancelIfNotAlreadyCanceled]& 1) == 0)
  {
    v5 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v8 = v5;
      intent = [(INCExtensionConnection *)self intent];
      v10 = 136315394;
      v11 = "[INCExtensionConnection _cancelRequestTimer]";
      v12 = 2112;
      v13 = intent;
      _os_log_error_impl(&dword_255503000, v8, OS_LOG_TYPE_ERROR, "%s Intent handling already timed out, ignoring extension response for intent %@", &v10, 0x16u);
    }

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = self->_requestTimer;
  self->_requestTimer = 0;

  [(INCExtensionConnection *)self _setShouldObserveLayout:0];
  return v4;
}

- (void)dealloc
{
  [(INCExtensionConnection *)self _invalidateDisplayLayoutMonitor];
  [(INCExtensionConnection *)self _invalidateAssertions];
  v3.receiver = self;
  v3.super_class = INCExtensionConnection;
  [(INCExtensionConnection *)&v3 dealloc];
}

- (void)_invalidateAssertions
{
  [(INCExtensionConnection *)self _invalidateInUseAssertion];

  [(INCExtensionConnection *)self _invalidateRunningBoardAssertion];
}

- (void)_invalidateRunningBoardAssertion
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(RBSAssertion *)self->_processAssertion isValid])
  {
    processAssertion = self->_processAssertion;
    v7 = 0;
    v4 = [(RBSAssertion *)processAssertion invalidateWithError:&v7];
    v5 = v7;
    if ((v4 & 1) == 0)
    {
      v6 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v9 = "[INCExtensionConnection _invalidateRunningBoardAssertion]";
        v10 = 2114;
        v11 = v5;
        _os_log_error_impl(&dword_255503000, v6, OS_LOG_TYPE_ERROR, "%s Failed to invalidate process assertion: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v5 = 0;
  }
}

- (void)_invalidateInUseAssertion
{
  backgroundHandlingAssertion = self->_backgroundHandlingAssertion;
  if (backgroundHandlingAssertion)
  {
    [(INIntentBackgroundHandlingAssertion *)backgroundHandlingAssertion invalidate];
    v4 = self->_backgroundHandlingAssertion;
    self->_backgroundHandlingAssertion = 0;
  }
}

- (void)reset
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__INCExtensionConnection_reset__block_invoke;
  block[3] = &unk_2797E7910;
  block[4] = self;
  dispatch_async(queue, block);
}

void __31__INCExtensionConnection_reset__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateDisplayLayoutMonitor];
  v2 = [*(a1 + 32) _transaction];
  v3 = [v2 request];

  [v3 reset];
  [*(a1 + 32) _invalidateAssertions];
  [*(*(a1 + 32) + 24) cancel];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  if (self->_xpcListener == listenerCopy && self->_xpcInterface)
  {
    [(INCExtensionConnection *)self setXPCConnection:connectionCopy];
    objc_initWeak(&location, self);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __61__INCExtensionConnection_listener_shouldAcceptNewConnection___block_invoke;
    v13 = &unk_2797E79A8;
    objc_copyWeak(&v14, &location);
    [connectionCopy setInvalidationHandler:&v10];
    [connectionCopy setExportedInterface:{self->_xpcInterface, v10, v11, v12, v13}];
    [connectionCopy setExportedObject:self->_xpcObject];
    [connectionCopy resume];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __61__INCExtensionConnection_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setXPCInterface:0];
}

- (void)_takeRunningBoardAssertionForProcessIdentifier:(int)identifier
{
  v3 = *&identifier;
  v18[1] = *MEMORY[0x277D85DE8];
  [(INCExtensionConnection *)self _invalidateRunningBoardAssertion];
  v5 = [MEMORY[0x277D47008] targetWithPid:v3];
  v6 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.siri" name:@"IntentStartupGrant"];
  v18[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];

  v8 = [objc_alloc(MEMORY[0x277D46DB8]) initWithExplanation:@"Delivering an intent to an extension" target:v5 attributes:v7];
  processAssertion = self->_processAssertion;
  self->_processAssertion = v8;

  v10 = self->_processAssertion;
  v13 = 0;
  LOBYTE(v6) = [(RBSAssertion *)v10 acquireWithError:&v13];
  v11 = v13;
  if ((v6 & 1) == 0)
  {
    v12 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "[INCExtensionConnection _takeRunningBoardAssertionForProcessIdentifier:]";
      v16 = 2114;
      v17 = v11;
      _os_log_error_impl(&dword_255503000, v12, OS_LOG_TYPE_ERROR, "%s Failed to acquire assertion: %{public}@", buf, 0x16u);
    }
  }
}

- (void)_takeInUseAssertionForIntent:(id)intent extensionBundleIdentifier:(id)identifier
{
  v14 = *MEMORY[0x277D85DE8];
  if (!self->_backgroundHandlingAssertion)
  {
    v9 = 0;
    v5 = [intent _intents_backgroundHandlingAssertionForBundleIdentifier:identifier context:1 error:&v9];
    v6 = v9;
    backgroundHandlingAssertion = self->_backgroundHandlingAssertion;
    self->_backgroundHandlingAssertion = v5;

    if (v6)
    {
      v8 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v11 = "[INCExtensionConnection _takeInUseAssertionForIntent:extensionBundleIdentifier:]";
        v12 = 2114;
        v13 = v6;
        _os_log_error_impl(&dword_255503000, v8, OS_LOG_TYPE_ERROR, "%s Error acquiring background assertion: %{public}@", buf, 0x16u);
      }
    }
  }
}

- (void)_takeAssertionsForIntent:(id)intent extensionBundleIdentifier:(id)identifier processIdentifier:(int)processIdentifier
{
  v5 = *&processIdentifier;
  v15 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  identifierCopy = identifier;
  if (v5)
  {
    [(INCExtensionConnection *)self _takeInUseAssertionForIntent:intentCopy extensionBundleIdentifier:identifierCopy];
    [(INCExtensionConnection *)self _takeRunningBoardAssertionForProcessIdentifier:v5];
  }

  else
  {
    v10 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[INCExtensionConnection _takeAssertionsForIntent:extensionBundleIdentifier:processIdentifier:]";
      v13 = 2114;
      v14 = identifierCopy;
    }
  }
}

- (double)_timeoutIntervalForTransactionState:(id)state
{
  stateCopy = state;
  requestTimeoutInterval = self->_requestTimeoutInterval;
  intent = [stateCopy intent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    type = [stateCopy type];

    if (type == 4)
    {
      requestTimeoutInterval = 60.0;
      goto LABEL_14;
    }
  }

  else
  {
  }

  intent2 = [stateCopy intent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    type2 = [stateCopy type];

    if (type2 == 4)
    {
      requestTimeoutInterval = 300.0;
      goto LABEL_14;
    }
  }

  else
  {
  }

  intent3 = [stateCopy intent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    type3 = [stateCopy type];

    if (type3 == 4)
    {
      requestTimeoutInterval = 180.0;
    }
  }

  else
  {
  }

LABEL_14:

  return requestTimeoutInterval;
}

- (BOOL)_carPlaySupportsVideoPlayback
{
  currentSession = [(CARSessionStatus *)self->_carSessionStatus currentSession];

  if (!currentSession)
  {
    return 0;
  }

  currentSession2 = [(CARSessionStatus *)self->_carSessionStatus currentSession];
  configuration = [currentSession2 configuration];
  videoPlaybackSupported = [configuration videoPlaybackSupported];

  return videoPlaybackSupported;
}

- (BOOL)_carPlayIsActive
{
  currentSession = [(CARSessionStatus *)self->_carSessionStatus currentSession];
  v3 = currentSession != 0;

  return v3;
}

- (void)_startRequestTimerWithExtensionProxy:(id)proxy
{
  v26 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  requestTimer = self->_requestTimer;
  if (requestTimer)
  {
    if ([(INWatchdogTimer *)requestTimer cancelIfNotAlreadyCanceled])
    {
      v6 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v23 = "[INCExtensionConnection _startRequestTimerWithExtensionProxy:]";
        _os_log_impl(&dword_255503000, v6, OS_LOG_TYPE_INFO, "%s Cancelling request timer from previous request", buf, 0xCu);
      }
    }
  }

  if ([proxyCopy _isExtensionBeingDebugged])
  {
    v7 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      intent = [(INCExtensionConnection *)self intent];
      *buf = 136315394;
      v23 = "[INCExtensionConnection _startRequestTimerWithExtensionProxy:]";
      v24 = 2112;
      v25 = intent;
      _os_log_impl(&dword_255503000, v8, OS_LOG_TYPE_INFO, "%s Waiting indefinitely for intent: %@", buf, 0x16u);
    }
  }

  else
  {
    _transaction = [(INCExtensionConnection *)self _transaction];
    state = [_transaction state];
    [(INCExtensionConnection *)self _timeoutIntervalForTransactionState:state];
    v13 = v12;

    objc_initWeak(buf, self);
    v14 = objc_alloc(MEMORY[0x277CD4300]);
    queue = self->_queue;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __63__INCExtensionConnection__startRequestTimerWithExtensionProxy___block_invoke;
    v18[3] = &unk_2797E7980;
    objc_copyWeak(&v21, buf);
    v19 = proxyCopy;
    selfCopy = self;
    v16 = [v14 initWithTimeoutInterval:queue onQueue:v18 timeoutHandler:v13];
    v17 = self->_requestTimer;
    self->_requestTimer = v16;

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  [(INWatchdogTimer *)self->_requestTimer start];
  [(INCExtensionConnection *)self _setShouldObserveLayout:1];
}

void __63__INCExtensionConnection__startRequestTimerWithExtensionProxy___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v2 = [a1[4] _vendorRemote];
  v3 = [a1[5] intent];
  v4 = [v3 identifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_28676AF00;
  }

  [v2 cancelTransactionDueToTimeoutWithIntentIdentifier:v6 completion:&__block_literal_global_466];

  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _invalidateAssertions];
    [WeakRetained _setShouldObserveLayout:0];
    v8 = WeakRetained;
    v9 = WeakRetained[15];
    if (v9)
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"INCExtensionErrorDomain" code:1307 userInfo:0];
      (*(v9 + 16))(v9, v10);

      v8 = WeakRetained;
    }

    v11 = v8[3];
    v8[3] = 0;

    v7 = WeakRetained;
  }
}

- (void)_setShouldObserveLayout:(BOOL)layout
{
  if (self->_shouldObserveLayout != layout)
  {
    self->_shouldObserveLayout = layout;
    [(INCExtensionConnection *)self _invalidateDisplayLayoutMonitor];
    if (self->_shouldObserveLayout)
    {
      os_unfair_lock_lock(&self->_displayLayoutMonitorLock);
      configurationForDefaultMainDisplayMonitor = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
      objc_initWeak(&location, self);
      v7 = MEMORY[0x277D85DD0];
      v8 = 3221225472;
      v9 = __50__INCExtensionConnection__setShouldObserveLayout___block_invoke;
      v10 = &unk_2797E7938;
      objc_copyWeak(&v11, &location);
      [configurationForDefaultMainDisplayMonitor setTransitionHandler:&v7];
      v5 = [MEMORY[0x277D0AD08] monitorWithConfiguration:{configurationForDefaultMainDisplayMonitor, v7, v8, v9, v10}];
      displayLayoutMonitor = self->_displayLayoutMonitor;
      self->_displayLayoutMonitor = v5;

      os_unfair_lock_unlock(&self->_displayLayoutMonitorLock);
      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }
}

void __50__INCExtensionConnection__setShouldObserveLayout___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[2] updateDisplayLayout:v6];
  }
}

- (id)xpcListenerEndpointWithInterface:(id)interface object:(id)object
{
  objectCopy = object;
  [(INCExtensionConnection *)self setXPCInterface:interface];
  [(INCExtensionConnection *)self setXPCObject:objectCopy];

  xpcListener = self->_xpcListener;
  if (!xpcListener)
  {
    anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
    v9 = self->_xpcListener;
    self->_xpcListener = anonymousListener;

    [(NSXPCListener *)self->_xpcListener setDelegate:self];
    [(NSXPCListener *)self->_xpcListener resume];
    xpcListener = self->_xpcListener;
  }

  return [(NSXPCListener *)xpcListener endpoint];
}

- (void)resumeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__INCExtensionConnection_resumeWithCompletionHandler___block_invoke;
  v8[3] = &unk_2797E8068;
  v8[4] = self;
  v9 = handlerCopy;
  v6 = handlerCopy;
  v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, v8);
  dispatch_async(queue, v7);
}

void __54__INCExtensionConnection_resumeWithCompletionHandler___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _transaction];
  v3 = [v2 request];

  v4 = [v3 extensionInputItems];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [*(a1 + 32) extensionInputItems];
  }

  v40 = v6;

  v7 = [v3 extensionInputItems];

  if (!v7)
  {
    v8 = [*(a1 + 32) extensionInputItems];
    [v3 setExtensionInputItems:v8];
  }

  v9 = [*(a1 + 32) intent];
  v10 = MEMORY[0x277CD38C8];
  v11 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v53 = "[INCExtensionConnection resumeWithCompletionHandler:]_block_invoke";
    v54 = 2112;
    v55 = v9;
    _os_log_impl(&dword_255503000, v11, OS_LOG_TYPE_INFO, "%s Resuming connection for intent: %@", buf, 0x16u);
  }

  v12 = [*(a1 + 32) intent];
  v13 = [v12 extensionBundleId];

  if (([*(a1 + 32) supportedExtensionTypes] & 4) != 0)
  {
    v15 = +[INCLocalExtensionRegistry sharedInstance];
    v14 = [v15 localExtensionForIdentifier:v13];
  }

  else
  {
    v14 = 0;
  }

  v16 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
  {
    v17 = @"YES";
    if (!v14)
    {
      v17 = @"NO";
    }

    *buf = 136315394;
    v53 = "[INCExtensionConnection resumeWithCompletionHandler:]_block_invoke";
    v54 = 2112;
    v55 = v17;
    _os_log_impl(&dword_255503000, v16, OS_LOG_TYPE_INFO, "%s Local extension: %@", buf, 0x16u);
  }

  if (!v14)
  {
    if (([*(a1 + 32) supportedExtensionTypes] & 2) != 0)
    {
      v23 = +[INCExtensionPlugInBundleManager sharedManager];
      v24 = [*(a1 + 32) intent];
      v20 = [v23 extensionForIntent:v24];

      if (v20)
      {
        v25 = *v10;
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v53 = "[INCExtensionConnection resumeWithCompletionHandler:]_block_invoke";
          v54 = 2112;
          v55 = v20;
          v56 = 2112;
          v57 = v13;
          _os_log_impl(&dword_255503000, v25, OS_LOG_TYPE_INFO, "%s Found plug in bundle extension extension %@ for identifier: %@", buf, 0x20u);
        }

        v19 = v41;
        v22 = [objc_alloc(MEMORY[0x277CD4328]) initWithInputItems:v41 extension:v20];
        v26 = *(a1 + 40);
        if (v26)
        {
          v27 = [[INCExtensionProxy alloc] _initWithConnection:*(a1 + 32) extension:0 vendorRemote:v22 auditTokenValue:0];
          (*(v26 + 16))(v26, v27, 0);
        }

        goto LABEL_35;
      }
    }

    v28 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v53 = "[INCExtensionConnection resumeWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_255503000, v28, OS_LOG_TYPE_INFO, "%s Checking if the app can handle intent using in-app intent handling", buf, 0xCu);
    }

    v29 = [MEMORY[0x277CD3A68] appInfoWithIntent:v9];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __54__INCExtensionConnection_resumeWithCompletionHandler___block_invoke_53;
    v45[3] = &unk_2797E7D00;
    v46 = v9;
    v20 = v29;
    v47 = v20;
    v30 = *(a1 + 40);
    v31 = *(a1 + 32);
    v51 = v30;
    v48 = v31;
    v49 = v3;
    v19 = v41;
    v50 = v41;
    v32 = MEMORY[0x259C36E60](v45);
    if ([*(a1 + 32) appProtectionPolicy] != 1)
    {
      v33 = [*(a1 + 32) intent];
      v34 = [v33 didAuthenticateAppProtection];

      if ((v34 & 1) == 0)
      {
        v35 = MEMORY[0x277CEBE80];
        v36 = [(__CFString *)v20 applicationIdentifier];
        v37 = [v35 applicationWithBundleIdentifier:v36];

        if ([v37 isLocked])
        {
          v38 = [MEMORY[0x277CEBE98] sharedGuard];
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __54__INCExtensionConnection_resumeWithCompletionHandler___block_invoke_2_74;
          v42[3] = &unk_2797E78E8;
          v39 = *(a1 + 40);
          v42[4] = *(a1 + 32);
          v43 = v39;
          v44 = v32;
          [v38 getIsChallengeCurrentlyRequiredForSubject:v37 completion:v42];

LABEL_34:
          v22 = v46;
          goto LABEL_35;
        }
      }
    }

    v32[2](v32);
    goto LABEL_34;
  }

  v18 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v53 = "[INCExtensionConnection resumeWithCompletionHandler:]_block_invoke";
    v54 = 2112;
    v55 = v14;
    v56 = 2112;
    v57 = v13;
    _os_log_impl(&dword_255503000, v18, OS_LOG_TYPE_INFO, "%s Found local extension %@ for identifier: %@", buf, 0x20u);
  }

  v19 = v41;
  v20 = [objc_alloc(MEMORY[0x277CD4328]) initWithInputItems:v41 privateIntentHandlerProvider:v14];
  v21 = *(a1 + 40);
  if (v21)
  {
    v22 = [[INCExtensionProxy alloc] _initWithConnection:*(a1 + 32) extension:0 vendorRemote:v20 auditTokenValue:0];
    (*(v21 + 16))(v21, v22, 0);
LABEL_35:
  }
}

void __54__INCExtensionConnection_resumeWithCompletionHandler___block_invoke_53(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _className];
  v3 = [*(a1 + 40) supportsMultiwindow];
  v4 = [*(a1 + 32) _intents_isExemptFromMulitWindowRequirementForInAppHandling];
  if ([*(a1 + 32) _intents_hasSystemIntentHandler])
  {
    v5 = 1;
  }

  else
  {
    v6 = [*(a1 + 40) supportedIntentsByApp];
    v5 = [v6 containsObject:v2];
  }

  v7 = v3 | v4;
  v8 = MEMORY[0x277CD38C8];
  v9 = *MEMORY[0x277CD38C8];
  v10 = os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO);
  if ((v7 & 1) != 0 && v5)
  {
    if (v10)
    {
      v11 = *(a1 + 40);
      v12 = v9;
      v13 = [v11 applicationIdentifier];
      *buf = 136315394;
      v35 = "[INCExtensionConnection resumeWithCompletionHandler:]_block_invoke";
      v36 = 2112;
      v37 = v13;
      _os_log_impl(&dword_255503000, v12, OS_LOG_TYPE_INFO, "%s The app %@ can handle intent with in-app intent handling. Using it.", buf, 0x16u);
    }

    if (*(a1 + 72))
    {
      if ([*(a1 + 48) requiresTCC] && (v14 = MEMORY[0x277CD43D0], objc_msgSend(*(a1 + 40), "applicationIdentifier"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "_siriAuthorizationStatusForAppID:", v15), v15, v16 != 3))
      {
        v27 = *(a1 + 72);
        v28 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD3838] code:3005 userInfo:0];
        (*(v27 + 16))(v27, 0, v28);
      }

      else
      {
        v17 = [*(a1 + 40) isRequiresAppLaunchPreflight];
        v18 = *(a1 + 72);
        if (v17)
        {
          v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD3838] code:3006 userInfo:0];
          (*(v18 + 16))(v18, 0, v19);
        }

        else
        {
          v19 = [[INCExtensionProxy alloc] _initWithConnection:*(a1 + 48) extension:0 vendorRemote:0 auditTokenValue:0];
          (*(v18 + 16))(v18, v19, 0);
        }
      }
    }
  }

  else
  {
    if (v10)
    {
      v20 = *(a1 + 40);
      v21 = v9;
      v22 = [v20 applicationIdentifier];
      *buf = 136315394;
      v35 = "[INCExtensionConnection resumeWithCompletionHandler:]_block_invoke";
      v36 = 2112;
      v37 = v22;
      _os_log_impl(&dword_255503000, v21, OS_LOG_TYPE_INFO, "%s The app %@ can NOT handle intent with in-app intent handling. Looking for an extension.", buf, 0x16u);
    }

    if (([*(a1 + 48) supportedExtensionTypes] & 1) == 0)
    {
      v29 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Unable to resume connection with an undefined extension type" userInfo:0];
      objc_exception_throw(v29);
    }

    v23 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      v24 = *(a1 + 32);
      *buf = 136315394;
      v35 = "[INCExtensionConnection resumeWithCompletionHandler:]_block_invoke";
      v36 = 2112;
      v37 = v24;
      _os_log_impl(&dword_255503000, v23, OS_LOG_TYPE_INFO, "%s Starting extension request for intent: %@", buf, 0x16u);
    }

    v25 = *(a1 + 32);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __54__INCExtensionConnection_resumeWithCompletionHandler___block_invoke_56;
    v30[3] = &unk_2797E7898;
    v26 = *(a1 + 56);
    v30[4] = *(a1 + 48);
    v33 = *(a1 + 72);
    v31 = *(a1 + 32);
    v32 = *(a1 + 64);
    [v26 startRequestForIntent:v25 completion:v30];
  }
}

void __54__INCExtensionConnection_resumeWithCompletionHandler___block_invoke_2_74(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__INCExtensionConnection_resumeWithCompletionHandler___block_invoke_3;
  block[3] = &unk_2797E78C0;
  v7 = v3;
  v8 = a1[5];
  v9 = a1[6];
  v5 = v3;
  dispatch_async(v4, block);
}

void __54__INCExtensionConnection_resumeWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) BOOLValue])
  {
    v2 = *(a1 + 40);
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD3838] code:1320 userInfo:0];
    (*(v2 + 16))(v2, 0, v4);
  }

  else
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }
}

void __54__INCExtensionConnection_resumeWithCompletionHandler___block_invoke_56(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [a1[4] _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__INCExtensionConnection_resumeWithCompletionHandler___block_invoke_2;
  block[3] = &unk_2797E7DC8;
  v17 = v9;
  v18 = v8;
  v23 = a1[7];
  v19 = a1[5];
  v11 = a1[6];
  v12 = a1[4];
  v20 = v11;
  v21 = v12;
  v22 = v7;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  dispatch_async(v10, block);
}

void __54__INCExtensionConnection_resumeWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = MEMORY[0x277CD38C8];
      v11 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 72);
        *buf = 136315394;
        *&buf[4] = "[INCExtensionConnection resumeWithCompletionHandler:]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v12;
        _os_log_impl(&dword_255503000, v11, OS_LOG_TYPE_INFO, "%s Completed extension request with: %@", buf, 0x16u);
        v9 = *(a1 + 40);
      }

      v13 = [v9 _auxiliaryConnection];
      v5 = v13;
      memset(buf, 0, 32);
      if (v13)
      {
        objc_msgSend_auditToken(v13);
      }

      v6 = [*(a1 + 72) _extensionBundle];
      v14 = [v6 bundleIdentifier];
      v15 = *(a1 + 48);
      *v44 = *buf;
      *&v44[16] = *&buf[16];
      [v15 trimDataAgainstTCCForAuditToken:v44 bundle:v6];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __54__INCExtensionConnection_resumeWithCompletionHandler___block_invoke_58;
      v43[3] = &unk_2797E7FA0;
      v43[4] = *(a1 + 64);
      v16 = MEMORY[0x259C36E60](v43);
      v17 = *v10;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = *(a1 + 72);
        *v44 = 136315394;
        *&v44[4] = "[INCExtensionConnection resumeWithCompletionHandler:]_block_invoke_3";
        *&v44[12] = 2112;
        *&v44[14] = v18;
        _os_log_impl(&dword_255503000, v17, OS_LOG_TYPE_INFO, "%s Getting vendor remote for extension: %@", v44, 0x16u);
      }

      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __54__INCExtensionConnection_resumeWithCompletionHandler___block_invoke_62;
      v40[3] = &unk_2797E7848;
      v19 = v14;
      v41 = v19;
      v20 = v16;
      v42 = v20;
      v21 = [(_INCOptionalLocalExtension *)v5 remoteObjectProxyWithErrorHandler:v40];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __54__INCExtensionConnection_resumeWithCompletionHandler___block_invoke_63;
      v37[3] = &unk_2797E8068;
      v38 = v19;
      v39 = v20;
      v22 = v20;
      v23 = v19;
      [(_INCOptionalLocalExtension *)v5 setInterruptionHandler:v37];
      [*(a1 + 64) _takeAssertionsForIntent:*(a1 + 48) extensionBundleIdentifier:v23 processIdentifier:{-[_INCOptionalLocalExtension processIdentifier](v5, "processIdentifier")}];
      v24 = [*(a1 + 64) _queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__INCExtensionConnection_resumeWithCompletionHandler___block_invoke_64;
      block[3] = &unk_2797E7870;
      v25 = *(a1 + 80);
      v26 = *(a1 + 64);
      v27 = *(a1 + 72);
      v34 = v25;
      block[4] = v26;
      v32 = v27;
      v33 = v21;
      v35 = *buf;
      v36 = *&buf[16];
      v28 = v21;
      v29 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
      dispatch_async(v24, v29);

      goto LABEL_16;
    }
  }

  if (!*(a1 + 80))
  {
    return;
  }

  if ([*(a1 + 48) _type] == 2)
  {
    v2 = [*(a1 + 48) _codableDescription];
    v3 = [v2 isEligibleForWidgets];

    if (v3)
    {
      v4 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = "[INCExtensionConnection resumeWithCompletionHandler:]_block_invoke_2";
        _os_log_impl(&dword_255503000, v4, OS_LOG_TYPE_INFO, "%s Returning an optional local extension for the provided widget intent", buf, 0xCu);
      }

      v5 = objc_alloc_init(_INCOptionalLocalExtension);
      v6 = [objc_alloc(MEMORY[0x277CD4328]) initWithInputItems:*(a1 + 56) privateIntentHandlerProvider:v5];
      v7 = *(a1 + 80);
      v8 = [[INCExtensionProxy alloc] _initWithConnection:*(a1 + 64) extension:0 vendorRemote:v6 auditTokenValue:0];
      (*(v7 + 16))(v7, v8, 0);

LABEL_16:
      return;
    }
  }

  v30 = *(*(a1 + 80) + 16);

  v30();
}

void __54__INCExtensionConnection_resumeWithCompletionHandler___block_invoke_58(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _setShouldObserveLayout:0];
  v4 = [*(a1 + 32) _queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__INCExtensionConnection_resumeWithCompletionHandler___block_invoke_2_59;
  v6[3] = &unk_2797E7820;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __54__INCExtensionConnection_resumeWithCompletionHandler___block_invoke_62(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 136315650;
      v7 = "[INCExtensionConnection resumeWithCompletionHandler:]_block_invoke";
      v8 = 2114;
      v9 = v5;
      v10 = 2114;
      v11 = v3;
      _os_log_error_impl(&dword_255503000, v4, OS_LOG_TYPE_ERROR, "%s Unable to get remote object proxy (%{public}@). XPC error: %{public}@", &v6, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __54__INCExtensionConnection_resumeWithCompletionHandler___block_invoke_63(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[INCExtensionConnection resumeWithCompletionHandler:]_block_invoke";
    v8 = 2114;
    v9 = v5;
    _os_log_debug_impl(&dword_255503000, v2, OS_LOG_TYPE_DEBUG, "%s Received an XPC connection interruption (%{public}@). The remote process exited or crashed.", &v6, 0x16u);
  }

  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"INCExtensionErrorDomain" code:1306 userInfo:0];
  (*(v3 + 16))(v3, v4);
}

void __54__INCExtensionConnection_resumeWithCompletionHandler___block_invoke_64(void *a1)
{
  v1 = a1[7];
  if (v1)
  {
    v3 = [INCExtensionProxy alloc];
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v8 = [MEMORY[0x277CCAE60] value:a1 + 8 withObjCType:"{?=[8I]}"];
    v7 = [(INCExtensionProxy *)v3 _initWithConnection:v4 extension:v5 vendorRemote:v6 auditTokenValue:v8];
    (*(v1 + 16))(v1, v7, 0);
  }
}

void __54__INCExtensionConnection_resumeWithCompletionHandler___block_invoke_2_59(uint64_t a1)
{
  [*(a1 + 32) _invalidateAssertions];
  [*(*(a1 + 32) + 24) cancel];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = [*(a1 + 32) interruptionHandler];

  if (v4)
  {
    v5 = [*(a1 + 32) interruptionHandler];
    v5[2](v5, *(a1 + 40));
  }
}

- (void)setRequiresTrustCheck:(BOOL)check
{
  checkCopy = check;
  request = [(INCExtensionTransaction *)self->_transaction request];
  [request setRequiresTrustCheck:checkCopy];
}

- (BOOL)requiresTrustCheck
{
  request = [(INCExtensionTransaction *)self->_transaction request];
  requiresTrustCheck = [request requiresTrustCheck];

  return requiresTrustCheck;
}

- (void)setRequiresTCC:(BOOL)c
{
  cCopy = c;
  request = [(INCExtensionTransaction *)self->_transaction request];
  [request setRequiresTCC:cCopy];
}

- (BOOL)requiresTCC
{
  request = [(INCExtensionTransaction *)self->_transaction request];
  requiresTCC = [request requiresTCC];

  return requiresTCC;
}

- (void)setIntent:(id)intent
{
  intentCopy = intent;
  currentIntent = [(INCExtensionTransaction *)self->_transaction currentIntent];
  [intentCopy _setExecutionContext:{objc_msgSend(currentIntent, "_executionContext")}];

  state = [(INCExtensionTransaction *)self->_transaction state];
  state2 = [(INCExtensionTransaction *)self->_transaction state];

  if (state2)
  {
    transaction = self->_transaction;
    v8 = [INCExtensionTransactionState alloc];
    type = [state type];
    intentResponse = [state intentResponse];
    userActivities = [state userActivities];
    v12 = [(INCExtensionTransactionState *)v8 initWithType:type intent:intentCopy intentResponse:intentResponse userActivities:userActivities];
    [(INCExtensionTransaction *)transaction setState:v12];
  }
}

- (INCExtensionConnection)initWithIntent:(id)intent supportedExtensionTypes:(int64_t)types donateInteraction:(BOOL)interaction groupIdentifier:(id)identifier remoteProxyProvider:(id)provider
{
  interactionCopy = interaction;
  intentCopy = intent;
  identifierCopy = identifier;
  providerCopy = provider;
  v33.receiver = self;
  v33.super_class = INCExtensionConnection;
  v15 = [(INCExtensionConnection *)&v33 init];
  if (v15)
  {
    v16 = dispatch_queue_create("INCExtensionConnectionQueue", 0);
    queue = v15->_queue;
    v15->_queue = v16;

    v15->_displayLayoutMonitorLock._os_unfair_lock_opaque = 0;
    v18 = [[INCExtensionTransaction alloc] initWithIntent:intentCopy donateInteraction:interactionCopy groupIdentifier:identifierCopy];
    transaction = v15->_transaction;
    v15->_transaction = v18;

    v15->_requestTimeoutInterval = 10.0;
    v20 = [[INCAppProxy alloc] _initWithConnection:v15];
    appProxy = v15->_appProxy;
    v15->_appProxy = v20;

    v15->_supportedExtensionTypes = types;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2050000000;
    v22 = getCARSessionStatusClass_softClass;
    v38 = getCARSessionStatusClass_softClass;
    if (!getCARSessionStatusClass_softClass)
    {
      location[0] = MEMORY[0x277D85DD0];
      location[1] = 3221225472;
      location[2] = __getCARSessionStatusClass_block_invoke;
      location[3] = &unk_2797E8190;
      location[4] = &v35;
      __getCARSessionStatusClass_block_invoke(location);
      v22 = v36[3];
    }

    v23 = v22;
    _Block_object_dispose(&v35, 8);
    initAndWaitUntilSessionUpdated = [[v22 alloc] initAndWaitUntilSessionUpdated];
    carSessionStatus = v15->_carSessionStatus;
    v15->_carSessionStatus = initAndWaitUntilSessionUpdated;

    v15->_appProtectionPolicy = INThisProcessIsAssistantd();
    [(INCExtensionConnection *)v15 setRemoteExtensionProxyProvider:providerCopy];
    _executionContext = [intentCopy _executionContext];
    if (_executionContext <= 9 && ((1 << _executionContext) & 0x304) != 0)
    {
      [(INCExtensionConnection *)v15 setRequiresTCC:0];
    }

    v27 = objc_alloc_init(INCDisplayLayoutMonitorObserver);
    layoutObserver = v15->_layoutObserver;
    v15->_layoutObserver = v27;

    objc_initWeak(location, v15);
    v29 = v15->_layoutObserver;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __119__INCExtensionConnection_initWithIntent_supportedExtensionTypes_donateInteraction_groupIdentifier_remoteProxyProvider___block_invoke;
    v31[3] = &unk_2797E77F8;
    objc_copyWeak(&v32, location);
    [(INCDisplayLayoutMonitorObserver *)v29 setHandler:v31];
    objc_destroyWeak(&v32);
    objc_destroyWeak(location);
  }

  return v15;
}

void __119__INCExtensionConnection_initWithIntent_supportedExtensionTypes_donateInteraction_groupIdentifier_remoteProxyProvider___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[7];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __119__INCExtensionConnection_initWithIntent_supportedExtensionTypes_donateInteraction_groupIdentifier_remoteProxyProvider___block_invoke_2;
    v6[3] = &unk_2797E77D0;
    v8 = a2;
    v7 = WeakRetained;
    dispatch_async(v5, v6);
  }
}

uint64_t __119__INCExtensionConnection_initWithIntent_supportedExtensionTypes_donateInteraction_groupIdentifier_remoteProxyProvider___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *MEMORY[0x277CD38C8];
  v4 = os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO);
  if (v2 == 1)
  {
    if (v4)
    {
      v5 = *(*(a1 + 32) + 24);
      v8 = 136315394;
      v9 = "[INCExtensionConnection initWithIntent:supportedExtensionTypes:donateInteraction:groupIdentifier:remoteProxyProvider:]_block_invoke_2";
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_255503000, v3, OS_LOG_TYPE_INFO, "%s Pausing request timer %@", &v8, 0x16u);
    }

    return [*(*(a1 + 32) + 24) stop];
  }

  else
  {
    if (v4)
    {
      v7 = *(*(a1 + 32) + 24);
      v8 = 136315394;
      v9 = "[INCExtensionConnection initWithIntent:supportedExtensionTypes:donateInteraction:groupIdentifier:remoteProxyProvider:]_block_invoke";
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_255503000, v3, OS_LOG_TYPE_INFO, "%s Resuming request timer %@", &v8, 0x16u);
    }

    return [*(*(a1 + 32) + 24) start];
  }
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    INLogInitIfNeeded();
  }
}

@end