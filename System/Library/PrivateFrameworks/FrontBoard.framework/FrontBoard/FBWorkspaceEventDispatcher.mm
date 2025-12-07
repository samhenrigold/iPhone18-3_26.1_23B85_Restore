@interface FBWorkspaceEventDispatcher
+ (uint64_t)callOutQueue;
- (BOOL)canCreateLocalSceneWithIdentity:(uint64_t)identity;
- (FBWorkspaceEventDispatcher)init;
- (id)_initWithDomain:(id *)domain;
- (id)_initWithDomain:(void *)domain connectionStore:(void *)store preregisteredWorkspaces:;
- (id)registerSourceWithProcessHandle:(uint64_t)handle;
- (id)registerTarget:(uint64_t)target;
- (uint64_t)domain;
- (uint64_t)handleSceneRequest:(void *)request fromSource:;
- (void)_callOutQueue_dispatchHandshakeFromSource:(void *)source toTarget:;
- (void)_callOutQueue_dispatchSceneRequestsFromSource:(void *)source toTarget:;
- (void)_callOutQueue_handleSceneRequest:(void *)request fromSource:;
- (void)_callOutQueue_noteHandshakeFromSource:(void *)source withRemnants:;
- (void)_noteReceivedInvalidationHandlerForAssertion:(uint64_t)assertion;
- (void)_noteSourceDidInvalidate:(void *)invalidate withPIDNumber:;
- (void)dealloc;
- (void)handleLocalSceneRequest:(uint64_t)request;
- (void)noteHandshakeFromSource:(void *)source withRemnants:;
@end

@implementation FBWorkspaceEventDispatcher

- (uint64_t)domain
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

+ (uint64_t)callOutQueue
{
  objc_opt_self();
  v0 = MEMORY[0x1E698F4D0];

  return [v0 mainQueue];
}

- (FBWorkspaceEventDispatcher)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on FBWorkspaceEventDispatcher"];
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
    v16 = @"FBWorkspaceEventDispatcher.m";
    v17 = 1024;
    v18 = 65;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)_initWithDomain:(void *)domain connectionStore:(void *)store preregisteredWorkspaces:
{
  v67 = *MEMORY[0x1E69E9840];
  v8 = a2;
  domainCopy = domain;
  storeCopy = store;
  v45 = v8;
  if (self)
  {
    v9 = v8;
    if (!v9)
    {
      [FBWorkspaceEventDispatcher _initWithDomain:? connectionStore:? preregisteredWorkspaces:?];
    }

    v10 = v9;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBWorkspaceEventDispatcher _initWithDomain:v10 connectionStore:sel__initWithDomain_connectionStore_preregisteredWorkspaces_ preregisteredWorkspaces:?];
    }

    v11 = domainCopy;
    if (!v11)
    {
      [FBWorkspaceEventDispatcher _initWithDomain:? connectionStore:? preregisteredWorkspaces:?];
    }

    v12 = v11;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBWorkspaceEventDispatcher _initWithDomain:v12 connectionStore:sel__initWithDomain_connectionStore_preregisteredWorkspaces_ preregisteredWorkspaces:?];
    }

    v13 = storeCopy;
    if (!v13)
    {
      [FBWorkspaceEventDispatcher _initWithDomain:? connectionStore:? preregisteredWorkspaces:?];
    }

    v14 = v13;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBWorkspaceEventDispatcher _initWithDomain:v14 connectionStore:sel__initWithDomain_connectionStore_preregisteredWorkspaces_ preregisteredWorkspaces:?];
    }

    v60.receiver = self;
    v60.super_class = FBWorkspaceEventDispatcher;
    v15 = objc_msgSendSuper2(&v60, sel_init);
    val = v15;
    if (v15)
    {
      objc_storeStrong(v15 + 1, a2);
      objc_storeStrong(val + 2, domain);
      v16 = [v14 copy];
      v17 = val[3];
      val[3] = v16;

      state = [(FBWorkspaceConnectionsStateStore *)val[2] state];
      processIdentifiers = [state processIdentifiers];

      v19 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0x10000 valueOptions:517];
      v20 = val[5];
      val[5] = v19;

      v21 = [MEMORY[0x1E696AB50] set];
      v22 = val[6];
      val[6] = v21;

      *(val + 18) = 0;
      lock = (val + 9);
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v24 = val[4];
      val[4] = dictionary;

      v25 = objc_opt_new();
      v26 = val[8];
      val[8] = v25;

      v49 = [processIdentifiers count];
      if (v49)
      {
        objc_initWeak(&location, val);
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __86__FBWorkspaceEventDispatcher__initWithDomain_connectionStore_preregisteredWorkspaces___block_invoke;
        v57[3] = &unk_1E783B350;
        objc_copyWeak(&v58, &location);
        v27 = [v57 copy];
        os_unfair_lock_lock(lock);
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        obj = processIdentifiers;
        v28 = [obj countByEnumeratingWithState:&v53 objects:v66 count:16];
        if (v28)
        {
          v29 = *v54;
          do
          {
            v30 = 0;
            do
            {
              if (*v54 != v29)
              {
                objc_enumerationMutation(obj);
              }

              v31 = *(*(&v53 + 1) + 8 * v30);
              v32 = objc_alloc(MEMORY[0x1E69C7548]);
              v33 = [MEMORY[0x1E69C7640] targetWithPid:{objc_msgSend(v31, "rbs_pid")}];
              v34 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.frontboard" name:@"WorkspaceReconnect"];
              v65 = v34;
              v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
              v36 = [v32 initWithExplanation:@"com.apple.frontboard.workspace.reconnect" target:v33 attributes:v35];

              [v36 setInvalidationHandler:v27];
              v52 = 0;
              LODWORD(v35) = [v36 acquireWithError:&v52];
              v37 = v52;
              v38 = v37;
              if (v35)
              {
                v39 = val[7];
                if (!v39)
                {
                  v40 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v49];
                  v41 = val[7];
                  val[7] = v40;

                  v39 = val[7];
                }

                [v39 setObject:v36 forKey:v31];
                [val[8] addProcessIdentifier:v31];
              }

              else
              {
                v42 = FBLogProcessWorkspace(v37);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v62 = v31;
                  v63 = 2112;
                  v64 = v38;
                  _os_log_error_impl(&dword_1A89DD000, v42, OS_LOG_TYPE_ERROR, "failed to acquire restart assertion on %@ : %@", buf, 0x16u);
                }

                [v36 invalidate];
              }

              ++v30;
            }

            while (v28 != v30);
            v28 = [obj countByEnumeratingWithState:&v53 objects:v66 count:16];
          }

          while (v28);
        }

        [(FBWorkspaceConnectionsStateStore *)val[2] setState:?];
        os_unfair_lock_unlock(lock);

        objc_destroyWeak(&v58);
        objc_destroyWeak(&location);
      }

      [FBWorkspaceEventDispatcher _initWithDomain:processIdentifiers connectionStore:? preregisteredWorkspaces:?];
    }
  }

  else
  {
    val = 0;
  }

  return val;
}

