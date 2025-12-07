@interface BSRBSService
+ (__CFString)debugDescriptionWithMultilinePrefix:(uint64_t)prefix;
+ (id)_sharedTestInstance;
+ (void)_sharedInstanceCreatingIfNecessary:(uint64_t)necessary;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)launchIdentifiersForMachName:(uint64_t)name;
- (id)registerMonitor:(uint64_t)monitor;
- (id)succinctDescription;
- (void)_callOutLock_noteEndpointsChangedForServices:(os_unfair_lock_s *)services;
- (void)service:(id)service didLoseInheritances:(id)inheritances;
- (void)service:(id)service didReceiveInheritances:(id)inheritances;
@end

@implementation BSRBSService

+ (void)_sharedInstanceCreatingIfNecessary:(uint64_t)necessary
{
  objc_opt_self();
  os_unfair_lock_lock(&_MergedGlobals_5);
  v3 = qword_1ED4A7BE8;
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = a2 == 0;
  }

  if (!v4)
  {
    v5 = [BSRBSService alloc];
    if (v5 && (v26.receiver = v5, v26.super_class = BSRBSService, v6 = objc_msgSendSuper2(&v26, sel_init), (v7 = v6) != 0))
    {
      v6[16] = 0;
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v9 = v7[2];
      v7[2] = dictionary;

      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      v11 = v7[3];
      v7[3] = dictionary2;

      dictionary3 = [MEMORY[0x1E695DF90] dictionary];
      v13 = v7[4];
      v7[4] = dictionary3;

      dictionary4 = [MEMORY[0x1E695DF90] dictionary];
      v15 = v7[5];
      v7[5] = dictionary4;

      *(v7 + 17) = 0;
      dictionary5 = [MEMORY[0x1E695DF90] dictionary];
      v17 = v7[7];
      v7[7] = dictionary5;

      v18 = v7;
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v19 = off_1ED4A7BF0;
      v31 = off_1ED4A7BF0;
      if (!off_1ED4A7BF0)
      {
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __getRBSServiceInitializeSymbolLoc_block_invoke;
        v27[3] = &unk_1E75200F8;
        v27[4] = &v28;
        __getRBSServiceInitializeSymbolLoc_block_invoke(v27);
        v19 = v29[3];
      }

      _Block_object_dispose(&v28, 8);
      if (!v19)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"RBSService *softlinkRBSServiceInitialize(id<RBSServiceDelegate>  _Nullable __strong)"];
        [currentHandler handleFailureInFunction:v24 file:@"BSRBSService.m" lineNumber:23 description:{@"%s", dlerror()}];

        __break(1u);
        return;
      }

      v20 = v19(v18);

      v21 = v18[1];
      v18[1] = v20;
    }

    else
    {
      v18 = 0;
    }

    v22 = qword_1ED4A7BE8;
    qword_1ED4A7BE8 = v18;

    v3 = v18;
  }

  os_unfair_lock_unlock(&_MergedGlobals_5);

  v23 = v3;
}

