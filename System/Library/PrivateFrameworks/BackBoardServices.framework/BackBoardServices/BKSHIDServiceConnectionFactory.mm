@interface BKSHIDServiceConnectionFactory
+ (id)sharedInstance;
- (id)clientConnectionForServiceWithName:(id)name;
- (id)clientConnectionForServiceWithName:(id)name isNonLaunching:(BOOL *)launching;
- (id)clientConnectionForServiceWithName:(id)name multiplexer:(id)multiplexer;
- (void)clientConnectionForServiceWithName:(void *)name multiplexer:(_BYTE *)multiplexer isNonLaunching:;
@end

@implementation BKSHIDServiceConnectionFactory

+ (id)sharedInstance
{
  objc_opt_self();
  if (sharedInstance_onceToken_7901 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_7901, &__block_literal_global_7902);
  }

  v0 = sharedInstance___sharedInstance;

  return v0;
}

void __48__BKSHIDServiceConnectionFactory_sharedInstance__block_invoke()
{
  v0 = [BKSHIDServiceConnectionFactory alloc];
  if (v0)
  {
    v2.receiver = v0;
    v2.super_class = BKSHIDServiceConnectionFactory;
    v0 = objc_msgSendSuper2(&v2, sel_init);
  }

  v1 = sharedInstance___sharedInstance;
  sharedInstance___sharedInstance = v0;
}

- (id)clientConnectionForServiceWithName:(id)name isNonLaunching:(BOOL *)launching
{
  v6 = MEMORY[0x1E698F4E0];
  nameCopy = name;
  defaultMultiplexer = [v6 defaultMultiplexer];
  v9 = [(BKSHIDServiceConnectionFactory *)self clientConnectionForServiceWithName:nameCopy multiplexer:defaultMultiplexer isNonLaunching:launching];

  return v9;
}

- (void)clientConnectionForServiceWithName:(void *)name multiplexer:(_BYTE *)multiplexer isNonLaunching:
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a2;
  nameCopy = name;
  v9 = nameCopy;
  if (self)
  {
    if (!v7)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"serviceName"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v17 = NSStringFromSelector(sel_clientConnectionForServiceWithName_multiplexer_isNonLaunching_);
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        *buf = 138544642;
        v26 = v17;
        v27 = 2114;
        v28 = v19;
        v29 = 2048;
        selfCopy2 = self;
        v31 = 2114;
        v32 = @"BKSHIDServiceConnectionFactory.m";
        v33 = 1024;
        v34 = 58;
        v35 = 2114;
        v36 = v16;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v16 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18638FA2CLL);
    }

    if (!nameCopy)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"multiplexer"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v21 = NSStringFromSelector(sel_clientConnectionForServiceWithName_multiplexer_isNonLaunching_);
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        *buf = 138544642;
        v26 = v21;
        v27 = 2114;
        v28 = v23;
        v29 = 2048;
        selfCopy2 = self;
        v31 = 2114;
        v32 = @"BKSHIDServiceConnectionFactory.m";
        v33 = 1024;
        v34 = 59;
        v35 = 2114;
        v36 = v20;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v20 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18638FB24);
    }

    v10 = [MEMORY[0x1E698F498] endpointForMachName:? service:? instance:?];
    v11 = v10;
    if (v10)
    {
      if (multiplexer)
      {
        *multiplexer = [v10 isNonLaunching];
      }

      v12 = objc_alloc(MEMORY[0x1E698F4D8]);
      v24 = v9;
      v13 = [v12 initWithEndpoint:? options:?];
      v14 = v24;
    }

    else
    {
      v14 = BKLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v26 = v7;
        _os_log_error_impl(&dword_186345000, v14, OS_LOG_TYPE_ERROR, "cannot get endpoint for mach service (on behalf of BSService name: %{public}@)", buf, 0xCu);
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)clientConnectionForServiceWithName:(id)name multiplexer:(id)multiplexer
{
  v6 = 0;
  v4 = [(BKSHIDServiceConnectionFactory *)self clientConnectionForServiceWithName:name multiplexer:multiplexer isNonLaunching:&v6];

  return v4;
}

- (id)clientConnectionForServiceWithName:(id)name
{
  v9 = 0;
  v4 = MEMORY[0x1E698F4E0];
  nameCopy = name;
  defaultMultiplexer = [v4 defaultMultiplexer];
  v7 = [(BKSHIDServiceConnectionFactory *)self clientConnectionForServiceWithName:nameCopy multiplexer:defaultMultiplexer isNonLaunching:&v9];

  return v7;
}

@end