void __86__FBWorkspaceEventDispatcher__initWithDomain_connectionStore_preregisteredWorkspaces___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(FBWorkspaceEventDispatcher *)WeakRetained _noteReceivedInvalidationHandlerForAssertion:v3];
}

- (id)registerSourceWithProcessHandle:(uint64_t)handle
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (handle)
  {
    v5 = v3;
    if (!v5)
    {
      [FBWorkspaceEventDispatcher registerSourceWithProcessHandle:?];
    }

    v6 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(FBWorkspaceEventDispatcher *)v6 registerSourceWithProcessHandle:?];
    }

    v7 = [v6 pid];
    if (v7 <= 0)
    {
      [(FBWorkspaceEventDispatcher *)v6 registerSourceWithProcessHandle:?];
    }

    v8 = v7;
    v9 = [MEMORY[0x1E696AD98] numberWithInt:v7];
    os_unfair_lock_lock((handle + 72));
    v10 = [*(handle + 32) objectForKey:v9];
    if (v10)
    {
      if (v8 != getpid())
      {
        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"already have a source registered for %@: %@", v9, v10];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [(FBWorkspaceEventDispatcher *)sel_registerSourceWithProcessHandle_ registerSourceWithProcessHandle:handle];
        }

        v23 = v22;
        [v22 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x1A89EE398);
      }

      v11 = 0;
      v12 = 0;
    }

    else
    {
      objc_initWeak(&location, handle);
      v13 = [FBWorkspaceEventDispatcherSource alloc];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __62__FBWorkspaceEventDispatcher_registerSourceWithProcessHandle___block_invoke;
      v24[3] = &unk_1E783B3C8;
      objc_copyWeak(&v26, &location);
      v14 = v9;
      v25 = v14;
      v15 = [(FBWorkspaceEventDispatcherSource *)v13 _initWithProcessHandle:v6 invalidationBlock:v24];
      v10 = v15;
      v16 = *(handle + 32);
      v12 = v16 == 0;
      if (v16)
      {
        v11 = [*(handle + 56) objectForKey:v14];
        if (v11)
        {
          [*(handle + 56) removeObjectForKey:v14];
          if (![*(handle + 56) count])
          {
            v17 = *(handle + 56);
            *(handle + 56) = 0;
          }
        }

        v18 = FBLogProcessWorkspace([*(handle + 32) setObject:v10 forKey:v14]);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v29 = v14;
          v30 = 2114;
          v31 = v10;
          _os_log_impl(&dword_1A89DD000, v18, OS_LOG_TYPE_DEFAULT, "Registering Source for %{public}@ : %{public}@", buf, 0x16u);
        }

        rbs_pid = [v14 rbs_pid];
        if (rbs_pid != getpid() && [*(handle + 64) addProcessIdentifier:v14])
        {
          [(FBWorkspaceConnectionsStateStore *)*(handle + 16) setState:?];
        }
      }

      else
      {
        v20 = FBLogProcessWorkspace(v15);
        [(FBWorkspaceEventDispatcher *)v20 registerSourceWithProcessHandle:v14, v10];
        v11 = 0;
      }

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }

    os_unfair_lock_unlock((handle + 72));
    [v11 invalidate];
    if (v12)
    {
      [v10 invalidate];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must call _invalidateWithCompletion: before dealloc"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    LODWORD(v10) = 138544642;
    *(&v10 + 4) = self;
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, DWORD2(v10));
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (id)registerTarget:(uint64_t)target
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (target)
  {
    objc_opt_self();
    mainQueue = [MEMORY[0x1E698F4D0] mainQueue];
    [mainQueue assertBarrierOnQueue];

    if (!v3)
    {
      [FBWorkspaceEventDispatcher registerTarget:?];
    }

    workspaceIdentifier = [v3 workspaceIdentifier];
    objc_initWeak(&location, v3);
    v6 = objc_alloc(MEMORY[0x1E698E778]);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __45__FBWorkspaceEventDispatcher_registerTarget___block_invoke;
    v24[3] = &unk_1E783B378;
    objc_copyWeak(v26, &location);
    v24[4] = target;
    v7 = workspaceIdentifier;
    v25 = v7;
    v26[1] = sel_registerTarget_;
    v8 = [v6 initWithIdentifier:@"com.apple.frontboard.workspace-events.registration.target" forReason:v7 invalidationBlock:v24];
    os_unfair_lock_lock((target + 72));
    v9 = [*(target + 40) objectForKey:v7];
    if (v9)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"already have a target registered for %@: %@", v7, v9];
      v15 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = NSStringFromSelector(sel_registerTarget_);
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        *buf = 138544642;
        v29 = v17;
        v30 = 2114;
        v31 = v19;
        v32 = 2048;
        targetCopy = target;
        v34 = 2114;
        v35 = @"FBWorkspaceEventDispatcher.m";
        v36 = 1024;
        v37 = 196;
        v38 = 2114;
        v39 = v14;
        _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v20 = v14;
      [v14 UTF8String];
      _bs_set_crash_log_message();
      [FBWorkspaceEventDispatcher registerTarget:];
    }

    v10 = FBLogProcessWorkspace([*(target + 40) setObject:v3 forKey:v7]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v29 = v7;
      v30 = 2114;
      v31 = v3;
      _os_log_impl(&dword_1A89DD000, v10, OS_LOG_TYPE_DEFAULT, "Registering Target for %{public}@: %{public}@", buf, 0x16u);
    }

    os_unfair_lock_unlock((target + 72));
    [*(target + 48) addObject:v7];
    objc_opt_self();
    mainQueue2 = [MEMORY[0x1E698F4D0] mainQueue];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __45__FBWorkspaceEventDispatcher_registerTarget___block_invoke_80;
    v21[3] = &unk_1E783B3A0;
    objc_copyWeak(&v23, &location);
    v21[4] = target;
    v12 = v7;
    v22 = v12;
    [mainQueue2 performAsync:v21];

    objc_destroyWeak(&v23);
    objc_destroyWeak(v26);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __45__FBWorkspaceEventDispatcher_registerTarget___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  os_unfair_lock_lock((*(a1 + 32) + 72));
  if (!WeakRetained)
  {
    __45__FBWorkspaceEventDispatcher_registerTarget___block_invoke_cold_2(a1, (a1 + 32));
  }

  v5 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];

  if (v5 != WeakRetained)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = *(a1 + 40);
    v11 = [*(*(a1 + 32) + 40) objectForKey:v10];
    v12 = [v9 stringWithFormat:@"target mismatch for %@ : actual=%p expected=%p", v10, v11, WeakRetained];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __45__FBWorkspaceEventDispatcher_registerTarget___block_invoke_cold_1(a1, (a1 + 32), v12);
    }

    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A89EEAB4);
  }

  v7 = FBLogProcessWorkspace(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    *buf = 138543362;
    v14 = v8;
    _os_log_impl(&dword_1A89DD000, v7, OS_LOG_TYPE_DEFAULT, "Removing target registration for workspaceIdentifier: %{public}@", buf, 0xCu);
  }

  [*(*(a1 + 32) + 40) removeObjectForKey:*(a1 + 40)];
  os_unfair_lock_unlock((*(a1 + 32) + 72));
}

