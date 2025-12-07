@interface SBContinuitySessionManager
+ (BOOL)areContinuitySessionsAllowed;
+ (id)sharedInstance;
- (id)_initWithService:(id)service userInterfaceStyleProvider:(id)provider displayLayoutCoordinator:(id)coordinator sessionFactory:(id)factory externalDependencyProvider:(id)dependencyProvider;
- (id)_registerSystemApertureScene:(id)scene sessionConnectionCallout:(id)callout sessionDisconnectionCallout:(id)disconnectionCallout;
- (id)newContinuitySession;
- (id)registerWindowScene:(id)scene;
- (void)_noteSceneOrSessionIsWaiting;
- (void)activate;
- (void)appendDescriptionToStream:(id)stream;
- (void)continuitySessionDidUpdateState:(id)state;
- (void)dealloc;
- (void)newContinuitySession;
@end

@implementation SBContinuitySessionManager

+ (id)sharedInstance
{
  if (sharedInstance___once_6 != -1)
  {
    +[SBContinuitySessionManager sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_17;

  return v3;
}

void __44__SBContinuitySessionManager_sharedInstance__block_invoke()
{
  v9 = objc_alloc_init(SBOverridableUserInterfaceStyleProvider);
  v0 = MEMORY[0x277D0AD28];
  v1 = [MEMORY[0x277D0AD30] configurationForContinuityDisplay];
  v2 = [v0 publisherWithConfiguration:v1];

  v3 = [[SBContinuityDisplayLayoutCoordinator alloc] initWithRootPublisher:v2];
  v4 = objc_alloc_init(_SBContinuitySessionManagerExternalDependencyProvider);
  v5 = [SBContinuitySessionManager alloc];
  v6 = objc_alloc_init(SBContinuitySessionService);
  v7 = [(SBContinuitySessionManager *)v5 _initWithService:v6 userInterfaceStyleProvider:v9 displayLayoutCoordinator:v3 sessionFactory:0 externalDependencyProvider:v4];
  v8 = sharedInstance___sharedInstance_17;
  sharedInstance___sharedInstance_17 = v7;
}

+ (BOOL)areContinuitySessionsAllowed
{
  if (__sb__runningInSpringBoard())
  {
    if (!SBFEffectiveDeviceClass())
    {
      goto LABEL_4;
    }

    v2 = SBFEffectiveDeviceClass();
    if (v2 == 1)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = SBLogContinuitySession(v2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[(SBContinuitySessionManager *)v7];
    }

    goto LABEL_11;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    goto LABEL_7;
  }

LABEL_4:
  v3 = SBFIsOnenessAvailable();
  if (v3)
  {
    return 1;
  }

  v7 = SBLogContinuitySession(v3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    +[(SBContinuitySessionManager *)v7];
  }

LABEL_11:

  return 0;
}

- (id)_initWithService:(id)service userInterfaceStyleProvider:(id)provider displayLayoutCoordinator:(id)coordinator sessionFactory:(id)factory externalDependencyProvider:(id)dependencyProvider
{
  serviceCopy = service;
  providerCopy = provider;
  coordinatorCopy = coordinator;
  factoryCopy = factory;
  dependencyProviderCopy = dependencyProvider;
  v27.receiver = self;
  v27.super_class = SBContinuitySessionManager;
  v17 = [(SBContinuitySessionManager *)&v27 init];
  if (v17)
  {
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    waitingWindowScenes = v17->_waitingWindowScenes;
    v17->_waitingWindowScenes = v18;

    objc_storeStrong(&v17->_sessionFactory, factory);
    objc_storeStrong(&v17->_service, service);
    objc_storeStrong(&v17->_userInterfaceStyleProvider, provider);
    [serviceCopy setSessionFactory:v17];
    objc_storeStrong(&v17->_displayLayoutCoordinator, coordinator);
    objc_storeStrong(&v17->_externalDependencyProvider, dependencyProvider);
    objc_initWeak(&location, v17);
    v20 = MEMORY[0x277D85CD0];
    objc_copyWeak(&v25, &location);
    v21 = BSLogAddStateCaptureBlockWithTitle();
    stateDumpHandle = v17->_stateDumpHandle;
    v17->_stateDumpHandle = v21;

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v17;
}

id __141__SBContinuitySessionManager__initWithService_userInterfaceStyleProvider_displayLayoutCoordinator_sessionFactory_externalDependencyProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = MEMORY[0x277CF0C08];
    v3 = [MEMORY[0x277CF0C10] debugStyle];
    v4 = [v2 descriptionForRootObject:WeakRetained withStyle:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateDumpHandle invalidate];
  stateDumpHandle = self->_stateDumpHandle;
  self->_stateDumpHandle = 0;

  v4.receiver = self;
  v4.super_class = SBContinuitySessionManager;
  [(SBContinuitySessionManager *)&v4 dealloc];
}

- (void)activate
{
  [(SBContinuityDisplayLayoutCoordinator *)self->_displayLayoutCoordinator start];
  rootPublisher = [(SBContinuityDisplayLayoutCoordinator *)self->_displayLayoutCoordinator rootPublisher];
  [rootPublisher activate];

  service = self->_service;

  [(SBContinuitySessionService *)service activate];
}

- (id)registerWindowScene:(id)scene
{
  v29 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  delegate = [sceneCopy delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [sceneCopy delegate];
  }

  else
  {
    delegate2 = 0;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"ContinuityScene<%p>-Delegate<%p>", sceneCopy, delegate2];
  _FBSScene = [sceneCopy _FBSScene];
  hostHandle = [_FBSScene hostHandle];

  v11 = objc_msgSend_auditToken(hostHandle);
  v12 = [v11 hasEntitlement:*MEMORY[0x277D67F48]];

  if ((v12 & 1) == 0)
  {
    v19 = SBLogContinuitySession(v13);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SBContinuitySessionManager registerWindowScene:v8];
    }

    goto LABEL_14;
  }

  if (!delegate2)
  {
    v19 = SBLogContinuitySession(v13);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(SBContinuitySessionManager *)v8 registerWindowScene:sceneCopy];
    }

