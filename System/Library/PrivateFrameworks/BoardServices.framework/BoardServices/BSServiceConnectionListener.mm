@interface BSServiceConnectionListener
+ (BSServiceConnectionListener)_listenerWithManager:(uint64_t)manager configuration:(uint64_t)configuration handler:;
+ (id)extendBootstrap;
+ (id)listenerWithConfiguration:(id)configuration handler:(id)handler;
+ (id)listenerWithConfigurator:(id)configurator;
- (BSServiceConnectionEndpoint)endpoint;
- (BSServiceConnectionListener)init;
- (BSServiceSpecification)specification;
- (NSString)description;
- (NSString)domain;
- (NSString)service;
- (void)activate;
- (void)dealloc;
- (void)didReceiveConnection:(id)connection;
- (void)invalidate;
@end

@implementation BSServiceConnectionListener

- (BSServiceConnectionEndpoint)endpoint
{
  os_unfair_lock_lock(&self->_lock);
  lock_endpoint = self->_lock_endpoint;
  if (!lock_endpoint)
  {
    if (self->_lock_invalidated)
    {
      service = self->_service;
      if (service)
      {
        service = service->_specification;
      }

      v5 = service;
      identifier = [(BSService *)v5 identifier];
      v7 = [BSServiceConnectionEndpoint nullEndpointForService:identifier instance:self->_instance];
    }

    else
    {
      v8 = self->_service;
      if (v8)
      {
        v8 = v8->_specification;
      }

      domain = self->_domain;
      v5 = v8;
      identifier = [(BSService *)v5 identifier];
      v7 = [BSServiceConnectionEndpoint _endpointForDomain:identifier service:self->_instance instance:?];
    }

    v10 = self->_lock_endpoint;
    self->_lock_endpoint = v7;

    lock_endpoint = self->_lock_endpoint;
  }

  v11 = lock_endpoint;
  os_unfair_lock_unlock(&self->_lock);

  return v11;
}

- (void)activate
{
  v38 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot activate after invalidation"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138544642;
      v27 = v11;
      v28 = 2114;
      v29 = v13;
      v30 = 2048;
      selfCopy3 = self;
      v32 = 2114;
      v33 = @"BSServiceConnectionListener.m";
      v34 = 1024;
      v35 = 145;
      v36 = 2114;
      v37 = v10;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v14 = v10;
    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A82B524);
  }

  if (self->_lock_activated)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot activate twice"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(a2);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138544642;
      v27 = v16;
      v28 = 2114;
      v29 = v18;
      v30 = 2048;
      selfCopy3 = self;
      v32 = 2114;
      v33 = @"BSServiceConnectionListener.m";
      v34 = 1024;
      v35 = 146;
      v36 = 2114;
      v37 = v15;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v19 = v15;
    [v15 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A82B61CLL);
  }

  self->_lock_activated = 1;
  os_unfair_lock_lock(&self->_registrationLock);
  os_unfair_lock_unlock(&self->_lock);
  v4 = BSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    instance = self->_instance;
    if (!instance)
    {
      instance = @"<any>";
    }

    domain = self->_domain;
    service = self->_service;
    *buf = 138412802;
    v27 = instance;
    v28 = 2112;
    v29 = service;
    v30 = 2112;
    selfCopy3 = domain;
    _os_log_impl(&dword_19A821000, v4, OS_LOG_TYPE_INFO, "activating listener for instance %@ of service %@ in domain %@", buf, 0x20u);
  }

  v8 = [(BSService *)self->_service registerListener:self->_instance forInstance:?];
  registrationLock_assertion = self->_registrationLock_assertion;
  self->_registrationLock_assertion = v8;

  if (!self->_registrationLock_assertion)
  {
    v20 = self->_instance;
    if (!v20)
    {
      v20 = @"<any>";
    }

    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to register listener for instance %@ of service %@ in domain %@", v20, self->_service, self->_domain];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = NSStringFromSelector(a2);
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138544642;
      v27 = v22;
      v28 = 2114;
      v29 = v24;
      v30 = 2048;
      selfCopy3 = self;
      v32 = 2114;
      v33 = @"BSServiceConnectionListener.m";
      v34 = 1024;
      v35 = 153;
      v36 = 2114;
      v37 = v21;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v25 = v21;
    [v21 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A82B734);
  }

  os_unfair_lock_unlock(&self->_registrationLock);
}

