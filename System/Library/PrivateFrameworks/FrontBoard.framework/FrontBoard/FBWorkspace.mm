@interface FBWorkspace
- (BSAuditToken)auditToken;
- (FBProcess)process;
- (FBWorkspace)init;
- (FBWorkspaceDelegate)delegate;
- (NSString)description;
- (id)_acquireAssertionForReason:(uint64_t)reason withState:;
- (id)_domain;
- (id)_incomingEndpointPromise;
- (id)_initWithDispatcher:(void *)dispatcher process:;
- (id)_sceneForHost:(id)host;
- (id)_sceneForIdentity:(id)identity;
- (id)_synchronizer;
- (id)_unregisterSceneForHost:(id)host;
- (id)registerHost:(id)host settings:(id)settings initialClientSettings:(id)clientSettings fromRemnant:(id)remnant error:(id *)error;
- (uint64_t)state;
- (void)_assertLocked;
- (void)_dropLaunchAssertion;
- (void)_enableLegacyRequests:(uint64_t)requests;
- (void)_handleSceneRequest:(id)request;
- (void)_lock;
- (void)_noteProcessBootstrapped:(void *)bootstrapped withHandle:(void *)handle assertion:(void *)assertion outgoingEndpointPromise:;
- (void)_noteProcessDidInvalidate:(uint64_t)invalidate;
- (void)_processCallOutQueue_requestScene:(id)scene;
- (void)_queue_unverifiedOutgoingConnection:(void *)connection didError:;
- (void)_resolveSceneLifecycleStateAndInterruptionPolicy;
- (void)_setIncomingConnection:(uint64_t)connection;
- (void)_terminateGracefully:(void *)gracefully withTransitionContext:;
- (void)_terminateWithReason:(id)reason;
- (void)_unlock;
- (void)_updateProcessAssertionState;
- (void)_workspaceSceneLifecycleStateChanged:(void *)changed;
- (void)assertion:(id)assertion didInvalidateWithError:(id)error;
- (void)assertionWillInvalidate:(id)invalidate;
- (void)createSceneWithOptions:(id)options completion:(id)completion;
- (void)dealloc;
- (void)handshakeWithRemnants:(id)remnants;
- (void)host:(id)host didInvalidateWithTransitionContext:(id)context completion:(id)completion;
- (void)host:(id)host didReceiveActions:(id)actions forExtension:(Class)extension;
- (void)host:(id)host didUpdateSettings:(id)settings withDiff:(id)diff transitionContext:(id)context completion:(id)completion;
- (void)host:(id)host sendInvocation:(id)invocation withReply:(id)reply;
- (void)requestSceneWithOptions:(id)options completion:(id)completion;
- (void)sceneID:(id)d didReceiveActions:(id)actions forExtension:(id)extension;
- (void)sceneID:(id)d didUpdateClientSettingsWithDiff:(id)diff transitionContext:(id)context completion:(id)completion;
- (void)sceneID:(id)d handleInvocation:(id)invocation completion:(id)completion;
- (void)sceneID:(id)d invalidateWithContext:(id)context clientError:(id)error;
- (void)sceneID:(id)d sendMessage:(id)message withResponse:(id)response;
- (void)sendActions:(id)actions;
- (void)setDelegate:(id)delegate;
- (void)workspaceID:(id)d sendActions:(id)actions completion:(id)completion;
@end

@implementation FBWorkspace

- (NSString)description
{
  WeakRetained = objc_loadWeakRetained(&self->_weak_process);
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  succinctDescription = [WeakRetained succinctDescription];
  v6 = [v4 appendObject:succinctDescription withName:0];

  build = [v4 build];

  return build;
}

- (id)_domain
{
  if (self)
  {
    _dispatcher = [(FBSceneSynchronizer *)*(self + 24) _dispatcher];
    domain = [(FBWorkspaceEventDispatcher *)_dispatcher domain];
  }

  else
  {
    domain = 0;
  }

  return domain;
}

- (void)_updateProcessAssertionState
{
  logProem = [(FBProcess *)self logProem];
  v4 = [a2 descriptionWithMultilinePrefix:0];
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (id)_synchronizer
{
  if (self)
  {
    self = self[3];
    v1 = vars8;
  }

  return self;
}

- (void)_assertLocked
{
  if (self)
  {
    os_unfair_lock_assert_owner(self + 34);
  }
}

- (void)_resolveSceneLifecycleStateAndInterruptionPolicy
{
  logProem = [(FBProcess *)self logProem];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_lock
{
  if (self)
  {
    os_unfair_lock_lock(self + 34);
  }
}

- (void)_unlock
{
  if (self)
  {
    os_unfair_lock_unlock(self + 34);
  }
}

- (FBProcess)process
{
  WeakRetained = objc_loadWeakRetained(&self->_weak_process);

  return WeakRetained;
}

- (id)_incomingEndpointPromise
{
  if (self)
  {
    _dispatcher = [(FBSceneSynchronizer *)*(self + 24) _dispatcher];
    domain = [(FBWorkspaceEventDispatcher *)_dispatcher domain];
    endpointPromise = [(FBWorkspaceDomain *)domain endpointPromise];
  }

  else
  {
    endpointPromise = 0;
  }

  return endpointPromise;
}

- (void)_dropLaunchAssertion
{
  v10 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_connectAssertion;
  lock_connectAssertion = self->_lock_connectAssertion;
  self->_lock_connectAssertion = 0;

  os_unfair_lock_unlock(&self->_lock);
  [(FBWorkspace *)self _updateProcessAssertionState];
  if ([(RBSAssertion *)v3 isValid])
  {
    WeakRetained = objc_loadWeakRetained(&self->_weak_process);
    v6 = FBLogProcessWorkspace(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      logProem = [(FBProcess *)WeakRetained logProem];
      v8 = 138543362;
      v9 = logProem;
      _os_log_impl(&dword_1A89DD000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Dropping launch assertion.", &v8, 0xCu);
    }

    [(RBSAssertion *)v3 invalidate];
    [WeakRetained _noteAssertionStateDidChange];
  }
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"isInvalidated == YES"];
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

- (uint64_t)state
{
  if (!self)
  {
    return 0;
  }

  os_unfair_lock_lock((self + 136));
  v2 = 0;
  v3 = *(self + 104);
  if (v3)
  {
    v2 = FBWorkspaceStateCombine(0, [v3 fb_workspaceState]);
  }

  v4 = *(self + 112);
  if (v4)
  {
    v2 = FBWorkspaceStateCombine(v2, [v4 fb_workspaceState]);
  }

  os_unfair_lock_unlock((self + 136));
  return v2;
}

- (FBWorkspace)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on FBWorkspace"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"FBWorkspace.m";
    v17 = 1024;
    v18 = 89;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)_initWithDispatcher:(void *)dispatcher process:
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a2;
  dispatcherCopy = dispatcher;
  if (self)
  {
    if (!v5)
    {
      [FBWorkspace _initWithDispatcher:? process:?];
    }

    if (!dispatcherCopy)
    {
      [FBWorkspace _initWithDispatcher:? process:?];
    }

    v43.receiver = self;
    v43.super_class = FBWorkspace;
    v7 = objc_msgSendSuper2(&v43, sel_init);
    self = v7;
    if (v7)
    {
      v7[34] = 0;
      v8 = [dispatcherCopy pid];
      v9 = MEMORY[0x1E696AEC0];
      logProem = [(FBProcess *)dispatcherCopy logProem];
      v11 = logProem;
      if (v8 < 1)
      {
        uUID = [MEMORY[0x1E696AFB0] UUID];
        uUIDString = [uUID UUIDString];
        v12 = [v9 stringWithFormat:@"FBProcess:%@-%@", v11, uUIDString];
      }

      else
      {
        v12 = [v9 stringWithFormat:@"FBProcess:%@", logProem];
      }

      v15 = MEMORY[0x1E698F4D0];
      v16 = [MEMORY[0x1E698F500] serviceWithClass:33];
      v17 = [v15 queueWithName:v12 serviceQuality:v16];

      v18 = [[FBSceneSynchronizer alloc] _initWithIdentifier:v12 workspaceQueue:v17 dispatcher:v5];
      v19 = *(self + 3);
      *(self + 3) = v18;

      objc_storeWeak(self + 2, dispatcherCopy);
      rbsHandle = [dispatcherCopy rbsHandle];
      if (rbsHandle)
      {
        [(FBSceneSynchronizer *)*(self + 3) _setProcessHandle:rbsHandle];
        v22 = FBLogProcessWorkspace(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          logProem2 = [(FBProcess *)dispatcherCopy logProem];
          *buf = 138543362;
          selfCopy2 = logProem2;
          _os_log_impl(&dword_1A89DD000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ Registering event dispatcher at init", buf, 0xCu);
        }

        _dispatcher = [(FBSceneSynchronizer *)*(self + 3) _dispatcher];
        v25 = [(FBWorkspaceEventDispatcher *)_dispatcher registerSourceWithProcessHandle:rbsHandle];
        v26 = *(self + 5);
        *(self + 5) = v25;
      }

      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v28 = *(self + 7);
      *(self + 7) = v27;

      v29 = MEMORY[0x1E698E658];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __43__FBWorkspace__initWithDispatcher_process___block_invoke;
      v41[3] = &unk_1E783C0B0;
      self = self;
      selfCopy = self;
      v30 = [v29 assertionWithIdentifier:v12 stateDidChangeHandler:v41];
      v31 = *(self + 12);
      *(self + 12) = v30;

      *(self + 140) = 1;
      if ([dispatcherCopy isExtensionProcess])
      {
        extensionInfo = [dispatcherCopy extensionInfo];
        extensionIdentifier = [extensionInfo extensionIdentifier];

        if (!extensionIdentifier)
        {
          v34 = +[FBPreferences sharedInstance];
          disableXPCServicesEndpointHack = [v34 disableXPCServicesEndpointHack];

          if ((disableXPCServicesEndpointHack & 1) == 0)
          {
            *(self + 140) = 0;
          }
        }
      }

      v36 = [[FBWorkspaceIncomingConnection alloc] initWithWorkspace:self];
      v37 = *(self + 4);
      *(self + 4) = v36;

      v39 = FBLogProcessWorkspace(v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&dword_1A89DD000, v39, OS_LOG_TYPE_DEFAULT, "Created %{public}@", buf, 0xCu);
      }
    }
  }

  return self;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_lock);
  objc_storeWeak(&self->_weak_delegate, delegateCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (FBWorkspaceDelegate)delegate
{
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_weak_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (BSAuditToken)auditToken
{
  WeakRetained = objc_loadWeakRetained(&self->_weak_process);
  v3 = objc_msgSend_auditToken(WeakRetained);

  return v3;
}

- (void)sendActions:(id)actions
{
  v32 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  if ([actionsCopy count])
  {
    objc_opt_class();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = actionsCopy;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        v10 = 0;
        do
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v23 + 1) + 8 * v10);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [(FBWorkspace *)v11 sendActions:a2];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v8);
    }

    os_unfair_lock_lock(&self->_lock);
    if (self && (os_unfair_lock_assert_owner(&self->_lock), v12 = 1, atomic_compare_exchange_strong_explicit(&self->_invalidated, &v12, v12, memory_order_relaxed, memory_order_relaxed), v12 == 1))
    {
      _workspaceQueue = [(FBSceneSynchronizer *)&self->_synchronizer->super.isa _workspaceQueue];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __27__FBWorkspace_sendActions___block_invoke;
      v21[3] = &unk_1E783B580;
      v22 = v6;
      [_workspaceQueue performAsync:v21];

      WeakRetained = v22;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_weak_process);
      v15 = FBLogProcessWorkspace(WeakRetained);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        logProem = [(FBProcess *)WeakRetained logProem];
        fbs_singleLineDescriptionOfBSActions = [v6 fbs_singleLineDescriptionOfBSActions];
        *buf = 138543618;
        v28 = logProem;
        v29 = 2114;
        v30 = fbs_singleLineDescriptionOfBSActions;
        _os_log_impl(&dword_1A89DD000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending action(s): %{public}@", buf, 0x16u);
      }

      lock_incomingConnection = self->_lock_incomingConnection;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __27__FBWorkspace_sendActions___block_invoke_41;
      v19[3] = &unk_1E783C0D8;
      v19[4] = self;
      v20 = v6;
      [(FBWorkspaceConnection *)lock_incomingConnection workspaceLock_enqueueConnectBlock:v19];
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

void __27__FBWorkspace_sendActions___block_invoke(uint64_t a1)
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

        [*(*(&v6 + 1) + 8 * v5++) invalidate];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void __27__FBWorkspace_sendActions___block_invoke_41(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v5 = [WeakRetained target];

  if (v3 && v5)
  {
    v11 = FBWorkspaceStateCreate(1, 3, 40);
    v12 = [(FBWorkspace *)*(a1 + 32) _acquireAssertionForReason:v11 withState:?];
    v13 = objc_opt_new();
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __27__FBWorkspace_sendActions___block_invoke_2;
    v25[3] = &unk_1E783B240;
    v26 = v13;
    v27 = v12;
    v14 = v12;
    v6 = v13;
    v15 = MEMORY[0x1AC572E40](v25);
    v16 = *(a1 + 40);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __27__FBWorkspace_sendActions___block_invoke_3;
    v23[3] = &unk_1E783BD20;
    v24 = v15;
    v17 = v15;
    [v3 sendActions:v16 completion:v23];
    v18 = [(FBSceneSynchronizer *)*(*(a1 + 32) + 24) _workspaceQueue];
    [v18 performAfter:v17 withBlock:5.0];
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = *(a1 + 40);
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        v10 = 0;
        do
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v19 + 1) + 8 * v10++) invalidate];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v19 objects:v28 count:16];
      }

      while (v8);
    }
  }
}

