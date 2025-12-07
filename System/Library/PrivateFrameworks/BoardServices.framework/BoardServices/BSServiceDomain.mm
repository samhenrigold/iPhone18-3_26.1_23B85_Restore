@interface BSServiceDomain
- (BSService)_initWithSpecification:(BSService *)specification;
- (BSServiceDomain)init;
- (id)_debugDescriptionWithMultilinePrefix:(uint64_t)prefix;
- (id)serviceWithIdentifier:(id *)identifier;
- (os_unfair_lock_s)_activate;
- (void)_enforceListenerRegistrationForReason:(uint64_t)reason;
- (void)_invalidate;
- (void)endpoint;
@end

@implementation BSServiceDomain

- (os_unfair_lock_s)_activate
{
  selfCopy = self;
  v45 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = *&self[2]._os_unfair_lock_opaque;
    if (v2)
    {
      v3 = *(v2 + 72);
    }

    else
    {
      v3 = 0;
    }

    os_unfair_lock_lock(self + 12);
    if (BYTE1(selfCopy[13]._os_unfair_lock_opaque) == 1)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot manually activate an invalidated domain"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v25 = NSStringFromSelector(sel__activate);
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        *buf = 138544642;
        v34 = v25;
        v35 = 2114;
        v36 = v27;
        v37 = 2048;
        v38 = selfCopy;
        v39 = 2114;
        v40 = @"BSServiceDomain.m";
        v41 = 1024;
        v42 = 384;
        v43 = 2114;
        v44 = v24;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v28 = v24;
      [v24 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A82C8FCLL);
    }

    v4 = *&selfCopy[10]._os_unfair_lock_opaque;
    if (v4)
    {
      if (v3 == 3)
      {
        *&selfCopy[10]._os_unfair_lock_opaque = v4 + 1;
        os_unfair_lock_unlock(selfCopy + 12);
LABEL_30:
        objc_initWeak(buf, selfCopy);
        v12 = objc_alloc(MEMORY[0x1E698E778]);
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __28__BSServiceDomain__activate__block_invoke_2;
        v29[3] = &unk_1E7520F30;
        objc_copyWeak(&v30, buf);
        selfCopy = [v12 initWithIdentifier:@"com.apple.boardservices.domain" forReason:@"session" invalidationBlock:v29];
        objc_destroyWeak(&v30);
        objc_destroyWeak(buf);
        goto LABEL_36;
      }

      goto LABEL_34;
    }

    *&selfCopy[10]._os_unfair_lock_opaque = 1;
    if (v3)
    {
      if (v3 <= 2)
      {
        v5 = BSServiceBootstrapLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          identifier = [*&selfCopy[2]._os_unfair_lock_opaque identifier];
          *buf = 138543362;
          v34 = identifier;
          _os_log_impl(&dword_19A821000, v5, OS_LOG_TYPE_DEFAULT, "manually bootstrapping domain %{public}@", buf, 0xCu);
        }

        v7 = @"manual bootstrap activation";
LABEL_26:

        if (selfCopy[13]._os_unfair_lock_opaque)
        {
          goto LABEL_29;
        }

        [(BSServiceDomain *)selfCopy _enforceListenerRegistrationForReason:v7];
LABEL_28:
        [(BSXPCServiceConnectionListener *)*&selfCopy[4]._os_unfair_lock_opaque resume];
LABEL_29:
        os_unfair_lock_unlock(selfCopy + 12);
        if (v3 == 3)
        {
          goto LABEL_30;
        }

        goto LABEL_35;
      }

      if (v3 == 5)
      {
        v5 = BSServiceBootstrapLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          identifier2 = [*&selfCopy[2]._os_unfair_lock_opaque identifier];
          *buf = 138543362;
          v34 = identifier2;
          _os_log_impl(&dword_19A821000, v5, OS_LOG_TYPE_DEFAULT, "initializing view-service domain %{public}@", buf, 0xCu);
        }

        v7 = @"ViewService backstop";
        goto LABEL_26;
      }

      if (v3 != 4)
      {
        if (v3 != 3)
        {
          v16 = MEMORY[0x1E696AEC0];
          identifier3 = [*&selfCopy[2]._os_unfair_lock_opaque identifier];
          v18 = NSStringFromBSServiceDomainStartType(v3);
          v19 = [v16 stringWithFormat:@"cannot process domain %@ with unknown start type %@", identifier3, v18];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v20 = NSStringFromSelector(sel__activate);
            v21 = objc_opt_class();
            v22 = NSStringFromClass(v21);
            *buf = 138544642;
            v34 = v20;
            v35 = 2114;
            v36 = v22;
            v37 = 2048;
            v38 = selfCopy;
            v39 = 2114;
            v40 = @"BSServiceDomain.m";
            v41 = 1024;
            v42 = 406;
            v43 = 2114;
            v44 = v19;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v23 = v19;
          [v19 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A82C804);
        }

        v5 = BSServiceBootstrapLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          identifier4 = [*&selfCopy[2]._os_unfair_lock_opaque identifier];
          *buf = 138543362;
          v34 = identifier4;
          _os_log_impl(&dword_19A821000, v5, OS_LOG_TYPE_DEFAULT, "manually activating session for domain %{public}@", buf, 0xCu);
        }

        v7 = @"manual session activation";
        goto LABEL_26;
      }

      v13 = BSServiceBootstrapLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        identifier5 = [*&selfCopy[2]._os_unfair_lock_opaque identifier];
        *buf = 138543362;
        v34 = identifier5;
        _os_log_impl(&dword_19A821000, v13, OS_LOG_TYPE_DEFAULT, "initializing domain %{public}@", buf, 0xCu);
      }

      if ((selfCopy[13]._os_unfair_lock_opaque & 1) == 0)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __28__BSServiceDomain__activate__block_invoke;
        block[3] = &unk_1E75209E8;
        block[4] = selfCopy;
        v32 = @"XPCService backstop";
        dispatch_async(MEMORY[0x1E69E96A0], block);

        goto LABEL_28;
      }
    }

    else
    {
      v8 = BSServiceBootstrapLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        identifier6 = [*&selfCopy[2]._os_unfair_lock_opaque identifier];
        *buf = 138543362;
        v34 = identifier6;
        _os_log_impl(&dword_19A821000, v8, OS_LOG_TYPE_DEFAULT, "initializing automatic domain %{public}@", buf, 0xCu);
      }

      if ((selfCopy[13]._os_unfair_lock_opaque & 1) == 0)
      {
        goto LABEL_28;
      }
    }