- (BSServiceConnectionListener)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BSServiceConnectionListener"];
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
    v17 = @"BSServiceConnectionListener.m";
    v18 = 1024;
    v19 = 63;
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
      v17 = @"BSServiceConnectionListener.m";
      v18 = 1024;
      v19 = 87;
      v20 = 2114;
      v21 = v4;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v8 = v4;
    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86CE00);
  }

  os_unfair_lock_unlock(&self->_lock);
  v9.receiver = self;
  v9.super_class = BSServiceConnectionListener;
  [(BSServiceConnectionListener *)&v9 dealloc];
}

+ (id)listenerWithConfiguration:(id)configuration handler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  if (!handler)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"block"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v18 = v12;
      v19 = 2114;
      v20 = v14;
      v21 = 2048;
      selfCopy = self;
      v23 = 2114;
      v24 = @"BSServiceConnectionListener.m";
      v25 = 1024;
      v26 = 95;
      v27 = 2114;
      v28 = v11;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v15 = v11;
    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86D064);
  }

  v6 = +[BSServiceManager sharedInstance];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__BSServiceConnectionListener_listenerWithConfiguration_handler___block_invoke;
  v16[3] = &unk_1E75210F8;
  v16[4] = handler;
  v7 = [BSServiceConnectionListener _listenerWithManager:v6 configuration:configuration handler:v16];

  return v7;
}