void *__27__FBWorkspace_sendActions___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) signal];
  if (result)
  {
    v3 = *(a1 + 40);

    return [v3 invalidate];
  }

  return result;
}

- (id)_sceneForHost:(id)host
{
  hostCopy = host;
  definition = [hostCopy definition];
  identity = [definition identity];
  v7 = [(FBWorkspace *)self _sceneForIdentity:identity];

  host = [v7 host];

  if (host != hostCopy)
  {

    v7 = 0;
  }

  return v7;
}

- (id)_sceneForIdentity:(id)identity
{
  identityCopy = identity;
  NSClassFromString(&cfstr_Fbssceneidenti.isa);
  if (!identityCopy)
  {
    [FBWorkspace _sceneForIdentity:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBWorkspace _sceneForIdentity:a2];
  }

  os_unfair_lock_lock(&self->_lock);
  v6 = [(NSMutableDictionary *)self->_lock_identityToSceneMap objectForKey:identityCopy];
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)_unregisterSceneForHost:(id)host
{
  v20 = *MEMORY[0x1E69E9840];
  hostCopy = host;
  definition = [hostCopy definition];
  identity = [definition identity];

  v8 = identity;
  NSClassFromString(&cfstr_Fbssceneidenti.isa);
  if (!v8)
  {
    [FBWorkspace _unregisterSceneForHost:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBWorkspace _unregisterSceneForHost:a2];
  }

  os_unfair_lock_lock(&self->_lock);
  v9 = [(NSMutableDictionary *)self->_lock_identityToSceneMap objectForKey:v8];
  v10 = v9;
  if (v9 && ([v9 host], v11 = objc_claimAutoreleasedReturnValue(), v11, v11 == hostCopy))
  {
    WeakRetained = objc_loadWeakRetained(&self->_weak_process);
    v13 = FBLogProcessWorkspace(WeakRetained);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      logProem = [(FBProcess *)WeakRetained logProem];
      v16 = 138543618;
      v17 = logProem;
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&dword_1A89DD000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Unregistering scene: %{public}@", &v16, 0x16u);
    }

    [(NSMutableDictionary *)self->_lock_identityToSceneMap removeObjectForKey:v8];
  }

  else
  {

    v10 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (void)_terminateWithReason:(id)reason
{
  reasonCopy = reason;
  os_unfair_lock_assert_not_owner(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_weak_process);
  if (WeakRetained)
  {
    v5 = [MEMORY[0x1E699FBB0] requestForProcess:WeakRetained withLabel:@"FBWorkspace misbehaving process"];
    [v5 setReportType:1];
    [v5 setExceptionCode:1269680657];
    [v5 setExplanation:reasonCopy];
    [v5 execute];
  }
}

- (void)_handleSceneRequest:(id)request
{
  requestCopy = request;
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    os_unfair_lock_assert_owner(&self->_lock);
    v6 = 1;
    atomic_compare_exchange_strong_explicit(&self->_invalidated, &v6, v6, memory_order_relaxed, memory_order_relaxed);
    if (v6 == 1)
    {
      v7 = FBLogProcessWorkspace(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [FBWorkspace _handleSceneRequest:];
      }

LABEL_13:

      targetIdentifier = FBSWorkspaceErrorCreate();
      [requestCopy invalidateWithError:targetIdentifier];
      goto LABEL_14;
    }
  }

  if (!self->_lock_eventDispatcherSource)
  {
    v7 = FBLogProcessWorkspace(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [FBWorkspace _handleSceneRequest:];
    }

    goto LABEL_13;
  }

  if (self->_lock_didReceiveHandshake)
  {
    _dispatcher = [(FBSceneSynchronizer *)&self->_synchronizer->super.isa _dispatcher];
    v9 = [(FBWorkspaceEventDispatcher *)_dispatcher handleSceneRequest:requestCopy fromSource:self->_lock_eventDispatcherSource];

    if (v9)
    {
LABEL_15:
      os_unfair_lock_unlock(&self->_lock);
      goto LABEL_16;
    }

    if (![requestCopy requiresModernDispatcher])
    {
      lock_pendedRequests = self->_lock_pendedRequests;
      if (lock_pendedRequests)
      {
        [(NSMutableArray *)lock_pendedRequests addObject:requestCopy];
      }

      else
      {
        v15 = +[FBProcess calloutQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __35__FBWorkspace__handleSceneRequest___block_invoke;
        block[3] = &unk_1E783B240;
        block[4] = self;
        v17 = requestCopy;
        dispatch_async(v15, block);
      }

      goto LABEL_15;
    }

    targetIdentifier = [requestCopy targetIdentifier];
    v11 = FBSWorkspaceErrorCreate();
    [requestCopy invalidateWithError:{v11, targetIdentifier}];

LABEL_14:
    goto LABEL_15;
  }

  v12 = FBLogProcessWorkspace(v5);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [FBWorkspace _handleSceneRequest:];
  }

  os_unfair_lock_unlock(&self->_lock);
  [(FBWorkspace *)self _terminateWithReason:@"scene request before handshake"];
  v13 = FBSWorkspaceErrorCreate();
  [requestCopy invalidateWithError:v13];

LABEL_16:
}

void __35__FBWorkspace__handleSceneRequest___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 136));
  v2 = *(a1 + 32);
  if (v2)
  {
    os_unfair_lock_assert_owner((v2 + 136));
    v3 = 1;
    atomic_compare_exchange_strong_explicit((v2 + 142), &v3, v3, memory_order_relaxed, memory_order_relaxed);
    v4 = v3 == 1;
    os_unfair_lock_unlock((*(a1 + 32) + 136));
    if (v4)
    {
      v5 = *(a1 + 40);
      v8 = FBSWorkspaceErrorCreate();
      [v5 invalidateWithError:v8];

      return;
    }
  }

  else
  {
    os_unfair_lock_unlock(0x88);
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  [v6 _processCallOutQueue_requestScene:v7];
}