LABEL_34:
    os_unfair_lock_unlock(selfCopy + 12);
LABEL_35:
    selfCopy = 0;
  }

LABEL_36:

  return selfCopy;
}

- (void)endpoint
{
  if (self)
  {
    self = [(BSXPCServiceConnectionListener *)self[2] endpoint];
    v1 = vars8;
  }

  return self;
}

- (BSServiceDomain)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not available on BSServiceDomain"];
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
    v17 = @"BSServiceDomain.m";
    v18 = 1024;
    v19 = 263;
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

- (BSService)_initWithSpecification:(BSService *)specification
{
  v80 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v56 = v3;
  if (!specification)
  {
    goto LABEL_22;
  }

  v4 = v3;
  v61 = v4;
  NSClassFromString(&cfstr_Bsservicedomai_8.isa);
  if (!v4)
  {
    v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v46 = NSStringFromSelector(sel__initWithSpecification_);
      v47 = objc_opt_class();
      v48 = NSStringFromClass(v47);
      *v71 = 138544642;
      *&v71[4] = v46;
      *&v71[12] = 2114;
      *&v71[14] = v48;
      v72 = 2048;
      specificationCopy2 = specification;
      v74 = 2114;
      v75 = @"BSServiceDomain.m";
      v76 = 1024;
      v77 = 268;
      v78 = 2114;
      v79 = v45;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v71, 0x3Au);
    }

    v49 = v45;
    [v45 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A864864);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSServiceDomainSpecificationClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v51 = NSStringFromSelector(sel__initWithSpecification_);
      v52 = objc_opt_class();
      v53 = NSStringFromClass(v52);
      *v71 = 138544642;
      *&v71[4] = v51;
      *&v71[12] = 2114;
      *&v71[14] = v53;
      v72 = 2048;
      specificationCopy2 = specification;
      v74 = 2114;
      v75 = @"BSServiceDomain.m";
      v76 = 1024;
      v77 = 268;
      v78 = 2114;
      v79 = v50;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v71, 0x3Au);
    }

    v54 = v50;
    [v50 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86496CLL);
  }

  v69.receiver = specification;
  v69.super_class = BSServiceDomain;
  v5 = [(BSService *)&v69 init];
  if (v5)
  {
    v57 = v5;
    objc_storeStrong(&v5->_specification, a2);
    v57->_lock._os_unfair_lock_opaque = 0;
    v55 = v4[8];
    v60 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v55, "count")}];
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v58 = v55;
    v6 = [v58 countByEnumeratingWithState:&v65 objects:v70 count:16];
    if (v6)
    {
      v7 = *v66;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v66 != v7)
          {
            objc_enumerationMutation(v58);
          }

          v9 = *(*(&v65 + 1) + 8 * i);
          v10 = [BSService alloc];
          v11 = v9;
          v12 = v4;
          if (v10)
          {
            v13 = v11;
            NSClassFromString(&cfstr_Bsservicespeci.isa);
            if (!v13)
            {
              v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v31 = NSStringFromSelector(sel__initWithServiceSpecification_domainSpecification_);
                v32 = objc_opt_class();
                v33 = NSStringFromClass(v32);
                *v71 = 138544642;
                *&v71[4] = v31;
                *&v71[12] = 2114;
                *&v71[14] = v33;
                v72 = 2048;
                specificationCopy2 = v10;
                v74 = 2114;
                v75 = @"BSServiceDomain.m";
                v76 = 1024;
                v77 = 48;
                v78 = 2114;
                v79 = v30;
                _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v71, 0x3Au);
              }

              v34 = v30;
              [v30 UTF8String];
              _bs_set_crash_log_message();
              __break(0);
              JUMPOUT(0x19A864544);
            }

            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSServiceSpecificationClass]"];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v36 = NSStringFromSelector(sel__initWithServiceSpecification_domainSpecification_);
                v37 = objc_opt_class();
                v38 = NSStringFromClass(v37);
                *v71 = 138544642;
                *&v71[4] = v36;
                *&v71[12] = 2114;
                *&v71[14] = v38;
                v72 = 2048;
                specificationCopy2 = v10;
                v74 = 2114;
                v75 = @"BSServiceDomain.m";
                v76 = 1024;
                v77 = 48;
                v78 = 2114;
                v79 = v35;
                _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v71, 0x3Au);
              }

              v39 = v35;
              [v35 UTF8String];
              _bs_set_crash_log_message();
              __break(0);
              JUMPOUT(0x19A864650);
            }

            v14 = v12;
            NSClassFromString(&cfstr_Bsservicedomai_8.isa);
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSServiceDomainSpecificationClass]"];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v41 = NSStringFromSelector(sel__initWithServiceSpecification_domainSpecification_);
                v42 = objc_opt_class();
                v43 = NSStringFromClass(v42);
                *v71 = 138544642;
                *&v71[4] = v41;
                *&v71[12] = 2114;
                *&v71[14] = v43;
                v72 = 2048;
                specificationCopy2 = v10;
                v74 = 2114;
                v75 = @"BSServiceDomain.m";
                v76 = 1024;
                v77 = 49;
                v78 = 2114;
                v79 = v40;
                _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v71, 0x3Au);
              }

              v44 = v40;
              [v40 UTF8String];
              _bs_set_crash_log_message();
              __break(0);
              JUMPOUT(0x19A86475CLL);
            }

            *v71 = v10;
            *&v71[8] = BSService;
            v15 = objc_msgSendSuper2(v71, sel_init);
            v16 = v15;
            v10 = v15;
            if (v15)
            {
              objc_storeStrong(&v15->_specification, v9);
              objc_storeStrong(&v16->_domainSpecification, a2);
              v10->_lock._os_unfair_lock_opaque = 0;
              domainSpecification = v16->_domainSpecification;
              if ((!domainSpecification || !domainSpecification->_start) && ![(BSServiceSpecification *)v16->_specification isHiddenAtLaunch])
              {
                array = [MEMORY[0x1E695DF70] array];
                lock_pendedConnections = v10->_lock_pendedConnections;
                v10->_lock_pendedConnections = array;
              }
            }
          }

          identifier = [v11 identifier];
          [v60 setObject:v10 forKey:identifier];

          v4 = v61;
        }

        v6 = [v58 countByEnumeratingWithState:&v65 objects:v70 count:16];
      }

      while (v6);
    }

    v21 = [v60 copy];
    lock_globalListener = v57->_lock_globalListener;
    v57->_lock_globalListener = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    lock_instanceToListener = v57->_lock_instanceToListener;
    v57->_lock_instanceToListener = v23;

    v25 = [BSXPCServiceConnectionListener listenerForSpecification:v61];
    v26 = v57->_domainSpecification;
    v57->_domainSpecification = v25;

    v27 = v57->_domainSpecification;
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __42__BSServiceDomain__initWithSpecification___block_invoke;
    v62[3] = &unk_1E7520F08;
    v63 = v61;
    v28 = v57;
    v64 = v28;
    [(BSXPCServiceConnectionListener *)v27 configure:v62];
  }

  else
  {
LABEL_22:
    v28 = 0;
  }

  return v28;
}

