@interface FBWorkspaceScene
+ (unsigned)_sceneActionForLifecycleFromState:(unsigned __int8)state toState:(unsigned __int8)toState;
- (FBSSceneSettings)settings;
- (FBSceneHost)host;
- (FBWorkspaceScene)initWithConnection:(id)connection host:(id)host settings:(id)settings clientSettings:(id)clientSettings fromRemnant:(BOOL)remnant;
- (id)clientProcess;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)hostProcess;
- (id)openSessionWithName:(id)name executionPolicy:(id)policy;
- (id)parameters;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_enqueueSceneCreateCompletionBlock:(uint64_t)block;
- (void)_workspaceQueue_decrementInFlightUpdatesForAction:(unsigned __int8)action allowThrottling:(BOOL)throttling externallyManaged:(BOOL)managed;
- (void)_workspaceQueue_incrementInFlightUpdatesForAction:(unsigned __int8)action allowThrottling:(BOOL)throttling externallyManaged:(BOOL)managed;
- (void)_workspaceQueue_invalidate;
- (void)_workspaceQueue_invalidateSceneAgentWithEvent:(id)event;
- (void)_workspaceQueue_sendMessageToClient:(id)client;
- (void)_workspaceQueue_sendSceneCreateToClient:(id)client parameters:(id)parameters transitionContext:(id)context completion:(id)completion;
- (void)_workspaceQueue_sendSceneUpdateToClient:(id)client settingsDiff:(id)diff transitionContext:(id)context completion:(id)completion;
- (void)_workspaceQueue_updateAssertion;
- (void)agent:(id)agent registerMessageHandler:(id)handler;
- (void)agent:(id)agent sendMessage:(id)message withResponse:(id)response;
- (void)closeSession:(id)session;
- (void)dealloc;
- (void)invalidate;
- (void)workspace:(void *)workspace handleActions:(uint64_t)actions forExtension:(void *)extension fromConnection:;
- (void)workspace:(void *)workspace handleInvocation:(void *)invocation fromConnection:(void *)connection withReply:;
- (void)workspace:(void *)workspace handleUpdatedClientSettings:(void *)settings transitionContext:(void *)context fromConnection:;
- (void)workspace:(void *)workspace sendActions:(uint64_t)actions toExtension:;
- (void)workspace:(void *)workspace sendInvalidationWithTransitionContext:(void *)context completion:;
- (void)workspace:(void *)workspace sendInvocation:(void *)invocation withReply:;
- (void)workspace:(void *)workspace sendUpdatedSettings:(void *)settings withDiff:(void *)diff transitionContext:(void *)context completion:;
@end

@implementation FBWorkspaceScene

- (FBSceneHost)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