+ (BSServiceConnectionListener)_listenerWithManager:(uint64_t)manager configuration:(uint64_t)configuration handler:
{
  v60 = *MEMORY[0x1E69E9840];
  v7 = objc_opt_self();
  if (!a2)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must configure a manager"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = NSStringFromSelector(sel__listenerWithManager_configuration_handler_);
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *v51 = 138544642;
      *&v51[4] = v22;
      *&v51[12] = 2114;
      *&v51[14] = v24;
      v52 = 2048;
      v53 = v7;
      v54 = 2114;
      v55 = @"BSServiceConnectionListener.m";
      v56 = 1024;
      v57 = 193;
      v58 = 2114;
      v59 = v21;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v51, 0x3Au);
    }

    v25 = v21;
    [v21 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86D33CLL);
  }

  if (!manager || (v8 = *(manager + 8)) == 0)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must configure a domain"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v27 = NSStringFromSelector(sel__listenerWithManager_configuration_handler_);
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *v51 = 138544642;
      *&v51[4] = v27;
      *&v51[12] = 2114;
      *&v51[14] = v29;
      v52 = 2048;
      v53 = v7;
      v54 = 2114;
      v55 = @"BSServiceConnectionListener.m";
      v56 = 1024;
      v57 = 195;
      v58 = 2114;
      v59 = v26;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v51, 0x3Au);
    }

    v30 = v26;
    [v26 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86D434);
  }

  v9 = v8;
  v10 = [(BSServiceManager *)a2 domainWithIdentifier:v8];
  if (!v10)
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to find domain '%@' : manager=%@", v9, a2];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v32 = NSStringFromSelector(sel__listenerWithManager_configuration_handler_);
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      *v51 = 138544642;
      *&v51[4] = v32;
      *&v51[12] = 2114;
      *&v51[14] = v34;
      v52 = 2048;
      v53 = v7;
      v54 = 2114;
      v55 = @"BSServiceConnectionListener.m";
      v56 = 1024;
      v57 = 197;
      v58 = 2114;
      v59 = v31;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v51, 0x3Au);
    }

    v35 = v31;
    [v31 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86D530);
  }

  v11 = *(manager + 16);
  if (!v11)
  {
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must configure a service"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v37 = NSStringFromSelector(sel__listenerWithManager_configuration_handler_);
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      *v51 = 138544642;
      *&v51[4] = v37;
      *&v51[12] = 2114;
      *&v51[14] = v39;
      v52 = 2048;
      v53 = v7;
      v54 = 2114;
      v55 = @"BSServiceConnectionListener.m";
      v56 = 1024;
      v57 = 199;
      v58 = 2114;
      v59 = v36;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v51, 0x3Au);
    }

    v40 = v36;
    [v36 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86D628);
  }

  v12 = [(BSServiceDomain *)v10 serviceWithIdentifier:v11];
  if (!v12)
  {
    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to find service '%@' in domain '%@' : manager=%@", v11, v9, a2];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v42 = NSStringFromSelector(sel__listenerWithManager_configuration_handler_);
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      *v51 = 138544642;
      *&v51[4] = v42;
      *&v51[12] = 2114;
      *&v51[14] = v44;
      v52 = 2048;
      v53 = v7;
      v54 = 2114;
      v55 = @"BSServiceConnectionListener.m";
      v56 = 1024;
      v57 = 201;
      v58 = 2114;
      v59 = v41;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v51, 0x3Au);
    }

    v45 = v41;
    [v41 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86D728);
  }

  if (!configuration)
  {
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v47 = NSStringFromSelector(sel__listenerWithManager_configuration_handler_);
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      *v51 = 138544642;
      *&v51[4] = v47;
      *&v51[12] = 2114;
      *&v51[14] = v49;
      v52 = 2048;
      v53 = v7;
      v54 = 2114;
      v55 = @"BSServiceConnectionListener.m";
      v56 = 1024;
      v57 = 202;
      v58 = 2114;
      v59 = v46;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v51, 0x3Au);
    }

    v50 = v46;
    [v46 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86D82CLL);
  }

  v13 = [BSServiceConnectionListener alloc];
  v14 = *(manager + 24);
  v15 = v14;
  if (v13)
  {
    *v51 = v13;
    *&v51[8] = BSServiceConnectionListener;
    v16 = objc_msgSendSuper2(v51, sel_init);
    v13 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_domain, v10);
      objc_storeStrong(&v13->_service, v12);
      objc_storeStrong(&v13->_instance, v14);
      v17 = MEMORY[0x19A908200](configuration);
      lock_handler = v13->_lock_handler;
      v13->_lock_handler = v17;

      *&v13->_lock_activated = 0;
      registrationLock_assertion = v13->_registrationLock_assertion;
      v13->_registrationLock_assertion = 0;
      *&v13->_lock._os_unfair_lock_opaque = 0;
    }
  }

  return v13;
}

+ (id)listenerWithConfigurator:(id)configurator
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = +[BSServiceManager sharedInstance];
  v5 = objc_opt_self();
  v6 = [[BSServiceConnectionListenerConfiguration alloc] initWithConfigurator:configurator];
  v7 = v6;
  if (!v6 || (v8 = *&v6[8]._os_unfair_lock_opaque) == 0)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must configure a delegate"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(sel__listenerWithManager_legacyConfigurator_);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *v17 = 138544642;
      *&v17[4] = v13;
      *&v17[12] = 2114;
      *&v17[14] = v15;
      *&v17[22] = 2048;
      v18 = v5;
      *v19 = 2114;
      *&v19[2] = @"BSServiceConnectionListener.m";
      v20 = 1024;
      v21 = 184;
      v22 = 2114;
      v23 = v12;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v17, 0x3Au);
    }

    v16 = v12;
    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86DB8CLL);
  }

  *v17 = MEMORY[0x1E69E9820];
  *&v17[8] = 3221225472;
  *&v17[16] = __71__BSServiceConnectionListener__listenerWithManager_legacyConfigurator___block_invoke;
  v18 = &unk_1E7521120;
  v9 = v8;
  *v19 = v9;
  v10 = [BSServiceConnectionListener _listenerWithManager:v4 configuration:v7 handler:v17];

  return v10;
}

