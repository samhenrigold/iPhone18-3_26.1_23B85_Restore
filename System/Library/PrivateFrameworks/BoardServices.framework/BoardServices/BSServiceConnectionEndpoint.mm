@interface BSServiceConnectionEndpoint
+ (id)_endpointForDomain:(void *)domain service:(void *)service instance:;
+ (id)_endpointForManager:(void *)manager domain:(void *)domain service:(void *)service instance:;
+ (id)_endpointFromEndowmentRepresentation:(uint64_t)representation;
+ (id)endpointForMachName:(id)name service:(id)service instance:(id)instance;
+ (id)endpointForMachName:(id)name targetUserIdentifier:(unsigned int)identifier service:(id)service instance:(id)instance;
+ (id)endpointForServiceName:(id)name oneshot:(id)oneshot service:(id)service instance:(id)instance;
+ (id)endpointForSystemMachName:(id)name service:(id)service instance:(id)instance;
+ (id)endpointOfLaunchIdentifier:(id)identifier fromLaunchResponse:(id)response withService:(id)service instance:(id)instance error:(id *)error;
+ (id)nullEndpointForService:(id)service instance:(id)instance;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNonLaunching;
- (BSServiceConnectionEndpoint)init;
- (BSServiceConnectionEndpoint)initWithBSXPCCoder:(id)coder;
- (BSServiceConnectionEndpoint)initWithCoder:(id)coder;
- (BSServiceConnectionEndpoint)initWithXPCDictionary:(id)dictionary;
- (NSString)description;
- (NSString)targetDescription;
- (id)_endowmentRepresentation;
- (id)_initForNullEndpointWithService:(void *)service instance:;
- (id)_initWithEndpoint:(void *)endpoint service:(void *)service instance:;
- (id)_injectorDescription;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
- (void)saveAsInjectorEndowmentForKey:(id)key;
@end

@implementation BSServiceConnectionEndpoint

- (NSString)targetDescription
{
  underlyingEndpoint = self->_underlyingEndpoint;
  if (underlyingEndpoint)
  {
    return underlyingEndpoint->_targetDescription;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)hash
{
  v3 = [(BSXPCServiceConnectionEndpoint *)self->_underlyingEndpoint hash];
  v4 = [(NSString *)self->_service hash]^ v3;
  return v4 ^ [(NSString *)self->_instance hash];
}

- (BOOL)isNonLaunching
{
  underlyingEndpoint = self->_underlyingEndpoint;
  if (underlyingEndpoint)
  {
    LOBYTE(underlyingEndpoint) = underlyingEndpoint->_nonLaunching;
  }

  return underlyingEndpoint & 1;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(BSXPCServiceConnectionEndpoint *)self->_underlyingEndpoint description];
  [v3 appendString:v4 withName:@"target" skipIfEmpty:0];

  [v3 appendString:self->_service withName:@"service" skipIfEmpty:0];
  [v3 appendString:self->_instance withName:@"instance" skipIfEmpty:1];
  build = [v3 build];

  return build;
}

- (BSServiceConnectionEndpoint)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BSServiceConnectionEndpoint"];
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
    v17 = @"BSServiceConnectionEndpoint.m";
    v18 = 1024;
    v19 = 98;
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