- (void)_noteProcessBootstrapped:(void *)bootstrapped withHandle:(void *)handle assertion:(void *)assertion outgoingEndpointPromise:
{
  v70 = *MEMORY[0x1E69E9840];
  v9 = a2;
  bootstrappedCopy = bootstrapped;
  handleCopy = handle;
  assertionCopy = assertion;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 16));

    if (WeakRetained != v9)
    {
      [FBWorkspace _noteProcessBootstrapped:? withHandle:? assertion:? outgoingEndpointPromise:?];
    }

    if (!assertionCopy)
    {
      [FBWorkspace _noteProcessBootstrapped:? withHandle:? assertion:? outgoingEndpointPromise:?];
    }

    if (bootstrappedCopy)
    {
      [(FBSceneSynchronizer *)*(self + 24) _setProcessHandle:bootstrappedCopy];
    }

    else if (([(FBWorkspaceEndpointPromise *)assertionCopy isResolvedNullEndpoint]& 1) == 0)
    {
      assertionCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"workspace's process bootstrapped without a handle but still had a valid outgoing endpoint promise : process=%@ endpointPromise=%@", v9, assertionCopy];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [FBWorkspace _noteProcessBootstrapped:withHandle:assertion:outgoingEndpointPromise:];
      }

      [assertionCopy UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1A8A08188);
    }

    os_unfair_lock_lock((self + 136));
    v14 = *(self + 72);
    if (v14)
    {
      bootstrappedCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"already noted bootstrap of process : previousEndpoint=%@ newEndpoint=%@ newHandle=%@", v14, assertionCopy, bootstrappedCopy];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [FBWorkspace _noteProcessBootstrapped:withHandle:assertion:outgoingEndpointPromise:];
      }

      [bootstrappedCopy UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1A8A0812CLL);
    }

    objc_storeStrong((self + 72), assertion);
    if (!bootstrappedCopy || (os_unfair_lock_assert_owner((self + 136)), v16 = 1, atomic_compare_exchange_strong_explicit((self + 142), &v16, v16, memory_order_relaxed, memory_order_relaxed), v16 == 1))
    {
      os_unfair_lock_unlock((self + 136));
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __85__FBWorkspace__noteProcessBootstrapped_withHandle_assertion_outgoingEndpointPromise___block_invoke_3_136;
      v52[3] = &unk_1E783B580;
      v53 = v9;
      [v53 _launchDidComplete:0 finalizeBlock:v52];
      [handleCopy invalidate];
      v17 = v53;
LABEL_36:

      goto LABEL_37;
    }

    if (*(self + 40))
    {
      if (!handleCopy)
      {
LABEL_21:
        v51 = assertionCopy;
        v28 = FBAnalyticsLogHangTracerEvent(v9, 1);
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = __85__FBWorkspace__noteProcessBootstrapped_withHandle_assertion_outgoingEndpointPromise___block_invoke;
        v61[3] = &unk_1E783C100;
        v17 = v28;
        v65 = v17;
        v29 = v9;
        v62 = v29;
        v50 = handleCopy;
        v63 = handleCopy;
        selfCopy = self;
        v30 = MEMORY[0x1AC572E40](v61);
        v49 = v29;
        v31 = [v29 pid];
        v32 = getpid();
        if (v31 == v32)
        {
          _workspaceQueue = [(FBSceneSynchronizer *)*(self + 24) _workspaceQueue];
          v59[0] = MEMORY[0x1E69E9820];
          v59[1] = 3221225472;
          v59[2] = __85__FBWorkspace__noteProcessBootstrapped_withHandle_assertion_outgoingEndpointPromise___block_invoke_3;
          v59[3] = &unk_1E783B9B8;
          v34 = &v60;
          v60 = v30;
          [_workspaceQueue performAsync:v59];
        }

        else
        {
          v33 = *(self + 32);
          v57[0] = MEMORY[0x1E69E9820];
          v57[1] = 3221225472;
          v57[2] = __85__FBWorkspace__noteProcessBootstrapped_withHandle_assertion_outgoingEndpointPromise___block_invoke_4;
          v57[3] = &unk_1E783C128;
          v34 = &v58;
          v58 = v30;
          [(FBWorkspaceConnection *)v33 workspaceLock_enqueueConnectBlock:v57];
        }

        v36 = *(self + 80);
        if (v36)
        {
          endpoint = [(FBWorkspaceEndpointPromise *)*(self + 72) endpoint];
          [(FBWorkspaceOutgoingConnection *)v36 workspaceLock_setEndpoint:endpoint];
        }

        os_unfair_lock_unlock((self + 136));
        assertionCopy = v51;
        if (v31 == v32 || (*(self + 140) & 1) == 0)
        {
          _dispatcher = FBLogProcessWorkspace(v38);
          handleCopy = v50;
          v43 = v49;
          if (os_log_type_enabled(_dispatcher, OS_LOG_TYPE_DEFAULT))
          {
            logProem = [(FBProcess *)v49 logProem];
            *buf = 138543362;
            v67 = logProem;
            _os_log_impl(&dword_1A89DD000, _dispatcher, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping workspace endpoint injector.", buf, 0xCu);
          }
        }

        else
        {
          _dispatcher = [(FBSceneSynchronizer *)*(self + 24) _dispatcher];
          domain = [(FBWorkspaceEventDispatcher *)_dispatcher domain];
          v41 = [(FBWorkspaceDomain *)domain endpointInjectorTargetingProcess:bootstrappedCopy];
          v42 = *(self + 64);
          *(self + 64) = v41;

          handleCopy = v50;
          v43 = v49;
        }

        [self _updateProcessAssertionState];
        [self _resolveSceneLifecycleStateAndInterruptionPolicy];
        if (handleCopy)
        {
          [v43 _noteAssertionStateDidChange];
        }

        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __85__FBWorkspace__noteProcessBootstrapped_withHandle_assertion_outgoingEndpointPromise___block_invoke_132;
        v54[3] = &unk_1E783B240;
        v55 = v43;
        v56 = bootstrappedCopy;
        v45 = MEMORY[0x1AC572E40](v54);
        if (qos_class_self() <= 0x18)
        {
          v46 = BSDispatchBlockCreateWithQualityOfService();

          v45 = v46;
        }

        v45[2](v45);

        goto LABEL_36;
      }
    }

    else
    {
      v18 = FBLogProcessWorkspace(v15);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        logProem2 = [(FBProcess *)v9 logProem];
        *buf = 138543362;
        v67 = logProem2;
        _os_log_impl(&dword_1A89DD000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Registering event dispatcher after bootstrap", buf, 0xCu);
      }

      _dispatcher2 = [(FBSceneSynchronizer *)*(self + 24) _dispatcher];
      v21 = [(FBWorkspaceEventDispatcher *)_dispatcher2 registerSourceWithProcessHandle:bootstrappedCopy];
      v22 = *(self + 40);
      *(self + 40) = v21;

      if (!handleCopy)
      {
        goto LABEL_21;
      }
    }

    fb_workspaceState = [handleCopy fb_workspaceState];
    v24 = FBWorkspaceStateEqual(fb_workspaceState, 0);
    if (v24)
    {
      [FBWorkspace _noteProcessBootstrapped:? withHandle:? assertion:? outgoingEndpointPromise:?];
    }

    v25 = FBLogProcessWorkspace(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      logProem3 = [(FBProcess *)v9 logProem];
      v27 = NSStringFromFBWorkspaceState(fb_workspaceState);
      *buf = 138543618;
      v67 = logProem3;
      v68 = 2114;
      v69 = v27;
      _os_log_impl(&dword_1A89DD000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ Initial launch state: %{public}@.", buf, 0x16u);
    }

    objc_storeStrong((self + 112), handle);
    [*(self + 112) addObserver:self];
    goto LABEL_21;
  }

LABEL_37:
}

void __85__FBWorkspace__noteProcessBootstrapped_withHandle_assertion_outgoingEndpointPromise___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    (*(v4 + 16))(v4, a2);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__FBWorkspace__noteProcessBootstrapped_withHandle_assertion_outgoingEndpointPromise___block_invoke_2;
  v8[3] = &unk_1E783B240;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = v6;
  v10 = v7;
  [v5 _launchDidComplete:a2 finalizeBlock:v8];
}

id *__85__FBWorkspace__noteProcessBootstrapped_withHandle_assertion_outgoingEndpointPromise___block_invoke_2(id *result)
{
  if (result[4])
  {
    return [result[5] _dropLaunchAssertion];
  }

  return result;
}

void __85__FBWorkspace__noteProcessBootstrapped_withHandle_assertion_outgoingEndpointPromise___block_invoke_132(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __85__FBWorkspace__noteProcessBootstrapped_withHandle_assertion_outgoingEndpointPromise___block_invoke_2_133;
  v3[3] = &unk_1E783C150;
  objc_copyWeak(&v4, &location);
  [v2 monitorForDeath:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __85__FBWorkspace__noteProcessBootstrapped_withHandle_assertion_outgoingEndpointPromise___block_invoke_2_133(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [[FBProcessExitContext alloc] initWithUnderlyingContext:v6];
    [WeakRetained _processDidExitWithContext:v5];
  }
}

- (void)_enableLegacyRequests:(uint64_t)requests
{
  v3 = a2;
  if (requests)
  {
    WeakRetained = objc_loadWeakRetained((requests + 16));

    if (WeakRetained != v3)
    {
      [FBWorkspace _enableLegacyRequests:?];
    }

    [(FBWorkspace *)requests _enableLegacyRequests:v5];
  }
}

void __37__FBWorkspace__enableLegacyRequests___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 136));
  v2 = *(*(a1 + 32) + 56);
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = 0;

  os_unfair_lock_unlock((*(a1 + 32) + 136));
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(a1 + 32) _processCallOutQueue_requestScene:{*(*(&v10 + 1) + 8 * v9++), v10}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_processCallOutQueue_requestScene:(id)scene
{
  sceneCopy = scene;
  delegate = [(FBWorkspace *)self delegate];
  if (delegate)
  {
    options = [sceneCopy options];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49__FBWorkspace__processCallOutQueue_requestScene___block_invoke;
    v8[3] = &unk_1E783C178;
    v9 = sceneCopy;
    [delegate workspace:self didReceiveSceneRequestWithOptions:options completion:v8];
  }

  else
  {
    v7 = FBSWorkspaceErrorCreate();
    [sceneCopy invalidateWithError:v7];
  }
}

void __49__FBWorkspace__processCallOutQueue_requestScene___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = *(a1 + 32);

    [v4 respondWithScene:a2];
  }

  else
  {
    v5 = FBSWorkspaceErrorCreate();
    [v3 invalidateWithError:v5];
  }
}

- (void)_noteProcessDidInvalidate:(uint64_t)invalidate
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (invalidate)
  {
    WeakRetained = objc_loadWeakRetained((invalidate + 16));

    if (WeakRetained != v3)
    {
      [FBWorkspace _noteProcessDidInvalidate:?];
    }

    os_unfair_lock_lock((invalidate + 136));
    v5 = 0;
    atomic_compare_exchange_strong_explicit((invalidate + 142), &v5, 1u, memory_order_relaxed, memory_order_relaxed);
    if (v5)
    {
      os_unfair_lock_unlock((invalidate + 136));
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v6 = *(invalidate + 56);
      v7 = [v6 countByEnumeratingWithState:&v45 objects:v52 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v46;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v46 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v45 + 1) + 8 * i);
            v12 = FBSWorkspaceErrorCreate();
            [v11 invalidateWithError:v12];
          }

          v8 = [v6 countByEnumeratingWithState:&v45 objects:v52 count:16];
        }

        while (v8);
      }

      v13 = *(invalidate + 56);
      *(invalidate + 56) = 0;

      v15 = FBLogProcessWorkspace(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        logProem = [(FBProcess *)v3 logProem];
        *buf = 138543362;
        v51 = logProem;
        _os_log_impl(&dword_1A89DD000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Invalidating workspace.", buf, 0xCu);
      }

      allValues = [*(invalidate + 88) allValues];
      [*(invalidate + 88) removeAllObjects];
      [*(invalidate + 48) enumerateKeysAndObjectsUsingBlock:&__block_literal_global_11];
      [*(invalidate + 48) removeAllObjects];
      [*(invalidate + 40) invalidate];
      v18 = *(invalidate + 40);
      *(invalidate + 40) = 0;

      workspaceLock_invalidate = [(FBWorkspaceConnection *)*(invalidate + 32) workspaceLock_invalidate];
      v20 = *(invalidate + 80);
      if (v20)
      {
        workspaceLock_invalidate2 = [(FBWorkspaceConnection *)v20 workspaceLock_invalidate];
        v22 = workspaceLock_invalidate2;
        if (workspaceLock_invalidate2)
        {
          if (workspaceLock_invalidate)
          {
            [workspaceLock_invalidate addObjectsFromArray:workspaceLock_invalidate2];
          }

          else
          {
            workspaceLock_invalidate = workspaceLock_invalidate2;
          }
        }
      }

      v23 = *(invalidate + 32);
      *(invalidate + 32) = 0;

      v24 = *(invalidate + 80);
      *(invalidate + 80) = 0;

      [*(invalidate + 64) invalidate];
      v25 = *(invalidate + 64);
      *(invalidate + 64) = 0;

      [*(invalidate + 112) invalidate];
      v26 = *(invalidate + 112);
      *(invalidate + 112) = 0;

      [*(invalidate + 104) invalidate];
      v27 = *(invalidate + 104);
      *(invalidate + 104) = 0;

      [*(invalidate + 120) invalidate];
      v28 = *(invalidate + 120);
      *(invalidate + 120) = 0;

      if ([allValues count])
      {
        v29 = +[FBProcess calloutQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __41__FBWorkspace__noteProcessDidInvalidate___block_invoke_2;
        block[3] = &unk_1E783B240;
        v43 = allValues;
        v44 = v3;
        dispatch_async(v29, block);
      }

      os_unfair_lock_unlock((invalidate + 136));
      [*(invalidate + 96) invalidate];
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v30 = allValues;
      v31 = [v30 countByEnumeratingWithState:&v38 objects:v49 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v39;
        do
        {
          for (j = 0; j != v32; ++j)
          {
            if (*v39 != v33)
            {
              objc_enumerationMutation(v30);
            }

            [*(*(&v38 + 1) + 8 * j) invalidate];
          }

          v32 = [v30 countByEnumeratingWithState:&v38 objects:v49 count:16];
        }

        while (v32);
      }

      if ([workspaceLock_invalidate count])
      {
        _workspaceQueue = [(FBSceneSynchronizer *)*(invalidate + 24) _workspaceQueue];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __41__FBWorkspace__noteProcessDidInvalidate___block_invoke_3;
        v36[3] = &unk_1E783B580;
        v37 = workspaceLock_invalidate;
        [_workspaceQueue performAsync:v36];
      }
    }
  }
}

