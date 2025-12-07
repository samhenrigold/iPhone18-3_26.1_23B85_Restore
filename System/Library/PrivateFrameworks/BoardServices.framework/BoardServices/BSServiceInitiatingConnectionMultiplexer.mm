@interface BSServiceInitiatingConnectionMultiplexer
+ (_BYTE)_defaultInstanceCreatingIfNecessary:(uint64_t)necessary;
+ (_BYTE)_userInteractiveInstanceCreatingIfNecessary:(uint64_t)necessary;
+ (id)debugDescriptionWithMultilinePrefix:(uint64_t)prefix;
- (BSServiceInitiatingConnectionMultiplexer)init;
- (_BYTE)_initAsUserInteractive:(void *)interactive;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (uint64_t)newConnectionWithEndpoint:(uint64_t)endpoint;
- (void)dealloc;
@end

@implementation BSServiceInitiatingConnectionMultiplexer

+ (_BYTE)_userInteractiveInstanceCreatingIfNecessary:(uint64_t)necessary
{
  objc_opt_self();
  os_unfair_lock_lock(&_MergedGlobals_12);
  v3 = qword_1ED4A7C90;
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = a2 == 0;
  }

  if (!v4)
  {
    v5 = [[BSServiceInitiatingConnectionMultiplexer alloc] _initAsUserInteractive:?];
    v6 = qword_1ED4A7C90;
    qword_1ED4A7C90 = v5;

    v3 = v5;
  }

  os_unfair_lock_unlock(&_MergedGlobals_12);

  return v3;
}

- (_BYTE)_initAsUserInteractive:(void *)interactive
{
  if (!interactive)
  {
    return 0;
  }

  v8.receiver = interactive;
  v8.super_class = BSServiceInitiatingConnectionMultiplexer;
  v3 = objc_msgSendSuper2(&v8, sel_init);
  v4 = v3;
  if (v3)
  {
    v3[21] = a2;
    *(v3 + 4) = 0;
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = *(v4 + 1);
    *(v4 + 1) = v5;
  }

  return v4;
}

+ (_BYTE)_defaultInstanceCreatingIfNecessary:(uint64_t)necessary
{
  objc_opt_self();
  os_unfair_lock_lock(&stru_1ED4A7C8C);
  v3 = qword_1ED4A7C98;
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = a2 == 0;
  }

  if (!v4)
  {
    v5 = [[BSServiceInitiatingConnectionMultiplexer alloc] _initAsUserInteractive:?];
    v6 = qword_1ED4A7C98;
    qword_1ED4A7C98 = v5;

    v3 = v5;
  }

  os_unfair_lock_unlock(&stru_1ED4A7C8C);

  return v3;
}

- (BSServiceInitiatingConnectionMultiplexer)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on %@", objc_opt_class()];
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
    v17 = @"BSServiceInitiatingConnectionMultiplexer.m";
    v18 = 1024;
    v19 = 94;
    v20 = 2114;
    v21 = v4;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
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
  if (!self->_lock_invalidated)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"dealloced without invalidating"];
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
      v17 = @"BSServiceInitiatingConnectionMultiplexer.m";
      v18 = 1024;
      v19 = 108;
      v20 = 2114;
      v21 = v4;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v8 = v4;
    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8612A4);
  }

  v9.receiver = self;
  v9.super_class = BSServiceInitiatingConnectionMultiplexer;
  [(BSServiceInitiatingConnectionMultiplexer *)&v9 dealloc];
}