LABEL_14:

    v17 = 0;
    goto LABEL_15;
  }

  objc_initWeak(&location, self);
  v14 = objc_alloc(MEMORY[0x277CF0CE8]);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __50__SBContinuitySessionManager_registerWindowScene___block_invoke;
  v21[3] = &unk_2783BA4E0;
  objc_copyWeak(&v25, &location);
  v15 = sceneCopy;
  v22 = v15;
  v23 = delegate2;
  v16 = v8;
  v24 = v16;
  v17 = [v14 initWithIdentifier:v16 forReason:@"SBContinuitySessionManager registerWindowScene:" invalidationBlock:v21];
  v18 = SBLogContinuitySession(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v28 = v16;
    _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "[SessionManager] Added waiting scene: %{public}@", buf, 0xCu);
  }

  [(NSMutableArray *)self->_waitingWindowScenes insertObject:v15 atIndex:0];
  [(SBContinuitySessionManager *)self _noteSceneOrSessionIsWaiting];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
LABEL_15:

  return v17;
}

void __50__SBContinuitySessionManager_registerWindowScene___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[5] removeObject:*(a1 + 32)];
    v4 = [*(a1 + 40) connectedSession];
    v5 = v4;
    if (v4)
    {
      [v4 noteSceneDisconnected:*(a1 + 32)];
    }

    else
    {
      v6 = SBLogContinuitySession(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 48);
        v8 = 138543362;
        v9 = v7;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Scene %{public}@ unregistered but has no memory of its session", &v8, 0xCu);
      }
    }
  }
}

void __64__SBContinuitySessionManager_registerSystemApertureWindowScene___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  [v7 noteSystemApertureSceneConnected:a3];
  [v6 didConnectToSession:v7];
}

void __71__SBContinuitySessionManager_registerSystemApertureCurtainWindowScene___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  [v7 noteSystemApertureCurtainSceneConnected:a3];
  [v6 didConnectToSession:v7];
}

