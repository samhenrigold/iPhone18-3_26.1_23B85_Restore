@interface BSServiceInterface
+ (BSServiceInterface)interfaceWithIdentifier:(id)identifier;
+ (BSServiceInterface)interfaceWithIdentifier:(id)identifier configurator:(id)configurator;
+ (BSServiceInterface)interfaceWithServer:(id)server client:(id)client;
- (BOOL)isEqual:(id)equal;
- (BSServiceInterface)init;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)invertInterface:(id)interface;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)clientMessagingExpectation;
- (unint64_t)hash;
- (void)_initWithIdentifier:(void *)identifier server:(void *)server client:(uint64_t)client clientWaitsForActivation:;
- (void)setIdentifier:(id)identifier;
@end

@implementation BSServiceInterface

- (int64_t)clientMessagingExpectation
{
  clientWaitsForActivation = self->_clientWaitsForActivation;
  if (clientWaitsForActivation)
  {
    return CFBooleanGetValue(clientWaitsForActivation) != 0;
  }

  else
  {
    methods = [(BSObjCProtocol *)self->_server methods];
    v4 = [methods count] == 0;
  }

  return v4;
}

- (BSServiceInterface)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on BSServiceInterface"];
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
    v17 = @"BSServiceInterface.m";
    v18 = 1024;
    v19 = 297;
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

+ (BSServiceInterface)interfaceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [BSServiceInterface alloc];
  v5 = __emptyProtocol();
  v6 = __emptyProtocol();
  v7 = [(BSServiceInterface *)v4 _initWithIdentifier:identifierCopy server:v5 client:v6 clientWaitsForActivation:*MEMORY[0x1E695E4D0]];

  return v7;
}