+ (id)_sharedTestInstance
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"accessed _sharedTestInstance outside of tests"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138544642;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    selfCopy = self;
    v16 = 2114;
    v17 = @"BSRBSService.m";
    v18 = 1024;
    v19 = 90;
    v20 = 2114;
    v21 = v4;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  v8 = v4;
  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)launchIdentifiersForMachName:(uint64_t)name
{
  v3 = a2;
  if (name)
  {
    os_unfair_lock_lock((name + 64));
    v4 = *(name + 48);
    if (!v4)
    {
      managedEndpointByLaunchIdentifier = [*(name + 8) managedEndpointByLaunchIdentifier];
      if ([managedEndpointByLaunchIdentifier count])
      {
        v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(managedEndpointByLaunchIdentifier, "count")}];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __45__BSRBSService_launchIdentifiersForMachName___block_invoke;
        v20[3] = &unk_1E75207F8;
        v7 = v6;
        v21 = v7;
        [managedEndpointByLaunchIdentifier enumerateKeysAndObjectsUsingBlock:v20];
        v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
        v15 = MEMORY[0x1E69E9820];
        v16 = 3221225472;
        v17 = __45__BSRBSService_launchIdentifiersForMachName___block_invoke_2;
        v18 = &unk_1E7520820;
        v9 = v8;
        v19 = v9;
        [v7 enumerateKeysAndObjectsUsingBlock:&v15];
        v10 = [v7 copy];
        v11 = *(name + 48);
        *(name + 48) = v10;
      }

      else
      {
        v12 = *(name + 48);
        *(name + 48) = MEMORY[0x1E695E0F8];
      }

      v4 = *(name + 48);
    }

    v13 = [v4 objectForKey:v3];
    os_unfair_lock_unlock((name + 64));
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __45__BSRBSService_launchIdentifiersForMachName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [v5 name];
  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    [v8 addObject:v12];
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E695DFA8] setWithObject:v12];
    v11 = [v5 name];
    [v9 setObject:v10 forKey:v11];
  }
}

void __45__BSRBSService_launchIdentifiersForMachName___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = *(a1 + 32);
  v6 = [a3 copy];
  [v5 setObject:v6 forKey:v7];
}

- (id)registerMonitor:(uint64_t)monitor
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (monitor)
  {
    if (!v3)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"monitorToRegister"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = NSStringFromSelector(sel_registerMonitor_);
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        *buf = 138544642;
        v35 = v20;
        v36 = 2114;
        v37 = v22;
        v38 = 2048;
        monitorCopy3 = monitor;
        v40 = 2114;
        v41 = @"BSRBSService.m";
        v42 = 1024;
        v43 = 128;
        v44 = 2114;
        v45 = v19;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v23 = v19;
      [v19 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A844FB4);
    }

    service = [v3 service];
    if (!service)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"asked to register a monitor with a nil service : monitor=%@", v4];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v25 = NSStringFromSelector(sel_registerMonitor_);
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        *buf = 138544642;
        v35 = v25;
        v36 = 2114;
        v37 = v27;
        v38 = 2048;
        monitorCopy3 = monitor;
        v40 = 2114;
        v41 = @"BSRBSService.m";
        v42 = 1024;
        v43 = 131;
        v44 = 2114;
        v45 = v24;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v28 = v24;
      [v24 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8450B0);
    }

    os_unfair_lock_lock((monitor + 68));
    os_unfair_lock_lock((monitor + 64));
    v6 = [*(monitor + 40) objectForKey:service];
    v7 = v6;
    if (v6)
    {
      if ([v6 containsObject:v4])
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"already tracking monitor for service %@ : %@", service, v4];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v9 = NSStringFromSelector(sel_registerMonitor_);
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          *buf = 138544642;
          v35 = v9;
          v36 = 2114;
          v37 = v11;
          v38 = 2048;
          monitorCopy3 = monitor;
          v40 = 2114;
          v41 = @"BSRBSService.m";
          v42 = 1024;
          v43 = 137;
          v44 = 2114;
          v45 = v8;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v12 = v8;
        [v8 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A844D14);
      }
    }

    else
    {
      v7 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
      [*(monitor + 40) setObject:? forKey:?];
    }

    [v7 addObject:v4];
    objc_initWeak(buf, v4);
    os_unfair_lock_unlock((monitor + 64));
    v13 = [*(monitor + 56) objectForKey:service];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = MEMORY[0x1E695E0F8];
    }

    [v4 serialCallOut_didUpdateEndpointEnvironments:v15];

    os_unfair_lock_unlock((monitor + 68));
    objc_initWeak(&location, monitor);
    v16 = objc_alloc(MEMORY[0x1E698E778]);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __32__BSRBSService_registerMonitor___block_invoke;
    v29[3] = &unk_1E7520848;
    objc_copyWeak(&v31, &location);
    objc_copyWeak(&v32, buf);
    v17 = service;
    v30 = v17;
    monitor = [v16 initWithIdentifier:@"com.apple.boardservices.manager.monitor" forReason:v17 invalidationBlock:v29];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  return monitor;
}

