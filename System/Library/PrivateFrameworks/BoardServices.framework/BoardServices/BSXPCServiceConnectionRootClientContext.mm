@interface BSXPCServiceConnectionRootClientContext
+ (void)uniqueClientContextWithEndpoint:(uint64_t)endpoint;
- (BOOL)isNonLaunching;
@end

@implementation BSXPCServiceConnectionRootClientContext

- (BOOL)isNonLaunching
{
  endpoint = self->_endpoint;
  if (endpoint)
  {
    LOBYTE(endpoint) = endpoint->_nonLaunching;
  }

  return endpoint & 1;
}

+ (void)uniqueClientContextWithEndpoint:(uint64_t)endpoint
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_self();
  v4 = v2;
  if (!v4)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v13 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"endpoint", v15];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(sel_uniqueClientContextWithEndpoint_);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138544642;
      v32 = v17;
      v33 = 2114;
      v34 = v19;
      v35 = 2048;
      v36 = v3;
      v37 = 2114;
      v38 = @"BSXPCServiceConnectionContext.m";
      v39 = 1024;
      v40 = 227;
      v41 = 2114;
      v42 = v16;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v20 = v16;
    [v16 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A860BDCLL);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = MEMORY[0x1E696AEC0];
    classForCoder = [v4 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v23 = NSStringFromClass(classForCoder);
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = [v21 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"endpoint", v23, v25];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v27 = NSStringFromSelector(sel_uniqueClientContextWithEndpoint_);
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *buf = 138544642;
      v32 = v27;
      v33 = 2114;
      v34 = v29;
      v35 = 2048;
      v36 = v3;
      v37 = 2114;
      v38 = @"BSXPCServiceConnectionContext.m";
      v39 = 1024;
      v40 = 227;
      v41 = 2114;
      v42 = v26;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v30 = v26;
    [v26 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A860D24);
  }

  v5 = [BSXPCServiceConnectionRootClientContext alloc];
  v6 = v4;
  v7 = v6;
  if (v5)
  {
    v8 = v6[4];
    v9 = [(BSXPCServiceConnectionRootContext *)v5 _initWithType:v8 eDesc:?];

    if (v9)
    {
      v10 = [v7 copy];
      v11 = v9[5];
      v9[5] = v10;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end