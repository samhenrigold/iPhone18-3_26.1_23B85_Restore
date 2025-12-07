@interface FBScene
- (BOOL)conformsToExtension:(Class)extension;
- (BOOL)executeWhenMutable:(id)mutable;
- (BOOL)isEqual:(id)equal;
- (BOOL)updateWhenMutable:(id)mutable;
- (FBProcess)clientProcess;
- (FBSProcess)hostProcess;
- (FBSScene)parentScene;
- (FBSSceneParameters)parameters;
- (FBSSceneSettings)settings;
- (_DWORD)initWithDefiniton:(void *)definiton remnant:(void *)remnant settings:(void *)settings initialClientSettings:(void *)clientSettings clientProvider:(void *)provider workspace:;
- (id)_allComponentProxies;
- (id)_beginUpdate;
- (id)_componentProxiesForExtension:(uint64_t)extension;
- (id)_createTransitionContext;
- (id)_verifyIntegrityOfExtensionsInSettings:(void *)settings;
- (id)componentForExtension:(Class)extension ofClass:(Class)class;
- (id)createSnapshot;
- (id)createSnapshotWithContext:(id)context;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)display;
- (id)observerProxies;
- (id)prepareSnapshot;
- (id)prepareSnapshotWithConfigurator:(id)configurator;
- (id)snapshotContext;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)targetForInvocation:(id)invocation;
- (id)uiClientSettings;
- (id)uiSettings;
- (int64_t)currentInterfaceOrientation;
- (uint64_t)_activateWithTransitionContext:(void *)context error:;
- (uint64_t)_beginTransaction;
- (uint64_t)_endTransaction:(uint64_t)result;
- (uint64_t)_isLegacy;
- (void)_addExtensions:(void *)extensions removeExtensions:(void *)removeExtensions settings:;
- (void)_applySettingsUpdateWithCompletion:(uint64_t)completion;
- (void)_beginTransaction;
- (void)_beginUpdate;
- (void)_deactivateAndInvalidate:(void *)invalidate transitionContext:;
- (void)_deactivateClient:(void *)client withContext:;
- (void)_dispatchClientMessageWithBlock:(uint64_t)block;
- (void)_finalizeSettingsUpdate;
- (void)_iterateObservers:(uint64_t)observers;
- (void)_joinUpdate:(void *)update block:(void *)block completion:;
- (void)_objc_initiateDealloc;
- (void)_propagateSettings:(void *)settings fromSettings:(void *)fromSettings toSettings:;
- (void)_resetUpdateState;
- (void)_setContentState:(int)state notifyObservers:;
- (void)activate:(id)activate;
- (void)activateWithTransitionContext:(id)context completion:(id)completion;
- (void)addExtension:(Class)extension;
- (void)addExtensions:(id)extensions;
- (void)addObserver:(id)observer;
- (void)clientToken:(id)token deactivateWithContext:(id)context;
- (void)clientToken:(id)token didInvalidateWithError:(id)error;
- (void)clientToken:(id)token didReceiveActions:(id)actions forExtension:(Class)extension;
- (void)clientToken:(id)token didUpdateClientSettings:(id)settings withDiff:(id)diff transitionContext:(id)context;
- (void)clientToken:(id)token handleInvocation:(id)invocation withReply:(id)reply;
- (void)configureParameters:(id)parameters;
- (void)deactivate:(id)deactivate;
- (void)dealloc;
- (void)invalidate:(id)invalidate;
- (void)removeExtension:(Class)extension;
- (void)removeExtensions:(id)extensions;
- (void)removeObserver:(id)observer;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
- (void)sceneWillInvalidate:(id)invalidate;
- (void)sendActions:(id)actions toExtension:(Class)extension;
- (void)sendInvocation:(id)invocation;
- (void)setDelegate:(id)delegate;
- (void)setParentScene:(id)scene;
- (void)updateSettings:(id)settings withTransitionContext:(id)context completion:(id)completion;
- (void)updateSettingsWithTransitionBlock:(id)block;
- (void)updateUISettingsWithBlock:(id)block;
- (void)updateUISettingsWithTransitionBlock:(id)block;
@end

@implementation FBScene

- (void)_beginUpdate
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot re-entrantly begin a new scene update"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (FBSSceneSettings)settings
{
  settings = [(FBSSceneUpdate *)self->_settingsUpdate settings];
  settings = settings;
  if (!settings)
  {
    settings = self->_settings;
  }

  v5 = settings;

  return settings;
}

- (id)_beginUpdate
{
  if (self)
  {
    selfCopy = self;
    if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene _beginUpdate]");
    }

    if (*(selfCopy + 223) == 1)
    {
      [(FBScene *)sel__beginUpdate _beginUpdate];
    }

    if (*(selfCopy + 220) == 1)
    {
      [(FBScene *)sel__beginUpdate _beginUpdate];
    }

    if (*(selfCopy + 168))
    {
      [(FBScene *)sel__beginUpdate _beginUpdate];
    }

    [(FBScene *)(selfCopy + 223) _beginUpdate:selfCopy];
    self = v3;
  }

  return self;
}

- (void)_finalizeSettingsUpdate
{
  if (self)
  {
    if (*(self + 226) != 1 || (*(self + 219) & 1) != 0 || (*(self + 218) & 1) != 0 || *(self + 221) == 1)
    {
      v2 = *(self + 176);

      [(FBScene *)self _applySettingsUpdateWithCompletion:v2];
    }

    else
    {
      v3 = MEMORY[0x1E699FD18];
      v4 = *(self + 176);
      v5 = *(*(self + 168) + *MEMORY[0x1E699FD18]);
      v9 = MEMORY[0x1AC572E40](v4);
      v6 = *(self + 168);
      v7 = *v3;
      v8 = *(v6 + v7);
      *(v6 + v7) = 0;

      [(FBScene *)self _applySettingsUpdateWithCompletion:?];
      [self activateWithTransitionContext:v5 completion:v9];
    }
  }
}

- (id)_allComponentProxies
{
  selfCopy = self;
  if (self)
  {
    if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene _allComponentProxies]");
    }

    v2 = [selfCopy[19] copy];
    v3 = v2;
    v4 = MEMORY[0x1E695E0F0];
    if (v2)
    {
      v4 = v2;
    }

    selfCopy = v4;
  }

  return selfCopy;
}

- (uint64_t)_beginTransaction
{
  if (!self)
  {
    return 0;
  }

  if ((*(self + 219) & 1) == 0)
  {
    [(FBScene *)self _beginTransaction];
  }

  if (*(self + 230))
  {
    [(FBScene *)self _beginTransaction];
  }

  *(self + 230) = 1;
  v1 = *(self + 200) + 1;
  *(self + 200) = v1;
  return v1;
}

- (id)_createTransitionContext
{
  specification = [(FBSSceneDefinition *)self->_definition specification];
  v3 = [objc_msgSend(specification "transitionContextClass")];

  return v3;
}

- (id)observerProxies
{
  if (self)
  {
    if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene observerProxies]");
    }

    os_unfair_lock_lock((self + 8));
    array = [*(self + 32) array];
    v3 = [array copy];

    os_unfair_lock_unlock((self + 8));
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_resetUpdateState
{
  if (self)
  {
    *(self + 223) = 0;
    v2 = *(self + 176);
    *(self + 176) = 0;

    *(self + 229) = 0;
    *(self + 226) = 0;
    v3 = *(self + 168);
    *(self + 168) = 0;

    [*(self + 184) invalidate];
    v4 = *(self + 184);
    *(self + 184) = 0;
  }
}

- (FBProcess)clientProcess
{
  if (self->_legacy || self->_clientHandle)
  {
    return self->_clientProcess;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)_isLegacy
{
  if (self)
  {
    v1 = *(self + 218);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (id)uiSettings
{
  settings = [(FBScene *)self settings];
  if (([settings _uikitShimming_isUISubclass] & 1) == 0)
  {
    [(FBScene(UIApp) *)settings uiSettings];
  }

  return settings;
}

- (id)uiClientSettings
{
  clientSettings = [(FBScene *)self clientSettings];
  if (([clientSettings _uikitShimming_isUISubclass] & 1) == 0)
  {
    [(FBScene(UIApp) *)clientSettings uiClientSettings];
  }

  return clientSettings;
}

- (int64_t)currentInterfaceOrientation
{
  settings = [(FBScene *)self settings];
  _uiApplicationSceneSettingsShim = [settings _uiApplicationSceneSettingsShim];

  clientSettings = [(FBScene *)self clientSettings];
  _uiApplicationSceneClientSettingsShim = [clientSettings _uiApplicationSceneClientSettingsShim];

  if (!_uiApplicationSceneSettingsShim || !_uiApplicationSceneClientSettingsShim)
  {
    if (!_uiApplicationSceneSettingsShim)
    {
      interfaceOrientation = 0;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (![_uiApplicationSceneSettingsShim deviceOrientationEventsEnabled] || (interfaceOrientation = objc_msgSend(_uiApplicationSceneClientSettingsShim, "interfaceOrientation")) == 0)
  {
LABEL_7:
    interfaceOrientation = [_uiApplicationSceneSettingsShim interfaceOrientation];
  }

LABEL_9:

  return interfaceOrientation;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBScene *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  workspaceIdentifier = self->_workspaceIdentifier;
  if (workspaceIdentifier && ([(FBSceneWorkspace *)self->_workspace identifier], v5 = objc_claimAutoreleasedReturnValue(), v6 = [(NSString *)workspaceIdentifier isEqualToString:v5], v5, !v6))
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = self->_workspaceIdentifier;
    identifier = [(FBSceneWorkspace *)self->_workspace identifier];
    [v9 stringWithFormat:@"%@(%@):%@", v10, identifier, self->_identifier];
  }

  else
  {
    v7 = MEMORY[0x1E696AEC0];
    identifier = [(FBSceneWorkspace *)self->_workspace identifier];
    [v7 stringWithFormat:@"%@:%@", identifier, self->_identifier, v14];
  }
  v11 = ;
  v12 = [v3 appendObject:v11 withName:0];

  return v3;
}

- (void)_beginTransaction
{
  v3 = MEMORY[0x1E696AEC0];
  loggingIdentifier = [self loggingIdentifier];
  v5 = [v3 stringWithFormat:@"scene is not actually active: %@", loggingIdentifier];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v6 = OUTLINED_FUNCTION_9();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (FBSScene)parentScene
{
  WeakRetained = objc_loadWeakRetained(&self->_parentScene);

  return WeakRetained;
}

- (void)_objc_initiateDealloc
{
  if (pthread_main_np())
  {

    MEMORY[0x1EEE667E0](self);
  }

  else
  {
    v3 = MEMORY[0x1E69E96A0];
    v4 = MEMORY[0x1E69E58D8];

    dispatch_async_f(v3, self, v4);
  }
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Scene must be invalidated before it can deallocate."];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updateUISettingsWithBlock:(id)block
{
  blockCopy = block;
  v6 = blockCopy;
  if (blockCopy)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __44__FBScene_UIApp__updateUISettingsWithBlock___block_invoke;
    v7[3] = &unk_1E783B108;
    v9 = a2;
    v7[4] = self;
    v8 = blockCopy;
    [(FBScene *)self updateSettingsWithBlock:v7];
  }
}

void __44__FBScene_UIApp__updateUISettingsWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 _uikitShimming_isUISubclass] & 1) == 0)
  {
    __44__FBScene_UIApp__updateUISettingsWithBlock___block_invoke_cold_1(v3, a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)updateUISettingsWithTransitionBlock:(id)block
{
  blockCopy = block;
  v6 = blockCopy;
  if (blockCopy)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __54__FBScene_UIApp__updateUISettingsWithTransitionBlock___block_invoke;
    v7[3] = &unk_1E783B130;
    v9 = a2;
    v7[4] = self;
    v8 = blockCopy;
    [(FBScene *)self updateSettingsWithTransitionBlock:v7];
  }
}

id __54__FBScene_UIApp__updateUISettingsWithTransitionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 _uikitShimming_isUISubclass] & 1) == 0)
  {
    __54__FBScene_UIApp__updateUISettingsWithTransitionBlock___block_invoke_cold_1(v3, a1);
  }

  v4 = (*(*(a1 + 40) + 16))();

  return v4;
}

- (_DWORD)initWithDefiniton:(void *)definiton remnant:(void *)remnant settings:(void *)settings initialClientSettings:(void *)clientSettings clientProvider:(void *)provider workspace:
{
  v13 = a2;
  obj = definiton;
  definitonCopy = definiton;
  remnantCopy = remnant;
  settingsCopy = settings;
  clientSettingsCopy = clientSettings;
  providerCopy = provider;
  v76 = providerCopy;
  if (!self)
  {
    v22 = 0;
LABEL_33:
    v50 = clientSettingsCopy;
    goto LABEL_34;
  }

  if (!providerCopy)
  {
    [FBScene initWithDefiniton:? remnant:? settings:? initialClientSettings:? clientProvider:? workspace:?];
  }

  if (([v13 isValid] & 1) == 0)
  {
    [FBScene initWithDefiniton:? remnant:? settings:? initialClientSettings:? clientProvider:? workspace:?];
  }

  v18 = definitonCopy;
  if (v18)
  {
    NSClassFromString(&cfstr_Fbsceneremnant_1.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBScene initWithDefiniton:? remnant:? settings:? initialClientSettings:? clientProvider:? workspace:?];
    }
  }

  v19 = remnantCopy;
  if (v19)
  {
    NSClassFromString(&cfstr_Fbsscenesettin.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBScene initWithDefiniton:? remnant:? settings:? initialClientSettings:? clientProvider:? workspace:?];
    }
  }

  v20 = settingsCopy;
  if (v20)
  {
    NSClassFromString(&cfstr_Fbssceneclient_0.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBScene initWithDefiniton:? remnant:? settings:? initialClientSettings:? clientProvider:? workspace:?];
    }
  }

  if (initWithDefiniton_remnant_settings_initialClientSettings_clientProvider_workspace__onceToken != -1)
  {
    [FBScene initWithDefiniton:remnant:settings:initialClientSettings:clientProvider:workspace:];
  }

  v79.receiver = self;
  v79.super_class = FBScene;
  v21 = objc_msgSendSuper2(&v79, sel_init);
  v22 = v21;
  if (!v21)
  {
    goto LABEL_33;
  }

  v72 = definitonCopy;
  clientSettingsCopy2 = clientSettings;
  v70 = settingsCopy;
  v71 = remnantCopy;
  v21[2] = 0;
  v23 = [v13 copy];
  v24 = *(v22 + 15);
  *(v22 + 15) = v23;

  *(v22 + 25) = 0;
  objc_storeStrong(v22 + 31, provider);
  identity = [v13 identity];
  clientIdentity = [v13 clientIdentity];
  specification = [v13 specification];
  identifier = [identity identifier];
  v29 = [identifier copy];
  v30 = *(v22 + 10);
  *(v22 + 10) = v29;

  workspaceIdentifier = [identity workspaceIdentifier];
  v32 = [workspaceIdentifier copy];
  v33 = *(v22 + 11);
  *(v22 + 11) = v32;

  v34 = [FBSceneEventQueue alloc];
  v35 = [identity description];
  v36 = v34;
  v37 = clientIdentity;
  v38 = [(BSEventQueue *)v36 initWithName:v35 onQueue:MEMORY[0x1E69E96A0]];
  v39 = *(v22 + 6);
  *(v22 + 6) = v38;

  targetsClientEndpoint = [clientIdentity targetsClientEndpoint];
  v41 = MEMORY[0x1E699FC18];
  v69 = v37;
  if (targetsClientEndpoint)
  {
    v42 = getpid();
    processIdentity = [v37 processIdentity];
    internalWorkspaceIdentifier = [identity internalWorkspaceIdentifier];
    v45 = [v41 tokenWithHostPID:v42 directEndpointTarget:processIdentity workspace:internalWorkspaceIdentifier identifier:*(v22 + 10)];
    internalWorkspaceIdentifier2 = *(v22 + 12);
    *(v22 + 12) = v45;
  }

  else
  {
    processIdentity = [(FBWorkspaceEventDispatcher *)v76 domain];
    internalWorkspaceIdentifier = [processIdentity incomingWorkspaceEndpoint];
    internalWorkspaceIdentifier2 = [identity internalWorkspaceIdentifier];
    v47 = [v41 tokenWithHostEndpoint:internalWorkspaceIdentifier workspace:internalWorkspaceIdentifier2 identifier:*(v22 + 10)];
    v48 = *(v22 + 12);
    *(v22 + 12) = v47;
  }

  if (v19)
  {
    v49 = [v19 _copyClearingProgenitor:0];
  }

  else
  {
    v49 = [objc_msgSend(specification "settingsClass")];
  }

  v50 = clientSettingsCopy;
  v51 = *(v22 + 13);
  *(v22 + 13) = v49;

  if (v20)
  {
    v52 = [v20 copy];
  }

  else
  {
    v52 = [objc_msgSend(specification "clientSettingsClass")];
  }

  v53 = *(v22 + 14);
  *(v22 + 14) = v52;

  v54 = [[FBSceneLayerManager alloc] _initWithScene:v22];
  v55 = *(v22 + 2);
  *(v22 + 2) = v54;

  v56 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v57 = *(v22 + 4);
  *(v22 + 4) = v56;

  *(v22 + 218) = clientSettingsCopy != 0;
  objc_storeStrong(v22 + 8, clientSettingsCopy2);
  objc_storeStrong(v22 + 16, obj);
  if ([*(v22 + 13) _hasAnySceneExtension])
  {
    v58 = [*(v22 + 13) _copyClearingProgenitor:&__block_literal_global_53];
    v59 = *(v22 + 13);
    *(v22 + 13) = v58;
  }

  if ([*(v22 + 14) _hasAnySceneExtension])
  {
    v60 = [*(v22 + 14) copy:&__block_literal_global_55];
    v61 = *(v22 + 14);
    *(v22 + 14) = v60;
  }

  v62 = FBSGetDefaultExtensions();
  [v22 addExtensions:v62];

  objc_initWeak(&location, v22);
  v63 = MEMORY[0x1E696AEC0];
  loggingIdentifier = [v22 loggingIdentifier];
  v65 = [v63 stringWithFormat:@"FBScene - %@", loggingIdentifier];
  objc_copyWeak(&v77, &location);
  v66 = BSLogAddStateCaptureBlockForUserRequestsOnlyWithTitle();
  v67 = *(v22 + 5);
  *(v22 + 5) = v66;

  *(v22 + 224) = 1;
  objc_destroyWeak(&v77);
  objc_destroyWeak(&location);

  remnantCopy = v71;
  definitonCopy = v72;
  settingsCopy = v70;