void __32__BSRBSService_registerMonitor___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 16);
    v6 = [*(WeakRetained + 5) objectForKey:v5];
    v7 = v6;
    if (v4)
    {
      [v6 removeObject:v4];
    }

    if (![v7 count])
    {
      [*(WeakRetained + 5) removeObjectForKey:v5];
    }

    os_unfair_lock_unlock(WeakRetained + 16);
  }
}

- (void)_callOutLock_noteEndpointsChangedForServices:(os_unfair_lock_s *)services
{
  v52 = *MEMORY[0x1E69E9840];
  v25 = a2;
  if (services)
  {
    os_unfair_lock_assert_owner(services + 17);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    servicesCopy = services;
    os_unfair_lock_lock(services + 16);
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v25;
    v27 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (!v27)
    {
      goto LABEL_37;
    }

    v28 = *v46;
    while (1)
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v46 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v45 + 1) + 8 * i);
        v29 = [*&servicesCopy[8]._os_unfair_lock_opaque objectForKey:?];
        v3 = [v29 count];
        v4 = *&servicesCopy[14]._os_unfair_lock_opaque;
        if (v3)
        {
          v31 = [v4 objectForKey:v32];
          v5 = [v31 mutableCopy];
          v6 = v5;
          if (v5)
          {
            dictionary2 = v5;
          }

          else
          {
            dictionary2 = [MEMORY[0x1E695DF90] dictionary];
          }

          v35 = dictionary2;

          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v33 = v29;
          v8 = [v33 countByEnumeratingWithState:&v41 objects:v50 count:16];
          if (v8)
          {
            v9 = *v42;
            do
            {
              for (j = 0; j != v8; ++j)
              {
                if (*v42 != v9)
                {
                  objc_enumerationMutation(v33);
                }

                v11 = *(*(&v41 + 1) + 8 * j);
                v12 = [MEMORY[0x1E695DFA8] set];
                v39 = 0u;
                v40 = 0u;
                v37 = 0u;
                v38 = 0u;
                v13 = [*&servicesCopy[6]._os_unfair_lock_opaque objectForKey:v11];
                v14 = [v13 countByEnumeratingWithState:&v37 objects:v49 count:16];
                if (v14)
                {
                  v15 = *v38;
                  do
                  {
                    for (k = 0; k != v14; ++k)
                    {
                      if (*v38 != v15)
                      {
                        objc_enumerationMutation(v13);
                      }

                      environment = [*(*(&v37 + 1) + 8 * k) environment];
                      if (environment)
                      {
                        [v12 addObject:environment];
                      }
                    }

                    v14 = [v13 countByEnumeratingWithState:&v37 objects:v49 count:16];
                  }

                  while (v14);
                }

                v18 = [v35 objectForKey:v11];
                v19 = BSEqualObjects();

                if ((v19 & 1) == 0)
                {
                  v20 = [v12 copy];
                  [v35 setObject:v20 forKey:v11];
                }
              }

              v8 = [v33 countByEnumeratingWithState:&v41 objects:v50 count:16];
            }

            while (v8);
          }

          v21 = v35;
          if (BSEqualObjects())
          {
            goto LABEL_34;
          }

          v22 = *&servicesCopy[14]._os_unfair_lock_opaque;
          v23 = [v35 copy];
          [v22 setObject:v23 forKey:v32];
        }

        else
        {
          [v4 removeObjectForKey:v32];
        }

        v31 = [*&servicesCopy[10]._os_unfair_lock_opaque objectForKey:v32];
        if (![v31 count])
        {
          goto LABEL_35;
        }

        v21 = [v31 copy];
        [dictionary setObject:v21 forKey:v32];
