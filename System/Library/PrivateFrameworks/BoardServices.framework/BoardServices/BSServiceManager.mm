@interface BSServiceManager
+ (id)_sharedInstanceCreatingIfNecessary:(uint64_t)necessary;
+ (id)debugDescription;
+ (id)sharedInstance;
+ (id)sharedInstanceIfCreated;
+ (void)validateDynamicConfiguration:(void *)configuration withDebugInfo:;
- (BSService)_lock_registerDomain:(uint64_t)domain;
- (BSServiceManager)init;
- (id)activateManualDomain:(uint64_t)domain;
- (id)debugDescription;
- (id)domainWithIdentifier:(uint64_t)identifier;
- (id)viewServiceConfigurationRegisteringIfNecessary:(uint64_t)necessary;
- (os_unfair_lock_s)extendAutomaticBootstrapCompletion;
- (os_unfair_lock_s)registerDynamicConfiguration:(os_unfair_lock_s *)configuration;
- (void)activateViewServiceConfiguration;
- (void)dealloc;
- (void)enforceXPCServiceListenerRegistration;
@end

@implementation BSServiceManager

+ (id)sharedInstanceIfCreated
{
  objc_opt_self();

  return [BSServiceManager _sharedInstanceCreatingIfNecessary:?];
}

+ (id)sharedInstance
{
  objc_opt_self();

  return [BSServiceManager _sharedInstanceCreatingIfNecessary:?];
}

