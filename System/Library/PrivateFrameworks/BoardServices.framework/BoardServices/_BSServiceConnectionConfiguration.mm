@interface _BSServiceConnectionConfiguration
- (_BSServiceConnectionConfiguration)init;
- (void)encodeContext:(id)context;
- (void)setActivationHandler:(id)handler;
- (void)setBatchingHandler:(id)handler;
- (void)setErrorHandler:(id)handler;
- (void)setInterface:(id)interface;
- (void)setInterfaceTarget:(id)target;
- (void)setInterruptionHandler:(id)handler;
- (void)setInvalidationHandler:(id)handler;
- (void)setMessageHandler:(id)handler;
- (void)setMultiplexer:(id)multiplexer;
- (void)setName:(id)name;
- (void)setQueue:(id)queue;
- (void)setServiceQuality:(id)quality;
- (void)setTargetQueue:(id)queue;
- (void)setUserInfo:(id)info;
@end

@implementation _BSServiceConnectionConfiguration

- (_BSServiceConnectionConfiguration)init
{
  v3.receiver = self;
  v3.super_class = _BSServiceConnectionConfiguration;
  result = [(_BSServiceConnectionConfiguration *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)encodeContext:(id)context
{
  v31 = *MEMORY[0x1E69E9840];
  if (!context)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"contextBuilder"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v20 = v9;
      v21 = 2114;
      v22 = v11;
      v23 = 2048;
      selfCopy2 = self;
      v25 = 2114;
      v26 = @"BSServiceConnection.m";
      v27 = 1024;
      v28 = 96;
      v29 = 2114;
      v30 = v8;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v12 = v8;
    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83F258);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_state != 1)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"encodeContext: called outside of options builder"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a2);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138544642;
      v20 = v14;
      v21 = 2114;
      v22 = v16;
      v23 = 2048;
      selfCopy2 = self;
      v25 = 2114;
      v26 = @"BSServiceConnection.m";
      v27 = 1024;
      v28 = 98;
      v29 = 2114;
      v30 = v13;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v17 = v13;
    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83F350);
  }

  coder = [MEMORY[0x1E698E7A8] coder];
  (*(context + 2))(context);
  createMessage = [coder createMessage];
  clientContext = self->_clientContext;
  self->_clientContext = createMessage;
}

- (void)setMultiplexer:(id)multiplexer
{
  v43 = *MEMORY[0x1E69E9840];
  multiplexerCopy = multiplexer;
  if (!multiplexerCopy)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"multiplexer", v10];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v32 = v12;
      v33 = 2114;
      v34 = v14;
      v35 = 2048;
      selfCopy3 = self;
      v37 = 2114;
      v38 = @"BSServiceConnection.m";
      v39 = 1024;
      v40 = 105;
      v41 = 2114;
      v42 = v11;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v15 = v11;
    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83F584);
  }

  v7 = multiplexerCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = MEMORY[0x1E696AEC0];
    classForCoder = [v7 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v18 = NSStringFromClass(classForCoder);
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v16 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"multiplexer", v18, v20];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = NSStringFromSelector(a2);
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138544642;
      v32 = v22;
      v33 = 2114;
      v34 = v24;
      v35 = 2048;
      selfCopy3 = self;
      v37 = 2114;
      v38 = @"BSServiceConnection.m";
      v39 = 1024;
      v40 = 105;
      v41 = 2114;
      v42 = v21;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v25 = v21;
    [v21 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83F6CCLL);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_state != 1)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setMultiplexer: called outside of options builder"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v27 = NSStringFromSelector(a2);
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *buf = 138544642;
      v32 = v27;
      v33 = 2114;
      v34 = v29;
      v35 = 2048;
      selfCopy3 = self;
      v37 = 2114;
      v38 = @"BSServiceConnection.m";
      v39 = 1024;
      v40 = 107;
      v41 = 2114;
      v42 = v26;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v30 = v26;
    [v26 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83F7C4);
  }

  objc_storeStrong(&self->_multiplexer, multiplexer);
}