LABEL_34:

LABEL_35:
      }

      v27 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
      if (!v27)
      {
LABEL_37:

        os_unfair_lock_unlock(servicesCopy + 16);
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __61__BSRBSService__callOutLock_noteEndpointsChangedForServices___block_invoke;
        v36[3] = &unk_1E7520870;
        v36[4] = servicesCopy;
        [dictionary enumerateKeysAndObjectsUsingBlock:v36];

        break;
      }
    }
  }
}

void __61__BSRBSService__callOutLock_noteEndpointsChangedForServices___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [*(*(a1 + 32) + 56) objectForKey:a2];
  v7 = v6;
  v8 = MEMORY[0x1E695E0F8];
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v11)
  {
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v14 + 1) + 8 * v13++) serialCallOut_didUpdateEndpointEnvironments:{v9, v14}];
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)service:(id)service didReceiveInheritances:(id)inheritances
{
  v34 = *MEMORY[0x1E69E9840];
  inheritancesCopy = inheritances;
  v4 = BSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v30 = inheritancesCopy;
    _os_log_debug_impl(&dword_19A821000, v4, OS_LOG_TYPE_DEBUG, "BSServiceMonitor received inheritances %{public}@", buf, 0xCu);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = inheritancesCopy;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v7)
  {
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        v11 = BSServiceEndpointGrantNamespace();
        endowmentNamespace = [v10 endowmentNamespace];
        v13 = [v11 isEqual:endowmentNamespace];

        if (v13)
        {
          endowment = [v10 endowment];
          v15 = [BSServiceConnectionEndpoint _endpointFromEndowmentRepresentation:endowment];
          if (v15)
          {
            [dictionary setObject:v15 forKey:v10];
          }

          else
          {
            v16 = BSServiceLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v30 = v10;
              v31 = 2112;
              v32 = endowment;
              _os_log_error_impl(&dword_19A821000, v16, OS_LOG_TYPE_ERROR, "Ignoring invalid service endowment : %@ -> %@", buf, 0x16u);
            }
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v7);
  }

  if ([dictionary count])
  {
    os_unfair_lock_lock(&self->_callOutLock);
    os_unfair_lock_lock(&self->_lock);
    v17 = [MEMORY[0x1E695DFA8] set];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __47__BSRBSService_service_didReceiveInheritances___block_invoke;
    v22[3] = &unk_1E7520898;
    v22[4] = self;
    v24 = a2;
    v18 = v17;
    v23 = v18;
    [dictionary enumerateKeysAndObjectsUsingBlock:v22];
    os_unfair_lock_unlock(&self->_lock);
    [(BSRBSService *)self _callOutLock_noteEndpointsChangedForServices:v18];
    os_unfair_lock_unlock(&self->_callOutLock);
  }
}