- (void)activateViewServiceConfiguration
{
  v64 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  v41 = [(BSServiceManager *)self viewServiceConfigurationRegisteringIfNecessary:?];
  domains = [v41 domains];
  v3 = [domains count];
  if (!v3)
  {
    goto LABEL_23;
  }

  v4 = [MEMORY[0x1E695DFA8] setWithCapacity:v3];
  os_unfair_lock_lock((self + 56));
  if (*(self + 73) == 1)
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must call before invalidation"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = NSStringFromSelector(sel_activateViewServiceConfiguration);
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138544642;
      v53 = v29;
      v54 = 2114;
      v55 = v31;
      v56 = 2048;
      selfCopy3 = self;
      v58 = 2114;
      v59 = @"BSServiceManager.m";
      v60 = 1024;
      v61 = 419;
      v62 = 2114;
      v63 = v28;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v32 = v28;
    [v28 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A82BFBCLL);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v5 = domains;
  v6 = [v5 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v6)
  {
    v7 = *v47;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v47 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v46 + 1) + 8 * i);
        v10 = *(self + 48);
        identifier = [v9 identifier];
        v12 = [v10 objectForKey:identifier];

        if (!v12)
        {
          v21 = MEMORY[0x1E696AEC0];
          identifier2 = [v9 identifier];
          v23 = [v21 stringWithFormat:@"attempt to activate unknown domain %@", identifier2];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v24 = NSStringFromSelector(sel_activateViewServiceConfiguration);
            v25 = objc_opt_class();
            v26 = NSStringFromClass(v25);
            *buf = 138544642;
            v53 = v24;
            v54 = 2114;
            v55 = v26;
            v56 = 2048;
            selfCopy3 = self;
            v58 = 2114;
            v59 = @"BSServiceManager.m";
            v60 = 1024;
            v61 = 422;
            v62 = 2114;
            v63 = v23;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v27 = v23;
          [v23 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          goto LABEL_36;
        }

        [v4 addObject:v12];
      }

      v6 = [v5 countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock((self + 56));
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v13 = v4;
  v14 = [v13 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (!v14)
  {
    goto LABEL_22;
  }

  v15 = *v43;
  do
  {
    for (j = 0; j != v14; ++j)
    {
      if (*v43 != v15)
      {
        objc_enumerationMutation(v13);
      }

      v17 = *(*(&v42 + 1) + 8 * j);
      if (!v17)
      {
        v33 = 0;
        goto LABEL_33;
      }

      v18 = *(v17 + 8);
      if (!v18 || (v19 = v18[9] == 5, v18, !v19))
      {
        v33 = *(v17 + 8);
LABEL_33:
        v34 = MEMORY[0x1E696AEC0];
        v35 = v33;
        v36 = [v34 stringWithFormat:@"view-service domains must specify Start to be ViewService : %@", v35];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v37 = NSStringFromSelector(sel_activateViewServiceConfiguration);
          v38 = objc_opt_class();
          v39 = NSStringFromClass(v38);
          *buf = 138544642;
          v53 = v37;
          v54 = 2114;
          v55 = v39;
          v56 = 2048;
          selfCopy3 = self;
          v58 = 2114;
          v59 = @"BSServiceManager.m";
          v60 = 1024;
          v61 = 427;
          v62 = 2114;
          v63 = v36;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v40 = v36;
        [v36 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
LABEL_36:
        JUMPOUT(0x19A82BEC4);
      }

      _activate = [(BSServiceDomain *)v17 _activate];
    }

    v14 = [v13 countByEnumeratingWithState:&v42 objects:v50 count:16];
  }

  while (v14);
LABEL_22:

LABEL_23:
}

+ (id)_sharedInstanceCreatingIfNecessary:(uint64_t)necessary
{
  v138 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  os_unfair_lock_lock(&_MergedGlobals_11);
  v3 = qword_1ED4A7C80;
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
    v5 = [BSServiceManager alloc];
    v6 = objc_opt_self();
    obj = [(BSRBSService *)v6 _sharedInstanceCreatingIfNecessary:?];
    v107 = +[BSServiceInitiatingConnectionMultiplexer userInteractiveMultiplexer];
    v106 = +[BSServiceInitiatingConnectionMultiplexer defaultMultiplexer];
    v7 = +[BSServicesConfiguration bootstrapConfiguration];
    v8 = obj;
    v112 = v107;
    v111 = v106;
    v110 = v7;
    if (!v5)
    {
      goto LABEL_35;
    }

    v109 = v8;
    if (!v109)
    {
      v33 = MEMORY[0x1E696AEC0];
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      v36 = [v33 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"RBSService", v35];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v37 = NSStringFromSelector(sel__initWithRBSService_uiMuxer_dfMuxer_bootstrapConfiguration_);
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        *buf = 138544642;
        v127 = v37;
        v128 = 2114;
        v129 = v39;
        v130 = 2048;
        v131 = v5;
        v132 = 2114;
        v133 = @"BSServiceManager.m";
        v134 = 1024;
        v135 = 113;
        v136 = 2114;
        v137 = v36;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v40 = v36;
      [v36 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85B06CLL);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v41 = MEMORY[0x1E696AEC0];
      classForCoder = [v109 classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v43 = NSStringFromClass(classForCoder);
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      v46 = [v41 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"RBSService", v43, v45];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v47 = NSStringFromSelector(sel__initWithRBSService_uiMuxer_dfMuxer_bootstrapConfiguration_);
        v48 = objc_opt_class();
        v49 = NSStringFromClass(v48);
        *buf = 138544642;
        v127 = v47;
        v128 = 2114;
        v129 = v49;
        v130 = 2048;
        v131 = v5;
        v132 = 2114;
        v133 = @"BSServiceManager.m";
        v134 = 1024;
        v135 = 113;
        v136 = 2114;
        v137 = v46;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v50 = v46;
      [v46 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85B1B4);
    }

    v9 = v112;
    if (!v9)
    {
      v51 = MEMORY[0x1E696AEC0];
      v52 = objc_opt_class();
      v53 = NSStringFromClass(v52);
      v54 = [v51 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"uiMuxer", v53];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v55 = NSStringFromSelector(sel__initWithRBSService_uiMuxer_dfMuxer_bootstrapConfiguration_);
        v56 = objc_opt_class();
        v57 = NSStringFromClass(v56);
        *buf = 138544642;
        v127 = v55;
        v128 = 2114;
        v129 = v57;
        v130 = 2048;
        v131 = v5;
        v132 = 2114;
        v133 = @"BSServiceManager.m";
        v134 = 1024;
        v135 = 114;
        v136 = 2114;
        v137 = v54;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v58 = v54;
      [v54 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85B2D4);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v59 = MEMORY[0x1E696AEC0];
      classForCoder2 = [v9 classForCoder];
      if (!classForCoder2)
      {
        classForCoder2 = objc_opt_class();
      }

      v61 = NSStringFromClass(classForCoder2);
      v62 = objc_opt_class();
      v63 = NSStringFromClass(v62);
      v64 = [v59 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"uiMuxer", v61, v63];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v65 = NSStringFromSelector(sel__initWithRBSService_uiMuxer_dfMuxer_bootstrapConfiguration_);
        v66 = objc_opt_class();
        v67 = NSStringFromClass(v66);
        *buf = 138544642;
        v127 = v65;
        v128 = 2114;
        v129 = v67;
        v130 = 2048;
        v131 = v5;
        v132 = 2114;
        v133 = @"BSServiceManager.m";
        v134 = 1024;
        v135 = 114;
        v136 = 2114;
        v137 = v64;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v68 = v64;
      [v64 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85B41CLL);
    }

    v10 = v111;
    if (!v10)
    {
      v69 = MEMORY[0x1E696AEC0];
      v70 = objc_opt_class();
      v71 = NSStringFromClass(v70);
      v72 = [v69 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"dfMuxer", v71];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v73 = NSStringFromSelector(sel__initWithRBSService_uiMuxer_dfMuxer_bootstrapConfiguration_);
        v74 = objc_opt_class();
        v75 = NSStringFromClass(v74);
        *buf = 138544642;
        v127 = v73;
        v128 = 2114;
        v129 = v75;
        v130 = 2048;
        v131 = v5;
        v132 = 2114;
        v133 = @"BSServiceManager.m";
        v134 = 1024;
        v135 = 115;
        v136 = 2114;
        v137 = v72;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v76 = v72;
      [v72 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85B53CLL);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v77 = MEMORY[0x1E696AEC0];
      classForCoder3 = [v10 classForCoder];
      if (!classForCoder3)
      {
        classForCoder3 = objc_opt_class();
      }

      v79 = NSStringFromClass(classForCoder3);
      v80 = objc_opt_class();
      v81 = NSStringFromClass(v80);
      v82 = [v77 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"dfMuxer", v79, v81];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v83 = NSStringFromSelector(sel__initWithRBSService_uiMuxer_dfMuxer_bootstrapConfiguration_);
        v84 = objc_opt_class();
        v85 = NSStringFromClass(v84);
        *buf = 138544642;
        v127 = v83;
        v128 = 2114;
        v129 = v85;
        v130 = 2048;
        v131 = v5;
        v132 = 2114;
        v133 = @"BSServiceManager.m";
        v134 = 1024;
        v135 = 115;
        v136 = 2114;
        v137 = v82;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v86 = v82;
      [v82 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85B684);
    }

    v11 = v110;
    if (!v11)
    {
      v87 = MEMORY[0x1E696AEC0];
      v88 = objc_opt_class();
      v89 = NSStringFromClass(v88);
      v90 = [v87 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"bootstrapConfiguration", v89];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v91 = NSStringFromSelector(sel__initWithRBSService_uiMuxer_dfMuxer_bootstrapConfiguration_);
        v92 = objc_opt_class();
        v93 = NSStringFromClass(v92);
        *buf = 138544642;
        v127 = v91;
        v128 = 2114;
        v129 = v93;
        v130 = 2048;
        v131 = v5;
        v132 = 2114;
        v133 = @"BSServiceManager.m";
        v134 = 1024;
        v135 = 116;
        v136 = 2114;
        v137 = v90;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v94 = v90;
      [v90 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85B7A4);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v95 = MEMORY[0x1E696AEC0];
      classForCoder4 = [v11 classForCoder];
      if (!classForCoder4)
      {
        classForCoder4 = objc_opt_class();
      }

      v97 = NSStringFromClass(classForCoder4);
      v98 = objc_opt_class();
      v99 = NSStringFromClass(v98);
      v100 = [v95 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"bootstrapConfiguration", v97, v99];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v101 = NSStringFromSelector(sel__initWithRBSService_uiMuxer_dfMuxer_bootstrapConfiguration_);
        v102 = objc_opt_class();
        v103 = NSStringFromClass(v102);
        *buf = 138544642;
        v127 = v101;
        v128 = 2114;
        v129 = v103;
        v130 = 2048;
        v131 = v5;
        v132 = 2114;
        v133 = @"BSServiceManager.m";
        v134 = 1024;
        v135 = 116;
        v136 = 2114;
        v137 = v100;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v104 = v100;
      [v100 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85B8ECLL);
    }

    v124.receiver = v5;
    v124.super_class = BSServiceManager;
    v12 = objc_msgSendSuper2(&v124, sel_init);
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(v12 + 1, obj);
      objc_storeStrong(v13 + 2, v107);
      objc_storeStrong(v13 + 3, v106);
      objc_storeStrong(v13 + 4, v7);
      *(v13 + 14) = 0;
      v14 = v13[4];
      if (v14)
      {
        v14 = v14[3];
      }

      v105 = v14;
      array = [MEMORY[0x1E695DF70] array];
      v16 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v105, "count")}];
      v17 = v13[6];
      v13[6] = v16;

      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v113 = v105;
      v18 = [v113 countByEnumeratingWithState:&v120 objects:buf count:16];
      if (v18)
      {
        v19 = *v121;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v121 != v19)
            {
              objc_enumerationMutation(v113);
            }

            v21 = *(*(&v120 + 1) + 8 * i);
            v22 = [[BSServiceDomain alloc] _initWithSpecification:v21];
            v23 = v13[6];
            identifier = [v21 identifier];
            [v23 setObject:v22 forKey:identifier];

            if (!v21 || (v21[9] | 4) == 4)
            {
              [array addObject:v22];
            }
          }

          v18 = [v113 countByEnumeratingWithState:&v120 objects:buf count:16];
        }

        while (v18);
      }

      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v25 = array;
      v26 = [v25 countByEnumeratingWithState:&v116 objects:v125 count:16];
      if (v26)
      {
        v27 = *v117;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v117 != v27)
            {
              objc_enumerationMutation(v25);
            }

            _activate = [(BSServiceDomain *)*(*(&v116 + 1) + 8 * j) _activate];
          }

          v26 = [v25 countByEnumeratingWithState:&v116 objects:v125 count:16];
        }

        while (v26);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __79__BSServiceManager__initWithRBSService_uiMuxer_dfMuxer_bootstrapConfiguration___block_invoke;
      block[3] = &unk_1E75205D0;
      v30 = v13;
      v115 = v30;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