- (void)_workspaceQueue_updateAssertion
{
  v41 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {

    os_unfair_lock_unlock(&self->_lock);
    return;
  }

  v3 = self->_lock_settings;
  v4 = self->_lock_connection;
  os_unfair_lock_unlock(&self->_lock);
  activityMode = [(FBSSceneSettings *)v3 activityMode];
  if (activityMode >= 0xFFFFFFCE)
  {
    v6 = -50;
  }

  else
  {
    v6 = 0x80;
  }

  if (activityMode <= 0xFFFFFFEB)
  {
    v7 = v6;
  }

  else
  {
    v7 = -20;
  }

  if (activityMode <= 0xFFFFFFF5)
  {
    v8 = v7;
  }

  else
  {
    v8 = -10;
  }

  if (!activityMode)
  {
    v8 = 0;
  }

  if (activityMode <= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 10;
  }

  [(FBSSceneSettings *)v3 jetsamPriority];
  JetsamMode = FBSSceneJetsamPriorityGetJetsamMode();
  if (JetsamMode >= 0xFFFFFFEC)
  {
    v11 = -20;
  }

  else
  {
    v11 = 0x80;
  }

  if (JetsamMode <= 0xFFFFFFF5)
  {
    v12 = v11;
  }

  else
  {
    v12 = -10;
  }

  if (!JetsamMode)
  {
    v12 = 0;
  }

  if (JetsamMode <= 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 10;
  }

  ResourceElevation = FBSSceneJetsamPriorityGetResourceElevation();
  if (v9 == 128)
  {
    v15 = 0;
LABEL_32:
    LOBYTE(v16) = 0;
    goto LABEL_65;
  }

  if ([(FBSSceneSettings *)v3 isForeground])
  {
    if (v9)
    {
      v17 = 3;
    }

    else
    {
      if (([(FBSSceneSettings *)v3 prefersProcessTaskSuspensionWhileSceneForeground]& 1) == 0)
      {
        if ([(FBSSceneSettings *)v3 isOccluded]&& ([(FBSSceneSettings *)v3 isIgnoringOcclusions]& 1) == 0)
        {
          LOBYTE(v16) = 4;
        }

        else
        {
          LOBYTE(v16) = 5;
        }

        v15 = 3;
        goto LABEL_65;
      }

      v17 = 3;
      v9 = -50;
    }

    v15 = 3;
  }

  else
  {
    queue_inFlightDeactivationEvents = self->_queue_inFlightDeactivationEvents;
    v25 = queue_inFlightDeactivationEvents == 0;
    v19 = queue_inFlightDeactivationEvents != 0;
    if (v25)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    v15 = 2 * v19;
    v9 = -50;
  }

  if (v9 == 206)
  {
    queue_inFlightUpdateEvents = self->_queue_inFlightUpdateEvents;
    if (queue_inFlightUpdateEvents)
    {
      if (queue_inFlightUpdateEvents == self->_queue_inFlightExternallyManagedEvents)
      {
        goto LABEL_32;
      }

      if (self->_queue_inFlightUpdateAllowsThrottling && !self->_queue_inFlightUpdateDisallowsThrottling)
      {
LABEL_54:
        if ((v17 - 1) < 3u)
        {
          v21 = 8 * ((v17 - 1) & 0x1F);
          v22 = 131585;
LABEL_62:
          v16 = v22 >> v21;
LABEL_64:
          v15 = v17;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      goto LABEL_60;
    }
  }

  LOBYTE(v16) = 0;
  if (v9 > 0xEBu)
  {
    if (v9 != 246)
    {
      v17 = v15;
      goto LABEL_54;
    }

    v17 = v15;
LABEL_60:
    if ((v17 - 1) < 3u)
    {
      v21 = 8 * ((v17 - 1) & 0x1F);
      v22 = 262915;
      goto LABEL_62;
    }

LABEL_63:
    LOBYTE(v16) = 0;
    goto LABEL_64;
  }

  if (v9 == 10)
  {
    v16 = 0x5040300u >> (8 * v15);
  }

LABEL_65:
  if (v13 <= 0xEBu)
  {
    v23 = 0x645A2800u >> (8 * v15);
    v24 = 0x655A2800u >> (8 * v15);
    if (v13 != 10)
    {
      LOBYTE(v24) = 0;
    }

    v25 = v13 == 0;
LABEL_87:
    if (v25)
    {
      LOBYTE(v27) = v23;
    }

    else
    {
      LOBYTE(v27) = v24;
    }

    goto LABEL_92;
  }

  if (v13 == 246)
  {
    v27 = 0x5A501E00u >> (8 * v15);
  }

  else
  {
    if (v13 == 236)
    {
      if (ResourceElevation == 4)
      {
        LOBYTE(v23) = 34;
      }

      else
      {
        LOBYTE(v23) = 35;
      }

      if (ResourceElevation == 3)
      {
        LOBYTE(v23) = 33;
      }

      if (ResourceElevation >= 3)
      {
        v26 = 33;
      }

      else
      {
        LOBYTE(v23) = 30;
        v26 = 30;
      }

      if (ResourceElevation >= 3)
      {
        LOBYTE(v24) = 30;
      }

      else
      {
        LOBYTE(v24) = 20;
      }

      if (v15 != 1)
      {
        LOBYTE(v24) = 0;
      }

      if (v15 == 2)
      {
        LOBYTE(v24) = v26;
      }

      v25 = v15 == 3;
      goto LABEL_87;
    }

    LOBYTE(v27) = 0;
  }

LABEL_92:
  v28 = FBWorkspaceStateCreate(v15, v16, v27);
  v29 = v28;
  v30 = FBWorkspaceStateEqual(self->_queue_workspaceState.rawValue, v28);
  if (!v30)
  {
    v31 = FBLogProcessScene(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      logProem = self->_logProem;
      v33 = NSStringFromFBWorkspaceState(v28);
      v37 = 138543618;
      v38 = logProem;
      v39 = 2114;
      v40 = v33;
      _os_log_impl(&dword_1A89DD000, v31, OS_LOG_TYPE_DEFAULT, "[%{public}@] Scene state did change: %{public}@.", &v37, 0x16u);
    }

    self->_queue_workspaceState.rawValue = v28;
    v34 = self->_queue_workspaceAssertion;
    v35 = [(FBWorkspaceConnection *)v4 _acquireAssertionForWorkspaceScene:v29 withState:?];
    queue_workspaceAssertion = self->_queue_workspaceAssertion;
    self->_queue_workspaceAssertion = v35;

    [(BSInvalidatable *)v34 invalidate];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBWorkspaceScene *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_identity withName:0];
  os_unfair_lock_lock(&self->_lock);
  v5 = [v3 appendBool:self->_lock_invalidated withName:@"invalidated" ifEqualTo:1];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (FBSSceneSettings)settings
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_settings;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_lock_invalidated == YES"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
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

- (void)invalidate
{
  v28 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v4 = FBLogProcessScene(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      logProem = self->_logProem;
      lock_connection = self->_lock_connection;
      *buf = 138543618;
      v25 = logProem;
      v26 = 2048;
      v27 = lock_connection;
      _os_log_impl(&dword_1A89DD000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidated for connection: %p.", buf, 0x16u);
    }

    v7 = self->_lock_connection;
    self->_lock_connection = 0;

    self->_lock_invalidated = 1;
    v8 = self->_lock_sceneCreatedBlocks;
    lock_sceneCreatedBlocks = self->_lock_sceneCreatedBlocks;
    self->_lock_sceneCreatedBlocks = 0;

    os_unfair_lock_unlock(&self->_lock);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v8;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          v16 = FBWorkspaceSceneErrorCreate(2, @"Scene creation failed", @"scene was invalidated", 0);
          (*(v15 + 16))(v15, 0, v16);
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    workspaceQueue = self->_workspaceQueue;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __30__FBWorkspaceScene_invalidate__block_invoke;
    v18[3] = &unk_1E783B580;
    v18[4] = self;
    [(BSServiceDispatchQueue *)workspaceQueue performAsync:v18];
  }
}

- (void)_workspaceQueue_invalidate
{
  [(BSServiceDispatchQueue *)self->_workspaceQueue assertBarrierOnQueue];
  [(BSInvalidatable *)self->_queue_workspaceAssertion invalidate];

  [(FBWorkspaceScene *)self _workspaceQueue_invalidateSceneAgentWithEvent:0];
}

- (FBWorkspaceScene)initWithConnection:(id)connection host:(id)host settings:(id)settings clientSettings:(id)clientSettings fromRemnant:(BOOL)remnant
{
  v51 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  hostCopy = host;
  settingsCopy = settings;
  clientSettingsCopy = clientSettings;
  if (!connectionCopy)
  {
    [FBWorkspaceScene initWithConnection:a2 host:? settings:? clientSettings:? fromRemnant:?];
  }

  v18 = clientSettingsCopy;
  definition = [hostCopy definition];
  if (([definition isValid] & 1) == 0)
  {
    [FBWorkspaceScene initWithConnection:a2 host:? settings:? clientSettings:? fromRemnant:?];
  }

  v20 = [(FBWorkspaceScene *)self init];
  v21 = v20;
  if (v20)
  {
    objc_storeWeak(&v20->_host, hostCopy);
    v21->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v21->_lock_connection, connection);
    v21->_usesOutgoingConnection = [(FBWorkspaceConnection *)connectionCopy isOutgoing];
    queue = [(FBWorkspaceConnection *)connectionCopy queue];
    workspaceQueue = v21->_workspaceQueue;
    v21->_workspaceQueue = queue;

    v24 = [definition copy];
    definition = v21->_definition;
    v21->_definition = v24;

    identity = [definition identity];
    identity = v21->_identity;
    v21->_identity = identity;

    v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
    lock_sceneCreatedBlocks = v21->_lock_sceneCreatedBlocks;
    v21->_lock_sceneCreatedBlocks = v28;

    if (remnant)
    {
      isClientFuture = 1;
    }

    else
    {
      isClientFuture = [settingsCopy isClientFuture];
    }

    v21->_reconnect = isClientFuture;
    v31 = [settingsCopy copy];
    lock_settings = v21->_lock_settings;
    v21->_lock_settings = v31;

    v33 = [v18 copy];
    lock_clientSettings = v21->_lock_clientSettings;
    v21->_lock_clientSettings = v33;

    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p:%@", v21, v21->_identity];
    logProem = v21->_logProem;
    v21->_logProem = v35;

    specification = [definition specification];
    hostAgentClass = [specification hostAgentClass];

    if (hostAgentClass)
    {
      v40 = objc_alloc_init(hostAgentClass);
      hostAgent = v21->_hostAgent;
      v21->_hostAgent = v40;

      v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
      agentSessions = v21->_agentSessions;
      v21->_agentSessions = v42;

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        isKindOfClass = [(FBSSceneHostAgent *)v21->_hostAgent _configureWithScene:v21];
      }
    }

    v44 = FBLogProcessScene(isKindOfClass);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v21->_logProem;
      *buf = 138543618;
      v48 = v45;
      v49 = 2048;
      v50 = connectionCopy;
      _os_log_impl(&dword_1A89DD000, v44, OS_LOG_TYPE_DEFAULT, "[%{public}@] Initialized with connection: %p.", buf, 0x16u);
    }
  }

  return v21;
}

+ (unsigned)_sceneActionForLifecycleFromState:(unsigned __int8)state toState:(unsigned __int8)toState
{
  if (!state)
  {
    LOBYTE(v6) = 2;
    return v6;
  }

  if (state == 2)
  {
    if (toState < 3u)
    {
      v4 = 8 * (toState & 0x1F);
      v5 = 66307;
      return v5 >> v4;
    }

LABEL_9:
    LOBYTE(v6) = 1;
    return v6;
  }

  if (state != 1 || toState >= 3u)
  {
    goto LABEL_9;
  }

  v4 = 8 * (toState & 0x1F);
  v5 = 131329;
  return v5 >> v4;
}

- (void)_enqueueSceneCreateCompletionBlock:(uint64_t)block
{
  v3 = a2;
  v4 = v3;
  if (block)
  {
    if (!v3)
    {
      [FBWorkspaceScene _enqueueSceneCreateCompletionBlock:?];
    }

    v5 = v3;
    [(FBWorkspaceScene *)block _enqueueSceneCreateCompletionBlock:v3];
    v4 = v5;
  }
}

