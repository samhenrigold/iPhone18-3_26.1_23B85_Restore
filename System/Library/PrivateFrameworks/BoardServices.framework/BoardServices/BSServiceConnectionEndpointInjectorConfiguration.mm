@interface BSServiceConnectionEndpointInjectorConfiguration
- (BSServiceConnectionEndpointInjectorConfiguration)init;
- (void)addEndpoint:(id)endpoint;
- (void)setAdditionalAttributes:(id)attributes;
- (void)setDomain:(id)domain;
- (void)setInheritingEnvironment:(id)environment;
- (void)setInstance:(id)instance;
- (void)setService:(id)service;
- (void)setTarget:(id)target;
@end

@implementation BSServiceConnectionEndpointInjectorConfiguration

- (BSServiceConnectionEndpointInjectorConfiguration)init
{
  v5.receiver = self;
  v5.super_class = BSServiceConnectionEndpointInjectorConfiguration;
  v2 = [(BSServiceConnectionEndpointInjectorConfiguration *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    os_unfair_lock_lock(&v2->_lock);
  }

  return v3;
}

- (void)setTarget:(id)target
{
  v38 = *MEMORY[0x1E69E9840];
  targetCopy = target;
  if (!targetCopy)
  {
    v8 = MEMORY[0x1E696AEC0];
    getRBSTargetClass();
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"target", v10];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v27 = v12;
      v28 = 2114;
      v29 = v14;
      v30 = 2048;
      selfCopy2 = self;
      v32 = 2114;
      v33 = @"BSServiceConnectionEndpointInjector.m";
      v34 = 1024;
      v35 = 257;
      v36 = 2114;
      v37 = v11;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v15 = v11;
    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8310E4);
  }

  getRBSTargetClass();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = MEMORY[0x1E696AEC0];
    classForCoder = [targetCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v18 = NSStringFromClass(classForCoder);
    getRBSTargetClass();
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v16 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"target", v18, v20];

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
      selfCopy2 = self;
      v32 = 2114;
      v33 = @"BSServiceConnectionEndpointInjector.m";
      v34 = 1024;
      v35 = 257;
      v36 = 2114;
      v37 = v21;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v25 = v21;
    [v21 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83122CLL);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  v6 = [targetCopy copy];
  lock_target = self->_lock_target;
  self->_lock_target = v6;
}

- (void)setDomain:(id)domain
{
  v38 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  v6 = MEMORY[0x1E696AEC0];
  if (!domainCopy)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v6 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"domain", v10];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v27 = v12;
      v28 = 2114;
      v29 = v14;
      v30 = 2048;
      selfCopy2 = self;
      v32 = 2114;
      v33 = @"BSServiceConnectionEndpointInjector.m";
      v34 = 1024;
      v35 = 263;
      v36 = 2114;
      v37 = v11;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v15 = v11;
    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A831480);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = MEMORY[0x1E696AEC0];
    classForCoder = [domainCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v18 = NSStringFromClass(classForCoder);
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v16 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"domain", v18, v20];

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
      selfCopy2 = self;
      v32 = 2114;
      v33 = @"BSServiceConnectionEndpointInjector.m";
      v34 = 1024;
      v35 = 263;
      v36 = 2114;
      v37 = v21;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v25 = v21;
    [v21 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8315C4);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  v7 = [domainCopy copy];
  lock_domain = self->_lock_domain;
  self->_lock_domain = v7;
}