void __42__BSServiceDomain__initWithSpecification___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__BSServiceDomain__initWithSpecification___block_invoke_2;
  v6[3] = &unk_1E7520EB8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  [v3 setConnectionHandler:v6];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__BSServiceDomain__initWithSpecification___block_invoke_111;
  v4[3] = &unk_1E7520EE0;
  v5 = *(a1 + 32);
  [v3 setErrorHandler:v4];
}

void __42__BSServiceDomain__initWithSpecification___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [(BSXPCServiceConnection *)v3 defaultNameWithClientLoggingProem:0 as:?];
  v5 = BSServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) identifier];
    *buf = 138543618;
    v15 = v6;
    v16 = 2114;
    v17 = v4;
    _os_log_impl(&dword_19A821000, v5, OS_LOG_TYPE_DEFAULT, "[BSServiceDomain-%{public}@] Incoming root connection is %{public}@", buf, 0x16u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__BSServiceDomain__initWithSpecification___block_invoke_101;
  v10[3] = &unk_1E7520DD0;
  v7 = v4;
  v11 = v7;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  [(BSXPCServiceConnection *)v3 configure:v10];
  v8 = BSServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) identifier];
    *buf = 138543618;
    v15 = v9;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&dword_19A821000, v8, OS_LOG_TYPE_DEFAULT, "[BSServiceDomain-%{public}@] Activating incoming root connection %{public}@", buf, 0x16u);
  }

  os_unfair_lock_lock((*(a1 + 40) + 48));
  [*(*(a1 + 40) + 32) addObject:v3];
  os_unfair_lock_unlock((*(a1 + 40) + 48));
  [(BSXPCServiceConnection *)v3 activateNowOrWhenReady:?];
}