void __45__FBWorkspaceEventDispatcher_registerTarget___block_invoke_80(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  os_unfair_lock_lock((*(a1 + 32) + 72));
  if (WeakRetained && ([*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)], v3 = objc_claimAutoreleasedReturnValue(), v3, v3 == WeakRetained))
  {
    v5 = [*(*(a1 + 32) + 32) allValues];
    v4 = [v5 copy];
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock((*(a1 + 32) + 72));
  [*(*(a1 + 32) + 48) removeObject:*(a1 + 40)];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(FBWorkspaceEventDispatcher *)*(a1 + 32) _callOutQueue_dispatchHandshakeFromSource:WeakRetained toTarget:?];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
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

        [(FBWorkspaceEventDispatcher *)*(a1 + 32) _callOutQueue_dispatchSceneRequestsFromSource:WeakRetained toTarget:?];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

void __62__FBWorkspaceEventDispatcher_registerSourceWithProcessHandle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(FBWorkspaceEventDispatcher *)WeakRetained _noteSourceDidInvalidate:v3 withPIDNumber:*(a1 + 32)];
}

- (void)_noteSourceDidInvalidate:(void *)invalidate withPIDNumber:
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  invalidateCopy = invalidate;
  if (self)
  {
    os_unfair_lock_lock((self + 72));
    v7 = *(self + 32);
    if (v7)
    {
      v8 = [v7 objectForKey:invalidateCopy];

      if (v8 != v5)
      {
        v26 = MEMORY[0x1E696AEC0];
        v27 = [*(self + 32) objectForKey:invalidateCopy];
        v28 = [v26 stringWithFormat:@"source mismatch for %@ : actual=%p expected=%p", invalidateCopy, v27, v5];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [FBWorkspaceEventDispatcher _noteSourceDidInvalidate:self withPIDNumber:?];
        }

        [v28 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x1A89EF03CLL);
      }

      v10 = FBLogProcessWorkspace(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        processHandle = [v5 processHandle];
        *buf = 138543362;
        v40 = processHandle;
        _os_log_impl(&dword_1A89DD000, v10, OS_LOG_TYPE_DEFAULT, "Removing source registration for processHandle: %{public}@", buf, 0xCu);
      }

      [*(self + 32) removeObjectForKey:invalidateCopy];
      v12 = objc_opt_new();
      v13 = *(self + 64);
      *(self + 64) = v12;

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v14 = *(self + 32);
      v15 = [v14 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v34;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v34 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v33 + 1) + 8 * i);
            rbs_pid = [v19 rbs_pid];
            if (rbs_pid != getpid())
            {
              [*(self + 64) addProcessIdentifier:v19];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v16);
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v21 = *(self + 56);
      v22 = [v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v30;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v30 != v24)
            {
              objc_enumerationMutation(v21);
            }

            [*(self + 64) addProcessIdentifier:*(*(&v29 + 1) + 8 * j)];
          }

          v23 = [v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v23);
      }

      [(FBWorkspaceConnectionsStateStore *)*(self + 16) setState:?];
    }

    os_unfair_lock_unlock((self + 72));
  }
}