- (void)_initWithIdentifier:(void *)identifier server:(void *)server client:(uint64_t)client clientWaitsForActivation:
{
  v62 = *MEMORY[0x1E69E9840];
  v9 = a2;
  identifierCopy = identifier;
  serverCopy = server;
  if (self)
  {
    v12 = objc_opt_class();
    if (v12 != objc_opt_class())
    {
      v13 = objc_opt_class();
      if (v13 != objc_opt_class())
      {
        v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BSServiceInterface is not intended to be subclassed"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v45 = NSStringFromSelector(sel__initWithIdentifier_server_client_clientWaitsForActivation_);
          v46 = objc_opt_class();
          v47 = NSStringFromClass(v46);
          *buf = 138544642;
          v51 = v45;
          v52 = 2114;
          v53 = v47;
          v54 = 2048;
          selfCopy5 = self;
          v56 = 2114;
          v57 = @"BSServiceInterface.m";
          v58 = 1024;
          v59 = 317;
          v60 = 2114;
          v61 = v44;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v48 = v44;
        [v44 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A858C4CLL);
      }
    }

    v14 = identifierCopy;
    NSClassFromString(&cfstr_Bsobjcprotocol.isa);
    if (!v14)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v25 = NSStringFromSelector(sel__initWithIdentifier_server_client_clientWaitsForActivation_);
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        *buf = 138544642;
        v51 = v25;
        v52 = 2114;
        v53 = v27;
        v54 = 2048;
        selfCopy5 = self;
        v56 = 2114;
        v57 = @"BSServiceInterface.m";
        v58 = 1024;
        v59 = 318;
        v60 = 2114;
        v61 = v24;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v28 = v24;
      [v24 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A858848);
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSObjCProtocolClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v30 = NSStringFromSelector(sel__initWithIdentifier_server_client_clientWaitsForActivation_);
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        *buf = 138544642;
        v51 = v30;
        v52 = 2114;
        v53 = v32;
        v54 = 2048;
        selfCopy5 = self;
        v56 = 2114;
        v57 = @"BSServiceInterface.m";
        v58 = 1024;
        v59 = 318;
        v60 = 2114;
        v61 = v29;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v33 = v29;
      [v29 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85894CLL);
    }

    v15 = serverCopy;
    NSClassFromString(&cfstr_Bsobjcprotocol.isa);
    if (!v15)
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v35 = NSStringFromSelector(sel__initWithIdentifier_server_client_clientWaitsForActivation_);
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        *buf = 138544642;
        v51 = v35;
        v52 = 2114;
        v53 = v37;
        v54 = 2048;
        selfCopy5 = self;
        v56 = 2114;
        v57 = @"BSServiceInterface.m";
        v58 = 1024;
        v59 = 319;
        v60 = 2114;
        v61 = v34;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v38 = v34;
      [v34 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A858A50);
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSObjCProtocolClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v40 = NSStringFromSelector(sel__initWithIdentifier_server_client_clientWaitsForActivation_);
        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        *buf = 138544642;
        v51 = v40;
        v52 = 2114;
        v53 = v42;
        v54 = 2048;
        selfCopy5 = self;
        v56 = 2114;
        v57 = @"BSServiceInterface.m";
        v58 = 1024;
        v59 = 319;
        v60 = 2114;
        v61 = v39;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v43 = v39;
      [v39 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A858B54);
    }

    v49.receiver = self;
    v49.super_class = BSServiceInterface;
    v16 = objc_msgSendSuper2(&v49, sel_init);
    if (v16)
    {
      v17 = [v9 copy];
      v18 = v16[1];
      v16[1] = v17;

      v19 = [v14 copy];
      v20 = v16[2];
      v16[2] = v19;

      v21 = [v15 copy];
      v22 = v16[3];
      v16[3] = v21;

      v16[4] = client;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (BSServiceInterface)interfaceWithIdentifier:(id)identifier configurator:(id)configurator
{
  v30 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  configuratorCopy = configurator;
  if (!configuratorCopy)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"configurator"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a2);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138544642;
      v19 = v14;
      v20 = 2114;
      v21 = v16;
      v22 = 2048;
      selfCopy = self;
      v24 = 2114;
      v25 = @"BSServiceInterface.m";
      v26 = 1024;
      v27 = 306;
      v28 = 2114;
      v29 = v13;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v17 = v13;
    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A858F2CLL);
  }

  v9 = objc_autoreleasePoolPush();
  v10 = [BSMutableServiceInterface interfaceWithIdentifier:identifierCopy];
  configuratorCopy[2](configuratorCopy, v10);
  v11 = [v10 copy];

  objc_autoreleasePoolPop(v9);

  return v11;
}

- (id)invertInterface:(id)interface
{
  interfaceCopy = interface;
  if (interfaceCopy)
  {
    v5 = [(BSServiceInterface *)[BSMutableServiceInterface alloc] _initWithIdentifier:self->_client server:self->_server client:0 clientWaitsForActivation:?];
    interfaceCopy[2](interfaceCopy, v5);
    v6 = [v5 copy];
  }

  else
  {
    v6 = [[BSServiceInterface alloc] _initWithIdentifier:self->_client server:self->_server client:0 clientWaitsForActivation:?];
  }

  return v6;
}

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [identifierCopy copy];
  identifier = self->_identifier;
  self->_identifier = v4;
}