void __42__BSServiceDomain__initWithSpecification___block_invoke_101(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [a1[4] copy];
    v5 = v3[18];
    v3[18] = v4;
  }

  v6 = BSServiceQualityFromBSServiceDomainMultiplexingType([a1[5] multiplexingType]);
  if (v6)
  {
    v7 = [BSServiceDispatchQueue queueWithName:a1[4] serviceQuality:v6];
    [(BSXPCServiceConnectionEventHandler *)v3 setQueue:v7];
  }

  if (v3)
  {
    v8 = [&__block_literal_global_13 copy];
    v9 = v3[9];
    v3[9] = v8;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __42__BSServiceDomain__initWithSpecification___block_invoke_3;
  v19[3] = &unk_1E7520E90;
  v20 = a1[5];
  v21 = a1[6];
  v22 = a1[4];
  if (v3)
  {
    v10 = [v19 copy];
    v11 = v3[7];
    v3[7] = v10;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42__BSServiceDomain__initWithSpecification___block_invoke_107;
  v15[3] = &unk_1E7520DA8;
  v16 = a1[5];
  v17 = a1[4];
  v12 = a1[6];
  v18 = v12;
  if (v3)
  {
    v13 = [v15 copy];
    v14 = v3[10];
    v3[10] = v13;

    v12 = v18;
  }
}

void __42__BSServiceDomain__initWithSpecification___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 72) == 3;
  }

  else
  {
    v6 = 0;
  }

  v7 = [BSServiceListenerConnection _connectionFromIncomingConnection:v4 requiresMessagingAfterHandshake:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 service];
    v10 = [*(*(a1 + 40) + 24) objectForKey:v9];
    if (!v10)
    {
      v16 = BSServiceLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v27 = [*(a1 + 32) identifier];
        v28 = [(BSXPCServiceConnection *)v4 loggingProem];
        v29 = *(a1 + 48);
        *buf = 138544130;
        v39 = v27;
        v40 = 2114;
        v41 = v9;
        v42 = 2114;
        v43 = v28;
        v44 = 2114;
        v45 = v29;
        _os_log_error_impl(&dword_19A821000, v16, OS_LOG_TYPE_ERROR, "[BSServiceDomain-%{public}@] Unknown service %{public}@ for incoming child connection %{public}@ on %{public}@. Invalidating the connection.", buf, 0x2Au);
      }

      [v8 invalidate];
      goto LABEL_28;
    }

    v11 = v8;
    v12 = [v11 instance];
    os_unfair_lock_lock((v10 + 48));
    v13 = *(v10 + 24);
    if (v13)
    {
      v14 = 1;
    }

    else
    {
      v14 = v12 == 0;
    }

    if (v14)
    {
      v17 = v13;
    }

    else
    {
      v17 = [*(v10 + 32) objectForKey:v12];
    }

    v18 = v17;
    if (v17)
    {
      os_unfair_lock_unlock((v10 + 48));
      v19 = [v18 object];
      v20 = v19;
      if (v19)
      {
        [v19 didReceiveConnection:v11];
      }

      else
      {
        v23 = BSServiceBootstrapLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v36 = [(BSServiceConnection *)v11 loggingProem];
          v33 = [*(v10 + 8) identifier];
          [*(v10 + 16) identifier];
          *buf = 138544130;
          v39 = v36;
          v40 = 2114;
          v41 = v12;
          v42 = 2114;
          v43 = v33;
          v31 = v44 = 2114;
          v45 = v31;
          _os_log_error_impl(&dword_19A821000, v23, OS_LOG_TYPE_ERROR, "invalidating connection %{public}@ to instance %{public}@ of service %{public}@ of domain %{public}@ because the listener has gone away", buf, 0x2Au);
        }

        [v11 invalidate];
        v20 = 0;
      }
    }

    else
    {
      v21 = *(v10 + 40);
      if (!v21)
      {
        os_unfair_lock_unlock((v10 + 48));
        v24 = BSServiceBootstrapLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v37 = [(BSServiceConnection *)v11 loggingProem];
          v34 = [*(v10 + 8) identifier];
          v30 = [*(v10 + 16) identifier];
          *buf = 138544130;
          v39 = v37;
          v40 = 2114;
          v41 = v12;
          v42 = 2114;
          v43 = v34;
          v44 = 2114;
          v45 = v30;
          _os_log_error_impl(&dword_19A821000, v24, OS_LOG_TYPE_ERROR, "invalidating connection %{public}@ to instance %{public}@ of service %{public}@ of domain %{public}@ because there is no listener to handle it", buf, 0x2Au);
        }

        [v11 invalidate];
        goto LABEL_27;
      }

      [v21 addObject:v11];
      os_unfair_lock_unlock((v10 + 48));
      v20 = BSServiceBootstrapLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v35 = [(BSServiceConnection *)v11 loggingProem];
        v32 = [*(v10 + 8) identifier];
        v22 = [*(v10 + 16) identifier];
        *buf = 138544130;
        v39 = v35;
        v40 = 2114;
        v41 = v12;
        v42 = 2114;
        v43 = v32;
        v44 = 2114;
        v45 = v22;
        _os_log_debug_impl(&dword_19A821000, v20, OS_LOG_TYPE_DEBUG, "pending connection %{public}@ to instance %{public}@ of service %{public}@ of domain %{public}@ because there is no listener to handle it", buf, 0x2Au);
      }
    }