LABEL_35:
      v30 = 0;
    }

    v31 = qword_1ED4A7C80;
    qword_1ED4A7C80 = v30;

    v3 = v30;
  }

  os_unfair_lock_unlock(&_MergedGlobals_11);

  return v3;
}

- (BSServiceManager)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on BSServiceManager"];
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
    v17 = @"BSServiceManager.m";
    v18 = 1024;
    v19 = 105;
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

void __79__BSServiceManager__initWithRBSService_uiMuxer_dfMuxer_bootstrapConfiguration___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 56));
  *(*(a1 + 32) + 72) = 1;
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  v4 = v3 != 0;
  if (v3)
  {
    v5 = BSServiceBootstrapLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19A821000, v5, OS_LOG_TYPE_DEFAULT, "automatic bootstrap deadline has been extended", buf, 2u);
    }

    v2 = *(a1 + 32);
  }

  if ([*(v2 + 48) count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = *(*(a1 + 32) + 48);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __79__BSServiceManager__initWithRBSService_uiMuxer_dfMuxer_bootstrapConfiguration___block_invoke_59;
    v14 = &unk_1E7520BE8;
    v16 = v4;
    v8 = v6;
    v15 = v8;
    [v7 enumerateKeysAndObjectsUsingBlock:&v11];
    if ([v8 count])
    {
      [v8 sortUsingComparator:&__block_literal_global_11];
      v9 = BSServiceBootstrapLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v8 componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v18 = v10;
        _os_log_impl(&dword_19A821000, v9, OS_LOG_TYPE_DEFAULT, "automatic bootstrapping is complete : domains=%@", buf, 0xCu);
      }
    }
  }

  os_unfair_lock_unlock((*(a1 + 32) + 56));
}

void __79__BSServiceManager__initWithRBSService_uiMuxer_dfMuxer_bootstrapConfiguration___block_invoke_59(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = v5;
  if (v5 && (v7 = v5[1]) != 0 && (v8 = v7[9], v7, v8))
  {
    if (v8 != 1)
    {
      goto LABEL_9;
    }

    v9 = @"manual bootstrap deadline";
  }

  else
  {
    if (*(a1 + 40))
    {
      goto LABEL_9;
    }

    [*(a1 + 32) addObject:v10];
    v9 = @"automatic bootstrap deadline";
  }

  [(BSServiceDomain *)v6 _enforceListenerRegistrationForReason:v9];
LABEL_9:
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
      v17 = @"BSServiceManager.m";
      v18 = 1024;
      v19 = 185;
      v20 = 2114;
      v21 = v4;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v8 = v4;
    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A85C170);
  }

  v9.receiver = self;
  v9.super_class = BSServiceManager;
  [(BSServiceManager *)&v9 dealloc];
}

