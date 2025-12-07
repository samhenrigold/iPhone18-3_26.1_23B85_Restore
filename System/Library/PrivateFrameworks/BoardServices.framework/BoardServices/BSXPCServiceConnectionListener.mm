@interface BSXPCServiceConnectionListener
+ (id)listenerForSpecification:(uint64_t)specification;
- (BOOL)_isClientInvalidated;
- (BOOL)_isInvalidated;
- (BSXPCServiceConnectionListener)init;
- (id)endpoint;
- (void)_invalidateWithLockBlock:(uint64_t)block;
- (void)_noteChildConnectionDidInvalidate:(id)invalidate;
- (void)configure:(uint64_t)configure;
- (void)dealloc;
- (void)invalidate;
- (void)resume;
- (void)setConnectionHandler:(id)handler;
- (void)setErrorHandler:(id)handler;
- (void)suspendWithCompletion:(uint64_t)completion;
@end

@implementation BSXPCServiceConnectionListener

- (void)resume
{
  v35 = *MEMORY[0x1E69E9840];
  if (self)
  {
    os_unfair_lock_lock((self + 88));
    if (*(self + 98) == 1)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot resume after invalidation"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = NSStringFromSelector(sel_resume);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v23 = 138544642;
        v24 = v9;
        v25 = 2114;
        v26 = v11;
        v27 = 2048;
        selfCopy3 = self;
        v29 = 2114;
        v30 = @"BSXPCServiceConnectionListener.m";
        v31 = 1024;
        v32 = 208;
        v33 = 2114;
        v34 = v8;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v23, 0x3Au);
      }

      v12 = v8;
      [v8 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A82D63CLL);
    }

    if ((*(self + 94) & 1) == 0)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must be configured before resume"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = NSStringFromSelector(sel_resume);
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v23 = 138544642;
        v24 = v14;
        v25 = 2114;
        v26 = v16;
        v27 = 2048;
        selfCopy3 = self;
        v29 = 2114;
        v30 = @"BSXPCServiceConnectionListener.m";
        v31 = 1024;
        v32 = 209;
        v33 = 2114;
        v34 = v13;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v23, 0x3Au);
      }

      v17 = v13;
      [v13 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A82D734);
    }

    if (*(self + 96) == 1)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must call suspend before calling resume a second time"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = NSStringFromSelector(sel_resume);
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v23 = 138544642;
        v24 = v19;
        v25 = 2114;
        v26 = v21;
        v27 = 2048;
        selfCopy3 = self;
        v29 = 2114;
        v30 = @"BSXPCServiceConnectionListener.m";
        v31 = 1024;
        v32 = 210;
        v33 = 2114;
        v34 = v18;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v23, 0x3Au);
      }

      v22 = v18;
      [v18 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A82D82CLL);
    }

    *(self + 96) = 1;
    if ((*(self + 97) & 1) == 0)
    {
      if (*(self + 95) == 1)
      {
        v2 = BSServiceXPCLog();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          v3 = *(self + 16);
          v4 = *(self + 32);
          v23 = 138543618;
          v24 = v3;
          v25 = 2112;
          v26 = v4;
          _os_log_impl(&dword_19A821000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Resumed %@", &v23, 0x16u);
        }

        xpc_connection_resume(*(self + 64));
      }

      else
      {
        *(self + 95) = 1;
        v5 = BSServiceXPCLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(self + 16);
          v7 = *(self + 32);
          v23 = 138543618;
          v24 = v6;
          v25 = 2112;
          v26 = v7;
          _os_log_impl(&dword_19A821000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Activated %@", &v23, 0x16u);
        }

        if ((*(self + 93) & 1) == 0)
        {
          xpc_connection_activate(*(self + 64));
        }
      }
    }

    os_unfair_lock_unlock((self + 88));
  }
}