LABEL_27:
LABEL_28:

    goto LABEL_29;
  }

  v15 = BSServiceLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v25 = [*(a1 + 32) identifier];
    v26 = [(BSXPCServiceConnection *)v4 loggingProem];
    *buf = 138543618;
    v39 = v25;
    v40 = 2114;
    v41 = v26;
    _os_log_error_impl(&dword_19A821000, v15, OS_LOG_TYPE_ERROR, "[BSServiceDomain-%{public}@] Failed to wrap incoming child connection %{public}@", buf, 0x16u);
  }

  [(BSXPCServiceConnection *)v4 cancel];
LABEL_29:
}

void __42__BSServiceDomain__initWithSpecification___block_invoke_107(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = BSServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) identifier];
    v9 = *(a1 + 40);
    v10 = [v6 succinctDescription];
    v11 = 138543874;
    v12 = v8;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&dword_19A821000, v7, OS_LOG_TYPE_DEFAULT, "[BSServiceDomain-%{public}@] Error on incoming root connection %{public}@: %{public}@", &v11, 0x20u);
  }

  os_unfair_lock_lock((*(a1 + 48) + 48));
  [*(*(a1 + 48) + 32) removeObjectIdenticalTo:v5];
  os_unfair_lock_unlock((*(a1 + 48) + 48));
  [(BSXPCServiceConnection *)v5 cancel];
}