- (void)setName:(id)name
{
  v44 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v6 = MEMORY[0x1E696AEC0];
  if (!nameCopy)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v6 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"name", v11];

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
      v39 = @"BSServiceConnection.m";
      v40 = 1024;
      v41 = 114;
      v42 = 2114;
      v43 = v12;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v16 = v12;
    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83FA4CLL);
  }

  v7 = nameCopy;
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
    v22 = [v17 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"name", v19, v21];

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
      v39 = @"BSServiceConnection.m";
      v40 = 1024;
      v41 = 114;
      v42 = 2114;
      v43 = v22;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v26 = v22;
    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83FB90);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_state != 2)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setName: called outside of configurator"];
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
      v39 = @"BSServiceConnection.m";
      v40 = 1024;
      v41 = 116;
      v42 = 2114;
      v43 = v27;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v31 = v27;
    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83FC84);
  }

  v8 = [v7 copy];
  name = self->_name;
  self->_name = v8;
}

- (void)setInterface:(id)interface
{
  v44 = *MEMORY[0x1E69E9840];
  interfaceCopy = interface;
  if (!interfaceCopy)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"interface", v11];

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
      v39 = @"BSServiceConnection.m";
      v40 = 1024;
      v41 = 121;
      v42 = 2114;
      v43 = v12;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v16 = v12;
    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83FF10);
  }

  v6 = interfaceCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = MEMORY[0x1E696AEC0];
    classForCoder = [v6 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v19 = NSStringFromClass(classForCoder);
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [v17 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"interface", v19, v21];

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
      v39 = @"BSServiceConnection.m";
      v40 = 1024;
      v41 = 121;
      v42 = 2114;
      v43 = v22;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v26 = v22;
    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A840058);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_state != 2)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setInterface: called outside of configurator"];
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
      v39 = @"BSServiceConnection.m";
      v40 = 1024;
      v41 = 123;
      v42 = 2114;
      v43 = v27;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v31 = v27;
    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A840150);
  }

  v7 = [v6 copy];
  interface = self->_interface;
  self->_interface = v7;
}

- (void)setInterfaceTarget:(id)target
{
  v28 = *MEMORY[0x1E69E9840];
  if (!target)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"target"];
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
      v23 = @"BSServiceConnection.m";
      v24 = 1024;
      v25 = 128;
      v26 = 2114;
      v27 = v6;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v10 = v6;
    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A840380);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_state != 2)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setInterfaceTarget: called outside of configurator"];
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
      v23 = @"BSServiceConnection.m";
      v24 = 1024;
      v25 = 130;
      v26 = 2114;
      v27 = v11;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v15 = v11;
    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A840478);
  }

  objc_storeStrong(&self->_target, target);
}

- (void)setQueue:(id)queue
{
  v43 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  if (!queueCopy)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"queue", v10];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v32 = v12;
      v33 = 2114;
      v34 = v14;
      v35 = 2048;
      selfCopy3 = self;
      v37 = 2114;
      v38 = @"BSServiceConnection.m";
      v39 = 1024;
      v40 = 135;
      v41 = 2114;
      v42 = v11;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v15 = v11;
    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A840688);
  }

  v7 = queueCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = MEMORY[0x1E696AEC0];
    classForCoder = [v7 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v18 = NSStringFromClass(classForCoder);
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v16 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"queue", v18, v20];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = NSStringFromSelector(a2);
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138544642;
      v32 = v22;
      v33 = 2114;
      v34 = v24;
      v35 = 2048;
      selfCopy3 = self;
      v37 = 2114;
      v38 = @"BSServiceConnection.m";
      v39 = 1024;
      v40 = 135;
      v41 = 2114;
      v42 = v21;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v25 = v21;
    [v21 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8407D0);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_state != 2)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setQueue: called outside of configurator"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v27 = NSStringFromSelector(a2);
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *buf = 138544642;
      v32 = v27;
      v33 = 2114;
      v34 = v29;
      v35 = 2048;
      selfCopy3 = self;
      v37 = 2114;
      v38 = @"BSServiceConnection.m";
      v39 = 1024;
      v40 = 137;
      v41 = 2114;
      v42 = v26;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v30 = v26;
    [v26 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8408C8);
  }

  objc_storeStrong(&self->_queue, queue);
}