- (uint64_t)newConnectionWithEndpoint:(uint64_t)endpoint
{
  v76 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!endpoint)
  {
    v20 = 0;
    goto LABEL_28;
  }

  v5 = v3;
  if (!v5)
  {
    v25 = MEMORY[0x1E696AEC0];
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = [v25 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"endpoint", v27];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = NSStringFromSelector(sel_newConnectionWithEndpoint_);
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138544642;
      v65 = v29;
      v66 = 2114;
      v67 = v31;
      v68 = 2048;
      endpointCopy5 = endpoint;
      v70 = 2114;
      v71 = @"BSServiceInitiatingConnectionMultiplexer.m";
      v72 = 1024;
      v73 = 114;
      v74 = 2114;
      v75 = v28;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v32 = v28;
    [v28 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A861824);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v33 = MEMORY[0x1E696AEC0];
    classForCoder = [v5 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v35 = NSStringFromClass(classForCoder);
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v38 = [v33 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"endpoint", v35, v37];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v39 = NSStringFromSelector(sel_newConnectionWithEndpoint_);
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      *buf = 138544642;
      v65 = v39;
      v66 = 2114;
      v67 = v41;
      v68 = 2048;
      endpointCopy5 = endpoint;
      v70 = 2114;
      v71 = @"BSServiceInitiatingConnectionMultiplexer.m";
      v72 = 1024;
      v73 = 114;
      v74 = 2114;
      v75 = v38;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v42 = v38;
    [v38 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86196CLL);
  }

  v6 = v5[2];
  os_unfair_lock_lock((endpoint + 16));
  if (*(endpoint + 20) == 1)
  {
    v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempt to create an outgoing connection after invalidation"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v44 = NSStringFromSelector(sel_newConnectionWithEndpoint_);
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      *buf = 138544642;
      v65 = v44;
      v66 = 2114;
      v67 = v46;
      v68 = 2048;
      endpointCopy5 = endpoint;
      v70 = 2114;
      v71 = @"BSServiceInitiatingConnectionMultiplexer.m";
      v72 = 1024;
      v73 = 119;
      v74 = 2114;
      v75 = v43;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v47 = v43;
    [v43 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A861A64);
  }

  if (!v6)
  {
    if (![(BSXPCServiceConnectionEndpoint *)v5 isNullEndpoint])
    {
      v11 = BSServiceLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v24 = v5[4];
        *buf = 138543362;
        v65 = v24;
        _os_log_error_impl(&dword_19A821000, v11, OS_LOG_TYPE_ERROR, "cannot create outgoing root connection from an endpoint that is no longer valid (%{public}@)", buf, 0xCu);
      }
    }

    os_unfair_lock_unlock((endpoint + 16));
    v12 = [BSXPCServiceConnection connectionWithEndpoint:v5];
    goto LABEL_27;
  }

  v7 = [*(endpoint + 8) objectForKey:v5];
  if (v7)
  {
    v8 = BSServiceLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      loggingProem = [(BSXPCServiceConnection *)v7 loggingProem];
      v10 = v5[4];
      *buf = 138543618;
      v65 = loggingProem;
      v66 = 2114;
      v67 = v10;
      _os_log_impl(&dword_19A821000, v8, OS_LOG_TYPE_INFO, "found existing rootConnection %{public}@ by endpoint (%{public}@)", buf, 0x16u);
    }
  }

  else
  {
    v13 = v5;
    os_unfair_lock_assert_owner((endpoint + 16));
    if (*(endpoint + 20) == 1)
    {
      v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempt to create an outgoing connection after invalidation"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v49 = NSStringFromSelector(sel__lock_newRootConnectionWithEndpoint_);
        v50 = objc_opt_class();
        v51 = NSStringFromClass(v50);
        *buf = 138544642;
        v65 = v49;
        v66 = 2114;
        v67 = v51;
        v68 = 2048;
        endpointCopy5 = endpoint;
        v70 = 2114;
        v71 = @"BSServiceInitiatingConnectionMultiplexer.m";
        v72 = 1024;
        v73 = 151;
        v74 = 2114;
        v75 = v48;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v52 = v48;
      [v48 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A861B5CLL);
    }

    v14 = [*(endpoint + 8) objectForKey:v13];
    if (v14)
    {
      v53 = MEMORY[0x1E696AEC0];
      v54 = v13[4];
      v55 = [v53 stringWithFormat:@"attempt to create a redundant outgoing connection for endpoint %@ : existing=%@", v54, v14];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v56 = NSStringFromSelector(sel__lock_newRootConnectionWithEndpoint_);
        v57 = objc_opt_class();
        v58 = NSStringFromClass(v57);
        *buf = 138544642;
        v65 = v56;
        v66 = 2114;
        v67 = v58;
        v68 = 2048;
        endpointCopy5 = endpoint;
        v70 = 2114;
        v71 = @"BSServiceInitiatingConnectionMultiplexer.m";
        v72 = 1024;
        v73 = 153;
        v74 = 2114;
        v75 = v55;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v59 = v55;
      [v55 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A861C6CLL);
    }

    v15 = [BSXPCServiceConnection connectionWithEndpoint:v13];
    v7 = v15;
    if (!v15)
    {
      v21 = BSServiceLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = v13[4];
        *buf = 138543362;
        v65 = v22;
        _os_log_impl(&dword_19A821000, v21, OS_LOG_TYPE_INFO, "failed to create outgoing root connection for endpoint=%{public}@", buf, 0xCu);
      }

      os_unfair_lock_unlock((endpoint + 16));
      goto LABEL_26;
    }

    v16 = [(BSXPCServiceConnection *)v15 defaultNameWithClientLoggingProem:0 as:?];
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __80__BSServiceInitiatingConnectionMultiplexer__lock_newRootConnectionWithEndpoint___block_invoke;
    v60[3] = &unk_1E7520DD0;
    v17 = v16;
    v61 = v17;
    endpointCopy6 = endpoint;
    v18 = v13;
    v63 = v18;
    [(BSXPCServiceConnection *)v7 configure:v60];
    v19 = BSServiceLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v65 = v17;
      _os_log_impl(&dword_19A821000, v19, OS_LOG_TYPE_INFO, "created outgoing root connection %{public}@", buf, 0xCu);
    }

    [*(endpoint + 8) setObject:v7 forKey:v18];
    [(BSXPCServiceConnection *)v7 activateNowOrWhenReady:?];
  }

  v20 = [BSXPCServiceConnection connectionWithConnection:v7];

  os_unfair_lock_unlock((endpoint + 16));
  if (!v20)
  {
LABEL_26:
    v12 = +[BSXPCServiceConnection nullConnection];
LABEL_27:
    v20 = v12;
  }