void __42__BSServiceDomain__initWithSpecification___block_invoke_111(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = BSServiceXPCErrorsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [*(a1 + 32) identifier];
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v6 = _MergedGlobals_13;
    v13 = _MergedGlobals_13;
    if (!_MergedGlobals_13)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getRBSProcessIdentityClass_block_invoke;
      v9[3] = &unk_1E75200F8;
      v9[4] = &v10;
      __getRBSProcessIdentityClass_block_invoke(v9);
      v6 = v11[3];
    }

    v7 = v6;
    _Block_object_dispose(&v10, 8);
    v8 = [v6 identityOfCurrentProcess];
    *buf = 138543874;
    v15 = v5;
    v16 = 2114;
    v17 = v8;
    v18 = 2114;
    v19 = v3;
    _os_log_error_impl(&dword_19A821000, v4, OS_LOG_TYPE_ERROR, "[BSServiceDomain-%{public}@] unexpected error on listener connection for %{public}@ (is the system going down or the domain misconfigured?): %{public}@", buf, 0x20u);
  }
}

- (id)_debugDescriptionWithMultilinePrefix:(uint64_t)prefix
{
  v3 = a2;
  if (prefix)
  {
    v4 = [MEMORY[0x1E698E680] builderWithObject:prefix];
    os_unfair_lock_lock((prefix + 48));
    allValues = [*(prefix + 24) allValues];
    v6 = [allValues mutableCopy];

    [v6 sortUsingComparator:&__block_literal_global_145];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __56__BSServiceDomain__debugDescriptionWithMultilinePrefix___block_invoke_2;
    v15[3] = &unk_1E75209E8;
    v7 = v4;
    v16 = v7;
    prefixCopy = prefix;
    v8 = [v7 modifyProem:v15];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__BSServiceDomain__debugDescriptionWithMultilinePrefix___block_invoke_3;
    v12[3] = &unk_1E75205A8;
    v12[4] = prefix;
    v9 = v7;
    v13 = v9;
    v10 = v6;
    v14 = v10;
    [v9 appendBodySectionWithName:0 multilinePrefix:v3 block:v12];
    os_unfair_lock_unlock((prefix + 48));
    prefix = [v9 build];
  }

  return prefix;
}

- (id)serviceWithIdentifier:(id *)identifier
{
  v3 = a2;
  if (identifier)
  {
    identifier = [identifier[3] objectForKey:v3];
  }

  return identifier;
}