- (id)_registerSystemApertureScene:(id)scene sessionConnectionCallout:(id)callout sessionDisconnectionCallout:(id)disconnectionCallout
{
  location[3] = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  calloutCopy = callout;
  disconnectionCalloutCopy = disconnectionCallout;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  delegate = [sceneCopy delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [sceneCopy delegate];
  }

  else
  {
    delegate2 = 0;
  }

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"SystemApertureScene<%p>-Delegate<%p>", sceneCopy, delegate2];
  _FBSScene = [sceneCopy _FBSScene];
  hostHandle = [_FBSScene hostHandle];

  v17 = objc_msgSend_auditToken(hostHandle);
  v18 = [v17 hasEntitlement:*MEMORY[0x277D67F48]];

  if ((v18 & 1) == 0)
  {
    v27 = SBLogContinuitySession(v19);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [SBContinuitySessionManager registerWindowScene:v14];
    }

    goto LABEL_11;
  }

  if (!delegate2)
  {
    v27 = SBLogContinuitySession(v19);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [SBContinuitySessionManager _registerSystemApertureScene:v14 sessionConnectionCallout:sceneCopy sessionDisconnectionCallout:?];
    }

LABEL_11:

    goto LABEL_21;
  }

  currentSession = self->_currentSession;
  if (currentSession)
  {
    mainWindowScene = [(SBContinuitySession *)currentSession mainWindowScene];

    if (mainWindowScene)
    {
      objc_initWeak(location, self);
      v23 = objc_alloc(MEMORY[0x277CF0CE8]);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __112__SBContinuitySessionManager__registerSystemApertureScene_sessionConnectionCallout_sessionDisconnectionCallout___block_invoke;
      v30[3] = &unk_2783BA528;
      objc_copyWeak(&v35, location);
      v24 = delegate2;
      v31 = v24;
      v34 = disconnectionCalloutCopy;
      v25 = sceneCopy;
      v32 = v25;
      v33 = v14;
      v26 = [v23 initWithIdentifier:v33 forReason:@"SBContinuitySessionManager registerSystemApertureWindowScene:" invalidationBlock:v30];
      calloutCopy[2](calloutCopy, self->_currentSession, v25, v24);

      objc_destroyWeak(&v35);
      objc_destroyWeak(location);
      goto LABEL_22;
    }

    v28 = SBLogContinuitySession(v22);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v14;
      _os_log_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_DEFAULT, "Attempted to register a scene %{public}@ the current session doesn't have a main window scene", location, 0xCu);
    }
  }

  else
  {
    v28 = SBLogContinuitySession(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v14;
      _os_log_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_DEFAULT, "Attempted to register a scene %{public}@ but we don't have an active session", location, 0xCu);
    }
  }

LABEL_21:
  v26 = 0;
LABEL_22:

  return v26;
}

void __112__SBContinuitySessionManager__registerSystemApertureScene_sessionConnectionCallout_sessionDisconnectionCallout___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [*(a1 + 32) connectedSession];
  v4 = v3;
  if (WeakRetained)
  {
    if (v3)
    {
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v5 = SBLogContinuitySession(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 48);
        v7 = 138543362;
        v8 = v6;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Scene %{public}@ unregistered but has no memory of its session", &v7, 0xCu);
      }
    }
  }
}

- (void)_noteSceneOrSessionIsWaiting
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBContinuitySessionManager.m" lineNumber:278 description:@"the waiting scene does not have a SBContinuitySessionSceneDelegate"];
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__SBContinuitySessionManager_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_2783A92D8;
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendProem:self block:v6];
}

id __56__SBContinuitySessionManager_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 64) withName:@"currentSession"];
  result = [*(*(a1 + 40) + 40) count];
  if (result)
  {
    return [*(a1 + 32) appendObject:*(*(a1 + 40) + 40) withName:@"waitingWindowScenes"];
  }

  return result;
}