- (id)endpoint
{
  v21 = *MEMORY[0x1E69E9840];
  if (self)
  {
    os_unfair_lock_lock((self + 88));
    if (*(self + 94) != 1)
    {
      os_unfair_lock_unlock((self + 88));
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"asked for endpoint before sealing the listener configuration"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = NSStringFromSelector(sel_endpoint);
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v9 = 138544642;
        v10 = v5;
        v11 = 2114;
        v12 = v7;
        v13 = 2048;
        selfCopy = self;
        v15 = 2114;
        v16 = @"BSXPCServiceConnectionListener.m";
        v17 = 1024;
        v18 = 147;
        v19 = 2114;
        v20 = v4;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
      }

      v8 = v4;
      [v4 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A82F6A4);
    }

    v2 = *(self + 80);
    os_unfair_lock_unlock((self + 88));
    os_unfair_lock_assert_not_owner((self + 88));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BSXPCServiceConnectionListener)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BSXPCServiceConnectionListener"];
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
    v17 = @"BSXPCServiceConnectionListener.m";
    v18 = 1024;
    v19 = 81;
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
  v25 = *MEMORY[0x1E69E9840];
  v4 = BSServiceXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    proem = self->_proem;
    eDesc = self->_eDesc;
    *buf = 138543618;
    v14 = proem;
    v15 = 2112;
    v16 = eDesc;
    _os_log_impl(&dword_19A821000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Dealloc %@", buf, 0x16u);
  }

  if (!self->_lock_invalidated)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must be invalidated before dealloc"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v14 = v8;
      v15 = 2114;
      v16 = v10;
      v17 = 2048;
      selfCopy = self;
      v19 = 2114;
      v20 = @"BSXPCServiceConnectionListener.m";
      v21 = 1024;
      v22 = 125;
      v23 = 2114;
      v24 = v7;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v11 = v7;
    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A867548);
  }

  v12.receiver = self;
  v12.super_class = BSXPCServiceConnectionListener;
  [(BSXPCServiceConnectionListener *)&v12 dealloc];
}