- (void)noteHandshakeFromSource:(void *)source withRemnants:
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  sourceCopy = source;
  if (self)
  {
    v7 = v5;
    if (!v7)
    {
      [FBWorkspaceEventDispatcher noteHandshakeFromSource:? withRemnants:?];
    }

    v8 = v7;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBWorkspaceEventDispatcher noteHandshakeFromSource:v8 withRemnants:sel_noteHandshakeFromSource_withRemnants_];
    }

    v9 = sourceCopy;
    if (!v9)
    {
      [FBWorkspaceEventDispatcher noteHandshakeFromSource:? withRemnants:?];
    }

    v10 = v9;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBWorkspaceEventDispatcher noteHandshakeFromSource:v10 withRemnants:sel_noteHandshakeFromSource_withRemnants_];
    }

    v18 = sel_noteHandshakeFromSource_withRemnants_;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          if (!v16)
          {
            [FBWorkspaceEventDispatcher noteHandshakeFromSource:v18 withRemnants:?];
          }

          v17 = v16;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [FBWorkspaceEventDispatcher noteHandshakeFromSource:v17 withRemnants:v18];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:{16, v18}];
      }

      while (v13);
    }

    [(FBWorkspaceEventDispatcher *)v11 noteHandshakeFromSource:v19 withRemnants:self, v8];
  }
}

- (uint64_t)handleSceneRequest:(void *)request fromSource:
{
  v5 = a2;
  requestCopy = request;
  if (self)
  {
    v7 = v5;
    if (!v7)
    {
      [FBWorkspaceEventDispatcher handleSceneRequest:? fromSource:?];
    }

    v8 = v7;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBWorkspaceEventDispatcher handleSceneRequest:v8 fromSource:sel_handleSceneRequest_fromSource_];
    }

    v9 = requestCopy;
    if (!v9)
    {
      [FBWorkspaceEventDispatcher handleSceneRequest:? fromSource:?];
    }

    v10 = v9;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBWorkspaceEventDispatcher handleSceneRequest:v10 fromSource:sel_handleSceneRequest_fromSource_];
    }

    targetIdentifier = [v8 targetIdentifier];
    v12 = [*(self + 24) objectForKey:targetIdentifier];

    if (targetIdentifier && (v12 || ([v8 requiresTargetPreregistration] & 1) == 0))
    {
      objc_opt_self();
      mainQueue = [MEMORY[0x1E698F4D0] mainQueue];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __60__FBWorkspaceEventDispatcher_handleSceneRequest_fromSource___block_invoke;
      v15[3] = &unk_1E783B300;
      v15[4] = self;
      v16 = v8;
      v17 = v10;
      [mainQueue performAsync:v15];

      self = 1;
    }

    else
    {
      self = 0;
    }
  }

  return self;
}

