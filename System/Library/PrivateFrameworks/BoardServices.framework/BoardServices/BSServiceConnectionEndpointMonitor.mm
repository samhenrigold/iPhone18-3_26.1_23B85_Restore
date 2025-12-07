@interface BSServiceConnectionEndpointMonitor
+ (id)monitorForService:(id)service;
- (BSServiceConnectionEndpointMonitor)init;
- (BSServiceConnectionEndpointMonitorDelegate)delegate;
- (NSString)description;
- (id)endpointsForEnvironment:(id)environment;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)serialCallOut_didUpdateEndpointEnvironments:(id)environments;
- (void)setDelegate:(id)delegate;
@end

@implementation BSServiceConnectionEndpointMonitor

- (void)activate
{
  v35 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot activate after invalidation"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v24 = v9;
      v25 = 2114;
      v26 = v11;
      v27 = 2048;
      selfCopy3 = self;
      v29 = 2114;
      v30 = @"BSServiceConnectionEndpointMonitor.m";
      v31 = 1024;
      v32 = 83;
      v33 = 2114;
      v34 = v8;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v12 = v8;
    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A82931CLL);
  }

  if (self->_lock_activated)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot activate twice"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a2);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138544642;
      v24 = v14;
      v25 = 2114;
      v26 = v16;
      v27 = 2048;
      selfCopy3 = self;
      v29 = 2114;
      v30 = @"BSServiceConnectionEndpointMonitor.m";
      v31 = 1024;
      v32 = 84;
      v33 = 2114;
      v34 = v13;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v17 = v13;
    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A829414);
  }

  self->_lock_activated = 1;
  os_unfair_lock_lock(&self->_registrationLock);
  os_unfair_lock_unlock(&self->_lock);
  v4 = BSServiceInjectionLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    service = self->_service;
    *buf = 138412290;
    v24 = service;
    _os_log_impl(&dword_19A821000, v4, OS_LOG_TYPE_DEFAULT, "activating monitor for service %@", buf, 0xCu);
  }

  v6 = [(BSRBSService *)self->_RBSService registerMonitor:?];
  registrationLock_assertion = self->_registrationLock_assertion;
  self->_registrationLock_assertion = v6;

  if (!self->_registrationLock_assertion)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to register monitor for service %@", self->_service];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(a2);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138544642;
      v24 = v19;
      v25 = 2114;
      v26 = v21;
      v27 = 2048;
      selfCopy3 = self;
      v29 = 2114;
      v30 = @"BSServiceConnectionEndpointMonitor.m";
      v31 = 1024;
      v32 = 91;
      v33 = 2114;
      v34 = v18;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v22 = v18;
    [v18 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A829514);
  }

  os_unfair_lock_unlock(&self->_registrationLock);
}

- (BSServiceConnectionEndpointMonitor)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BSServiceConnectionEndpointMonitor"];
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
    v17 = @"BSServiceConnectionEndpointMonitor.m";
    v18 = 1024;
    v19 = 37;
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

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_invalidated)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must call invalidate before dealloc"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138544642;
      v11 = v5;
      v12 = 2114;
      v13 = v7;
      v14 = 2048;
      selfCopy = self;
      v16 = 2114;
      v17 = @"BSServiceConnectionEndpointMonitor.m";
      v18 = 1024;
      v19 = 55;
      v20 = 2114;
      v21 = v4;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v8 = v4;
    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86B53CLL);
  }

  os_unfair_lock_unlock(&self->_lock);
  v9.receiver = self;
  v9.super_class = BSServiceConnectionEndpointMonitor;
  [(BSServiceConnectionEndpointMonitor *)&v9 dealloc];
}

