@interface FBSScene
+ (id)pseudoSceneWithIdentifier:(id)identifier specification:(id)specification;
- (BOOL)_callOutQueue_willDestroyWithTransitionContext:(id)context completion:(id)completion;
- (BOOL)conformsToExtension:(Class)extension;
- (BOOL)invalidateSnapshotWithContext:(id)context;
- (BOOL)isEqual:(id)equal;
- (BOOL)performSnapshotWithContext:(id)context;
- (BOOL)snapshotRequest:(id)request performWithContext:(id)context;
- (BOOL)snapshotRequestAllowSnapshot:(id)snapshot;
- (BSAuditToken)hostAuditToken;
- (FBSScene)init;
- (FBSSceneClientSettings)clientSettings;
- (FBSSceneDelegate)delegate;
- (FBSSceneHostHandle)hostHandle;
- (FBSSceneSettings)settings;
- (FBSSceneUpdater)updater;
- (FBSWorkspaceService)workspaceService;
- (id)_beginUpdate;
- (id)_createTransitionContext;
- (id)_initWithUpdater:(id)updater identityToken:(id)token identity:(id)identity parameters:(id)parameters hostHandle:(id)handle;
- (id)_lock_allComponents;
- (id)_observers;
- (id)componentForExtension:(Class)extension ofClass:(Class)class;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)display;
- (id)fbsDisplay;
- (id)hostProcess;
- (id)layers;
- (id)openSessionWithName:(id)name executionPolicy:(id)policy;
- (id)parameters;
- (id)snapshotRequest;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)targetForInvocation:(id)invocation;
- (void)_beginUpdate;
- (void)_callOutQueue_didCreateWithTransitionContext:(id)context alternativeCreationCallout:(id)callout completion:(id)completion;
- (void)_callOutQueue_didUpdateHostHandle:(id)handle;
- (void)_callOutQueue_ensureCoalesceClientSettingsUpdates:(id)updates;
- (void)_callOutQueue_invalidate;
- (void)_callOutQueue_maybeCoalesceClientSettingsUpdates:(id)updates;
- (void)_callOutQueue_updateExtensionsFromSettings:(id)settings toSettings:(id)toSettings withDiff:(id)diff;
- (void)_configureParameters:(id)parameters;
- (void)_sendUpdate:(id)update;
- (void)_updateClientSettings:(id)settings;
- (void)activateWithCompletion:(id)completion;
- (void)addObserver:(id)observer withConfiguration:(id)configuration;
- (void)agent:(id)agent registerMessageHandler:(id)handler;
- (void)agent:(id)agent sendMessage:(id)message withResponse:(id)response;
- (void)attachContext:(id)context;
- (void)attachLayer:(id)layer;
- (void)closeSession:(id)session;
- (void)detachContext:(id)context;
- (void)detachLayer:(id)layer;
- (void)invalidate:(id)invalidate;
- (void)removeObserver:(id)observer;
- (void)sendActions:(id)actions toExtension:(Class)extension;
- (void)sendBatchedMessages;
- (void)sendInvocation:(id)invocation;
- (void)setDelegate:(id)delegate;
- (void)updateClientSettings:(id)settings withTransitionContext:(id)context;
- (void)updateClientSettingsWithBlock:(id)block;
- (void)updateClientSettingsWithTransitionBlock:(id)block;
- (void)updateSettings:(id)settings;
- (void)updater:(id)updater didReceiveActions:(id)actions forExtension:(Class)extension;
- (void)updater:(id)updater didReceiveMessage:(id)message withResponse:(id)response;
- (void)updater:(id)updater didUpdateSettings:(id)settings withDiff:(id)diff transitionContext:(id)context completion:(id)completion;
@end

@implementation FBSScene

- (FBSSceneSettings)settings
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_settings;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (FBSSceneClientSettings)clientSettings
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_clientSettings;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_beginUpdate
{
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  if (self->_callout_updateDepth)
  {
    [(FBSScene *)a2 _beginUpdate];
  }

  if (self->_callout_sceneUpdate)
  {
    [(FBSScene *)a2 _beginUpdate];
  }

  v4 = objc_opt_new();
  callout_sceneUpdate = self->_callout_sceneUpdate;
  self->_callout_sceneUpdate = v4;

  v6 = v4;
  clientSettings = [(FBSScene *)self clientSettings];
  v8 = v6[1];
  v6[1] = clientSettings;

  objc_storeStrong(v6 + 3, v6[1]);

  return v6;
}

- (id)_createTransitionContext
{
  specification = [(FBSSceneDefinition *)self->_definition specification];
  v3 = [objc_msgSend(specification "transitionContextClass")];

  return v3;
}

- (id)_observers
{
  array = [MEMORY[0x1E695DF70] array];
  os_unfair_lock_lock(&self->_lock);
  _lock_allComponents = [(FBSScene *)self _lock_allComponents];
  [array addObjectsFromArray:_lock_allComponents];

  if ([(NSMutableArray *)self->_lock_sceneObservers count])
  {
    [array addObjectsFromArray:self->_lock_sceneObservers];
  }

  os_unfair_lock_unlock(&self->_lock);

  return array;
}

- (id)_lock_allComponents
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  array = [MEMORY[0x1E695DF70] array];
  if ([(NSMapTable *)self->_lock_components count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = NSAllMapTableValues(self->_lock_components);
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [array addObjectsFromArray:{*(*(&v10 + 1) + 8 * i), v10}];
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  return array;
}

- (FBSSceneDelegate)delegate
{
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_lock_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (FBSSceneUpdater)updater
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_updater;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (FBSSceneHostHandle)hostHandle
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_hostHandle;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)parameters
{
  v3 = [FBSMutableSceneParameters alloc];
  specification = [(FBSScene *)self specification];
  v5 = [(FBSSceneParameters *)v3 initWithSpecification:specification];

  os_unfair_lock_lock(&self->_lock);
  [(FBSMutableSceneParameters *)v5 setSettings:self->_lock_settings];
  [(FBSSceneParameters *)v5 setClientSettings:self->_lock_clientSettings];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)_callOutQueue_invalidate
{
  v30 = *MEMORY[0x1E69E9840];
  _observers = [(FBSScene *)self _observers];
  os_unfair_lock_lock(&self->_lock);
  objc_storeWeak(&self->_lock_delegate, 0);
  lock_updater = self->_lock_updater;
  self->_lock_updater = 0;

  lock_sceneObservers = self->_lock_sceneObservers;
  self->_lock_sceneObservers = 0;

  lock_components = self->_lock_components;
  self->_lock_components = 0;

  os_unfair_lock_unlock(&self->_lock);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = _observers;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v24 + 1) + 8 * v11++) invalidate];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = self->_callOutQueue_agentSessions;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v20 + 1) + 8 * v16++) invalidate];
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }

  callOutQueue_agentSessions = self->_callOutQueue_agentSessions;
  self->_callOutQueue_agentSessions = 0;

  callOutQueue_agentMessageHandler = self->_callOutQueue_agentMessageHandler;
  self->_callOutQueue_agentMessageHandler = 0;

  callOutQueue_agent = self->_callOutQueue_agent;
  self->_callOutQueue_agent = 0;
}