uint64_t __81__FBWorkspaceEventDispatcher__callOutQueue_dispatchHandshakeFromSource_toTarget___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 definition];
  v4 = [v3 identity];
  v5 = [v4 internalWorkspaceIdentifier];
  v6 = [*(a1 + 32) workspaceIdentifier];
  v7 = [v5 isEqualToString:v6];

  return v7;
}

- (id)_initWithDomain:(id *)domain
{
  domainCopy = domain;
  if (domain)
  {
    v3 = a2;
    v4 = [FBWorkspaceConnectionsStateStore alloc];
    reconnectShmemIdentifier = [(FBWorkspaceDomain *)v3 reconnectShmemIdentifier];
    v6 = [(FBWorkspaceConnectionsStateStore *)v4 _initWithIdentifier:reconnectShmemIdentifier];
    preregisteredWorkspaces = [(FBWorkspaceDomain *)v3 preregisteredWorkspaces];
    v8 = [(FBWorkspaceEventDispatcher *)domainCopy _initWithDomain:v3 connectionStore:v6 preregisteredWorkspaces:preregisteredWorkspaces];

    domainCopy = v8;
  }

  return domainCopy;
}

- (void)_noteReceivedInvalidationHandlerForAssertion:(uint64_t)assertion
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (assertion)
  {
    os_unfair_lock_lock((assertion + 72));
    if (*(assertion + 32))
    {
      v4 = *(assertion + 56);
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __75__FBWorkspaceEventDispatcher__noteReceivedInvalidationHandlerForAssertion___block_invoke;
      v42[3] = &unk_1E783B3F0;
      v43 = v3;
      v5 = [v4 keysOfEntriesPassingTest:v42];
      if ([v5 count])
      {
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v6 = v5;
        v7 = [v6 countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v39;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v39 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = [*(assertion + 56) removeObjectForKey:*(*(&v38 + 1) + 8 * i)];
            }

            v8 = OUTLINED_FUNCTION_11(v11, v12, &v38, v46);
          }

          while (v8);
        }

        v13 = objc_opt_new();
        v14 = *(assertion + 64);
        *(assertion + 64) = v13;

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v15 = *(assertion + 32);
        v16 = [v15 countByEnumeratingWithState:&v34 objects:v45 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v35;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v35 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v34 + 1) + 8 * j);
              rbs_pid = [v20 rbs_pid];
              v22 = getpid();
              if (rbs_pid != v22)
              {
                v22 = [*(assertion + 64) addProcessIdentifier:v20];
              }
            }

            v17 = OUTLINED_FUNCTION_11(v22, v23, &v34, v45);
          }

          while (v17);
        }

        OUTLINED_FUNCTION_10();
        v24 = *(assertion + 56);
        v25 = [v24 countByEnumeratingWithState:v32 objects:v44 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v33;
          do
          {
            for (k = 0; k != v26; ++k)
            {
              if (*v33 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = [*(assertion + 64) addProcessIdentifier:*(v32[1] + 8 * k)];
            }

            v26 = OUTLINED_FUNCTION_11(v29, v30, v32, v44);
          }

          while (v26);
        }

        [(FBWorkspaceConnectionsStateStore *)*(assertion + 16) setState:?];
      }

      if (![*(assertion + 56) count])
      {
        v31 = *(assertion + 56);
        *(assertion + 56) = 0;
      }
    }

    os_unfair_lock_unlock((assertion + 72));
  }
}

- (void)_callOutQueue_dispatchHandshakeFromSource:(void *)source toTarget:
{
  v5 = a2;
  sourceCopy = source;
  if (self)
  {
    objc_opt_self();
    mainQueue = [MEMORY[0x1E698F4D0] mainQueue];
    [mainQueue assertBarrierOnQueue];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __81__FBWorkspaceEventDispatcher__callOutQueue_dispatchHandshakeFromSource_toTarget___block_invoke;
    v11[3] = &unk_1E783B418;
    v12 = sourceCopy;
    v8 = [v5 consumeRemnantsPassingTest:v11];
    if (v8)
    {
      v9 = [FBSceneClientHandshake alloc];
      processHandle = [v5 processHandle];
      [(FBSceneClientHandshake *)v9 _initWithHandle:processHandle remnants:v8];
      [OUTLINED_FUNCTION_7() didReceiveHandshake:?];
    }
  }
}