- (id)_initWithEndpoint:(void *)endpoint service:(void *)service instance:
{
  v80 = *MEMORY[0x1E69E9840];
  v8 = a2;
  endpointCopy = endpoint;
  serviceCopy = service;
  if (self)
  {
    v11 = v8;
    if (!v11)
    {
      v22 = MEMORY[0x1E696AEC0];
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = [v22 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"endpoint", v24];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v26 = NSStringFromSelector(sel__initWithEndpoint_service_instance_);
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        *buf = 138544642;
        v69 = v26;
        v70 = 2114;
        v71 = v28;
        v72 = 2048;
        selfCopy5 = self;
        v74 = 2114;
        v75 = @"BSServiceConnectionEndpoint.m";
        v76 = 1024;
        v77 = 103;
        v78 = 2114;
        v79 = v25;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v29 = v25;
      [v25 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A87C324);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v30 = MEMORY[0x1E696AEC0];
      classForCoder = [v11 classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v32 = NSStringFromClass(classForCoder);
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = [v30 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"endpoint", v32, v34];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v36 = NSStringFromSelector(sel__initWithEndpoint_service_instance_);
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        *buf = 138544642;
        v69 = v36;
        v70 = 2114;
        v71 = v38;
        v72 = 2048;
        selfCopy5 = self;
        v74 = 2114;
        v75 = @"BSServiceConnectionEndpoint.m";
        v76 = 1024;
        v77 = 103;
        v78 = 2114;
        v79 = v35;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v39 = v35;
      [v35 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A87C46CLL);
    }

    v12 = endpointCopy;
    v13 = MEMORY[0x1E696AEC0];
    if (!v12)
    {
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      v42 = [v13 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"service", v41];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v43 = NSStringFromSelector(sel__initWithEndpoint_service_instance_);
        v44 = objc_opt_class();
        v45 = NSStringFromClass(v44);
        *buf = 138544642;
        v69 = v43;
        v70 = 2114;
        v71 = v45;
        v72 = 2048;
        selfCopy5 = self;
        v74 = 2114;
        v75 = @"BSServiceConnectionEndpoint.m";
        v76 = 1024;
        v77 = 104;
        v78 = 2114;
        v79 = v42;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v46 = v42;
      [v42 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A87C584);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v47 = MEMORY[0x1E696AEC0];
      classForCoder2 = [v12 classForCoder];
      if (!classForCoder2)
      {
        classForCoder2 = objc_opt_class();
      }

      v49 = NSStringFromClass(classForCoder2);
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      v52 = [v47 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"service", v49, v51];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v53 = NSStringFromSelector(sel__initWithEndpoint_service_instance_);
        v54 = objc_opt_class();
        v55 = NSStringFromClass(v54);
        *buf = 138544642;
        v69 = v53;
        v70 = 2114;
        v71 = v55;
        v72 = 2048;
        selfCopy5 = self;
        v74 = 2114;
        v75 = @"BSServiceConnectionEndpoint.m";
        v76 = 1024;
        v77 = 104;
        v78 = 2114;
        v79 = v52;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v56 = v52;
      [v52 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A87C6C8);
    }

    v14 = serviceCopy;
    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v57 = MEMORY[0x1E696AEC0];
        classForCoder3 = [v14 classForCoder];
        if (!classForCoder3)
        {
          classForCoder3 = objc_opt_class();
        }

        v59 = NSStringFromClass(classForCoder3);
        v60 = objc_opt_class();
        v61 = NSStringFromClass(v60);
        v62 = [v57 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"instance", v59, v61];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v63 = NSStringFromSelector(sel__initWithEndpoint_service_instance_);
          v64 = objc_opt_class();
          v65 = NSStringFromClass(v64);
          *buf = 138544642;
          v69 = v63;
          v70 = 2114;
          v71 = v65;
          v72 = 2048;
          selfCopy5 = self;
          v74 = 2114;
          v75 = @"BSServiceConnectionEndpoint.m";
          v76 = 1024;
          v77 = 105;
          v78 = 2114;
          v79 = v62;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v66 = v62;
        [v62 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A87C80CLL);
      }
    }

    v67.receiver = self;
    v67.super_class = BSServiceConnectionEndpoint;
    v15 = objc_msgSendSuper2(&v67, sel_init);
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(v15 + 3, a2);
      v17 = [v12 copy];
      v18 = v16[1];
      v16[1] = v17;

      v19 = [v14 copy];
      v20 = v16[2];
      v16[2] = v19;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_initForNullEndpointWithService:(void *)service instance:
{
  v5 = a2;
  serviceCopy = service;
  if (self)
  {
    v7 = +[BSXPCServiceConnectionEndpoint nullEndpoint];
    self = [(BSServiceConnectionEndpoint *)self _initWithEndpoint:v7 service:v5 instance:serviceCopy];
  }

  return self;
}

+ (id)endpointForMachName:(id)name service:(id)service instance:(id)instance
{
  nameCopy = name;
  serviceCopy = service;
  instanceCopy = instance;
  v10 = 0;
  if (nameCopy && serviceCopy)
  {
    [nameCopy UTF8String];
    bs_named = xpc_endpoint_create_bs_named();
    if (bs_named)
    {
      v12 = [BSXPCServiceConnectionEndpoint alloc];
      v13 = BSServiceConnectionEndpointTargetDescriptionForMachName(nameCopy, 0);
      v14 = [(BSXPCServiceConnectionEndpoint *)&v12->super.isa initWithXPCEndpoint:0 oneshot:0 nonLaunching:0 targetPID:v13 targetDescription:?];

      v10 = [[BSServiceConnectionEndpoint alloc] _initWithEndpoint:v14 service:serviceCopy instance:instanceCopy];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

+ (id)endpointForMachName:(id)name targetUserIdentifier:(unsigned int)identifier service:(id)service instance:(id)instance
{
  v8 = *&identifier;
  nameCopy = name;
  serviceCopy = service;
  instanceCopy = instance;
  v12 = 0;
  if (nameCopy && serviceCopy)
  {
    [nameCopy UTF8String];
    bs_named_user = xpc_endpoint_create_bs_named_user();
    if (bs_named_user)
    {
      v14 = [BSXPCServiceConnectionEndpoint alloc];
      v15 = BSServiceConnectionEndpointTargetDescriptionForMachName(nameCopy, v8);
      v16 = [(BSXPCServiceConnectionEndpoint *)&v14->super.isa initWithXPCEndpoint:0 oneshot:0 nonLaunching:0 targetPID:v15 targetDescription:?];

      v12 = [[BSServiceConnectionEndpoint alloc] _initWithEndpoint:v16 service:serviceCopy instance:instanceCopy];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

+ (id)endpointForSystemMachName:(id)name service:(id)service instance:(id)instance
{
  nameCopy = name;
  serviceCopy = service;
  instanceCopy = instance;
  v10 = 0;
  if (nameCopy && serviceCopy)
  {
    [nameCopy UTF8String];
    bs_named = xpc_endpoint_create_bs_named();
    if (bs_named)
    {
      v12 = [BSXPCServiceConnectionEndpoint alloc];
      v13 = BSServiceConnectionEndpointTargetDescriptionForMachName(nameCopy, 0);
      v14 = [(BSXPCServiceConnectionEndpoint *)&v12->super.isa initWithXPCEndpoint:0 oneshot:0 nonLaunching:0 targetPID:v13 targetDescription:?];

      v10 = [[BSServiceConnectionEndpoint alloc] _initWithEndpoint:v14 service:serviceCopy instance:instanceCopy];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

+ (id)endpointForServiceName:(id)name oneshot:(id)oneshot service:(id)service instance:(id)instance
{
  v21[2] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  oneshotCopy = oneshot;
  serviceCopy = service;
  instanceCopy = instance;
  v13 = 0;
  if (nameCopy && serviceCopy)
  {
    if (oneshotCopy)
    {
      v21[0] = 0;
      v21[1] = 0;
      [oneshotCopy getUUIDBytes:v21];
      v14 = nameCopy;
      [nameCopy UTF8String];
      bs_service = xpc_endpoint_create_bs_service();
    }

    else
    {
      [nameCopy UTF8String];
      bs_service = xpc_endpoint_create_bs_service();
    }

    v16 = bs_service;
    if (bs_service)
    {
      v17 = [BSXPCServiceConnectionEndpoint alloc];
      v18 = BSServiceConnectionEndpointTargetDescriptionForServiceLookup(nameCopy, oneshotCopy);
      v19 = [(BSXPCServiceConnectionEndpoint *)&v17->super.isa initWithXPCEndpoint:v16 oneshot:oneshotCopy nonLaunching:0 targetPID:0 targetDescription:v18];

      v13 = [[BSServiceConnectionEndpoint alloc] _initWithEndpoint:v19 service:serviceCopy instance:instanceCopy];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (int64_t)compare:(id)compare
{
  v31 = *MEMORY[0x1E69E9840];
  compareCopy = compare;
  NSClassFromString(&cfstr_Bsserviceconne_6.isa);
  if (!compareCopy)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v20 = v10;
      v21 = 2114;
      v22 = v12;
      v23 = 2048;
      selfCopy2 = self;
      v25 = 2114;
      v26 = @"BSServiceConnectionEndpoint.m";
      v27 = 1024;
      v28 = 211;
      v29 = 2114;
      v30 = v9;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v13 = v9;
    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A87D258);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSServiceConnectionEndpointClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138544642;
      v20 = v15;
      v21 = 2114;
      v22 = v17;
      v23 = 2048;
      selfCopy2 = self;
      v25 = 2114;
      v26 = @"BSServiceConnectionEndpoint.m";
      v27 = 1024;
      v28 = 211;
      v29 = 2114;
      v30 = v14;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v18 = v14;
    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A87D35CLL);
  }

  v6 = [(NSString *)self->_service compare:compareCopy[1]];
  if (v6 == NSOrderedSame)
  {
    if (BSEqualStrings())
    {
      goto LABEL_5;
    }

    instance = self->_instance;
    if (!instance)
    {
      v6 = NSOrderedAscending;
      goto LABEL_12;
    }

    if (!compareCopy[2])
    {
      v6 = NSOrderedDescending;
      goto LABEL_12;
    }

    v6 = [(NSString *)instance compare:?];
    if (v6 == NSOrderedSame)
    {
LABEL_5:
      v6 = [(BSXPCServiceConnectionEndpoint *)self->_underlyingEndpoint compare:?];
    }
  }

LABEL_12:

  return v6;
}

+ (id)nullEndpointForService:(id)service instance:(id)instance
{
  serviceCopy = service;
  instanceCopy = instance;
  v7 = [[BSServiceConnectionEndpoint alloc] _initForNullEndpointWithService:serviceCopy instance:instanceCopy];

  return v7;
}

- (void)saveAsInjectorEndowmentForKey:(id)key
{
  v20 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v5 = _MergedGlobals_16;
  v16 = _MergedGlobals_16;
  if (!_MergedGlobals_16)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getRBSServiceClass_block_invoke;
    v18 = &unk_1E75200F8;
    v19 = &v13;
    __getRBSServiceClass_block_invoke(buf);
    v5 = v14[3];
  }

  v6 = v5;
  _Block_object_dispose(&v13, 8);
  _endowmentRepresentation = [(BSServiceConnectionEndpoint *)self _endowmentRepresentation];
  v12 = 0;
  v8 = [v5 saveEndowment:_endowmentRepresentation forKey:keyCopy withError:&v12];
  v9 = v12;

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  if ((v10 & 1) == 0)
  {
    v11 = BSServiceInjectionLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *&buf[4] = keyCopy;
      *&buf[12] = 2112;
      *&buf[14] = self;
      *&buf[22] = 2112;
      v18 = v9;
      _os_log_error_impl(&dword_19A821000, v11, OS_LOG_TYPE_ERROR, "BSServiceConnectionEndpoint: error saving as injector endowment for '%@' : endpoint=%@, error=%@", buf, 0x20u);
    }
  }
}

- (id)_endowmentRepresentation
{
  if (self)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (![(BSXPCServiceConnectionEndpoint *)self[3] isNullEndpoint])
    {
      v3 = self[3];
      if (v3 && (v4 = *(v3 + 16)) != 0)
      {
        v5 = v4;
        v6 = objc_alloc_init(MEMORY[0x1E696B0E0]);
        [v6 _setEndpoint:v5];

        [dictionary setObject:v6 forKey:@"e"];
      }

      else
      {
        v5 = 0;
      }

      v7 = self[3];
      if (v7)
      {
        v8 = *(v7 + 24);
        if (v8)
        {
          [dictionary setObject:v8 forKey:@"o"];
        }
      }

      else
      {
        v8 = 0;
      }

      v9 = self[3];
      if (v9)
      {
        if (*(v9 + 8) != 1 || ([dictionary setObject:MEMORY[0x1E695E118] forKey:@"nl"], (v9 = self[3]) != 0))
        {
          if (!*(v9 + 12) || ([MEMORY[0x1E696AD98] numberWithInt:?], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(dictionary, "setObject:forKey:", v10, @"p"), v10, (v9 = self[3]) != 0))
          {
            v9 = *(v9 + 32);
          }
        }
      }

      v11 = v9;
      [dictionary setObject:v11 forKey:@"t"];
    }

    [dictionary setObject:self[1] forKey:@"s"];
    v12 = self[2];
    if (v12)
    {
      [dictionary setObject:v12 forKey:@"i"];
    }

    v13 = [dictionary copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)endpointOfLaunchIdentifier:(id)identifier fromLaunchResponse:(id)response withService:(id)service instance:(id)instance error:(id *)error
{
  v113 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  responseCopy = response;
  serviceCopy = service;
  instanceCopy = instance;
  v16 = identifierCopy;
  v17 = MEMORY[0x1E696AEC0];
  v90 = v16;
  if (!v16)
  {
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v39 = [v17 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"identifier", v38];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v40 = NSStringFromSelector(a2);
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      *buf = 138544642;
      v104 = v40;
      v105 = 2114;
      v106 = v42;
      v107 = 2048;
      *v108 = self;
      *&v108[8] = 2114;
      *&v108[10] = @"BSServiceConnectionEndpoint.m";
      v109 = 1024;
      v110 = 268;
      v111 = 2114;
      v112 = v39;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v43 = v39;
    [v39 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A87DE7CLL);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v44 = MEMORY[0x1E696AEC0];
    classForCoder = [v90 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v46 = NSStringFromClass(classForCoder);
    v47 = objc_opt_class();
    v48 = NSStringFromClass(v47);
    v49 = [v44 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"identifier", v46, v48];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v50 = NSStringFromSelector(a2);
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      *buf = 138544642;
      v104 = v50;
      v105 = 2114;
      v106 = v52;
      v107 = 2048;
      *v108 = self;
      *&v108[8] = 2114;
      *&v108[10] = @"BSServiceConnectionEndpoint.m";
      v109 = 1024;
      v110 = 268;
      v111 = 2114;
      v112 = v49;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v53 = v49;
    [v49 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A87DFC0);
  }

  v18 = responseCopy;
  NSClassFromString(&cfstr_Rbslaunchrespo.isa);
  if (!v18)
  {
    v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BSServiceConnectionEndpoint endpointOfLaunchIdentifier:fromLaunchResponse:withService:instance:error:]"];
      *buf = 138544130;
      v104 = v55;
      v105 = 2114;
      v106 = @"BSServiceConnectionEndpoint.m";
      v107 = 1024;
      *v108 = 269;
      *&v108[4] = 2114;
      *&v108[6] = v54;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    v56 = v54;
    [v54 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A87E094);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:RBSLaunchResponseClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v58 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BSServiceConnectionEndpoint endpointOfLaunchIdentifier:fromLaunchResponse:withService:instance:error:]"];
      *buf = 138544130;
      v104 = v58;
      v105 = 2114;
      v106 = @"BSServiceConnectionEndpoint.m";
      v107 = 1024;
      *v108 = 269;
      *&v108[4] = 2114;
      *&v108[6] = v57;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    v59 = v57;
    [v57 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A87E168);
  }

  v19 = serviceCopy;
  v20 = MEMORY[0x1E696AEC0];
  if (!v19)
  {
    v60 = objc_opt_class();
    v61 = NSStringFromClass(v60);
    v62 = [v20 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"service", v61];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v63 = NSStringFromSelector(a2);
      v64 = objc_opt_class();
      v65 = NSStringFromClass(v64);
      *buf = 138544642;
      v104 = v63;
      v105 = 2114;
      v106 = v65;
      v107 = 2048;
      *v108 = self;
      *&v108[8] = 2114;
      *&v108[10] = @"BSServiceConnectionEndpoint.m";
      v109 = 1024;
      v110 = 270;
      v111 = 2114;
      v112 = v62;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v66 = v62;
    [v62 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A87E280);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v67 = MEMORY[0x1E696AEC0];
    classForCoder2 = [v19 classForCoder];
    if (!classForCoder2)
    {
      classForCoder2 = objc_opt_class();
    }

    v69 = NSStringFromClass(classForCoder2);
    v70 = objc_opt_class();
    v71 = NSStringFromClass(v70);
    v72 = [v67 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"service", v69, v71];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v73 = NSStringFromSelector(a2);
      v74 = objc_opt_class();
      v75 = NSStringFromClass(v74);
      *buf = 138544642;
      v104 = v73;
      v105 = 2114;
      v106 = v75;
      v107 = 2048;
      *v108 = self;
      *&v108[8] = 2114;
      *&v108[10] = @"BSServiceConnectionEndpoint.m";
      v109 = 1024;
      v110 = 270;
      v111 = 2114;
      v112 = v72;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v76 = v72;
    [v72 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A87E3C4);
  }

  v21 = instanceCopy;
  if (v21)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v77 = MEMORY[0x1E696AEC0];
      classForCoder3 = [v21 classForCoder];
      if (!classForCoder3)
      {
        classForCoder3 = objc_opt_class();
      }

      v79 = NSStringFromClass(classForCoder3);
      v80 = objc_opt_class();
      v81 = NSStringFromClass(v80);
      v82 = [v77 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"instance", v79, v81];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v83 = NSStringFromSelector(a2);
        v84 = objc_opt_class();
        v85 = NSStringFromClass(v84);
        *buf = 138544642;
        v104 = v83;
        v105 = 2114;
        v106 = v85;
        v107 = 2048;
        *v108 = self;
        *&v108[8] = 2114;
        *&v108[10] = @"BSServiceConnectionEndpoint.m";
        v109 = 1024;
        v110 = 271;
        v111 = 2114;
        v112 = v82;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v86 = v82;
      [v82 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A87E508);
    }
  }

  process = [v18 process];
  managedEndpointByLaunchIdentifier = [v18 managedEndpointByLaunchIdentifier];
  v23 = [managedEndpointByLaunchIdentifier objectForKey:v90];
  v24 = v23;
  if (process && v23)
  {
    endpoint = [v23 endpoint];
    if (endpoint)
    {
      identity = [process identity];
      if ([identity isXPCService])
      {
        uuid = [identity uuid];
        name = [v24 name];
        v28 = BSServiceConnectionEndpointTargetDescriptionForServiceLookup(name, uuid);
      }

      else
      {
        name = [v24 name];
        v28 = BSServiceConnectionEndpointTargetDescriptionForMachName(name, 0);
        uuid = 0;
      }

      v34 = -[BSXPCServiceConnectionEndpoint initWithXPCEndpoint:oneshot:nonLaunching:targetPID:targetDescription:]([BSXPCServiceConnectionEndpoint alloc], endpoint, uuid, [v24 isNonLaunching], 0, v28);
      v31 = [[BSServiceConnectionEndpoint alloc] _initWithEndpoint:v34 service:v19 instance:v21];
    }

    else
    {
      if (error)
      {
        v32 = MEMORY[0x1E696ABC0];
        v33 = *MEMORY[0x1E696A5A0];
        v98[0] = MEMORY[0x1E69E9820];
        v98[1] = 3221225472;
        v98[2] = __104__BSServiceConnectionEndpoint_endpointOfLaunchIdentifier_fromLaunchResponse_withService_instance_error___block_invoke;
        v98[3] = &unk_1E7521348;
        v99 = v24;
        v100 = v90;
        v101 = process;
        v102 = v18;
        *error = [v32 bs_errorWithDomain:v33 code:1 configuration:v98];
      }

      endpoint = 0;
      v31 = 0;
    }
  }

  else
  {
    if (!error)
    {
      v31 = 0;
      goto LABEL_25;
    }

    v29 = MEMORY[0x1E696ABC0];
    if (process)
    {
      v30 = *MEMORY[0x1E696A5A0];
      v93[0] = MEMORY[0x1E69E9820];
      v93[1] = 3221225472;
      v93[2] = __104__BSServiceConnectionEndpoint_endpointOfLaunchIdentifier_fromLaunchResponse_withService_instance_error___block_invoke_2;
      v93[3] = &unk_1E7521348;
      v94 = v90;
      v95 = process;
      v96 = managedEndpointByLaunchIdentifier;
      v97 = v18;
      *error = [v29 bs_errorWithDomain:v30 code:56 configuration:v93];

      v31 = 0;
      endpoint = v94;
    }

    else
    {
      v35 = *MEMORY[0x1E696A798];
      v91[0] = MEMORY[0x1E69E9820];
      v91[1] = 3221225472;
      v91[2] = __104__BSServiceConnectionEndpoint_endpointOfLaunchIdentifier_fromLaunchResponse_withService_instance_error___block_invoke_3;
      v91[3] = &unk_1E7521370;
      v92 = v18;
      [v29 bs_errorWithDomain:v35 code:3 configuration:v91];
      *error = v31 = 0;
      endpoint = v92;
    }
  }

LABEL_25:

  return v31;
}

void __104__BSServiceConnectionEndpoint_endpointOfLaunchIdentifier_fromLaunchResponse_withService_instance_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setFailureReason:{@"invalid xpcEndpoint for %@ with launch identifier '%@' from %@", *(a1 + 32), *(a1 + 40), *(a1 + 48)}];
  v3 = [*(a1 + 56) error];
  [v4 setUnderlyingError:v3];
}

void __104__BSServiceConnectionEndpoint_endpointOfLaunchIdentifier_fromLaunchResponse_withService_instance_error___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setFailureReason:{@"could not find launch identifier '%@' in returned endpoints of %@ : %@", *(a1 + 32), *(a1 + 40), *(a1 + 48)}];
  v3 = [*(a1 + 56) error];
  [v4 setUnderlyingError:v3];
}

void __104__BSServiceConnectionEndpoint_endpointOfLaunchIdentifier_fromLaunchResponse_withService_instance_error___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setFailureReason:@"launch response did not return a process"];
  v3 = [*(a1 + 32) error];
  [v4 setUnderlyingError:v3];
}