- (FBSScene)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on FBSScene"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    selfCopy = self;
    v14 = 2114;
    v15 = @"FBSScene.m";
    v16 = 1024;
    v17 = 73;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_lock);
  objc_storeWeak(&self->_lock_delegate, delegateCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (FBSWorkspaceService)workspaceService
{
  updater = [(FBSScene *)self updater];
  if (updater)
  {
    v4 = [FBSWorkspaceService alloc];
    internalWorkspaceIdentifier = [(FBSSceneIdentity *)self->_identity internalWorkspaceIdentifier];
    v6 = [(FBSWorkspaceService *)v4 _initWithTarget:updater identifier:internalWorkspaceIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)updateClientSettings:(id)settings withTransitionContext:(id)context
{
  settingsCopy = settings;
  contextCopy = context;
  clientSettings = [(FBSScene *)self clientSettings];
  _progenitor = [settingsCopy _progenitor];

  if (_progenitor != clientSettings)
  {
    v12 = FBLogCommon(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [FBSScene updateClientSettings:? withTransitionContext:?];
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __55__FBSScene_updateClientSettings_withTransitionContext___block_invoke;
    v19[3] = &unk_1E76BD2A0;
    v20 = settingsCopy;
    settingsCopy = [clientSettings copy:v19];
  }

  if (contextCopy && ![(FBSSettings *)contextCopy _isEmpty])
  {
    if (!self->_callout_updateDepth)
    {
      [(FBSScene *)self _sendUpdate:self->_callout_sceneUpdate];
    }

    _beginUpdate = [(FBSScene *)self _beginUpdate];
    v15 = [settingsCopy copy];
    v16 = *(_beginUpdate + 1);
    *(_beginUpdate + 1) = v15;

    objc_storeStrong(_beginUpdate + 5, context);
    [(FBSScene *)self _updateClientSettings:0];
  }

  else
  {
    v13 = [FBSSceneClientSettingsDiff diffFromSettings:clientSettings toSettings:settingsCopy];
    _beginUpdate = v13;
    if (v13)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __55__FBSScene_updateClientSettings_withTransitionContext___block_invoke_2;
      v17[3] = &unk_1E76BD2C8;
      _beginUpdate = v13;
      v18 = _beginUpdate;
      [(FBSScene *)self _updateClientSettings:v17];
    }
  }
}

- (void)updateClientSettingsWithBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42__FBSScene_updateClientSettingsWithBlock___block_invoke;
    v6[3] = &unk_1E76BD2F0;
    v7 = blockCopy;
    [(FBSScene *)self _updateClientSettings:v6];
  }
}

- (void)updateClientSettingsWithTransitionBlock:(id)block
{
  if (block)
  {
    blockCopy = block;
    clientSettings = [(FBSScene *)self clientSettings];
    v7 = [clientSettings mutableCopy];

    v6 = blockCopy[2](blockCopy, v7);

    [(FBSScene *)self updateClientSettings:v7 withTransitionContext:v6];
  }
}

- (void)attachLayer:(id)layer
{
  layerCopy = layer;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __24__FBSScene_attachLayer___block_invoke;
  v6[3] = &unk_1E76BD2C8;
  v7 = layerCopy;
  v5 = layerCopy;
  [(FBSScene *)self updateClientSettings:v6];
}

- (void)detachLayer:(id)layer
{
  layerCopy = layer;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __24__FBSScene_detachLayer___block_invoke;
  v6[3] = &unk_1E76BD2C8;
  v7 = layerCopy;
  v5 = layerCopy;
  [(FBSScene *)self updateClientSettings:v6];
}

- (void)attachContext:(id)context
{
  v4 = [FBSCAContextSceneLayer layerWithCAContext:context];
  [(FBSScene *)self attachSceneContext:v4];
}

- (void)detachContext:(id)context
{
  v4 = [FBSCAContextSceneLayer layerWithCAContext:context];
  [(FBSScene *)self detachSceneContext:v4];
}

- (id)snapshotRequest
{
  v3 = [FBSSceneSnapshotRequest alloc];
  settings = [(FBSScene *)self settings];
  v5 = [(FBSSceneSnapshotRequest *)v3 initWithSettings:settings];

  identifier = [(FBSScene *)self identifier];
  [(FBSSceneSnapshotRequest *)v5 setSceneID:identifier];

  [(FBSSceneSnapshotRequest *)v5 setDelegate:self];

  return v5;
}

- (BOOL)performSnapshotWithContext:(id)context
{
  contextCopy = context;
  snapshotRequest = [(FBSScene *)self snapshotRequest];
  v6 = [snapshotRequest performSnapshotWithContext:contextCopy];

  return v6;
}

- (BOOL)invalidateSnapshotWithContext:(id)context
{
  v4 = [FBSSceneSnapshotRequestHandle handleForRequestType:2 context:context];
  [v4 performRequestForScene:self];

  return 1;
}

- (void)addObserver:(id)observer withConfiguration:(id)configuration
{
  observerCopy = observer;
  configurationCopy = configuration;
  if (!observerCopy)
  {
    [FBSScene addObserver:a2 withConfiguration:?];
  }

  v8 = [[FBSSceneObserver alloc] initWithObserver:observerCopy];
  if (configurationCopy)
  {
    configurationCopy[2](configurationCopy, v8);
  }

  os_unfair_lock_lock(&self->_lock);
  lock_sceneObservers = self->_lock_sceneObservers;
  if (!lock_sceneObservers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v11 = self->_lock_sceneObservers;
    self->_lock_sceneObservers = array;

    lock_sceneObservers = self->_lock_sceneObservers;
  }

  [(NSMutableArray *)lock_sceneObservers addObject:v8];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer
{
  v20 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NSMutableArray *)self->_lock_sceneObservers copy];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        observer = [v10 observer];
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
          [(NSMutableArray *)self->_lock_sceneObservers removeObject:v10];
          [v10 invalidate];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  if (![(NSMutableArray *)self->_lock_sceneObservers count])
  {
    lock_sceneObservers = self->_lock_sceneObservers;
    self->_lock_sceneObservers = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)display
{
  settings = [(FBSScene *)self settings];
  displayConfiguration = [settings displayConfiguration];
  cADisplay = [displayConfiguration CADisplay];

  return cADisplay;
}

- (id)fbsDisplay
{
  settings = [(FBSScene *)self settings];
  displayConfiguration = [settings displayConfiguration];

  return displayConfiguration;
}

- (id)layers
{
  clientSettings = [(FBSScene *)self clientSettings];
  layers = [clientSettings layers];
  array = [layers array];

  return array;
}

- (void)_updateClientSettings:(id)settings
{
  settingsCopy = settings;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  if (self->_callout_updateDepth == 255)
  {
    [FBSScene _updateClientSettings:a2];
  }

  if (self->_callOutQueue_mutationLocked)
  {
    self->_callOutQueue_mutationLocked = 0;
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mutation locked"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [(FBSScene *)a2 _updateClientSettings:v22];
    }

    [v22 UTF8String];
    _bs_set_crash_log_message();
  }

  _beginUpdate = self->_callout_sceneUpdate;
  if (!_beginUpdate)
  {
    _beginUpdate = [(FBSScene *)self _beginUpdate];
  }

  callout_updateDepth = self->_callout_updateDepth;
  self->_callout_updateDepth = callout_updateDepth + 1;
  if (settingsCopy)
  {
    v8 = _beginUpdate->_mutableSettings;
    if (!v8)
    {
      v8 = [(FBSSettings *)_beginUpdate->_settings mutableCopy];
      objc_storeStrong(&_beginUpdate->_mutableSettings, v8);
    }

    context = _beginUpdate->_context;
    if (!context)
    {
      _createTransitionContext = [(FBSScene *)self _createTransitionContext];
      v11 = _beginUpdate->_context;
      _beginUpdate->_context = _createTransitionContext;

      context = _beginUpdate->_context;
    }

    (settingsCopy)[2](settingsCopy, v8, context);
    if (![(FBSSettings *)_beginUpdate->_settings isEqual:v8])
    {
      os_unfair_lock_lock(&self->_lock);
      v12 = [(FBSMutableSettings *)v8 _copyClearingProgenitor:0];
      lock_clientSettings = self->_lock_clientSettings;
      self->_lock_clientSettings = v12;

      objc_storeStrong(&_beginUpdate->_settings, v12);
      os_unfair_lock_unlock(&self->_lock);
    }

    if (_beginUpdate->_settings == _beginUpdate->_previousSettings)
    {
      animationSettings = [(FBSSceneTransitionContext *)_beginUpdate->_context animationSettings];
      if (animationSettings)
      {
        v15 = animationSettings;
        [(FBSSceneTransitionContext *)_beginUpdate->_context setAnimationSettings:0];
        specification = [(FBSSceneDefinition *)self->_definition specification];
        v17 = [specification _isSignificantTransitionContext:_beginUpdate->_context];

        if (v17)
        {
          [(FBSSceneTransitionContext *)_beginUpdate->_context setAnimationSettings:v15];
        }

        else
        {
          v19 = FBLogSceneClient(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            [(FBSScene *)self _updateClientSettings:v19];
          }
        }
      }
    }

    callout_updateDepth = self->_callout_updateDepth - 1;
  }

  self->_callout_updateDepth = callout_updateDepth;
  if (!callout_updateDepth)
  {
    if (!self->_callout_coalesceUpdates || (-[FBSSceneDefinition specification](self->_definition, "specification"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 _isSignificantTransitionContext:_beginUpdate->_context], v20, v21))
    {
      [(FBSScene *)self _sendUpdate:_beginUpdate];
    }
  }
}

