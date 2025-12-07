@interface BSServiceConnectionListenerConfiguration
+ (id)configurationWithDomain:(id)domain service:(id)service;
+ (id)configurationWithDomain:(id)domain service:(id)service instance:(id)instance;
- (os_unfair_lock_s)initWithConfigurator:(void *)configurator;
- (void)setDelegate:(id)delegate;
- (void)setDomain:(id)domain;
- (void)setInstance:(id)instance;
- (void)setService:(id)service;
@end

@implementation BSServiceConnectionListenerConfiguration

- (os_unfair_lock_s)initWithConfigurator:(void *)configurator
{
  v25 = *MEMORY[0x1E69E9840];
  if (!configurator)
  {
    return 0;
  }

  if (!a2)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"block"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(sel_initWithConfigurator_);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v14 = v8;
      v15 = 2114;
      v16 = v10;
      v17 = 2048;
      configuratorCopy = configurator;
      v19 = 2114;
      v20 = @"BSServiceConnectionListener.m";
      v21 = 1024;
      v22 = 266;
      v23 = 2114;
      v24 = v7;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v11 = v7;
    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86E034);
  }

  v12.receiver = configurator;
  v12.super_class = BSServiceConnectionListenerConfiguration;
  v4 = objc_msgSendSuper2(&v12, sel_init);
  v5 = v4;
  if (v4)
  {
    v4[10]._os_unfair_lock_opaque = 0;
    os_unfair_lock_lock(v4 + 10);
    (*(a2 + 16))(a2, v5);
    LOBYTE(v5[11]._os_unfair_lock_opaque) = 1;
    os_unfair_lock_unlock(v5 + 10);
  }

  return v5;
}

+ (id)configurationWithDomain:(id)domain service:(id)service
{
  v6 = [BSServiceConnectionListenerConfiguration alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__BSServiceConnectionListenerConfiguration_configurationWithDomain_service___block_invoke;
  v9[3] = &unk_1E7521148;
  v9[4] = domain;
  v9[5] = service;
  v7 = [(BSServiceConnectionListenerConfiguration *)v6 initWithConfigurator:v9];

  return v7;
}

uint64_t __76__BSServiceConnectionListenerConfiguration_configurationWithDomain_service___block_invoke(uint64_t a1, void *a2)
{
  [a2 setDomain:*(a1 + 32)];
  v4 = *(a1 + 40);

  return [a2 setService:v4];
}

+ (id)configurationWithDomain:(id)domain service:(id)service instance:(id)instance
{
  v8 = [BSServiceConnectionListenerConfiguration alloc];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__BSServiceConnectionListenerConfiguration_configurationWithDomain_service_instance___block_invoke;
  v11[3] = &unk_1E7521170;
  v11[4] = domain;
  v11[5] = service;
  v11[6] = instance;
  v9 = [(BSServiceConnectionListenerConfiguration *)v8 initWithConfigurator:v11];

  return v9;
}

uint64_t __85__BSServiceConnectionListenerConfiguration_configurationWithDomain_service_instance___block_invoke(void *a1, void *a2)
{
  [a2 setDomain:a1[4]];
  [a2 setService:a1[5]];
  v4 = a1[6];

  return [a2 setInstance:v4];
}

- (void)setDomain:(id)domain
{
  v44 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  v6 = MEMORY[0x1E696AEC0];
  if (!domainCopy)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v6 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"domain", v11];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v33 = v13;
      v34 = 2114;
      v35 = v15;
      v36 = 2048;
      selfCopy3 = self;
      v38 = 2114;
      v39 = @"BSServiceConnectionListener.m";
      v40 = 1024;
      v41 = 304;
      v42 = 2114;
      v43 = v12;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v16 = v12;
    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86E814);
  }

  v7 = domainCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = MEMORY[0x1E696AEC0];
    classForCoder = [v7 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v19 = NSStringFromClass(classForCoder);
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [v17 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"domain", v19, v21];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(a2);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138544642;
      v33 = v23;
      v34 = 2114;
      v35 = v25;
      v36 = 2048;
      selfCopy3 = self;
      v38 = 2114;
      v39 = @"BSServiceConnectionListener.m";
      v40 = 1024;
      v41 = 304;
      v42 = 2114;
      v43 = v22;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v26 = v22;
    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86E958);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_lock_configured)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempt to set domain after configuration has been sealed"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(a2);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138544642;
      v33 = v28;
      v34 = 2114;
      v35 = v30;
      v36 = 2048;
      selfCopy3 = self;
      v38 = 2114;
      v39 = @"BSServiceConnectionListener.m";
      v40 = 1024;
      v41 = 306;
      v42 = 2114;
      v43 = v27;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v31 = v27;
    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86EA4CLL);
  }

  v8 = [v7 copy];
  lock_domain = self->_lock_domain;
  self->_lock_domain = v8;
}

