@interface BSServiceConnectionEndpointInjector
+ (id)injectorWithConfigurator:(id)configurator;
- (BSServiceConnectionEndpointInjector)init;
- (NSString)description;
- (void)dealloc;
- (void)invalidate;
@end

@implementation BSServiceConnectionEndpointInjector

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_invalidated)
  {
    self->_lock_invalidated = 1;
    [(RBSAssertion *)self->_lock_assertion invalidate];
    lock_assertion = self->_lock_assertion;
    self->_lock_assertion = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  if (!self->_lock_invalidated)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must invalidate before dealloc"];
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
      v17 = @"BSServiceConnectionEndpointInjector.m";
      v18 = 1024;
      v19 = 61;
      v20 = 2114;
      v21 = v4;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v8 = v4;
    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A82CBD4);
  }

  v9.receiver = self;
  v9.super_class = BSServiceConnectionEndpointInjector;
  [(BSServiceConnectionEndpointInjector *)&v9 dealloc];
}

- (BSServiceConnectionEndpointInjector)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on BSServiceConnectionEndpointInjector"];
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
    v17 = @"BSServiceConnectionEndpointInjector.m";
    v18 = 1024;
    v19 = 46;
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

+ (id)injectorWithConfigurator:(id)configurator
{
  v119 = *MEMORY[0x1E69E9840];
  if (!configurator)
  {
    v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"block"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v53 = NSStringFromSelector(a2);
      v54 = objc_opt_class();
      v55 = NSStringFromClass(v54);
      *buf = 138544642;
      v108 = v53;
      v109 = 2114;
      v110 = v55;
      v111 = 2048;
      selfCopy = self;
      v113 = 2114;
      v114 = @"BSServiceConnectionEndpointInjector.m";
      v115 = 1024;
      v116 = 79;
      v117 = 2114;
      v118 = v52;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v56 = v52;
    [v52 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A830298);
  }

  v94[0] = MEMORY[0x1E69E9820];
  v94[1] = 3221225472;
  v94[2] = __64__BSServiceConnectionEndpointInjector_injectorWithConfigurator___block_invoke;
  v94[3] = &unk_1E75200B0;
  v94[4] = configurator;
  v92 = objc_opt_self();
  v3 = objc_opt_new();
  v91 = v3;
  __64__BSServiceConnectionEndpointInjector_injectorWithConfigurator___block_invoke(v94, v3);
  if (!v3 || (v84 = *(v3 + 8)) == 0)
  {
    v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must configure a manager"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v58 = NSStringFromSelector(sel__injector_);
      v59 = objc_opt_class();
      v60 = NSStringFromClass(v59);
      *buf = 138544642;
      v108 = v58;
      v109 = 2114;
      v110 = v60;
      v111 = 2048;
      selfCopy = v92;
      v113 = 2114;
      v114 = @"BSServiceConnectionEndpointInjector.m";
      v115 = 1024;
      v116 = 104;
      v117 = 2114;
      v118 = v57;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v61 = v57;
    [v57 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A830394);
  }

  v87 = MEMORY[0x19A908200](*(v3 + 16));
  if (!v87)
  {
    v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must configure an assertion generator"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v63 = NSStringFromSelector(sel__injector_);
      v64 = objc_opt_class();
      v65 = NSStringFromClass(v64);
      *buf = 138544642;
      v108 = v63;
      v109 = 2114;
      v110 = v65;
      v111 = 2048;
      selfCopy = v92;
      v113 = 2114;
      v114 = @"BSServiceConnectionEndpointInjector.m";
      v115 = 1024;
      v116 = 107;
      v117 = 2114;
      v118 = v62;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v66 = v62;
    [v62 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A830490);
  }

  v86 = *(v3 + 24);
  if (!v86)
  {
    v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must configure a target"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v68 = NSStringFromSelector(sel__injector_);
      v69 = objc_opt_class();
      v70 = NSStringFromClass(v69);
      *buf = 138544642;
      v108 = v68;
      v109 = 2114;
      v110 = v70;
      v111 = 2048;
      selfCopy = v92;
      v113 = 2114;
      v114 = @"BSServiceConnectionEndpointInjector.m";
      v115 = 1024;
      v116 = 110;
      v117 = 2114;
      v118 = v67;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v71 = v67;
    [v67 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83058CLL);
  }

  v4 = objc_autoreleasePoolPush();
  v5 = *(v3 + 56);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = v7;
  if (v6 && v7)
  {
    v9 = *(v3 + 48);
    v10 = [BSServiceConnectionEndpoint _endpointForManager:v84 domain:v6 service:v8 instance:v9];

    if (!v10)
    {
      v77 = MEMORY[0x1E696AEC0];
      v78 = v91[6];
      v79 = [v77 stringWithFormat:@"no endpoint found for domain='%@' service='%@' instance='%@'", v6, v8, v78];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v80 = NSStringFromSelector(sel__injector_);
        v81 = objc_opt_class();
        v82 = NSStringFromClass(v81);
        *buf = 138544642;
        v108 = v80;
        v109 = 2114;
        v110 = v82;
        v111 = 2048;
        selfCopy = v92;
        v113 = 2114;
        v114 = @"BSServiceConnectionEndpointInjector.m";
        v115 = 1024;
        v116 = 120;
        v117 = 2114;
        v118 = v79;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v83 = v79;
      [v79 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8307ACLL);
    }

    if (v5)
    {
      [v5 addObject:v10];
      v89 = v5;
    }

    else
    {
      v89 = [MEMORY[0x1E695DFB8] orderedSetWithObject:v10];
    }
  }

  else
  {
    if (v6 | v7 || (v11 = *(v3 + 48), v12 = v11 == 0, v11, !v12))
    {
      v43 = MEMORY[0x1E696AEC0];
      v44 = *(v3 + 48);
      v45 = [v43 stringWithFormat:@"incomplete lookup information : domain='%@' service'%@' instance='%@'", v6, v8, v44];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v46 = NSStringFromSelector(sel__injector_);
        v47 = objc_opt_class();
        v48 = NSStringFromClass(v47);
        *buf = 138544642;
        v108 = v46;
        v109 = 2114;
        v110 = v48;
        v111 = 2048;
        selfCopy = v92;
        v113 = 2114;
        v114 = @"BSServiceConnectionEndpointInjector.m";
        v115 = 1024;
        v116 = 129;
        v117 = 2114;
        v118 = v45;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v49 = v45;
      [v45 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A83018CLL);
    }

    v89 = v5;
  }

  objc_autoreleasePoolPop(v4);
  v13 = [v89 count];
  v14 = v91[8];
  v88 = v14;
  if (!v13 && !v14)
  {
    v72 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unsupported configuration : inheritingEnvironment='%@' endpoints=%@", 0, v89];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v73 = NSStringFromSelector(sel__injector_);
      v74 = objc_opt_class();
      v75 = NSStringFromClass(v74);
      *buf = 138544642;
      v108 = v73;
      v109 = 2114;
      v110 = v75;
      v111 = 2048;
      selfCopy = v92;
      v113 = 2114;
      v114 = @"BSServiceConnectionEndpointInjector.m";
      v115 = 1024;
      v116 = 137;
      v117 = 2114;
      v118 = v72;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v76 = v72;
    [v72 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A830690);
  }

  string = [MEMORY[0x1E696AD60] string];
  v15 = v91[9];
  v85 = [v15 count];

  v93 = [MEMORY[0x1E695DF70] arrayWithCapacity:v85 + 3];
  v17 = string;
  v16 = v91;
  if (!v13)
  {
    if (!v88)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  array = [v89 array];
  v19 = [array bs_compactMap:&__block_literal_global_49];
  v20 = [v19 componentsJoinedByString:{@", "}];
  [string appendFormat:@" [%@]", v20];

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v21 = v89;
  v22 = [v21 countByEnumeratingWithState:&v95 objects:buf count:16];
  if (v22)
  {
    v23 = *v96;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v96 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v95 + 1) + 8 * i);
        v103 = 0;
        v104 = &v103;
        v105 = 0x2050000000;
        v26 = _MergedGlobals_2;
        v106 = _MergedGlobals_2;
        if (!_MergedGlobals_2)
        {
          v99.receiver = MEMORY[0x1E69E9820];
          v99.super_class = 3221225472;
          v100 = __getRBSEndowmentGrantClass_block_invoke;
          v101 = &unk_1E75200F8;
          v102 = &v103;
          __getRBSEndowmentGrantClass_block_invoke(&v99);
          v26 = v104[3];
        }

        v27 = v26;
        _Block_object_dispose(&v103, 8);
        v28 = BSServiceEndpointGrantNamespace();
        _endowmentRepresentation = [(BSServiceConnectionEndpoint *)v25 _endowmentRepresentation];
        v30 = [v26 grantWithNamespace:v28 endowment:_endowmentRepresentation];
        [v93 addObject:v30];
      }

      v22 = [v21 countByEnumeratingWithState:&v95 objects:buf count:16];
    }

    while (v22);
  }

  v17 = string;
  v16 = v91;
  if (v88)
  {
    [string appendString:@" +"];
LABEL_31:
    [v17 appendFormat:@" inherited from '%@'", v88];
    v103 = 0;
    v104 = &v103;
    v105 = 0x2050000000;
    v31 = qword_1ED4A7BA8;
    v106 = qword_1ED4A7BA8;
    if (!qword_1ED4A7BA8)
    {
      v99.receiver = MEMORY[0x1E69E9820];
      v99.super_class = 3221225472;
      v100 = __getRBSHereditaryGrantClass_block_invoke;
      v101 = &unk_1E75200F8;
      v102 = &v103;
      __getRBSHereditaryGrantClass_block_invoke(&v99);
      v31 = v104[3];
    }

    v32 = v31;
    _Block_object_dispose(&v103, 8);
    v33 = BSServiceEndpointGrantNamespace();
    v34 = [v31 grantWithNamespace:v33 sourceEnvironment:v88 attributes:0];
    [v93 addObject:v34];

    v17 = string;
    v16 = v91;
  }