+ (id)_endpointForManager:(void *)manager domain:(void *)domain service:(void *)service instance:
{
  v71 = *MEMORY[0x1E69E9840];
  v8 = a2;
  managerCopy = manager;
  domainCopy = domain;
  serviceCopy = service;
  v12 = objc_opt_self();
  v13 = v8;
  if (!v13)
  {
    v19 = MEMORY[0x1E696AEC0];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [v19 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"manager", v21];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(sel__endpointForManager_domain_service_instance_);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138544642;
      v60 = v23;
      v61 = 2114;
      v62 = v25;
      v63 = 2048;
      v64 = v12;
      v65 = 2114;
      v66 = @"BSServiceConnectionEndpoint.m";
      v67 = 1024;
      v68 = 348;
      v69 = 2114;
      v70 = v22;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v26 = v22;
    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A87EBE4);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v27 = MEMORY[0x1E696AEC0];
    classForCoder = [v13 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v29 = NSStringFromClass(classForCoder);
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    v32 = [v27 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"manager", v29, v31];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v33 = NSStringFromSelector(sel__endpointForManager_domain_service_instance_);
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      *buf = 138544642;
      v60 = v33;
      v61 = 2114;
      v62 = v35;
      v63 = 2048;
      v64 = v12;
      v65 = 2114;
      v66 = @"BSServiceConnectionEndpoint.m";
      v67 = 1024;
      v68 = 348;
      v69 = 2114;
      v70 = v32;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v36 = v32;
    [v32 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A87ED2CLL);
  }

  v14 = managerCopy;
  v15 = MEMORY[0x1E696AEC0];
  if (!v14)
  {
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v39 = [v15 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"domainIdentifier", v38];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v40 = NSStringFromSelector(sel__endpointForManager_domain_service_instance_);
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      *buf = 138544642;
      v60 = v40;
      v61 = 2114;
      v62 = v42;
      v63 = 2048;
      v64 = v12;
      v65 = 2114;
      v66 = @"BSServiceConnectionEndpoint.m";
      v67 = 1024;
      v68 = 349;
      v69 = 2114;
      v70 = v39;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v43 = v39;
    [v39 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A87EE44);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v44 = MEMORY[0x1E696AEC0];
    classForCoder2 = [v14 classForCoder];
    if (!classForCoder2)
    {
      classForCoder2 = objc_opt_class();
    }

    v46 = NSStringFromClass(classForCoder2);
    v47 = objc_opt_class();
    v48 = NSStringFromClass(v47);
    v49 = [v44 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"domainIdentifier", v46, v48];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v50 = NSStringFromSelector(sel__endpointForManager_domain_service_instance_);
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      *buf = 138544642;
      v60 = v50;
      v61 = 2114;
      v62 = v52;
      v63 = 2048;
      v64 = v12;
      v65 = 2114;
      v66 = @"BSServiceConnectionEndpoint.m";
      v67 = 1024;
      v68 = 349;
      v69 = 2114;
      v70 = v49;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v53 = v49;
    [v49 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A87EF88);
  }

  v16 = [(BSServiceManager *)v13 domainWithIdentifier:v14];
  if (!v16)
  {
    v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to find domain %@", v14];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v55 = NSStringFromSelector(sel__endpointForManager_domain_service_instance_);
      v56 = objc_opt_class();
      v57 = NSStringFromClass(v56);
      *buf = 138544642;
      v60 = v55;
      v61 = 2114;
      v62 = v57;
      v63 = 2048;
      v64 = v12;
      v65 = 2114;
      v66 = @"BSServiceConnectionEndpoint.m";
      v67 = 1024;
      v68 = 353;
      v69 = 2114;
      v70 = v54;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v58 = v54;
    [v54 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A87F080);
  }

  v17 = [BSServiceConnectionEndpoint _endpointForDomain:v16 service:domainCopy instance:serviceCopy];

  return v17;
}