- (void)_workspaceQueue_sendSceneCreateToClient:(id)client parameters:(id)parameters transitionContext:(id)context completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  parametersCopy = parameters;
  contextCopy = context;
  completionCopy = completion;
  if (!clientCopy)
  {
    [FBWorkspaceScene _workspaceQueue_sendSceneCreateToClient:a2 parameters:? transitionContext:? completion:?];
  }

  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __100__FBWorkspaceScene__workspaceQueue_sendSceneCreateToClient_parameters_transitionContext_completion___block_invoke;
  v25 = &unk_1E783B9E0;
  selfCopy = self;
  v15 = completionCopy;
  v27 = v15;
  v16 = MEMORY[0x1AC572E40](&v22);
  reconnect = self->_reconnect;
  v18 = FBLogProcessScene(v16);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (reconnect)
  {
    if (v19)
    {
      logProem = self->_logProem;
      *buf = 138543362;
      v29 = logProem;
      _os_log_impl(&dword_1A89DD000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending scene reconnect.", buf, 0xCu);
    }

    [clientCopy reconnectSceneWithIdentity:self->_identity parameters:parametersCopy transitionContext:contextCopy completion:{v16, v22, v23, v24, v25, selfCopy}];
  }

  else
  {
    if (v19)
    {
      v21 = self->_logProem;
      *buf = 138543362;
      v29 = v21;
      _os_log_impl(&dword_1A89DD000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending scene create.", buf, 0xCu);
    }

    [clientCopy createSceneWithIdentity:self->_identity parameters:parametersCopy transitionContext:contextCopy completion:{v16, v22, v23, v24, v25, selfCopy}];
  }
}

void __100__FBWorkspaceScene__workspaceQueue_sendSceneCreateToClient_parameters_transitionContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if ([v3 isBSServiceConnectionError])
    {
      if ([v4 code] == 4)
      {
        v5 = @"Client was unable to decode scene parameters";
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    if (*(*(a1 + 32) + 157))
    {
      v7 = @"Scene reconnect failed";
    }

    else
    {
      v7 = @"Scene create failed";
    }

    v6 = FBWorkspaceSceneErrorCreate(2, v7, v5, v4);

    v9 = FBLogProcessScene(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __100__FBWorkspaceScene__workspaceQueue_sendSceneCreateToClient_parameters_transitionContext_completion___block_invoke_cold_1(a1 + 32, v6, v9);
    }
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_lock((*(a1 + 32) + 144));
  v10 = *(*(a1 + 32) + 80);
  v11 = *(a1 + 32);
  v12 = *(v11 + 80);
  *(v11 + 80) = 0;

  os_unfair_lock_unlock((*(a1 + 32) + 144));
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        (*(*(*(&v18 + 1) + 8 * i) + 16))(*(*(&v18 + 1) + 8 * i));
      }

      v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
}

- (void)_workspaceQueue_sendSceneUpdateToClient:(id)client settingsDiff:(id)diff transitionContext:(id)context completion:(id)completion
{
  clientCopy = client;
  diffCopy = diff;
  contextCopy = context;
  completionCopy = completion;
  if (!clientCopy)
  {
    [FBWorkspaceScene _workspaceQueue_sendSceneUpdateToClient:a2 settingsDiff:? transitionContext:? completion:?];
  }

  v15 = completionCopy;
  if (([diffCopy _isSignifcant] & 1) != 0 || (-[FBSSceneDefinition specification](self->_definition, "specification"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "_isSignificantTransitionContext:", contextCopy), v16, v17))
  {
    identity = self->_identity;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __102__FBWorkspaceScene__workspaceQueue_sendSceneUpdateToClient_settingsDiff_transitionContext_completion___block_invoke;
    v19[3] = &unk_1E783BD20;
    v20 = v15;
    [clientCopy sceneID:identity updateWithSettingsDiff:diffCopy transitionContext:contextCopy completion:v19];
  }

  else
  {
    v15[2](v15, 1, 0);
  }
}

- (void)_workspaceQueue_invalidateSceneAgentWithEvent:(id)event
{
  v20 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v5 = eventCopy;
  hostAgent = self->_hostAgent;
  if (hostAgent)
  {
    if (eventCopy)
    {
      [(FBSSceneHostAgent *)self->_hostAgent scene:self willInvalidateWithEvent:eventCopy completion:&__block_literal_global_13];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x1E699FBF8]);
      [(FBSSceneHostAgent *)hostAgent scene:self willInvalidateWithEvent:v7 completion:&__block_literal_global_13];
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = self->_agentSessions;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v15 + 1) + 8 * i) invalidate];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    v13 = self->_hostAgent;
    self->_hostAgent = 0;

    agentSessions = self->_agentSessions;
    self->_agentSessions = 0;
  }
}

- (void)_workspaceQueue_sendMessageToClient:(id)client
{
  clientCopy = client;
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_lock_connection;
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__FBWorkspaceScene__workspaceQueue_sendMessageToClient___block_invoke;
    v6[3] = &unk_1E783C508;
    v6[4] = self;
    v7 = clientCopy;
    [(FBWorkspaceConnection *)v5 _workspaceScene:v6 enqueueConnectBlock:?];
  }

  else
  {
    (*(clientCopy + 2))(clientCopy, 0);
  }
}

void __56__FBWorkspaceScene__workspaceQueue_sendMessageToClient___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  os_unfair_lock_lock(v3 + 36);
  v4 = *(a1 + 32);
  LODWORD(v3) = *(v4 + 158);
  os_unfair_lock_unlock((v4 + 144));
  v5 = v6;
  if (v3)
  {
    v5 = 0;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v5);
}

- (void)_workspaceQueue_incrementInFlightUpdatesForAction:(unsigned __int8)action allowThrottling:(BOOL)throttling externallyManaged:(BOOL)managed
{
  if (action)
  {
    ++self->_queue_inFlightUpdateEvents;
    v5 = 120;
    if (throttling)
    {
      v5 = 112;
    }

    ++*(&self->super.isa + v5);
    if (action == 3)
    {
      ++self->_queue_inFlightDeactivationEvents;
    }

    if (managed)
    {
      ++self->_queue_inFlightExternallyManagedEvents;
    }
  }

  [(FBWorkspaceScene *)self _workspaceQueue_updateAssertion];
}

- (void)_workspaceQueue_decrementInFlightUpdatesForAction:(unsigned __int8)action allowThrottling:(BOOL)throttling externallyManaged:(BOOL)managed
{
  if (action)
  {
    queue_inFlightUpdateEvents = self->_queue_inFlightUpdateEvents;
    if (!queue_inFlightUpdateEvents)
    {
      [FBWorkspaceScene _workspaceQueue_decrementInFlightUpdatesForAction:a2 allowThrottling:? externallyManaged:?];
    }

    v7 = queue_inFlightUpdateEvents - 1;
    self->_queue_inFlightUpdateEvents = v7;
    if (throttling)
    {
      p_queue_inFlightUpdateAllowsThrottling = &self->_queue_inFlightUpdateAllowsThrottling;
      queue_inFlightUpdateAllowsThrottling = self->_queue_inFlightUpdateAllowsThrottling;
      if (!queue_inFlightUpdateAllowsThrottling)
      {
        [FBWorkspaceScene _workspaceQueue_decrementInFlightUpdatesForAction:a2 allowThrottling:? externallyManaged:?];
      }
    }

    else
    {
      p_queue_inFlightUpdateAllowsThrottling = &self->_queue_inFlightUpdateDisallowsThrottling;
      queue_inFlightUpdateAllowsThrottling = self->_queue_inFlightUpdateDisallowsThrottling;
      if (!queue_inFlightUpdateAllowsThrottling)
      {
        [FBWorkspaceScene _workspaceQueue_decrementInFlightUpdatesForAction:a2 allowThrottling:? externallyManaged:?];
      }
    }

    *p_queue_inFlightUpdateAllowsThrottling = queue_inFlightUpdateAllowsThrottling - 1;
    if (action == 3)
    {
      --self->_queue_inFlightDeactivationEvents;
    }

    if (managed)
    {
      queue_inFlightExternallyManagedEvents = self->_queue_inFlightExternallyManagedEvents;
      if (!queue_inFlightExternallyManagedEvents)
      {
        [FBWorkspaceScene _workspaceQueue_decrementInFlightUpdatesForAction:a2 allowThrottling:? externallyManaged:?];
      }

      self->_queue_inFlightExternallyManagedEvents = queue_inFlightExternallyManagedEvents - 1;
    }

    if (!v7)
    {
      queue_eventsCompleteSignal = self->_queue_eventsCompleteSignal;
      if (queue_eventsCompleteSignal)
      {
        [(BSAtomicSignal *)queue_eventsCompleteSignal signal];
        v12 = self->_queue_eventsCompleteSignal;
        self->_queue_eventsCompleteSignal = 0;
      }

      v13 = objc_opt_new();
      v14 = self->_queue_eventsCompleteSignal;
      self->_queue_eventsCompleteSignal = v13;

      v15 = v13;
      workspaceQueue = self->_workspaceQueue;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __104__FBWorkspaceScene__workspaceQueue_decrementInFlightUpdatesForAction_allowThrottling_externallyManaged___block_invoke;
      v18[3] = &unk_1E783B240;
      v18[4] = self;
      v19 = v15;
      v17 = v15;
      [(BSServiceDispatchQueue *)workspaceQueue performAfter:v18 withBlock:0.1];
    }
  }
}