LABEL_34:

  return v22;
}

uint64_t __93__FBScene_initWithDefiniton_remnant_settings_initialClientSettings_clientProvider_workspace___block_invoke()
{
  v0 = objc_opt_class();

  return MEMORY[0x1EEE667A8](v0);
}

id __93__FBScene_initWithDefiniton_remnant_settings_initialClientSettings_clientProvider_workspace___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained debugDescription];

  return v2;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene setDelegate:]");
  }

  delegateProxy = self->_delegateProxy;
  if (delegateProxy)
  {
    self->_delegateProxy = 0;
  }

  v5 = delegateCopy;
  if (delegateCopy)
  {
    v6 = [[FBSceneObserver alloc] initWithDelegate:delegateCopy];
    v7 = self->_delegateProxy;
    self->_delegateProxy = v6;

    v5 = delegateCopy;
  }
}

- (FBSSceneParameters)parameters
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene parameters]");
  }

  v3 = MEMORY[0x1E699FC20];
  specification = [(FBSSceneDefinition *)self->_definition specification];
  v5 = [v3 parametersForSpecification:specification];

  settings = [(FBScene *)self settings];
  [v5 setSettings:settings];

  [v5 setClientSettings:self->_clientSettings];

  return v5;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene addObserver:]");
  }

  v4 = observerCopy;
  if (observerCopy)
  {
    v5 = [[FBSceneObserver alloc] initWithObserver:observerCopy];
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableOrderedSet *)self->_lock_observerProxies addObject:v5];
    os_unfair_lock_unlock(&self->_lock);

    v4 = observerCopy;
  }
}

- (void)removeObserver:(id)observer
{
  v19 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSMutableOrderedSet *)self->_lock_observerProxies copy];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        observer = [(FBSceneObserver *)v10 observer];
        v12 = observer;
        if (observer)
        {
          v13 = observer == observer;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          [(NSMutableOrderedSet *)self->_lock_observerProxies removeObject:v10];
          [v10 invalidate];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)activate:(id)activate
{
  if (activate)
  {
    activateCopy = activate;
    _createTransitionContext = [(FBScene *)self _createTransitionContext];
    activateCopy[2](activateCopy);
  }

  else
  {
    _createTransitionContext = 0;
  }

  [(FBScene *)self activateWithTransitionContext:_createTransitionContext];
}

- (void)activateWithTransitionContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if (!self->_finishedInit)
  {
    [FBScene activateWithTransitionContext:a2 completion:?];
  }

  if (self->_midUpdate)
  {
    [FBScene activateWithTransitionContext:a2 completion:?];
  }

  if (self->_deactivating)
  {
    [FBScene activateWithTransitionContext:a2 completion:?];
  }

  v9 = completionCopy;
  if (self->_legacy)
  {
    if (self->_legacyActivated)
    {
      [FBScene activateWithTransitionContext:a2 completion:?];
    }

    self->_legacyActivated = 1;
  }

  v10 = [FBSceneEventQueue suspendIdleWorkForReason:@"activation"];
  active = self->_active;
  remnant = self->_remnant;
  v45[0] = 0;
  v12 = [(FBScene *)self _activateWithTransitionContext:contextCopy error:v45];
  v13 = v45[0];
  executionContext = [contextCopy executionContext];
  completion = [executionContext completion];

  if (completion)
  {
    v26 = a2;
    if (active)
    {
      v16 = @"Provided execution context was not used because the scene was already active.";
    }

    else if (self->_invalidated)
    {
      v16 = @"Scene was not activated because it had already been invalidated.";
    }

    else
    {
      v16 = @"Provided execution context was not used to create a process.";
    }

    v25 = v12;
    clientProcess = self->_clientProcess;
    if (clientProcess)
    {
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __52__FBScene_activateWithTransitionContext_completion___block_invoke;
      v41[3] = &unk_1E783D1D8;
      v18 = &v44;
      v19 = &v42;
      v44 = completion;
      v42 = v16;
      v20 = &v43;
      v43 = v13;
      [(FBProcess *)clientProcess _executeBlockAfterBootstrap:v41];
    }

    else
    {
      v21 = +[FBProcess calloutQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __52__FBScene_activateWithTransitionContext_completion___block_invoke_2;
      block[3] = &unk_1E783D200;
      v18 = &v40;
      v19 = &v38;
      v40 = completion;
      v38 = v16;
      v20 = &v39;
      v39 = v13;
      dispatch_async(v21, block);
    }

    a2 = v26;
    v12 = v25;
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __52__FBScene_activateWithTransitionContext_completion___block_invoke_3;
  v33[3] = &unk_1E783D250;
  v34 = contextCopy;
  selfCopy = self;
  v36 = remnant != 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __52__FBScene_activateWithTransitionContext_completion___block_invoke_5;
  v28[3] = &unk_1E783D278;
  v32 = v12;
  v28[4] = self;
  v29 = v13;
  v30 = v9;
  v31 = a2;
  v22 = v9;
  v23 = v13;
  v24 = contextCopy;
  [(FBScene *)self performUpdate:v33 withCompletion:v28];
  [v10 invalidate];
}

- (uint64_t)_activateWithTransitionContext:(void *)context error:
{
  v80 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (!self)
  {
    goto LABEL_74;
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene _activateWithTransitionContext:error:]");
  }

  if (*(self + 219) == 1)
  {
    if (context)
    {
      *context = 0;
    }

    self = 1;
    goto LABEL_74;
  }

  if (*(self + 221) == 1)
  {
    if (context)
    {
      FBSceneErrorCreate(2uLL, @"Cannot activate an invalidated scene.", 0);
      *context = self = 0;
    }

    else
    {
      self = 0;
    }

    goto LABEL_74;
  }

  if (!*(self + 248))
  {
    [FBScene _activateWithTransitionContext:? error:?];
  }

  if (*(self + 232))
  {
    [FBScene _activateWithTransitionContext:? error:?];
  }

  v6 = *(self + 64);
  if (*(self + 218) != 1)
  {
    if (v6)
    {
      [FBScene _activateWithTransitionContext:? error:?];
    }

    clientIdentity = [*(self + 120) clientIdentity];
    if ([clientIdentity isLocal])
    {
      [(FBScene *)(self + 248) _activateWithTransitionContext:self error:(self + 232), (self + 64)];
      v14 = 0;
LABEL_52:

      goto LABEL_53;
    }

    v8 = *(self + 128);
    if (v8)
    {
      _workspace = [v8 _workspace];
      process = [_workspace process];
      v11 = process;
      if (_workspace && process && ([*(self + 128) _assertion], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isValid"), v12, (v13 & 1) != 0))
      {
        v14 = 0;
      }

      else
      {

        v14 = FBSceneErrorCreate(1uLL, @"failed to activate scene from remnant", 0);
        _workspace = 0;
        v11 = 0;
      }

      goto LABEL_51;
    }

    processIdentity = [clientIdentity processIdentity];
    clientProcessHandle = [v5 clientProcessHandle];
    if ([*(self + 104) isClientFuture])
    {
      clientProcess = [*(self + 104) clientProcess];
      handle = [clientProcess handle];

      if (handle)
      {
        if (clientProcessHandle && ([clientProcessHandle isEqual:handle] & 1) == 0)
        {
          [FBScene _activateWithTransitionContext:? error:?];
        }

        v19 = handle;

        clientProcessHandle = v19;
      }
    }

    if (clientProcessHandle)
    {
      identity = [clientProcessHandle identity];
      v21 = [identity isEqual:processIdentity];

      if ((v21 & 1) == 0)
      {
        [FBScene _activateWithTransitionContext:? error:?];
      }

      domain = [(FBWorkspaceEventDispatcher *)*(self + 248) domain];
      v73 = 0;
      v11 = [domain _createProcessFutureForProcessHandle:clientProcessHandle error:&v73];
      v14 = v73;

      if (!v11)
      {
        goto LABEL_49;
      }

LABEL_47:
      _workspace = [v11 workspace];

      v14 = 0;
LABEL_50:

LABEL_51:
      v33 = *(self + 72);
      *(self + 72) = v11;
      v34 = v11;

      v35 = *(self + 64);
      *(self + 64) = _workspace;

      goto LABEL_52;
    }

    if ([*(self + 104) isClientFuture])
    {
      v14 = FBSceneErrorCreate(3uLL, @"client futures must be activated with a specific client process", 0);
      v11 = 0;
    }

    else
    {
      identityOfCurrentProcess = [MEMORY[0x1E69C75F0] identityOfCurrentProcess];
      v24 = [identityOfCurrentProcess isEqual:processIdentity];

      if (!v24)
      {
        executionContext = [v5 executionContext];
        v26 = [executionContext mutableCopy];

        if (v26)
        {
          identity2 = [(FBProcessExecutionContext *)v26 identity];

          if (identity2)
          {
            identity3 = [(FBProcessExecutionContext *)v26 identity];
            v29 = [identity3 isEqual:processIdentity];

            if ((v29 & 1) == 0)
            {
              [FBScene _activateWithTransitionContext:? error:?];
            }
          }

          else
          {
            [(FBProcessExecutionContext *)v26 setIdentity:processIdentity];
          }
        }

        else
        {
          v26 = [(FBProcessExecutionContext *)[FBMutableProcessExecutionContext alloc] initWithIdentity:processIdentity];
        }

        v31 = [(FBProcessExecutionContext *)v26 copyOrUpdateForSceneActivationWithSettings:*(self + 104), processIdentity];

        domain2 = [(FBWorkspaceEventDispatcher *)*(self + 248) domain];
        v72 = 0;
        v11 = [domain2 _createProcessFutureWithExecutionContext:v31 error:&v72];
        v14 = v72;

        [v5 setExecutionContext:0];
        processIdentity = v66;
        if (!v11)
        {
          goto LABEL_49;
        }

        goto LABEL_47;
      }

      [(FBScene *)(self + 248) _activateWithTransitionContext:self error:(self + 232), buf];
      v14 = 0;
      v11 = *buf;
      if (*buf)
      {
        goto LABEL_47;
      }
    }

LABEL_49:
    _workspace = 0;
    goto LABEL_50;
  }

  if (!v6)
  {
    [FBScene _activateWithTransitionContext:? error:?];
  }

  clientProcessHandle2 = [v5 clientProcessHandle];

  if (clientProcessHandle2)
  {
    [FBScene _activateWithTransitionContext:? error:?];
  }

  [(FBScene *)(self + 64) _activateWithTransitionContext:self error:(self + 232), (self + 248)];
  v14 = 0;
LABEL_53:
  executionContext2 = [v5 executionContext];

  if (executionContext2)
  {
    v38 = FBLogScene(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [FBScene _activateWithTransitionContext:self error:?];
    }
  }

  v39 = [*(self + 112) copy:&__block_literal_global_238];
  v40 = *(self + 112);
  *(self + 112) = v39;

  v41 = *(self + 16);
  layers = [*(self + 112) layers];
  [v41 _setLayers:layers];

  v43 = *(self + 64);
  if (!v43)
  {
    v52 = FBLogScene(0);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      [FBScene _activateWithTransitionContext:self error:v14];
    }

    v48 = v14;
    goto LABEL_65;
  }

  v44 = *(self + 104);
  v45 = *(self + 112);
  v46 = *(self + 128);
  v71 = 0;
  v47 = [v43 registerHost:self settings:v44 initialClientSettings:v45 fromRemnant:v46 error:&v71];
  v48 = v71;

  v49 = *(self + 56);
  *(self + 56) = v47;

  if (!*(self + 56))
  {
    v52 = FBLogScene(v50);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      loggingIdentifier = [self loggingIdentifier];
      v64 = *(self + 64);
      v65 = [v48 descriptionWithMultilinePrefix:0];
      *buf = 138543874;
      *&buf[4] = loggingIdentifier;
      v76 = 2114;
      v77 = v64;
      v78 = 2114;
      v79 = v65;
      _os_log_error_impl(&dword_1A89DD000, v52, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to connect with %{public}@: %{public}@.", buf, 0x20u);
    }

LABEL_65:

    v51 = 0;
    goto LABEL_66;
  }

  v51 = 1;
LABEL_66:
  *(self + 219) = 1;
  v53 = *(self + 128);
  *(self + 128) = 0;

  ++*(self + 192);
  v55 = FBLogScene(v54);
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    loggingIdentifier2 = [self loggingIdentifier];
    v57 = *(self + 192);
    *buf = 138543618;
    *&buf[4] = loggingIdentifier2;
    v76 = 2048;
    v77 = v57;
    _os_log_impl(&dword_1A89DD000, v55, OS_LOG_TYPE_DEFAULT, "[%{public}@][%lu] Scene activated.", buf, 0x16u);
  }

  if (v51 && !*(self + 232))
  {
    v58 = *(self + 192);
    v59 = *(self + 72);
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __48__FBScene__activateWithTransitionContext_error___block_invoke_239;
    v67[3] = &unk_1E783D3D8;
    v69 = v58;
    v70 = sel__activateWithTransitionContext_error_;
    v67[4] = self;
    v68 = v59;
    v60 = v59;
    [v60 _executeBlockAfterLaunchCompletes:v67];
  }

  if (context)
  {
    v61 = v48;
    *context = v48;
  }

  v74 = v51;

  self = v74;
LABEL_74:

  return self;
}

void __52__FBScene_activateWithTransitionContext_completion___block_invoke(void *a1, void *a2)
{
  v3 = a1[5];
  v2 = a1[6];
  v4 = a1[4];
  v5 = a2;
  v6 = FBSceneErrorCreate(3uLL, v4, v3);
  (*(v2 + 16))(v2, v5, v6);
}

void __52__FBScene_activateWithTransitionContext_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = FBSceneErrorCreate(3uLL, *(a1 + 32), *(a1 + 40));
  (*(v1 + 16))(v1, 0, v2);
}

void __52__FBScene_activateWithTransitionContext_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 168) + *MEMORY[0x1E699FD18]), v7);
  }

  v8 = *(a1 + 40);
  if (!*(v8 + 200))
  {
    if ((*(v8 + 218) & 1) == 0 && *(a1 + 48) != 1 || ([*(v8 + 248) didAddScene:?], v8 = *(a1 + 40), (*(v8 + 218) & 1) == 0))
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __52__FBScene_activateWithTransitionContext_completion___block_invoke_4;
      v9[3] = &unk_1E783D228;
      v9[4] = v8;
      [(FBScene *)v8 _iterateObservers:v9];
    }

    if ([v5 isClientFuture])
    {
      [v5 setClientFuture:0];
      [v5 setClientProcess:0];
    }
  }
}

void __52__FBScene_activateWithTransitionContext_completion___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ((*(a1 + 64) & 1) == 0 && a2)
  {
    __52__FBScene_activateWithTransitionContext_completion___block_invoke_5_cold_1(a1);
  }

  v10 = v5;
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    if (*(a1 + 40))
    {
      v7 = *(a1 + 40);
    }

    else
    {
      v7 = v5;
    }

    v6 = FBSceneErrorCreate(1uLL, @"Scene activation failed.", v7);
    v8 = [*(a1 + 32) _createTransitionContext];
    [v8 setError:v6];
    [(FBScene *)*(a1 + 32) _deactivateAndInvalidate:v8 transitionContext:?];
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v6);
  }
}