- (void)_sendUpdate:(id)update
{
  v64 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  if (self->_callout_sceneUpdate != updateCopy)
  {
    [FBSScene _sendUpdate:a2];
  }

  p_isa = &updateCopy->super.isa;
  if (updateCopy)
  {
    [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
    v7 = p_isa[1];
    v8 = p_isa[3];
    v9 = p_isa[5];
    os_unfair_lock_lock(&self->_lock);
    aSelector = a2;
    if (self->_everActivated)
    {
      lock_updater = self->_lock_updater;
    }

    else
    {
      lock_updater = 0;
    }

    v11 = lock_updater;
    if (v8 != v7)
    {
      v12 = v8;
      v13 = [(FBSSettings *)v7 _copyClearingProgenitor:0];
      lock_clientSettings = self->_lock_clientSettings;
      self->_lock_clientSettings = v13;

      v15 = v13;
      objc_storeStrong(p_isa + 1, v13);
      v7 = v15;
      v8 = v12;
    }

    os_unfair_lock_unlock(&self->_lock);
    v41 = v8;
    if (v11)
    {
      v16 = [FBSSceneClientSettingsDiff diffFromSettings:v8 toSettings:v7];
      if (v16 || (-[FBSSceneDefinition specification](self->_definition, "specification"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 _isSignificantTransitionContext:v9], v17, v18))
      {
        self->_callOutQueue_mutationLocked = 1;
        objc_storeStrong(p_isa + 4, v16);
        if (!v9)
        {
          _createTransitionContext = [(FBSScene *)self _createTransitionContext];
          v20 = p_isa[5];
          p_isa[5] = _createTransitionContext;

          v9 = _createTransitionContext;
        }

        if (self->_calloutQueue_animationFence && [v16 containsProperty:sel_layers])
        {
          v21 = [(BKSAnimationFenceHandle *)self->_calloutQueue_animationFence copy];
          [v9 setAnimationFence:v21];
        }

        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        _observers = [(FBSScene *)self _observers];
        v23 = [_observers countByEnumeratingWithState:&v47 objects:v63 count:16];
        if (v23)
        {
          v24 = *v48;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v48 != v24)
              {
                objc_enumerationMutation(_observers);
              }

              [*(*(&v47 + 1) + 8 * i) scene:self didUpdateClientSettings:p_isa];
            }

            v23 = [_observers countByEnumeratingWithState:&v47 objects:v63 count:16];
          }

          while (v23);
        }

        if (self->_hasAgent)
        {
          v26 = objc_alloc_init(FBSSceneEvent);
          [(FBSSceneEvent *)v26 setClientSettingsDiff:v16];
          [(FBSSceneEvent *)v26 setTransitionContext:v9];
          [(FBSSceneEvent *)v26 setSource:2];
          v43 = 0;
          v44 = &v43;
          v45 = 0x2020000000;
          v46 = 0;
          callOutQueue_agent = self->_callOutQueue_agent;
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __24__FBSScene__sendUpdate___block_invoke;
          v42[3] = &unk_1E76BD340;
          v42[4] = self;
          v42[5] = &v43;
          [(FBSSceneClientAgent *)callOutQueue_agent scene:self reviewEvent:v26 withCompletion:v42];
          if ((v44[3] & 1) == 0)
          {
            v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"agent callout's completion was not called in scope : event=%@ agent=%@", v26, self->_callOutQueue_agent];
            v34 = MEMORY[0x1E69E9C10];
            v35 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              v36 = NSStringFromSelector(aSelector);
              v37 = objc_opt_class();
              v38 = NSStringFromClass(v37);
              *buf = 138544642;
              v52 = v36;
              v53 = 2114;
              v54 = v38;
              v55 = 2048;
              selfCopy = self;
              v57 = 2114;
              v58 = @"FBSScene.m";
              v59 = 1024;
              v60 = 455;
              v61 = 2114;
              v62 = v33;
              _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
            }

            v39 = v33;
            [v33 UTF8String];
            _bs_set_crash_log_message();
          }

          _Block_object_dispose(&v43, 8);
        }

        self->_callOutQueue_mutationLocked = 0;
        actions = [v9 actions];
        if ([actions count])
        {
          fbs_singleLineDescriptionOfBSActions = [actions fbs_singleLineDescriptionOfBSActions];
          v30 = FBLogSceneClient(fbs_singleLineDescriptionOfBSActions);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            identity = [(FBSScene *)self identity];
            *buf = 138543618;
            v52 = identity;
            v53 = 2114;
            v54 = fbs_singleLineDescriptionOfBSActions;
            _os_log_impl(&dword_1A2DBB000, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending action(s) in update: %{public}@", buf, 0x16u);
          }
        }

        [(FBSSceneUpdater *)v11 scene:self didUpdateClientSettings:v7 withDiff:v16 transitionContext:v9];
      }
    }

    callout_sceneUpdate = self->_callout_sceneUpdate;
    self->_callout_sceneUpdate = 0;
  }
}

void __24__FBSScene__sendUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(a1 + 32) + 8) assertBarrierOnQueue];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  if (v3)
  {
    v4 = *(*(a1 + 32) + 8);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __24__FBSScene__sendUpdate___block_invoke_2;
    v5[3] = &unk_1E76BD318;
    v6 = v3;
    [v4 performAsync:v5];
  }
}

void __24__FBSScene__sendUpdate___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] sceneMessageErrorWithCode:1];
  (*(v1 + 16))(v1, 0, v2);
}

+ (id)pseudoSceneWithIdentifier:(id)identifier specification:(id)specification
{
  specificationCopy = specification;
  identifierCopy = identifier;
  v7 = +[FBSWorkspaceCoupler _sharedInstance];
  _workspace = [v7 _workspace];
  v9 = [_workspace pseudoSceneWithIdentifier:identifierCopy specification:specificationCopy];

  return v9;
}

- (void)updateSettings:(id)settings
{
  settingsCopy = settings;
  updater = [(FBSScene *)self updater];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSScene updateSettings:a2];
  }

  settings = [(FBSScene *)self settings];
  v7 = [settings mutableCopy];

  _createTransitionContext = [(FBSScene *)self _createTransitionContext];
  settingsCopy[2](settingsCopy, v7, _createTransitionContext);
  [(FBSScene *)self updater:updater didUpdateSettings:v7 withDiff:0 transitionContext:_createTransitionContext completion:&__block_literal_global_1];
}

- (void)invalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  updater = [(FBSScene *)self updater];
  if (updater)
  {
    if (invalidateCopy)
    {
      _createTransitionContext = [(FBSScene *)self _createTransitionContext];
      invalidateCopy[2](invalidateCopy, _createTransitionContext);
    }

    else
    {
      _createTransitionContext = 0;
    }

    [updater scene:self invalidateWithTransitionContext:_createTransitionContext];
  }
}

- (void)sendBatchedMessages
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_updater;
  os_unfair_lock_unlock(&self->_lock);
  [(FBSSceneUpdater *)v3 sendBatchedMessages];
}

- (BSAuditToken)hostAuditToken
{
  hostHandle = [(FBSScene *)self hostHandle];
  auditToken = [hostHandle auditToken];

  return auditToken;
}

- (id)_initWithUpdater:(id)updater identityToken:(id)token identity:(id)identity parameters:(id)parameters hostHandle:(id)handle
{
  updaterCopy = updater;
  tokenCopy = token;
  identityCopy = identity;
  parametersCopy = parameters;
  handleCopy = handle;
  if (updaterCopy)
  {
    v21 = a2;
    callOutQueue = [updaterCopy callOutQueue];
    NSClassFromString(&cfstr_Bsservicequeue.isa);
    if (callOutQueue)
    {
      if (objc_opt_isKindOfClass())
      {

        v18 = tokenCopy;
        NSClassFromString(&cfstr_Fbssceneidenti.isa);
        if (v18)
        {
          if (objc_opt_isKindOfClass())
          {

            v19 = identityCopy;
            NSClassFromString(&cfstr_Fbssceneidenti_0.isa);
            if (v19)
            {
              if (objc_opt_isKindOfClass())
              {

                [v19 identifier];
                objc_claimAutoreleasedReturnValue();
                [v18 identifier];
                objc_claimAutoreleasedReturnValue();
                BSEqualObjects();
              }

              [FBSScene _initWithUpdater:v21 identityToken:? identity:? parameters:? hostHandle:?];
            }

            [FBSScene _initWithUpdater:v21 identityToken:? identity:? parameters:? hostHandle:?];
          }

          [FBSScene _initWithUpdater:v21 identityToken:? identity:? parameters:? hostHandle:?];
        }

        [FBSScene _initWithUpdater:v21 identityToken:? identity:? parameters:? hostHandle:?];
      }

      [FBSScene _initWithUpdater:v21 identityToken:? identity:? parameters:? hostHandle:?];
    }

    [FBSScene _initWithUpdater:v21 identityToken:? identity:? parameters:? hostHandle:?];
  }

  [FBSScene _initWithUpdater:a2 identityToken:? identity:? parameters:? hostHandle:?];
}