+ (id)debugDescription
{
  v2 = objc_autoreleasePoolPush();
  v3 = [BSServiceManager _sharedInstanceCreatingIfNecessary:?];
  v4 = v3;
  if (v3)
  {
    build = [v3 debugDescription];
  }

  else
  {
    v6 = [MEMORY[0x1E698E680] builderWithClass:objc_opt_class()];
    [v6 setUseDebugDescription:1];
    activeMultilinePrefix = [v6 activeMultilinePrefix];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __36__BSServiceManager_debugDescription__block_invoke;
    v10[3] = &unk_1E75205D0;
    v8 = v6;
    v11 = v8;
    [v8 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v10];

    build = [v8 build];
  }

  objc_autoreleasePoolPop(v2);

  return build;
}

void __36__BSServiceManager_debugDescription__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [v2 activeMultilinePrefix];
  v3 = [BSServiceInitiatingConnectionMultiplexer debugDescriptionWithMultilinePrefix:v6];
  [v2 appendString:v3 withName:@"clients"];

  v4 = *(a1 + 32);
  v7 = [v4 activeMultilinePrefix];
  v5 = [BSRBSService debugDescriptionWithMultilinePrefix:v7];
  [v4 appendString:v5 withName:@"RBSService"];
}

- (id)debugDescription
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  os_unfair_lock_lock(&self->_lock);
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  lock_identifierToDomain = self->_lock_identifierToDomain;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __36__BSServiceManager_debugDescription__block_invoke;
  v35[3] = &unk_1E7520C30;
  v35[4] = self;
  v7 = array;
  v36 = v7;
  v8 = array2;
  v37 = v8;
  v9 = array3;
  v38 = v9;
  [(NSMutableDictionary *)lock_identifierToDomain enumerateKeysAndObjectsUsingBlock:v35];
  [v7 sortUsingComparator:&__block_literal_global_83];
  [v8 sortUsingComparator:&__block_literal_global_83];
  [v9 sortUsingComparator:&__block_literal_global_83];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __36__BSServiceManager_debugDescription__block_invoke_3;
  v29[3] = &unk_1E7520C78;
  v10 = v3;
  v30 = v10;
  v11 = v7;
  v31 = v11;
  v12 = v8;
  v32 = v12;
  v13 = v9;
  v33 = v13;
  selfCopy = self;
  v14 = [v10 modifyProem:v29];
  activeMultilinePrefix = [v10 activeMultilinePrefix];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __36__BSServiceManager_debugDescription__block_invoke_4;
  v23[3] = &unk_1E7520C78;
  v16 = v10;
  v24 = v16;
  v17 = v11;
  v25 = v17;
  v18 = v12;
  v26 = v18;
  v19 = v13;
  v27 = v19;
  selfCopy2 = self;
  [v16 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v23];

  os_unfair_lock_unlock(&self->_lock);
  build = [v16 build];

  return build;
}

void __36__BSServiceManager_debugDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 32) domainForIdentifier:v9];

  if (v6)
  {
    v7 = 40;
  }

  else
  {
    v8 = [*(*(a1 + 32) + 40) domainForIdentifier:v9];

    v7 = 48;
    if (!v8)
    {
      v7 = 56;
    }
  }

  [*(a1 + v7) addObject:v5];
}

uint64_t __36__BSServiceManager_debugDescription__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (a2)
  {
    v5 = *(a2 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 identifier];
  if (v4)
  {
    v8 = v4[1];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [v9 identifier];
  v11 = [v7 compare:v10];

  return v11;
}

id __36__BSServiceManager_debugDescription__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"count"), @"bootstrapDomains"}];
  if ([*(a1 + 48) count])
  {
    v3 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 48) withName:{"count"), @"viewServiceDomains"}];
  }

  v4 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 56) withName:{"count"), @"dynamicDomains"}];
  v5 = *(a1 + 64);
  if (*(v5 + 64))
  {
    v6 = @"extended";
  }

  else if (*(v5 + 72))
  {
    v6 = @"complete";
  }

  else
  {
    v6 = @"pending";
  }

  return [*(a1 + 32) appendObject:v6 withName:@"automaticStart"];
}

void __36__BSServiceManager_debugDescription__block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activeMultilinePrefix];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __36__BSServiceManager_debugDescription__block_invoke_5;
  v29[3] = &unk_1E75209E8;
  v30 = *(a1 + 40);
  v31 = *(a1 + 32);
  [v2 appendBodySectionWithName:@"bootstrapDomains" multilinePrefix:v3 block:v29];

  if ([*(a1 + 48) count])
  {
    v4 = *(a1 + 32);
    v5 = [v4 activeMultilinePrefix];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __36__BSServiceManager_debugDescription__block_invoke_6;
    v26[3] = &unk_1E75209E8;
    v27 = *(a1 + 48);
    v28 = *(a1 + 32);
    [v4 appendBodySectionWithName:@"viewServiceDomains" multilinePrefix:v5 block:v26];
  }

  v6 = *(a1 + 32);
  v7 = [v6 activeMultilinePrefix];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __36__BSServiceManager_debugDescription__block_invoke_7;
  v23[3] = &unk_1E75209E8;
  v24 = *(a1 + 56);
  v25 = *(a1 + 32);
  [v6 appendBodySectionWithName:@"dynamicDomains" multilinePrefix:v7 block:v23];

  v8 = *(a1 + 32);
  v9 = [v8 activeMultilinePrefix];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __36__BSServiceManager_debugDescription__block_invoke_8;
  v20 = &unk_1E75209E8;
  v10 = *(a1 + 32);
  v11 = *(a1 + 64);
  v21 = v10;
  v22 = v11;
  [v8 appendBodySectionWithName:@"clientManagers" multilinePrefix:v9 block:&v17];

  v12 = *(a1 + 32);
  v13 = *(*(a1 + 64) + 8);
  v14 = [v12 activeMultilinePrefix];
  v15 = [v13 debugDescriptionWithMultilinePrefix:v14];
  v16 = [v12 appendObject:v15 withName:@"RBSService"];
}