- (id)newContinuitySession
{
  v19 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v4 = SBLogContinuitySession(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[SessionManager] Creating new session...", &v17, 2u);
  }

  sessionFactory = self->_sessionFactory;
  if (sessionFactory)
  {
    newContinuitySession = [(SBContinuitySessionFactory *)sessionFactory newContinuitySession];
  }

  else
  {
    newContinuitySession = objc_alloc_init(SBContinuitySession);
  }

  v7 = newContinuitySession;
  currentSession = self->_currentSession;
  if (currentSession)
  {
    v9 = SBLogContinuitySession(newContinuitySession);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(SBContinuitySessionManager *)&self->_currentSession newContinuitySession];
    }

    [(SBContinuitySession *)self->_currentSession removeStateObserver:self];
    v10 = self->_currentSession;
    v11 = [MEMORY[0x277CBEB98] setWithObject:@"terminal.new-session-created"];
    [(SBContinuitySession *)v10 invalidateForReasons:v11];

    v12 = self->_currentSession;
    self->_currentSession = 0;
  }

  v13 = [[SBContinuityDisplayLayoutPublisher alloc] initWithCoordinator:self->_displayLayoutCoordinator];
  v14 = SBLogContinuitySession([(SBContinuitySession *)v7 setDisplayLayoutPublisher:v13]);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    succinctDescription = [(SBContinuitySession *)v7 succinctDescription];
    v17 = 138543362;
    v18 = succinctDescription;
    _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "[SessionManager] Created new session: %{public}@", &v17, 0xCu);
  }

  objc_storeStrong(&self->_currentSession, v7);
  [(SBContinuitySession *)v7 addStateObserver:self];
  if (!currentSession)
  {
    [(SBContinuitySessionManagerExternalDependencyProviding *)self->_externalDependencyProvider noteContinuitySessionNegotiationStarted];
  }

  [(SBContinuitySessionManager *)self _noteSceneOrSessionIsWaiting];

  return v7;
}

- (void)continuitySessionDidUpdateState:(id)state
{
  v12 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = stateCopy;
  if (self->_currentSession == stateCopy)
  {
    state = [(SBContinuitySession *)stateCopy state];
    if (state == 12)
    {
      v7 = SBLogContinuitySession(12);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        succinctDescription = [(SBContinuitySession *)v5 succinctDescription];
        v10 = 138543362;
        v11 = succinctDescription;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[SessionManager] current session %{public}@ is invalid - cleaning up", &v10, 0xCu);
      }

      [(SBContinuitySession *)self->_currentSession removeStateObserver:self];
      currentSession = self->_currentSession;
      self->_currentSession = 0;

      [(SBContinuitySessionManagerExternalDependencyProviding *)self->_externalDependencyProvider noteContinuitySessionEnded];
    }

    else if (state == 11)
    {
      [(SBContinuitySessionManagerExternalDependencyProviding *)self->_externalDependencyProvider noteContinuitySessionIsActive];
    }
  }
}

- (void)registerWindowScene:(uint64_t)a1 .cold.1(uint64_t a1)
{
  LODWORD(v3) = 138543618;
  *(&v3 + 4) = a1;
  OUTLINED_FUNCTION_1_18();
  OUTLINED_FUNCTION_4(&dword_21ED4E000, v1, v2, "Attempted to register a scene %{public}@ from an untrusted host: %{public}@", v3, DWORD2(v3));
}

- (void)registerWindowScene:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v2 = [a2 delegate];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_2_23();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v5, v6, "Attempted to register a scene %{public}@ who's delegate doesn't conform to SBContinuitySessionSceneDelegate: %{public}@", v7, v8, v9, v10);
}

- (void)_registerSystemApertureScene:(uint64_t)a1 sessionConnectionCallout:(void *)a2 sessionDisconnectionCallout:.cold.2(uint64_t a1, void *a2)
{
  v2 = [a2 delegate];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_2_23();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v5, v6, "Attempted to register a scene %{public}@ who's delegate doesn't conform to SBContinuitySessionSceneDelegate: %{public}@", v7, v8, v9, v10);
}

- (void)newContinuitySession
{
  LODWORD(v3) = 138543618;
  *(&v3 + 4) = *self;
  OUTLINED_FUNCTION_1_18();
  OUTLINED_FUNCTION_4(&dword_21ED4E000, v1, v2, "[SessionManager] Current session %{public}@ is being replaced by session %{public}@", v3, DWORD2(v3));
}

@end