- (void)setService:(id)service
{
  v38 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v6 = MEMORY[0x1E696AEC0];
  if (!serviceCopy)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v6 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"service", v10];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v27 = v12;
      v28 = 2114;
      v29 = v14;
      v30 = 2048;
      selfCopy2 = self;
      v32 = 2114;
      v33 = @"BSServiceConnectionEndpointInjector.m";
      v34 = 1024;
      v35 = 268;
      v36 = 2114;
      v37 = v11;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v15 = v11;
    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A831818);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = MEMORY[0x1E696AEC0];
    classForCoder = [serviceCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v18 = NSStringFromClass(classForCoder);
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v16 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"service", v18, v20];

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
      selfCopy2 = self;
      v32 = 2114;
      v33 = @"BSServiceConnectionEndpointInjector.m";
      v34 = 1024;
      v35 = 268;
      v36 = 2114;
      v37 = v21;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v25 = v21;
    [v21 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83195CLL);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  v7 = [serviceCopy copy];
  lock_service = self->_lock_service;
  self->_lock_service = v7;
}

- (void)setInstance:(id)instance
{
  v38 = *MEMORY[0x1E69E9840];
  instanceCopy = instance;
  v6 = MEMORY[0x1E696AEC0];
  if (!instanceCopy)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v6 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"instance", v10];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v27 = v12;
      v28 = 2114;
      v29 = v14;
      v30 = 2048;
      selfCopy2 = self;
      v32 = 2114;
      v33 = @"BSServiceConnectionEndpointInjector.m";
      v34 = 1024;
      v35 = 273;
      v36 = 2114;
      v37 = v11;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v15 = v11;
    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A831BB0);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = MEMORY[0x1E696AEC0];
    classForCoder = [instanceCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v18 = NSStringFromClass(classForCoder);
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v16 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"instance", v18, v20];

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
      selfCopy2 = self;
      v32 = 2114;
      v33 = @"BSServiceConnectionEndpointInjector.m";
      v34 = 1024;
      v35 = 273;
      v36 = 2114;
      v37 = v21;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v25 = v21;
    [v21 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A831CF4);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  v7 = [instanceCopy copy];
  lock_instance = self->_lock_instance;
  self->_lock_instance = v7;
}

- (void)addEndpoint:(id)endpoint
{
  v39 = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  if (!endpointCopy)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"endpoint", v11];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v28 = v13;
      v29 = 2114;
      v30 = v15;
      v31 = 2048;
      selfCopy2 = self;
      v33 = 2114;
      v34 = @"BSServiceConnectionEndpointInjector.m";
      v35 = 1024;
      v36 = 279;
      v37 = 2114;
      v38 = v12;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v16 = v12;
    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A831FA4);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = MEMORY[0x1E696AEC0];
    classForCoder = [endpointCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v19 = NSStringFromClass(classForCoder);
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [v17 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"endpoint", v19, v21];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(a2);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138544642;
      v28 = v23;
      v29 = 2114;
      v30 = v25;
      v31 = 2048;
      selfCopy2 = self;
      v33 = 2114;
      v34 = @"BSServiceConnectionEndpointInjector.m";
      v35 = 1024;
      v36 = 279;
      v37 = 2114;
      v38 = v22;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v26 = v22;
    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8320ECLL);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  lock_endpoints = self->_lock_endpoints;
  if (lock_endpoints)
  {

    [(NSMutableOrderedSet *)lock_endpoints addObject:endpointCopy];
  }

  else
  {
    v7 = [MEMORY[0x1E695DFA0] orderedSetWithObject:endpointCopy];
    v8 = self->_lock_endpoints;
    self->_lock_endpoints = v7;
  }
}

- (void)setInheritingEnvironment:(id)environment
{
  v38 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  v6 = MEMORY[0x1E696AEC0];
  if (!environmentCopy)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v6 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"inheritingEnvironment", v10];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v27 = v12;
      v28 = 2114;
      v29 = v14;
      v30 = 2048;
      selfCopy2 = self;
      v32 = 2114;
      v33 = @"BSServiceConnectionEndpointInjector.m";
      v34 = 1024;
      v35 = 289;
      v36 = 2114;
      v37 = v11;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v15 = v11;
    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A832340);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = MEMORY[0x1E696AEC0];
    classForCoder = [environmentCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v18 = NSStringFromClass(classForCoder);
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v16 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"inheritingEnvironment", v18, v20];

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
      selfCopy2 = self;
      v32 = 2114;
      v33 = @"BSServiceConnectionEndpointInjector.m";
      v34 = 1024;
      v35 = 289;
      v36 = 2114;
      v37 = v21;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v25 = v21;
    [v21 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A832484);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  v7 = [environmentCopy copy];
  lock_inheritingEnvironment = self->_lock_inheritingEnvironment;
  self->_lock_inheritingEnvironment = v7;
}