LABEL_34:
  v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"injecting %@", v17];
  if (v85)
  {
    v36 = v16[9];
    [v93 addObjectsFromArray:v36];

    v17 = string;
    if (v85 == 1)
    {
      [string appendString:@" + 1 attr"];
    }

    else
    {
      [string appendFormat:@" + %lu attrs", v85];
    }
  }

  [v17 appendFormat:@" on %@", v86];
  v37 = (v87)[2](v87, v86, v93, v35, v17);
  if (v37 && (v38 = [BSServiceConnectionEndpointInjector alloc]) != 0)
  {
    v99.receiver = v38;
    v99.super_class = BSServiceConnectionEndpointInjector;
    v39 = objc_msgSendSuper2(&v99, sel_init);
    if (v39)
    {
      v40 = [string copy];
      v41 = *(v39 + 1);
      *(v39 + 1) = v40;

      objc_storeStrong(v39 + 2, v37);
      *(v39 + 6) = 0;
      *(v39 + 28) = 0;
    }
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

uint64_t __64__BSServiceConnectionEndpointInjector_injectorWithConfigurator___block_invoke(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = +[BSServiceManager sharedInstance];
  v5 = v4;
  if (a2)
  {
    v6 = v4;
    if (!v6)
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [v10 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"manager", v12];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = NSStringFromSelector(sel_setManager_);
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        *buf = 138544642;
        v29 = v14;
        v30 = 2114;
        v31 = v16;
        v32 = 2048;
        v33 = a2;
        v34 = 2114;
        v35 = @"BSServiceConnectionEndpointInjector.m";
        v36 = 1024;
        v37 = 228;
        v38 = 2114;
        v39 = v13;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v17 = v13;
      [v13 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A830C58);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = [v6 classForCoder];
      if (!v19)
      {
        v19 = objc_opt_class();
      }

      v20 = NSStringFromClass(v19);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = [v18 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"manager", v20, v22];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v24 = NSStringFromSelector(sel_setManager_);
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        *buf = 138544642;
        v29 = v24;
        v30 = 2114;
        v31 = v26;
        v32 = 2048;
        v33 = a2;
        v34 = 2114;
        v35 = @"BSServiceConnectionEndpointInjector.m";
        v36 = 1024;
        v37 = 228;
        v38 = 2114;
        v39 = v23;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v27 = v23;
      [v23 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A830DA0);
    }

    os_unfair_lock_assert_owner((a2 + 80));
    objc_storeStrong((a2 + 8), v5);

    os_unfair_lock_assert_owner((a2 + 80));
    v7 = [&__block_literal_global copy];
    v5 = *(a2 + 16);
    *(a2 + 16) = v7;
  }

  v8 = *(*(a1 + 32) + 16);

  return v8();
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_description withName:@"explanation" skipIfEmpty:0];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v4 = @"invalidated";
    goto LABEL_5;
  }

  lock_assertion = self->_lock_assertion;
  if (!lock_assertion)
  {
    v4 = @"inactive";
LABEL_5:
    [v3 appendString:v4 withName:0];
    lock_assertion = self->_lock_assertion;
    if (!lock_assertion)
    {
      goto LABEL_7;
    }
  }

  v6 = [v3 appendPointer:lock_assertion withName:@"assertion"];
LABEL_7:
  os_unfair_lock_unlock(&self->_lock);
  build = [v3 build];

  return build;
}

@end