- (void)_deactivateAndInvalidate:(void *)invalidate transitionContext:
{
  v75 = *MEMORY[0x1E69E9840];
  invalidateCopy = invalidate;
  if (self)
  {
    if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene _deactivateAndInvalidate:transitionContext:]");
    }

    if (*(self + 221) == 1)
    {
      captureCompletions = [invalidateCopy captureCompletions];
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __54__FBScene__deactivateAndInvalidate_transitionContext___block_invoke;
      v69[3] = &unk_1E783B240;
      v70 = captureCompletions;
      selfCopy = self;
      v7 = captureCompletions;
      [(FBScene *)self _dispatchClientMessageWithBlock:v69];
      v8 = v70;
LABEL_59:

      goto LABEL_60;
    }

    if (([self isMutable] & 1) == 0)
    {
      [FBScene _deactivateAndInvalidate:? transitionContext:?];
    }

    if (*(self + 220) == 1)
    {
      [FBScene _deactivateAndInvalidate:? transitionContext:?];
    }

    if (*(self + 223) == 1)
    {
      [FBScene _deactivateAndInvalidate:? transitionContext:?];
    }

    if (*(self + 230) == 1)
    {
      [FBScene _deactivateAndInvalidate:? transitionContext:?];
    }

    if (*(self + 217) == 1)
    {
      [FBScene _deactivateAndInvalidate:? transitionContext:?];
    }

    if (a2)
    {
      v9 = 1;
    }

    else
    {
      v9 = *(self + 218);
      if ((*(self + 219) & 1) == 0 && (v9 & 1) == 0)
      {
        captureCompletions2 = [invalidateCopy captureCompletions];
        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 3221225472;
        v66[2] = __54__FBScene__deactivateAndInvalidate_transitionContext___block_invoke_338;
        v66[3] = &unk_1E783B240;
        v67 = captureCompletions2;
        selfCopy2 = self;
        v7 = captureCompletions2;
        [(FBScene *)self _dispatchClientMessageWithBlock:v66];
        v8 = v67;
        goto LABEL_59;
      }
    }

    error = [invalidateCopy error];
    domain = [error domain];
    v12 = [domain isEqualToString:@"FBSceneErrorDomain"];

    v13 = error;
    v14 = v13;
    v8 = v13;
    if (v9)
    {
      v8 = v13;
      if (!v13)
      {
        v8 = FBSceneErrorCreate(2uLL, @"Scene was invalidated.", 0);
      }
    }

    if (v8)
    {
      if (!invalidateCopy)
      {
        invalidateCopy = [self _createTransitionContext];
      }

      _indirect_isEmpty = [invalidateCopy setError:v8];
    }

    else
    {
      _indirect_isEmpty = [invalidateCopy _indirect_isEmpty];
      if (_indirect_isEmpty)
      {

        invalidateCopy = 0;
      }
    }

    v17 = FBLogScene(_indirect_isEmpty);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v18)
      {
        loggingIdentifier = [self loggingIdentifier];
        *buf = 138543362;
        v74 = loggingIdentifier;
        v20 = "Invalidating scene: %{public}@";
LABEL_30:
        _os_log_impl(&dword_1A89DD000, v17, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
      }
    }

    else if (v18)
    {
      loggingIdentifier = [self loggingIdentifier];
      *buf = 138543362;
      v74 = loggingIdentifier;
      v20 = "Deactivating scene: %{public}@";
      goto LABEL_30;
    }

    *(self + 220) = 1;
    v21 = [FBSceneEventQueue suspendIdleWorkForReason:@"deactivation"];
    if (!*(self + 248))
    {
      [FBScene _deactivateAndInvalidate:? transitionContext:?];
    }

    v54 = v21;
    v53 = [*(self + 16) _suspendUpdatesWithReason:@"deactivation"];
    v22 = [*(self + 112) copy:&__block_literal_global_347];
    v23 = *(self + 112);
    *(self + 112) = v22;

    v24 = *(self + 16);
    layers = [*(self + 112) layers];
    [v24 _setLayers:layers];

    isActive = [self isActive];
    v27 = isActive;
    if (isActive)
    {
      [FBScene _deactivateAndInvalidate:v65 transitionContext:?];
    }

    if (v9)
    {
      WeakRetained = objc_loadWeakRetained((self + 160));
      [WeakRetained removeObserver:self];
    }

    v29 = *(self + 248);
    v30 = *(self + 64);
    if (*(self + 219) == 1)
    {
      v31 = *(self + 56);
      if ((v31 == 0) | v12 & 1)
      {
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;
    v33 = *(self + 192);
    *(self + 219) = 0;
    *(self + 200) = 0;
    *(self + 208) = 0;
    [(FBScene *)self _setContentState:(*(self + 218) & 1) == 0 notifyObservers:?];
    v34 = *(self + 56);
    *(self + 56) = 0;

    v35 = *(self + 232);
    *(self + 232) = 0;

    v36 = *(self + 64);
    *(self + 64) = 0;

    if ((*(self + 218) & 1) == 0)
    {
      v37 = *(self + 72);
      *(self + 72) = 0;
    }

    if (v9)
    {
      *(self + 221) = 1;
      v38 = *(self + 248);
      *(self + 248) = 0;

      [*(self + 40) invalidate];
      v39 = *(self + 40);
      *(self + 40) = 0;

      [*(self + 128) invalidate];
      v40 = *(self + 128);
      *(self + 128) = 0;
    }

    else
    {
      v41 = *(self + 104);
      v40 = *(self + 136);
      *(self + 136) = v41;
    }

    v52 = v14;

    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __54__FBScene__deactivateAndInvalidate_transitionContext___block_invoke_3;
    v63[3] = &unk_1E783D518;
    v64 = v9;
    v63[4] = self;
    v63[5] = v33;
    v42 = MEMORY[0x1AC572E40](v63);
    v43 = v42;
    v50 = v32;
    v44 = v29;
    if (v32)
    {
      [v30 host:self didInvalidateWithTransitionContext:invalidateCopy completion:v42];
    }

    else
    {
      (*(v42 + 16))(v42, 1, 0);
    }

    v51 = v30;
    [v30 unregisterHost:self];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __54__FBScene__deactivateAndInvalidate_transitionContext___block_invoke_348;
    v59[3] = &unk_1E783D540;
    v61 = v27;
    v59[4] = self;
    invalidateCopy = invalidateCopy;
    v60 = invalidateCopy;
    v62 = v9;
    [(FBScene *)self _iterateObservers:v59];
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    captureCompletions3 = [invalidateCopy captureCompletions];
    v46 = [captureCompletions3 countByEnumeratingWithState:&v55 objects:v72 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v56;
      do
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v56 != v48)
          {
            objc_enumerationMutation(captureCompletions3);
          }

          (*(*(*(&v55 + 1) + 8 * i) + 16))();
        }

        v47 = [captureCompletions3 countByEnumeratingWithState:&v55 objects:v72 count:16];
      }

      while (v47);
    }

    if (v9)
    {
      [v44 sceneDidInvalidate:self];
    }

    [v53 invalidate];
    [v54 invalidate];

    v7 = v52;
    goto LABEL_59;
  }

LABEL_60:
}

- (void)deactivate:(id)deactivate
{
  if (deactivate)
  {
    deactivateCopy = deactivate;
    _createTransitionContext = [(FBScene *)self _createTransitionContext];
    deactivateCopy[2](deactivateCopy);
  }

  else
  {
    _createTransitionContext = 0;
  }

  [(FBScene *)self deactivateWithTransitionContext:_createTransitionContext];
}

- (void)invalidate:(id)invalidate
{
  if (invalidate)
  {
    invalidateCopy = invalidate;
    _createTransitionContext = [(FBScene *)self _createTransitionContext];
    invalidateCopy[2](invalidateCopy);
  }

  else
  {
    _createTransitionContext = 0;
  }

  [(FBScene *)self _deactivateAndInvalidate:_createTransitionContext transitionContext:?];
}

- (void)addExtension:(Class)extension
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (!extension)
  {
    [FBScene addExtension:a2];
  }

  v5[0] = extension;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [(FBScene *)self addExtensions:v4];
}

- (void)addExtensions:(id)extensions
{
  extensionsCopy = extensions;
  if ([extensionsCopy count])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __25__FBScene_addExtensions___block_invoke;
    v5[3] = &unk_1E783CAA8;
    v6 = extensionsCopy;
    [(FBScene *)self updateSettings:v5];
  }
}

void __25__FBScene_addExtensions___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 _addSceneExtension:{*(*(&v9 + 1) + 8 * v8++), v9}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeExtension:(Class)extension
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (!extension)
  {
    [FBScene removeExtension:a2];
  }

  v5[0] = extension;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [(FBScene *)self removeExtensions:v4];
}

- (void)removeExtensions:(id)extensions
{
  extensionsCopy = extensions;
  if ([extensionsCopy count])
  {
    specification = [(FBSSceneDefinition *)self->_definition specification];
    v6 = FBSGetDefaultExtensions();

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __28__FBScene_removeExtensions___block_invoke;
    v8[3] = &unk_1E783D2A0;
    v9 = extensionsCopy;
    v10 = v6;
    selfCopy = self;
    v7 = v6;
    [(FBScene *)self updateSettings:v8];
  }
}

void __28__FBScene_removeExtensions___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v17;
    *&v6 = 138543618;
    v15 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [*(a1 + 40) containsObject:{v10, v15, v16}];
        if (v11)
        {
          v12 = FBLogScene(v11);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = [*(*(a1 + 48) + 120) identity];
            v14 = NSStringFromClass(v10);
            *buf = v15;
            v21 = v13;
            v22 = 2114;
            v23 = v14;
            _os_log_error_impl(&dword_1A89DD000, v12, OS_LOG_TYPE_ERROR, "[%{public}@] Cannot remove extension %{public}@ because it is part of this scene's specification", buf, 0x16u);
          }
        }

        else
        {
          [v3 _removeSceneExtension:v10];
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v7);
  }
}

- (void)setParentScene:(id)scene
{
  v26 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene setParentScene:]");
  }

  WeakRetained = objc_loadWeakRetained(&self->_parentScene);
  v7 = WeakRetained;
  if (WeakRetained != sceneCopy)
  {
    [WeakRetained removeObserver:self];
    objc_storeWeak(&self->_parentScene, sceneCopy);
    v8 = FBLogScene([sceneCopy addObserver:self]);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (sceneCopy)
    {
      if (v9)
      {
        loggingIdentifier = [(FBScene *)self loggingIdentifier];
        loggingIdentifier2 = [sceneCopy loggingIdentifier];
        v22 = 138543618;
        v23 = loggingIdentifier;
        v24 = 2114;
        v25 = loggingIdentifier2;
        _os_log_impl(&dword_1A89DD000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting parent scene: %{public}@", &v22, 0x16u);
      }

      self->_newlyReparented = 1;
      v8 = objc_opt_new();
      settings = [sceneCopy settings];
      v13 = MEMORY[0x1E699FD40];
      v14 = *MEMORY[0x1E699FD40];
      v15 = *(&v8->isa + v14);
      *(&v8->isa + v14) = settings;

      v16 = *MEMORY[0x1E699FD38];
      v17 = *(&v8->isa + v16);
      *(&v8->isa + v16) = 0;

      v18 = [MEMORY[0x1E699FC80] diffFromSettings:0 toSettings:*(&v8->isa + *v13)];
      v19 = *MEMORY[0x1E699FD20];
      v20 = *(&v8->isa + v19);
      *(&v8->isa + v19) = v18;

      [(FBScene *)self scene:sceneCopy didUpdateSettings:v8];
      if (self->_newlyReparented)
      {
        [FBScene setParentScene:a2];
      }
    }

    else if (v9)
    {
      loggingIdentifier3 = [(FBScene *)self loggingIdentifier];
      v22 = 138543362;
      v23 = loggingIdentifier3;
      _os_log_impl(&dword_1A89DD000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing parent scene.", &v22, 0xCu);
    }
  }
}

- (void)updateSettingsWithTransitionBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    [FBScene updateSettingsWithTransitionBlock:a2];
  }

  v9 = blockCopy;
  settings = [(FBScene *)self settings];
  v7 = [settings mutableCopy];

  v8 = v9[2](v9, v7);
  [(FBScene *)self updateSettings:v7 withTransitionContext:v8 completion:0];
}

- (void)updateSettings:(id)settings withTransitionContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v12 = [(FBScene *)self _verifyIntegrityOfExtensionsInSettings:settings];
  if (completionCopy)
  {
    v13 = v21;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __59__FBScene_updateSettings_withTransitionContext_completion___block_invoke;
    v21[3] = &unk_1E783C210;
    v5 = &v22;
    v22 = completionCopy;
  }

  else
  {
    v13 = 0;
  }

  v14 = MEMORY[0x1AC572E40](v13);
  if (contextCopy && ![contextCopy _indirect_isEmpty])
  {
    _beginUpdate = [(FBScene *)self _beginUpdate];
    objc_storeStrong(&_beginUpdate[*MEMORY[0x1E699FD40]], v12);
    objc_storeStrong(&_beginUpdate[*MEMORY[0x1E699FD18]], context);
    [(FBScene *)self _joinUpdate:0 block:v14 completion:?];
  }

  else
  {
    v15 = MEMORY[0x1E699FC80];
    settings = [(FBScene *)self settings];
    v17 = [v15 diffFromSettings:settings toSettings:v12];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __59__FBScene_updateSettings_withTransitionContext_completion___block_invoke_2;
    v19[3] = &unk_1E783D2C8;
    v20 = v17;
    _beginUpdate = v17;
    [(FBScene *)self _joinUpdate:v19 block:v14 completion:?];
  }

  if (completionCopy)
  {
  }
}

- (void)_joinUpdate:(void *)update block:(void *)block completion:
{
  v72 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  blockCopy = block;
  if (self)
  {
    if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene _joinUpdate:block:completion:]");
    }

    if (*(self + 219))
    {
      v9 = 1;
    }

    else
    {
      v9 = *(self + 226);
    }

    if (*(self + 216) >= 0x10u)
    {
      [FBScene _joinUpdate:? block:? completion:?];
    }

    if (!(v9 & 1 | ((a2 & 1) == 0)))
    {
      if ((*(self + 224) & 1) == 0)
      {
        [FBScene _joinUpdate:? block:? completion:?];
      }

      if (*(self + 227) == 1)
      {
        [FBScene _joinUpdate:? block:? completion:?];
      }
    }

    if (*(self + 228) == 1)
    {
      [FBScene _joinUpdate:? block:? completion:?];
    }

    _beginUpdate = *(self + 168);
    if (!_beginUpdate)
    {
      _beginUpdate = [(FBScene *)self _beginUpdate];
    }

    v11 = v9 | a2;
    v12 = MEMORY[0x1E699FD18];
    if ((v11 & 1) != 0 && !*(*(self + 168) + *MEMORY[0x1E699FD18]))
    {
      _createTransitionContext = [self _createTransitionContext];
      v14 = *v12;
      v15 = *&_beginUpdate[v14];
      *&_beginUpdate[v14] = _createTransitionContext;
    }

    if (blockCopy)
    {
      if (*(self + 176))
      {
        v16 = MEMORY[0x1AC572E40]();
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __40__FBScene__joinUpdate_block_completion___block_invoke;
        v65[3] = &unk_1E783D368;
        v66 = blockCopy;
        v67 = v16;
        v17 = v16;
        v18 = MEMORY[0x1AC572E40](v65);
        v19 = *(self + 176);
        *(self + 176) = v18;
      }

      else
      {
        v20 = [blockCopy copy];
        v21 = *(self + 176);
        *(self + 176) = v20;
      }
    }

    v22 = *(self + 216);
    *(self + 216) = v22 + 1;
    if (updateCopy)
    {
      v23 = MEMORY[0x1E699FD30];
      v24 = *&_beginUpdate[*MEMORY[0x1E699FD30]];
      v25 = MEMORY[0x1E699FD40];
      if (!v24)
      {
        v24 = [*&_beginUpdate[*MEMORY[0x1E699FD40]] mutableCopy];
        objc_storeStrong(&_beginUpdate[*v23], v24);
      }

      updateCopy[2](updateCopy, v24, *&_beginUpdate[*v12]);
      v26 = *&_beginUpdate[*v25];
      if (([v26 isEqual:v24] & 1) == 0)
      {
        v27 = [v24 copy];
        v28 = *v25;
        v29 = *&_beginUpdate[v28];
        *&_beginUpdate[v28] = v27;

        _allSceneExtensions = [v26 _allSceneExtensions];
        _allSceneExtensions2 = [v24 _allSceneExtensions];
        if (([_allSceneExtensions2 isEqualToOrderedSet:_allSceneExtensions] & 1) == 0)
        {
          v31 = [_allSceneExtensions2 mutableCopy];
          [v31 minusOrderedSet:_allSceneExtensions];
          v32 = [_allSceneExtensions mutableCopy];
          [v32 minusOrderedSet:_allSceneExtensions2];
          [(FBScene *)self _addExtensions:v31 removeExtensions:v32 settings:v24];
          if (([*&_beginUpdate[*MEMORY[0x1E699FD40]] isEqual:v24] & 1) == 0)
          {
            v33 = [v24 copy];
            v34 = *MEMORY[0x1E699FD40];
            v35 = *&_beginUpdate[v34];
            *&_beginUpdate[v34] = v33;
          }
        }

        v62 = blockCopy;
        WeakRetained = objc_loadWeakRetained((self + 160));
        if (WeakRetained)
        {
          propagatedSettings = [v26 propagatedSettings];
          [v24 propagatedSettings];
          v38 = v61 = _allSceneExtensions;
          v39 = [propagatedSettings isEqualToSet:v38];

          _allSceneExtensions = v61;
          if ((v39 & 1) == 0)
          {
            v60 = WeakRetained;
            settings = [WeakRetained settings];
            settings2 = [_beginUpdate settings];
            _propagatedSettings = [settings2 _propagatedSettings];
            v43 = [_propagatedSettings mutableCopy];

            previousSettings = [_beginUpdate previousSettings];
            _propagatedSettings2 = [previousSettings _propagatedSettings];
            [v43 minusSet:_propagatedSettings2];

            v46 = [MEMORY[0x1E699FC80] diffFromSettings:0 toSettings:settings];
            _changedSettings = [v46 _changedSettings];
            [v43 intersectSet:_changedSettings];

            v48 = v43;
            if ([v43 count])
            {
              [(FBScene *)self _propagateSettings:v43 fromSettings:settings toSettings:v24];
              v49 = [*&_beginUpdate[*MEMORY[0x1E699FD40]] isEqual:v24];
              if ((v49 & 1) == 0)
              {
                v50 = FBLogScene(v49);
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                {
                  [self loggingIdentifier];
                  v59 = settings;
                  v57 = v56 = v48;
                  v58 = [MEMORY[0x1E699FC80] diffFromSettings:*&_beginUpdate[*MEMORY[0x1E699FD40]] toSettings:v24];
                  *buf = 138412546;
                  v69 = v57;
                  v70 = 2112;
                  v71 = v58;
                  _os_log_debug_impl(&dword_1A89DD000, v50, OS_LOG_TYPE_DEBUG, "[%@] propagation mutated settings: %@", buf, 0x16u);

                  v48 = v56;
                  settings = v59;
                }

                v51 = [v24 copy];
                v52 = *MEMORY[0x1E699FD40];
                v53 = *&_beginUpdate[v52];
                *&_beginUpdate[v52] = v51;
              }
            }

            WeakRetained = v60;
            _allSceneExtensions = v61;
          }
        }

        blockCopy = v62;
      }

      v22 = *(self + 216) - 1;
    }

    *(self + 216) = v22;
    if (v11)
    {
      v54 = 1;
    }

    else
    {
      v54 = *(self + 226);
    }

    *(self + 226) = v54 & 1;
    if (!v22 && (*(self + 229) & 1) == 0)
    {
      *(self + 229) = 1;
      if (*(self + 230) == 1)
      {
        v55 = *(self + 48);
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __40__FBScene__joinUpdate_block_completion___block_invoke_195;
        v64[3] = &unk_1E783B580;
        v64[4] = self;
        [v55 executeOrAppend:v64];
      }

      else
      {
        [(FBScene *)self _finalizeSettingsUpdate];
      }
    }
  }
}