- (void)setAdditionalAttributes:(id)attributes
{
  v66 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  if (!attributesCopy)
  {
    v31 = MEMORY[0x1E696AEC0];
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    v34 = [v31 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"additionalAttributes", v33];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v35 = NSStringFromSelector(a2);
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      *buf = 138544642;
      v55 = v35;
      v56 = 2114;
      v57 = v37;
      v58 = 2048;
      selfCopy4 = self;
      v60 = 2114;
      v61 = @"BSServiceConnectionEndpointInjector.m";
      v62 = 1024;
      v63 = 294;
      v64 = 2114;
      v65 = v34;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v38 = v34;
    [v34 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8329F8);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v39 = MEMORY[0x1E696AEC0];
    classForCoder = [attributesCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v41 = NSStringFromClass(classForCoder);
    v42 = objc_opt_class();
    v43 = NSStringFromClass(v42);
    v44 = [v39 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"additionalAttributes", v41, v43];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v45 = NSStringFromSelector(a2);
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      *buf = 138544642;
      v55 = v45;
      v56 = 2114;
      v57 = v47;
      v58 = 2048;
      selfCopy4 = self;
      v60 = 2114;
      v61 = @"BSServiceConnectionEndpointInjector.m";
      v62 = 1024;
      v63 = 294;
      v64 = 2114;
      v65 = v44;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v48 = v44;
    [v44 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A832B40);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v6 = attributesCopy;
  v7 = [v6 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v7)
  {
    v8 = *v50;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v50 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v49 + 1) + 8 * i);
        if (!v10)
        {
          v13 = MEMORY[0x1E696AEC0];
          getRBSAttributeClass();
          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          v16 = [v13 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"attribute", v15];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v17 = NSStringFromSelector(a2);
            v18 = objc_opt_class();
            v19 = NSStringFromClass(v18);
            *buf = 138544642;
            v55 = v17;
            v56 = 2114;
            v57 = v19;
            v58 = 2048;
            selfCopy4 = self;
            v60 = 2114;
            v61 = @"BSServiceConnectionEndpointInjector.m";
            v62 = 1024;
            v63 = 296;
            v64 = 2114;
            v65 = v16;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v20 = v16;
          [v16 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A832790);
        }

        getRBSAttributeClass();
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v21 = MEMORY[0x1E696AEC0];
          classForCoder2 = [v10 classForCoder];
          if (!classForCoder2)
          {
            classForCoder2 = objc_opt_class();
          }

          v23 = NSStringFromClass(classForCoder2);
          getRBSAttributeClass();
          v24 = objc_opt_class();
          v25 = NSStringFromClass(v24);
          v26 = [v21 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"attribute", v23, v25];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v27 = NSStringFromSelector(a2);
            v28 = objc_opt_class();
            v29 = NSStringFromClass(v28);
            *buf = 138544642;
            v55 = v27;
            v56 = 2114;
            v57 = v29;
            v58 = 2048;
            selfCopy4 = self;
            v60 = 2114;
            v61 = @"BSServiceConnectionEndpointInjector.m";
            v62 = 1024;
            v63 = 296;
            v64 = 2114;
            v65 = v26;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v30 = v26;
          [v26 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A8328D8);
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v7);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  v11 = [v6 copy];
  lock_additionalAttributes = self->_lock_additionalAttributes;
  self->_lock_additionalAttributes = v11;
}

@end