void __36__BSServiceManager_debugDescription__block_invoke_5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = *(a1 + 40);
        v8 = [v7 activeMultilinePrefix];
        v9 = [(BSServiceDomain *)v6 _debugDescriptionWithMultilinePrefix:v8];
        v10 = [v7 appendObject:v9 withName:0];
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }
}

void __36__BSServiceManager_debugDescription__block_invoke_6(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = *(a1 + 40);
        v8 = [v7 activeMultilinePrefix];
        v9 = [(BSServiceDomain *)v6 _debugDescriptionWithMultilinePrefix:v8];
        v10 = [v7 appendObject:v9 withName:0];
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }
}

void __36__BSServiceManager_debugDescription__block_invoke_7(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = *(a1 + 40);
        v8 = [v7 activeMultilinePrefix];
        v9 = [(BSServiceDomain *)v6 _debugDescriptionWithMultilinePrefix:v8];
        v10 = [v7 appendObject:v9 withName:0];
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }
}

void __36__BSServiceManager_debugDescription__block_invoke_8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);
  v10 = [v2 activeMultilinePrefix];
  v4 = [v3 debugDescriptionWithMultilinePrefix:?];
  v5 = [v2 appendObject:v4 withName:@"userInteractive"];

  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 24);
  v11 = [v6 activeMultilinePrefix];
  v8 = [v7 debugDescriptionWithMultilinePrefix:?];
  v9 = [v6 appendObject:v8 withName:@"default"];
}

- (id)domainWithIdentifier:(uint64_t)identifier
{
  v3 = a2;
  if (identifier)
  {
    os_unfair_lock_lock((identifier + 56));
    v4 = [*(identifier + 48) objectForKey:v3];
    os_unfair_lock_unlock((identifier + 56));
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (os_unfair_lock_s)extendAutomaticBootstrapCompletion
{
  v27 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    BSDispatchQueueAssertMain();
    os_unfair_lock_lock(selfCopy + 14);
    if (LOBYTE(selfCopy[18]._os_unfair_lock_opaque) == 1)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must call before automatic bootstrapping would complete without extensions"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = NSStringFromSelector(sel_extendAutomaticBootstrapCompletion);
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        *buf = 138544642;
        v16 = v5;
        v17 = 2114;
        v18 = v7;
        v19 = 2048;
        v20 = selfCopy;
        v21 = 2114;
        v22 = @"BSServiceManager.m";
        v23 = 1024;
        v24 = 301;
        v25 = 2114;
        v26 = v4;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v8 = v4;
      [v4 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85D680);
    }

    if (BYTE1(selfCopy[18]._os_unfair_lock_opaque) == 1)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must call before invalidation"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(sel_extendAutomaticBootstrapCompletion);
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138544642;
        v16 = v10;
        v17 = 2114;
        v18 = v12;
        v19 = 2048;
        v20 = selfCopy;
        v21 = 2114;
        v22 = @"BSServiceManager.m";
        v23 = 1024;
        v24 = 302;
        v25 = 2114;
        v26 = v9;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v13 = v9;
      [v9 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85D778);
    }

    ++*&selfCopy[16]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(selfCopy + 14);
    v2 = objc_alloc(MEMORY[0x1E698E778]);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__BSServiceManager_extendAutomaticBootstrapCompletion__block_invoke;
    v14[3] = &unk_1E7520CC8;
    v14[4] = selfCopy;
    v14[5] = sel_extendAutomaticBootstrapCompletion;
    self = [v2 initWithIdentifier:@"com.apple.boardservices.bootstrap" forReason:@"extend" invalidationBlock:v14];
  }

  return self;
}

void __54__BSServiceManager_extendAutomaticBootstrapCompletion__block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 56));
  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"bootstrap extension underflow"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(*(a1 + 40));
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = *(a1 + 32);
      *buf = 138544642;
      v21 = v13;
      v22 = 2114;
      v23 = v15;
      v24 = 2048;
      v25 = v16;
      v26 = 2114;
      v27 = @"BSServiceManager.m";
      v28 = 1024;
      v29 = 308;
      v30 = 2114;
      v31 = v12;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v17 = v12;
    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A85DA80);
  }

  v6 = v5 - 1;
  *(v4 + 64) = v6;
  v7 = *(a1 + 32);
  if (!v6 && *(v7 + 72) == 1)
  {
    v8 = [MEMORY[0x1E695DF70] array];
    if ([*(*(a1 + 32) + 48) count])
    {
      v9 = *(*(a1 + 32) + 48);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __54__BSServiceManager_extendAutomaticBootstrapCompletion__block_invoke_132;
      v18[3] = &unk_1E7520CA0;
      v19 = v8;
      [v9 enumerateKeysAndObjectsUsingBlock:v18];
    }

    [v8 sortUsingComparator:&__block_literal_global_137];
    v10 = BSServiceBootstrapLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 componentsJoinedByString:{@", "}];
      *buf = 138412290;
      v21 = v11;
      _os_log_impl(&dword_19A821000, v10, OS_LOG_TYPE_DEFAULT, "extended automatic bootstrapping is complete : domains=%@", buf, 0xCu);
    }

    v7 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v7 + 56));
}