LABEL_28:

  return v20;
}

void __80__BSServiceInitiatingConnectionMultiplexer__lock_newRootConnectionWithEndpoint___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) copy];
    v5 = v3[18];
    v3[18] = v4;
  }

  if (*(*(a1 + 40) + 21) == 1)
  {
    v6 = *(a1 + 32);
    v7 = +[BSServiceQuality userInteractive];
    v8 = [BSServiceDispatchQueue queueWithName:v6 serviceQuality:v7];
    [(BSXPCServiceConnectionEventHandler *)v3 setQueue:v8];
  }

  if (v3)
  {
    *(v3 + 128) = 1;
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __80__BSServiceInitiatingConnectionMultiplexer__lock_newRootConnectionWithEndpoint___block_invoke_2;
  v28[3] = &unk_1E7520E40;
  v29 = *(a1 + 32);
  if (v3)
  {
    v9 = [v28 copy];
    v10 = v3[11];
    v3[11] = v9;
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __80__BSServiceInitiatingConnectionMultiplexer__lock_newRootConnectionWithEndpoint___block_invoke_65;
  v26[3] = &unk_1E7520D60;
  v11 = *(a1 + 48);
  v26[4] = *(a1 + 40);
  v27 = v11;
  if (v3)
  {
    v12 = [v26 copy];
    v13 = v3[8];
    v3[8] = v12;

    v14 = [&__block_literal_global_12 copy];
    v15 = v3[9];
    v3[9] = v14;
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __80__BSServiceInitiatingConnectionMultiplexer__lock_newRootConnectionWithEndpoint___block_invoke_4;
  v22[3] = &unk_1E7520DA8;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v23 = v16;
  v24 = v17;
  v19 = v18;
  v25 = v19;
  if (v3)
  {
    v20 = [v22 copy];
    v21 = v3[10];
    v3[10] = v20;

    v19 = v25;
  }
}

void __80__BSServiceInitiatingConnectionMultiplexer__lock_newRootConnectionWithEndpoint___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [(BSXPCServiceConnection *)v3 auditToken];
  v5 = BSServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 1024;
    v10 = [v4 pid];
    _os_log_impl(&dword_19A821000, v5, OS_LOG_TYPE_DEFAULT, "Activated outgoing root connection %{public}@ to %d", &v7, 0x12u);
  }
}