void __47__BSRBSService_service_didReceiveInheritances___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v28 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 16) objectForKey:v28];

  if (v6)
  {
    v20 = MEMORY[0x1E696AEC0];
    v21 = [*(*(a1 + 32) + 16) objectForKey:v28];
    v22 = [v20 stringWithFormat:@"already have an endpoint for inheritance=%@ : old=%@ new=%@", v28, v21, v5];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(*(a1 + 48));
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = *(a1 + 32);
      *buf = 138544642;
      v30 = v23;
      v31 = 2114;
      v32 = v25;
      v33 = 2048;
      v34 = v26;
      v35 = 2114;
      v36 = @"BSRBSService.m";
      v37 = 1024;
      v38 = 239;
      v39 = 2114;
      v40 = v22;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v27 = v22;
    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A846090);
  }

  v7 = [*(*(a1 + 32) + 24) objectForKey:v5];
  v8 = [v7 count];
  v9 = *(a1 + 32);
  if (v8)
  {
    v10 = *(v9 + 16);
    v11 = [v7 anyObject];
    v12 = [v10 objectForKey:v11];

    [*(*(a1 + 32) + 16) setObject:v12 forKey:v28];
    [v7 addObject:v28];
    v13 = *(a1 + 40);
    v14 = [v12 service];
    [v13 addObject:v14];
  }

  else
  {
    v15 = *(v9 + 24);
    v16 = [MEMORY[0x1E695DFA8] setWithObject:v28];
    [v15 setObject:v16 forKey:v5];

    [*(*(a1 + 32) + 16) setObject:v5 forKey:v28];
    v12 = [v5 service];
    [*(a1 + 40) addObject:v12];
    v17 = [*(*(a1 + 32) + 32) objectForKey:v12];
    v14 = v17;
    if (v17)
    {
      [v17 addObject:v5];
    }

    else
    {
      v18 = *(*(a1 + 32) + 32);
      v19 = [MEMORY[0x1E695DFA8] setWithObject:v5];
      [v18 setObject:v19 forKey:v12];

      v14 = 0;
    }
  }
}

- (void)service:(id)service didLoseInheritances:(id)inheritances
{
  v46 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  inheritancesCopy = inheritances;
  os_unfair_lock_lock(&self->_callOutLock);
  os_unfair_lock_lock(&self->_lock);
  v7 = [MEMORY[0x1E695DFA8] set];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = inheritancesCopy;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v45 count:16];
  if (v9)
  {
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->_lock_inheritanceToEndpoint objectForKey:v12];
        if (v13)
        {
          v14 = [(NSMutableDictionary *)self->_lock_endpointToInheritances objectForKey:v13];
          if (([v14 containsObject:v12] & 1) == 0)
          {
            v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"endpointToInheritances is missing an entry for an inheritance in inheritanceToEndpoint : inheritance=%@ endpoint=%@", v12, v13];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v18 = NSStringFromSelector(a2);
              v19 = objc_opt_class();
              v20 = NSStringFromClass(v19);
              *buf = 138544642;
              v34 = v18;
              v35 = 2114;
              v36 = v20;
              v37 = 2048;
              selfCopy2 = self;
              v39 = 2114;
              v40 = @"BSRBSService.m";
              v41 = 1024;
              v42 = 273;
              v43 = 2114;
              v44 = v17;
              _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
            }

            v21 = v17;
            [v17 UTF8String];
            _bs_set_crash_log_message();
            __break(0);
            JUMPOUT(0x19A8464A0);
          }

          [(NSMutableDictionary *)self->_lock_inheritanceToEndpoint removeObjectForKey:v12];
          if ([v14 count] < 2)
          {
            [(NSMutableDictionary *)self->_lock_endpointToInheritances removeObjectForKey:v13];
            service = [v13 service];
            v16 = [(NSMutableDictionary *)self->_lock_serviceIdentifierToEndpoints objectForKey:service];
            if (([v16 containsObject:v13] & 1) == 0)
            {
              v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"serviceIdentifierToEndpoints is missing an entry for a lost endpoint : service=%@ endpoint=%@", service, v13];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v23 = NSStringFromSelector(a2);
                v24 = objc_opt_class();
                v25 = NSStringFromClass(v24);
                *buf = 138544642;
                v34 = v23;
                v35 = 2114;
                v36 = v25;
                v37 = 2048;
                selfCopy2 = self;
                v39 = 2114;
                v40 = @"BSRBSService.m";
                v41 = 1024;
                v42 = 284;
                v43 = 2114;
                v44 = v22;
                _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
              }

              v26 = v22;
              [v22 UTF8String];
              _bs_set_crash_log_message();
              __break(0);
              JUMPOUT(0x19A84659CLL);
            }

            if ([v16 count] < 2)
            {
              [(NSMutableDictionary *)self->_lock_serviceIdentifierToEndpoints removeObjectForKey:service];
            }

            else
            {
              [v16 removeObject:v13];
            }

            [v7 addObject:service];
          }

          else
          {
            [v14 removeObject:v12];
            service = [v13 service];
            [v7 addObject:service];
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v29 objects:v45 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_lock);
  [(BSRBSService *)self _callOutLock_noteEndpointsChangedForServices:v7];
  os_unfair_lock_unlock(&self->_callOutLock);
}