id *__104__FBWorkspaceScene__workspaceQueue_decrementInFlightUpdatesForAction_allowThrottling_externallyManaged___block_invoke(id *result)
{
  if (!*(result[4] + 12))
  {
    v1 = result;
    result = [result[5] signal];
    if (result)
    {
      v2 = v1[4];

      return [v2 _workspaceQueue_updateAssertion];
    }
  }

  return result;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBWorkspaceScene *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(FBWorkspaceScene *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__FBWorkspaceScene_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E783B240;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

uint64_t __58__FBWorkspaceScene_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(*(a1 + 40) + 48))
  {
    v3 = [MEMORY[0x1E698E680] succinctDescriptionForObject:?];
    v4 = [v2 appendObject:v3 withName:@"agent"];
  }

  else
  {
    v5 = [*(a1 + 32) appendObject:@"(none)" withName:@"agent"];
  }

  v6 = MEMORY[0x1E698E680];
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) clientProcess];
  v9 = [v6 succinctDescriptionForObject:v8];
  v10 = [v7 appendObject:v9 withName:@"clientProcess"];

  v11 = *(a1 + 32);
  v12 = *(*(a1 + 40) + 56);

  return [v11 appendArraySection:v12 withName:@"agentSessions" skipIfEmpty:1];
}

- (id)parameters
{
  v3 = objc_alloc(MEMORY[0x1E699FB58]);
  specification = [(FBSSceneDefinition *)self->_definition specification];
  v5 = [v3 initWithSpecification:specification];

  os_unfair_lock_lock(&self->_lock);
  [v5 setSettings:self->_lock_settings];
  [v5 setClientSettings:self->_lock_clientSettings];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)hostProcess
{
  WeakRetained = objc_loadWeakRetained(&self->_host);
  hostProcess = [WeakRetained hostProcess];

  return hostProcess;
}

- (id)clientProcess
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_connection;
  os_unfair_lock_unlock(&self->_lock);
  remoteProcess = [(FBWorkspaceConnection *)&v3->super.isa remoteProcess];

  return remoteProcess;
}

- (id)openSessionWithName:(id)name executionPolicy:(id)policy
{
  workspaceQueue = self->_workspaceQueue;
  policyCopy = policy;
  nameCopy = name;
  [(BSServiceDispatchQueue *)workspaceQueue assertBarrierOnQueue];
  v9 = [objc_alloc(MEMORY[0x1E699FBD0]) initWithName:nameCopy scene:self executionPolicy:policyCopy];

  if (v9)
  {
    [(NSMutableArray *)self->_agentSessions addObject:v9];
  }

  [v9 open];

  return v9;
}

- (void)closeSession:(id)session
{
  sessionCopy = session;
  [(BSServiceDispatchQueue *)self->_workspaceQueue assertBarrierOnQueue];
  if (sessionCopy && [(NSMutableArray *)self->_agentSessions containsObject:sessionCopy])
  {
    [sessionCopy close];
    [sessionCopy invalidate];
    [(NSMutableArray *)self->_agentSessions removeObject:sessionCopy];
  }
}

- (void)agent:(id)agent registerMessageHandler:(id)handler
{
  v4 = FBLogProcessScene(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [FBWorkspaceScene agent:registerMessageHandler:];
  }
}

- (void)agent:(id)agent sendMessage:(id)message withResponse:(id)response
{
  responseCopy = response;
  v6 = FBLogProcessScene(responseCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [FBWorkspaceScene agent:sendMessage:withResponse:];
  }

  if (responseCopy)
  {
    v7 = [MEMORY[0x1E696ABC0] sceneMessageErrorWithCode:2];
    responseCopy[2](responseCopy, 0, v7);
  }
}