void __41__FBWorkspace__noteProcessDidInvalidate___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v4 _assertion];
    [v3 invalidate];
  }
}

void __41__FBWorkspace__noteProcessDidInvalidate___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = [v6 host];
        v8 = [*(a1 + 40) exitContext];
        v9 = [v8 createError];
        v10 = FBSceneErrorCreate(4uLL, @"Client process exited.", v9);
        [v7 clientToken:v6 didInvalidateWithError:v10];
      }

      v3 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }
}

void __41__FBWorkspace__noteProcessDidInvalidate___block_invoke_3(uint64_t a1)
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

- (void)_terminateGracefully:(void *)gracefully withTransitionContext:
{
  v5 = a2;
  gracefullyCopy = gracefully;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 16));

    if (WeakRetained != v5)
    {
      [FBWorkspace _terminateGracefully:? withTransitionContext:?];
    }

    [(FBWorkspace *)self _terminateGracefully:v8 withTransitionContext:gracefullyCopy];
  }
}

- (void)_workspaceSceneLifecycleStateChanged:(void *)changed
{
  v3 = a2;
  if (changed)
  {
    if (v3)
    {
      v6 = v3;
      identity = [v3 identity];
      v5 = [changed _sceneForIdentity:identity];

      v3 = v6;
      if (v5 == v6)
      {
        [changed _resolveSceneLifecycleStateAndInterruptionPolicy];
        v3 = v6;
      }
    }
  }
}

- (void)_queue_unverifiedOutgoingConnection:(void *)connection didError:
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a2;
  connectionCopy = connection;
  if (self)
  {
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    os_unfair_lock_lock((self + 136));
    os_unfair_lock_assert_owner((self + 136));
    v9 = 1;
    atomic_compare_exchange_strong_explicit((self + 142), &v9, v9, memory_order_relaxed, memory_order_relaxed);
    if (v9 == 1)
    {
      os_unfair_lock_unlock((self + 136));
    }

    else
    {
      if (*(self + 80) != v5)
      {
        v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unverified outgoingConnection is unknown : expected=%@ actual=%@", *(self + 80), v5];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [FBWorkspace _queue_unverifiedOutgoingConnection:didError:];
        }

        [v26 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x1A8A09368);
      }

      v10 = *(self + 88);
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __60__FBWorkspace__queue_unverifiedOutgoingConnection_didError___block_invoke;
      v38[3] = &unk_1E783C1E8;
      v11 = array;
      v39 = v11;
      v12 = array2;
      v40 = v12;
      [v10 enumerateKeysAndObjectsUsingBlock:v38];
      [*(self + 88) removeObjectsForKeys:v11];
      workspaceLock_invalidate = [(FBWorkspaceConnection *)v5 workspaceLock_invalidate];
      v14 = *(self + 80);
      *(self + 80) = 0;

      if ([v12 count])
      {
        v15 = +[FBProcess calloutQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __60__FBWorkspace__queue_unverifiedOutgoingConnection_didError___block_invoke_2;
        block[3] = &unk_1E783B240;
        v36 = v12;
        v37 = connectionCopy;
        dispatch_async(v15, block);
      }

      os_unfair_lock_unlock((self + 136));
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v16 = v12;
      v17 = [v16 countByEnumeratingWithState:&v31 objects:v42 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v32;
        do
        {
          v20 = 0;
          do
          {
            if (*v32 != v19)
            {
              objc_enumerationMutation(v16);
            }

            [*(*(&v31 + 1) + 8 * v20++) invalidate];
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v31 objects:v42 count:16];
        }

        while (v18);
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v21 = workspaceLock_invalidate;
      v22 = [v21 countByEnumeratingWithState:&v27 objects:v41 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v28;
        do
        {
          v25 = 0;
          do
          {
            if (*v28 != v24)
            {
              objc_enumerationMutation(v21);
            }

            (*(*(*(&v27 + 1) + 8 * v25++) + 16))();
          }

          while (v23 != v25);
          v23 = [v21 countByEnumeratingWithState:&v27 objects:v41 count:16];
        }

        while (v23);
      }
    }
  }
}

void __60__FBWorkspace__queue_unverifiedOutgoingConnection_didError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 usesOutgoingConnection])
  {
    [*(a1 + 32) addObject:v6];
    [*(a1 + 40) addObject:v5];
  }
}