- (void)_configureParameters:(id)parameters
{
  parametersCopy = parameters;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  if (self->_everActivated)
  {
    [FBSScene _configureParameters:a2];
  }

  parameters = [(FBSScene *)self parameters];
  parametersCopy[2](parametersCopy, parameters);
  os_unfair_lock_lock(&self->_lock);
  settings = [parameters settings];
  v7 = [settings copy];
  lock_settings = self->_lock_settings;
  self->_lock_settings = v7;

  clientSettings = [parameters clientSettings];
  v10 = [clientSettings _copyClearingProgenitor:0];
  lock_clientSettings = self->_lock_clientSettings;
  self->_lock_clientSettings = v10;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_callOutQueue_didUpdateHostHandle:(id)handle
{
  v16 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_lock_hostHandle, handle);
  os_unfair_lock_unlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  _observers = [(FBSScene *)self _observers];
  v7 = [_observers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(_observers);
        }

        [*(*(&v11 + 1) + 8 * v10++) scene:self didUpdateHostHandle:handleCopy];
      }

      while (v8 != v10);
      v8 = [_observers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_callOutQueue_didCreateWithTransitionContext:(id)context alternativeCreationCallout:(id)callout completion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  calloutCopy = callout;
  completionCopy = completion;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  self->_everActivated = 1;
  settings = [(FBSScene *)self settings];
  v12 = [FBSSceneSettingsDiff diffFromSettings:0 toSettings:settings];
  actions = [contextCopy actions];
  v14 = [actions count];
  if (v14)
  {
    v15 = FBLogSceneClient(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      loggingIdentifier = [(FBSScene *)self loggingIdentifier];
      fbs_singleLineDescriptionOfBSActions = [actions fbs_singleLineDescriptionOfBSActions];
      *buf = 138543618;
      v30 = loggingIdentifier;
      v31 = 2114;
      v32 = fbs_singleLineDescriptionOfBSActions;
      _os_log_impl(&dword_1A2DBB000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received action(s) in scene-create: %{public}@", buf, 0x16u);
    }
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __95__FBSScene__callOutQueue_didCreateWithTransitionContext_alternativeCreationCallout_completion___block_invoke;
  v23[3] = &unk_1E76BD388;
  v23[4] = self;
  v24 = v12;
  v25 = contextCopy;
  v26 = settings;
  v27 = completionCopy;
  v28 = calloutCopy;
  v18 = calloutCopy;
  v19 = completionCopy;
  v20 = settings;
  v21 = contextCopy;
  v22 = v12;
  [(FBSScene *)self _callOutQueue_maybeCoalesceClientSettingsUpdates:v23];
}

void __95__FBSScene__callOutQueue_didCreateWithTransitionContext_alternativeCreationCallout_completion___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[2])
  {
    v3 = objc_alloc_init(FBSSceneEvent);
    [(FBSSceneEvent *)v3 setSettingsDiff:*(a1 + 40)];
    [(FBSSceneEvent *)v3 setTransitionContext:*(a1 + 48)];
    [(FBSSceneEvent *)v3 setSource:1];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(*(a1 + 32) + 16) _configureWithScene:?];
    }

    v4 = *(a1 + 32);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __95__FBSScene__callOutQueue_didCreateWithTransitionContext_alternativeCreationCallout_completion___block_invoke_2;
    v23[3] = &unk_1E76BCD60;
    v23[4] = v4;
    v24 = *(a1 + 56);
    [v4 _callOutQueue_ensureCoalesceClientSettingsUpdates:v23];
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __95__FBSScene__callOutQueue_didCreateWithTransitionContext_alternativeCreationCallout_completion___block_invoke_3;
    v21[3] = &unk_1E76BD318;
    v22 = *(a1 + 64);
    [v6 scene:v5 didInitializeWithEvent:v3 completion:v21];
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __95__FBSScene__callOutQueue_didCreateWithTransitionContext_alternativeCreationCallout_completion___block_invoke_4;
    v19[3] = &unk_1E76BCD60;
    v19[4] = v2;
    v20 = *(a1 + 56);
    [v2 _callOutQueue_ensureCoalesceClientSettingsUpdates:v19];
    v7 = *(a1 + 72);
    if (v7)
    {
      (*(v7 + 16))();
    }
  }

  os_unfair_lock_lock((*(a1 + 32) + 56));
  v8 = [*(a1 + 32) _lock_allComponents];
  os_unfair_lock_unlock((*(a1 + 32) + 56));
  if ([v8 count])
  {
    v9 = objc_opt_new();
    objc_storeStrong(v9 + 1, *(a1 + 56));
    objc_storeStrong(v9 + 4, *(a1 + 40));
    objc_storeStrong(v9 + 5, *(a1 + 48));
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v15 + 1) + 8 * v14++) scene:*(a1 + 32) didUpdateSettings:{v9, v15}];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v15 objects:v25 count:16];
      }

      while (v12);
    }
  }
}