+ (id)listenerForSpecification:(uint64_t)specification
{
  v64 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  v4 = a2;
  if (!v4)
  {
    v33 = MEMORY[0x1E696AEC0];
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    v36 = [v33 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"specification", v35];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v37 = NSStringFromSelector(sel_listenerForSpecification_);
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      *buf = 138544642;
      v53 = v37;
      v54 = 2114;
      v55 = v39;
      v56 = 2048;
      v57 = v3;
      v58 = 2114;
      v59 = @"BSXPCServiceConnectionListener.m";
      v60 = 1024;
      v61 = 135;
      v62 = 2114;
      v63 = v36;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v40 = v36;
    [v36 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8679CCLL);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v41 = MEMORY[0x1E696AEC0];
    classForCoder = [v4 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v43 = NSStringFromClass(classForCoder);
    v44 = objc_opt_class();
    v45 = NSStringFromClass(v44);
    v46 = [v41 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"specification", v43, v45];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v47 = NSStringFromSelector(sel_listenerForSpecification_);
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      *buf = 138544642;
      v53 = v47;
      v54 = 2114;
      v55 = v49;
      v56 = 2048;
      v57 = v3;
      v58 = 2114;
      v59 = @"BSXPCServiceConnectionListener.m";
      v60 = 1024;
      v61 = 135;
      v62 = 2114;
      v63 = v46;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v50 = v46;
    [v46 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A867B14);
  }

  v5 = [BSXPCServiceConnectionListener alloc];
  if (v5)
  {
    add_explicit = atomic_fetch_add_explicit(&_initWithSpecification____uniqueCounter, 1uLL, memory_order_relaxed);
    v51.receiver = v5;
    v51.super_class = BSXPCServiceConnectionListener;
    v7 = objc_msgSendSuper2(&v51, sel_init);
    v8 = v7;
    if (v7)
    {
      v7[1] = add_explicit + 1;
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[L:%llx]", add_explicit + 1];
      v10 = *(v8 + 2);
      *(v8 + 2) = v9;

      objc_storeStrong(v8 + 3, a2);
      machName = [v4 machName];
      v12 = machName;
      if (v4[9] == 4)
      {
        v13 = __xpcInstance();
        v14 = BSServiceConnectionEndpointTargetDescriptionForServiceListener(v12, v13);
        v15 = *(v8 + 4);
        *(v8 + 4) = v14;

        *(v8 + 93) = 1;
      }

      else if (machName)
      {
        v16 = BSServiceConnectionEndpointTargetDescriptionForMachName(machName, 0);
        v17 = *(v8 + 4);
        *(v8 + 4) = v16;
      }

      else
      {
        identifier = [v4 identifier];
        v19 = BSServiceConnectionEndpointTargetDescriptionForAnonymousDomain(identifier);
        v20 = *(v8 + 4);
        *(v8 + 4) = v19;

        *(v8 + 92) = 1;
      }

      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BSXPCLsn:%llx:%@", *(v8 + 1), *(v8 + 4)];
      v22 = BSServiceQualityFromBSServiceDomainMultiplexingType([v4 multiplexingType]);
      if (v22)
      {
        v23 = +[BSServiceQuality userInteractive];
        v24 = [BSServiceDispatchQueue queueWithName:v21 serviceQuality:v23];
        v25 = *(v8 + 5);
        *(v8 + 5) = v24;
      }

      else
      {
        v26 = [BSServiceDispatchQueue queueWithName:v21];
        v23 = *(v8 + 5);
        *(v8 + 5) = v26;
      }

      *(v8 + 22) = 0;
      v27 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
      v28 = *(v8 + 9);
      *(v8 + 9) = v27;

      v29 = BSServiceXPCLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(v8 + 2);
        v31 = *(v8 + 4);
        *buf = 138543618;
        v53 = v30;
        v54 = 2112;
        v55 = v31;
        _os_log_impl(&dword_19A821000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ Alloc (%@)", buf, 0x16u);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)configure:(uint64_t)configure
{
  v98 = *MEMORY[0x1E69E9840];
  if (configure)
  {
    if (!a2)
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"block"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v41 = NSStringFromSelector(sel_configure_);
        v42 = objc_opt_class();
        v43 = NSStringFromClass(v42);
        *buf = 138544642;
        v87 = v41;
        v88 = 2114;
        v89 = v43;
        v90 = 2048;
        configureCopy8 = configure;
        v92 = 2114;
        v93 = @"BSXPCServiceConnectionListener.m";
        v94 = 1024;
        v95 = 154;
        v96 = 2114;
        v97 = v40;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v44 = v40;
      [v40 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8680FCLL);
    }

    os_unfair_lock_lock((configure + 88));
    if (*(configure + 94) == 1)
    {
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot configure after sealing"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v46 = NSStringFromSelector(sel_configure_);
        v47 = objc_opt_class();
        v48 = NSStringFromClass(v47);
        *buf = 138544642;
        v87 = v46;
        v88 = 2114;
        v89 = v48;
        v90 = 2048;
        configureCopy8 = configure;
        v92 = 2114;
        v93 = @"BSXPCServiceConnectionListener.m";
        v94 = 1024;
        v95 = 156;
        v96 = 2114;
        v97 = v45;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v49 = v45;
      [v45 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8681F4);
    }

    if (*(configure + 98) == 1)
    {
      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot configure after invalidation"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v51 = NSStringFromSelector(sel_configure_);
        v52 = objc_opt_class();
        v53 = NSStringFromClass(v52);
        *buf = 138544642;
        v87 = v51;
        v88 = 2114;
        v89 = v53;
        v90 = 2048;
        configureCopy8 = configure;
        v92 = 2114;
        v93 = @"BSXPCServiceConnectionListener.m";
        v94 = 1024;
        v95 = 157;
        v96 = 2114;
        v97 = v50;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v54 = v50;
      [v50 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8682ECLL);
    }

    if (*(configure + 97) == 1)
    {
      v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sanity - this shouldn't be possible"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v56 = NSStringFromSelector(sel_configure_);
        v57 = objc_opt_class();
        v58 = NSStringFromClass(v57);
        *buf = 138544642;
        v87 = v56;
        v88 = 2114;
        v89 = v58;
        v90 = 2048;
        configureCopy8 = configure;
        v92 = 2114;
        v93 = @"BSXPCServiceConnectionListener.m";
        v94 = 1024;
        v95 = 158;
        v96 = 2114;
        v97 = v55;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v59 = v55;
      [v55 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8683E4);
    }

    (*(a2 + 16))(a2, configure);
    if (*(configure + 95) == 1)
    {
      v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot seal after activation"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v61 = NSStringFromSelector(sel_configure_);
        v62 = objc_opt_class();
        v63 = NSStringFromClass(v62);
        *buf = 138544642;
        v87 = v61;
        v88 = 2114;
        v89 = v63;
        v90 = 2048;
        configureCopy8 = configure;
        v92 = 2114;
        v93 = @"BSXPCServiceConnectionListener.m";
        v94 = 1024;
        v95 = 160;
        v96 = 2114;
        v97 = v60;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v64 = v60;
      [v60 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8684DCLL);
    }

    if (*(configure + 98) == 1)
    {
      v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot seal after invalidation"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v66 = NSStringFromSelector(sel_configure_);
        v67 = objc_opt_class();
        v68 = NSStringFromClass(v67);
        *buf = 138544642;
        v87 = v66;
        v88 = 2114;
        v89 = v68;
        v90 = 2048;
        configureCopy8 = configure;
        v92 = 2114;
        v93 = @"BSXPCServiceConnectionListener.m";
        v94 = 1024;
        v95 = 161;
        v96 = 2114;
        v97 = v65;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v69 = v65;
      [v65 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8685D4);
    }

    if (*(configure + 94) == 1)
    {
      v70 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot seal twice"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v71 = NSStringFromSelector(sel_configure_);
        v72 = objc_opt_class();
        v73 = NSStringFromClass(v72);
        *buf = 138544642;
        v87 = v71;
        v88 = 2114;
        v89 = v73;
        v90 = 2048;
        configureCopy8 = configure;
        v92 = 2114;
        v93 = @"BSXPCServiceConnectionListener.m";
        v94 = 1024;
        v95 = 162;
        v96 = 2114;
        v97 = v70;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v74 = v70;
      [v70 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8686CCLL);
    }

    if (!*(configure + 48))
    {
      v75 = [MEMORY[0x1E696AEC0] stringWithFormat:@"connection handler must be set before sealing"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v76 = NSStringFromSelector(sel_configure_);
        v77 = objc_opt_class();
        v78 = NSStringFromClass(v77);
        *buf = 138544642;
        v87 = v76;
        v88 = 2114;
        v89 = v78;
        v90 = 2048;
        configureCopy8 = configure;
        v92 = 2114;
        v93 = @"BSXPCServiceConnectionListener.m";
        v94 = 1024;
        v95 = 163;
        v96 = 2114;
        v97 = v75;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v79 = v75;
      [v75 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8687C4);
    }

    *(configure + 94) = 1;
    v4 = BSServiceXPCLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(configure + 16);
      v6 = *(configure + 32);
      *buf = 138543618;
      v87 = v5;
      v88 = 2112;
      v89 = v6;
      _os_log_impl(&dword_19A821000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Sealed %@", buf, 0x16u);
    }

    v7 = *(configure + 24);
    if (*(configure + 93) == 1)
    {
      if (v7)
      {
        v8 = v7[10];
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;
      v10 = v9;
      [v9 UTF8String];
      queue = [*(configure + 40) queue];
      bs_service_listener = xpc_connection_create_bs_service_listener();
      v13 = *(configure + 64);
      *(configure + 64) = bs_service_listener;

      xpc_connection_set_bs_type();
      v14 = __xpcInstance();
      v15 = 0;
    }

    else
    {
      machName = [v7 machName];
      v17 = machName;
      if (machName)
      {
        v18 = machName;
        uTF8String = [v17 UTF8String];
        queue2 = [*(configure + 40) queue];
        mach_service = xpc_connection_create_mach_service(uTF8String, queue2, 1uLL);
        v22 = *(configure + 64);
        *(configure + 64) = mach_service;

        xpc_connection_set_bs_type();
        v15 = 0;
      }

      else
      {
        queue3 = [*(configure + 40) queue];
        v24 = xpc_connection_create(0, queue3);
        v25 = *(configure + 64);
        *(configure + 64) = v24;

        xpc_connection_set_bs_type();
        v15 = getpid();
      }

      v14 = 0;
    }

    objc_initWeak(buf, configure);
    v26 = *(configure + 16);
    v27 = MEMORY[0x19A908200](*(configure + 48));
    v28 = MEMORY[0x19A908200](*(configure + 56));
    v29 = *(configure + 92);
    v30 = *(configure + 64);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __44__BSXPCServiceConnectionListener_configure___block_invoke;
    handler[3] = &unk_1E7521000;
    objc_copyWeak(&v84, buf);
    v31 = v26;
    v81 = v31;
    v32 = v27;
    v82 = v32;
    v33 = v28;
    v83 = v33;
    v85 = v29;
    xpc_connection_set_event_handler(v30, handler);
    v34 = *(configure + 48);
    *(configure + 48) = 0;

    v35 = *(configure + 56);
    *(configure + 56) = 0;

    v36 = xpc_connection_bs_seal_listener();
    bs_type = xpc_connection_get_bs_type();
    v38 = [[BSXPCServiceConnectionEndpoint alloc] initWithXPCEndpoint:v36 oneshot:v14 nonLaunching:bs_type == 3 targetPID:v15 targetDescription:*(configure + 32)];
    v39 = *(configure + 80);
    *(configure + 80) = v38;

    os_unfair_lock_unlock((configure + 88));
    objc_destroyWeak(&v84);

    objc_destroyWeak(buf);
  }
}

void __44__BSXPCServiceConnectionListener_configure___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v9 = MEMORY[0x19A908710](a2);
  if (v9 != MEMORY[0x1E69E9E68])
  {
    if (v9 == MEMORY[0x1E69E9E98])
    {
      *v20 = MEMORY[0x1E69E9820];
      *&v20[8] = 3221225472;
      *&v20[16] = ____handleEvent_block_invoke;
      v21 = &unk_1E7521070;
      v22 = v6;
      v23 = a2;
      [(BSXPCServiceConnectionListener *)WeakRetained _invalidateWithLockBlock:v20];
      if (v7)
      {
        v12 = BSServiceConnectionErrorCreate(2uLL, a2, 0);
        (*(v7 + 16))(v7, v12);
      }
    }

    else
    {
      v10 = BSServiceXPCErrorsLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 138543618;
        *&v20[4] = v6;
        *&v20[12] = 2112;
        *&v20[14] = a2;
        _os_log_impl(&dword_19A821000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ unexpected event (%@)", v20, 0x16u);
      }
    }

    goto LABEL_26;
  }

  if (!WeakRetained)
  {
    v13 = BSServiceXPCLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v20 = 138543362;
      *&v20[4] = v6;
      _os_log_impl(&dword_19A821000, v13, OS_LOG_TYPE_INFO, "%{public}@ Rejecting incoming connection after listener deallocation", v20, 0xCu);
    }

    goto LABEL_25;
  }

  os_unfair_lock_lock(WeakRetained + 22);
  if (*(WeakRetained + 97) == 1)
  {
    v11 = BSServiceXPCLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v20 = 138543362;
      *&v20[4] = v6;
      _os_log_impl(&dword_19A821000, v11, OS_LOG_TYPE_INFO, "%{public}@ Rejecting incoming connection after invalidation", v20, 0xCu);
    }

LABEL_24:

    os_unfair_lock_unlock(WeakRetained + 22);
LABEL_25:
    [BSXPCServiceConnection _invalidateIncomingXPCConnection:a2 withDisconnectMessage:v8];
    goto LABEL_26;
  }

  v14 = [BSXPCServiceConnection _connectionWithIncomingXPCConnection:a2 endpointDescription:*(WeakRetained + 4)];
  if (!v14)
  {
    v11 = BSServiceXPCErrorsLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v20 = 138543362;
      *&v20[4] = v6;
      _os_log_error_impl(&dword_19A821000, v11, OS_LOG_TYPE_ERROR, "%{public}@ Failed to wrap incoming connection - cancelling", v20, 0xCu);
    }

    v8 = 2;
    goto LABEL_24;
  }

  [*(WeakRetained + 9) addObject:v14];
  os_unfair_lock_unlock(WeakRetained + 22);
  [(BSXPCServiceConnection *)v14 _setParent:?];
  v15 = BSServiceXPCLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v14[24];
    v17 = v16;
    if (v16)
    {
      v18 = *(v16 + 1);
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    *v20 = 138543618;
    *&v20[4] = v6;
    *&v20[12] = 2114;
    *&v20[14] = v19;
    _os_log_impl(&dword_19A821000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Incoming connection %{public}@", v20, 0x16u);
  }

  (*(v5 + 16))(v5, v14);
LABEL_26:
}

- (void)suspendWithCompletion:(uint64_t)completion
{
  v46 = *MEMORY[0x1E69E9840];
  if (completion)
  {
    if (*(completion + 93) == 1)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"xpc services cannot be suspended"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = NSStringFromSelector(sel_suspendWithCompletion_);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *buf = 138544642;
        v35 = v9;
        v36 = 2114;
        v37 = v11;
        v38 = 2048;
        completionCopy5 = completion;
        v40 = 2114;
        v41 = @"BSXPCServiceConnectionListener.m";
        v42 = 1024;
        v43 = 231;
        v44 = 2114;
        v45 = v8;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v12 = v8;
      [v8 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A868F20);
    }

    os_unfair_lock_lock((completion + 88));
    if (*(completion + 98) == 1)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot suspend after invalidation"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = NSStringFromSelector(sel_suspendWithCompletion_);
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        *buf = 138544642;
        v35 = v14;
        v36 = 2114;
        v37 = v16;
        v38 = 2048;
        completionCopy5 = completion;
        v40 = 2114;
        v41 = @"BSXPCServiceConnectionListener.m";
        v42 = 1024;
        v43 = 233;
        v44 = 2114;
        v45 = v13;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v17 = v13;
      [v13 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A869018);
    }

    if ((*(completion + 96) & 1) == 0)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must call resume before calling suspend"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = NSStringFromSelector(sel_suspendWithCompletion_);
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *buf = 138544642;
        v35 = v19;
        v36 = 2114;
        v37 = v21;
        v38 = 2048;
        completionCopy5 = completion;
        v40 = 2114;
        v41 = @"BSXPCServiceConnectionListener.m";
        v42 = 1024;
        v43 = 234;
        v44 = 2114;
        v45 = v18;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v22 = v18;
      [v18 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A869110);
    }

    if ((*(completion + 94) & 1) == 0)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sanity - this shouldn't be possible"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v24 = NSStringFromSelector(sel_suspendWithCompletion_);
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        *buf = 138544642;
        v35 = v24;
        v36 = 2114;
        v37 = v26;
        v38 = 2048;
        completionCopy5 = completion;
        v40 = 2114;
        v41 = @"BSXPCServiceConnectionListener.m";
        v42 = 1024;
        v43 = 235;
        v44 = 2114;
        v45 = v23;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v27 = v23;
      [v23 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A869208);
    }

    if ((*(completion + 95) & 1) == 0)
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sanity - this shouldn't be possible"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v29 = NSStringFromSelector(sel_suspendWithCompletion_);
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        *buf = 138544642;
        v35 = v29;
        v36 = 2114;
        v37 = v31;
        v38 = 2048;
        completionCopy5 = completion;
        v40 = 2114;
        v41 = @"BSXPCServiceConnectionListener.m";
        v42 = 1024;
        v43 = 236;
        v44 = 2114;
        v45 = v28;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v32 = v28;
      [v28 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A869300);
    }

    *(completion + 96) = 0;
    if ((*(completion + 97) & 1) == 0)
    {
      xpc_connection_suspend(*(completion + 64));
      v4 = BSServiceXPCLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(completion + 16);
        v6 = *(completion + 32);
        *buf = 138543618;
        v35 = v5;
        v36 = 2112;
        v37 = v6;
        _os_log_impl(&dword_19A821000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Suspended %@", buf, 0x16u);
      }
    }

    v7 = *(completion + 40);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __56__BSXPCServiceConnectionListener_suspendWithCompletion___block_invoke;
    v33[3] = &unk_1E7520648;
    v33[4] = completion;
    v33[5] = a2;
    [v7 performAsync:v33];
    os_unfair_lock_unlock((completion + 88));
  }
}