- (void)configureParameters:(id)parameters
{
  parametersCopy = parameters;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene configureParameters:]");
  }

  if (!parametersCopy)
  {
    [FBScene configureParameters:a2];
  }

  if (self->_active)
  {
    [FBScene configureParameters:a2];
  }

  if (self->_configuringParameters)
  {
    [FBScene configureParameters:a2];
  }

  v5 = objc_alloc(MEMORY[0x1E699FB58]);
  specification = [(FBSSceneDefinition *)self->_definition specification];
  v7 = [v5 initWithSpecification:specification];

  settings = [(FBScene *)self settings];
  [v7 setSettings:settings];

  [v7 setClientSettings:self->_clientSettings];
  v9 = [FBSceneEventQueue suspendIdleWorkForReason:@"configureParameters"];
  self->_configuringParameters = 1;
  parametersCopy[2](parametersCopy, v7);
  self->_configuringParameters = 0;
  clientSettings = [v7 clientSettings];
  v11 = [clientSettings copy];
  clientSettings = self->_clientSettings;
  self->_clientSettings = v11;

  settings2 = [v7 settings];
  [(FBScene *)self updateSettings:settings2 withTransitionContext:0];

  [v9 invalidate];
}

- (BOOL)updateWhenMutable:(id)mutable
{
  mutableCopy = mutable;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__FBScene_updateWhenMutable___block_invoke;
  v7[3] = &unk_1E783B328;
  v7[4] = self;
  v8 = mutableCopy;
  v5 = mutableCopy;
  LOBYTE(self) = [(FBScene *)self executeWhenMutable:v7];

  return self;
}

void __29__FBScene_updateWhenMutable___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isActive];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);

    [v5 performUpdate:v4];
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __29__FBScene_updateWhenMutable___block_invoke_2;
    v6[3] = &unk_1E783D2F0;
    v7 = *(a1 + 40);
    [v3 updateSettings:v6];
  }
}

- (BOOL)executeWhenMutable:(id)mutable
{
  mutableCopy = mutable;
  if (self->_invalidated)
  {
    goto LABEL_5;
  }

  if (![(FBScene *)self isMutable])
  {
    [FBSceneEventQueue executeWhenIdle:mutableCopy];
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  mutableCopy[2](mutableCopy);
  v5 = 1;
LABEL_6:

  return v5;
}

- (id)prepareSnapshot
{
  v3 = [FBSceneSnapshot alloc];
  v4 = [[FBSceneSnapshotContext alloc] initWithScene:self configurator:0];
  v5 = [(FBSceneSnapshot *)v3 initWithScene:self context:v4];

  return v5;
}

- (id)prepareSnapshotWithConfigurator:(id)configurator
{
  configuratorCopy = configurator;
  v5 = [FBSceneSnapshot alloc];
  v6 = [[FBSceneSnapshotContext alloc] initWithScene:self configurator:configuratorCopy];

  v7 = [(FBSceneSnapshot *)v5 initWithScene:self context:v6];

  return v7;
}

- (id)createSnapshot
{
  snapshotContext = [(FBScene *)self snapshotContext];
  v4 = [(FBScene *)self createSnapshotWithContext:snapshotContext];

  return v4;
}

- (id)createSnapshotWithContext:(id)context
{
  contextCopy = context;
  isValid = [(FBScene *)self isValid];
  if (isValid && self->_active)
  {
    if (contextCopy)
    {
      v6 = [[FBSceneSnapshot alloc] initWithScene:self context:contextCopy];
      goto LABEL_9;
    }
  }

  else
  {
    v7 = FBLogScene(isValid);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [FBScene createSnapshotWithContext:?];
    }
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (id)snapshotContext
{
  v2 = [[FBSceneSnapshotContext alloc] initWithScene:self configurator:0];

  return v2;
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  v33 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  settingsCopy = settings;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene scene:didUpdateSettings:]");
  }

  settings = [settingsCopy settings];
  v8 = [MEMORY[0x1E695DFA8] set];
  _propagatedSettings = [(FBSSceneSettings *)self->_settings _propagatedSettings];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  settingsDiff = [settingsCopy settingsDiff];
  changedSettings = [settingsDiff changedSettings];

  v12 = [changedSettings countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(changedSettings);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        if (([v16 indirect_isPropagating] & 1) != 0 || objc_msgSend(_propagatedSettings, "containsObject:", v16))
        {
          [v8 addObject:v16];
        }
      }

      v13 = [changedSettings countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v13);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __35__FBScene_scene_didUpdateSettings___block_invoke;
  v23[3] = &unk_1E783D318;
  v23[4] = self;
  v24 = v22;
  v25 = v8;
  v26 = settings;
  v27 = settingsCopy;
  v17 = settingsCopy;
  v18 = settings;
  v19 = v8;
  v20 = v22;
  [(FBScene *)self _joinUpdate:v23 block:0 completion:?];
  self->_newlyReparented = 0;
}

void __35__FBScene_scene_didUpdateSettings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (*(*(a1 + 32) + 225) == 1)
  {
    v7 = [v5 _allSceneExtensions];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = [*(a1 + 40) settings];
    v9 = [v8 _allSceneExtensions];

    v10 = [v9 countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v28 + 1) + 8 * i);
          if (([v7 containsObject:v14] & 1) == 0 && objc_msgSend(v14, "propagateToSceneWithDefinition:", *(*(a1 + 32) + 120)))
          {
            [v5 _addSceneExtension:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v28 objects:v38 count:16];
      }

      while (v11);
    }
  }

  v15 = [*(a1 + 48) count];
  if (v15)
  {
    v16 = *(*(a1 + 32) + 219);
    v17 = FBLogScene(v15);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16 == 1)
    {
      if (!v18)
      {
        goto LABEL_20;
      }

      v19 = [*(a1 + 32) loggingIdentifier];
      v20 = [*(a1 + 48) count];
      v21 = [*(a1 + 40) loggingIdentifier];
      *buf = 138543874;
      v33 = v19;
      v34 = 2048;
      v35 = v20;
      v36 = 2114;
      v37 = v21;
      v22 = "[%{public}@] propagating %lu settings from %{public}@";
    }

    else
    {
      if (!v18)
      {
        goto LABEL_20;
      }

      v19 = [*(a1 + 32) loggingIdentifier];
      v23 = [*(a1 + 48) count];
      v21 = [*(a1 + 40) loggingIdentifier];
      *buf = 138543874;
      v33 = v19;
      v34 = 2048;
      v35 = v23;
      v36 = 2114;
      v37 = v21;
      v22 = "[%{public}@ (inactive)] propagating %lu settings from %{public}@";
    }

    _os_log_impl(&dword_1A89DD000, v17, OS_LOG_TYPE_DEFAULT, v22, buf, 0x20u);

LABEL_20:
    [(FBScene *)*(a1 + 32) _propagateSettings:*(a1 + 56) fromSettings:v5 toSettings:?];
    if (*(*(a1 + 32) + 219) == 1)
    {
      v24 = MEMORY[0x1E699FD18];
      v25 = [*(*(a1 + 64) + *MEMORY[0x1E699FD18]) animationSettings];
      [v6 setAnimationSettings:v25];

      v26 = [*(*(a1 + 64) + *v24) animationFence];
      v27 = [v26 copy];
      [v6 setAnimationFence:v27];
    }
  }

  [v6 setParentUpdate:*(a1 + 64)];
}

- (void)_propagateSettings:(void *)settings fromSettings:(void *)fromSettings toSettings:
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a2;
  settingsCopy = settings;
  fromSettingsCopy = fromSettings;
  selfCopy = self;
  if (self)
  {
    if (!v7)
    {
      [FBScene _propagateSettings:? fromSettings:? toSettings:?];
    }

    if (!settingsCopy)
    {
      [FBScene _propagateSettings:? fromSettings:? toSettings:?];
    }

    if (!fromSettingsCopy)
    {
      [FBScene _propagateSettings:? fromSettings:? toSettings:?];
    }

    otherSettings = [settingsCopy otherSettings];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v23 = v7;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      do
      {
        v14 = 0;
        do
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v26 + 1) + 8 * v14);
          v16 = FBLogScene(v11);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            loggingIdentifier = [selfCopy loggingIdentifier];
            indirect_name = [v15 indirect_name];
            *buf = 138543618;
            v31 = loggingIdentifier;
            v32 = 2112;
            v33 = indirect_name;
            _os_log_debug_impl(&dword_1A89DD000, v16, OS_LOG_TYPE_DEBUG, "[%{public}@] Propagating %@", buf, 0x16u);
          }

          if ([v15 indirect_isLegacy])
          {
            indirect_legacySetting = [v15 indirect_legacySetting];
            v18 = [otherSettings objectForSetting:indirect_legacySetting];
            v19 = [otherSettings flagForSetting:indirect_legacySetting];
            otherSettings2 = [fromSettingsCopy otherSettings];
            [otherSettings2 setObject:v18 forSetting:indirect_legacySetting];
            [otherSettings2 setFlag:v19 forSetting:indirect_legacySetting];
          }

          else
          {
            v18 = MEMORY[0x1AC572720](settingsCopy, v15);
            FBSSettingsSetValueForSetting();
          }

          ++v14;
        }

        while (v12 != v14);
        v11 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
        v12 = v11;
      }

      while (v11);
    }

    v7 = v23;
  }
}

- (void)sceneWillInvalidate:(id)invalidate
{
  v9 = *MEMORY[0x1E69E9840];
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene sceneWillInvalidate:]");
  }

  v5 = FBLogScene(isMainThread);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    loggingIdentifier = [(FBScene *)self loggingIdentifier];
    v7 = 138543362;
    v8 = loggingIdentifier;
    _os_log_impl(&dword_1A89DD000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Parent scene invalidated", &v7, 0xCu);
  }

  [(FBScene *)self setParentScene:0];
}

- (void)sendActions:(id)actions toExtension:(Class)extension
{
  v34 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene sendActions:toExtension:]");
  }

  fbs_singleLineDescriptionOfBSActions = [actionsCopy fbs_singleLineDescriptionOfBSActions];
  v9 = FBLogScene(fbs_singleLineDescriptionOfBSActions);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (extension)
  {
    if (!v10)
    {
      goto LABEL_9;
    }

    loggingIdentifier = [(FBScene *)self loggingIdentifier];
    v12 = NSStringFromClass(extension);
    *buf = 138543874;
    v29 = loggingIdentifier;
    v30 = 2114;
    v31 = v12;
    v32 = 2114;
    v33 = fbs_singleLineDescriptionOfBSActions;
    _os_log_impl(&dword_1A89DD000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending action(s) to %{public}@: %{public}@", buf, 0x20u);
  }

  else
  {
    if (!v10)
    {
      goto LABEL_9;
    }

    loggingIdentifier = [(FBScene *)self loggingIdentifier];
    *buf = 138543618;
    v29 = loggingIdentifier;
    v30 = 2114;
    v31 = fbs_singleLineDescriptionOfBSActions;
    _os_log_impl(&dword_1A89DD000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending action(s): %{public}@", buf, 0x16u);
  }

LABEL_9:
  if (self->_legacy)
  {
    if (self->_invalidated)
    {
      v14 = FBLogScene(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [FBScene sendActions:? toExtension:?];
      }

LABEL_29:

      goto LABEL_30;
    }
  }

  else
  {
    if (!self->_active)
    {
      [FBScene sendActions:a2 toExtension:?];
    }

    if (self->_invalidated)
    {
      [FBScene sendActions:a2 toExtension:?];
    }
  }

  if (extension && ![(FBScene *)self conformsToExtension:extension])
  {
    [FBScene sendActions:extension toExtension:a2];
  }

  v22 = a2;
  objc_opt_class();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = actionsCopy;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      v19 = 0;
      do
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * v19);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [FBScene sendActions:v20 toExtension:v22];
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }

  if (!self->_clientToken)
  {
    v14 = FBLogScene(v21);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [FBScene sendActions:? toExtension:?];
    }

    goto LABEL_29;
  }

  [(FBSceneClient *)self->_client host:self didReceiveActions:v15 forExtension:extension];
LABEL_30:
}

- (void)sendInvocation:(id)invocation
{
  invocationCopy = invocation;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene sendInvocation:]");
  }

  isActive = [(FBScene *)self isActive];
  if (isActive)
  {
    resolve = [invocationCopy resolve];
    v7 = resolve;
    client = self->_client;
    if (resolve)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __26__FBScene_sendInvocation___block_invoke;
      v10[3] = &unk_1E783D340;
      v10[4] = self;
      v11 = resolve;
      [(FBSceneClient *)client host:self sendInvocation:invocationCopy withReply:v10];
    }

    else
    {
      [(FBSceneClient *)self->_client host:self sendInvocation:invocationCopy withReply:0];
    }
  }

  else
  {
    v9 = FBLogScene(isActive);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [FBScene sendInvocation:?];
    }

    [invocationCopy cannotResolveForReason:@"scene is not active"];
  }
}

void __26__FBScene_sendInvocation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __26__FBScene_sendInvocation___block_invoke_2;
  v11[3] = &unk_1E783D200;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  [(FBScene *)v7 _dispatchClientMessageWithBlock:v11];
}

- (BOOL)conformsToExtension:(Class)extension
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene conformsToExtension:]");
  }

  settings = [(FBScene *)self settings];
  if ([(objc_class *)extension isSubclassOfClass:objc_opt_class()])
  {
    specification = [(FBSSceneDefinition *)self->_definition specification];
    v7 = FBSGetDefaultExtensions();
    v8 = [v7 containsObject:extension];

    if (v8)
    {
      v9 = 1;
    }

    else
    {
      _allSceneExtensions = [settings _allSceneExtensions];
      v9 = [_allSceneExtensions containsObject:extension];
    }
  }

  else
  {
    v9 = [settings conformsToExtension:extension];
  }

  return v9;
}

- (id)componentForExtension:(Class)extension ofClass:(Class)class
{
  v21 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene componentForExtension:ofClass:]");
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(NSMapTable *)self->_components objectForKey:extension, 0];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(v7);
      }

      component = [(FBSceneObserver *)*(*(&v16 + 1) + 8 * v11) component];
      if (class)
      {
        v13 = (objc_opt_isKindOfClass() & 1) != 0 ? component : 0;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          goto LABEL_5;
        }

        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    v14 = 0;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isProxy])
  {
    v6 = [equalCopy forwardingTargetForSelector:a2];

    equalCopy = v6;
  }

  v9.receiver = self;
  v9.super_class = FBScene;
  v7 = [(FBScene *)&v9 isEqual:equalCopy];

  return v7;
}

