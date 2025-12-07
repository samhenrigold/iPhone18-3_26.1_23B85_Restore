@interface BSMutableServiceInterface
+ (id)interfaceWithIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setClient:(id)client;
- (void)setClientMessagingExpectation:(int64_t)expectation;
- (void)setIdentifier:(id)identifier;
- (void)setServer:(id)server;
@end

@implementation BSMutableServiceInterface

+ (id)interfaceWithIdentifier:(id)identifier
{
  v33 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!identifierCopy)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v22 = v12;
      v23 = 2114;
      v24 = v14;
      v25 = 2048;
      selfCopy2 = self;
      v27 = 2114;
      v28 = @"BSServiceInterface.m";
      v29 = 1024;
      v30 = 469;
      v31 = 2114;
      v32 = v11;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v15 = v11;
    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A859E2CLL);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(a2);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138544642;
      v22 = v17;
      v23 = 2114;
      v24 = v19;
      v25 = 2048;
      selfCopy2 = self;
      v27 = 2114;
      v28 = @"BSServiceInterface.m";
      v29 = 1024;
      v30 = 469;
      v31 = 2114;
      v32 = v16;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v20 = v16;
    [v16 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A859F30);
  }

  v6 = [BSMutableServiceInterface alloc];
  v7 = __emptyProtocol();
  v8 = __emptyProtocol();
  v9 = [(BSServiceInterface *)v6 _initWithIdentifier:identifierCopy server:v7 client:v8 clientWaitsForActivation:0];

  return v9;
}

- (void)setIdentifier:(id)identifier
{
  v30 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!identifierCopy)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v19 = v8;
      v20 = 2114;
      v21 = v10;
      v22 = 2048;
      selfCopy2 = self;
      v24 = 2114;
      v25 = @"BSServiceInterface.m";
      v26 = 1024;
      v27 = 475;
      v28 = 2114;
      v29 = v7;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v11 = v7;
    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A85A16CLL);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v19 = v13;
      v20 = 2114;
      v21 = v15;
      v22 = 2048;
      selfCopy2 = self;
      v24 = 2114;
      v25 = @"BSServiceInterface.m";
      v26 = 1024;
      v27 = 475;
      v28 = 2114;
      v29 = v12;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v16 = v12;
    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A85A270);
  }

  v5 = [identifierCopy copy];
  identifier = self->super._identifier;
  self->super._identifier = v5;
}

- (void)setServer:(id)server
{
  v28 = *MEMORY[0x1E69E9840];
  serverCopy = server;
  if (serverCopy)
  {
    NSClassFromString(&cfstr_Bsobjcprotocol.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSObjCProtocolClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v11 = NSStringFromSelector(a2);
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138544642;
        v17 = v11;
        v18 = 2114;
        v19 = v13;
        v20 = 2048;
        selfCopy = self;
        v22 = 2114;
        v23 = @"BSServiceInterface.m";
        v24 = 1024;
        v25 = 481;
        v26 = 2114;
        v27 = v10;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v14 = v10;
      [v10 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85A500);
    }

    v5 = __protocolsToRemove();
    v6 = [serverCopy flattenWithIgnoredInheritedProtocols:v5];

    __vetProtocol(v6);
    p_server = &self->super._server;
    v8 = BSEqualObjects();
  }

  else
  {
    v6 = __emptyProtocol();
    p_server = &self->super._server;
    v8 = BSEqualObjects();
  }

  if ((v8 & 1) == 0)
  {
    v6 = v6;
    v9 = *p_server;
    *p_server = v6;
  }
}

- (void)setClient:(id)client
{
  v28 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  if (clientCopy)
  {
    NSClassFromString(&cfstr_Bsobjcprotocol.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSObjCProtocolClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v11 = NSStringFromSelector(a2);
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138544642;
        v17 = v11;
        v18 = 2114;
        v19 = v13;
        v20 = 2048;
        selfCopy = self;
        v22 = 2114;
        v23 = @"BSServiceInterface.m";
        v24 = 1024;
        v25 = 498;
        v26 = 2114;
        v27 = v10;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v14 = v10;
      [v10 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85A780);
    }

    v5 = __protocolsToRemove();
    v6 = [clientCopy flattenWithIgnoredInheritedProtocols:v5];

    __vetProtocol(v6);
    p_client = &self->super._client;
    v8 = BSEqualObjects();
  }

  else
  {
    v6 = __emptyProtocol();
    p_client = &self->super._client;
    v8 = BSEqualObjects();
  }

  if ((v8 & 1) == 0)
  {
    v6 = v6;
    v9 = *p_client;
    *p_client = v6;
  }
}

- (void)setClientMessagingExpectation:(int64_t)expectation
{
  v3 = MEMORY[0x1E695E4D0];
  if (expectation != 1)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  self->super._clientWaitsForActivation = *v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  clientMessagingExpectation = [(BSServiceInterface *)self clientMessagingExpectation];
  v6 = MEMORY[0x1E695E4D0];
  if (clientMessagingExpectation != 1)
  {
    v6 = MEMORY[0x1E695E4C0];
  }

  v7 = *v6;
  v8 = [BSServiceInterface allocWithZone:zone];
  identifier = self->super._identifier;
  server = self->super._server;
  client = self->super._client;

  return [(BSServiceInterface *)v8 _initWithIdentifier:server server:client client:v7 clientWaitsForActivation:?];
}

@end