uint64_t __95__FBSScene__callOutQueue_didCreateWithTransitionContext_alternativeCreationCallout_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)_callOutQueue_willDestroyWithTransitionContext:(id)context completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  if (!contextCopy)
  {
    contextCopy = [(FBSScene *)self _createTransitionContext];
  }

  _observers = [(FBSScene *)self _observers];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [_observers countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(_observers);
        }

        [*(*(&v19 + 1) + 8 * i) sceneWillInvalidate:self];
      }

      v10 = [_observers countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  if (self->_callOutQueue_agent)
  {
    v13 = objc_alloc_init(FBSSceneEvent);
    [(FBSSceneEvent *)v13 setTransitionContext:contextCopy];
    [(FBSSceneEvent *)v13 setSource:1];
    callOutQueue_agent = self->_callOutQueue_agent;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __70__FBSScene__callOutQueue_willDestroyWithTransitionContext_completion___block_invoke;
    v17[3] = &unk_1E76BD318;
    v18 = completionCopy;
    [(FBSSceneClientAgent *)callOutQueue_agent scene:self willInvalidateWithEvent:v13 completion:v17];

    v15 = self->_callOutQueue_agent != 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __70__FBSScene__callOutQueue_willDestroyWithTransitionContext_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_callOutQueue_maybeCoalesceClientSettingsUpdates:(id)updates
{
  updatesCopy = updates;
  if (self->_callout_coalesceUpdates)
  {
    [FBSScene _callOutQueue_maybeCoalesceClientSettingsUpdates:a2];
  }

  v8 = updatesCopy;
  specification = [(FBSScene *)self specification];
  disablesClientBatching = [specification disablesClientBatching];

  if (disablesClientBatching)
  {
    v8[2]();
  }

  else
  {
    self->_callout_coalesceUpdates = 1;
    v8[2]();
    self->_callout_coalesceUpdates = 0;
    [(FBSScene *)self _sendUpdate:self->_callout_sceneUpdate];
  }
}

- (void)_callOutQueue_ensureCoalesceClientSettingsUpdates:(id)updates
{
  if (self->_callout_coalesceUpdates)
  {
    v4 = *(updates + 2);

    v4(updates);
  }

  else
  {
    self->_callout_coalesceUpdates = 1;
    (*(updates + 2))(updates, a2);
    self->_callout_coalesceUpdates = 0;
    callout_sceneUpdate = self->_callout_sceneUpdate;

    [(FBSScene *)self _sendUpdate:callout_sceneUpdate];
  }
}

- (void)_callOutQueue_updateExtensionsFromSettings:(id)settings toSettings:(id)toSettings withDiff:(id)diff
{
  v126 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  toSettingsCopy = toSettings;
  diffCopy = diff;
  if (!self->_callout_coalesceUpdates)
  {
    [FBSScene _callOutQueue_updateExtensionsFromSettings:a2 toSettings:? withDiff:?];
  }

  if (self->_callOutQueue_mutationLocked)
  {
    [FBSScene _callOutQueue_updateExtensionsFromSettings:a2 toSettings:? withDiff:?];
  }

  v73 = toSettingsCopy;
  v74 = settingsCopy;
  v72 = diffCopy;
  if (settingsCopy && ![(FBSSettingsDiff *)diffCopy _containsKey:?])
  {
    v76 = 0;
    array = 0;
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    _allSceneExtensions = [settingsCopy _allSceneExtensions];
    _allSceneExtensions2 = [toSettingsCopy _allSceneExtensions];
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v14 = [_allSceneExtensions2 countByEnumeratingWithState:&v111 objects:v125 count:16];
    if (v14)
    {
      v15 = v14;
      array = 0;
      v17 = *v112;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v112 != v17)
          {
            objc_enumerationMutation(_allSceneExtensions2);
          }

          v19 = *(*(&v111 + 1) + 8 * i);
          if (([_allSceneExtensions containsObject:v19] & 1) == 0)
          {
            FBSRealizeSceneExtension(v19, v20);
            if (!array)
            {
              array = [MEMORY[0x1E695DF70] array];
            }

            [array addObject:v19];
          }
        }

        v15 = [_allSceneExtensions2 countByEnumeratingWithState:&v111 objects:v125 count:16];
      }

      while (v15);
    }

    else
    {
      array = 0;
    }

    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v21 = _allSceneExtensions;
    v22 = [v21 countByEnumeratingWithState:&v107 objects:v124 count:16];
    if (v22)
    {
      v23 = v22;
      v76 = 0;
      v24 = *v108;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v108 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v107 + 1) + 8 * j);
          if (([_allSceneExtensions2 containsObject:v26] & 1) == 0)
          {
            array2 = v76;
            if (!v76)
            {
              array2 = [MEMORY[0x1E695DF70] array];
            }

            v76 = array2;
            [array2 addObject:v26];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v107 objects:v124 count:16];
      }

      while (v23);
    }

    else
    {
      v76 = 0;
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  obj = array;
  v28 = [obj countByEnumeratingWithState:&v103 objects:v123 count:16];
  selfCopy = self;
  v78 = v28;
  if (v28)
  {
    v77 = *v104;
    do
    {
      v29 = 0;
      do
      {
        if (*v104 != v77)
        {
          objc_enumerationMutation(obj);
        }

        v80 = v29;
        v30 = *(*(&v103 + 1) + 8 * v29);
        v31 = FBLogSceneClient(v28);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          loggingIdentifier = [(FBSScene *)self loggingIdentifier];
          *buf = 138412546;
          v120 = loggingIdentifier;
          v121 = 2112;
          v122 = v30;
          _os_log_debug_impl(&dword_1A2DBB000, v31, OS_LOG_TYPE_DEBUG, "[%@] Adding extension: %@", buf, 0x16u);
        }

        v32 = [[FBSComponentScene alloc] initWithScene:self extension:v30];
        array3 = [MEMORY[0x1E695DF70] array];
        v99 = 0u;
        v100 = 0u;
        v101 = 0u;
        v102 = 0u;
        v33 = v30;
        clientComponents = [v30 clientComponents];
        v35 = [clientComponents countByEnumeratingWithState:&v99 objects:v118 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v100;
          v83 = v32;
          do
          {
            for (k = 0; k != v36; ++k)
            {
              if (*v100 != v37)
              {
                objc_enumerationMutation(clientComponents);
              }

              v39 = objc_alloc(*(*(&v99 + 1) + 8 * k));
              if (objc_opt_respondsToSelector())
              {
                v40 = [v39 initWithScene:v32];
              }

              else
              {
                v40 = [v39 init];
              }

              v41 = v40;
              if (v40)
              {
                v42 = FBLogSceneClient(v40);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
                {
                  loggingIdentifier2 = [(FBSScene *)selfCopy loggingIdentifier];
                  v45 = [off_1E76BC9B0 succinctDescriptionForObject:v41];
                  *buf = 138412546;
                  v120 = loggingIdentifier2;
                  v121 = 2112;
                  v122 = v45;
                  _os_log_debug_impl(&dword_1A2DBB000, v42, OS_LOG_TYPE_DEBUG, "[%@] Instantiated component: %@", buf, 0x16u);

                  v32 = v83;
                }

                v43 = [[FBSSceneObserver alloc] initWithComponent:v41 extension:v33];
                [array3 addObject:v43];
              }
            }

            v36 = [clientComponents countByEnumeratingWithState:&v99 objects:v118 count:16];
          }

          while (v36);
        }

        self = selfCopy;
        if ([array3 count])
        {
          os_unfair_lock_lock(&selfCopy->_lock);
          lock_components = selfCopy->_lock_components;
          if (!lock_components)
          {
            strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
            v48 = selfCopy->_lock_components;
            selfCopy->_lock_components = strongToStrongObjectsMapTable;

            lock_components = selfCopy->_lock_components;
          }

          [(NSMapTable *)lock_components setObject:array3 forKey:v33, v72];
          os_unfair_lock_unlock(&selfCopy->_lock);
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v49 = array3;
          v50 = [v49 countByEnumeratingWithState:&v95 objects:v117 count:16];
          if (v50)
          {
            v51 = v50;
            v52 = *v96;
            do
            {
              for (m = 0; m != v51; ++m)
              {
                if (*v96 != v52)
                {
                  objc_enumerationMutation(v49);
                }

                component = [*(*(&v95 + 1) + 8 * m) component];
                if (objc_opt_respondsToSelector())
                {
                  [component setScene:v32];
                }
              }

              v51 = [v49 countByEnumeratingWithState:&v95 objects:v117 count:16];
            }

            while (v51);
          }
        }

        v29 = v80 + 1;
      }

      while ((v80 + 1) != v78);
      v28 = [obj countByEnumeratingWithState:&v103 objects:v123 count:16];
      v78 = v28;
    }

    while (v28);
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v79 = v76;
  v56 = [v79 countByEnumeratingWithState:&v91 objects:v116 count:16];
  v82 = v56;
  if (v56)
  {
    v81 = *v92;
    do
    {
      v57 = 0;
      do
      {
        if (*v92 != v81)
        {
          objc_enumerationMutation(v79);
        }

        v58 = *(*(&v91 + 1) + 8 * v57);
        v59 = FBLogSceneClient(v56);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          loggingIdentifier3 = [(FBSScene *)self loggingIdentifier];
          *buf = 138412546;
          v120 = loggingIdentifier3;
          v121 = 2112;
          v122 = v58;
          _os_log_debug_impl(&dword_1A2DBB000, v59, OS_LOG_TYPE_DEBUG, "[%@] Removing extension: %@", buf, 0x16u);
        }

        v84 = v57;

        os_unfair_lock_lock(&self->_lock);
        v60 = [(NSMapTable *)self->_lock_components objectForKey:v58];
        [(NSMapTable *)self->_lock_components removeObjectForKey:v58];
        if (![(NSMapTable *)self->_lock_components count])
        {
          v61 = self->_lock_components;
          self->_lock_components = 0;
        }

        os_unfair_lock_unlock(&self->_lock);
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v62 = v60;
        v63 = [v62 countByEnumeratingWithState:&v87 objects:v115 count:16];
        if (v63)
        {
          v64 = v63;
          v65 = *v88;
          do
          {
            for (n = 0; n != v64; ++n)
            {
              if (*v88 != v65)
              {
                objc_enumerationMutation(v62);
              }

              component2 = [*(*(&v87 + 1) + 8 * n) component];
              v68 = FBLogSceneClient([component2 invalidate]);
              if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
              {
                loggingIdentifier4 = [(FBSScene *)selfCopy loggingIdentifier];
                v70 = [off_1E76BC9B0 succinctDescriptionForObject:component2];
                *buf = 138412546;
                v120 = loggingIdentifier4;
                v121 = 2112;
                v122 = v70;
                _os_log_debug_impl(&dword_1A2DBB000, v68, OS_LOG_TYPE_DEBUG, "[%@] Invalidated component: %@", buf, 0x16u);
              }
            }

            v64 = [v62 countByEnumeratingWithState:&v87 objects:v115 count:16];
          }

          while (v64);
        }

        self = selfCopy;
        v57 = v84 + 1;
      }

      while (v84 + 1 != v82);
      v56 = [v79 countByEnumeratingWithState:&v91 objects:v116 count:16];
      v82 = v56;
    }

    while (v56);
  }
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
  v9.super_class = FBSScene;
  v7 = [(FBSScene *)&v9 isEqual:equalCopy];

  return v7;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBSScene *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  v4 = [v3 appendObject:self->_identity withName:0];
  updater = [(FBSScene *)self updater];
  v6 = [v3 appendBool:updater != 0 withName:@"valid"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSScene *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(FBSScene *)self succinctDescriptionBuilder];
  os_unfair_lock_lock(&self->_lock);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__FBSScene_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E76BCD60;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  os_unfair_lock_unlock(&self->_lock);
  v7 = v6;

  return v6;
}

void __50__FBSScene_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 64) withName:@"settings" skipIfNil:1];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 72) withName:@"clientSettings" skipIfNil:1];
  v4 = *(a1 + 32);
  v6 = [*(*(a1 + 40) + 144) hostProcess];
  v5 = [v4 appendObject:v6 withName:@"hostProcess"];
}

- (void)updater:(id)updater didUpdateSettings:(id)settings withDiff:(id)diff transitionContext:(id)context completion:(id)completion
{
  v56 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  diffCopy = diff;
  contextCopy = context;
  completionCopy = completion;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  os_unfair_lock_lock(&self->_lock);
  v15 = self->_lock_settings;
  WeakRetained = objc_loadWeakRetained(&self->_lock_delegate);
  if (!settingsCopy && diffCopy)
  {
    settingsCopy = [diffCopy settingsByApplyingToMutableCopyOfSettings:self->_lock_settings];
LABEL_4:
    v17 = [settingsCopy copy];
    lock_settings = self->_lock_settings;
    self->_lock_settings = v17;

    goto LABEL_5;
  }

  if (settingsCopy && !diffCopy)
  {
    BSEqualObjects();
  }

  if (settingsCopy | diffCopy)
  {
    goto LABEL_4;
  }

  diffCopy = 0;
LABEL_5:
  v39 = self->_lock_settings;
  os_unfair_lock_unlock(&self->_lock);
  animationFence = [contextCopy animationFence];
  v20 = [animationFence copy];
  calloutQueue_animationFence = self->_calloutQueue_animationFence;
  self->_calloutQueue_animationFence = v20;

  v22 = self->_callOutQueue_agent;
  v23 = objc_opt_class();
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __76__FBSScene_updater_didUpdateSettings_withDiff_transitionContext_completion___block_invoke;
  v49[3] = &unk_1E76BD3B0;
  v50 = completionCopy;
  v51 = v23;
  v49[4] = self;
  v40 = completionCopy;
  v24 = [off_1E76BC9A0 sentinelWithSignalCount:2 signalHandler:v49];
  actions = [contextCopy actions];
  v26 = [actions count];
  if (v26)
  {
    v27 = FBLogSceneClient(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      [(FBSScene *)self loggingIdentifier];
      v28 = v38 = v15;
      fbs_singleLineDescriptionOfBSActions = [actions fbs_singleLineDescriptionOfBSActions];
      *buf = 138543618;
      v53 = v28;
      v54 = 2114;
      v55 = fbs_singleLineDescriptionOfBSActions;
      _os_log_impl(&dword_1A2DBB000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received action(s) in scene-update: %{public}@", buf, 0x16u);

      v15 = v38;
    }
  }

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __76__FBSScene_updater_didUpdateSettings_withDiff_transitionContext_completion___block_invoke_129;
  v41[3] = &unk_1E76BD450;
  v41[4] = self;
  v42 = v15;
  v43 = v39;
  v44 = diffCopy;
  v45 = contextCopy;
  v46 = v22;
  v47 = v24;
  v48 = WeakRetained;
  v30 = WeakRetained;
  v31 = v24;
  v32 = v22;
  v33 = contextCopy;
  v34 = diffCopy;
  v35 = v39;
  v36 = v15;
  [(FBSScene *)self _callOutQueue_maybeCoalesceClientSettingsUpdates:v41];
  [v31 signal];
  [(BKSAnimationFenceHandle *)self->_calloutQueue_animationFence invalidate];
  v37 = self->_calloutQueue_animationFence;
  self->_calloutQueue_animationFence = 0;
}

void __76__FBSScene_updater_didUpdateSettings_withDiff_transitionContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isComplete])
  {
    v4 = [v3 isFailed];
    if (v4)
    {
      v5 = FBLogCommon(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __76__FBSScene_updater_didUpdateSettings_withDiff_transitionContext_completion___block_invoke_cold_1(a1);
      }
    }

    v6 = *(a1 + 40);
    if ([v3 isFailed])
    {
      (*(v6 + 16))(v6, 0);
    }

    else
    {
      v7 = objc_opt_new();
      (*(v6 + 16))(v6, v7);
    }
  }
}