- (uint64_t)_endTransaction:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 200);
    if (*(result + 230) == 1 && v3 == a2)
    {
      *(result + 230) = 0;
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ending transactionID %llu does not match active transactionID %llu", a2, v3];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [(FBScene *)sel__endTransaction_ _endTransaction:v2];
      }

      [v5 UTF8String];
      result = _bs_set_crash_log_message();
      __break(0);
    }
  }

  return result;
}

- (void)_setContentState:(int)state notifyObservers:
{
  v19 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v5 = *(self + 240);
    if (v5 != a2)
    {
      if (!*(self + 248))
      {
        [FBScene _setContentState:? notifyObservers:?];
      }

      if (*(self + 217) == 1)
      {
        v10 = MEMORY[0x1E696AEC0];
        v11 = NSStringFromFBSceneContentState(v5);
        v12 = NSStringFromFBSceneContentState(a2);
        v13 = [v10 stringWithFormat:@"cannot re-entrantly mutate contentState (%@ --> %@)", v11, v12];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [FBScene _setContentState:self notifyObservers:?];
        }

        [v13 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x1A8A36790);
      }

      v7 = FBLogScene(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        loggingIdentifier = [self loggingIdentifier];
        v9 = NSStringFromFBSceneContentState(a2);
        *buf = 138543618;
        v16 = loggingIdentifier;
        v17 = 2114;
        v18 = v9;
        _os_log_impl(&dword_1A89DD000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] scene content state changed: %{public}@", buf, 0x16u);
      }

      *(self + 240) = a2;
      *(self + 217) = 1;
      if (state)
      {
        [FBScene _setContentState:v14 notifyObservers:?];
      }

      *(self + 217) = 0;
    }
  }
}

void __40__FBScene__joinUpdate_block_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a3;
  v6(v5, a2, v7);
  (*(*(a1 + 40) + 16))();
}

- (void)_addExtensions:(void *)extensions removeExtensions:(void *)removeExtensions settings:
{
  v101 = *MEMORY[0x1E69E9840];
  v58 = a2;
  extensionsCopy = extensions;
  removeExtensionsCopy = removeExtensions;
  if (self)
  {
    if (*(self + 227) == 1)
    {
      [FBScene _addExtensions:? removeExtensions:? settings:?];
    }

    selfCopy = self;
    *(self + 227) = 1;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    obj = v58;
    v7 = [obj countByEnumeratingWithState:&v88 objects:v100 count:16];
    v62 = v7;
    if (v7)
    {
      v60 = *v89;
      do
      {
        v8 = 0;
        do
        {
          if (*v89 != v60)
          {
            objc_enumerationMutation(obj);
          }

          v64 = v8;
          v9 = *(*(&v88 + 1) + 8 * v8);
          v10 = FBLogScene(v7);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            identity = [*(selfCopy + 120) identity];
            *buf = 138412546;
            v97 = identity;
            v98 = 2112;
            v99 = v9;
            _os_log_debug_impl(&dword_1A89DD000, v10, OS_LOG_TYPE_DEBUG, "[%@] Adding extension: %@", buf, 0x16u);
          }

          v11 = [objc_alloc(MEMORY[0x1E699FAB0]) initWithScene:selfCopy extension:v9];
          array = [MEMORY[0x1E695DF70] array];
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          hostComponents = [v9 hostComponents];
          v13 = [hostComponents countByEnumeratingWithState:&v84 objects:v95 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v85;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v85 != v15)
                {
                  objc_enumerationMutation(hostComponents);
                }

                v17 = objc_alloc(*(*(&v84 + 1) + 8 * i));
                if (objc_opt_respondsToSelector())
                {
                  v18 = [v17 initWithScene:v11];
                }

                else
                {
                  v18 = [v17 init];
                }

                v19 = v18;
                if (v18)
                {
                  v20 = v9;
                  v21 = FBLogScene(v18);
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                  {
                    identity2 = [*(selfCopy + 120) identity];
                    v23 = [MEMORY[0x1E698E680] succinctDescriptionForObject:v19];
                    *buf = 138412546;
                    v97 = identity2;
                    v98 = 2112;
                    v99 = v23;
                    v24 = v23;
                    _os_log_debug_impl(&dword_1A89DD000, v21, OS_LOG_TYPE_DEBUG, "[%@] Instantiated component: %@", buf, 0x16u);
                  }

                  v9 = v20;
                  v22 = [[FBSceneObserver alloc] initWithComponent:v19 extension:v20];
                  [array addObject:v22];
                }
              }

              v14 = [hostComponents countByEnumeratingWithState:&v84 objects:v95 count:16];
            }

            while (v14);
          }

          v25 = *(selfCopy + 144);
          if (!v25)
          {
            strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
            v27 = *(selfCopy + 144);
            *(selfCopy + 144) = strongToStrongObjectsMapTable;

            array2 = [MEMORY[0x1E695DF70] array];
            v29 = *(selfCopy + 152);
            *(selfCopy + 152) = array2;

            v25 = *(selfCopy + 144);
          }

          v30 = [v25 objectForKey:v9];

          if (v30)
          {
            [FBScene _addExtensions:v9 removeExtensions:sel__addExtensions_removeExtensions_settings_ settings:?];
          }

          [*(selfCopy + 144) setObject:array forKey:v9];
          [*(selfCopy + 152) addObjectsFromArray:array];
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v31 = array;
          v32 = [v31 countByEnumeratingWithState:&v80 objects:v94 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v81;
            do
            {
              for (j = 0; j != v33; ++j)
              {
                if (*v81 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                component = [(FBSceneObserver *)*(*(&v80 + 1) + 8 * j) component];
                if (objc_opt_respondsToSelector())
                {
                  [component setScene:v11];
                }

                if (objc_opt_respondsToSelector())
                {
                  [component configureInitialSettings:removeExtensionsCopy];
                }
              }

              v33 = [v31 countByEnumeratingWithState:&v80 objects:v94 count:16];
            }

            while (v33);
          }

          v8 = v64 + 1;
        }

        while (v64 + 1 != v62);
        v7 = [obj countByEnumeratingWithState:&v88 objects:v100 count:16];
        v62 = v7;
      }

      while (v7);
    }

    v38 = selfCopy;
    *(selfCopy + 227) = 0;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v61 = extensionsCopy;
    v39 = [v61 countByEnumeratingWithState:&v76 objects:v93 count:16];
    v65 = v39;
    if (v39)
    {
      v63 = *v77;
      do
      {
        v40 = 0;
        do
        {
          if (*v77 != v63)
          {
            objc_enumerationMutation(v61);
          }

          v68 = v40;
          v41 = *(*(&v76 + 1) + 8 * v40);
          v42 = FBLogScene(v39);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            loggingIdentifier = [v38 loggingIdentifier];
            v56 = NSStringFromClass(v41);
            *buf = 138412546;
            v97 = loggingIdentifier;
            v98 = 2112;
            v99 = v56;
            _os_log_debug_impl(&dword_1A89DD000, v42, OS_LOG_TYPE_DEBUG, "[%@] Removing extension: %@", buf, 0x16u);

            v38 = selfCopy;
          }

          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v66 = v41;
          v43 = [v38[18] objectForKey:v41];
          v44 = [v43 countByEnumeratingWithState:&v72 objects:v92 count:16];
          if (v44)
          {
            v45 = v44;
            v46 = *v73;
            do
            {
              for (k = 0; k != v45; ++k)
              {
                if (*v73 != v46)
                {
                  objc_enumerationMutation(v43);
                }

                v48 = *(*(&v72 + 1) + 8 * k);
                component2 = [(FBSceneObserver *)v48 component];
                if (objc_opt_respondsToSelector())
                {
                  [component2 componentWillInvalidate:removeExtensionsCopy];
                }

                if (objc_opt_respondsToSelector())
                {
                  [component2 invalidate];
                }

                [v38[19] removeObjectIdenticalTo:v48];
                v50 = FBLogScene([v48 invalidate]);
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                {
                  loggingIdentifier2 = [v38 loggingIdentifier];
                  v52 = [MEMORY[0x1E698E680] succinctDescriptionForObject:component2];
                  *buf = 138412546;
                  v97 = loggingIdentifier2;
                  v98 = 2112;
                  v99 = v52;
                  _os_log_debug_impl(&dword_1A89DD000, v50, OS_LOG_TYPE_DEBUG, "[%@] Invalidated component: %@", buf, 0x16u);

                  v38 = selfCopy;
                }
              }

              v45 = [v43 countByEnumeratingWithState:&v72 objects:v92 count:16];
            }

            while (v45);
          }

          [v38[18] removeObjectForKey:v66];
          v39 = [v38[18] count];
          if (!v39)
          {
            v53 = v38[18];
            v38[18] = 0;

            v54 = v38[19];
            v38[19] = 0;
          }

          v40 = v68 + 1;
        }

        while (v68 + 1 != v65);
        v39 = [v61 countByEnumeratingWithState:&v76 objects:v93 count:16];
        v65 = v39;
      }

      while (v39);
    }
  }
}

void __48__FBScene__activateWithTransitionContext_error___block_invoke_2(uint64_t result)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(result + 64) == 1)
  {
    v3 = (result + 32);
    v2 = *(result + 32);
    if ((*(v2 + 221) & 1) == 0 && *(v2 + 219) == 1 && *(result + 48) == *(v2 + 192))
    {
      if (*(v2 + 232))
      {
        __48__FBScene__activateWithTransitionContext_error___block_invoke_2_cold_1(result, (result + 32));
      }

      v4 = [FBSceneClientHandle handleForScene:"handleForScene:clientProcess:" clientProcess:?];
      v5 = *(result + 32);
      v6 = *(v5 + 232);
      *(v5 + 232) = v4;

      v8 = FBLogScene(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [*v3 loggingIdentifier];
        v10 = *(*v3 + 29);
        *buf = 138543618;
        v13 = v9;
        v14 = 2114;
        v15 = v10;
        _os_log_impl(&dword_1A89DD000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Client process connected: %{public}@", buf, 0x16u);
      }

      if (([(FBSceneWorkspace *)*(*v3 + 31) _suppressConnectionHandshakes]& 1) == 0)
      {
        __48__FBScene__activateWithTransitionContext_error___block_invoke_2_cold_2(v3, v11);
      }
    }
  }
}