void __54__BSServiceManager_extendAutomaticBootstrapCompletion__block_invoke_132(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v11 = v4;
  if (!v4)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v5 = v4[1];
  if (!v5 || (v6 = v5[9], v5, !v6))
  {
    v7 = v11[1];
LABEL_5:
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v9 identifier];
    [v8 addObject:v10];

    [(BSServiceDomain *)v11 _enforceListenerRegistrationForReason:?];
  }
}

- (BSService)_lock_registerDomain:(uint64_t)domain
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  os_unfair_lock_assert_owner((domain + 56));
  if (*(domain + 73) == 1)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must call before invalidation"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(sel__lock_registerDomain_);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v31 = v12;
      v32 = 2114;
      v33 = v14;
      v34 = 2048;
      domainCopy3 = domain;
      v36 = 2114;
      v37 = @"BSServiceManager.m";
      v38 = 1024;
      v39 = 329;
      v40 = 2114;
      v41 = v11;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v15 = v11;
    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A85DDECLL);
  }

  if (v3 && v3[9] == 4)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"dynamic domains cannot be an XPCService : %@", v3];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(sel__lock_registerDomain_);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138544642;
      v31 = v17;
      v32 = 2114;
      v33 = v19;
      v34 = 2048;
      domainCopy3 = domain;
      v36 = 2114;
      v37 = @"BSServiceManager.m";
      v38 = 1024;
      v39 = 330;
      v40 = 2114;
      v41 = v16;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v20 = v16;
    [v16 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A85DEE8);
  }

  v4 = *(domain + 48);
  identifier = [v3 identifier];
  v6 = [v4 objectForKey:identifier];

  if (v6)
  {
    v21 = MEMORY[0x1E696AEC0];
    v22 = *(domain + 48);
    identifier2 = [v3 identifier];
    v24 = [v22 objectForKey:identifier2];
    v25 = [v21 stringWithFormat:@"connot register dynamic domain due to identifier collision : new=%@ existing=%@", v3, v24];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v26 = NSStringFromSelector(sel__lock_registerDomain_);
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      *buf = 138544642;
      v31 = v26;
      v32 = 2114;
      v33 = v28;
      v34 = 2048;
      domainCopy3 = domain;
      v36 = 2114;
      v37 = @"BSServiceManager.m";
      v38 = 1024;
      v39 = 331;
      v40 = 2114;
      v41 = v25;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v29 = v25;
    [v25 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A85E018);
  }

  v7 = [[BSServiceDomain alloc] _initWithSpecification:v3];
  v8 = *(domain + 48);
  identifier3 = [v3 identifier];
  [v8 setObject:v7 forKey:identifier3];

  return v7;
}

+ (void)validateDynamicConfiguration:(void *)configuration withDebugInfo:
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a2;
  configurationCopy = configuration;
  v5 = objc_opt_self();
  domains = [v4 domains];
  if (![domains count])
  {
    v26 = configurationCopy;
    if (!configurationCopy)
    {
      v26 = v4;
    }

    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no domains in dynamic registration : %@", v26];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(sel_validateDynamicConfiguration_withDebugInfo_);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138544642;
      v39 = v28;
      v40 = 2114;
      v41 = v30;
      v42 = 2048;
      v43 = v5;
      v44 = 2114;
      v45 = @"BSServiceManager.m";
      v46 = 1024;
      v47 = 340;
      v48 = 2114;
      v49 = v27;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v31 = v27;
    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A85E56CLL);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = domains;
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v8)
  {
    v9 = *v34;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        machName = [v11 machName];
        v13 = machName == 0;

        if (!v13)
        {
          v14 = configurationCopy;
          if (!configurationCopy)
          {
            v14 = v11;
          }

          v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"dynamic domains may not specify a mach name : %@", v14];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v16 = NSStringFromSelector(sel_validateDynamicConfiguration_withDebugInfo_);
            v17 = objc_opt_class();
            v18 = NSStringFromClass(v17);
            *buf = 138544642;
            v39 = v16;
            v40 = 2114;
            v41 = v18;
            v42 = 2048;
            v43 = v5;
            v44 = 2114;
            v45 = @"BSServiceManager.m";
            v46 = 1024;
            v47 = 342;
            v48 = 2114;
            v49 = v15;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v19 = v15;
          [v15 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A85E358);
        }

        if (!v11 || v11[9] != 3)
        {
          v20 = configurationCopy;
          if (!configurationCopy)
          {
            v20 = v11;
          }

          v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"dynamic domains must specify Start to be ManualSession : %@", v20];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v22 = NSStringFromSelector(sel_validateDynamicConfiguration_withDebugInfo_);
            v23 = objc_opt_class();
            v24 = NSStringFromClass(v23);
            *buf = 138544642;
            v39 = v22;
            v40 = 2114;
            v41 = v24;
            v42 = 2048;
            v43 = v5;
            v44 = 2114;
            v45 = @"BSServiceManager.m";
            v46 = 1024;
            v47 = 343;
            v48 = 2114;
            v49 = v21;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v25 = v21;
          [v21 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A85E464);
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v8);
  }
}