void __76__FBSScene_updater_didUpdateSettings_withDiff_transitionContext_completion___block_invoke_129(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[116] == 1)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __76__FBSScene_updater_didUpdateSettings_withDiff_transitionContext_completion___block_invoke_2;
    v24[3] = &unk_1E76BD3D8;
    v24[4] = v2;
    v25 = *(a1 + 40);
    v26 = *(a1 + 48);
    v27 = *(a1 + 56);
    [v2 _callOutQueue_ensureCoalesceClientSettingsUpdates:v24];

    v2 = *(a1 + 32);
  }

  if (v2[113] == 1)
  {
    v3 = objc_alloc_init(FBSSceneEvent);
    [(FBSSceneEvent *)v3 setSettingsDiff:*(a1 + 56)];
    [(FBSSceneEvent *)v3 setTransitionContext:*(a1 + 64)];
    [(FBSSceneEvent *)v3 setSource:1];
    v4 = *(a1 + 32);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __76__FBSScene_updater_didUpdateSettings_withDiff_transitionContext_completion___block_invoke_3;
    v22[3] = &unk_1E76BD400;
    v5 = *(a1 + 72);
    v23 = *(a1 + 80);
    [v5 scene:v4 handleEvent:v3 withCompletion:v22];
  }

  else
  {
    v6 = *(a1 + 88);
    if (v6)
    {
      v7 = *(a1 + 56);
      v8 = *(a1 + 64);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __76__FBSScene_updater_didUpdateSettings_withDiff_transitionContext_completion___block_invoke_4;
      v20[3] = &unk_1E76BD428;
      v21 = *(a1 + 80);
      [v6 scene:v2 didUpdateWithDiff:v7 transitionContext:v8 completion:v20];
    }

    else
    {
      [*(a1 + 80) signal];
    }
  }

  v9 = [*(a1 + 32) _observers];
  if ([v9 count])
  {
    v10 = objc_opt_new();
    objc_storeStrong(v10 + 1, *(a1 + 48));
    objc_storeStrong(v10 + 3, *(a1 + 40));
    objc_storeStrong(v10 + 4, *(a1 + 56));
    objc_storeStrong(v10 + 5, *(a1 + 64));
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v16 + 1) + 8 * v15++) scene:*(a1 + 32) didUpdateSettings:{v10, v16}];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v28 count:16];
      }

      while (v13);
    }
  }
}

- (void)updater:(id)updater didReceiveActions:(id)actions forExtension:(Class)extension
{
  v79 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  if (extension && (v8 = [(FBSScene *)self conformsToExtension:extension], (v8 & 1) == 0))
  {
    v19 = FBLogSceneClient(v8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [FBSScene updater:extension didReceiveActions:? forExtension:?];
    }
  }

  else
  {
    v9 = [actionsCopy bs_map:&__block_literal_global_133];
    allObjects = [v9 allObjects];
    v11 = [allObjects componentsJoinedByString:{@", "}];

    v13 = FBLogSceneClient(v12);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    extensionCopy = extension;
    v56 = v11;
    if (extension)
    {
      if (v14)
      {
        loggingIdentifier = [(FBSScene *)self loggingIdentifier];
        v16 = NSStringFromClass(extension);
        *buf = 138543874;
        v74 = loggingIdentifier;
        v75 = 2114;
        v76 = v16;
        v77 = 2114;
        v78 = v11;
        _os_log_impl(&dword_1A2DBB000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received action(s) for %{public}@: %{public}@", buf, 0x20u);

        extension = extensionCopy;
      }

      p_lock = &self->_lock;
      os_unfair_lock_lock(&self->_lock);
      _lock_allComponents = [(NSMapTable *)self->_lock_components objectForKey:extension];
      WeakRetained = 0;
      v58 = 0;
    }

    else
    {
      if (v14)
      {
        loggingIdentifier2 = [(FBSScene *)self loggingIdentifier];
        *buf = 138543618;
        v74 = loggingIdentifier2;
        v75 = 2114;
        v76 = v11;
        _os_log_impl(&dword_1A2DBB000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received action(s): %{public}@", buf, 0x16u);
      }

      p_lock = &self->_lock;
      os_unfair_lock_lock(&self->_lock);
      WeakRetained = objc_loadWeakRetained(&self->_lock_delegate);
      v58 = [(NSMutableArray *)self->_lock_sceneObservers copy];
      _lock_allComponents = [(FBSScene *)self _lock_allComponents];
    }

    os_unfair_lock_unlock(p_lock);
    v55 = actionsCopy;
    v21 = [actionsCopy mutableCopy];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = _lock_allComponents;
    v22 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
    selfCopy = self;
    if (v22)
    {
      v23 = v22;
      v24 = *v68;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v68 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v67 + 1) + 8 * i);
          if (extension)
          {
            [v26 scene:self handlePrivateActions:v21];
          }

          else
          {
            [v26 scene:self handleActions:v21];
          }
          v27 = ;
          v28 = [v27 count];
          if (v28)
          {
            v29 = FBLogCommon(v28);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              loggingIdentifier3 = [(FBSScene *)self loggingIdentifier];
              component = [v26 component];
              v32 = [off_1E76BC9B0 succinctDescriptionForObject:component];
              v33 = [v27 bs_reduce:&stru_1F1595B30 block:&__block_literal_global_143];
              *buf = 138543874;
              v74 = loggingIdentifier3;
              v75 = 2114;
              v76 = v32;
              v77 = 2112;
              v78 = v33;
              _os_log_impl(&dword_1A2DBB000, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@] Component %{public}@ handled action(s): %@", buf, 0x20u);

              self = selfCopy;
              extension = extensionCopy;
            }

            [v21 minusSet:v27];
            if (![v21 count])
            {

              goto LABEL_28;
            }
          }
        }

        v23 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

LABEL_28:

    v34 = [v21 count];
    if (v34)
    {
      if (extension)
      {
        v35 = FBLogSceneClient(v34);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          loggingIdentifier4 = [(FBSScene *)self loggingIdentifier];
          v52 = NSStringFromClass(extension);
          v53 = [v21 bs_map:&__block_literal_global_149];
          *buf = 138543874;
          v74 = loggingIdentifier4;
          v75 = 2114;
          v76 = v52;
          v77 = 2114;
          v78 = v53;
          _os_log_error_impl(&dword_1A2DBB000, v35, OS_LOG_TYPE_ERROR, "[%{public}@] Extension %{public}@ did not handle actions: %{public}@", buf, 0x20u);
        }
      }

      v36 = [v21 copy];

      v54 = v36;
      if (self->_hasAgent)
      {
        _createTransitionContext = [(FBSScene *)self _createTransitionContext];
        [_createTransitionContext setActions:v36];
        v38 = objc_alloc_init(FBSSceneEvent);
        [(FBSSceneEvent *)v38 setTransitionContext:_createTransitionContext];
        [(FBSSceneEvent *)v38 setSource:1];
        [(FBSSceneClientAgent *)self->_callOutQueue_agent scene:self handleEvent:v38 withCompletion:0];
      }

      else
      {
        [WeakRetained scene:self didReceiveActions:v36];
      }

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v60 = v58;
      v39 = [v60 countByEnumeratingWithState:&v63 objects:v71 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v64;
        while (2)
        {
          for (j = 0; j != v40; ++j)
          {
            if (*v64 != v41)
            {
              objc_enumerationMutation(v60);
            }

            v43 = *(*(&v63 + 1) + 8 * j);
            v44 = [v43 scene:self handleActions:v21];
            v45 = [v44 count];
            if (v45)
            {
              v46 = FBLogCommon(v45);
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                loggingIdentifier5 = [(FBSScene *)self loggingIdentifier];
                observer = [v43 observer];
                v49 = [off_1E76BC9B0 succinctDescriptionForObject:observer];
                v50 = [v44 bs_reduce:&stru_1F1595B30 block:&__block_literal_global_152];
                *buf = 138543874;
                v74 = loggingIdentifier5;
                v75 = 2114;
                v76 = v49;
                v77 = 2112;
                v78 = v50;
                _os_log_impl(&dword_1A2DBB000, v46, OS_LOG_TYPE_DEFAULT, "[%{public}@] Observer %{public}@ handled action(s): %@", buf, 0x20u);

                self = selfCopy;
              }

              [v21 minusSet:v44];
              if (![v21 count])
              {

                goto LABEL_50;
              }
            }
          }

          v40 = [v60 countByEnumeratingWithState:&v63 objects:v71 count:16];
          if (v40)
          {
            continue;
          }

          break;
        }
      }