- (void)_enforceListenerRegistrationForReason:(uint64_t)reason
{
  v3 = a2;
  v4 = v3;
  if (reason)
  {
    v5 = *(reason + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__BSServiceDomain__enforceListenerRegistrationForReason___block_invoke;
    v6[3] = &unk_1E7520F58;
    v7 = v3;
    [v5 enumerateKeysAndObjectsUsingBlock:v6];
  }
}

void __28__BSServiceDomain__activate__block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v19 = WeakRetained;
  if (WeakRetained)
  {
    v2 = *&WeakRetained[2]._os_unfair_lock_opaque;
    if (!v2 || *(v2 + 72) != 3)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"only manual session domains can deactivate"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(sel__deactivate);
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138544642;
        *&buf[4] = v10;
        *&buf[12] = 2114;
        *&buf[14] = v12;
        *&buf[22] = 2048;
        v21 = v19;
        LOWORD(v22) = 2114;
        *(&v22 + 2) = @"BSServiceDomain.m";
        WORD5(v22) = 1024;
        HIDWORD(v22) = 498;
        v23 = 2114;
        v24 = v9;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v13 = v9;
      [v9 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A866090);
    }

    os_unfair_lock_lock(WeakRetained + 12);
    v3 = v19;
    v4 = *&v19[10]._os_unfair_lock_opaque;
    if (!v4)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"domain activation underflow"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v15 = NSStringFromSelector(sel__deactivate);
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138544642;
        *&buf[4] = v15;
        *&buf[12] = 2114;
        *&buf[14] = v17;
        *&buf[22] = 2048;
        v21 = v19;
        LOWORD(v22) = 2114;
        *(&v22 + 2) = @"BSServiceDomain.m";
        WORD5(v22) = 1024;
        HIDWORD(v22) = 500;
        v23 = 2114;
        v24 = v14;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v18 = v14;
      [v14 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A86618CLL);
    }

    if ((v19[13]._os_unfair_lock_opaque & 0x100) == 0)
    {
      v5 = v4 - 1;
      *&v19[10]._os_unfair_lock_opaque = v5;
      if (!v5)
      {
        v6 = BSServiceBootstrapLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = [*&v19[2]._os_unfair_lock_opaque identifier];
          *buf = 138543362;
          *&buf[4] = v7;
          _os_log_impl(&dword_19A821000, v6, OS_LOG_TYPE_DEFAULT, "destroying session for domain %{public}@", buf, 0xCu);
        }

        v3 = v19;
        if ((v19[13]._os_unfair_lock_opaque & 1) == 0)
        {
          LOBYTE(v19[13]._os_unfair_lock_opaque) = 1;
          v8 = *&v19[4]._os_unfair_lock_opaque;
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __30__BSServiceDomain__deactivate__block_invoke;
          v21 = &unk_1E7520FC0;
          *&v22 = v19;
          *(&v22 + 1) = sel__deactivate;
          [(BSXPCServiceConnectionListener *)v8 suspendWithCompletion:buf];
          v3 = v19;
        }
      }
    }

    os_unfair_lock_unlock(v3 + 12);
  }
}

void __57__BSServiceDomain__enforceListenerRegistrationForReason___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v21 = *(a1 + 32);
  if (a3)
  {
    os_unfair_lock_lock((a3 + 48));
    v22 = a3;
    if (([*(a3 + 8) isHiddenAtLaunch] & 1) == 0 && !*(a3 + 24) && !objc_msgSend(*(a3 + 32), "count"))
    {
      v4 = BSServiceBootstrapLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        v19 = [*(v22 + 16) identifier];
        v20 = *(v22 + 8);
        *v35 = 138543874;
        v36 = v19;
        v37 = 2114;
        v38 = v20;
        v39 = 2114;
        v40 = v21;
        _os_log_fault_impl(&dword_19A821000, v4, OS_LOG_TYPE_FAULT, "domain=%{public}@ service=%{public}@ : no listener at %{public}@", v35, 0x20u);
      }

      a3 = v22;
    }

    v5 = *(a3 + 40);
    v6 = a3;
    v7 = v5;
    v8 = *(v6 + 40);
    *(v6 + 40) = 0;

    os_unfair_lock_unlock((v22 + 48));
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v35 count:16];
    if (v10)
    {
      v11 = *v24;
      do
      {
        v12 = 0;
        do
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v23 + 1) + 8 * v12);
          v14 = BSServiceBootstrapLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = [(BSServiceConnection *)v13 loggingProem];
            v16 = [v13 instance];
            v17 = [*(v22 + 8) identifier];
            v18 = [*(v22 + 16) identifier];
            *buf = 138544130;
            v28 = v15;
            v29 = 2114;
            v30 = v16;
            v31 = 2114;
            v32 = v17;
            v33 = 2114;
            v34 = v18;
            _os_log_error_impl(&dword_19A821000, v14, OS_LOG_TYPE_ERROR, "invalidating connection %{public}@ to instance %{public}@ of service %{public}@ of domain %{public}@ because pending has been disabled", buf, 0x2Au);
          }

          [v13 invalidate];
          ++v12;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v23 objects:v35 count:16];
      }

      while (v10);
    }
  }
}

- (void)_invalidate
{
  v6 = *MEMORY[0x1E69E9840];
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    if ((*(self + 53) & 1) == 0)
    {
      *(self + 53) = 1;
      v2 = BSServiceBootstrapLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [*(self + 8) identifier];
        v4 = 138543362;
        v5 = identifier;
        _os_log_impl(&dword_19A821000, v2, OS_LOG_TYPE_DEFAULT, "invalidating domain %{public}@", &v4, 0xCu);
      }

      [*(self + 24) enumerateKeysAndObjectsUsingBlock:&__block_literal_global_142];
      [*(self + 16) invalidate];
    }

    os_unfair_lock_unlock((self + 48));
  }
}