- (os_unfair_lock_s)registerDynamicConfiguration:(os_unfair_lock_s *)configuration
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (configuration)
  {
    [BSServiceManager validateDynamicConfiguration:v3 withDebugInfo:0];
    domains = [v3 domains];
    os_unfair_lock_lock(configuration + 14);
    v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(domains, "count")}];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = domains;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = *v21;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          v11 = [(BSServiceManager *)configuration _lock_registerDomain:v10];
          [v5 addObject:v11];
          v12 = *&configuration[12]._os_unfair_lock_opaque;
          identifier = [v10 identifier];
          [v12 setObject:v11 forKey:identifier];
        }

        v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v7);
    }

    os_unfair_lock_unlock(configuration + 14);
    v14 = objc_alloc(MEMORY[0x1E698E778]);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __49__BSServiceManager_registerDynamicConfiguration___block_invoke;
    v17[3] = &unk_1E7520CF0;
    v17[4] = configuration;
    v15 = v5;
    v18 = v15;
    v19 = sel_registerDynamicConfiguration_;
    configuration = [v14 initWithIdentifier:@"com.apple.boardservices.register" forReason:@"dynamic" invalidationBlock:v17];
  }

  return configuration;
}

void __49__BSServiceManager_registerDynamicConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 56));
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v43 count:16];
  if (v5)
  {
    v6 = *v28;
    do
    {
      v7 = 0;
      do
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v27 + 1) + 8 * v7);
        if (v8)
        {
          v9 = *(v8 + 8);
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;
        v11 = *(*(a1 + 32) + 48);
        v12 = [v10 identifier];
        v13 = [v11 objectForKey:v12];
        LOBYTE(v11) = v13 == v8;

        if ((v11 & 1) == 0)
        {
          v17 = MEMORY[0x1E696AEC0];
          v18 = *(*(a1 + 32) + 48);
          v19 = [v10 identifier];
          v20 = [v18 objectForKey:v19];
          v21 = [v17 stringWithFormat:@"domain registration stomping : removing=%@ existing=%@", v8, v20, v27];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v22 = NSStringFromSelector(*(a1 + 48));
            v23 = objc_opt_class();
            v24 = NSStringFromClass(v23);
            v25 = *(a1 + 32);
            *buf = 138544642;
            v32 = v22;
            v33 = 2114;
            v34 = v24;
            v35 = 2048;
            v36 = v25;
            v37 = 2114;
            v38 = @"BSServiceManager.m";
            v39 = 1024;
            v40 = 365;
            v41 = 2114;
            v42 = v21;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v26 = v21;
          [v21 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A85EBD8);
        }

        [(BSServiceDomain *)v8 _invalidate];
        v14 = *(*(a1 + 32) + 48);
        v15 = [v10 identifier];
        [v14 removeObjectForKey:v15];

        ++v7;
      }

      while (v5 != v7);
      v16 = [v4 countByEnumeratingWithState:&v27 objects:v43 count:16];
      v5 = v16;
    }

    while (v16);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 56));
}

- (id)activateManualDomain:(uint64_t)domain
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (domain)
  {
    v5 = v3;
    NSClassFromString(&cfstr_Nsstring.isa);
    if (!v5)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v22 = NSStringFromSelector(sel_activateManualDomain_);
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        *buf = 138544642;
        v52 = v22;
        v53 = 2114;
        v54 = v24;
        v55 = 2048;
        domainCopy8 = domain;
        v57 = 2114;
        v58 = @"BSServiceManager.m";
        v59 = 1024;
        v60 = 374;
        v61 = 2114;
        v62 = v21;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v25 = v21;
      [v21 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85F098);
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v27 = NSStringFromSelector(sel_activateManualDomain_);
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        *buf = 138544642;
        v52 = v27;
        v53 = 2114;
        v54 = v29;
        v55 = 2048;
        domainCopy8 = domain;
        v57 = 2114;
        v58 = @"BSServiceManager.m";
        v59 = 1024;
        v60 = 374;
        v61 = 2114;
        v62 = v26;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v30 = v26;
      [v26 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85F19CLL);
    }

    os_unfair_lock_lock((domain + 56));
    if (*(domain + 73) == 1)
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must call before invalidation"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v32 = NSStringFromSelector(sel_activateManualDomain_);
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        *buf = 138544642;
        v52 = v32;
        v53 = 2114;
        v54 = v34;
        v55 = 2048;
        domainCopy8 = domain;
        v57 = 2114;
        v58 = @"BSServiceManager.m";
        v59 = 1024;
        v60 = 376;
        v61 = 2114;
        v62 = v31;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v35 = v31;
      [v31 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85F294);
    }

    v6 = [*(domain + 48) objectForKey:v5];
    v7 = v6;
    if (!v6)
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempt to activate unknown domain %@", v5];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v37 = NSStringFromSelector(sel_activateManualDomain_);
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        *buf = 138544642;
        v52 = v37;
        v53 = 2114;
        v54 = v39;
        v55 = 2048;
        domainCopy8 = domain;
        v57 = 2114;
        v58 = @"BSServiceManager.m";
        v59 = 1024;
        v60 = 378;
        v61 = 2114;
        v62 = v36;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v40 = v36;
      [v36 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85F390);
    }

    v8 = *(v6 + 8);
    if (v8)
    {
      v9 = v8[9];

      if (v9 > 3)
      {
        if (v9 == 4)
        {
          v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"XPCService domain cannot be activated via this call"];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v47 = NSStringFromSelector(sel_activateManualDomain_);
            v48 = objc_opt_class();
            v49 = NSStringFromClass(v48);
            *buf = 138544642;
            v52 = v47;
            v53 = 2114;
            v54 = v49;
            v55 = 2048;
            domainCopy8 = domain;
            v57 = 2114;
            v58 = @"BSServiceManager.m";
            v59 = 1024;
            v60 = 381;
            v61 = 2114;
            v62 = v46;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v50 = v46;
          [v46 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A85F580);
        }

        if (v9 == 5)
        {
          v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ViewService domain cannot be activated via this call"];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v16 = NSStringFromSelector(sel_activateManualDomain_);
            v17 = objc_opt_class();
            v18 = NSStringFromClass(v17);
            *buf = 138544642;
            v52 = v16;
            v53 = 2114;
            v54 = v18;
            v55 = 2048;
            domainCopy8 = domain;
            v57 = 2114;
            v58 = @"BSServiceManager.m";
            v59 = 1024;
            v60 = 382;
            v61 = 2114;
            v62 = v15;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v19 = v15;
          [v15 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A85EF2CLL);
        }

        goto LABEL_19;
      }

      if (v9 == 1)
      {
        if (*(domain + 72) == 1)
        {
          v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"manual bootstrap must occur before automatic bootstrapping would complete without extensions"];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v11 = NSStringFromSelector(sel_activateManualDomain_);
            v12 = objc_opt_class();
            v13 = NSStringFromClass(v12);
            *buf = 138544642;
            v52 = v11;
            v53 = 2114;
            v54 = v13;
            v55 = 2048;
            domainCopy8 = domain;
            v57 = 2114;
            v58 = @"BSServiceManager.m";
            v59 = 1024;
            v60 = 384;
            v61 = 2114;
            v62 = v10;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v14 = v10;
          [v10 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A85EE24);
        }

        goto LABEL_19;
      }

      if (v9)
      {
LABEL_19:
        os_unfair_lock_unlock((domain + 56));
        domain = [(BSServiceDomain *)v7 _activate];

        goto LABEL_20;
      }
    }

    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot manually activate an automatic domain"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v42 = NSStringFromSelector(sel_activateManualDomain_);
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      *buf = 138544642;
      v52 = v42;
      v53 = 2114;
      v54 = v44;
      v55 = 2048;
      domainCopy8 = domain;
      v57 = 2114;
      v58 = @"BSServiceManager.m";
      v59 = 1024;
      v60 = 380;
      v61 = 2114;
      v62 = v41;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v45 = v41;
    [v41 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A85F488);
  }