+ (id)_endpointForDomain:(void *)domain service:(void *)service instance:
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a2;
  domainCopy = domain;
  serviceCopy = service;
  v9 = objc_opt_self();
  v10 = v6;
  if (!v10)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v17 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"domain", v19];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = NSStringFromSelector(sel__endpointForDomain_service_instance_);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138544642;
      v44 = v21;
      v45 = 2114;
      v46 = v23;
      v47 = 2048;
      v48 = v9;
      v49 = 2114;
      v50 = @"BSServiceConnectionEndpoint.m";
      v51 = 1024;
      v52 = 359;
      v53 = 2114;
      v54 = v20;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v24 = v20;
    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A87F420);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v25 = MEMORY[0x1E696AEC0];
    classForCoder = [v10 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v27 = NSStringFromClass(classForCoder);
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v30 = [v25 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"domain", v27, v29];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v31 = NSStringFromSelector(sel__endpointForDomain_service_instance_);
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      *buf = 138544642;
      v44 = v31;
      v45 = 2114;
      v46 = v33;
      v47 = 2048;
      v48 = v9;
      v49 = 2114;
      v50 = @"BSServiceConnectionEndpoint.m";
      v51 = 1024;
      v52 = 359;
      v53 = 2114;
      v54 = v30;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v34 = v30;
    [v30 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A87F568);
  }

  endpoint = [(BSServiceDomain *)v10 endpoint];
  v12 = endpoint;
  if (endpoint)
  {
    v13 = *(endpoint + 16);
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (!v14)
  {
    v35 = MEMORY[0x1E696AEC0];
    if (v12)
    {
      v36 = v12[4];
    }

    else
    {
      v36 = 0;
    }

    v37 = v36;
    v38 = [v35 stringWithFormat:@"failed to get an xpcEndpoint for the service listener %@", v37];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v39 = NSStringFromSelector(sel__endpointForDomain_service_instance_);
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      *buf = 138544642;
      v44 = v39;
      v45 = 2114;
      v46 = v41;
      v47 = 2048;
      v48 = v9;
      v49 = 2114;
      v50 = @"BSServiceConnectionEndpoint.m";
      v51 = 1024;
      v52 = 362;
      v53 = 2114;
      v54 = v38;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v42 = v38;
    [v38 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A87F67CLL);
  }

  v15 = [[BSServiceConnectionEndpoint alloc] _initWithEndpoint:v12 service:domainCopy instance:serviceCopy];

  return v15;
}