- (void)_callOutQueue_dispatchSceneRequestsFromSource:(void *)source toTarget:
{
  v5 = a2;
  sourceCopy = source;
  if (self)
  {
    objc_opt_self();
    mainQueue = [MEMORY[0x1E698F4D0] mainQueue];
    [mainQueue assertBarrierOnQueue];

    workspaceIdentifier = [sourceCopy workspaceIdentifier];
    v9 = [v5 dequeueSceneRequestsForTargetIdentifier:workspaceIdentifier];

    v18 = OUTLINED_FUNCTION_13(v10, v11, v12, v13, v14, v15, v16, v17, v32, v34, v36, v38, v40, v42, v44, v46, v48);
    if (v18)
    {
      v19 = v18;
      v20 = *v37;
      do
      {
        v21 = 0;
        do
        {
          if (*v37 != v20)
          {
            objc_enumerationMutation(v9);
          }

          v22 = *(v35 + 8 * v21);
          processHandle = [v5 processHandle];
          [sourceCopy didReceiveSceneRequest:v22 fromHandle:processHandle];

          ++v21;
        }

        while (v19 != v21);
        v19 = OUTLINED_FUNCTION_13(v24, v25, v26, v27, v28, v29, v30, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49);
      }

      while (v19);
    }
  }
}

- (void)_callOutQueue_noteHandshakeFromSource:(void *)source withRemnants:
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a2;
  sourceCopy = source;
  if (self)
  {
    os_unfair_lock_lock((self + 72));
    v7 = MEMORY[0x1E696AD98];
    processHandle = [v5 processHandle];
    [v7 numberWithInt:{objc_msgSend(processHandle, "rbs_pid")}];
    objc_claimAutoreleasedReturnValue();
    v9 = [OUTLINED_FUNCTION_7() objectForKey:?];

    if (v9 == v5)
    {
      v21 = [v5 noteHandshakeWithRemnants:sourceCopy];
      v22 = NSAllMapTableValues(*(self + 40));
      v13 = [v22 copy];

      os_unfair_lock_unlock((self + 72));
      if (v21)
      {
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v14 = v13;
        v24 = [v14 countByEnumeratingWithState:&v35 objects:v42 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v36;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v36 != v26)
              {
                objc_enumerationMutation(v14);
              }

              v28 = *(*(&v35 + 1) + 8 * i);
              v29 = *(self + 48);
              workspaceIdentifier = [v28 workspaceIdentifier];
              LOBYTE(v29) = [v29 containsObject:workspaceIdentifier];

              if ((v29 & 1) == 0)
              {
                [(FBWorkspaceEventDispatcher *)self _callOutQueue_dispatchHandshakeFromSource:v5 toTarget:v28];
              }
            }

            v25 = OUTLINED_FUNCTION_11(v31, v32, &v35, v42);
          }

          while (v25);
        }

        v13 = v14;
        goto LABEL_25;
      }

      v11 = FBLogProcessWorkspace(v23);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A89DD000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring double local source handshake", buf, 2u);
      }
    }

    else
    {
      os_unfair_lock_unlock((self + 72));
      v11 = FBLogProcessWorkspace(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        processHandle2 = [v5 processHandle];
        *buf = 67240192;
        rbs_pid = [processHandle2 rbs_pid];
        _os_log_impl(&dword_1A89DD000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring invalid source handshake for %{public}i", buf, 8u);
      }

      v13 = 0;
    }

    OUTLINED_FUNCTION_10();
    v14 = sourceCopy;
    v15 = [v14 countByEnumeratingWithState:v33 objects:v39 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v34;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(v14);
          }

          invalidate = [*(v33[1] + 8 * j) invalidate];
        }

        v16 = OUTLINED_FUNCTION_11(invalidate, v20, v33, v39);
      }

      while (v16);
    }

LABEL_25:
  }
}

- (void)_callOutQueue_handleSceneRequest:(void *)request fromSource:
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  requestCopy = request;
  if (self)
  {
    targetIdentifier = [v5 targetIdentifier];
    v8 = [*(self + 24) objectForKey:targetIdentifier];

    os_unfair_lock_lock((self + 72));
    v9 = *(self + 32);
    v10 = MEMORY[0x1E696AD98];
    processHandle = [requestCopy processHandle];
    v12 = [v10 numberWithInt:{objc_msgSend(processHandle, "rbs_pid")}];
    v13 = [v9 objectForKey:v12];

    if (v13 == requestCopy)
    {
      v17 = [*(self + 40) objectForKey:targetIdentifier];
      if (v8 | v17)
      {
        v18 = v17;
        [requestCopy enqueueSceneRequest:v5];
        os_unfair_lock_unlock((self + 72));
        if (v18)
        {
          v20 = *(self + 48);
          workspaceIdentifier = [v18 workspaceIdentifier];
          LOBYTE(v20) = [v20 containsObject:workspaceIdentifier];

          if ((v20 & 1) == 0)
          {
            [(FBWorkspaceEventDispatcher *)self _callOutQueue_dispatchSceneRequestsFromSource:requestCopy toTarget:v18];
          }

          goto LABEL_15;
        }

        if (v8)
        {
LABEL_14:
          v18 = 0;
LABEL_15:

          goto LABEL_16;
        }
      }

      else
      {
        os_unfair_lock_unlock((self + 72));
      }

      v15 = FBLogProcessWorkspace(v19);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v24 = targetIdentifier;
        _os_log_impl(&dword_1A89DD000, v15, OS_LOG_TYPE_DEFAULT, "Denying scene request because target workspace %{public}@ does not exist", buf, 0xCu);
      }
    }

    else
    {
      os_unfair_lock_unlock((self + 72));
      v15 = FBLogProcessWorkspace(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        processHandle2 = [requestCopy processHandle];
        *buf = 67240192;
        LODWORD(v24) = [processHandle2 rbs_pid];
        _os_log_impl(&dword_1A89DD000, v15, OS_LOG_TYPE_DEFAULT, "Ignoring scene request from invalid source registration for %{public}i", buf, 8u);
      }
    }

    v22 = FBSWorkspaceErrorCreate();
    [v5 invalidateWithError:v22];

    goto LABEL_14;
  }