void __56__BSXPCServiceConnectionListener_suspendWithCompletion___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 88));
  v2 = *(a1 + 32);
  if (*(v2 + 97))
  {
    v3 = 0;
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = *(v2 + 72);
    v3 = 0;
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v5)
    {
      v6 = *v21;
      do
      {
        v7 = 0;
        v8 = v3;
        do
        {
          if (*v21 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v20 + 1) + 8 * v7);
          v19 = v8;
          [(BSXPCServiceConnection *)v9 _handleParentDisconnectWithMessage:&v19 outRevocations:?];
          v3 = v19;

          ++v7;
          v8 = v3;
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v5);
    }

    [*(*(a1 + 32) + 72) removeAllObjects];
    v2 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v2 + 88));
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = v3;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v24 count:16];
  if (v11)
  {
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v10);
        }

        (*(*(*(&v15 + 1) + 8 * v13) + 16))(*(*(&v15 + 1) + 8 * v13));
        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v15 objects:v24 count:16];
    }

    while (v11);
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    (*(v14 + 16))(v14);
  }
}

- (void)invalidate
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_isXPCService)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"xpc services cannot invalidate"];
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
      v17 = @"BSXPCServiceConnectionListener.m";
      v18 = 1024;
      v19 = 263;
      v20 = 2114;
      v21 = v4;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v8 = v4;
    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8697C0);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__BSXPCServiceConnectionListener_invalidate__block_invoke;
  v9[3] = &unk_1E7521028;
  v9[4] = self;
  v9[5] = a2;
  [(BSXPCServiceConnectionListener *)self _invalidateWithLockBlock:v9];
}