void __60__FBWorkspace__queue_unverifiedOutgoingConnection_didError___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        v8 = [v7 host];
        [v8 clientToken:v7 didInvalidateWithError:*(a1 + 40)];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (id)registerHost:(id)host settings:(id)settings initialClientSettings:(id)clientSettings fromRemnant:(id)remnant error:(id *)error
{
  v97[1] = *MEMORY[0x1E69E9840];
  hostCopy = host;
  settingsCopy = settings;
  clientSettingsCopy = clientSettings;
  remnantCopy = remnant;
  if (!hostCopy)
  {
    [FBWorkspace registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  v17 = remnantCopy;
  errorCopy = error;
  definition = [hostCopy definition];
  identity = [definition identity];
  clientIdentity = [definition clientIdentity];
  targetsClientEndpoint = [clientIdentity targetsClientEndpoint];

  specification = [definition specification];
  v23 = identity;
  NSClassFromString(&cfstr_Fbssceneidenti.isa);
  if (!v23)
  {
    [FBWorkspace registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBWorkspace registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  v77 = targetsClientEndpoint;

  v24 = specification;
  NSClassFromString(&cfstr_Fbsscenespecif.isa);
  if (!v24)
  {
    [FBWorkspace registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBWorkspace registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  log = a2;
  v79 = definition;

  v25 = settingsCopy;
  NSClassFromString(&cfstr_Fbsscenesettin.isa);
  if (!v25)
  {
    [FBWorkspace registerHost:? settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBWorkspace registerHost:? settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  [v24 settingsClass];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"settings of an unexpected class: expected %@, got %@", objc_msgSend(v24, "settingsClass"), objc_opt_class()];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [FBWorkspace registerHost:settings:initialClientSettings:fromRemnant:error:];
    }

    [v68 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A8A09D58);
  }

  v81 = hostCopy;
  v26 = clientSettingsCopy;
  NSClassFromString(&cfstr_Fbssceneclient_0.isa);
  if (!v26)
  {
    [FBWorkspace registerHost:? settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBWorkspace registerHost:? settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  [v24 clientSettingsClass];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"initialClientSettings of an unexpected class: expected %@, got %@", objc_msgSend(v24, "clientSettingsClass"), objc_opt_class()];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [FBWorkspace registerHost:settings:initialClientSettings:fromRemnant:error:];
    }

    [v69 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A8A09DE4);
  }

  if (v17)
  {
    v27 = v17;
    NSClassFromString(&cfstr_Fbsceneremnant_1.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBWorkspace registerHost:? settings:? initialClientSettings:? fromRemnant:? error:?];
    }

    if ([v27 _hasBeenInvalidated])
    {
      [FBWorkspace registerHost:? settings:? initialClientSettings:? fromRemnant:? error:?];
    }

    _workspace = [v27 _workspace];

    if (_workspace != self)
    {
      [FBWorkspace registerHost:? settings:? initialClientSettings:? fromRemnant:? error:?];
    }

    definition2 = [v27 definition];
    specification2 = [definition2 specification];
    v31 = objc_opt_class();
    v32 = v17;
    v33 = objc_opt_class();

    v34 = v31 == v33;
    v17 = v32;
    if (!v34)
    {
      [FBWorkspace registerHost:? settings:? initialClientSettings:? fromRemnant:? error:?];
    }
  }

  os_unfair_lock_lock(&self->_lock);
  lock_identityToSceneMap = self->_lock_identityToSceneMap;
  if (!lock_identityToSceneMap)
  {
    v36 = objc_opt_new();
    v37 = self->_lock_identityToSceneMap;
    self->_lock_identityToSceneMap = v36;

    lock_identityToSceneMap = self->_lock_identityToSceneMap;
  }

  v38 = [(NSMutableDictionary *)lock_identityToSceneMap objectForKey:v23];

  if (v38)
  {
    v70 = MEMORY[0x1E696AEC0];
    v71 = [(NSMutableDictionary *)self->_lock_identityToSceneMap objectForKey:v23];
    v72 = [v81 debugDescription];
    v73 = [v70 stringWithFormat:@"cannot register a host that is already registered : existing=%@ : host=%@", v71, v72];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [FBWorkspace registerHost:settings:initialClientSettings:fromRemnant:error:];
    }

    [v73 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A8A09E70);
  }

  if (self->_lock_didReceiveHandshake)
  {
    v82 = [(NSMutableDictionary *)self->_lock_identityToRemnantsMap objectForKey:v23];
  }

  else
  {
    if (v17)
    {
      [FBWorkspace registerHost:? settings:? initialClientSettings:? fromRemnant:? error:?];
    }

    lock_identityToRemnantsMap = self->_lock_identityToRemnantsMap;
    if (!lock_identityToRemnantsMap)
    {
      v40 = objc_opt_new();
      v41 = self->_lock_identityToRemnantsMap;
      self->_lock_identityToRemnantsMap = v40;

      lock_identityToRemnantsMap = self->_lock_identityToRemnantsMap;
    }

    null = [MEMORY[0x1E695DFB0] null];
    [(NSMutableDictionary *)lock_identityToRemnantsMap setObject:null forKey:v23];

    v82 = 0;
  }

  os_unfair_lock_assert_owner(&self->_lock);
  v44 = 1;
  atomic_compare_exchange_strong_explicit(&self->_invalidated, &v44, v44, memory_order_relaxed, memory_order_relaxed);
  if (v44 == 1)
  {
    v45 = v17;
    v46 = MEMORY[0x1E696ABC0];
    v96 = *MEMORY[0x1E696A588];
    v97[0] = @"Workspace has been invalidated (process has exited).";
    v47 = MEMORY[0x1E695DF20];
    v48 = v97;
    v49 = &v96;
LABEL_31:
    WeakRetained = [v47 dictionaryWithObjects:v48 forKeys:v49 count:1];
    v51 = [v46 errorWithDomain:@"FBWorkspace" code:1 userInfo:WeakRetained];
    v52 = 0;
    v53 = 0;
LABEL_32:

    v17 = v45;
    goto LABEL_33;
  }

  if (self->_test_rejectAllSceneClients)
  {
    v45 = v17;
    v46 = MEMORY[0x1E696ABC0];
    v94 = *MEMORY[0x1E696A588];
    v95 = @"Workspace is rejecting all clients for unit tests.";
    v47 = MEMORY[0x1E695DF20];
    v48 = &v95;
    v49 = &v94;
    goto LABEL_31;
  }

  if (v77)
  {
    endpoint = [(FBWorkspaceEndpointPromise *)self->_lock_outgoingEndpointPromise endpoint];
    if ([endpoint isNullEndpoint])
    {
      v60 = MEMORY[0x1E696ABC0];
      v92 = *MEMORY[0x1E696A588];
      v93 = @"Workspace cannot establish a connection to a null endpoint.";
      v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
      v51 = [v60 errorWithDomain:@"FBWorkspace" code:1 userInfo:v61];

      v52 = 0;
    }

    else
    {
      lock_outgoingConnection = self->_lock_outgoingConnection;
      if (lock_outgoingConnection)
      {
        v52 = lock_outgoingConnection;
      }

      else
      {
        v65 = [[FBWorkspaceOutgoingConnection alloc] initWithWorkspace:?];
        v66 = self->_lock_outgoingConnection;
        self->_lock_outgoingConnection = v65;

        v52 = v65;
        if (endpoint)
        {
          [(FBWorkspaceOutgoingConnection *)self->_lock_outgoingConnection workspaceLock_setEndpoint:endpoint];
        }
      }

      v51 = 0;
    }

    v64 = 0;
  }

  else if (v17)
  {
    if (v82 != v17)
    {
      v62 = FBLogProcessWorkspace(v43);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        [FBWorkspace registerHost:settings:initialClientSettings:fromRemnant:error:];
      }

      v45 = v17;

      v46 = MEMORY[0x1E696ABC0];
      v90 = *MEMORY[0x1E696A588];
      v91 = @"Invalid scene remnant provided.";
      v47 = MEMORY[0x1E695DF20];
      v48 = &v91;
      v49 = &v90;
      goto LABEL_31;
    }

    [(NSMutableDictionary *)self->_lock_identityToRemnantsMap removeObjectForKey:v23];
    v52 = self->_lock_incomingConnection;
    v51 = 0;
    v64 = 1;
  }

  else
  {
    v52 = self->_lock_incomingConnection;
    v64 = 0;
    v51 = 0;
  }

  if (v52)
  {
    if (([(FBWorkspaceConnection *)v52 workspaceLock_isValid]& 1) == 0)
    {
      [FBWorkspace registerHost:? settings:? initialClientSettings:? fromRemnant:? error:?];
    }

    v78 = v64;
    v67 = objc_opt_class();
    v45 = v17;
    if ([v25 _uikitShimming_isUISubclass])
    {
      v67 = objc_opt_class();
    }

    v53 = [[v67 alloc] initWithConnection:v52 host:v81 settings:v25 clientSettings:v26 fromRemnant:v78];
    [(NSMutableDictionary *)self->_lock_identityToSceneMap setObject:v53 forKey:v23];
    WeakRetained = objc_loadWeakRetained(&self->_weak_process);
    loga = FBLogProcessWorkspace(WeakRetained);
    if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
    {
      logProem = [(FBProcess *)WeakRetained logProem];
      *buf = 138543874;
      v85 = logProem;
      v86 = 2114;
      v87 = v53;
      v88 = 1024;
      v89 = v78;
      _os_log_impl(&dword_1A89DD000, loga, OS_LOG_TYPE_DEFAULT, "%{public}@ Registered new scene: %{public}@ (fromRemnant = %d)", buf, 0x1Cu);
    }

    goto LABEL_32;
  }

  v53 = 0;
LABEL_33:
  os_unfair_lock_unlock(&self->_lock);
  _assertion = [v82 _assertion];
  [_assertion invalidate];

  _workspaceQueue = [(FBSceneSynchronizer *)&self->_synchronizer->super.isa _workspaceQueue];
  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = __77__FBWorkspace_registerHost_settings_initialClientSettings_fromRemnant_error___block_invoke;
  v83[3] = &unk_1E783B580;
  v83[4] = self;
  [_workspaceQueue performAsync:v83];

  if (errorCopy)
  {
    v56 = v51;
    *errorCopy = v51;
  }

  v57 = v53;

  return v53;
}

- (void)host:(id)host didUpdateSettings:(id)settings withDiff:(id)diff transitionContext:(id)context completion:(id)completion
{
  settingsCopy = settings;
  diffCopy = diff;
  contextCopy = context;
  completionCopy = completion;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __76__FBWorkspace_host_didUpdateSettings_withDiff_transitionContext_completion___block_invoke;
  v32[3] = &unk_1E783C210;
  v33 = completionCopy;
  hostCopy = host;
  v17 = MEMORY[0x1AC572E40](v32);
  v18 = [(FBWorkspace *)self _sceneForHost:hostCopy];

  _workspaceQueue = [(FBSceneSynchronizer *)&self->_synchronizer->super.isa _workspaceQueue];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __76__FBWorkspace_host_didUpdateSettings_withDiff_transitionContext_completion___block_invoke_2;
  v25[3] = &unk_1E783BB68;
  v26 = v18;
  selfCopy = self;
  v28 = settingsCopy;
  v29 = diffCopy;
  v30 = contextCopy;
  v31 = v17;
  v20 = v17;
  v21 = contextCopy;
  v22 = diffCopy;
  v23 = settingsCopy;
  v24 = v18;
  [_workspaceQueue performAsync:v25];
}

uint64_t __76__FBWorkspace_host_didUpdateSettings_withDiff_transitionContext_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __76__FBWorkspace_host_didUpdateSettings_withDiff_transitionContext_completion___block_invoke_2(void *a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];
    v6 = a1[8];
    v7 = a1[9];

    [(FBWorkspaceScene *)v2 workspace:v3 sendUpdatedSettings:v4 withDiff:v5 transitionContext:v6 completion:v7];
  }

  else
  {
    v8 = a1[9];
    v9 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A588];
    v13[0] = @"Scene client is invalid.";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v11 = [v9 errorWithDomain:@"FBWorkspace" code:1 userInfo:v10];
    (*(v8 + 16))(v8, 0, v11);
  }
}

- (void)host:(id)host didInvalidateWithTransitionContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __66__FBWorkspace_host_didInvalidateWithTransitionContext_completion___block_invoke;
  v22[3] = &unk_1E783C210;
  v23 = completionCopy;
  hostCopy = host;
  v11 = MEMORY[0x1AC572E40](v22);
  v12 = [(FBWorkspace *)self _unregisterSceneForHost:hostCopy];

  _workspaceQueue = [(FBSceneSynchronizer *)&self->_synchronizer->super.isa _workspaceQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __66__FBWorkspace_host_didInvalidateWithTransitionContext_completion___block_invoke_2;
  v17[3] = &unk_1E783BB18;
  v18 = v12;
  selfCopy = self;
  v20 = contextCopy;
  v21 = v11;
  v14 = v11;
  v15 = contextCopy;
  v16 = v12;
  [_workspaceQueue performAsync:v17];
}

uint64_t __66__FBWorkspace_host_didInvalidateWithTransitionContext_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __66__FBWorkspace_host_didInvalidateWithTransitionContext_completion___block_invoke_2(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__FBWorkspace_host_didInvalidateWithTransitionContext_completion___block_invoke_3;
    v9[3] = &unk_1E783C238;
    v11 = *(a1 + 56);
    v10 = *(a1 + 32);
    [(FBWorkspaceScene *)v2 workspace:v3 sendInvalidationWithTransitionContext:v4 completion:v9];
    [*(a1 + 40) _resolveSceneLifecycleStateAndInterruptionPolicy];

    v5 = v11;
  }

  else
  {
    v6 = *(a1 + 56);
    v7 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A588];
    v13[0] = @"Scene client is invalid.";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v8 = [v7 errorWithDomain:@"FBWorkspace" code:1 userInfo:v5];
    (*(v6 + 16))(v6, 0, v8);
  }
}

uint64_t __66__FBWorkspace_host_didInvalidateWithTransitionContext_completion___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

- (void)host:(id)host didReceiveActions:(id)actions forExtension:(Class)extension
{
  actionsCopy = actions;
  v9 = [(FBWorkspace *)self _sceneForHost:host];
  _workspaceQueue = [(FBSceneSynchronizer *)&self->_synchronizer->super.isa _workspaceQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__FBWorkspace_host_didReceiveActions_forExtension___block_invoke;
  v13[3] = &unk_1E783C260;
  v14 = v9;
  selfCopy = self;
  v16 = actionsCopy;
  extensionCopy = extension;
  v11 = actionsCopy;
  v12 = v9;
  [_workspaceQueue performAsync:v13];
}

- (void)host:(id)host sendInvocation:(id)invocation withReply:(id)reply
{
  invocationCopy = invocation;
  replyCopy = reply;
  v10 = [(FBWorkspace *)self _sceneForHost:host];
  _workspaceQueue = [(FBSceneSynchronizer *)&self->_synchronizer->super.isa _workspaceQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __45__FBWorkspace_host_sendInvocation_withReply___block_invoke;
  v15[3] = &unk_1E783BB18;
  v16 = v10;
  selfCopy = self;
  v18 = invocationCopy;
  v19 = replyCopy;
  v12 = replyCopy;
  v13 = invocationCopy;
  v14 = v10;
  [_workspaceQueue performAsync:v15];
}

void __45__FBWorkspace_host_sendInvocation_withReply___block_invoke(void *a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];

    [(FBWorkspaceScene *)v2 workspace:v3 sendInvocation:v4 withReply:v5];
  }

  else
  {
    v6 = a1[7];
    v7 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A588];
    v11[0] = @"Scene client is invalid.";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v9 = [v7 errorWithDomain:@"FBWorkspace" code:1 userInfo:v8];
    (*(v6 + 16))(v6, 0, v9);
  }
}