void __80__BSServiceInitiatingConnectionMultiplexer__lock_newRootConnectionWithEndpoint___block_invoke_65(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = dispatch_time(0, 5000000000);
  v7 = dispatch_get_global_queue(17, 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__BSServiceInitiatingConnectionMultiplexer__lock_newRootConnectionWithEndpoint___block_invoke_2_66;
  v10[3] = &unk_1E7520D38;
  v13 = a3;
  v8 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v5;
  v12 = v8;
  v9 = v5;
  dispatch_after(v6, v7, v10);
}

void __80__BSServiceInitiatingConnectionMultiplexer__lock_newRootConnectionWithEndpoint___block_invoke_2_66(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v2 = *(a1 + 56);
  if (v2 == -[BSXPCServiceConnection childrenGeneration](*(a1 + 40)) && (v3 = *(a1 + 40), [*(*(a1 + 32) + 8) objectForKey:*(a1 + 48)], v4 = objc_claimAutoreleasedReturnValue(), v4, v3 == v4))
  {
    [*(*(a1 + 32) + 8) removeObjectForKey:*(a1 + 48)];
    os_unfair_lock_unlock((*(a1 + 32) + 16));
    v6 = *(a1 + 40);

    [v6 invalidate];
  }

  else
  {
    v5 = (*(a1 + 32) + 16);

    os_unfair_lock_unlock(v5);
  }
}

void __80__BSServiceInitiatingConnectionMultiplexer__lock_newRootConnectionWithEndpoint___block_invoke_4(void *a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = BSServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    v9 = [v6 succinctDescription];
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&dword_19A821000, v7, OS_LOG_TYPE_DEFAULT, "Error on outgoing root connection %{public}@: %{public}@", &v10, 0x16u);
  }

  os_unfair_lock_lock((a1[5] + 16));
  if ([v6 isBSServiceConnectionError] && objc_msgSend(v6, "code") == 1 && -[BSXPCServiceConnection hasChildren](v5))
  {
    os_unfair_lock_unlock((a1[5] + 16));
  }

  else
  {
    [*(a1[5] + 8) removeObjectForKey:a1[6]];
    os_unfair_lock_unlock((a1[5] + 16));
    [v5 invalidate];
  }
}

+ (id)debugDescriptionWithMultilinePrefix:(uint64_t)prefix
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E698E680] builderWithClass:objc_opt_class()];
  v5 = v4;
  if (v2)
  {
    [v4 setActiveMultilinePrefix:v2];
  }

  [v5 setUseDebugDescription:1];
  activeMultilinePrefix = [v5 activeMultilinePrefix];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__BSServiceInitiatingConnectionMultiplexer_debugDescriptionWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E75205D0;
  v7 = v5;
  v11 = v7;
  [v7 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v10];

  build = [v7 build];

  objc_autoreleasePoolPop(v3);

  return build;
}

void __80__BSServiceInitiatingConnectionMultiplexer_debugDescriptionWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [BSServiceInitiatingConnectionMultiplexer _userInteractiveInstanceCreatingIfNecessary:?];
  v3 = [v2 appendObject:? withName:? skipIfNil:?];

  v4 = *(a1 + 32);
  v7 = [BSServiceInitiatingConnectionMultiplexer _defaultInstanceCreatingIfNecessary:?];
  v5 = [v4 appendObject:? withName:? skipIfNil:?];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BSServiceInitiatingConnectionMultiplexer *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  v6 = v5;
  if (prefixCopy)
  {
    [v5 setActiveMultilinePrefix:prefixCopy];
  }

  return v6;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BSServiceInitiatingConnectionMultiplexer *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  v5 = [(BSServiceInitiatingConnectionMultiplexer *)self descriptionBuilderWithMultilinePrefix:prefixCopy];
  os_unfair_lock_lock(&self->_lock);
  allKeys = [(NSMutableDictionary *)self->_lock_endpointToOutgoingRootConnections allKeys];
  v7 = [allKeys mutableCopy];

  [v7 sortUsingComparator:&__block_literal_global_81];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __80__BSServiceInitiatingConnectionMultiplexer_debugDescriptionWithMultilinePrefix___block_invoke_2;
  v20[3] = &unk_1E75209E8;
  v8 = v5;
  v21 = v8;
  v9 = v7;
  v22 = v9;
  v10 = [v8 modifyProem:v20];
  activeMultilinePrefix = [v8 activeMultilinePrefix];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __80__BSServiceInitiatingConnectionMultiplexer_debugDescriptionWithMultilinePrefix___block_invoke_3;
  v16[3] = &unk_1E75205A8;
  v12 = v8;
  v17 = v12;
  v13 = v9;
  v18 = v13;
  selfCopy = self;
  [v12 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v16];

  os_unfair_lock_unlock(&self->_lock);
  build = [v12 build];

  return build;
}

void __80__BSServiceInitiatingConnectionMultiplexer_debugDescriptionWithMultilinePrefix___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = [v2 activeMultilinePrefix];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __80__BSServiceInitiatingConnectionMultiplexer_debugDescriptionWithMultilinePrefix___block_invoke_4;
  v5[3] = &unk_1E7520E18;
  v5[4] = a1[6];
  [v2 appendArraySection:v3 withName:@"outgoingRootConnections" multilinePrefix:v4 skipIfEmpty:0 objectTransformer:v5];
}

id __80__BSServiceInitiatingConnectionMultiplexer_debugDescriptionWithMultilinePrefix___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 8) objectForKey:a2];
  v3 = [v2 description];

  return v3;
}

@end