LABEL_20:

  return domain;
}

- (id)viewServiceConfigurationRegisteringIfNecessary:(uint64_t)necessary
{
  v51 = *MEMORY[0x1E69E9840];
  if (necessary)
  {
    os_unfair_lock_lock((necessary + 56));
    v4 = *(necessary + 40);
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = a2 == 0;
    }

    if (!v5)
    {
      if (!NSClassFromString(&cfstr_Uiviewservicec.isa))
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"could not resolve class _UIViewServiceConfiguration"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v25 = NSStringFromSelector(sel_viewServiceConfigurationRegisteringIfNecessary_);
          v26 = objc_opt_class();
          v27 = NSStringFromClass(v26);
          *buf = 138544642;
          v40 = v25;
          v41 = 2114;
          v42 = v27;
          v43 = 2048;
          necessaryCopy3 = necessary;
          v45 = 2114;
          v46 = @"BSServiceManager.m";
          v47 = 1024;
          v48 = 395;
          v49 = 2114;
          v50 = v24;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v28 = v24;
        [v24 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A85FAA8);
      }

      v6 = objc_opt_new();
      domainsDictionary = [v6 domainsDictionary];
      v8 = [BSServicesConfiguration _configOfService:domainsDictionary withViewServiceDomainsDictionary:?];
      v9 = *(necessary + 40);
      *(necessary + 40) = v8;

      v10 = v8;
      if (!v10)
      {
        v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid viewServiceConfiguration returned for %@", domainsDictionary];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v30 = NSStringFromSelector(sel_viewServiceConfigurationRegisteringIfNecessary_);
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          *buf = 138544642;
          v40 = v30;
          v41 = 2114;
          v42 = v32;
          v43 = 2048;
          necessaryCopy3 = necessary;
          v45 = 2114;
          v46 = @"BSServiceManager.m";
          v47 = 1024;
          v48 = 399;
          v49 = 2114;
          v50 = v29;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v33 = v29;
        [v29 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A85FBA4);
      }

      v4 = v10;
      domains = [v10 domains];
      if ([domains count])
      {
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v12 = domains;
        v13 = [v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v13)
        {
          v14 = *v35;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v35 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = *(*(&v34 + 1) + 8 * i);
              if (!v16 || v16[9] != 5)
              {
                v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"view-service domains must specify Start to be ViewService : %@", *(*(&v34 + 1) + 8 * i)];
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  v20 = NSStringFromSelector(sel_viewServiceConfigurationRegisteringIfNecessary_);
                  v21 = objc_opt_class();
                  v22 = NSStringFromClass(v21);
                  *buf = 138544642;
                  v40 = v20;
                  v41 = 2114;
                  v42 = v22;
                  v43 = 2048;
                  necessaryCopy3 = necessary;
                  v45 = 2114;
                  v46 = @"BSServiceManager.m";
                  v47 = 1024;
                  v48 = 403;
                  v49 = 2114;
                  v50 = v19;
                  _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
                }

                v23 = v19;
                [v19 UTF8String];
                _bs_set_crash_log_message();
                __break(0);
                JUMPOUT(0x19A85F9B0);
              }

              v17 = [(BSServiceManager *)necessary _lock_registerDomain:v16];
            }

            v13 = [v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
          }

          while (v13);
        }
      }
    }

    os_unfair_lock_unlock((necessary + 56));
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)enforceXPCServiceListenerRegistration
{
  if (self)
  {
    os_unfair_lock_lock((self + 56));
    [*(self + 48) enumerateKeysAndObjectsUsingBlock:&__block_literal_global_216];

    os_unfair_lock_unlock((self + 56));
  }
}

void __57__BSServiceManager_enforceXPCServiceListenerRegistration__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v6 = v3;
  if (v3)
  {
    v4 = v3[1];
    if (v4)
    {
      v5 = v4[9];

      if (v5 == 4)
      {
        [(BSServiceDomain *)v6 _enforceListenerRegistrationForReason:?];
      }
    }
  }
}

@end