void __30__BSServiceDomain__invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    os_unfair_lock_lock((a3 + 48));
    if (*(a3 + 52))
    {
      v4 = 0;
    }

    else
    {
      *(a3 + 52) = 1;
      v4 = *(a3 + 40);
      v5 = *(a3 + 24);
      *(a3 + 24) = 0;

      v6 = *(a3 + 32);
      *(a3 + 32) = 0;

      v7 = *(a3 + 40);
      *(a3 + 40) = 0;
    }

    os_unfair_lock_unlock((a3 + 48));
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v9)
    {
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v12 + 1) + 8 * v11++) cancel];
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

uint64_t __56__BSServiceDomain__debugDescriptionWithMultilinePrefix___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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

  v9 = [v8 identifier];
  v10 = [v7 compare:v9];

  return v10;
}

void __56__BSServiceDomain__debugDescriptionWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 8) identifier];
  [v2 appendString:v3 withName:0];

  v4 = *(a1 + 40);
  v5 = *(v4 + 8);
  if (v5 && *(v5 + 72))
  {
    if (*(v4 + 53))
    {
      v6 = @"invalid";
    }

    else
    {
      v7 = *(v4 + 52);
      v8 = @"active";
      v9 = *(v4 + 40) == 0;
      v10 = @"reactivating";
      if (v9)
      {
        v8 = @"inactive";
        v10 = @"deactivating";
      }

      if (v7 == 1)
      {
        v6 = v10;
      }

      else
      {
        v6 = v8;
      }
    }

    v11 = [*(a1 + 32) appendObject:v6 withName:@"state"];
  }
}

void __56__BSServiceDomain__debugDescriptionWithMultilinePrefix___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = [v2 activeMultilinePrefix];
  [(BSServiceDomainSpecification *)v3 _appendManagerDumpBodyToBuilder:v2 withMultilinePrefix:v4];

  v5 = *(a1 + 40);
  v6 = [(BSXPCServiceConnectionListener *)*(*(a1 + 32) + 16) endpoint];
  v7 = [v5 appendObject:v6 withName:@"endpoint"];

  v8 = *(a1 + 40);
  v9 = [v8 activeMultilinePrefix];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __56__BSServiceDomain__debugDescriptionWithMultilinePrefix___block_invoke_4;
  v17 = &unk_1E75209E8;
  v18 = *(a1 + 48);
  v19 = *(a1 + 40);
  [v8 appendBodySectionWithName:@"services" multilinePrefix:v9 block:&v14];

  v10 = [*(a1 + 40) appendObject:*(*(a1 + 32) + 16) withName:{@"rootListener", v14, v15, v16, v17}];
  v11 = *(a1 + 40);
  v12 = *(*(a1 + 32) + 32);
  v13 = [v11 activeMultilinePrefix];
  [v11 appendArraySection:v12 withName:@"incomingRootConnections" multilinePrefix:v13 skipIfEmpty:0];
}

void __56__BSServiceDomain__debugDescriptionWithMultilinePrefix___block_invoke_4(uint64_t a1)
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
        v9 = [(BSService *)v6 _debugDescriptionWithMultilinePrefix:v8];
        v10 = [v7 appendObject:v9 withName:0];
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }
}

void __30__BSServiceDomain__deactivate__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 48));
  v2 = *(a1 + 32);
  if ((*(v2 + 52) & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sanity - this shouldn't be possible"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(*(a1 + 40));
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = *(a1 + 32);
      v11 = 138544642;
      v12 = v6;
      v13 = 2114;
      v14 = v8;
      v15 = 2048;
      v16 = v9;
      v17 = 2114;
      v18 = @"BSServiceDomain.m";
      v19 = 1024;
      v20 = 507;
      v21 = 2114;
      v22 = v5;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v11, 0x3Au);
    }

    v10 = v5;
    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A866E88);
  }

  *(v2 + 52) = 0;
  v3 = *(a1 + 32);
  if (*(v3 + 40))
  {
    [(BSServiceDomain *)v3 _enforceListenerRegistrationForReason:?];
    [(BSXPCServiceConnectionListener *)*(*(a1 + 32) + 16) resume];
    v3 = *(a1 + 32);
  }

  v4 = (v3 + 48);

  os_unfair_lock_unlock(v4);
}

@end