+ (BSServiceInterface)interfaceWithServer:(id)server client:(id)client
{
  v53 = *MEMORY[0x1E69E9840];
  serverCopy = server;
  clientCopy = client;
  v9 = serverCopy;
  NSClassFromString(&cfstr_Bsobjcprotocol.isa);
  if (!v9)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = NSStringFromSelector(a2);
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138544642;
      v42 = v22;
      v43 = 2114;
      v44 = v24;
      v45 = 2048;
      selfCopy4 = self;
      v47 = 2114;
      v48 = @"BSServiceInterface.m";
      v49 = 1024;
      v50 = 378;
      v51 = 2114;
      v52 = v21;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v25 = v21;
    [v21 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A859378);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSObjCProtocolClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v27 = NSStringFromSelector(a2);
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *buf = 138544642;
      v42 = v27;
      v43 = 2114;
      v44 = v29;
      v45 = 2048;
      selfCopy4 = self;
      v47 = 2114;
      v48 = @"BSServiceInterface.m";
      v49 = 1024;
      v50 = 378;
      v51 = 2114;
      v52 = v26;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v30 = v26;
    [v26 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A85947CLL);
  }

  v10 = __protocolsToRemove();
  v11 = [v9 flattenWithIgnoredInheritedProtocols:v10];

  __vetProtocol(v11);
  v12 = clientCopy;
  NSClassFromString(&cfstr_Bsobjcprotocol.isa);
  if (!v12)
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v32 = NSStringFromSelector(a2);
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      *buf = 138544642;
      v42 = v32;
      v43 = 2114;
      v44 = v34;
      v45 = 2048;
      selfCopy4 = self;
      v47 = 2114;
      v48 = @"BSServiceInterface.m";
      v49 = 1024;
      v50 = 382;
      v51 = 2114;
      v52 = v31;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v35 = v31;
    [v31 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A859580);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSObjCProtocolClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v37 = NSStringFromSelector(a2);
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      *buf = 138544642;
      v42 = v37;
      v43 = 2114;
      v44 = v39;
      v45 = 2048;
      selfCopy4 = self;
      v47 = 2114;
      v48 = @"BSServiceInterface.m";
      v49 = 1024;
      v50 = 382;
      v51 = 2114;
      v52 = v36;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v40 = v36;
    [v36 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A859684);
  }

  v13 = __protocolsToRemove();
  v14 = [v12 flattenWithIgnoredInheritedProtocols:v13];

  __vetProtocol(v14);
  v15 = [BSServiceInterface alloc];
  methods = [v11 methods];
  v17 = [methods count];
  v18 = MEMORY[0x1E695E4D0];
  if (v17)
  {
    v18 = MEMORY[0x1E695E4C0];
  }

  v19 = [(BSServiceInterface *)v15 _initWithIdentifier:v11 server:v14 client:*v18 clientWaitsForActivation:?];

  return v19;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BSMutableServiceInterface allocWithZone:zone];
  identifier = self->_identifier;
  server = self->_server;
  client = self->_client;
  clientWaitsForActivation = self->_clientWaitsForActivation;

  return [(BSServiceInterface *)v4 _initWithIdentifier:server server:client client:clientWaitsForActivation clientWaitsForActivation:?];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BSServiceInterface *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_identifier withName:0];
  name = [(BSObjCProtocol *)self->_server name];
  [v3 appendString:name withName:@"server"];

  name2 = [(BSObjCProtocol *)self->_client name];
  [v3 appendString:name2 withName:@"client"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BSServiceInterface *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(BSServiceInterface *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder appendString:self->_identifier withName:0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__BSServiceInterface_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E75209E8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];
  v7 = v6;

  return v6;
}

const __CFBoolean *__60__BSServiceInterface_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:@"server"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"client"];
  result = *(*(a1 + 40) + 32);
  if (result)
  {
    return [*(a1 + 32) appendBool:CFBooleanGetValue(result) != 0 withName:@"clientWaitsForActivation"];
  }

  return result;
}

- (unint64_t)hash
{
  identifier = self->_identifier;
  if (identifier)
  {

    return [(NSString *)identifier hash];
  }

  else
  {
    v5 = [(BSObjCProtocol *)self->_server hash];
    return [(BSObjCProtocol *)self->_client hash]^ v5;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if ((v5 == objc_opt_class() || (v6 = objc_opt_class(), v6 == objc_opt_class())) && BSEqualStrings() && BSEqualObjects() && BSEqualObjects())
    {
      clientMessagingExpectation = [(BSServiceInterface *)self clientMessagingExpectation];
      v8 = clientMessagingExpectation == [(BSServiceInterface *)equalCopy clientMessagingExpectation];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end