- (void)workspace:(void *)workspace sendUpdatedSettings:(void *)settings withDiff:(void *)diff transitionContext:(void *)context completion:
{
  v85 = *MEMORY[0x1E69E9840];
  v46 = a2;
  workspaceCopy = workspace;
  settingsCopy = settings;
  diffCopy = diff;
  contextCopy = context;
  if (self)
  {
    [*(self + 160) assertBarrierOnQueue];
    process = [v46 process];
    v43 = arc4random();
    v12 = FBSceneLifecycleStateForSettings(workspaceCopy);
    os_unfair_lock_lock((self + 144));
    v13 = [workspaceCopy copy];
    v14 = *(self + 64);
    *(self + 64) = v13;

    v15 = [FBWorkspaceScene _sceneActionForLifecycleFromState:*(self + 148) toState:v12];
    if (v15 == 1)
    {
      v15 = 1;
      if (([settingsCopy _isSignifcant] & 1) == 0)
      {
        specification = [*(self + 24) specification];
        v17 = [specification _isSignificantTransitionContext:diffCopy];

        if (!v17)
        {
          v15 = 0;
        }
      }
    }

    allowCPUThrottling = [diffCopy allowCPUThrottling];
    updateContext = [diffCopy updateContext];
    isClientLifecycleExternallyManaged = [updateContext isClientLifecycleExternallyManaged];

    if (v15 == 2)
    {
      _uiApplicationSceneTransitionContextShim = [diffCopy _uiApplicationSceneTransitionContextShim];
      [process execTime];
      [_uiApplicationSceneTransitionContextShim setExecTime:?];
    }

    v23 = *(self + 148);
    if (v23 != v12)
    {
      v24 = FBLogProcessScene(v21);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(self + 40);
        v26 = FBSceneLifecycleStateDescription(v12);
        *buf = 138543618;
        v74 = v25;
        v75 = 2114;
        v76 = v26;
        _os_log_impl(&dword_1A89DD000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] Scene lifecycle state did change: %{public}@", buf, 0x16u);
      }

      *(self + 148) = v12;
    }

    if (*(self + 156))
    {
      v27 = 0;
    }

    else
    {
      *(self + 156) = 1;
      v28 = MEMORY[0x1E699FB58];
      specification2 = [*(self + 24) specification];
      v27 = [v28 parametersForSpecification:specification2];

      [v27 setSettings:*(self + 64)];
      [v27 setClientSettings:*(self + 72)];
    }

    os_unfair_lock_unlock((self + 144));
    v71[0] = 0;
    v71[1] = v71;
    v71[2] = 0x3032000000;
    v71[3] = __Block_byref_object_copy__2;
    v71[4] = __Block_byref_object_dispose__2;
    v72 = 0;
    if (*(self + 48))
    {
      v30 = objc_alloc_init(MEMORY[0x1E699FBF8]);
      [v30 setSettingsDiff:settingsCopy];
      [v30 setTransitionContext:diffCopy];
      [v30 setSource:1];
      v67 = 0;
      v68 = &v67;
      v69 = 0x2020000000;
      v70 = 0;
      v31 = *(self + 48);
      if (v27)
      {
        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 3221225472;
        v66[2] = __88__FBWorkspaceScene_workspace_sendUpdatedSettings_withDiff_transitionContext_completion___block_invoke;
        v66[3] = &unk_1E783B178;
        v66[4] = &v67;
        [v31 scene:self didInitializeWithEvent:v30 completion:v66];
      }

      else
      {
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __88__FBWorkspaceScene_workspace_sendUpdatedSettings_withDiff_transitionContext_completion___block_invoke_2;
        v65[3] = &unk_1E783C530;
        v65[4] = &v67;
        v65[5] = v71;
        [v31 scene:self reviewEvent:v30 withCompletion:v65];
      }

      if ((v68[3] & 1) == 0)
      {
        v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"agent callout's completion was not called in scope : event=%@ agent=%@", v30, *(self + 48)];
        v37 = MEMORY[0x1E69E9C10];
        v38 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v39 = NSStringFromSelector(sel_workspace_sendUpdatedSettings_withDiff_transitionContext_completion_);
          v40 = objc_opt_class();
          v41 = NSStringFromClass(v40);
          *buf = 138544642;
          v74 = v39;
          v75 = 2114;
          v76 = v41;
          v77 = 2048;
          selfCopy = self;
          v79 = 2114;
          v80 = @"FBWorkspaceScene.m";
          v81 = 1024;
          v82 = 754;
          v83 = 2114;
          v84 = v36;
          _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v42 = v36;
        [v36 UTF8String];
        _bs_set_crash_log_message();
        [FBWorkspaceEventDispatcher registerTarget:];
      }

      _Block_object_dispose(&v67, 8);
    }

    [self _workspaceQueue_incrementInFlightUpdatesForAction:v15 allowThrottling:allowCPUThrottling externallyManaged:isClientLifecycleExternallyManaged];
    if (v23 != v12)
    {
      [(FBWorkspace *)v46 _workspaceSceneLifecycleStateChanged:self];
    }

    if (v27)
    {
      v32 = FBAnalyticsLogHangTracerEvent(process, 2);
    }

    else
    {
      v32 = 0;
    }

    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __88__FBWorkspaceScene_workspace_sendUpdatedSettings_withDiff_transitionContext_completion___block_invoke_102;
    v58[3] = &unk_1E783C558;
    v58[4] = self;
    v62 = v15;
    v63 = allowCPUThrottling;
    v64 = isClientLifecycleExternallyManaged;
    v59 = contextCopy;
    v61 = v71;
    v33 = v32;
    v60 = v33;
    v34 = MEMORY[0x1AC572E40](v58);
    v35 = v34;
    if (v15)
    {
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __88__FBWorkspaceScene_workspace_sendUpdatedSettings_withDiff_transitionContext_completion___block_invoke_2_104;
      v49[3] = &unk_1E783C5A8;
      v50 = process;
      selfCopy2 = self;
      v57 = v15;
      v52 = diffCopy;
      v56 = v43 % 0xFFFF;
      v55 = v35;
      v53 = v27;
      v54 = settingsCopy;
      [self _workspaceQueue_sendMessageToClient:v49];
    }

    else
    {
      (*(v34 + 16))(v34, 1, 0);
    }

    _Block_object_dispose(v71, 8);
  }
}

void __88__FBWorkspaceScene_workspace_sendUpdatedSettings_withDiff_transitionContext_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  v3 = MEMORY[0x1AC572E40](a2);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __88__FBWorkspaceScene_workspace_sendUpdatedSettings_withDiff_transitionContext_completion___block_invoke_102(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  [*(a1 + 32) _workspaceQueue_decrementInFlightUpdatesForAction:*(a1 + 64) allowThrottling:*(a1 + 65) externallyManaged:*(a1 + 66)];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v11);
  }

  v6 = *(*(*(a1 + 56) + 8) + 40);
  v7 = v11;
  if (v6)
  {
    if (a2)
    {
      (*(v6 + 16))(v6, 0, 0);
    }

    else
    {
      v8 = [MEMORY[0x1E696ABC0] sceneMessageErrorWithCode:2];
      (*(v6 + 16))(v6, 0, v8);
    }

    v7 = v11;
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v7);
  }

  return MEMORY[0x1EEE66BE0]();
}

void __88__FBWorkspaceScene_workspace_sendUpdatedSettings_withDiff_transitionContext_completion___block_invoke_2_104(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    if (v4 && (v5 = [v4 pid], v4 = getpid(), v5 != v4))
    {
      v4 = [*(a1 + 40) _workspaceQueue_createWatchdogForProcess:*(a1 + 32) sceneAction:*(a1 + 84) transitionContext:*(a1 + 48)];
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    v12 = *(a1 + 84) == 1 && v6 == 0;
    v13 = FBLogProcessScene(v4);
    if (os_log_type_enabled(v13, v12))
    {
      v14 = *(*(a1 + 40) + 40);
      v15 = _FBSceneActionToString(*(a1 + 84));
      v16 = *(a1 + 80);
      v17 = *(a1 + 32);
      v18 = [v6 _policyDesc];
      v19 = v18;
      *buf = 138544386;
      v20 = @"none";
      v36 = v14;
      if (v18)
      {
        v20 = v18;
      }

      v37 = 2114;
      v38 = v15;
      v39 = 1024;
      v40 = v16;
      v41 = 2048;
      v42 = v17;
      v43 = 2114;
      v44 = v20;
      _os_log_impl(&dword_1A89DD000, v13, v12, "[%{public}@] Sending scene action [%{public}@][%#04x] to process %p (watchdog: %{public}@)", buf, 0x30u);
    }

    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __88__FBWorkspaceScene_workspace_sendUpdatedSettings_withDiff_transitionContext_completion___block_invoke_108;
    v28 = &unk_1E783C580;
    v33 = v12;
    v29 = *(a1 + 40);
    v34 = *(a1 + 84);
    v32 = *(a1 + 80);
    v21 = v6;
    v30 = v21;
    v31 = *(a1 + 72);
    v22 = MEMORY[0x1AC572E40](&v25);
    v23 = *(a1 + 56);
    v24 = *(a1 + 40);
    if (v23)
    {
      [v24 _workspaceQueue_sendSceneCreateToClient:v3 parameters:v23 transitionContext:*(a1 + 48) completion:{v22, v25, v26, v27, v28, v29, v30}];
    }

    else
    {
      [v24 _workspaceQueue_sendSceneUpdateToClient:v3 settingsDiff:*(a1 + 64) transitionContext:*(a1 + 48) completion:{v22, v25, v26, v27, v28, v29, v30}];
    }
  }

  else
  {
    v7 = *(a1 + 72);
    v8 = [*(a1 + 32) exitContext];
    v9 = [v8 createError];
    v10 = FBWorkspaceSceneErrorCreate(1, @"Scene update failed.", @"Client process exited.", v9);
    (*(v7 + 16))(v7, 0, v10);
  }
}

void __88__FBWorkspaceScene_workspace_sendUpdatedSettings_withDiff_transitionContext_completion___block_invoke_108(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = FBLogProcessScene(v5);
  v7 = *(a1 + 60);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(*(a1 + 32) + 40);
    v9 = _FBSceneActionToString(*(a1 + 61));
    v10 = *(a1 + 56);
    v12 = 138544130;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    v16 = 1024;
    v17 = v10;
    v18 = 1024;
    v19 = a2;
    _os_log_impl(&dword_1A89DD000, v6, v7, "[%{public}@] Scene action [%{public}@][%#04x] completed with success: %d", &v12, 0x22u);
  }

  [*(a1 + 32) _workspaceQueue_cancelWatchdogTimer:*(a1 + 40)];
  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, a2, v5);
  }
}