- (NSString)domain
{
  domain = self->_domain;
  if (domain)
  {
    domain = domain->_specification;
  }

  v3 = domain;
  identifier = [(BSServiceDomain *)v3 identifier];

  return identifier;
}

- (NSString)service
{
  service = self->_service;
  if (service)
  {
    service = service->_specification;
  }

  v3 = service;
  identifier = [(BSService *)v3 identifier];

  return identifier;
}

- (BSServiceSpecification)specification
{
  service = self->_service;
  if (service)
  {
    return service->_specification;
  }

  else
  {
    return 0;
  }
}

- (void)invalidate
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_lock_invalidated = 1;
    lock_handler = self->_lock_handler;
    self->_lock_handler = 0;

    os_unfair_lock_lock(&self->_registrationLock);
    os_unfair_lock_unlock(&self->_lock);
    [(BSInvalidatable *)self->_registrationLock_assertion invalidate];
    v4 = BSServiceLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      domain = self->_domain;
      service = self->_service;
      v7 = 138412546;
      v8 = service;
      v9 = 2112;
      v10 = domain;
      _os_log_impl(&dword_19A821000, v4, OS_LOG_TYPE_INFO, "invalidated listener for service %@ in domain %@", &v7, 0x16u);
    }

    os_unfair_lock_unlock(&self->_registrationLock);
  }
}

+ (id)extendBootstrap
{
  v2 = +[BSServiceManager sharedInstance];
  extendAutomaticBootstrapCompletion = [(BSServiceManager *)v2 extendAutomaticBootstrapCompletion];

  return extendAutomaticBootstrapCompletion;
}

void __71__BSServiceConnectionListener__listenerWithManager_legacyConfigurator___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = [a3 initiatingContext];
  [v5 listener:a2 didReceiveConnection:a3 withContext:?];
}

- (void)didReceiveConnection:(id)connection
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_activated && !self->_lock_invalidated)
  {
    v6 = MEMORY[0x19A908200](self->_lock_handler);
    os_unfair_lock_unlock(&self->_lock);
    if (v6)
    {
      (v6)[2](v6, self, connection);
      goto LABEL_7;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  v5 = BSServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    instance = [connection instance];
    domain = self->_domain;
    service = self->_service;
    v10 = 138413058;
    v11 = instance;
    v12 = 2112;
    v13 = service;
    v14 = 2112;
    v15 = domain;
    v16 = 2112;
    connectionCopy = connection;
    _os_log_error_impl(&dword_19A821000, v5, OS_LOG_TYPE_ERROR, "invalidating connection to instance %@ of service %@ of domain %@ because there is no handler for it : %@", &v10, 0x2Au);
  }

  v6 = 0;
  [connection invalidate];
LABEL_7:
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  domain = self->_domain;
  if (domain)
  {
    domain = domain->_specification;
  }

  v5 = domain;
  identifier = [(BSServiceDomain *)v5 identifier];
  [v3 appendString:identifier withName:@"domain"];

  service = self->_service;
  if (service)
  {
    service = service->_specification;
  }

  v8 = service;
  identifier2 = [(BSService *)v8 identifier];
  [v3 appendString:identifier2 withName:@"service"];

  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v10 = @"invalidated";
  }

  else if (self->_lock_activated)
  {
    v10 = @"valid";
  }

  else
  {
    v10 = @"inactive";
  }

  os_unfair_lock_unlock(&self->_lock);
  [v3 appendString:v10 withName:0];
  build = [v3 build];

  return build;
}

@end