+ (id)monitorForService:(id)service
{
  v45 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v4 = [BSServiceConnectionEndpointMonitor alloc];
  v5 = objc_opt_self();
  v6 = [(BSRBSService *)v5 _sharedInstanceCreatingIfNecessary:?];
  v7 = v6;
  v8 = serviceCopy;
  if (v4)
  {
    v9 = v7;
    NSClassFromString(&cfstr_Bsrbsservice.isa);
    if (!v9)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v17 = NSStringFromSelector(sel__initWithRBSService_service_);
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        *v36 = 138544642;
        *&v36[4] = v17;
        *&v36[12] = 2114;
        *&v36[14] = v19;
        v37 = 2048;
        v38 = v4;
        v39 = 2114;
        v40 = @"BSServiceConnectionEndpointMonitor.m";
        v41 = 1024;
        v42 = 42;
        v43 = 2114;
        v44 = v16;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v36, 0x3Au);
      }

      v20 = v16;
      [v16 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A86B818);
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSRBSServiceClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v22 = NSStringFromSelector(sel__initWithRBSService_service_);
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        *v36 = 138544642;
        *&v36[4] = v22;
        *&v36[12] = 2114;
        *&v36[14] = v24;
        v37 = 2048;
        v38 = v4;
        v39 = 2114;
        v40 = @"BSServiceConnectionEndpointMonitor.m";
        v41 = 1024;
        v42 = 42;
        v43 = 2114;
        v44 = v21;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v36, 0x3Au);
      }

      v25 = v21;
      [v21 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A86B91CLL);
    }

    v10 = v8;
    NSClassFromString(&cfstr_Nsstring.isa);
    if (!v10)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v27 = NSStringFromSelector(sel__initWithRBSService_service_);
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        *v36 = 138544642;
        *&v36[4] = v27;
        *&v36[12] = 2114;
        *&v36[14] = v29;
        v37 = 2048;
        v38 = v4;
        v39 = 2114;
        v40 = @"BSServiceConnectionEndpointMonitor.m";
        v41 = 1024;
        v42 = 43;
        v43 = 2114;
        v44 = v26;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v36, 0x3Au);
      }

      v30 = v26;
      [v26 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A86BA20);
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v32 = NSStringFromSelector(sel__initWithRBSService_service_);
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        *v36 = 138544642;
        *&v36[4] = v32;
        *&v36[12] = 2114;
        *&v36[14] = v34;
        v37 = 2048;
        v38 = v4;
        v39 = 2114;
        v40 = @"BSServiceConnectionEndpointMonitor.m";
        v41 = 1024;
        v42 = 43;
        v43 = 2114;
        v44 = v31;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v36, 0x3Au);
      }

      v35 = v31;
      [v31 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A86BB24);
    }

    *v36 = v4;
    *&v36[8] = BSServiceConnectionEndpointMonitor;
    v11 = objc_msgSendSuper2(v36, sel_init);
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, v6);
      v13 = [v10 copy];
      v14 = v12[8];
      v12[8] = v13;

      v12[6] = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BSServiceConnectionEndpointMonitorDelegate)delegate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_delegate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDelegate:(id)delegate
{
  v24 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_activated)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot set the delegate after activation"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v12 = 138544642;
      v13 = v8;
      v14 = 2114;
      v15 = v10;
      v16 = 2048;
      selfCopy = self;
      v18 = 2114;
      v19 = @"BSServiceConnectionEndpointMonitor.m";
      v20 = 1024;
      v21 = 76;
      v22 = 2114;
      v23 = v7;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v12, 0x3Au);
    }

    v11 = v7;
    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86BDECLL);
  }

  lock_delegate = self->_lock_delegate;
  self->_lock_delegate = delegateCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)invalidate
{
  v8 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_lock_invalidated = 1;
    lock_delegate = self->_lock_delegate;
    self->_lock_delegate = 0;

    os_unfair_lock_lock(&self->_registrationLock);
    os_unfair_lock_unlock(&self->_lock);
    [(BSInvalidatable *)self->_registrationLock_assertion invalidate];
    v4 = BSServiceInjectionLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      service = self->_service;
      v6 = 138412290;
      v7 = service;
      _os_log_impl(&dword_19A821000, v4, OS_LOG_TYPE_DEFAULT, "invalidated monitor for service %@", &v6, 0xCu);
    }

    os_unfair_lock_unlock(&self->_registrationLock);
  }
}