- (void)handshakeWithRemnants:(id)remnants
{
  v94 = *MEMORY[0x1E69E9840];
  remnantsCopy = remnants;
  _workspaceQueue = [(FBSceneSynchronizer *)&self->_synchronizer->super.isa _workspaceQueue];
  [_workspaceQueue assertBarrierOnQueue];

  process = [(FBWorkspace *)self process];
  v6 = +[FBWorkspaceConnection currentWorkspaceConnection];
  if (!v6)
  {
    v8 = FBLogProcessWorkspace(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [FBWorkspace handshakeWithRemnants:];
    }

    goto LABEL_8;
  }

  v7 = objc_opt_class();
  if (v7 != objc_opt_class())
  {
    os_unfair_lock_lock(&self->_lock);
    if (self->_lock_didReceiveHandshake)
    {
      os_unfair_lock_unlock(&self->_lock);
      v8 = FBLogProcessWorkspace([(FBWorkspace *)self _terminateWithReason:@"double handshake"]);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [FBWorkspace handshakeWithRemnants:];
      }

LABEL_8:

      goto LABEL_68;
    }

    v19 = 1;
    self->_lock_didReceiveHandshake = 1;
    os_unfair_lock_assert_owner(&self->_lock);
    atomic_compare_exchange_strong_explicit(&self->_invalidated, &v19, v19, memory_order_relaxed, memory_order_relaxed);
    if (v19 == 1)
    {
      v21 = FBLogProcessWorkspace(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [FBWorkspace handshakeWithRemnants:v21];
      }

      goto LABEL_67;
    }

    lock_eventDispatcherSource = self->_lock_eventDispatcherSource;
    v23 = FBLogProcessWorkspace(v20);
    v21 = v23;
    if (!lock_eventDispatcherSource)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [FBWorkspace handshakeWithRemnants:v21];
      }

      goto LABEL_67;
    }

    v67 = v6;
    selfCopy = self;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [process debugDescription];
      [MEMORY[0x1E698F490] currentContext];
      v26 = v25 = v21;
      remoteToken = [v26 remoteToken];
      *buf = 138412802;
      v89 = v24;
      v90 = 2112;
      v91 = remoteToken;
      v92 = 1024;
      v93 = [remnantsCopy count];
      _os_log_impl(&dword_1A89DD000, v25, OS_LOG_TYPE_DEFAULT, "received incoming handshake : process=%@ remote=%@ remnants=%u", buf, 0x1Cu);

      v21 = v25;
      self = selfCopy;
    }

    v69 = [MEMORY[0x1E695DFA8] set];
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v68 = remnantsCopy;
    obj = remnantsCopy;
    v28 = [obj countByEnumeratingWithState:&v82 objects:v87 count:16];
    if (v28)
    {
      v29 = v28;
      v73 = *v83;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v83 != v73)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v82 + 1) + 8 * i);
          identity = [v31 identity];
          v33 = identity;
          if (identity)
          {
            internalWorkspaceIdentifier = [identity internalWorkspaceIdentifier];
            identity2 = [process identity];
            parameters = [v31 parameters];
            if (!internalWorkspaceIdentifier || ((-[FBSceneSynchronizer _dispatcher](&self->_synchronizer->super.isa), v37 = objc_claimAutoreleasedReturnValue(), -[FBWorkspaceEventDispatcher domain](v37), v38 = objc_claimAutoreleasedReturnValue(), -[FBWorkspaceDomain reconnectableWorkspaces](v38), v39 = objc_claimAutoreleasedReturnValue(), v40 = [v39 containsObject:internalWorkspaceIdentifier], v39, v38, v37, v41 = v40 == 0, self = selfCopy, !v41) ? (v41 = identity2 == 0) : (v41 = 1), !v41 ? (v42 = parameters == 0) : (v42 = 1), v42))
            {
              v43 = [(NSMutableDictionary *)self->_lock_identityToRemnantsMap objectForKey:v33];

              if (!v43)
              {
                lock_incomingConnection = self->_lock_incomingConnection;
                v78[0] = MEMORY[0x1E69E9820];
                v78[1] = 3221225472;
                v78[2] = __37__FBWorkspace_handshakeWithRemnants___block_invoke_4;
                v78[3] = &unk_1E783C1C0;
                v79 = v33;
                [(FBWorkspaceConnection *)lock_incomingConnection workspaceLock_enqueueConnectBlock:v78];
                v45 = v79;
                goto LABEL_41;
              }
            }

            else
            {
              v46 = [(NSMutableDictionary *)selfCopy->_lock_identityToRemnantsMap objectForKey:v33];

              if (v46)
              {
                v45 = 0;
              }

              else
              {
                v47 = objc_alloc(MEMORY[0x1E698E778]);
                v48 = [v33 description];
                v80[0] = MEMORY[0x1E69E9820];
                v80[1] = 3221225472;
                v80[2] = __37__FBWorkspace_handshakeWithRemnants___block_invoke;
                v80[3] = &unk_1E783C2A8;
                v80[4] = selfCopy;
                v81 = v33;
                v45 = [v47 initWithIdentifier:@"com.apple.frontboard.workspace.remnant" forReason:v48 invalidationBlock:v80];
              }

              v49 = [MEMORY[0x1E699FBD8] identityForProcessIdentity:identity2];
              v50 = [[FBSceneRemnant alloc] _initWithIdentity:v33 client:v49 workspace:selfCopy parameters:parameters assertionQueue:0 assertion:v45];
              [v69 addObject:v50];

LABEL_41:
            }
          }
        }

        v29 = [obj countByEnumeratingWithState:&v82 objects:v87 count:16];
      }

      while (v29);
    }

    v21 = v69;
    v51 = [v69 count];
    lock_identityToRemnantsMap = self->_lock_identityToRemnantsMap;
    if (v51)
    {
      remnantsCopy = v68;
      if (lock_identityToRemnantsMap)
      {
        [(NSMutableDictionary *)lock_identityToRemnantsMap removeAllObjects];
      }

      else
      {
        v54 = objc_opt_new();
        v55 = self->_lock_identityToRemnantsMap;
        self->_lock_identityToRemnantsMap = v54;
      }

      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v56 = v69;
      v57 = [v56 countByEnumeratingWithState:&v74 objects:v86 count:16];
      if (v57)
      {
        v58 = v57;
        v59 = *v75;
        do
        {
          for (j = 0; j != v58; ++j)
          {
            if (*v75 != v59)
            {
              objc_enumerationMutation(v56);
            }

            v61 = *(*(&v74 + 1) + 8 * j);
            _assertion = [v61 _assertion];

            if (_assertion)
            {
              v63 = selfCopy->_lock_identityToRemnantsMap;
              definition = [v61 definition];
              identity3 = [definition identity];
              [(NSMutableDictionary *)v63 setObject:v61 forKey:identity3];
            }
          }

          v58 = [v56 countByEnumeratingWithState:&v74 objects:v86 count:16];
        }

        while (v58);
      }

      self = selfCopy;
      v6 = v67;
      v21 = v69;
      if ([(NSMutableDictionary *)selfCopy->_lock_identityToRemnantsMap count])
      {
        goto LABEL_66;
      }

      lock_identityToRemnantsMap = selfCopy->_lock_identityToRemnantsMap;
    }

    else
    {
      v6 = v67;
      remnantsCopy = v68;
    }

    self->_lock_identityToRemnantsMap = 0;

LABEL_66:
    _dispatcher = [(FBSceneSynchronizer *)&self->_synchronizer->super.isa _dispatcher];
    [(FBWorkspaceEventDispatcher *)_dispatcher noteHandshakeFromSource:v21 withRemnants:?];