LABEL_16:
}

- (BOOL)canCreateLocalSceneWithIdentity:(uint64_t)identity
{
  if (!identity)
  {
    return 0;
  }

  v3 = a2;
  objc_opt_self();
  mainQueue = [MEMORY[0x1E698F4D0] mainQueue];
  [mainQueue assertBarrierOnQueue];

  workspaceIdentifier = [v3 workspaceIdentifier];

  v6 = [*(identity + 24) objectForKey:workspaceIdentifier];

  os_unfair_lock_lock((identity + 72));
  v7 = MEMORY[0x1E696AD98];
  [MEMORY[0x1E696AD98] numberWithInt:getpid()];
  objc_claimAutoreleasedReturnValue();
  v8 = [OUTLINED_FUNCTION_7() objectForKey:?];

  if (v8)
  {
    v9 = [*(identity + 40) objectForKey:workspaceIdentifier];
    v10 = (v6 | v9) != 0;
  }

  else
  {
    v10 = 0;
  }

  os_unfair_lock_unlock((identity + 72));

  return v10;
}

- (void)handleLocalSceneRequest:(uint64_t)request
{
  v3 = a2;
  if (request)
  {
    objc_opt_self();
    mainQueue = [MEMORY[0x1E698F4D0] mainQueue];
    [mainQueue assertBarrierOnQueue];

    os_unfair_lock_lock((request + 72));
    v5 = *(request + 32);
    v6 = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
    v7 = [v5 objectForKey:v6];

    os_unfair_lock_unlock((request + 72));
    if (v7)
    {
      v11 = [MEMORY[0x1E695DFD8] set];
      [(FBWorkspaceEventDispatcher *)request _callOutQueue_noteHandshakeFromSource:v7 withRemnants:v11];

      [(FBWorkspaceEventDispatcher *)request _callOutQueue_handleSceneRequest:v3 fromSource:v7];
    }

    else
    {
      v9 = FBLogProcessWorkspace(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_1A89DD000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring scene request from local source as we've already been invalidated", v12, 2u);
      }

      v10 = FBSWorkspaceErrorCreate();
      [v3 invalidateWithError:v10];
    }
  }
}

- (void)_initWithDomain:(void *)a1 connectionStore:(char *)a2 preregisteredWorkspaces:.cold.1(void *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"domain", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v9 = OUTLINED_FUNCTION_8();
    v10 = NSStringFromClass(v9);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v12, v13, v14, v15, v17, v18, v19, v20);
  }

  v16 = v8;
  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithDomain:(void *)a1 connectionStore:(char *)a2 preregisteredWorkspaces:.cold.2(void *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"store", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v9 = OUTLINED_FUNCTION_8();
    v10 = NSStringFromClass(v9);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v12, v13, v14, v15, v17, v18, v19, v20);
  }

  v16 = v8;
  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithDomain:(void *)a1 connectionStore:(char *)a2 preregisteredWorkspaces:.cold.3(void *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"preregisteredWorkspaces", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v9 = OUTLINED_FUNCTION_8();
    v10 = NSStringFromClass(v9);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v12, v13, v14, v15, v17, v18, v19, v20);
  }

  v16 = v8;
  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithDomain:(char *)a1 connectionStore:preregisteredWorkspaces:.cold.4(char *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"preregisteredWorkspaces", v4];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v6 = OUTLINED_FUNCTION_9();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v14, v15);
  }

  v13 = v5;
  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithDomain:(char *)a1 connectionStore:preregisteredWorkspaces:.cold.5(char *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"store", v4];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v6 = OUTLINED_FUNCTION_9();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v14, v15);
  }

  v13 = v5;
  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithDomain:(char *)a1 connectionStore:preregisteredWorkspaces:.cold.6(char *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"domain", v4];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v6 = OUTLINED_FUNCTION_9();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v14, v15);
  }

  v13 = v5;
  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithDomain:(uint64_t)a1 connectionStore:(void *)a2 preregisteredWorkspaces:.cold.7(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x1E69C75D0] currentProcess];
  v5 = [(FBWorkspaceEventDispatcher *)a1 registerSourceWithProcessHandle:v4];
}