uint64_t __44__BSXPCServiceConnectionListener_invalidate__block_invoke(uint64_t result)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = *(result + 32);
  if (*(v1 + 98) == 1)
  {
    v2 = result;
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot invalidate twice"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v4 = NSStringFromSelector(*(v2 + 40));
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = *(v2 + 32);
      v9 = 138544642;
      v10 = v4;
      v11 = 2114;
      v12 = v6;
      v13 = 2048;
      v14 = v7;
      v15 = 2114;
      v16 = @"BSXPCServiceConnectionListener.m";
      v17 = 1024;
      v18 = 265;
      v19 = 2114;
      v20 = v3;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
    }

    v8 = v3;
    [v3 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A869960);
  }

  *(v1 + 98) = 1;
  return result;
}

- (void)_invalidateWithLockBlock:(uint64_t)block
{
  v46 = *MEMORY[0x1E69E9840];
  if (block)
  {
    os_unfair_lock_lock((block + 88));
    (*(a2 + 16))(a2, block);
    if (*(block + 97))
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
    }

    else
    {
      *(block + 97) = 1;
      v7 = *(block + 72);
      v8 = *(block + 72);
      *(block + 72) = 0;

      v6 = *(block + 64);
      if ((*(block + 93) & 1) == 0)
      {
        v9 = *(block + 64);
        *(block + 64) = 0;
      }

      v10 = *(block + 48);
      *(block + 48) = 0;

      v11 = *(block + 56);
      *(block + 56) = 0;

      v4 = *(block + 96);
      v5 = *(block + 95);
    }

    os_unfair_lock_unlock((block + 88));
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v36 objects:v45 count:16];
    v28 = v5;
    v14 = 0;
    if (v13)
    {
      v15 = *v37;
      do
      {
        v16 = 0;
        v17 = v14;
        do
        {
          if (*v37 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v36 + 1) + 8 * v16);
          if (*(block + 92))
          {
            v19 = 1;
          }

          else
          {
            v19 = 2;
          }

          v35 = v17;
          [(BSXPCServiceConnection *)v18 _handleParentDisconnectWithMessage:v19 outRevocations:&v35];
          v14 = v35;

          ++v16;
          v17 = v14;
        }

        while (v13 != v16);
        v13 = [v12 countByEnumeratingWithState:&v36 objects:v45 count:16];
      }

      while (v13);
    }

    if (v6)
    {
      v20 = *(block + 92);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __59__BSXPCServiceConnectionListener__invalidateWithLockBlock___block_invoke;
      handler[3] = &__block_descriptor_36_e33_v16__0__NSObject_OS_xpc_object__8l;
      v34 = v20;
      xpc_connection_set_event_handler(v6, handler);
      if (*(block + 93) == 1)
      {
        v21 = BSServiceXPCErrorsLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(block + 16);
          v23 = *(block + 32);
          *buf = 138543618;
          v42 = v22;
          v43 = 2114;
          v44 = v23;
          _os_log_impl(&dword_19A821000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ xpc-service %{public}@ is now impotent", buf, 0x16u);
        }
      }

      else
      {
        xpc_connection_cancel(v6);
        if (v28)
        {
          if ((v4 & 1) == 0)
          {
            xpc_connection_resume(v6);
          }
        }

        else
        {
          xpc_connection_activate(v6);
        }
      }
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v24 = v14;
    v25 = [v24 countByEnumeratingWithState:&v29 objects:v40 count:16];
    if (v25)
    {
      v26 = *v30;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v30 != v26)
          {
            objc_enumerationMutation(v24);
          }

          (*(*(*(&v29 + 1) + 8 * i) + 16))();
        }

        v25 = [v24 countByEnumeratingWithState:&v29 objects:v40 count:16];
      }

      while (v25);
    }
  }
}