- (void)_applySettingsUpdateWithCompletion:(uint64_t)completion
{
  v154 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (completion)
  {
    isMainThread = [MEMORY[0x1E696AF00] isMainThread];
    if ((isMainThread & 1) == 0)
    {
      __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene _applySettingsUpdateWithCompletion:]");
    }

    if (*(completion + 230) == 1)
    {
      [(FBScene *)completion _applySettingsUpdateWithCompletion:?];
    }

    if ((*(completion + 223) & 1) == 0)
    {
      [FBScene _applySettingsUpdateWithCompletion:?];
    }

    v5 = *(completion + 168);
    if (!v5)
    {
      [FBScene _applySettingsUpdateWithCompletion:?];
    }

    if (*(completion + 228) == 1)
    {
      [FBScene _applySettingsUpdateWithCompletion:?];
    }

    if ((*(completion + 229) & 1) == 0)
    {
      [FBScene _applySettingsUpdateWithCompletion:?];
    }

    if (*(completion + 221) == 1)
    {
      v6 = FBLogScene(isMainThread);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [FBScene _applySettingsUpdateWithCompletion:completion];
      }

      transitionContext = [*(completion + 168) transitionContext];
      captureCompletions = [transitionContext captureCompletions];

      [(FBScene *)completion _resetUpdateState];
      v9 = FBSceneErrorCreate(2uLL, @"Cannot update an invalidated scene.", 0);
      v143[0] = MEMORY[0x1E69E9820];
      v143[1] = 3221225472;
      v143[2] = __46__FBScene__applySettingsUpdateWithCompletion___block_invoke;
      v143[3] = &unk_1E783D400;
      v144 = v9;
      v145 = captureCompletions;
      completionCopy = completion;
      v147 = v3;
      loggingIdentifier2 = captureCompletions;
      v11 = v9;
      [(FBScene *)completion _dispatchClientMessageWithBlock:v143];

      v12 = v147;
    }

    else
    {
      v11 = v5;
      v13 = MEMORY[0x1E699FD18];
      parentUpdate = [*&v11[*MEMORY[0x1E699FD18]] parentUpdate];
      v15 = *MEMORY[0x1E699FD28];
      v16 = *&v11[v15];
      *&v11[v15] = parentUpdate;

      completionCopy2 = completion;
      if (*(completion + 219) == 1)
      {
        if (!*(completion + 248))
        {
          [FBScene _applySettingsUpdateWithCompletion:?];
        }

        v17 = MEMORY[0x1E699FD30];
        v18 = *&v11[*MEMORY[0x1E699FD30]];
        v19 = MEMORY[0x1E699FD40];
        v20 = *&v11[*MEMORY[0x1E699FD40]];
        v117 = v3;
        if (v18)
        {
          if (([v18 isEqual:v20] & 1) == 0)
          {
            [FBScene _applySettingsUpdateWithCompletion:?];
          }
        }

        else
        {
          [(FBScene *)v20 _applySettingsUpdateWithCompletion:v11];
        }

        v34 = [MEMORY[0x1E699FC80] diffFromSettings:*&v11[*MEMORY[0x1E699FD38]] toSettings:*&v11[*v19]];
        v35 = *MEMORY[0x1E699FD20];
        v36 = *&v11[v35];
        *&v11[v35] = v34;

        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        _allComponentProxies = [(FBScene *)completion _allComponentProxies];
        v38 = [_allComponentProxies countByEnumeratingWithState:&v139 objects:v153 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v140;
          do
          {
            for (i = 0; i != v39; ++i)
            {
              if (*v140 != v40)
              {
                objc_enumerationMutation(_allComponentProxies);
              }

              v42 = *(*(&v139 + 1) + 8 * i);
              if ([(FBSceneObserver *)v42 receiverImplementsWillUpdate])
              {
                settings = [v11 settings];
                [v42 scene:completion willUpdateSettings:v11];
                v44 = [settings isEqual:*&v11[*v17]];
                if ((v44 & 1) == 0)
                {
                  v45 = FBLogScene(v44);
                  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
                  {
                    loggingIdentifier = [completion loggingIdentifier];
                    v52 = MEMORY[0x1E698E680];
                    component = [(FBSceneObserver *)v42 component];
                    v53 = [v52 succinctDescriptionForObject:component];
                    v54 = [MEMORY[0x1E699FC80] diffFromSettings:settings toSettings:*&v11[*MEMORY[0x1E699FD30]]];
                    *buf = 138412802;
                    v149 = loggingIdentifier;
                    v150 = 2112;
                    *v151 = v53;
                    *&v151[8] = 2112;
                    v152 = v54;
                    _os_log_debug_impl(&dword_1A89DD000, v45, OS_LOG_TYPE_DEBUG, "[%@] component %@ mutated settings: %@", buf, 0x20u);

                    v19 = MEMORY[0x1E699FD40];
                    completion = completionCopy2;
                  }

                  v17 = MEMORY[0x1E699FD30];
                  v46 = [*&v11[*MEMORY[0x1E699FD30]] copy];
                  v47 = *v19;
                  v48 = *&v11[v47];
                  *&v11[v47] = v46;

                  v49 = [MEMORY[0x1E699FC80] diffFromSettings:*&v11[*MEMORY[0x1E699FD38]] toSettings:*&v11[*v19]];
                  v50 = *MEMORY[0x1E699FD20];
                  v51 = *&v11[v50];
                  *&v11[v50] = v49;
                }
              }
            }

            v39 = [_allComponentProxies countByEnumeratingWithState:&v139 objects:v153 count:16];
          }

          while (v39);
        }

        v55 = *(completion + 168);
        *(completion + 168) = 0;

        loggingIdentifier2 = [completion loggingIdentifier];
        v124 = *(completion + 218);
        _beginTransaction = [(FBScene *)completion _beginTransaction];
        v122 = _beginTransaction == 1;
        v57 = MEMORY[0x1E699FD18];
        v58 = [*&v11[*MEMORY[0x1E699FD18]] copy];
        _createTransitionContext = v58;
        if (!v58)
        {
          _createTransitionContext = [completion _createTransitionContext];
        }

        objc_storeStrong(&v11[*v57], _createTransitionContext);
        if (!v58)
        {
        }

        v12 = *&v11[*v57];
        settings2 = [v11 settings];
        mutableSettings = [v11 mutableSettings];
        if ([*(completion + 248) scene:completion willUpdateSettings:v11] && (objc_msgSend(*&v11[*MEMORY[0x1E699FD40]], "isEqual:", mutableSettings) & 1) == 0)
        {
          delegate = [*(completion + 248) delegate];
          v63 = FBLogScene(delegate);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
          {
            v64 = [MEMORY[0x1E698E680] succinctDescriptionForObject:delegate];
            [MEMORY[0x1E699FC80] diffFromSettings:*&v11[*MEMORY[0x1E699FD40]] toSettings:mutableSettings];
            v66 = v65 = _beginTransaction;
            *buf = 138412802;
            v149 = loggingIdentifier2;
            v150 = 2112;
            *v151 = v64;
            *&v151[8] = 2112;
            v152 = v66;
            _os_log_debug_impl(&dword_1A89DD000, v63, OS_LOG_TYPE_DEBUG, "[%@] workspace delegate %@ mutated settings: %@", buf, 0x20u);

            _beginTransaction = v65;
          }

          v67 = [mutableSettings _copyClearingProgenitor:0];
          v68 = MEMORY[0x1E699FD40];
          v69 = *MEMORY[0x1E699FD40];
          v70 = *&v11[v69];
          *&v11[v69] = v67;

          v71 = [MEMORY[0x1E699FC80] diffFromSettings:*&v11[*MEMORY[0x1E699FD38]] toSettings:*&v11[*v68]];
          v72 = *MEMORY[0x1E699FD20];
          v73 = *&v11[v72];
          *&v11[v72] = v71;

          completion = completionCopy2;
        }

        _synchronizer = [(FBWorkspace *)completion _synchronizer];
        if ([(FBSceneObserver *)_synchronizer receiverImplementsWillUpdate])
        {
          [_synchronizer scene:completion willUpdateSettings:v11];
          if (([*&v11[*MEMORY[0x1E699FD40]] isEqual:mutableSettings] & 1) == 0)
          {
            v75 = _beginTransaction;
            delegate2 = [(FBSceneObserver *)_synchronizer delegate];
            v76 = FBLogScene(delegate2);
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
            {
              v77 = [MEMORY[0x1E698E680] succinctDescriptionForObject:delegate2];
              v78 = [MEMORY[0x1E699FC80] diffFromSettings:*&v11[*MEMORY[0x1E699FD40]] toSettings:mutableSettings];
              *buf = 138412802;
              v149 = loggingIdentifier2;
              v150 = 2112;
              *v151 = v77;
              *&v151[8] = 2112;
              v152 = v78;
              _os_log_debug_impl(&dword_1A89DD000, v76, OS_LOG_TYPE_DEBUG, "[%@] delegate %@ mutated settings: %@", buf, 0x20u);

              completion = completionCopy2;
            }

            v79 = [mutableSettings _copyClearingProgenitor:0];
            v80 = MEMORY[0x1E699FD40];
            v81 = *MEMORY[0x1E699FD40];
            v82 = *&v11[v81];
            *&v11[v81] = v79;

            v83 = [MEMORY[0x1E699FC80] diffFromSettings:*&v11[*MEMORY[0x1E699FD38]] toSettings:*&v11[*v80]];
            v84 = *MEMORY[0x1E699FD20];
            v85 = *&v11[v84];
            *&v11[v84] = v83;

            _beginTransaction = v75;
          }
        }

        isForeground = [settings2 isForeground];
        isForeground2 = [mutableSettings isForeground];
        if (isForeground != isForeground2)
        {
          v88 = FBLogScene(isForeground2);
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
          {
            isForeground3 = [settings2 isForeground];
            isForeground4 = [mutableSettings isForeground];
            *buf = 138543874;
            v149 = loggingIdentifier2;
            v150 = 1024;
            *v151 = isForeground3;
            completion = completionCopy2;
            *&v151[4] = 1024;
            *&v151[6] = isForeground4;
            _os_log_impl(&dword_1A89DD000, v88, OS_LOG_TYPE_DEFAULT, "[%{public}@] isForeground changed from %{BOOL}u to %{BOOL}u after interception", buf, 0x18u);
          }
        }

        if (v124 && _beginTransaction == 1)
        {
          settings3 = [v11 settings];
          v92 = [settings3 _copyClearingProgenitor:0];
          v93 = *(completion + 104);
          *(completion + 104) = v92;
        }

        v94 = *MEMORY[0x1E699FD30];
        v95 = *&v11[v94];
        *&v11[v94] = 0;

        settingsDiff = [v11 settingsDiff];
        v97 = settingsDiff;
        if (_beginTransaction == 1 || settingsDiff || (v98 = [v12 _indirect_isEmpty], !v98))
        {
          settings4 = [v11 settings];
          completionCopy3 = completion;
          v102 = [settings4 _copyClearingProgenitor:0];

          objc_storeStrong(&v11[*MEMORY[0x1E699FD40]], v102);
          v125 = [FBSceneEventQueue suspendIdleWorkForReason:@"finishUpdate"];
          v103 = [FBSceneUpdateContext contextWithSceneID:*(completionCopy3 + 80) transactionID:_beginTransaction settings:v102 settingsDiff:v97 transitionContext:v12];
          [v12 setUpdateContext:v103];
          v136[0] = MEMORY[0x1E69E9820];
          v136[1] = 3221225472;
          v136[2] = __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_2;
          v136[3] = &unk_1E783D428;
          v136[4] = completionCopy3;
          v104 = v103;
          v137 = v104;
          [(FBScene *)completionCopy3 _iterateObservers:v136];
          [*(completionCopy3 + 248) scene:completionCopy3 didPrepareUpdate:v11];
          actions = [v12 actions];
          fbs_singleLineDescriptionOfBSActions = [actions fbs_singleLineDescriptionOfBSActions];

          v107 = [fbs_singleLineDescriptionOfBSActions length];
          if (v107)
          {
            v108 = FBLogScene(v107);
            if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v149 = loggingIdentifier2;
              v150 = 2114;
              *v151 = fbs_singleLineDescriptionOfBSActions;
              _os_log_impl(&dword_1A89DD000, v108, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending action(s) in update: %{public}@", buf, 0x16u);
            }
          }

          v119 = fbs_singleLineDescriptionOfBSActions;
          animationFence = [v12 animationFence];
          if (animationFence)
          {
            v110 = FBGetFencingProvider();
            [v110 synchronizeDrawingWithFence:animationFence];
          }

          v111 = *(completionCopy2 + 104);
          *(completionCopy2 + 104) = v102;
          v112 = v102;

          v113 = *(completionCopy2 + 136);
          *(completionCopy2 + 136) = 0;

          [(FBScene *)completionCopy2 _resetUpdateState];
          v114 = *(completionCopy2 + 48);
          v127[0] = MEMORY[0x1E69E9820];
          v127[1] = 3221225472;
          v127[2] = __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_292;
          v127[3] = &unk_1E783D4F0;
          v127[4] = completionCopy2;
          v134 = _beginTransaction;
          v128 = v11;
          v129 = v12;
          v130 = loggingIdentifier2;
          v3 = v117;
          v132 = v97;
          v133 = v117;
          v131 = v104;
          v135 = v122;
          v115 = v97;
          v116 = v104;
          loggingIdentifier2 = loggingIdentifier2;
          [v114 executeOrAppend:v127];
          [v125 invalidate];
        }

        else
        {
          v99 = FBLogScene(v98);
          if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v149 = loggingIdentifier2;
            _os_log_impl(&dword_1A89DD000, v99, OS_LOG_TYPE_INFO, "[%{public}@] Update was a no-op.", buf, 0xCu);
          }

          [(FBScene *)completion _endTransaction:_beginTransaction];
          [(FBScene *)completion _resetUpdateState];
          v3 = v117;
          if (v117)
          {
            [FBScene _applySettingsUpdateWithCompletion:v138];
          }
        }
      }

      else
      {
        if (*(completion + 224) == 1 && *(completion + 218) == 1)
        {
          [FBScene _applySettingsUpdateWithCompletion:?];
        }

        specification = [*(completion + 120) specification];
        transitionContext2 = [v11 transitionContext];
        v23 = [specification _isSignificantTransitionContext:transitionContext2];

        if (v23)
        {
          [FBScene _applySettingsUpdateWithCompletion:?];
        }

        if (v3)
        {
          [FBScene _applySettingsUpdateWithCompletion:?];
        }

        v24 = *(completionCopy2 + 104);
        loggingIdentifier2 = v24;
        settings5 = [v11 settings];
        v12 = [settings5 _copyClearingProgenitor:0];

        v26 = *MEMORY[0x1E699FD30];
        v27 = *&v11[v26];
        *&v11[v26] = 0;

        objc_storeStrong(&v11[*MEMORY[0x1E699FD38]], v24);
        v28 = [MEMORY[0x1E699FC80] diffFromSettings:loggingIdentifier2 toSettings:v12];
        v29 = MEMORY[0x1E699FD20];
        v30 = *MEMORY[0x1E699FD20];
        v31 = *&v11[v30];
        *&v11[v30] = v28;

        objc_storeStrong((completionCopy2 + 104), v12);
        objc_storeStrong(&v11[*MEMORY[0x1E699FD40]], v12);
        v32 = *v13;
        v33 = *&v11[v32];
        *&v11[v32] = 0;

        [(FBScene *)completionCopy2 _resetUpdateState];
        if (*&v11[*v29])
        {
          [FBScene _applySettingsUpdateWithCompletion:v126];
        }
      }
    }
  }
}

void __46__FBScene__applySettingsUpdateWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, 0, *(a1 + 32));
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v8 + 1) + 8 * v7) + 16))(*(*(&v8 + 1) + 8 * v7));
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v7 = FBLogScene(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_3_cold_1(a1, v6);
    }
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v6);
  }

  if ([*(a1 + 40) isActive])
  {
    __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_3_cold_2((a1 + 40), v18, a1, v6);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = *(a1 + 56);
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        (*(*(*(&v14 + 1) + 8 * v13) + 16))(*(*(&v14 + 1) + 8 * v13));
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v11);
  }
}

void __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = FBSceneErrorCreate(1uLL, @"No scene client exists", 0);
  (*(v1 + 16))(v1, 0, v2);
}

void __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_312(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([(FBSceneObserver *)v3 receiverWantsInactiveUpdates])
  {
    [v3 scene:*(a1 + 32) didUpdateSettings:*(a1 + 40)];
  }
}

- (void)_deactivateClient:(void *)client withContext:
{
  v5 = a2;
  clientCopy = client;
  v7 = clientCopy;
  if (self)
  {
    error = [clientCopy error];
    if (!error)
    {
      [FBScene _deactivateClient:? withContext:?];
    }

    v9 = error;
    domain = [error domain];
    v11 = [domain isEqualToString:@"FBSceneErrorDomain"];

    if ((v11 & 1) == 0)
    {
      [FBScene _deactivateClient:? withContext:?];
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __41__FBScene__deactivateClient_withContext___block_invoke;
    v12[3] = &unk_1E783B300;
    v13 = v5;
    selfCopy = self;
    v15 = v7;
    [(FBScene *)self _dispatchClientMessageWithBlock:v12];
  }
}

void __41__FBScene__deactivateClient_withContext___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v2 = a1[5];
  if (v3 == *(v2 + 56))
  {
    v8 = a1[6];

    [(FBScene *)v2 _deactivateAndInvalidate:v8 transitionContext:?];
  }

  else
  {
    v4 = FBLogScene(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1[5] loggingIdentifier];
      v6 = a1[4];
      v7 = *(a1[5] + 56);
      v9 = 138543874;
      v10 = v5;
      v11 = 2048;
      v12 = v7;
      v13 = 2048;
      v14 = v6;
      _os_log_impl(&dword_1A89DD000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring client invalidation due to token mismatch (probably due to prior deactivation). expected=%p received=%p", &v9, 0x20u);
    }
  }
}

void __54__FBScene__deactivateAndInvalidate_transitionContext___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void __54__FBScene__deactivateAndInvalidate_transitionContext___block_invoke_338(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void __54__FBScene__deactivateAndInvalidate_transitionContext___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(a1 + 48);
  v6 = FBLogScene(v4);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 == 1)
  {
    if (v4)
    {
      if (v7)
      {
        v8 = [*(a1 + 32) loggingIdentifier];
        v9 = *(a1 + 40);
        v10 = [v4 succinctDescription];
        v16 = 138543874;
        v17 = v8;
        v18 = 2048;
        v19 = v9;
        v20 = 2114;
        v21 = v10;
        v11 = "[%{public}@][%lu] Scene invalidated with error: %{public}@.";
LABEL_8:
        _os_log_impl(&dword_1A89DD000, v6, OS_LOG_TYPE_DEFAULT, v11, &v16, 0x20u);

LABEL_14:
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = [*(a1 + 32) loggingIdentifier];
    v13 = *(a1 + 40);
    v16 = 138543618;
    v17 = v8;
    v18 = 2048;
    v19 = v13;
    v14 = "[%{public}@][%lu] Scene invalidated.";
LABEL_13:
    _os_log_impl(&dword_1A89DD000, v6, OS_LOG_TYPE_DEFAULT, v14, &v16, 0x16u);
    goto LABEL_14;
  }

  if (!v4)
  {
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = [*(a1 + 32) loggingIdentifier];
    v15 = *(a1 + 40);
    v16 = 138543618;
    v17 = v8;
    v18 = 2048;
    v19 = v15;
    v14 = "[%{public}@][%lu] Scene deactivated.";
    goto LABEL_13;
  }

  if (v7)
  {
    v8 = [*(a1 + 32) loggingIdentifier];
    v12 = *(a1 + 40);
    v10 = [v4 succinctDescription];
    v16 = 138543874;
    v17 = v8;
    v18 = 2048;
    v19 = v12;
    v20 = 2114;
    v21 = v10;
    v11 = "[%{public}@][%lu] Scene deactivated with error: %{public}@.";
    goto LABEL_8;
  }

LABEL_15:
}

void __54__FBScene__deactivateAndInvalidate_transitionContext___block_invoke_348(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 48) == 1)
  {
    [v3 sceneDidDeactivate:*(a1 + 32) withContext:*(a1 + 40)];
    v3 = v4;
  }

  if (*(a1 + 49) == 1)
  {
    [v4 sceneDidInvalidate:*(a1 + 32) withContext:*(a1 + 40)];
    v3 = v4;
  }
}

void __50__FBScene__verifyIntegrityOfExtensionsInSettings___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 _removeAllSceneExtensions];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 _addSceneExtension:*(*(&v9 + 1) + 8 * v8++) applyingSettings:{*(a1 + 40), v9}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (FBSProcess)hostProcess
{
  domain = [(FBWorkspaceEventDispatcher *)self->_workspace domain];
  currentProcess = [domain currentProcess];

  return currentProcess;
}

void __74__FBScene_clientToken_didUpdateClientSettings_withDiff_transitionContext___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v2 = (a1 + 40);
  if (*(v2 - 1) == *(v3 + 56))
  {
    __74__FBScene_clientToken_didUpdateClientSettings_withDiff_transitionContext___block_invoke_cold_1(v2, a1, &v8, buf);
    v4 = *buf;
  }

  else
  {
    v4 = FBLogScene(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 40) loggingIdentifier];
      v6 = *(a1 + 32);
      v7 = *(*(a1 + 40) + 56);
      *buf = 138543874;
      *&buf[4] = v5;
      v10 = 2048;
      v11 = v7;
      v12 = 2048;
      v13 = v6;
      _os_log_impl(&dword_1A89DD000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring scene client update due to token mismatch (probably due to prior deactivation). expected=%p received=%p", buf, 0x20u);
    }
  }
}