- (void)registerSourceWithProcessHandle:(void *)a1 .cold.1(void *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"processHandle", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v9 = OUTLINED_FUNCTION_8();
    v10 = NSStringFromClass(v9);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v12, v13, v14, v15, v17, v18, v19, v20);
  }

  v16 = v8;
  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerSourceWithProcessHandle:(const char *)a1 .cold.2(const char *a1, uint64_t a2)
{
  v2 = NSStringFromSelector(a1);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  LODWORD(v10) = 138544642;
  *(&v10 + 4) = v2;
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, DWORD2(v10));
}

- (void)registerSourceWithProcessHandle:(uint64_t)a1 .cold.3(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid pid for %@", a1];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, v12, v13);
  }

  v11 = v3;
  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerSourceWithProcessHandle:(char *)a1 .cold.4(char *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"processHandle", v4];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v6 = OUTLINED_FUNCTION_9();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v14, v15);
  }

  v13 = v5;
  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerSourceWithProcessHandle:(uint64_t)a3 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    v7 = a2;
    v8 = 2114;
    v9 = a3;
    _os_log_impl(&dword_1A89DD000, a1, OS_LOG_TYPE_DEFAULT, "Immediately invalidating new source %{public}@ due to previous dispatcher invalidation : %{public}@", &v6, 0x16u);
  }
}

- (void)registerTarget:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"target"];
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

void __45__FBWorkspaceEventDispatcher_registerTarget___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
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
  *(&v14 + 2) = @"FBWorkspaceEventDispatcher.m";
  WORD5(v14) = 1024;
  HIDWORD(v14) = 185;
  LOWORD(v15) = 2114;
  *(&v15 + 2) = a3;
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, *v13, *&v13[8], *&v13[16], *a2, v14, v15, HIWORD(a3));
}

void __45__FBWorkspaceEventDispatcher_registerTarget___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"target for %@ dealloced before invalidation", *(a1 + 40)];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(*(a1 + 56));
    v5 = objc_opt_class();
    v13 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, v11, v12);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_noteSourceDidInvalidate:(const char *)a1 withPIDNumber:(uint64_t)a2 .cold.1(const char *a1, uint64_t a2)
{
  v2 = NSStringFromSelector(a1);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  LODWORD(v10) = 138544642;
  *(&v10 + 4) = v2;
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, DWORD2(v10));
}

- (void)noteHandshakeFromSource:(void *)a1 withRemnants:(char *)a2 .cold.1(void *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"source", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v9 = OUTLINED_FUNCTION_8();
    v10 = NSStringFromClass(v9);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v12, v13, v14, v15, v16, v17, v18, v19);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)noteHandshakeFromSource:(void *)a1 withRemnants:(char *)a2 .cold.2(void *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"remnants", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v9 = OUTLINED_FUNCTION_8();
    v10 = NSStringFromClass(v9);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v12, v13, v14, v15, v16, v17, v18, v19);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)noteHandshakeFromSource:(void *)a1 withRemnants:(char *)a2 .cold.3(void *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"remnant", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v9 = OUTLINED_FUNCTION_8();
    v10 = NSStringFromClass(v9);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v12, v13, v14, v15, v16, v17, v18, v19);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)noteHandshakeFromSource:(char *)a1 withRemnants:.cold.4(char *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"remnant", v4];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
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

- (void)noteHandshakeFromSource:(char *)a1 withRemnants:.cold.5(char *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"remnants", v4];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
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

- (void)noteHandshakeFromSource:(char *)a1 withRemnants:.cold.6(char *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"source", v4];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
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

- (void)noteHandshakeFromSource:(uint64_t)a3 withRemnants:(void *)a4 .cold.7(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  objc_opt_self();
  v8 = [MEMORY[0x1E698F4D0] mainQueue];
  *a2 = MEMORY[0x1E69E9820];
  *(a2 + 8) = 3221225472;
  *(a2 + 16) = __67__FBWorkspaceEventDispatcher_noteHandshakeFromSource_withRemnants___block_invoke;
  *(a2 + 24) = &unk_1E783B300;
  *(a2 + 32) = a3;
  *(a2 + 40) = a4;
  *(a2 + 48) = a1;
  [v8 performAsync:a2];
}

- (void)handleSceneRequest:(void *)a1 fromSource:(char *)a2 .cold.1(void *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"request", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v9 = OUTLINED_FUNCTION_8();
    v10 = NSStringFromClass(v9);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v12, v13, v14, v15, v16, v17, v18, v19);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)handleSceneRequest:(void *)a1 fromSource:(char *)a2 .cold.2(void *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"source", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v9 = OUTLINED_FUNCTION_8();
    v10 = NSStringFromClass(v9);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v12, v13, v14, v15, v16, v17, v18, v19);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)handleSceneRequest:(char *)a1 fromSource:.cold.3(char *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"source", v4];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
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

- (void)handleSceneRequest:(char *)a1 fromSource:.cold.4(char *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"request", v4];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
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

@end