- (void)setUserInfo:(id)info
{
  v30 = *MEMORY[0x1E69E9840];
  if (!info)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"userInfo"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v19 = v9;
      v20 = 2114;
      v21 = v11;
      v22 = 2048;
      selfCopy2 = self;
      v24 = 2114;
      v25 = @"BSServiceConnection.m";
      v26 = 1024;
      v27 = 142;
      v28 = 2114;
      v29 = v8;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v12 = v8;
    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A840B10);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_state != 2)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setUserInfo: called outside of configurator"];
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
      selfCopy2 = self;
      v24 = 2114;
      v25 = @"BSServiceConnection.m";
      v26 = 1024;
      v27 = 144;
      v28 = 2114;
      v29 = v13;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v17 = v13;
    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A840C08);
  }

  v6 = [info copyWithZone:0];
  userInfo = self->_userInfo;
  self->_userInfo = v6;
}

- (void)setServiceQuality:(id)quality
{
  v44 = *MEMORY[0x1E69E9840];
  qualityCopy = quality;
  if (!qualityCopy)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"serviceQuality", v11];

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
      v39 = @"BSServiceConnection.m";
      v40 = 1024;
      v41 = 151;
      v42 = 2114;
      v43 = v12;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v16 = v12;
    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A840E28);
  }

  v6 = qualityCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = MEMORY[0x1E696AEC0];
    classForCoder = [v6 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v19 = NSStringFromClass(classForCoder);
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [v17 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"serviceQuality", v19, v21];

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
      v39 = @"BSServiceConnection.m";
      v40 = 1024;
      v41 = 151;
      v42 = 2114;
      v43 = v22;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v26 = v22;
    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A840F70);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_state != 2)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setServiceQuality: called outside of configurator"];
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
      v39 = @"BSServiceConnection.m";
      v40 = 1024;
      v41 = 153;
      v42 = 2114;
      v43 = v27;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v31 = v27;
    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A841068);
  }

  v7 = [v6 copy];
  serviceQuality = self->_serviceQuality;
  self->_serviceQuality = v7;
}

- (void)setTargetQueue:(id)queue
{
  v30 = *MEMORY[0x1E69E9840];
  if (!queue)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"targetQueue"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v19 = v9;
      v20 = 2114;
      v21 = v11;
      v22 = 2048;
      selfCopy2 = self;
      v24 = 2114;
      v25 = @"BSServiceConnection.m";
      v26 = 1024;
      v27 = 158;
      v28 = 2114;
      v29 = v8;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v12 = v8;
    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8412C4);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_state != 2)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setTargetQueue: called outside of configurator"];
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
      selfCopy2 = self;
      v24 = 2114;
      v25 = @"BSServiceConnection.m";
      v26 = 1024;
      v27 = 160;
      v28 = 2114;
      v29 = v13;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v17 = v13;
    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8413BCLL);
  }

  objc_storeStrong(&self->_targetQueue, queue);
  v6 = [BSServiceDispatchQueue _queueOfDispatchQueue:queue];
  queueOfTargetQueue = self->_queueOfTargetQueue;
  self->_queueOfTargetQueue = v6;
}