void __79__FBWorkspaceScene_workspace_sendInvalidationWithTransitionContext_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [*(a1 + 32) _workspaceQueue_decrementInFlightUpdatesForAction:3 allowThrottling:*(a1 + 48) externallyManaged:0];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

void __79__FBWorkspaceScene_workspace_sendInvalidationWithTransitionContext_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = FBLogProcessScene(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 32) + 40);
      *buf = 138543362;
      v18 = v6;
      _os_log_impl(&dword_1A89DD000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending scene destroy.", buf, 0xCu);
    }

    v7 = *(a1 + 32);
    if (*(v7 + 48))
    {
      v8 = objc_alloc_init(MEMORY[0x1E699FBF8]);
      [v8 setTransitionContext:*(a1 + 40)];
      [v8 setSource:1];
      [*(a1 + 32) _workspaceQueue_invalidateSceneAgentWithEvent:v8];

      v7 = *(a1 + 32);
    }

    v9 = *(v7 + 32);
    v10 = *(a1 + 40);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __79__FBWorkspaceScene_workspace_sendInvalidationWithTransitionContext_completion___block_invoke_115;
    v15[3] = &unk_1E783BD20;
    v16 = *(a1 + 56);
    [v4 sceneID:v9 destroyWithTransitionContext:v10 completion:v15];
  }

  else
  {
    v11 = *(a1 + 56);
    v12 = [*(a1 + 48) exitContext];
    v13 = [v12 createError];
    v14 = FBWorkspaceSceneErrorCreate(1, @"Scene invalidation failed.", @"Client process exited.", v13);
    (*(v11 + 16))(v11, 0, v14);
  }
}

- (void)workspace:(void *)workspace sendActions:(uint64_t)actions toExtension:
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a2;
  workspaceCopy = workspace;
  if (self)
  {
    [*(self + 160) assertBarrierOnQueue];
    v9 = workspaceCopy;
    if (!actions && *(self + 48))
    {
      specification = [*(self + 24) specification];
      v11 = [objc_msgSend(specification "transitionContextClass")];

      [v11 setActions:v9];
      v12 = objc_alloc_init(MEMORY[0x1E699FBF8]);
      [v12 setTransitionContext:v11];
      [v12 setSource:1];
      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v29 = 0;
      v13 = *(self + 48);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __54__FBWorkspaceScene_workspace_sendActions_toExtension___block_invoke;
      v25[3] = &unk_1E783C620;
      v25[4] = self;
      v25[5] = &v26;
      [v13 scene:self reviewEvent:v12 withCompletion:v25];
      if ((v27[3] & 1) == 0)
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"agent callout's completion was not called in scope : event=%@ agent=%@", v12, *(self + 48)];
        v16 = MEMORY[0x1E69E9C10];
        v17 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v18 = NSStringFromSelector(sel_workspace_sendActions_toExtension_);
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          *buf = 138544642;
          v31 = v18;
          v32 = 2114;
          v33 = v20;
          v34 = 2048;
          selfCopy = self;
          v36 = 2114;
          v37 = @"FBWorkspaceScene.m";
          v38 = 1024;
          v39 = 876;
          v40 = 2114;
          v41 = v15;
          _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v21 = v15;
        [v15 UTF8String];
        _bs_set_crash_log_message();
        [FBWorkspaceEventDispatcher registerTarget:];
      }

      actions = [v11 actions];

      _Block_object_dispose(&v26, 8);
      v9 = actions;
    }

    if ([v9 count])
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __54__FBWorkspaceScene_workspace_sendActions_toExtension___block_invoke_121;
      v22[3] = &unk_1E783C670;
      v22[4] = self;
      v23 = v9;
      actionsCopy = actions;
      [self _workspaceQueue_sendMessageToClient:v22];
    }
  }
}

void __54__FBWorkspaceScene_workspace_sendActions_toExtension___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  if (v3)
  {
    v5 = *(*(a1 + 32) + 160);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__FBWorkspaceScene_workspace_sendActions_toExtension___block_invoke_2;
    v6[3] = &unk_1E783B9B8;
    v7 = v3;
    [v5 performAsync:v6];
  }
}

void __54__FBWorkspaceScene_workspace_sendActions_toExtension___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] sceneMessageErrorWithCode:1];
  (*(v1 + 16))(v1, 0, v2);
}

void __54__FBWorkspaceScene_workspace_sendActions_toExtension___block_invoke_121(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) _workspaceQueue_incrementInFlightUpdatesForAction:1 allowThrottling:0 externallyManaged:0];
    v4 = objc_opt_new();
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __54__FBWorkspaceScene_workspace_sendActions_toExtension___block_invoke_2_122;
    v23[3] = &unk_1E783B240;
    v5 = v4;
    v6 = *(a1 + 32);
    v24 = v5;
    v25 = v6;
    v7 = [v23 copy];
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 32) + 32);
    v10 = *(a1 + 48);
    if (v10)
    {
      v11 = NSStringFromClass(*(a1 + 48));
    }

    else
    {
      v11 = 0;
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __54__FBWorkspaceScene_workspace_sendActions_toExtension___block_invoke_3;
    v21[3] = &unk_1E783BD20;
    v12 = v7;
    v22 = v12;
    [v3 sceneID:v9 sendActions:v8 toExtension:v11 completion:v21];
    if (v10)
    {
    }

    v13 = *(a1 + 32);
    v14 = *(v13 + 160);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __54__FBWorkspaceScene_workspace_sendActions_toExtension___block_invoke_4;
    v17[3] = &unk_1E783C648;
    v18 = v5;
    v19 = v13;
    v20 = v12;
    v15 = v12;
    v16 = v5;
    [v14 performAfter:v17 withBlock:5.0];
  }
}

void *__54__FBWorkspaceScene_workspace_sendActions_toExtension___block_invoke_2_122(uint64_t a1)
{
  result = [*(a1 + 32) signal];
  if (result)
  {
    v3 = *(a1 + 40);

    return [v3 _workspaceQueue_decrementInFlightUpdatesForAction:1 allowThrottling:0 externallyManaged:0];
  }

  return result;
}

uint64_t __54__FBWorkspaceScene_workspace_sendActions_toExtension___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) hasBeenSignalled];
  if ((v2 & 1) == 0)
  {
    v3 = FBLogProcessScene(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __54__FBWorkspaceScene_workspace_sendActions_toExtension___block_invoke_4_cold_1();
    }
  }

  return (*(*(a1 + 48) + 16))();
}

void __55__FBWorkspaceScene_workspace_sendInvocation_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) _workspaceQueue_incrementInFlightUpdatesForAction:1 allowThrottling:0 externallyManaged:0];
    v4 = objc_opt_new();
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __55__FBWorkspaceScene_workspace_sendInvocation_withReply___block_invoke_2;
    v23[3] = &unk_1E783B240;
    v5 = v4;
    v6 = *(a1 + 32);
    v24 = v5;
    v25 = v6;
    v7 = [v23 copy];
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 32) + 32);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __55__FBWorkspaceScene_workspace_sendInvocation_withReply___block_invoke_3;
    v20[3] = &unk_1E783C698;
    v10 = v7;
    v21 = v10;
    v22 = *(a1 + 48);
    [v3 sceneID:v9 handleInvocation:v8 completion:v20];
    v11 = *(a1 + 32);
    v12 = *(v11 + 160);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __55__FBWorkspaceScene_workspace_sendInvocation_withReply___block_invoke_4;
    v16[3] = &unk_1E783C648;
    v17 = v5;
    v18 = v11;
    v19 = v10;
    v13 = v10;
    v14 = v5;
    [v12 performAfter:v16 withBlock:5.0];
  }

  else
  {
    v15 = *(a1 + 48);
    v14 = [MEMORY[0x1E696ABC0] sceneMessageErrorWithCode:2];
    (*(v15 + 16))(v15, 0, v14);
  }
}