LABEL_50:

      actionsCopy = v54;
    }

    else
    {
      actionsCopy = v55;
    }

    v19 = v56;
  }
}

NSString *__51__FBSScene_updater_didReceiveActions_forExtension___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

id __51__FBSScene_updater_didReceiveActions_forExtension___block_invoke_140(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [off_1E76BC9B0 succinctDescriptionForObject:a3];
  if ([v4 length])
  {
    v6 = [v4 stringByAppendingFormat:@", %@", v5];
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  return v7;
}

id __51__FBSScene_updater_didReceiveActions_forExtension___block_invoke_150(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [off_1E76BC9B0 succinctDescriptionForObject:a3];
  if ([v4 length])
  {
    v6 = [v4 stringByAppendingFormat:@", %@", v5];
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  return v7;
}

- (void)updater:(id)updater didReceiveMessage:(id)message withResponse:(id)response
{
  messageCopy = message;
  responseCopy = response;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  if (self->_hasAgent && (v9 = MEMORY[0x1A58E80F0](self->_callOutQueue_agentMessageHandler)) != 0)
  {
    v10 = v9;
    if (responseCopy)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __51__FBSScene_updater_didReceiveMessage_withResponse___block_invoke;
      v11[3] = &unk_1E76BD4B8;
      v11[4] = self;
      v12 = responseCopy;
      (v10)[2](v10, messageCopy, v11);
    }

    else
    {
      (*(v9 + 16))(v9, messageCopy, 0);
    }
  }

  else if (responseCopy)
  {
    (*(responseCopy + 2))(responseCopy, 0);
  }
}

void __51__FBSScene_updater_didReceiveMessage_withResponse___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  [v3 assertBarrierOnQueue];
  (*(*(a1 + 40) + 16))();
}

- (id)hostProcess
{
  updater = [(FBSScene *)self updater];
  hostProcess = [updater hostProcess];

  return hostProcess;
}

- (id)openSessionWithName:(id)name executionPolicy:(id)policy
{
  callOutQueue = self->_callOutQueue;
  policyCopy = policy;
  nameCopy = name;
  [(BSServiceQueue *)callOutQueue assertBarrierOnQueue];
  v9 = [[FBSSceneActivitySession alloc] initWithName:nameCopy scene:self executionPolicy:policyCopy];

  if (v9)
  {
    [(NSMutableArray *)self->_callOutQueue_agentSessions addObject:v9];
  }

  [(FBSSceneActivitySession *)v9 open];

  return v9;
}

- (void)closeSession:(id)session
{
  sessionCopy = session;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  if (sessionCopy && [(NSMutableArray *)self->_callOutQueue_agentSessions containsObject:sessionCopy])
  {
    [sessionCopy close];
    [sessionCopy invalidate];
    [(NSMutableArray *)self->_callOutQueue_agentSessions removeObject:sessionCopy];
  }
}

- (void)agent:(id)agent registerMessageHandler:(id)handler
{
  agentCopy = agent;
  handlerCopy = handler;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  if (!agentCopy || self->_callOutQueue_agent != agentCopy)
  {
    [FBSScene agent:a2 registerMessageHandler:?];
  }

  if (self->_callOutQueue_agentMessageHandler != handlerCopy)
  {
    v8 = [handlerCopy copy];
    callOutQueue_agentMessageHandler = self->_callOutQueue_agentMessageHandler;
    self->_callOutQueue_agentMessageHandler = v8;
  }
}

- (void)agent:(id)agent sendMessage:(id)message withResponse:(id)response
{
  agentCopy = agent;
  messageCopy = message;
  responseCopy = response;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  if (self->_callOutQueue_agent != agentCopy)
  {
    [FBSScene agent:a2 sendMessage:? withResponse:?];
  }

  v12 = messageCopy;
  NSClassFromString(&cfstr_Fbsscenemessag.isa);
  if (!v12)
  {
    [FBSScene agent:a2 sendMessage:? withResponse:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSScene agent:a2 sendMessage:? withResponse:?];
  }

  if (responseCopy)
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __43__FBSScene_agent_sendMessage_withResponse___block_invoke;
    v20 = &unk_1E76BD508;
    selfCopy = self;
    v22 = responseCopy;
    v13 = MEMORY[0x1A58E80F0](&v17);
  }

  else
  {
    v13 = 0;
  }

  v14 = [(FBSScene *)self updater:v17];
  v15 = v14;
  if (v14)
  {
    [v14 scene:self sendMessage:v12 withResponse:v13];
  }

  else if (v13)
  {
    v16 = [MEMORY[0x1E696ABC0] sceneMessageErrorWithCode:2];
    (v13)[2](v13, 0, v16);
  }
}

void __43__FBSScene_agent_sendMessage_withResponse___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__FBSScene_agent_sendMessage_withResponse___block_invoke_2;
  v11[3] = &unk_1E76BD4E0;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  [v7 performAsync:v11];
}

- (BOOL)snapshotRequestAllowSnapshot:(id)snapshot
{
  delegate = [(FBSScene *)self delegate];
  v4 = delegate != 0;

  return v4;
}

- (BOOL)snapshotRequest:(id)request performWithContext:(id)context
{
  contextCopy = context;
  [request setDelegate:0];
  v7 = [FBSSceneSnapshotRequestHandle handleForRequestType:1 context:contextCopy];

  [v7 performRequestForScene:self];
  return 1;
}

- (BOOL)conformsToExtension:(Class)extension
{
  settings = [(FBSScene *)self settings];
  if ([(objc_class *)extension isSubclassOfClass:objc_opt_class()])
  {
    specification = [(FBSSceneDefinition *)self->_definition specification];
    v7 = FBSGetDefaultExtensions(specification);
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

- (void)sendActions:(id)actions toExtension:(Class)extension
{
  v52 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  if (!self->_everActivated)
  {
    [FBSScene sendActions:a2 toExtension:?];
  }

  objc_opt_class();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = actionsCopy;
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v51 count:16];
  if (v9)
  {
    v10 = *v36;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [FBSScene sendActions:v12 toExtension:a2];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v35 objects:v51 count:16];
    }

    while (v9);
  }

  if ([v8 count])
  {
    updater = [(FBSScene *)self updater];
    if (updater)
    {
      if (self->_callout_coalesceUpdates && self->_callout_sceneUpdate)
      {
        [(FBSScene *)self _sendUpdate:?];
      }

      if (self->_hasAgent)
      {
        _createTransitionContext = [(FBSScene *)self _createTransitionContext];
        [_createTransitionContext setActions:v8];
        v15 = objc_alloc_init(FBSSceneEvent);
        [(FBSSceneEvent *)v15 setTransitionContext:_createTransitionContext];
        [(FBSSceneEvent *)v15 setSource:2];
        v31 = 0;
        v32 = &v31;
        v33 = 0x2020000000;
        v34 = 0;
        callOutQueue_agent = self->_callOutQueue_agent;
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __36__FBSScene_sendActions_toExtension___block_invoke;
        v30[3] = &unk_1E76BD340;
        v30[4] = self;
        v30[5] = &v31;
        [(FBSSceneClientAgent *)callOutQueue_agent scene:self reviewEvent:v15 withCompletion:v30];
        if ((v32[3] & 1) == 0)
        {
          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"agent callout's completion was not called in scope : event=%@ agent=%@", v15, self->_callOutQueue_agent];
          v24 = MEMORY[0x1E69E9C10];
          v25 = MEMORY[0x1E69E9C10];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v26 = NSStringFromSelector(a2);
            v27 = objc_opt_class();
            v28 = NSStringFromClass(v27);
            *buf = 138544642;
            v40 = v26;
            v41 = 2114;
            v42 = v28;
            v43 = 2048;
            selfCopy = self;
            v45 = 2114;
            v46 = @"FBSScene.m";
            v47 = 1024;
            v48 = 1256;
            v49 = 2114;
            v50 = v23;
            _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v29 = v23;
          [v23 UTF8String];
          _bs_set_crash_log_message();
        }

        _Block_object_dispose(&v31, 8);
      }

      fbs_singleLineDescriptionOfBSActions = [v8 fbs_singleLineDescriptionOfBSActions];
      v18 = FBLogSceneClient(fbs_singleLineDescriptionOfBSActions);
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      if (extension)
      {
        if (v19)
        {
          identity = [(FBSScene *)self identity];
          v21 = NSStringFromClass(extension);
          *buf = 138543874;
          v40 = identity;
          v41 = 2114;
          v42 = v21;
          v43 = 2114;
          selfCopy = fbs_singleLineDescriptionOfBSActions;
          _os_log_impl(&dword_1A2DBB000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending action(s) to %{public}@: %{public}@", buf, 0x20u);
        }
      }

      else if (v19)
      {
        identity2 = [(FBSScene *)self identity];
        *buf = 138543618;
        v40 = identity2;
        v41 = 2114;
        v42 = fbs_singleLineDescriptionOfBSActions;
        _os_log_impl(&dword_1A2DBB000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending action(s): %{public}@", buf, 0x16u);
      }

      [updater scene:self didReceiveActions:v8 forExtension:extension];
    }
  }
}