- (id)endpointsForEnvironment:(id)environment
{
  v43 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  if (!environmentCopy)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"environment"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a2);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138544642;
      v32 = v14;
      v33 = 2114;
      v34 = v16;
      v35 = 2048;
      selfCopy3 = self;
      v37 = 2114;
      v38 = @"BSServiceConnectionEndpointMonitor.m";
      v39 = 1024;
      v40 = 111;
      v41 = 2114;
      v42 = v13;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v17 = v13;
    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86C18CLL);
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot query after invalidation"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(a2);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138544642;
      v32 = v19;
      v33 = 2114;
      v34 = v21;
      v35 = 2048;
      selfCopy3 = self;
      v37 = 2114;
      v38 = @"BSServiceConnectionEndpointMonitor.m";
      v39 = 1024;
      v40 = 114;
      v41 = 2114;
      v42 = v18;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v22 = v18;
    [v18 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86C284);
  }

  if (!self->_lock_activated)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot query before activation"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(a2);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138544642;
      v32 = v24;
      v33 = 2114;
      v34 = v26;
      v35 = 2048;
      selfCopy3 = self;
      v37 = 2114;
      v38 = @"BSServiceConnectionEndpointMonitor.m";
      v39 = 1024;
      v40 = 115;
      v41 = 2114;
      v42 = v23;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v27 = v23;
    [v23 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86C37CLL);
  }

  v6 = [MEMORY[0x1E695DFA8] set];
  lock_endpointToEnvironments = self->_lock_endpointToEnvironments;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __62__BSServiceConnectionEndpointMonitor_endpointsForEnvironment___block_invoke;
  v28[3] = &unk_1E75210D0;
  v8 = environmentCopy;
  v29 = v8;
  v9 = v6;
  v30 = v9;
  [(NSDictionary *)lock_endpointToEnvironments enumerateKeysAndObjectsUsingBlock:v28];
  os_unfair_lock_unlock(&self->_lock);
  v10 = v30;
  v11 = v9;

  return v9;
}

void __62__BSServiceConnectionEndpointMonitor_endpointsForEnvironment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 containsObject:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v6];
  }
}

- (void)serialCallOut_didUpdateEndpointEnvironments:(id)environments
{
  v56 = *MEMORY[0x1E69E9840];
  environmentsCopy = environments;
  v28 = environmentsCopy;
  if (!environmentsCopy)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"endpointToEnvironments", 0];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(a2);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138544642;
      v45 = v24;
      v46 = 2114;
      v47 = v26;
      v48 = 2048;
      selfCopy = self;
      v50 = 2114;
      v51 = @"BSServiceConnectionEndpointMonitor.m";
      v52 = 1024;
      v53 = 129;
      v54 = 2114;
      v55 = v23;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v27 = v23;
    [v23 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86C884);
  }

  v7 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(environmentsCopy, "count")}];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = v28;
  v9 = [v8 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v9)
  {
    v10 = *v38;
    do
    {
      v11 = 0;
      do
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [v7 addObject:*(*(&v37 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v9);
  }

  v12 = [v7 mutableCopy];
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_lock_endpointToEnvironments, environments);
  v13 = self->_lock_delegate;
  v14 = self->_lock_serialCallOut_endpoints;
  objc_storeStrong(&self->_lock_serialCallOut_endpoints, v7);
  os_unfair_lock_unlock(&self->_lock);
  if (v14)
  {
    [v12 minusSet:v14];
  }

  [(NSMutableSet *)v14 minusSet:v7];
  if (v13)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = v14;
    v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v16)
    {
      v17 = *v34;
      do
      {
        v18 = 0;
        do
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(v15);
          }

          [(BSServiceConnectionEndpointMonitorDelegate *)v13 monitor:self willLoseEndpoint:*(*(&v33 + 1) + 8 * v18++)];
        }

        while (v16 != v18);
        v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v16);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v19 = v12;
    v20 = [v19 countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v20)
    {
      v21 = *v30;
      do
      {
        v22 = 0;
        do
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(v19);
          }

          [(BSServiceConnectionEndpointMonitorDelegate *)v13 monitor:self didReceiveEndpoint:*(*(&v29 + 1) + 8 * v22++)];
        }

        while (v20 != v22);
        v20 = [v19 countByEnumeratingWithState:&v29 objects:v41 count:16];
      }

      while (v20);
    }
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_service withName:@"service"];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v4 = @"invalidated";
LABEL_7:
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_8;
  }

  if (!self->_lock_activated)
  {
    v4 = @"initializing";
    goto LABEL_7;
  }

  v5 = self->_lock_delegate;
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"<%@:%p>", v8, v5];
    [v3 appendString:v9 withName:@"delegate"];

    goto LABEL_9;
  }

  v4 = @"active";
LABEL_8:
  v5 = 0;
  [v3 appendString:v4 withName:0];
LABEL_9:
  build = [v3 build];

  return build;
}

@end