- (void)setConnectionHandler:(id)handler
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
      v20 = @"BSXPCServiceConnectionListener.m";
      v21 = 1024;
      v22 = 277;
      v23 = 2114;
      v24 = v8;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v12 = v8;
    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A869EF8);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  v5 = MEMORY[0x19A908200](handler);
  lock_connectionHandler = self->_lock_connectionHandler;
  self->_lock_connectionHandler = v5;
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
      v20 = @"BSXPCServiceConnectionListener.m";
      v21 = 1024;
      v22 = 283;
      v23 = 2114;
      v24 = v8;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v12 = v8;
    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86A0B8);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  v5 = MEMORY[0x19A908200](handler);
  lock_errorHandler = self->_lock_errorHandler;
  self->_lock_errorHandler = v5;
}

- (BOOL)_isInvalidated
{
  os_unfair_lock_lock(&self->_lock);
  lock_invalidated = self->_lock_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  return lock_invalidated;
}

- (BOOL)_isClientInvalidated
{
  os_unfair_lock_lock(&self->_lock);
  lock_clientInvalidated = self->_lock_clientInvalidated;
  os_unfair_lock_unlock(&self->_lock);
  return lock_clientInvalidated;
}

- (void)_noteChildConnectionDidInvalidate:(id)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  if ([(NSHashTable *)self->_lock_childConnections containsObject:invalidate])
  {
    [(NSHashTable *)self->_lock_childConnections removeObject:invalidate];
  }

  os_unfair_lock_unlock(&self->_lock);

  [(BSXPCServiceConnection *)invalidate _setParent:?];
}

void __59__BSXPCServiceConnectionListener__invalidateWithLockBlock___block_invoke(uint64_t a1, _xpc_connection_s *a2)
{
  if (MEMORY[0x19A908710](a2) == MEMORY[0x1E69E9E68])
  {
    v4 = *(a1 + 32);

    [BSXPCServiceConnection _invalidateIncomingXPCConnection:a2 withDisconnectMessage:v4];
  }
}

@end