void __36__FBSScene_sendActions_toExtension___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(a1 + 32) + 8) assertBarrierOnQueue];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  if (v3)
  {
    v4 = *(*(a1 + 32) + 8);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __36__FBSScene_sendActions_toExtension___block_invoke_2;
    v5[3] = &unk_1E76BD318;
    v6 = v3;
    [v4 performAsync:v5];
  }
}

void __36__FBSScene_sendActions_toExtension___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] sceneMessageErrorWithCode:1];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)sendInvocation:(id)invocation
{
  invocationCopy = invocation;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  if (!self->_everActivated)
  {
    [FBSScene sendInvocation:a2];
  }

  updater = [(FBSScene *)self updater];
  if (updater)
  {
    v6 = invocationCopy;
    if (self->_callout_coalesceUpdates && self->_callout_sceneUpdate)
    {
      [(FBSScene *)self _sendUpdate:?];
      v6 = invocationCopy;
    }

    [updater scene:self sendInvocation:v6];
  }

  else
  {
    [invocationCopy cannotResolveForReason:@"Scene is not valid"];
  }
}

- (id)targetForInvocation:(id)invocation
{
  v19 = *MEMORY[0x1E69E9840];
  invocationCopy = invocation;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  os_unfair_lock_lock(&self->_lock);
  v5 = -[NSMapTable objectForKey:](self->_lock_components, "objectForKey:", [invocationCopy extension]);
  v6 = [v5 copy];

  os_unfair_lock_unlock(&self->_lock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v15 != v10)
      {
        objc_enumerationMutation(v7);
      }

      component = [*(*(&v14 + 1) + 8 * v11) component];
      if ([invocationCopy compatibleWithTarget:component])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    component = 0;
  }

  return component;
}

- (id)componentForExtension:(Class)extension ofClass:(Class)class
{
  v23 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMapTable *)self->_lock_components objectForKey:extension];
  v8 = [v7 copy];

  os_unfair_lock_unlock(&self->_lock);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v19 != v12)
      {
        objc_enumerationMutation(v9);
      }

      component = [*(*(&v18 + 1) + 8 * v13) component];
      if (class)
      {
        v15 = (objc_opt_isKindOfClass() & 1) != 0 ? component : 0;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      if (v16)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v16 = 0;
  }

  return v16;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  _callOutQueue = [(FBSScene *)self _callOutQueue];
  [_callOutQueue assertBarrierOnQueue];

  if ([(FBSScene *)self everActivated])
  {
    [FBSScene(FBSWorkspaceService) activateWithCompletion:a2];
  }

  updater = [(FBSScene *)self updater];
  v8 = updater;
  if (updater)
  {
    [updater activateSceneFuture:self completion:completionCopy];
  }

  else if (completionCopy)
  {
    _callOutQueue2 = [(FBSScene *)self _callOutQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__FBSScene_FBSWorkspaceService__activateWithCompletion___block_invoke;
    v10[3] = &unk_1E76BD318;
    v11 = completionCopy;
    [_callOutQueue2 performAsync:v10];
  }
}

void __56__FBSScene_FBSWorkspaceService__activateWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  v10 = FBSWorkspaceErrorCreate(0, 1uLL, @"scene cannot be activated because it was already invalidated", a4, a5, a6, a7, a8, v9);
  (*(v8 + 16))(v8, 0, v10);
}

- (void)updateClientSettings:(void *)a1 withTransitionContext:.cold.1(void *a1)
{
  v6 = [a1 identity];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)addObserver:(char *)a1 withConfiguration:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"observer != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_beginUpdate
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot begin a new update while one is ongoing"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(self);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_updateClientSettings:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 loggingIdentifier];
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&dword_1A2DBB000, a2, OS_LOG_TYPE_DEBUG, "[%{public}@] Ignoring update containing only animation settings.", &v4, 0xCu);
}

- (void)_updateClientSettings:(uint64_t)a3 .cold.2(const char *a1, uint64_t a2, uint64_t a3)
{
  v5 = NSStringFromSelector(a1);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  *v13 = 138544642;
  *&v13[4] = v5;
  *&v13[12] = 2114;
  *&v13[14] = v7;
  *&v13[22] = 2048;
  LOWORD(v14) = 2114;
  *(&v14 + 2) = @"FBSScene.m";
  WORD5(v14) = 1024;
  HIDWORD(v14) = 346;
  LOWORD(v15) = 2114;
  *(&v15 + 2) = a3;
  OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, *v13, *&v13[8], *&v13[16], a2, v14, v15, HIWORD(a3));
}

- (void)_updateClientSettings:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"too many nested updates"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_sendUpdate:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid scene update"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11);
  }

  v12 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)updateSettings:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"it is not appropriate to call -updateSettings: on this scene"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithUpdater:(char *)a1 identityToken:identity:parameters:hostHandle:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSServiceQueueClass]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithUpdater:(char *)a1 identityToken:identity:parameters:hostHandle:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:FBSSceneIdentityTokenClass]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithUpdater:(char *)a1 identityToken:identity:parameters:hostHandle:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:FBSSceneIdentityClass]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithUpdater:(char *)a1 identityToken:identity:parameters:hostHandle:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"BSEqualObjects([identity identifier], [identityToken identifier])"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithUpdater:(char *)a1 identityToken:identity:parameters:hostHandle:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:FBSSceneSpecificationClass]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithUpdater:(int)a1 identityToken:(Class)aClass identity:parameters:hostHandle:.cold.6(int a1, Class aClass)
{
  v2 = NSStringFromClass(aClass);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_initWithUpdater:(uint64_t)a3 identityToken:identity:parameters:hostHandle:.cold.7(objc_class *a1, const char *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromClass(a1);
  v6 = [v4 stringWithFormat:@"agent class %@ failed to allocate", v5];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v16 = NSStringFromClass(v8);
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v9, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v10, v11, v12, v13, v14, v15);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithUpdater:(char *)a1 identityToken:identity:parameters:hostHandle:.cold.8(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithUpdater:(char *)a1 identityToken:identity:parameters:hostHandle:.cold.9(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithUpdater:(char *)a1 identityToken:identity:parameters:hostHandle:.cold.10(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithUpdater:(char *)a1 identityToken:identity:parameters:hostHandle:.cold.11(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithUpdater:(char *)a1 identityToken:identity:parameters:hostHandle:.cold.12(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"updater"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_configureParameters:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot update parameters after activation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_callOutQueue_maybeCoalesceClientSettingsUpdates:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_callout_coalesceUpdates"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_callOutQueue_updateExtensionsFromSettings:(char *)a1 toSettings:withDiff:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"extensions should only be updated while coalescing"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_callOutQueue_updateExtensionsFromSettings:(char *)a1 toSettings:withDiff:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_callOutQueue_mutationLocked == NO"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

void __76__FBSScene_updater_didUpdateSettings_withDiff_transitionContext_completion___block_invoke_cold_1(uint64_t a1)
{
  v2 = [*(a1 + 32) loggingIdentifier];
  v3 = NSStringFromClass(*(a1 + 48));
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)updater:(void *)a1 didReceiveActions:(objc_class *)a2 forExtension:.cold.1(void *a1, objc_class *a2)
{
  v3 = [a1 loggingIdentifier];
  v4 = NSStringFromClass(a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)agent:(char *)a1 registerMessageHandler:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"agent && (agent == _callOutQueue_agent)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)agent:(char *)a1 sendMessage:withResponse:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"agent == _callOutQueue_agent"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)agent:(char *)a1 sendMessage:withResponse:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:FBSSceneMessageClass]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)agent:(char *)a1 sendMessage:withResponse:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)sendActions:(char *)a1 toExtension:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot send actions until activated"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11);
  }

  v12 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)sendActions:(uint64_t)a1 toExtension:(char *)a2 .cold.2(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"only actions of type BSAction can be sent : tried to send %@", a1];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v6 = OUTLINED_FUNCTION_12(v4, v5);
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v14, v15);
  }

  v13 = v3;
  [v3 UTF8String];
  _bs_set_crash_log_message();
}

- (void)sendInvocation:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot send invocations until activated"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

@end