void *__55__FBWorkspaceScene_workspace_sendInvocation_withReply___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) signal];
  if (result)
  {
    v3 = *(a1 + 40);

    return [v3 _workspaceQueue_decrementInFlightUpdatesForAction:1 allowThrottling:0 externallyManaged:0];
  }

  return result;
}

void __55__FBWorkspaceScene_workspace_sendInvocation_withReply___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a3;
  v8 = a2;
  v6(v5);
  (*(*(a1 + 40) + 16))();
}

uint64_t __55__FBWorkspaceScene_workspace_sendInvocation_withReply___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) hasBeenSignalled];
  if ((v2 & 1) == 0)
  {
    v3 = FBLogProcessScene(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __55__FBWorkspaceScene_workspace_sendInvocation_withReply___block_invoke_4_cold_1();
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)workspace:(void *)workspace handleUpdatedClientSettings:(void *)settings transitionContext:(void *)context fromConnection:
{
  v49 = *MEMORY[0x1E69E9840];
  v9 = a2;
  workspaceCopy = workspace;
  settingsCopy = settings;
  contextCopy = context;
  if (self)
  {
    [*(self + 160) assertBarrierOnQueue];
    os_unfair_lock_lock((self + 144));
    v13 = *(self + 8);
    if (v13 == contextCopy)
    {
      v18 = *(self + 72);
      v19 = v18;
      if (workspaceCopy)
      {
        v20 = FBLogProcessScene(v18);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = *(self + 32);
          *buf = 138543618;
          v38 = v21;
          v39 = 2112;
          v40 = workspaceCopy;
          _os_log_impl(&dword_1A89DD000, v20, OS_LOG_TYPE_INFO, "[%{public}@] Client settings updated with diff: %@", buf, 0x16u);
        }

        v22 = [workspaceCopy settingsByApplyingToMutableCopyOfSettings:v19];
        v14 = [v22 copy];

        objc_storeStrong((self + 72), v14);
      }

      else
      {
        v14 = v18;
      }

      os_unfair_lock_unlock((self + 144));
      if (*(self + 48))
      {
        v23 = objc_alloc_init(MEMORY[0x1E699FBF8]);
        [v23 setClientSettingsDiff:workspaceCopy];
        [v23 setTransitionContext:settingsCopy];
        [v23 setSource:2];
        v33 = 0;
        v34 = &v33;
        v35 = 0x2020000000;
        v36 = 0;
        v24 = *(self + 48);
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __91__FBWorkspaceScene_workspace_handleUpdatedClientSettings_transitionContext_fromConnection___block_invoke;
        v32[3] = &unk_1E783C620;
        v32[4] = self;
        v32[5] = &v33;
        [v24 scene:self reviewEvent:v23 withCompletion:v32];
        if ((v34[3] & 1) == 0)
        {
          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"agent callout's completion was not called in scope : event=%@ agent=%@", v23, *(self + 48)];
          v26 = MEMORY[0x1E69E9C10];
          v27 = MEMORY[0x1E69E9C10];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v28 = NSStringFromSelector(sel_workspace_handleUpdatedClientSettings_transitionContext_fromConnection_);
            v29 = objc_opt_class();
            v30 = NSStringFromClass(v29);
            *buf = 138544642;
            v38 = v28;
            v39 = 2114;
            v40 = v30;
            v41 = 2048;
            selfCopy = self;
            v43 = 2114;
            v44 = @"FBWorkspaceScene.m";
            v45 = 1024;
            v46 = 968;
            v47 = 2114;
            v48 = v25;
            _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v31 = v25;
          [v25 UTF8String];
          _bs_set_crash_log_message();
          [FBWorkspaceEventDispatcher registerTarget:];
        }

        _Block_object_dispose(&v33, 8);
      }

      WeakRetained = objc_loadWeakRetained((self + 16));
      [WeakRetained clientToken:self didUpdateClientSettings:v14 withDiff:workspaceCopy transitionContext:settingsCopy];
    }

    else
    {
      v14 = v13;
      os_unfair_lock_unlock((self + 144));
      WeakRetained = FBLogProcessScene(v15);
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
      {
        v17 = *(self + 32);
        *buf = 138544130;
        v38 = v17;
        v39 = 2112;
        v40 = workspaceCopy;
        v41 = 2112;
        selfCopy = contextCopy;
        v43 = 2112;
        v44 = v14;
        _os_log_error_impl(&dword_1A89DD000, WeakRetained, OS_LOG_TYPE_ERROR, "[%{public}@] Client settings update aborted due to connection mismatch : diff=%@ connection=%@ expected=%@", buf, 0x2Au);
      }
    }
  }
}

void __91__FBWorkspaceScene_workspace_handleUpdatedClientSettings_transitionContext_fromConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  if (v3)
  {
    v5 = *(*(a1 + 32) + 160);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __91__FBWorkspaceScene_workspace_handleUpdatedClientSettings_transitionContext_fromConnection___block_invoke_2;
    v6[3] = &unk_1E783B9B8;
    v7 = v3;
    [v5 performAsync:v6];
  }
}

- (void)workspace:(void *)workspace handleActions:(uint64_t)actions forExtension:(void *)extension fromConnection:
{
  v45 = *MEMORY[0x1E69E9840];
  v9 = a2;
  workspaceCopy = workspace;
  extensionCopy = extension;
  if (self)
  {
    [*(self + 160) assertBarrierOnQueue];
    os_unfair_lock_lock((self + 144));
    v12 = *(self + 8);
    if (v12 != extensionCopy)
    {
      WeakRetained = v12;
      os_unfair_lock_unlock((self + 144));
      v15 = FBLogProcessScene(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v24 = *(self + 32);
        *buf = 138544130;
        v38 = v24;
        v39 = 1024;
        *v40 = [workspaceCopy count];
        *&v40[4] = 2112;
        *&v40[6] = extensionCopy;
        *&v40[14] = 2112;
        *&v40[16] = WeakRetained;
        _os_log_error_impl(&dword_1A89DD000, v15, OS_LOG_TYPE_ERROR, "[%{public}@] Aborted %u action(s) due to connection mismatch : connection=%@ expected=%@", buf, 0x26u);
      }

      goto LABEL_14;
    }

    os_unfair_lock_unlock((self + 144));
    v17 = FBLogProcessScene(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *(self + 32);
      *buf = 138543618;
      v38 = v18;
      v39 = 1024;
      *v40 = [workspaceCopy count];
      _os_log_impl(&dword_1A89DD000, v17, OS_LOG_TYPE_INFO, "[%{public}@] Received %u action(s)", buf, 0x12u);
    }

    if (!actions && *(self + 48))
    {
      specification = [*(self + 24) specification];
      v20 = [objc_msgSend(specification "transitionContextClass")];

      [v20 setActions:workspaceCopy];
      v21 = objc_alloc_init(MEMORY[0x1E699FBF8]);
      [v21 setTransitionContext:v20];
      [v21 setSource:2];
      v33 = 0;
      v34 = &v33;
      v35 = 0x2020000000;
      v36 = 0;
      v22 = *(self + 48);
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __72__FBWorkspaceScene_workspace_handleActions_forExtension_fromConnection___block_invoke;
      v32[3] = &unk_1E783C620;
      v32[4] = self;
      v32[5] = &v33;
      [v22 scene:self reviewEvent:v21 withCompletion:v32];
      if ((v34[3] & 1) == 0)
      {
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"agent callout's completion was not called in scope : event=%@ agent=%@", v21, *(self + 48)];
        v26 = MEMORY[0x1E69E9C10];
        v27 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v28 = NSStringFromSelector(sel_workspace_handleActions_forExtension_fromConnection_);
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          *buf = 138544642;
          v38 = v28;
          v39 = 2114;
          *v40 = v30;
          *&v40[8] = 2048;
          *&v40[10] = self;
          *&v40[18] = 2114;
          *&v40[20] = @"FBWorkspaceScene.m";
          v41 = 1024;
          v42 = 1006;
          v43 = 2114;
          v44 = v25;
          _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v31 = v25;
        [v25 UTF8String];
        _bs_set_crash_log_message();
        [FBWorkspaceEventDispatcher registerTarget:];
      }

      actions = [v20 actions];

      _Block_object_dispose(&v33, 8);
      workspaceCopy = actions;
    }

    if ([workspaceCopy count])
    {
      WeakRetained = objc_loadWeakRetained((self + 16));
      [WeakRetained clientToken:self didReceiveActions:workspaceCopy forExtension:actions];
LABEL_14:
    }
  }
}