- (void)setActivationHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  if (!handler)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v19 = v9;
      v20 = 2114;
      v21 = v11;
      v22 = 2048;
      selfCopy2 = self;
      v24 = 2114;
      v25 = @"BSServiceConnection.m";
      v26 = 1024;
      v27 = 168;
      v28 = 2114;
      v29 = v8;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v12 = v8;
    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A841594);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_state != 2)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setActivationHandler: called outside of configurator"];
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
      selfCopy2 = self;
      v24 = 2114;
      v25 = @"BSServiceConnection.m";
      v26 = 1024;
      v27 = 170;
      v28 = 2114;
      v29 = v13;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v17 = v13;
    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A84168CLL);
  }

  v6 = [handler copy];
  activationHandler = self->_activationHandler;
  self->_activationHandler = v6;
}

- (void)setInterruptionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  if (!handler)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v19 = v9;
      v20 = 2114;
      v21 = v11;
      v22 = 2048;
      selfCopy2 = self;
      v24 = 2114;
      v25 = @"BSServiceConnection.m";
      v26 = 1024;
      v27 = 175;
      v28 = 2114;
      v29 = v8;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v12 = v8;
    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A841864);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_state != 2)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setInterruptionHandler: called outside of configurator"];
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
      selfCopy2 = self;
      v24 = 2114;
      v25 = @"BSServiceConnection.m";
      v26 = 1024;
      v27 = 177;
      v28 = 2114;
      v29 = v13;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v17 = v13;
    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A84195CLL);
  }

  v6 = [handler copy];
  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = v6;
}

- (void)setInvalidationHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  if (!handler)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v19 = v9;
      v20 = 2114;
      v21 = v11;
      v22 = 2048;
      selfCopy2 = self;
      v24 = 2114;
      v25 = @"BSServiceConnection.m";
      v26 = 1024;
      v27 = 188;
      v28 = 2114;
      v29 = v8;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v12 = v8;
    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A841B34);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_state != 2)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setInvalidationHandler: called outside of configurator"];
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
      selfCopy2 = self;
      v24 = 2114;
      v25 = @"BSServiceConnection.m";
      v26 = 1024;
      v27 = 190;
      v28 = 2114;
      v29 = v13;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v17 = v13;
    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A841C2CLL);
  }

  v6 = [handler copy];
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = v6;
}

- (void)setBatchingHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  if (!handler)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v19 = v9;
      v20 = 2114;
      v21 = v11;
      v22 = 2048;
      selfCopy2 = self;
      v24 = 2114;
      v25 = @"BSServiceConnection.m";
      v26 = 1024;
      v27 = 197;
      v28 = 2114;
      v29 = v8;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v12 = v8;
    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A841E04);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_state != 2)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setBatchingHandler: called outside of configurator"];
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
      selfCopy2 = self;
      v24 = 2114;
      v25 = @"BSServiceConnection.m";
      v26 = 1024;
      v27 = 199;
      v28 = 2114;
      v29 = v13;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v17 = v13;
    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A841EFCLL);
  }

  v6 = [handler copy];
  batchingHandler = self->_batchingHandler;
  self->_batchingHandler = v6;
}

- (void)setMessageHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  if (!handler)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v14 = v9;
      v15 = 2114;
      v16 = v11;
      v17 = 2048;
      selfCopy = self;
      v19 = 2114;
      v20 = @"BSServiceConnection.m";
      v21 = 1024;
      v22 = 206;
      v23 = 2114;
      v24 = v8;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v12 = v8;
    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8420C8);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [handler copy];
  messageHandler = self->_messageHandler;
  self->_messageHandler = v5;
}

- (void)setErrorHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  if (!handler)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v14 = v9;
      v15 = 2114;
      v16 = v11;
      v17 = 2048;
      selfCopy = self;
      v19 = 2114;
      v20 = @"BSServiceConnection.m";
      v21 = 1024;
      v22 = 212;
      v23 = 2114;
      v24 = v8;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v12 = v8;
    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A842288);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [handler copy];
  errorHandler = self->_errorHandler;
  self->_errorHandler = v5;
}

@end