+ (__CFString)debugDescriptionWithMultilinePrefix:(uint64_t)prefix
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_autoreleasePoolPush();
  v4 = [BSRBSService _sharedInstanceCreatingIfNecessary:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 debugDescriptionWithMultilinePrefix:v2];
  }

  else
  {
    v6 = @"<not-initialized>";
  }

  objc_autoreleasePoolPop(v3);

  return v6;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BSRBSService *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  v6 = v5;
  if (prefixCopy)
  {
    [v5 setActiveMultilinePrefix:prefixCopy];
  }

  return v6;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BSRBSService *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v40 = *MEMORY[0x1E69E9840];
  prefixCopy = prefix;
  v25 = [(BSRBSService *)self descriptionBuilderWithMultilinePrefix:prefixCopy];
  os_unfair_lock_lock(&self->_lock);
  allKeys = [(NSMutableDictionary *)self->_lock_endpointToInheritances allKeys];
  v6 = [allKeys mutableCopy];

  [v6 sortUsingSelector:sel_compare_];
  array = [MEMORY[0x1E695DF70] array];
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  v35 = 0u;
  allKeys2 = [(NSMutableDictionary *)self->_lock_serviceIdentifierToMonitors allKeys];
  v9 = [allKeys2 sortedArrayUsingSelector:sel_compare_];

  v10 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v10)
  {
    v11 = *v36;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [(NSMutableDictionary *)self->_lock_serviceIdentifierToMonitors objectForKey:*(*(&v35 + 1) + 8 * i), v25];
        allObjects = [v13 allObjects];
        [array addObjectsFromArray:allObjects];
      }

      v10 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v10);
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __52__BSRBSService_debugDescriptionWithMultilinePrefix___block_invoke;
  v31[3] = &unk_1E75205A8;
  v15 = v25;
  v32 = v15;
  v16 = v6;
  v33 = v16;
  v17 = array;
  v34 = v17;
  v18 = [v15 modifyProem:v31];
  activeMultilinePrefix = [v15 activeMultilinePrefix];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __52__BSRBSService_debugDescriptionWithMultilinePrefix___block_invoke_2;
  v26[3] = &unk_1E75208C0;
  v20 = v15;
  v27 = v20;
  v21 = v16;
  v28 = v21;
  selfCopy = self;
  v22 = v17;
  v30 = v22;
  [v20 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v26];

  os_unfair_lock_unlock(&self->_lock);
  build = [v20 build];

  return build;
}

void __52__BSRBSService_debugDescriptionWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activeMultilinePrefix];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__BSRBSService_debugDescriptionWithMultilinePrefix___block_invoke_3;
  v9[3] = &unk_1E75205A8;
  v10 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v11 = v4;
  v12 = v5;
  [v2 appendBodySectionWithName:@"inheritedEndpoints" multilinePrefix:v3 block:v9];

  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v8 = [v6 activeMultilinePrefix];
  [v6 appendArraySection:v7 withName:@"monitors" multilinePrefix:v8 skipIfEmpty:0];
}

void __52__BSRBSService_debugDescriptionWithMultilinePrefix___block_invoke_3(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = *(a1 + 40);
        v8 = [*(*(a1 + 48) + 24) objectForKey:{v6, v12}];
        v9 = [v8 allObjects];
        v10 = [v6 description];
        v11 = [*(a1 + 40) activeMultilinePrefix];
        [v7 appendArraySection:v9 withName:v10 multilinePrefix:v11 skipIfEmpty:0];
      }

      v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }
}

@end