void __54__FBScene_clientToken_didReceiveActions_forExtension___block_invoke(uint64_t a1)
{
  v88 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 != v2[7])
  {
    v4 = FBLogScene(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 40) loggingIdentifier];
      v6 = *(a1 + 32);
      v7 = *(*(a1 + 40) + 56);
      *buf = 138543874;
      v83 = v5;
      v84 = 2048;
      v85 = v7;
      v86 = 2048;
      v87 = v6;
      _os_log_impl(&dword_1A89DD000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring actions due to token mismatch (probably due to prior deactivation). expected=%p received=%p", buf, 0x20u);
    }

    goto LABEL_4;
  }

  v4 = [v2 loggingIdentifier];
  v8 = *(a1 + 56);
  v9 = FBLogScene(v4);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = NSStringFromClass(*(a1 + 56));
      v12 = [*(a1 + 48) fbs_singleLineDescriptionOfBSActions];
      *buf = 138543874;
      v83 = v4;
      v84 = 2114;
      v85 = v11;
      v86 = 2114;
      v87 = v12;
      _os_log_impl(&dword_1A89DD000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received action(s) for %{public}@: %{public}@", buf, 0x20u);

      goto LABEL_10;
    }
  }

  else if (v10)
  {
    v11 = [*(a1 + 48) fbs_singleLineDescriptionOfBSActions];
    *buf = 138543618;
    v83 = v4;
    v84 = 2114;
    v85 = v11;
    _os_log_impl(&dword_1A89DD000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received action(s): %{public}@", buf, 0x16u);
LABEL_10:
  }

  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = *(a1 + 40);
  if (v14)
  {
    [(FBScene *)v15 _componentProxiesForExtension:v14];
  }

  else
  {
    [(FBScene *)v15 _allComponentProxies];
  }
  v16 = ;
  if ([v16 count])
  {
    v66 = v4;
    v61 = v13;
    v17 = [v13 mutableCopy];
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v63 = v16;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v76 objects:v81 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v77;
LABEL_17:
      v22 = 0;
      while (1)
      {
        if (*v77 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v76 + 1) + 8 * v22);
        v24 = *(a1 + 40);
        if (*(a1 + 56))
        {
          [v23 scene:v24 handlePrivateActions:v17];
        }

        else
        {
          [v23 scene:v24 handleActions:v17];
        }
        v25 = ;
        v26 = [v25 count];
        if (v26)
        {
          v27 = FBLogScene(v26);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = [MEMORY[0x1E698E680] succinctDescriptionForObject:v23];
            [v25 fbs_singleLineDescriptionOfBSActions];
            v30 = v29 = v18;
            *buf = 138543874;
            v83 = v66;
            v84 = 2114;
            v85 = v28;
            v86 = 2112;
            v87 = v30;
            _os_log_impl(&dword_1A89DD000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] Component %{public}@ handled action(s): %@", buf, 0x20u);

            v18 = v29;
          }

          [v17 minusSet:v25];
        }

        v31 = [v17 count];

        if (!v31)
        {
          break;
        }

        if (v20 == ++v22)
        {
          v20 = [v18 countByEnumeratingWithState:&v76 objects:v81 count:16];
          if (v20)
          {
            goto LABEL_17;
          }

          break;
        }
      }
    }

    v13 = [v17 copy];
    v16 = v63;
    v4 = v66;
  }

  if (*(a1 + 56))
  {
    v32 = [v13 count];
    if (v32)
    {
      v33 = FBLogScene(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        NSStringFromClass(*(a1 + 56));
        v41 = v40 = v16;
        v42 = [v13 fbs_singleLineDescriptionOfBSActions];
        *buf = 138543874;
        v83 = v4;
        v84 = 2114;
        v85 = v41;
        v86 = 2114;
        v87 = v42;
        _os_log_error_impl(&dword_1A89DD000, v33, OS_LOG_TYPE_ERROR, "[%{public}@] Extension %{public}@ did not handle actions: %{public}@", buf, 0x20u);

        v16 = v40;
      }

      v13 = 0;
    }
  }

  if ([v13 count])
  {
    v64 = v16;
    v34 = [(FBWorkspace *)*(a1 + 40) _synchronizer];
    v35 = [(FBSceneObserver *)v34 delegateReceivesActions];
    if (v35)
    {
      v36 = FBLogScene(v35);
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG);

      if (v37)
      {
        v38 = [(FBSceneObserver *)v34 delegate];
        v39 = FBLogScene(v38);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          __54__FBScene_clientToken_didReceiveActions_forExtension___block_invoke_cold_1(v4, v38, v39);
        }
      }

      [v34 scene:*(a1 + 40) didReceiveActions:v13];
    }

    else
    {
      v43 = [v13 mutableCopy];
      v44 = *(a1 + 40);
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __54__FBScene_clientToken_didReceiveActions_forExtension___block_invoke_362;
      v71[3] = &unk_1E783D590;
      v72 = v43;
      v45 = v34;
      v46 = *(a1 + 40);
      v47 = v72;
      v73 = v45;
      v74 = v46;
      v48 = v4;
      v75 = v48;
      [(FBScene *)v44 _iterateObservers:v71];
      v49 = [v47 count];
      if (v49)
      {
        v65 = v34;
        v62 = v13;
        v50 = FBLogScene(v49);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = [v47 fbs_singleLineDescriptionOfBSActions];
          *buf = 138543618;
          v83 = v48;
          v84 = 2114;
          v85 = v51;
          _os_log_impl(&dword_1A89DD000, v50, OS_LOG_TYPE_DEFAULT, "[%{public}@] Dropping unhandled action(s): %{public}@", buf, 0x16u);
        }

        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v52 = v47;
        v53 = [v52 countByEnumeratingWithState:&v67 objects:v80 count:16];
        if (v53)
        {
          v54 = v53;
          v55 = *v68;
          do
          {
            for (i = 0; i != v54; ++i)
            {
              if (*v68 != v55)
              {
                objc_enumerationMutation(v52);
              }

              v57 = *(*(&v67 + 1) + 8 * i);
              if ([v57 canSendResponse])
              {
                v58 = MEMORY[0x1E698E600];
                v59 = FBSceneErrorCreate(3uLL, @"No handler for action.", 0);
                v60 = [v58 responseForError:v59];
                [v57 sendResponse:v60];
              }

              [v57 invalidate];
            }

            v54 = [v52 countByEnumeratingWithState:&v67 objects:v80 count:16];
          }

          while (v54);
        }

        v13 = v62;
        v34 = v65;
      }
    }

    v16 = v64;
  }

LABEL_4:
}

void __54__FBScene_clientToken_didReceiveActions_forExtension___block_invoke_362(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    v4 = [(FBSceneObserver *)v3 component];
    if (v4)
    {
    }

    else if ([(FBSceneObserver *)v3 observerHandlesActions])
    {
      v5 = *(a1 + 40);
      v6 = [(FBSceneObserver *)v3 observer];
      v7 = [v3 scene:*(a1 + 48) handleActions:*(a1 + 32)];
      v8 = [v7 count];
      v9 = FBLogScene(v8);
      v10 = v9;
      if (v8)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 56);
          if (v5 == v3)
          {
            v12 = "Delegate";
          }

          else
          {
            v12 = "Observer";
          }

          v13 = [MEMORY[0x1E698E680] succinctDescriptionForObject:v6];
          v14 = [v7 fbs_singleLineDescriptionOfBSActions];
          v18 = 138544130;
          v19 = v11;
          v20 = 2082;
          v21 = v12;
          v22 = 2114;
          v23 = v13;
          v24 = 2112;
          v25 = v14;
          _os_log_impl(&dword_1A89DD000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}s %{public}@ handled action(s): %@", &v18, 0x2Au);
        }

        [*(a1 + 32) minusSet:v7];
      }

      else
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v15 = *(a1 + 56);
          if (v5 == v3)
          {
            v16 = "Delegate";
          }

          else
          {
            v16 = "Observer";
          }

          v17 = [MEMORY[0x1E698E680] succinctDescriptionForObject:v6];
          v18 = 138543874;
          v19 = v15;
          v20 = 2082;
          v21 = v16;
          v22 = 2114;
          v23 = v17;
          _os_log_debug_impl(&dword_1A89DD000, v10, OS_LOG_TYPE_DEBUG, "[%{public}@] %{public}s %{public}@ handled no actions.", &v18, 0x20u);
        }
      }
    }
  }
}

void __50__FBScene_clientToken_handleInvocation_withReply___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) == *(*(a1 + 40) + 56))
  {
    v6 = *(a1 + 48);

    [v6 invokeWithReceiver:? replyHandler:?];
  }

  else
  {
    v2 = FBLogScene(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 40) loggingIdentifier];
      v4 = *(a1 + 32);
      v5 = *(*(a1 + 40) + 56);
      v7 = 138543874;
      v8 = v3;
      v9 = 2048;
      v10 = v5;
      v11 = 2048;
      v12 = v4;
      _os_log_impl(&dword_1A89DD000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring invocations due to token mismatch (probably due to prior deactivation). expected=%p received=%p", &v7, 0x20u);
    }
  }
}

- (void)clientToken:(id)token deactivateWithContext:(id)context
{
  v16 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  tokenCopy = token;
  v8 = FBLogScene(tokenCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    loggingIdentifier = [(FBScene *)self loggingIdentifier];
    v14 = 138543362;
    v15 = loggingIdentifier;
    _os_log_impl(&dword_1A89DD000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Explicit client invalidation.", &v14, 0xCu);
  }

  v10 = contextCopy;
  _createTransitionContext = v10;
  if (!v10)
  {
    _createTransitionContext = [(FBScene *)self _createTransitionContext];
  }

  error = [_createTransitionContext error];
  v13 = FBSceneErrorCreate(5uLL, @"Scene was invalidated by the client.", error);
  [_createTransitionContext setError:v13];

  [(FBScene *)self _deactivateClient:tokenCopy withContext:_createTransitionContext];
}

- (void)clientToken:(id)token didInvalidateWithError:(id)error
{
  errorCopy = error;
  tokenCopy = token;
  _createTransitionContext = [(FBScene *)self _createTransitionContext];
  [_createTransitionContext setError:errorCopy];

  [(FBScene *)self _deactivateClient:tokenCopy withContext:_createTransitionContext];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBScene *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x1E696AF00];
  prefixCopy = prefix;
  if (([v4 isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene descriptionBuilderWithMultilinePrefix:]");
  }

  succinctDescriptionBuilder = [(FBScene *)self succinctDescriptionBuilder];
  v7 = [succinctDescriptionBuilder appendBool:self->_legacy withName:@"legacy" ifEqualTo:1];
  v8 = [succinctDescriptionBuilder appendBool:self->_invalidated withName:@"invalidated" ifEqualTo:1];
  if (!self->_invalidated)
  {
    v9 = [succinctDescriptionBuilder appendBool:self->_active withName:@"active"];
  }

  v10 = [succinctDescriptionBuilder appendBool:-[FBSSceneSettings isForeground](self->_settings withName:{"isForeground"), @"FG"}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __49__FBScene_descriptionBuilderWithMultilinePrefix___block_invoke;
  v14[3] = &unk_1E783B240;
  v11 = succinctDescriptionBuilder;
  v15 = v11;
  selfCopy = self;
  [v11 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v14];

  v12 = v11;
  return v11;
}

id __49__FBScene_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 120) specification];
  v4 = [v2 appendClass:objc_opt_class() withName:@"specification"];

  v5 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 160));
  v7 = [WeakRetained succinctDescription];
  v8 = [v5 appendObject:v7 withName:@"parentScene" skipIfNil:1];

  v9 = *(a1 + 32);
  v10 = NSStringFromFBSceneContentState(*(*(a1 + 40) + 240));
  [v9 appendString:v10 withName:@"contentState"];

  v11 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 104) withName:@"settings" skipIfNil:1];
  v12 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 112) withName:@"clientSettings" skipIfNil:1];
  v13 = *(a1 + 32);
  v14 = [MEMORY[0x1E698E680] succinctDescriptionForObject:*(*(a1 + 40) + 64)];
  v15 = [v13 appendObject:v14 withName:@"clientProvider"];

  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 232) withName:@"clientProcess"];
}

- (id)display
{
  settings = [(FBScene *)self settings];
  displayConfiguration = [settings displayConfiguration];

  return displayConfiguration;
}

void __44__FBScene_UIApp__updateUISettingsWithBlock___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"settings is of an unexpected class : %@", a1];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(*(a2 + 48));
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __54__FBScene_UIApp__updateUISettingsWithTransitionBlock___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"settings is of an unexpected class : %@", a1];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(*(a2 + 48));
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_iterateObservers:(uint64_t)observers
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (observers)
  {
    if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene _iterateObservers:]");
    }

    v4 = *(observers + 24);
    if (v4)
    {
      v5 = OUTLINED_FUNCTION_16_0();
      v6(v5);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [*(observers + 152) copy];
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v3[2](v3, *(*(&v21 + 1) + 8 * v11++));
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v9);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    observerProxies = [(FBScene *)observers observerProxies];
    v13 = [observerProxies countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(observerProxies);
          }

          if (*(*(&v17 + 1) + 8 * v16) != v4)
          {
            (v3[2])(v3);
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [observerProxies countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v14);
    }
  }
}

- (id)_verifyIntegrityOfExtensionsInSettings:(void *)settings
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (settings)
  {
    _progenitor = [v3 _progenitor];
    v6 = settings[13];

    if (_progenitor != v6)
    {
      v8 = FBLogScene(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        loggingIdentifier = [settings loggingIdentifier];
        *buf = 138543362;
        v23 = loggingIdentifier;
        _os_log_error_impl(&dword_1A89DD000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] updated settings were not derived from the scene's previous settings", buf, 0xCu);
      }
    }

    v9 = v4;
    settings = [settings settings];
    _allSceneExtensions = [settings _allSceneExtensions];
    _allSceneExtensions2 = [v9 _allSceneExtensions];
    v13 = BSEqualObjects();
    if ((v13 & 1) == 0)
    {
      v14 = FBLogScene(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        loggingIdentifier2 = [settings loggingIdentifier];
        *buf = 138543362;
        v23 = loggingIdentifier2;
        _os_log_error_impl(&dword_1A89DD000, v14, OS_LOG_TYPE_ERROR, "[%{public}@] Extension mismatch in new scene settings", buf, 0xCu);
      }

      OUTLINED_FUNCTION_5_2();
      v19[1] = 3221225472;
      v19[2] = __50__FBScene__verifyIntegrityOfExtensionsInSettings___block_invoke;
      v19[3] = &unk_1E783D568;
      v20 = _allSceneExtensions;
      v21 = settings;
      v15 = [v9 copy:v19];

      v9 = v15;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_dispatchClientMessageWithBlock:(uint64_t)block
{
  v3 = a2;
  if (block)
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v4 = objc_autoreleasePoolPush();
      [FBSceneEventQueue executeWhenIdle:v3];
      objc_autoreleasePoolPop(v4);
    }

    else
    {
      v5 = +[FBWorkspaceEventDispatcher callOutQueue];
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_15_1();
      v7 = __43__FBScene__dispatchClientMessageWithBlock___block_invoke;
      v8 = &unk_1E783B9B8;
      v9 = v3;
      [v5 performAsync:v6];
    }
  }
}

- (id)_componentProxiesForExtension:(uint64_t)extension
{
  if (extension)
  {
    v2 = [*(extension + 144) objectForKey:a2];
    v3 = [v2 copy];
    v4 = v3;
    v5 = MEMORY[0x1E695E0F0];
    if (v3)
    {
      v5 = v3;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __48__FBScene__activateWithTransitionContext_error___block_invoke_239()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_1();
  v6 = __48__FBScene__activateWithTransitionContext_error___block_invoke_2;
  v7 = &unk_1E783D3B0;
  v12 = v0;
  v3 = v1[6];
  v2 = v1[7];
  v4 = v1[5];
  v8 = v1[4];
  v10 = v3;
  v11 = v2;
  v9 = v4;
  [(FBScene *)v8 _dispatchClientMessageWithBlock:v5];
}

void __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_292(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 240);
  if ([*(v2 + 104) isForeground])
  {
    if (v3)
    {
      goto LABEL_6;
    }

    v4 = *(a1 + 88);
    v3 = 1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *(*(a1 + 32) + 208) = v4;
LABEL_6:
  v5 = *(a1 + 32);
  if (v5)
  {
    [(FBScene *)v5 _setContentState:v3 notifyObservers:1];
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_2_293;
  v41[3] = &unk_1E783D428;
  v41[4] = v6;
  v42 = *(a1 + 40);
  [(FBScene *)v6 _iterateObservers:v41];
  [*(*(a1 + 32) + 248) scene:*(a1 + 32) didApplyUpdate:*(a1 + 40)];
  v7 = [*(a1 + 48) captureCompletions];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_3;
  v35[3] = &unk_1E783D478;
  v36 = *(a1 + 56);
  v8 = *(a1 + 80);
  v9 = *(a1 + 32);
  v40 = v8;
  v37 = v9;
  v38 = *(a1 + 64);
  v10 = v7;
  v39 = v10;
  v11 = MEMORY[0x1AC572E40](v35);
  v12 = v11;
  v13 = *(a1 + 32);
  if (v13[7])
  {
    v14 = v13[8];
    v15 = v13[13];
    v16 = *(a1 + 72);
    v17 = *(a1 + 48);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_2_295;
    v32[3] = &unk_1E783D4C8;
    v18 = *(a1 + 88);
    v33 = v11;
    v34 = v18;
    v32[4] = v13;
    v19 = v11;
    [v14 host:v13 didUpdateSettings:v15 withDiff:v16 transitionContext:v17 completion:v32];
    v20 = v33;
  }

  else
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_4;
    v30[3] = &unk_1E783B9B8;
    v31 = v11;
    v27 = v11;
    [(FBScene *)v13 _dispatchClientMessageWithBlock:v30];
    v20 = v31;
  }

  [(FBScene *)*(a1 + 32) _endTransaction:?];
  if (*(a1 + 96) == 1)
  {
    OUTLINED_FUNCTION_5_2();
    v29[1] = 3221225472;
    v29[2] = __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_5;
    v29[3] = &unk_1E783D228;
    v29[4] = v28;
    [(FBScene *)v28 _iterateObservers:v29];
  }

  v21 = *(a1 + 40);
  v22 = *MEMORY[0x1E699FD18];
  v23 = *(v21 + v22);
  *(v21 + v22) = 0;

  v24 = *(a1 + 40);
  v25 = *MEMORY[0x1E699FD28];
  v26 = *(v24 + v25);
  *(v24 + v25) = 0;
}

void __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_2_295(void *a1, char a2, void *a3)
{
  v5 = a3;
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_1();
  v11 = __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_3_296;
  v12 = &unk_1E783D4A0;
  v17 = a2;
  v7 = a1[4];
  v6 = a1[5];
  v16 = a1[6];
  v13 = v7;
  v14 = v8;
  v15 = v6;
  v9 = v5;
  [(FBScene *)v7 _dispatchClientMessageWithBlock:v10];
}

void __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_3_296(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 32);
    if (*(v2 + 219) == 1 && *(v2 + 208) == *(a1 + 56))
    {
      if ([*(v2 + 104) isForeground])
      {
        v3 = *(a1 + 32);
        if (v3)
        {
          [(FBScene *)v3 _setContentState:1 notifyObservers:?];
        }
      }
    }

    v4 = 0;
  }

  else
  {
    v4 = FBSceneErrorCreate(1uLL, @"Scene update failed.", *(a1 + 40));
  }

  v5 = v4;
  (*(*(a1 + 48) + 16))();
}