- (void)setService:(id)service
{
  v44 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v6 = MEMORY[0x1E696AEC0];
  if (!serviceCopy)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v6 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"service", v11];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v33 = v13;
      v34 = 2114;
      v35 = v15;
      v36 = 2048;
      selfCopy3 = self;
      v38 = 2114;
      v39 = @"BSServiceConnectionListener.m";
      v40 = 1024;
      v41 = 310;
      v42 = 2114;
      v43 = v12;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v16 = v12;
    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86ECD4);
  }

  v7 = serviceCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = MEMORY[0x1E696AEC0];
    classForCoder = [v7 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v19 = NSStringFromClass(classForCoder);
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [v17 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"service", v19, v21];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(a2);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138544642;
      v33 = v23;
      v34 = 2114;
      v35 = v25;
      v36 = 2048;
      selfCopy3 = self;
      v38 = 2114;
      v39 = @"BSServiceConnectionListener.m";
      v40 = 1024;
      v41 = 310;
      v42 = 2114;
      v43 = v22;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v26 = v22;
    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86EE18);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_lock_configured)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempt to set service after configuration has been sealed"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(a2);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138544642;
      v33 = v28;
      v34 = 2114;
      v35 = v30;
      v36 = 2048;
      selfCopy3 = self;
      v38 = 2114;
      v39 = @"BSServiceConnectionListener.m";
      v40 = 1024;
      v41 = 312;
      v42 = 2114;
      v43 = v27;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v31 = v27;
    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86EF0CLL);
  }

  v8 = [v7 copy];
  lock_service = self->_lock_service;
  self->_lock_service = v8;
}

- (void)setInstance:(id)instance
{
  v44 = *MEMORY[0x1E69E9840];
  instanceCopy = instance;
  v6 = MEMORY[0x1E696AEC0];
  if (!instanceCopy)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v6 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"instance", v11];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v33 = v13;
      v34 = 2114;
      v35 = v15;
      v36 = 2048;
      selfCopy3 = self;
      v38 = 2114;
      v39 = @"BSServiceConnectionListener.m";
      v40 = 1024;
      v41 = 316;
      v42 = 2114;
      v43 = v12;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v16 = v12;
    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86F194);
  }

  v7 = instanceCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = MEMORY[0x1E696AEC0];
    classForCoder = [v7 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v19 = NSStringFromClass(classForCoder);
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [v17 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"instance", v19, v21];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(a2);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138544642;
      v33 = v23;
      v34 = 2114;
      v35 = v25;
      v36 = 2048;
      selfCopy3 = self;
      v38 = 2114;
      v39 = @"BSServiceConnectionListener.m";
      v40 = 1024;
      v41 = 316;
      v42 = 2114;
      v43 = v22;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v26 = v22;
    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86F2D8);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_lock_configured)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempt to set instance after configuration has been sealed"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(a2);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138544642;
      v33 = v28;
      v34 = 2114;
      v35 = v30;
      v36 = 2048;
      selfCopy3 = self;
      v38 = 2114;
      v39 = @"BSServiceConnectionListener.m";
      v40 = 1024;
      v41 = 318;
      v42 = 2114;
      v43 = v27;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v31 = v27;
    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86F3CCLL);
  }

  v8 = [v7 copy];
  lock_instance = self->_lock_instance;
  self->_lock_instance = v8;
}

- (void)setDelegate:(id)delegate
{
  v28 = *MEMORY[0x1E69E9840];
  if (!delegate)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"delegate"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138544642;
      v17 = v7;
      v18 = 2114;
      v19 = v9;
      v20 = 2048;
      selfCopy2 = self;
      v22 = 2114;
      v23 = @"BSServiceConnectionListener.m";
      v24 = 1024;
      v25 = 322;
      v26 = 2114;
      v27 = v6;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v10 = v6;
    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86F5FCLL);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_lock_configured)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempt to set delegate after configuration has been sealed"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v17 = v12;
      v18 = 2114;
      v19 = v14;
      v20 = 2048;
      selfCopy2 = self;
      v22 = 2114;
      v23 = @"BSServiceConnectionListener.m";
      v24 = 1024;
      v25 = 324;
      v26 = 2114;
      v27 = v11;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v15 = v11;
    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86F6F4);
  }

  objc_storeStrong(&self->_lock_delegate, delegate);
}

@end