LABEL_67:
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_68;
  }

  if (-[FBWorkspaceOutgoingConnection queue_isVerified](v6) && ![remnantsCopy count])
  {
    v8 = FBLogProcessWorkspace(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v53 = [process debugDescription];
      *buf = 138412290;
      v89 = v53;
      _os_log_impl(&dword_1A89DD000, v8, OS_LOG_TYPE_DEFAULT, "received outgoing handshake : process=%@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  v9 = v6;
  v10 = [process description];
  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteToken2 = [currentContext remoteToken];

  v13 = MEMORY[0x1E696AEC0];
  [remnantsCopy description];
  v15 = v14 = self;
  v16 = [v13 stringWithFormat:@"outgoing connection handshake wasn't verified or included remnants: process=%@ remote=%@ remnants=%@", v10, remoteToken2, v15];
  [(FBWorkspace *)v14 _terminateWithReason:v16];

  v18 = FBLogProcessWorkspace(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412802;
    v89 = v10;
    v90 = 2112;
    v91 = remoteToken2;
    v92 = 1024;
    v93 = [remnantsCopy count];
    _os_log_fault_impl(&dword_1A89DD000, v18, OS_LOG_TYPE_FAULT, "outgoing connection handshake included remnants : process=%@ remote=%@ remnants=%u", buf, 0x1Cu);
  }

  v6 = v9;
LABEL_68:
}

void __37__FBWorkspace_handshakeWithRemnants___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 1;
  v5 = 1;
  atomic_compare_exchange_strong_explicit((*(a1 + 32) + 142), &v5, v5, memory_order_relaxed, memory_order_relaxed);
  if (v5 != 1)
  {
    os_unfair_lock_lock((*(a1 + 32) + 136));
    v6 = *(a1 + 32);
    os_unfair_lock_assert_owner((v6 + 136));
    atomic_compare_exchange_strong_explicit((v6 + 142), &v4, v4, memory_order_relaxed, memory_order_relaxed);
    if (v4 != 1)
    {
      v7 = [*(*(a1 + 32) + 48) objectForKey:*(a1 + 40)];
      v8 = [v7 _assertion];

      if (v8 == v3)
      {
        [*(*(a1 + 32) + 48) removeObjectForKey:*(a1 + 40)];
        if (![*(*(a1 + 32) + 48) count])
        {
          v9 = *(a1 + 32);
          v10 = *(v9 + 48);
          *(v9 + 48) = 0;
        }

        v11 = *(*(a1 + 32) + 32);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __37__FBWorkspace_handshakeWithRemnants___block_invoke_2;
        v12[3] = &unk_1E783C1C0;
        v13 = *(a1 + 40);
        [(FBWorkspaceConnection *)v11 workspaceLock_enqueueConnectBlock:v12];
      }
    }

    os_unfair_lock_unlock((*(a1 + 32) + 136));
  }
}

- (void)workspaceID:(id)d sendActions:(id)actions completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  dCopy = d;
  actionsCopy = actions;
  completionCopy = completion;
  if ([actionsCopy count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_weak_process);
    v12 = FBLogProcessWorkspace(WeakRetained);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      logProem = [(FBProcess *)WeakRetained logProem];
      if (dCopy)
      {
        v14 = dCopy;
      }

      else
      {
        v14 = @"(default)";
      }

      fbs_singleLineDescriptionOfBSActions = [actionsCopy fbs_singleLineDescriptionOfBSActions];
      *buf = 138543874;
      v24 = logProem;
      v25 = 2114;
      v26 = v14;
      v27 = 2114;
      v28 = fbs_singleLineDescriptionOfBSActions;
      _os_log_impl(&dword_1A89DD000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Received action(s) for workspace %{public}@: %{public}@", buf, 0x20u);
    }

    if (dCopy)
    {
      defaultWorkspace = dCopy;
    }

    else
    {
      _dispatcher = [(FBSceneSynchronizer *)&self->_synchronizer->super.isa _dispatcher];
      domain = [(FBWorkspaceEventDispatcher *)_dispatcher domain];
      defaultWorkspace = [(FBWorkspaceDomain *)domain defaultWorkspace];
    }

    v19 = [FBWorkspaceSceneRequest alloc];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __50__FBWorkspace_workspaceID_sendActions_completion___block_invoke;
    v21[3] = &unk_1E783C2D0;
    v22 = completionCopy;
    v20 = [(FBWorkspaceSceneRequest *)v19 initWithTargetIdentifier:defaultWorkspace actions:actionsCopy completion:v21];
    [(FBWorkspace *)self _handleSceneRequest:v20];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

uint64_t __50__FBWorkspace_workspaceID_sendActions_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (void)createSceneWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v8 = +[FBWorkspaceConnection currentWorkspaceConnection];
  if (!v8)
  {
    if (!completionCopy)
    {
      goto LABEL_11;
    }

LABEL_8:
    v13 = FBSWorkspaceErrorCreate();
    completionCopy[2](completionCopy, v13);

    goto LABEL_11;
  }

  v9 = objc_opt_class();
  if (v9 == objc_opt_class())
  {
    if (!completionCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  workspaceIdentifier = [optionsCopy workspaceIdentifier];
  v11 = workspaceIdentifier;
  if (workspaceIdentifier)
  {
    defaultWorkspace = workspaceIdentifier;
  }

  else
  {
    _dispatcher = [(FBSceneSynchronizer *)&self->_synchronizer->super.isa _dispatcher];
    domain = [(FBWorkspaceEventDispatcher *)_dispatcher domain];
    defaultWorkspace = [(FBWorkspaceDomain *)domain defaultWorkspace];
  }

  v16 = MEMORY[0x1E699FBD8];
  processHandle = [(FBSceneSynchronizer *)self->_synchronizer processHandle];
  identity = [processHandle identity];
  v19 = [v16 identityForInjectedEndpointToProcessIdentity:identity];

  v20 = [FBWorkspaceSceneRequest alloc];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __49__FBWorkspace_createSceneWithOptions_completion___block_invoke;
  v22[3] = &unk_1E783C2D0;
  v23 = completionCopy;
  v21 = [(FBWorkspaceSceneRequest *)v20 initWithClientIdentity:v19 targetIdentifier:defaultWorkspace options:optionsCopy completion:v22];
  [(FBWorkspace *)self _handleSceneRequest:v21];

LABEL_11:
}

uint64_t __49__FBWorkspace_createSceneWithOptions_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (void)requestSceneWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v8 = +[FBWorkspaceConnection currentWorkspaceConnection];
  if (!v8)
  {
    if (!completionCopy)
    {
      goto LABEL_15;
    }

LABEL_9:
    v13 = FBSWorkspaceErrorCreate();
    completionCopy[2](completionCopy, 0, v13);

    goto LABEL_15;
  }

  v9 = objc_opt_class();
  if (v9 == objc_opt_class())
  {
    if (!completionCopy)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (completionCopy)
  {
    workspaceIdentifier = [optionsCopy workspaceIdentifier];
    v11 = workspaceIdentifier;
    if (workspaceIdentifier)
    {
      defaultWorkspace = workspaceIdentifier;
    }

    else
    {
      _dispatcher = [(FBSceneSynchronizer *)&self->_synchronizer->super.isa _dispatcher];
      domain = [(FBWorkspaceEventDispatcher *)_dispatcher domain];
      defaultWorkspace = [(FBWorkspaceDomain *)domain defaultWorkspace];
    }

    if ([optionsCopy isKeyboardScene])
    {
      process = [(FBWorkspace *)self process];
      v17 = [process hasEntitlement:@"com.apple.frontboard.keyboard-provider"];
    }

    else
    {
      v17 = 0;
    }

    v18 = MEMORY[0x1E699FBD8];
    processHandle = [(FBSceneSynchronizer *)self->_synchronizer processHandle];
    identity = [processHandle identity];
    v21 = [v18 identityForInjectedEndpointToProcessIdentity:identity];

    v22 = [FBWorkspaceSceneRequest alloc];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __50__FBWorkspace_requestSceneWithOptions_completion___block_invoke;
    v24[3] = &unk_1E783C320;
    v26 = v17;
    v24[4] = self;
    v25 = completionCopy;
    v23 = [(FBWorkspaceSceneRequest *)v22 initWithClientIdentity:v21 targetIdentifier:defaultWorkspace options:optionsCopy completion:v24];
    [(FBWorkspace *)self _handleSceneRequest:v23];
  }

LABEL_15:
}

void __50__FBWorkspace_requestSceneWithOptions_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (*(a1 + 48) == 1)
    {
      [FBSceneManager setKeyboardScene:v5];
    }

    v7 = [v5 identity];
    v8 = [*(a1 + 32) _sceneForIdentity:v7];
    v9 = v8;
    if (v8 && ([v8 host], v10 = objc_claimAutoreleasedReturnValue(), v10, v10 == v5))
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __50__FBWorkspace_requestSceneWithOptions_completion___block_invoke_2;
      v14[3] = &unk_1E783C2F8;
      v14[4] = *(a1 + 32);
      v15 = v7;
      v16 = v9;
      v17 = *(a1 + 40);
      [(FBWorkspaceScene *)v16 _enqueueSceneCreateCompletionBlock:v14];
    }

    else
    {
      if ([v5 isValid] && (objc_msgSend(v5, "isActive") & 1) != 0)
      {
        v11 = *(a1 + 40);
      }

      else
      {
        v11 = *(a1 + 40);
      }

      v13 = FBSWorkspaceErrorCreate();
      (*(v11 + 16))(v11, 0, v13);
    }
  }

  else
  {
    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))(v12, 0, v6);
    }
  }
}

void __50__FBWorkspace_requestSceneWithOptions_completion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v9 = a3;
  if (a2 && ([*(a1 + 32) _sceneForIdentity:*(a1 + 40)], v5 = objc_claimAutoreleasedReturnValue(), v6 = *(a1 + 48), v5, v5 == v6))
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = *(a1 + 56);
    v8 = FBSWorkspaceErrorCreate();
    (*(v7 + 16))(v7, 0, v8);
  }
}