+ (id)_endpointFromEndowmentRepresentation:(uint64_t)representation
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKey:@"p"];
    v4 = objc_opt_class();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v9 = v6;

    intValue = [v9 intValue];
    v11 = [v2 objectForKey:@"e"];
    v12 = objc_opt_class();
    v13 = v11;
    if (v12)
    {
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    v45 = v15;
    _endpoint = [v15 _endpoint];
    v16 = [v2 objectForKey:@"o"];
    v17 = objc_opt_class();
    v18 = v16;
    if (v17)
    {
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    v21 = [v2 objectForKey:@"nl"];
    v22 = objc_opt_class();
    v23 = v21;
    if (v22)
    {
      v24 = intValue;
      if (objc_opt_isKindOfClass())
      {
        v25 = v23;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v24 = intValue;
      v25 = 0;
    }

    v26 = v25;

    bOOLValue = [v26 BOOLValue];
    v28 = [v2 objectForKey:@"t"];
    v29 = objc_opt_class();
    v30 = v28;
    if (v29)
    {
      if (objc_opt_isKindOfClass())
      {
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;

    v33 = [v2 objectForKey:@"s"];
    v34 = objc_opt_class();
    v35 = v33;
    if (v34)
    {
      if (objc_opt_isKindOfClass())
      {
        v36 = v35;
      }

      else
      {
        v36 = 0;
      }
    }

    else
    {
      v36 = 0;
    }

    v37 = v36;

    v38 = [v2 objectForKey:@"i"];
    v39 = objc_opt_class();
    v40 = v38;
    if (v39)
    {
      if (objc_opt_isKindOfClass())
      {
        v41 = v40;
      }

      else
      {
        v41 = 0;
      }
    }

    else
    {
      v41 = 0;
    }

    v42 = v41;

    v8 = __decodedEndpoint(0, _endpoint, v20, bOOLValue, v24 & ~(v24 >> 31), v32, v37, v42, @"endowment");
  }

  else
  {
    v7 = BSServiceInjectionLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v47 = v2;
      _os_log_error_impl(&dword_19A821000, v7, OS_LOG_TYPE_ERROR, "BSServiceConnectionEndpoint: Unable to decode endowment : %@", buf, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (id)_injectorDescription
{
  if (self)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = self[2];
    v4 = [self[3] description];
    __escaped(self[1]);
    if (v3)
      v5 = {;
      v6 = __escaped(self[2]);
      v7 = [v2 stringWithFormat:@"%@{%@:%@}", v4, v5, v6];
    }

    else
      v5 = {;
      v7 = [v2 stringWithFormat:@"%@{%@}", v4, v5];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  v15 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if (![(BSXPCServiceConnectionEndpoint *)self->_underlyingEndpoint isNullEndpoint])
  {
    underlyingEndpoint = self->_underlyingEndpoint;
    if (underlyingEndpoint)
    {
      v6 = underlyingEndpoint->_xpcEndpoint;
      if (v6)
      {
        xpc_dictionary_set_value(dictionaryCopy, [@"e" UTF8String], v6);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = self->_underlyingEndpoint;
    if (v7)
    {
      v8 = v7->_oneshot;
      v9 = v8;
      if (v8)
      {
        *uuid = 0;
        v14 = 0;
        [(NSUUID *)v8 getUUIDBytes:uuid];
        xpc_dictionary_set_uuid(dictionaryCopy, [@"o" UTF8String], uuid);
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = self->_underlyingEndpoint;
    if (v10)
    {
      if (!v10->_nonLaunching || (xpc_dictionary_set_BOOL(dictionaryCopy, [@"nl" UTF8String], 1), (v10 = self->_underlyingEndpoint) != 0))
      {
        targetPID = v10->_targetPID;
        if (!targetPID || (xpc_dictionary_set_int64(dictionaryCopy, [@"p" UTF8String], targetPID), (v10 = self->_underlyingEndpoint) != 0))
        {
          v10 = v10->_targetDescription;
        }
      }
    }

    v12 = v10;
    [@"t" UTF8String];
    BSSerializeStringToXPCDictionaryWithKey();
  }

  [@"s" UTF8String];
  BSSerializeStringToXPCDictionaryWithKey();
  [@"i" UTF8String];
  BSSerializeStringToXPCDictionaryWithKey();
}

- (BSServiceConnectionEndpoint)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = xpc_dictionary_get_value(dictionaryCopy, [@"e" UTF8String]);
  v5 = xpc_dictionary_get_value(dictionaryCopy, [@"o" UTF8String]);
  int64 = xpc_dictionary_get_int64(dictionaryCopy, [@"p" UTF8String]);
  if (v4)
  {
    if (MEMORY[0x19A908710](v4) == MEMORY[0x1E69E9E90])
    {
      v7 = v4;
    }

    else
    {
      v7 = 0;
    }

    if (!v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = 0;
    if (!v5)
    {
LABEL_9:
      v16 = 0;
      v8 = 0;
      goto LABEL_11;
    }
  }

  if (MEMORY[0x19A908710](v5) != MEMORY[0x1E69E9F20])
  {
    goto LABEL_9;
  }

  v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:xpc_uuid_get_bytes(v5)];
  v16 = 1;
LABEL_11:
  v9 = xpc_dictionary_get_BOOL(dictionaryCopy, [@"nl" UTF8String]);
  if ((int64 - 0x80000000) >= 0xFFFFFFFF80000001)
  {
    v10 = int64;
  }

  else
  {
    v10 = 0;
  }

  [@"t" UTF8String];
  v11 = BSCreateDeserializedStringFromXPCDictionaryWithKey();
  [@"s" UTF8String];
  v12 = BSCreateDeserializedStringFromXPCDictionaryWithKey();
  [@"i" UTF8String];
  v13 = BSCreateDeserializedStringFromXPCDictionaryWithKey();
  v14 = __decodedEndpoint(self, v7, v8, v9, v10, v11, v12, v13, @"BSXPCCoding");

  if (v16)
  {
  }

  return v14;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  if (![(BSXPCServiceConnectionEndpoint *)self->_underlyingEndpoint isNullEndpoint])
  {
    underlyingEndpoint = self->_underlyingEndpoint;
    if (underlyingEndpoint)
    {
      v5 = underlyingEndpoint->_xpcEndpoint;
      if (v5)
      {
        [coderCopy encodeXPCObject:v5 forKey:@"e"];
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = self->_underlyingEndpoint;
    if (v6)
    {
      v7 = v6->_oneshot;
      if (v7)
      {
        [coderCopy encodeObject:v7 forKey:@"o"];
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = self->_underlyingEndpoint;
    if (v8)
    {
      v9 = coderCopy;
      if (!v8->_nonLaunching || ([coderCopy encodeBool:1 forKey:@"nl"], v8 = self->_underlyingEndpoint, v9 = coderCopy, v8))
      {
        targetPID = v8->_targetPID;
        if (!targetPID || ([v9 encodeInt64:targetPID forKey:@"p"], (v8 = self->_underlyingEndpoint) != 0))
        {
          v8 = v8->_targetDescription;
        }
      }
    }

    v11 = v8;
    [coderCopy encodeObject:v11 forKey:@"t"];
  }

  [coderCopy encodeObject:self->_service forKey:@"s"];
  [coderCopy encodeObject:self->_instance forKey:@"i"];
}

- (BSServiceConnectionEndpoint)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"p"];
  v6 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9E90] forKey:@"e"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"o"];
  v8 = [coderCopy decodeBoolForKey:@"nl"];
  if ((v5 - 0x80000000) >= 0xFFFFFFFF80000001)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  v10 = [coderCopy decodeStringForKey:@"t"];
  v11 = [coderCopy decodeStringForKey:@"s"];
  v12 = [coderCopy decodeStringForKey:@"i"];
  v13 = __decodedEndpoint(self, v6, v7, v8, v9, v10, v11, v12, @"BSXPCSecureCoding");

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (![(BSXPCServiceConnectionEndpoint *)self->_underlyingEndpoint isNullEndpoint])
  {
    underlyingEndpoint = self->_underlyingEndpoint;
    if (underlyingEndpoint)
    {
      v5 = underlyingEndpoint->_xpcEndpoint;
      if (v5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [coderCopy encodeXPCObject:v5 forKey:@"e"];
        }

        else
        {
          v6 = MEMORY[0x1E695DF30];
          v7 = objc_opt_class();
          v8 = NSStringFromClass(v7);
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          [v6 raise:*MEMORY[0x1E695D940] format:{@"An %@ can not be coded by an instance of %@", v8, v10}];
        }
      }
    }

    else
    {
      v5 = 0;
    }

    v11 = self->_underlyingEndpoint;
    if (v11)
    {
      v12 = v11->_oneshot;
      if (v12)
      {
        [coderCopy encodeObject:v12 forKey:@"o"];
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = self->_underlyingEndpoint;
    if (v13)
    {
      v14 = coderCopy;
      if (!v13->_nonLaunching || ([coderCopy encodeBool:1 forKey:@"nl"], v13 = self->_underlyingEndpoint, v14 = coderCopy, v13))
      {
        targetPID = v13->_targetPID;
        if (!targetPID || ([v14 encodeInt64:targetPID forKey:@"p"], (v13 = self->_underlyingEndpoint) != 0))
        {
          v13 = v13->_targetDescription;
        }
      }
    }

    v16 = v13;
    [coderCopy encodeObject:v16 forKey:@"t"];
  }

  [coderCopy encodeObject:self->_service forKey:@"s"];
  [coderCopy encodeObject:self->_instance forKey:@"i"];
}

- (BSServiceConnectionEndpoint)initWithCoder:(id)coder
{
  v23 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if (![coderCopy containsValueForKey:@"e"])
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = BSServiceInjectionLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138412546;
      v20 = v16;
      v21 = 2112;
      v22 = v18;
      _os_log_error_impl(&dword_19A821000, v6, OS_LOG_TYPE_ERROR, "An %@ can not be coded by an instance of %@", buf, 0x16u);
    }

    goto LABEL_7;
  }

  v5 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9E90] forKey:@"e"];
LABEL_8:
  v7 = [coderCopy decodeIntForKey:@"p"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"o"];
  v9 = [coderCopy decodeBoolForKey:@"nl"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"t"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"s"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"i"];
  v13 = __decodedEndpoint(self, v5, v8, v9, v7 & ~(v7 >> 31), v10, v11, v12, @"NSSecureCoding");

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && BSEqualObjects() && BSEqualStrings())
    {
      v6 = BSEqualStrings();
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end