void __72__FBWorkspaceScene_workspace_handleActions_forExtension_fromConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  if (v3)
  {
    v5 = *(*(a1 + 32) + 160);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __72__FBWorkspaceScene_workspace_handleActions_forExtension_fromConnection___block_invoke_2;
    v6[3] = &unk_1E783B9B8;
    v7 = v3;
    [v5 performAsync:v6];
  }
}

- (void)workspace:(void *)workspace sendInvalidationWithTransitionContext:(void *)context completion:
{
  workspaceCopy = workspace;
  contextCopy = context;
  if (self)
  {
    v9 = self[20];
    v10 = a2;
    [v9 assertBarrierOnQueue];
    allowCPUThrottling = [workspaceCopy allowCPUThrottling];
    LOBYTE(v9) = allowCPUThrottling;
    [self _workspaceQueue_incrementInFlightUpdatesForAction:3 allowThrottling:allowCPUThrottling externallyManaged:0];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __79__FBWorkspaceScene_workspace_sendInvalidationWithTransitionContext_completion___block_invoke;
    v24[3] = &unk_1E783C5D0;
    v24[4] = self;
    v26 = v9;
    v25 = contextCopy;
    v12 = MEMORY[0x1AC572E40](v24);
    process = [v10 process];

    OUTLINED_FUNCTION_2_3();
    v17 = 3221225472;
    v18 = __79__FBWorkspaceScene_workspace_sendInvalidationWithTransitionContext_completion___block_invoke_2;
    v19 = &unk_1E783C5F8;
    selfCopy = self;
    v22 = process;
    v23 = v12;
    v21 = workspaceCopy;
    v14 = process;
    v15 = v12;
    [self _workspaceQueue_sendMessageToClient:v16];
  }
}

- (void)workspace:(void *)workspace sendInvocation:(void *)invocation withReply:
{
  workspaceCopy = workspace;
  invocationCopy = invocation;
  if (self)
  {
    OUTLINED_FUNCTION_2_3();
    v9 = 3221225472;
    v10 = __55__FBWorkspaceScene_workspace_sendInvocation_withReply___block_invoke;
    v11 = &unk_1E783C6C0;
    selfCopy = self;
    v13 = workspaceCopy;
    v14 = invocationCopy;
    [self _workspaceQueue_sendMessageToClient:v8];
  }
}

- (void)workspace:(void *)workspace handleInvocation:(void *)invocation fromConnection:(void *)connection withReply:
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = a2;
  workspaceCopy = workspace;
  invocationCopy = invocation;
  connectionCopy = connection;
  if (self)
  {
    [*(self + 160) assertBarrierOnQueue];
    os_unfair_lock_lock((self + 144));
    v13 = *(self + 8);
    if (v13 == invocationCopy)
    {
      os_unfair_lock_unlock((self + 144));
      WeakRetained = objc_loadWeakRetained((self + 16));
      [WeakRetained clientToken:self handleInvocation:workspaceCopy withReply:connectionCopy];
    }

    else
    {
      WeakRetained = v13;
      os_unfair_lock_unlock((self + 144));
      v16 = FBLogProcessScene(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_5_1();
        v18 = 2112;
        v19 = invocationCopy;
        v20 = 2112;
        v21 = WeakRetained;
        _os_log_error_impl(&dword_1A89DD000, v16, OS_LOG_TYPE_ERROR, "[%{public}@] Aborted invocation due to connection mismatch : connection=%@ expected=%@", v17, 0x20u);
      }
    }
  }
}

- (void)initWithConnection:(char *)a1 host:settings:clientSettings:fromRemnant:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[definition isValid]"];
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

- (void)initWithConnection:(char *)a1 host:settings:clientSettings:fromRemnant:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"connection"];
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

- (void)_enqueueSceneCreateCompletionBlock:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"block"];
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

- (void)_enqueueSceneCreateCompletionBlock:(uint64_t)a1 .cold.2(uint64_t a1, void (**a2)(void, void, void))
{
  os_unfair_lock_lock((a1 + 144));
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = [a2 copy];
    v6 = MEMORY[0x1AC572E40]();
    [v4 addObject:v6];

    os_unfair_lock_unlock((a1 + 144));
  }

  else
  {
    v7 = *(a1 + 158);
    os_unfair_lock_unlock((a1 + 144));
    if (v7)
    {
      v9 = FBWorkspaceSceneErrorCreate(2, @"Scene creation failed", @"scene was invalidated", 0);
      (a2)[2](a2, v7 ^ 1u, v9);
    }

    else
    {
      v8 = a2[2];

      v8(a2, v7 ^ 1u, 0);
    }
  }
}

- (void)_workspaceQueue_sendSceneCreateToClient:(char *)a1 parameters:transitionContext:completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"client != nil"];
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

void __100__FBWorkspaceScene__workspaceQueue_sendSceneCreateToClient_parameters_transitionContext_completion___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *(*a1 + 40);
  v5 = [a2 succinctDescription];
  v6 = 138543618;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_1A89DD000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] Scene creation failed: %{public}@", &v6, 0x16u);
}

- (void)_workspaceQueue_sendSceneUpdateToClient:(char *)a1 settingsDiff:transitionContext:completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"client != nil"];
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

- (void)_workspaceQueue_decrementInFlightUpdatesForAction:(char *)a1 allowThrottling:externallyManaged:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_queue_inFlightUpdateDisallowsThrottling > 0"];
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

- (void)_workspaceQueue_decrementInFlightUpdatesForAction:(char *)a1 allowThrottling:externallyManaged:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_queue_inFlightExternallyManagedEvents > 0"];
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

- (void)_workspaceQueue_decrementInFlightUpdatesForAction:(char *)a1 allowThrottling:externallyManaged:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_queue_inFlightUpdateAllowsThrottling > 0"];
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

- (void)_workspaceQueue_decrementInFlightUpdatesForAction:(char *)a1 allowThrottling:externallyManaged:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_queue_inFlightUpdateEvents > 0"];
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

- (void)agent:registerMessageHandler:.cold.1()
{
  OUTLINED_FUNCTION_6_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_1(&dword_1A89DD000, v0, v1, "[%{public}@] Agent message handlers are no longer supported.", v2, v3, v4, v5);
}

- (void)agent:sendMessage:withResponse:.cold.1()
{
  OUTLINED_FUNCTION_6_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_1(&dword_1A89DD000, v0, v1, "[%{public}@] Agent messages are no longer supported.", v2, v3, v4, v5);
}

void __54__FBWorkspaceScene_workspace_sendActions_toExtension___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_6_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_1(&dword_1A89DD000, v0, v1, "[%{public}@] Send action timed out.", v2, v3, v4, v5);
}

void __55__FBWorkspaceScene_workspace_sendInvocation_withReply___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_6_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_1(&dword_1A89DD000, v0, v1, "[%{public}@] Send invocations timed out.", v2, v3, v4, v5);
}

@end