- (void)clientToken:(id)token didUpdateClientSettings:(id)settings withDiff:(id)diff transitionContext:(id)context
{
  tokenCopy = token;
  settingsCopy = settings;
  diffCopy = diff;
  contextCopy = context;
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_1();
  v20 = __74__FBScene_clientToken_didUpdateClientSettings_withDiff_transitionContext___block_invoke;
  v21 = &unk_1E783BFE8;
  v22 = tokenCopy;
  selfCopy = self;
  v24 = settingsCopy;
  v25 = diffCopy;
  v26 = v14;
  v15 = v14;
  v16 = diffCopy;
  v17 = settingsCopy;
  v18 = tokenCopy;
  [(FBScene *)self _dispatchClientMessageWithBlock:v19];
}

- (void)clientToken:(id)token didReceiveActions:(id)actions forExtension:(Class)extension
{
  tokenCopy = token;
  actionsCopy = actions;
  OUTLINED_FUNCTION_5_2();
  v13[1] = 3221225472;
  v13[2] = __54__FBScene_clientToken_didReceiveActions_forExtension___block_invoke;
  v13[3] = &unk_1E783D5B8;
  v14 = tokenCopy;
  selfCopy = self;
  v16 = v10;
  extensionCopy = extension;
  v11 = v10;
  v12 = tokenCopy;
  [(FBScene *)self _dispatchClientMessageWithBlock:v13];
}

- (void)clientToken:(id)token handleInvocation:(id)invocation withReply:(id)reply
{
  tokenCopy = token;
  invocationCopy = invocation;
  replyCopy = reply;
  OUTLINED_FUNCTION_5_2();
  v15[1] = 3221225472;
  v15[2] = __50__FBScene_clientToken_handleInvocation_withReply___block_invoke;
  v15[3] = &unk_1E783BB18;
  v16 = tokenCopy;
  selfCopy = self;
  v18 = invocationCopy;
  v19 = v11;
  v12 = v11;
  v13 = invocationCopy;
  v14 = tokenCopy;
  [(FBScene *)self _dispatchClientMessageWithBlock:v15];
}

- (id)targetForInvocation:(id)invocation
{
  v17 = *MEMORY[0x1E69E9840];
  invocationCopy = invocation;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene targetForInvocation:]");
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = -[FBScene _componentProxiesForExtension:](self, [invocationCopy extension]);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_5:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v5);
      }

      component = [(FBSceneObserver *)*(*(&v12 + 1) + 8 * v9) component];
      if ([invocationCopy compatibleWithTarget:component])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    component = 0;
  }

  return component;
}

- (void)initWithDefiniton:(char *)a1 remnant:settings:initialClientSettings:clientProvider:workspace:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[definition isValid]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithDefiniton:(char *)a1 remnant:settings:initialClientSettings:clientProvider:workspace:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:FBSceneRemnantClass]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithDefiniton:(char *)a1 remnant:settings:initialClientSettings:clientProvider:workspace:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:FBSSceneSettingsClass]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithDefiniton:(char *)a1 remnant:settings:initialClientSettings:clientProvider:workspace:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:FBSSceneClientSettingsClass]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithDefiniton:(char *)a1 remnant:settings:initialClientSettings:clientProvider:workspace:.cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"workspace != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)activateWithTransitionContext:(char *)a1 completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot activate a scene during init"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)activateWithTransitionContext:(char *)a1 completion:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"legacy scenes can only ever be activated once"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)activateWithTransitionContext:(char *)a1 completion:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot activate a scene mid deactivation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)activateWithTransitionContext:(char *)a1 completion:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot activate a scene mid update"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_activateWithTransitionContext:(char *)a1 error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_clientHandle == nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_activateWithTransitionContext:(char *)a1 error:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_client == nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_activateWithTransitionContext:(char *)a1 error:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"a client future can only activate for the process that requested it"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_activateWithTransitionContext:(char *)a1 error:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Client process identity does not match provided handle's identity"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_activateWithTransitionContext:(char *)a1 error:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Client process identity does not match execution context identity"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_activateWithTransitionContext:(char *)a1 error:.cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"legacy scenes do not support targeting clients by PID"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_activateWithTransitionContext:(void *)a1 error:.cold.7(void *a1)
{
  v1 = [a1 loggingIdentifier];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_activateWithTransitionContext:(void *)a1 error:(void *)a2 .cold.8(void *a1, void *a2)
{
  v3 = [a1 loggingIdentifier];
  v4 = [a2 descriptionWithMultilinePrefix:0];
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)_activateWithTransitionContext:(char *)a1 error:.cold.9(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_client != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_activateWithTransitionContext:(char *)a1 error:.cold.10(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_workspace"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_activateWithTransitionContext:(void *)a3 error:(uint64_t *)a4 .cold.11(uint64_t *a1, uint64_t a2, void **a3, uint64_t *a4)
{
  v7 = [(FBWorkspaceEventDispatcher *)*a1 domain];
  v8 = [v7 currentProcess];
  *a4 = v8;

  v9 = [FBSceneClientHandle handleForScene:a2 clientProcess:v8];
  v10 = *a3;
  *a3 = v9;
}

- (void)_activateWithTransitionContext:(void *)a3 error:(uint64_t *)a4 .cold.12(id *a1, uint64_t a2, void **a3, uint64_t *a4)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [*a1 process];
    v9 = *(a2 + 72);
    *(a2 + 72) = v8;
  }

  else
  {
    v9 = [(FBWorkspaceEventDispatcher *)*a4 domain];
    v10 = [v9 currentProcess];
    v11 = *(a2 + 72);
    *(a2 + 72) = v10;
  }

  v12 = [FBSceneClientHandle handleForScene:a2 clientProcess:*(a2 + 72)];
  v13 = *a3;
  *a3 = v12;
}

- (void)_activateWithTransitionContext:(void *)a3 error:(void *)a4 .cold.13(uint64_t *a1, uint64_t a2, void **a3, void **a4)
{
  v8 = [(FBWorkspaceEventDispatcher *)*a1 domain];
  v9 = [v8 currentProcess];
  v10 = *(a2 + 72);
  *(a2 + 72) = v9;

  v11 = [FBSceneClientHandle handleForScene:a2 clientProcess:*(a2 + 72)];
  v12 = *a3;
  *a3 = v11;

  v15 = [(FBWorkspaceEventDispatcher *)*a1 domain];
  v13 = [v15 syncLocalSceneClientProvider];
  v14 = *a4;
  *a4 = v13;
}

void __52__FBScene_activateWithTransitionContext_completion___block_invoke_5_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"activated || !success"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(*(a1 + 56));
    v4 = objc_opt_class();
    v12 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_deactivateAndInvalidate:(char *)a1 transitionContext:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"scene is not currently mutable"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_deactivateAndInvalidate:(uint64_t)a1 transitionContext:.cold.2(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_2_5(a1);
  v2[1] = 3221225472;
  v2[2] = __54__FBScene__deactivateAndInvalidate_transitionContext___block_invoke_2;
  v2[3] = &unk_1E783D428;
  v2[4] = v3;
  *(a1 + 40) = v4;
  v5 = OUTLINED_FUNCTION_16_0();
  [(FBScene *)v5 _iterateObservers:v6];
}

- (void)_deactivateAndInvalidate:(char *)a1 transitionContext:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_workspace != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_deactivateAndInvalidate:(char *)a1 transitionContext:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot deactivate a scene while content state is changing"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_deactivateAndInvalidate:(char *)a1 transitionContext:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot deactivate while updating"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_deactivateAndInvalidate:(char *)a1 transitionContext:.cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot deactivate a scene while it is updating"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_deactivateAndInvalidate:(char *)a1 transitionContext:.cold.7(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot re-entrantly deactivate a scene"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)addExtension:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"extension != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)removeExtension:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"extension != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setParentScene:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"reparenting was not completed"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updateSettingsWithTransitionBlock:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"settingsUpdateBlock"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_joinUpdate:(char *)a1 block:completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot activate a scene during init"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_joinUpdate:(char *)a1 block:completion:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot activate a scene during component init"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_joinUpdate:(char *)a1 block:completion:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"re-entrant mutation during configureParameters is not supported"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_joinUpdate:(char *)a1 block:completion:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_updateDepth < 16"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)configureParameters:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"re-entrant mutation during configureParameters is not supported"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)configureParameters:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot call configureParameters on an active scene"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)configureParameters:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"block != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)createSnapshotWithContext:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 loggingIdentifier];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_propagateSettings:(char *)a1 fromSettings:toSettings:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"mutableSettings"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_propagateSettings:(char *)a1 fromSettings:toSettings:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"parentSettings"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_propagateSettings:(char *)a1 fromSettings:toSettings:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"settingsToPropagate"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)sendActions:(char *)a1 toExtension:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_active"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)sendActions:(char *)a1 toExtension:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_invalidated"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)sendActions:(objc_class *)a1 toExtension:(char *)a2 .cold.3(objc_class *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromClass(a1);
  v5 = [v3 stringWithFormat:@"scene does not conform to extension %@", v4];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v6 = OUTLINED_FUNCTION_9();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)sendActions:(uint64_t)a1 toExtension:(char *)a2 .cold.4(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"only actions of type BSAction can be sent : tried to send %@", a1];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, v11, v12);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)sendActions:(void *)a1 toExtension:.cold.5(void *a1)
{
  v1 = [a1 loggingIdentifier];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)sendActions:(void *)a1 toExtension:.cold.6(void *a1)
{
  v1 = [a1 loggingIdentifier];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)sendInvocation:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 loggingIdentifier];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_endTransaction:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v2 = NSStringFromSelector(a1);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  LODWORD(v10) = 138544642;
  *(&v10 + 4) = v2;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, DWORD2(v10));
}

- (void)_setContentState:(void *)a1 notifyObservers:.cold.1(void *a1)
{
  v1 = OUTLINED_FUNCTION_2_5(a1);
  v1[1] = 3221225472;
  v1[2] = __44__FBScene__setContentState_notifyObservers___block_invoke;
  v1[3] = &unk_1E783D228;
  v1[4] = v2;
  [(FBScene *)v2 _iterateObservers:v3];
}

- (void)_setContentState:(const char *)a1 notifyObservers:(uint64_t)a2 .cold.2(const char *a1, uint64_t a2)
{
  v2 = NSStringFromSelector(a1);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  LODWORD(v10) = 138544642;
  *(&v10 + 4) = v2;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, DWORD2(v10));
}

- (void)_setContentState:(char *)a1 notifyObservers:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_workspace != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_addExtensions:(objc_class *)a1 removeExtensions:(char *)a2 settings:.cold.1(objc_class *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromClass(a1);
  v5 = [v3 stringWithFormat:@"shouldn't have existing components for new extension %@", v4];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v6 = OUTLINED_FUNCTION_9();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_addExtensions:(char *)a1 removeExtensions:settings:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"components cannot mutate extensions during init"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __48__FBScene__activateWithTransitionContext_error___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"client handle must be nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(*(a1 + 56));
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *v13 = 138544642;
    *&v13[4] = v5;
    *&v13[12] = 2114;
    *&v13[14] = v7;
    *&v13[22] = 2048;
    LOWORD(v14) = 2114;
    *(&v14 + 2) = @"FBScene.m";
    WORD5(v14) = 1024;
    HIDWORD(v14) = 1181;
    LOWORD(v15) = 2114;
    *(&v15 + 2) = v4;
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, *v13, *&v13[8], *&v13[16], *a2, v14, v15, HIWORD(v4));
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __48__FBScene__activateWithTransitionContext_error___block_invoke_2_cold_2(uint64_t *a1, void *a2)
{
  OUTLINED_FUNCTION_10_1(*a1, a2);
  v2[1] = 3221225472;
  v2[2] = __48__FBScene__activateWithTransitionContext_error___block_invoke_243;
  v2[3] = &unk_1E783D228;
  v2[4] = v3;
  [(FBScene *)v3 _iterateObservers:v2];
}

- (void)_applySettingsUpdateWithCompletion:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot finish an update when we are not in an update"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_applySettingsUpdateWithCompletion:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot apply another update while the previous one is pending"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_applySettingsUpdateWithCompletion:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"completion == nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_applySettingsUpdateWithCompletion:(uint64_t)a1 .cold.4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_2_5(a1);
  v2[1] = 3221225472;
  v2[2] = __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_312;
  v2[3] = &unk_1E783D428;
  v2[4] = v3;
  *(a1 + 40) = v4;
  v5 = OUTLINED_FUNCTION_16_0();
  [(FBScene *)v5 _iterateObservers:v6];
}

- (void)_applySettingsUpdateWithCompletion:(char *)a1 .cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"![[_definition specification] _isSignificantTransitionContext:[update transitionContext]]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_applySettingsUpdateWithCompletion:(char *)a1 .cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_legacy"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_applySettingsUpdateWithCompletion:(char *)a1 .cold.7(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mutable and non-mutable settings must be equal"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_applySettingsUpdateWithCompletion:(void *)a1 .cold.8(void *a1, uint64_t a2)
{
  v3 = [a1 mutableCopy];
  v4 = *MEMORY[0x1E699FD30];
  v5 = *(a2 + v4);
  *(a2 + v4) = v3;
}

- (void)_applySettingsUpdateWithCompletion:(uint64_t)a1 .cold.9(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_2_5(a1);
  v2[1] = 3221225472;
  v2[2] = __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_287;
  v2[3] = &unk_1E783B9B8;
  *(a1 + 32) = v3;
  v4 = OUTLINED_FUNCTION_16_0();
  [(FBScene *)v4 _dispatchClientMessageWithBlock:v5];
}

- (void)_applySettingsUpdateWithCompletion:(char *)a1 .cold.10(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_workspace != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_applySettingsUpdateWithCompletion:(void *)a1 .cold.11(void *a1)
{
  v1 = [a1 loggingIdentifier];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_applySettingsUpdateWithCompletion:(char *)a1 .cold.12(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"re-entrant mutation during configureParameters is not supported"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_applySettingsUpdateWithCompletion:(char *)a1 .cold.13(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no active settings update"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_applySettingsUpdateWithCompletion:(void *)a1 .cold.14(void *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 loggingIdentifier];
  v5 = [v3 stringWithFormat:@"re-entrant scene mutation is not supported (%@)", v4];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v6 = OUTLINED_FUNCTION_9();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_3_cold_1(uint64_t a1, void *a2)
{
  v2 = [a2 descriptionWithMultilinePrefix:0];
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_3_cold_2(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *a1;
  OUTLINED_FUNCTION_10_1(a1, a2);
  v9[1] = 3221225472;
  v9[2] = __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_294;
  v9[3] = &unk_1E783D450;
  v9[4] = v8;
  *(a2 + 40) = *(v10 + 48);
  *(a2 + 48) = a4;
  [(FBScene *)v8 _iterateObservers:a2];
  [*(*a1 + 248) scene:*a1 didCompleteUpdate:*(a3 + 48)];
}

- (void)_deactivateClient:(char *)a1 withContext:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[[error domain] isEqualToString:FBSceneErrorDomain]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_deactivateClient:(char *)a1 withContext:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"error != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __74__FBScene_clientToken_didUpdateClientSettings_withDiff_transitionContext___block_invoke_cold_1(uint64_t *a1, id *a2, id *a3, void *a4)
{
  v8 = objc_opt_new();
  *a4 = v8;
  objc_storeStrong(&v8[*MEMORY[0x1E699FD38]], *(*a1 + 112));
  v9 = [a2[6] copy];
  v10 = *(*a1 + 112);
  *(*a1 + 112) = v9;

  objc_storeStrong(&v8[*MEMORY[0x1E699FD40]], v9);
  objc_storeStrong(&v8[*MEMORY[0x1E699FD20]], a2[7]);
  objc_storeStrong(&v8[*MEMORY[0x1E699FD18]], a2[8]);
  if ([a2[7] containsProperty:sel_layers])
  {
    v11 = *(*a1 + 16);
    v12 = [*(*a1 + 112) layers];
    [v11 _setLayers:v12];
  }

  v13 = *a1;
  *a3 = MEMORY[0x1E69E9820];
  a3[1] = 3221225472;
  a3[2] = __74__FBScene_clientToken_didUpdateClientSettings_withDiff_transitionContext___block_invoke_2;
  a3[3] = &unk_1E783D428;
  a3[4] = v13;
  a3[5] = v8;
  v14 = v8;
  [(FBScene *)v13 _iterateObservers:a3];
}

void __54__FBScene_clientToken_didReceiveActions_forExtension___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E698E680] succinctDescriptionForObject:a2];
  v6 = 138543618;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&dword_1A89DD000, a3, OS_LOG_TYPE_DEBUG, "[%{public}@] Handing all actions to delegate: %@", &v6, 0x16u);
}

@end