- (void)sceneID:(id)d didUpdateClientSettingsWithDiff:(id)diff transitionContext:(id)context completion:(id)completion
{
  dCopy = d;
  diffCopy = diff;
  contextCopy = context;
  completionCopy = completion;
  v14 = [(FBWorkspace *)self _sceneForIdentity:dCopy];
  if (v14)
  {
    v15 = +[FBWorkspaceConnection currentWorkspaceConnection];
    [(FBWorkspaceScene *)v14 workspace:diffCopy handleUpdatedClientSettings:contextCopy transitionContext:v15 fromConnection:?];

    if (completionCopy)
    {
LABEL_3:
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v16 = FBLogProcessScene(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [FBWorkspace sceneID:didUpdateClientSettingsWithDiff:transitionContext:completion:];
    }

    if (completionCopy)
    {
      goto LABEL_3;
    }
  }
}

- (void)sceneID:(id)d didReceiveActions:(id)actions forExtension:(id)extension
{
  dCopy = d;
  actionsCopy = actions;
  extensionCopy = extension;
  v11 = [(FBWorkspace *)self _sceneForIdentity:dCopy];
  if (!v11)
  {
    v13 = FBLogProcessScene(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [FBWorkspace sceneID:didReceiveActions:forExtension:];
    }

    goto LABEL_8;
  }

  if (!extensionCopy)
  {
    v12 = 0;
    goto LABEL_10;
  }

  v12 = NSClassFromString(extensionCopy);
  if (v12)
  {
LABEL_10:
    v14 = +[FBWorkspaceConnection currentWorkspaceConnection];
    [(FBWorkspaceScene *)v11 workspace:actionsCopy handleActions:v12 forExtension:v14 fromConnection:?];

    goto LABEL_11;
  }

  v13 = FBLogProcessScene(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [FBWorkspace sceneID:didReceiveActions:forExtension:];
  }

LABEL_8:

LABEL_11:
}

- (void)sceneID:(id)d handleInvocation:(id)invocation completion:(id)completion
{
  dCopy = d;
  invocationCopy = invocation;
  completionCopy = completion;
  v11 = [(FBWorkspace *)self _sceneForIdentity:dCopy];
  if (v11)
  {
    v12 = +[FBWorkspaceConnection currentWorkspaceConnection];
    [(FBWorkspaceScene *)v11 workspace:invocationCopy handleInvocation:v12 fromConnection:completionCopy withReply:?];
  }

  else
  {
    v13 = FBLogProcessScene(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [FBWorkspace sceneID:handleInvocation:completion:];
    }
  }
}

- (void)sceneID:(id)d sendMessage:(id)message withResponse:(id)response
{
  dCopy = d;
  responseCopy = response;
  v8 = FBLogProcessScene(responseCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [FBWorkspace sceneID:sendMessage:withResponse:];
  }

  if (responseCopy)
  {
    (*(responseCopy + 2))(responseCopy, 0, 0);
  }
}

- (void)sceneID:(id)d invalidateWithContext:(id)context clientError:(id)error
{
  dCopy = d;
  contextCopy = context;
  errorCopy = error;
  v11 = [(FBWorkspace *)self _sceneForIdentity:dCopy];
  if (v11)
  {
    [contextCopy setError:errorCopy];
    host = [v11 host];
    [host clientToken:v11 deactivateWithContext:contextCopy];
  }

  else
  {
    host = FBLogProcessScene(0);
    if (os_log_type_enabled(host, OS_LOG_TYPE_ERROR))
    {
      [FBWorkspace sceneID:invalidateWithContext:clientError:];
    }
  }
}

- (void)assertion:(id)assertion didInvalidateWithError:(id)error
{
  v22 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_weak_process);
  lock_lifeAssertion = self->_lock_lifeAssertion;
  lock_connectAssertion = self->_lock_connectAssertion;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_connectAssertion == assertionCopy)
  {
    v15 = FBLogProcessWorkspace(v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      logProem = [(FBProcess *)WeakRetained logProem];
      succinctDescription = [errorCopy succinctDescription];
      v18 = 138543618;
      v19 = logProem;
      v20 = 2114;
      v21 = succinctDescription;
      _os_log_impl(&dword_1A89DD000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Launch assertion invalidated: %{public}@", &v18, 0x16u);
    }

    [(FBWorkspace *)self _dropLaunchAssertion];
  }

  else if (lock_lifeAssertion == assertionCopy)
  {
    v12 = FBLogProcessWorkspace(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      logProem2 = [(FBProcess *)WeakRetained logProem];
      succinctDescription2 = [errorCopy succinctDescription];
      v18 = 138543618;
      v19 = logProem2;
      v20 = 2114;
      v21 = succinctDescription2;
      _os_log_impl(&dword_1A89DD000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Workspace assertion invalidated: %{public}@", &v18, 0x16u);
    }
  }
}

- (void)assertionWillInvalidate:(id)invalidate
{
  v14 = *MEMORY[0x1E69E9840];
  invalidateCopy = invalidate;
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_weak_process);
  lock_lifeAssertion = self->_lock_lifeAssertion;
  lock_connectAssertion = self->_lock_connectAssertion;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_connectAssertion == invalidateCopy)
  {
    v9 = FBLogProcessWorkspace(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      logProem = [(FBProcess *)WeakRetained logProem];
      v12 = 138543362;
      v13 = logProem;
      v11 = "%{public}@ Launch assertion will expire.";
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (lock_lifeAssertion == invalidateCopy)
  {
    v9 = FBLogProcessWorkspace(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      logProem = [(FBProcess *)WeakRetained logProem];
      v12 = 138543362;
      v13 = logProem;
      v11 = "%{public}@ Workspace assertion will expire.";
LABEL_7:
      _os_log_impl(&dword_1A89DD000, v9, OS_LOG_TYPE_DEFAULT, v11, &v12, 0xCu);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
}

- (id)_acquireAssertionForReason:(uint64_t)reason withState:
{
  if (self)
  {
    v4 = *(self + 96);
    v5 = MEMORY[0x1E696AD98];
    v6 = a2;
    v7 = [v5 numberWithUnsignedInt:reason];
    v8 = [v4 acquireForReason:v6 withContext:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_setIncomingConnection:(uint64_t)connection
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (connection)
  {
    os_unfair_lock_lock((connection + 136));
    WeakRetained = objc_loadWeakRetained((connection + 16));
    os_unfair_lock_assert_owner((connection + 136));
    OUTLINED_FUNCTION_12_0((connection + 142));
    if (v6)
    {
      v7 = FBLogProcessWorkspace(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        logProem = [(FBProcess *)WeakRetained logProem];
        *buf = 138543362;
        v13 = logProem;
        _os_log_error_impl(&dword_1A89DD000, v7, OS_LOG_TYPE_ERROR, "%{public}@ attempted to assign a new connection to an invalidated workspace server.", buf, 0xCu);
      }

      serviceQueue = [*(connection + 24) serviceQueue];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __38__FBWorkspace__setIncomingConnection___block_invoke;
      v10[3] = &unk_1E783B580;
      v11 = v3;
      [serviceQueue performAfter:v10 withBlock:0.1];
    }

    else
    {
      [(FBWorkspaceIncomingConnection *)*(connection + 32) workspaceLock_setConnection:v3];
    }

    os_unfair_lock_unlock((connection + 136));
  }
}

- (void)_initWithDispatcher:(char *)a1 process:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"process"];
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

- (void)_initWithDispatcher:(char *)a1 process:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"dispatcher"];
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

- (void)sendActions:(uint64_t)a1 .cold.1(uint64_t a1, char *a2)
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

- (void)_sceneForIdentity:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:FBSSceneIdentityClass]"];
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

- (void)_sceneForIdentity:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
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

- (void)_unregisterSceneForHost:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:FBSSceneIdentityClass]"];
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

- (void)_unregisterSceneForHost:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
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

- (void)_handleSceneRequest:.cold.1()
{
  v0 = [MEMORY[0x1E698F490] currentContext];
  v1 = [v0 remoteProcess];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_handleSceneRequest:.cold.2()
{
  v0 = [MEMORY[0x1E698F490] currentContext];
  v1 = [v0 remoteProcess];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_handleSceneRequest:.cold.3()
{
  v0 = [MEMORY[0x1E698F490] currentContext];
  v1 = [v0 remoteProcess];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_noteProcessBootstrapped:(char *)a1 withHandle:assertion:outgoingEndpointPromise:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"process == _weak_process"];
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

- (void)_noteProcessBootstrapped:withHandle:assertion:outgoingEndpointPromise:.cold.2()
{
  OUTLINED_FUNCTION_8_0();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8);
}

- (void)_noteProcessBootstrapped:withHandle:assertion:outgoingEndpointPromise:.cold.3()
{
  OUTLINED_FUNCTION_8_0();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8);
}

- (void)_noteProcessBootstrapped:(char *)a1 withHandle:assertion:outgoingEndpointPromise:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"workspace assertion but no workspace state"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    LODWORD(v10) = 138544642;
    *(&v10 + 4) = a1;
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, DWORD2(v10));
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_noteProcessBootstrapped:(char *)a1 withHandle:assertion:outgoingEndpointPromise:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"endpointPromise"];
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

- (void)_enableLegacyRequests:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"process == _weak_process"];
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

- (void)_enableLegacyRequests:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  os_unfair_lock_lock((a1 + 136));
  v4 = *(a1 + 56);
  os_unfair_lock_unlock((a1 + 136));
  if (v4)
  {
    v5 = +[FBProcess calloutQueue];
    *a2 = MEMORY[0x1E69E9820];
    a2[1] = 3221225472;
    a2[2] = __37__FBWorkspace__enableLegacyRequests___block_invoke;
    a2[3] = &unk_1E783B580;
    a2[4] = a1;
    dispatch_async(v5, a2);
  }
}

- (void)_noteProcessDidInvalidate:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"process == _weak_process"];
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

- (void)_terminateGracefully:(char *)a1 withTransitionContext:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"process == _weak_process"];
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

- (void)_terminateGracefully:(void *)a3 withTransitionContext:.cold.2(uint64_t a1, id *a2, void *a3)
{
  os_unfair_lock_lock((a1 + 136));
  os_unfair_lock_assert_owner((a1 + 136));
  OUTLINED_FUNCTION_12_0((a1 + 142));
  if (!v6)
  {
    v7 = *(a1 + 32);
    *a2 = MEMORY[0x1E69E9820];
    a2[1] = 3221225472;
    a2[2] = __58__FBWorkspace__terminateGracefully_withTransitionContext___block_invoke;
    a2[3] = &unk_1E783C1C0;
    a2[4] = a3;
    [(FBWorkspaceConnection *)v7 workspaceLock_enqueueConnectBlock:a2];
  }

  os_unfair_lock_unlock((a1 + 136));
}

- (void)_queue_unverifiedOutgoingConnection:didError:.cold.1()
{
  OUTLINED_FUNCTION_8_0();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8);
}

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:FBSSceneIdentityClass]"];
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

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:FBSSceneSpecificationClass]"];
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

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:FBSSceneSettingsClass]"];
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

- (void)registerHost:settings:initialClientSettings:fromRemnant:error:.cold.4()
{
  OUTLINED_FUNCTION_8_0();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8);
}

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:FBSSceneClientSettingsClass]"];
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

- (void)registerHost:settings:initialClientSettings:fromRemnant:error:.cold.6()
{
  OUTLINED_FUNCTION_8_0();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8);
}

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.7(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:FBSceneRemnantClass]"];
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

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.8(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"remnant doesn't match this workspace"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    LODWORD(v10) = 138544642;
    *(&v10 + 4) = a1;
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, DWORD2(v10));
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.9(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"specification must match the remnant"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    LODWORD(v10) = 138544642;
    *(&v10 + 4) = a1;
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, DWORD2(v10));
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.10(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot create a scene from an invalidated remnant"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    LODWORD(v10) = 138544642;
    *(&v10 + 4) = a1;
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, DWORD2(v10));
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHost:settings:initialClientSettings:fromRemnant:error:.cold.11()
{
  OUTLINED_FUNCTION_8_0();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8);
}

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.12(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"how could you call createWithRemnant: if we haven't made any remnants"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    LODWORD(v10) = 138544642;
    *(&v10 + 4) = a1;
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, DWORD2(v10));
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHost:settings:initialClientSettings:fromRemnant:error:.cold.13()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_15();
  v2 = 0;
  _os_log_error_impl(&dword_1A89DD000, v0, OS_LOG_TYPE_ERROR, "invalid remnant specified: remnant=%{public}@ connection=%{public}@", v1, 0x16u);
}

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.14(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"internal state error : connection is invalidated"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    LODWORD(v10) = 138544642;
    *(&v10 + 4) = a1;
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, DWORD2(v10));
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.15(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
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

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.16(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
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

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.17(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
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

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.18(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
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

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.19(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"host"];
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

- (void)handshakeWithRemnants:.cold.3()
{
  OUTLINED_FUNCTION_8_0();
  v7 = *MEMORY[0x1E69E9840];
  v3 = [v2 debugDescription];
  v4 = [MEMORY[0x1E698F490] currentContext];
  v5 = [v4 remoteToken];
  [v1 count];
  OUTLINED_FUNCTION_8_1();
  _os_log_fault_impl(&dword_1A89DD000, v0, OS_LOG_TYPE_FAULT, "double handshake detected : process=%@ remote=%@ remnants=%u", v6, 0x1Cu);
}

- (void)handshakeWithRemnants:.cold.4()
{
  OUTLINED_FUNCTION_8_0();
  v7 = *MEMORY[0x1E69E9840];
  v3 = [v2 debugDescription];
  v4 = [MEMORY[0x1E698F490] currentContext];
  v5 = [v4 remoteToken];
  [v1 count];
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(&dword_1A89DD000, v0, OS_LOG_TYPE_ERROR, "ignoring handshake for unknown connection : process=%@ remote=%@ remnants=%u", v6, 0x1Cu);
}

- (void)sceneID:didReceiveActions:forExtension:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_15();
  v3 = v0;
  _os_log_error_impl(&dword_1A89DD000, v1, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to deliver actions to extension %{public}@ because that class does not exist.", v2, 0x16u);
}

@end