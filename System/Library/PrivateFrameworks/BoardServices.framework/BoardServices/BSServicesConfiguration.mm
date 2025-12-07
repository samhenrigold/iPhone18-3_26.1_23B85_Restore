@interface BSServicesConfiguration
+ (id)_bootstrapConfigOfService:(void *)service withEnv:(void *)env info:;
+ (id)_configOfService:(void *)service fromPlist:(char)plist isViewService:(void *)viewService postfixBlock:;
+ (id)_configOfService:(void *)service withViewServiceDomainsDictionary:;
+ (id)_parseFeatureFlagsForDomain:(void *)domain parameterName:(void *)name featureFlags:;
+ (id)activateManualDomain:(id)domain;
+ (id)bootstrapConfiguration;
+ (id)extendAutomaticBootstrapCompletion;
+ (id)registerDynamicDomainsFromPlist:(id)plist;
+ (id)viewServiceConfiguration;
+ (void)activateViewServiceConfiguration;
+ (void)activateXPCService;
+ (void)registerViewServiceConfiguration;
- (BSServicesConfiguration)init;
- (NSSet)disabledDomains;
- (id)_initWithDomainsByIdentifier:(void *)identifier disabledDomainsByIdentifier:;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)domainForIdentifier:(id)identifier;
- (id)domainForMachName:(id)name;
- (id)domainsContainingServiceIdentifier:(id)identifier;
- (id)succinctDescription;
@end

@implementation BSServicesConfiguration

+ (id)bootstrapConfiguration
{
  if (qword_1ED4A7C28 != -1)
  {
    dispatch_once(&qword_1ED4A7C28, &__block_literal_global_164);
  }

  v3 = _MergedGlobals_8;

  return v3;
}

void __49__BSServicesConfiguration_bootstrapConfiguration__block_invoke()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E696AE30] processInfo];
  v2 = [v1 environment];
  v3 = [v2 objectForKey:@"BSServiceDomains"];

  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = [v4 infoDictionary];
  v6 = [v5 objectForKey:@"BSServiceDomains"];

  v7 = objc_opt_self();
  v8 = [(BSRBSService *)v7 _sharedInstanceCreatingIfNecessary:?];
  v9 = [BSServicesConfiguration _bootstrapConfigOfService:v8 withEnv:v3 info:v6];
  v10 = _MergedGlobals_8;
  _MergedGlobals_8 = v9;

  if (v3)
  {
    *__error() = 0;
    if (unsetenv("BSServiceDomains"))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v11 = *__error();
        v12[0] = 67109120;
        v12[1] = v11;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failed to unsetenv(BSServiceDomains) : errno=%{darwin.errno}d", v12, 8u);
      }
    }
  }

  objc_autoreleasePoolPop(v0);
}

+ (id)viewServiceConfiguration
{
  v2 = +[BSServiceManager sharedInstanceIfCreated];
  v3 = [(BSServiceManager *)v2 viewServiceConfigurationRegisteringIfNecessary:?];

  return v3;
}

+ (void)registerViewServiceConfiguration
{
  v3 = +[BSServiceManager sharedInstance];
  v2 = [(BSServiceManager *)v3 viewServiceConfigurationRegisteringIfNecessary:?];
}

+ (void)activateViewServiceConfiguration
{
  v2 = +[BSServiceManager sharedInstance];
  [(BSServiceManager *)v2 activateViewServiceConfiguration];
}

- (BSServicesConfiguration)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on BSServicesConfiguration"];
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
    v17 = @"BSServicesConfiguration.m";
    v18 = 1024;
    v19 = 35;
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

- (id)_initWithDomainsByIdentifier:(void *)identifier disabledDomainsByIdentifier:
{
  v5 = a2;
  identifierCopy = identifier;
  if (self)
  {
    v17.receiver = self;
    v17.super_class = BSServicesConfiguration;
    self = objc_msgSendSuper2(&v17, sel_init);
    if (self)
    {
      v7 = [v5 copy];
      v8 = self[1];
      self[1] = v7;

      v9 = [identifierCopy copy];
      v10 = self[2];
      self[2] = v9;

      v11 = MEMORY[0x1E695DFB8];
      allValues = [self[1] allValues];
      v13 = [allValues sortedArrayUsingComparator:&__block_literal_global_6];
      v14 = [v11 orderedSetWithArray:v13];
      v15 = self[3];
      self[3] = v14;
    }
  }

  return self;
}

uint64_t __84__BSServicesConfiguration__initWithDomainsByIdentifier_disabledDomainsByIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = [v4 identifier];
  v7 = [v5 compare:v6];

  return v7;
}

+ (id)_configOfService:(void *)service fromPlist:(char)plist isViewService:(void *)viewService postfixBlock:
{
  v52 = *MEMORY[0x1E69E9840];
  v28 = a2;
  serviceCopy = service;
  viewServiceCopy = viewService;
  v9 = objc_opt_self();
  v10 = objc_autoreleasePoolPush();
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __81__BSServicesConfiguration__configOfService_fromPlist_isViewService_postfixBlock___block_invoke;
  v38[3] = &unk_1E7520A58;
  v27 = dictionary;
  v39 = v27;
  v12 = MEMORY[0x19A908200](v38);
  if (serviceCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      serviceCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"domainsInfo was of an unexpected type : %@", serviceCopy];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v23 = NSStringFromSelector(sel__configOfService_fromPlist_isViewService_postfixBlock_);
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        *buf = 138544642;
        v41 = v23;
        v42 = 2114;
        v43 = v25;
        v44 = 2048;
        v45 = v9;
        v46 = 2114;
        v47 = @"BSServicesConfiguration.m";
        v48 = 1024;
        v49 = 98;
        v50 = 2114;
        v51 = serviceCopy;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v26 = serviceCopy;
      [serviceCopy UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84C8D8);
    }
  }

  v13 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(serviceCopy, "count")}];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __81__BSServicesConfiguration__configOfService_fromPlist_isViewService_postfixBlock___block_invoke_14;
  v30[3] = &unk_1E7520AD0;
  v35 = sel__configOfService_fromPlist_isViewService_postfixBlock_;
  v36 = v9;
  plistCopy = plist;
  v15 = v12;
  v34 = v15;
  v16 = v28;
  v31 = v16;
  v17 = dictionary2;
  v32 = v17;
  v18 = v13;
  v33 = v18;
  [serviceCopy enumerateKeysAndObjectsUsingBlock:v30];
  v19 = [[BSServicesConfiguration alloc] _initWithDomainsByIdentifier:v18 disabledDomainsByIdentifier:v17];
  if (viewServiceCopy)
  {
    v20 = viewServiceCopy[2]();

    v19 = v20;
  }

  objc_autoreleasePoolPop(v10);

  return v19;
}

id __81__BSServicesConfiguration__configOfService_fromPlist_isViewService_postfixBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 32) objectForKey:v3];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [v4 copyWithZone:0];

      [*(a1 + 32) setObject:v7 forKey:v7];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __81__BSServicesConfiguration__configOfService_fromPlist_isViewService_postfixBlock___block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v201 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v167 = a3;
  v165 = v5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v75 = [MEMORY[0x1E696AEC0] stringWithFormat:@"identifier of the domain must be NSString : %@", v5];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v76 = NSStringFromSelector(*(a1 + 64));
      v77 = objc_opt_class();
      v78 = NSStringFromClass(v77);
      v79 = *(a1 + 72);
      *buf = 138544642;
      v190 = v76;
      v191 = 2114;
      v192 = v78;
      v193 = 2048;
      v194 = v79;
      v195 = 2114;
      v196 = @"BSServicesConfiguration.m";
      v197 = 1024;
      v198 = 103;
      v199 = 2114;
      v200 = v75;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v80 = v75;
    [v75 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A84DA18);
  }

  v6 = [v5 hasPrefix:@"XPCService"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v81 = [MEMORY[0x1E696AEC0] stringWithFormat:@"configuration of domain %@ must be NSDictionary : %@", v5, v167];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v82 = NSStringFromSelector(*(a1 + 64));
      v83 = objc_opt_class();
      v84 = NSStringFromClass(v83);
      v85 = *(a1 + 72);
      *buf = 138544642;
      v190 = v82;
      v191 = 2114;
      v192 = v84;
      v193 = 2048;
      v194 = v85;
      v195 = 2114;
      v196 = @"BSServicesConfiguration.m";
      v197 = 1024;
      v198 = 105;
      v199 = 2114;
      v200 = v81;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v86 = v81;
    [v81 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A84DB20);
  }

  if (*(a1 + 80) & v6)
  {
    v99 = [MEMORY[0x1E696AEC0] stringWithFormat:@"view-service config cannot contain XPCService domains : %@", v5];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v100 = NSStringFromSelector(*(a1 + 64));
      v101 = objc_opt_class();
      v102 = NSStringFromClass(v101);
      v103 = *(a1 + 72);
      *buf = 138544642;
      v190 = v100;
      v191 = 2114;
      v192 = v102;
      v193 = 2048;
      v194 = v103;
      v195 = 2114;
      v196 = @"BSServicesConfiguration.m";
      v197 = 1024;
      v198 = 108;
      v199 = 2114;
      v200 = v99;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v104 = v99;
    [v99 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A84DE34);
  }

  v7 = [v167 objectForKey:@"MachName"];
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v105 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MachName of domain %@ is not allowed : %@", v165, v7];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v106 = NSStringFromSelector(*(a1 + 64));
        v107 = objc_opt_class();
        v108 = NSStringFromClass(v107);
        v109 = *(a1 + 72);
        *buf = 138544642;
        v190 = v106;
        v191 = 2114;
        v192 = v108;
        v193 = 2048;
        v194 = v109;
        v195 = 2114;
        v196 = @"BSServicesConfiguration.m";
        v197 = 1024;
        v198 = 115;
        v199 = 2114;
        v200 = v105;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v110 = v105;
      [v105 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84DF38);
    }

    if ([v165 isEqualToString:@"XPCService"])
    {
      goto LABEL_17;
    }

    if (([v165 hasPrefix:@"XPCService."] & 1) == 0)
    {
      v129 = [MEMORY[0x1E696AEC0] stringWithFormat:@"XPCService sub domain "];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v130 = NSStringFromSelector(*(a1 + 64));
        v131 = objc_opt_class();
        v132 = NSStringFromClass(v131);
        v133 = *(a1 + 72);
        *buf = 138544642;
        v190 = v130;
        v191 = 2114;
        v192 = v132;
        v193 = 2048;
        v194 = v133;
        v195 = 2114;
        v196 = @"BSServicesConfiguration.m";
        v197 = 1024;
        v198 = 117;
        v199 = 2114;
        v200 = v129;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v134 = v129;
      [v129 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84E344);
    }

    v9 = [@"XPCService." length];
    v10 = [v165 length];
    if (v10 <= [@"XPCService." length])
    {
      v11 = 0;
    }

    else
    {
      v11 = [v165 substringFromIndex:v9];
    }

    if (![v11 length])
    {
      v135 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MachName of domain %@ is invalid : %@", v165, v11];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v136 = NSStringFromSelector(*(a1 + 64));
        v137 = objc_opt_class();
        v138 = NSStringFromClass(v137);
        v139 = *(a1 + 72);
        *buf = 138544642;
        v190 = v136;
        v191 = 2114;
        v192 = v138;
        v193 = 2048;
        v194 = v139;
        v195 = 2114;
        v196 = @"BSServicesConfiguration.m";
        v197 = 1024;
        v198 = 122;
        v199 = 2114;
        v200 = v135;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v140 = v135;
      [v135 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84E448);
    }

    if (!v11)
    {
LABEL_17:
      v18 = *(a1 + 56);
      v15 = [MEMORY[0x1E696AAE8] mainBundle];
      v16 = [v15 bundleIdentifier];
      v163 = (*(v18 + 16))(v18, v16);
      v12 = 0;
    }

    else
    {
      v12 = (*(*(a1 + 56) + 16))();
      v13 = *(a1 + 56);
      v14 = MEMORY[0x1E696AEC0];
      v15 = [MEMORY[0x1E696AAE8] mainBundle];
      v16 = [v15 bundleIdentifier];
      v17 = [v14 stringWithFormat:@"%@.%@", v16, v11];
      v163 = (*(v13 + 16))(v13, v17);
    }

    v8 = v15;
    v160 = v12;
  }

  else
  {
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v117 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MachName of domain %@ must be NSString : %@", v165, v8];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v118 = NSStringFromSelector(*(a1 + 64));
          v119 = objc_opt_class();
          v120 = NSStringFromClass(v119);
          v121 = *(a1 + 72);
          *buf = 138544642;
          v190 = v118;
          v191 = 2114;
          v192 = v120;
          v193 = 2048;
          v194 = v121;
          v195 = 2114;
          v196 = @"BSServicesConfiguration.m";
          v197 = 1024;
          v198 = 131;
          v199 = 2114;
          v200 = v117;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v122 = v117;
        [v117 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A84E144);
      }
    }

    v163 = (*(*(a1 + 56) + 16))();
    v160 = 0;
  }

  v162 = [v167 objectForKey:@"Multiplexing"];
  if (v162)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v93 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Multiplexing of domain %@ must be NSString : %@", v165, v162];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v94 = NSStringFromSelector(*(a1 + 64));
        v95 = objc_opt_class();
        v96 = NSStringFromClass(v95);
        v97 = *(a1 + 72);
        *buf = 138544642;
        v190 = v94;
        v191 = 2114;
        v192 = v96;
        v193 = 2048;
        v194 = v97;
        v195 = 2114;
        v196 = @"BSServicesConfiguration.m";
        v197 = 1024;
        v198 = 139;
        v199 = 2114;
        v200 = v93;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v98 = v93;
      [v93 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84DD30);
    }

    if ([v162 isEqualToString:@"Default"])
    {
      v19 = 0;
      goto LABEL_30;
    }

    if ([v162 isEqualToString:@"UserInitiated"])
    {
      v19 = 1;
      goto LABEL_30;
    }

    if (([v162 isEqualToString:@"UserInteractive"] & 1) == 0)
    {
      v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unrecognized Multiplexing value of domain %@ : %@", v165, v162];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v64 = NSStringFromSelector(*(a1 + 64));
        v65 = objc_opt_class();
        v66 = NSStringFromClass(v65);
        v67 = *(a1 + 72);
        *buf = 138544642;
        v190 = v64;
        v191 = 2114;
        v192 = v66;
        v193 = 2048;
        v194 = v67;
        v195 = 2114;
        v196 = @"BSServicesConfiguration.m";
        v197 = 1024;
        v198 = 147;
        v199 = 2114;
        v200 = v63;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v68 = v63;
      [v63 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84D80CLL);
    }
  }

  else if (_os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v190 = v165;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "configuration of BSServiceDomain %{public}@ did not specify its Multiplexing type", buf, 0xCu);
  }

  v19 = 2;
LABEL_30:
  v161 = [v167 objectForKey:@"Start"];
  v155 = v19;
  if (*(a1 + 80) == 1)
  {
    if (v161)
    {
      v111 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Start of domain %@ is not allowed : %@", v165, v161];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v112 = NSStringFromSelector(*(a1 + 64));
        v113 = objc_opt_class();
        v114 = NSStringFromClass(v113);
        v115 = *(a1 + 72);
        *buf = 138544642;
        v190 = v112;
        v191 = 2114;
        v192 = v114;
        v193 = 2048;
        v194 = v115;
        v195 = 2114;
        v196 = @"BSServicesConfiguration.m";
        v197 = 1024;
        v198 = 157;
        v199 = 2114;
        v200 = v111;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v116 = v111;
      [v111 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84E040);
    }

    v20 = 5;
  }

  else if (v6)
  {
    if (v161)
    {
      v141 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Start of domain %@ is not allowed : %@", v165, v161];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v142 = NSStringFromSelector(*(a1 + 64));
        v143 = objc_opt_class();
        v144 = NSStringFromClass(v143);
        v145 = *(a1 + 72);
        *buf = 138544642;
        v190 = v142;
        v191 = 2114;
        v192 = v144;
        v193 = 2048;
        v194 = v145;
        v195 = 2114;
        v196 = @"BSServicesConfiguration.m";
        v197 = 1024;
        v198 = 160;
        v199 = 2114;
        v200 = v141;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v146 = v141;
      [v141 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84E550);
    }

    v20 = 4;
  }

  else
  {
    if (!v161)
    {
      v159 = 0;
      goto LABEL_46;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v147 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Start of domain %@ must be NSString : %@", v165, v161];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v148 = NSStringFromSelector(*(a1 + 64));
        v149 = objc_opt_class();
        v150 = NSStringFromClass(v149);
        v151 = *(a1 + 72);
        *buf = 138544642;
        v190 = v148;
        v191 = 2114;
        v192 = v150;
        v193 = 2048;
        v194 = v151;
        v195 = 2114;
        v196 = @"BSServicesConfiguration.m";
        v197 = 1024;
        v198 = 163;
        v199 = 2114;
        v200 = v147;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v152 = v147;
      [v147 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84E658);
    }

    if ([v161 isEqualToString:@"ManualBootstrap"])
    {
      v20 = 1;
    }

    else if ([v161 isEqualToString:@"UnboundedManualBootstrap"])
    {
      v20 = 2;
    }

    else
    {
      if (([v161 isEqualToString:@"ManualSession"] & 1) == 0)
      {
        v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unrecognized Start value of domain %@ : %@", v165, v161];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v70 = NSStringFromSelector(*(a1 + 64));
          v71 = objc_opt_class();
          v72 = NSStringFromClass(v71);
          v73 = *(a1 + 72);
          *buf = 138544642;
          v190 = v70;
          v191 = 2114;
          v192 = v72;
          v193 = 2048;
          v194 = v73;
          v195 = 2114;
          v196 = @"BSServicesConfiguration.m";
          v197 = 1024;
          v198 = 171;
          v199 = 2114;
          v200 = v69;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v74 = v69;
        [v69 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A84D914);
      }

      v20 = 3;
    }
  }

  v159 = v20;
LABEL_46:
  v21 = [MEMORY[0x1E695DFA8] set];
  v164 = [v167 objectForKey:@"DerivedServiceRestrictions"];
  if (v6)
  {
    if (v164)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DerivedServiceRestrictions of domain %@ is not allowed : %@", v165, v164];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v23 = NSStringFromSelector(*(a1 + 64));
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = *(a1 + 72);
        *buf = 138544642;
        v190 = v23;
        v191 = 2114;
        v192 = v25;
        v193 = 2048;
        v194 = v26;
        v195 = 2114;
        v196 = @"BSServicesConfiguration.m";
        v197 = 1024;
        v198 = 179;
        v199 = 2114;
        v200 = v22;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v27 = v22;
      [v22 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84D00CLL);
    }
  }

  else
  {
    if (v164)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v123 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DerivedServiceRestrictions of domain %@ was of an unexpected type : %@", v165, v164];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v124 = NSStringFromSelector(*(a1 + 64));
          v125 = objc_opt_class();
          v126 = NSStringFromClass(v125);
          v127 = *(a1 + 72);
          *buf = 138544642;
          v190 = v124;
          v191 = 2114;
          v192 = v126;
          v193 = 2048;
          v194 = v127;
          v195 = 2114;
          v196 = @"BSServicesConfiguration.m";
          v197 = 1024;
          v198 = 181;
          v199 = 2114;
          v200 = v123;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v128 = v123;
        [v123 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A84E248);
      }
    }

    v184 = 0u;
    v185 = 0u;
    v182 = 0u;
    v183 = 0u;
    v28 = v164;
    v29 = [v28 countByEnumeratingWithState:&v182 objects:v188 count:16];
    if (v29)
    {
      v30 = *v183;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v183 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v32 = *(*(&v182 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"entry of DerivedServiceRestrictions of domain %@ must be NSString : %@", v165, v32];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v58 = NSStringFromSelector(*(a1 + 64));
              v59 = objc_opt_class();
              v60 = NSStringFromClass(v59);
              v61 = *(a1 + 72);
              *buf = 138544642;
              v190 = v58;
              v191 = 2114;
              v192 = v60;
              v193 = 2048;
              v194 = v61;
              v195 = 2114;
              v196 = @"BSServicesConfiguration.m";
              v197 = 1024;
              v198 = 183;
              v199 = 2114;
              v200 = v57;
              _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
            }

            v62 = v57;
            [v57 UTF8String];
            _bs_set_crash_log_message();
            __break(0);
            JUMPOUT(0x19A84D704);
          }

          v33 = (*(*(a1 + 56) + 16))();
          [v21 addObject:v33];
        }

        v29 = [v28 countByEnumeratingWithState:&v182 objects:v188 count:16];
      }

      while (v29);
    }
  }

  v166 = [v167 objectForKey:@"Services"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v87 = [MEMORY[0x1E696AEC0] stringWithFormat:@"expected a Services entry in the configuration of domain %@ : %@", v165, v167];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v88 = NSStringFromSelector(*(a1 + 64));
      v89 = objc_opt_class();
      v90 = NSStringFromClass(v89);
      v91 = *(a1 + 72);
      *buf = 138544642;
      v190 = v88;
      v191 = 2114;
      v192 = v90;
      v193 = 2048;
      v194 = v91;
      v195 = 2114;
      v196 = @"BSServicesConfiguration.m";
      v197 = 1024;
      v198 = 190;
      v199 = 2114;
      v200 = v87;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v92 = v87;
    [v87 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A84DC28);
  }

  v34 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v166, "count")}];
  v176[0] = MEMORY[0x1E69E9820];
  v176[1] = 3221225472;
  v176[2] = __81__BSServicesConfiguration__configOfService_fromPlist_isViewService_postfixBlock___block_invoke_110;
  v176[3] = &unk_1E7520AA8;
  v35 = v165;
  v36 = *(a1 + 72);
  v177 = v35;
  v180 = v36;
  v181 = v159;
  v157 = *(a1 + 56);
  v37 = v157;
  v179 = v157;
  v158 = v34;
  v178 = v158;
  [v166 enumerateKeysAndObjectsUsingBlock:v176];
  v38 = [v167 objectForKey:@"EnableIfFeatureFlag"];
  v153 = v38;
  if (v38)
  {
    [(BSServicesConfiguration *)*(a1 + 72) _parseFeatureFlagsForDomain:v35 parameterName:@"EnableIfFeatureFlag" featureFlags:v38];
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v39 = v173 = 0u;
    v40 = [v39 countByEnumeratingWithState:&v172 objects:v187 count:16];
    if (v40)
    {
      v41 = *v173;
      while (2)
      {
        for (j = 0; j != v40; ++j)
        {
          if (*v173 != v41)
          {
            objc_enumerationMutation(v39);
          }

          if (([*(*(&v172 + 1) + 8 * j) isEnabled] & 1) == 0)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v190 = v35;
              _os_log_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Feature flag enablement conditional for BSServiceDomain %{public}@ not satisfied; ignoring domain.", buf, 0xCu);
            }

            v156 = 1;
            goto LABEL_76;
          }
        }

        v40 = [v39 countByEnumeratingWithState:&v172 objects:v187 count:16];
        if (v40)
        {
          continue;
        }

        break;
      }
    }

    v156 = 0;
LABEL_76:
  }

  else
  {
    v156 = 0;
    v39 = 0;
  }

  v43 = [v167 objectForKey:@"DisableIfFeatureFlag"];
  v154 = v43;
  if (!v43)
  {
    v44 = 0;
    goto LABEL_93;
  }

  [(BSServicesConfiguration *)*(a1 + 72) _parseFeatureFlagsForDomain:v35 parameterName:@"DisableIfFeatureFlag" featureFlags:v43];
  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v44 = v169 = 0u;
  v45 = [v44 countByEnumeratingWithState:&v168 objects:v186 count:16];
  if (!v45)
  {

LABEL_90:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v190 = v35;
      _os_log_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Feature flag disablement conditional met for BSServiceDomain %{public}@; ignoring domain.", buf, 0xCu);
    }

    v156 = 1;
    goto LABEL_93;
  }

  v46 = *v169;
  v47 = 1;
  do
  {
    for (k = 0; k != v45; ++k)
    {
      if (*v169 != v46)
      {
        objc_enumerationMutation(v44);
      }

      v47 &= [*(*(&v168 + 1) + 8 * k) isEnabled];
    }

    v45 = [v44 countByEnumeratingWithState:&v168 objects:v186 count:16];
  }

  while (v45);

  if (v47)
  {
    goto LABEL_90;
  }

LABEL_93:
  v49 = [BSServiceDomainSpecification alloc];
  v50 = (*(*(a1 + 56) + 16))();
  v51 = [(BSRBSService *)*(a1 + 32) launchIdentifiersForMachName:v163];
  v52 = [v21 count];
  if (v52)
  {
    v53 = (*(*(a1 + 56) + 16))();
  }

  else
  {
    v53 = 0;
  }

  v54 = [(BSServiceDomainSpecification *)&v49->super.isa _initWithIdentifier:v50 machName:v163 multiplexingType:v155 xpcSubserviceName:v160 start:v159 launchIdentifiers:v51 servicesByIdentifier:v158 derivedServiceRestrictions:v53 enableIfFeatureFlags:v39 disableIfFeatureFlags:v44];
  if (v52)
  {
  }

  if (v156)
  {
    v55 = *(a1 + 40);
  }

  else
  {
    v55 = *(a1 + 48);
  }

  v56 = [v54 identifier];
  [v55 setObject:v54 forKey:v56];
}

void __81__BSServicesConfiguration__configOfService_fromPlist_isViewService_postfixBlock___block_invoke_110(uint64_t a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v43 = a2;
  v44 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"identifier of a service in domatin %@ must be NSString : %@", *(a1 + 32), v43];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(*(a1 + 56));
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = *(a1 + 64);
      *buf = 138544642;
      v49 = v20;
      v50 = 2114;
      v51 = v22;
      v52 = 2048;
      v53 = v23;
      v54 = 2114;
      v55 = @"BSServicesConfiguration.m";
      v56 = 1024;
      v57 = 194;
      v58 = 2114;
      v59 = v19;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v24 = v19;
    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A84EE98);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"configuration of service %@ in domain %@ must be NSDictionary : %@", v43, *(a1 + 32), v44];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v26 = NSStringFromSelector(*(a1 + 56));
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = *(a1 + 64);
      *buf = 138544642;
      v49 = v26;
      v50 = 2114;
      v51 = v28;
      v52 = 2048;
      v53 = v29;
      v54 = 2114;
      v55 = @"BSServicesConfiguration.m";
      v56 = 1024;
      v57 = 195;
      v58 = 2114;
      v59 = v25;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v30 = v25;
    [v25 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A84EFA4);
  }

  v5 = [v44 objectForKey:@"HideAtLaunch"];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HideAtLaunch value of service %@ in domain %@ was of an unexpected type : %@", v43, *(a1 + 32), v5];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v32 = NSStringFromSelector(*(a1 + 56));
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v35 = *(a1 + 64);
        *buf = 138544642;
        v49 = v32;
        v50 = 2114;
        v51 = v34;
        v52 = 2048;
        v53 = v35;
        v54 = 2114;
        v55 = @"BSServicesConfiguration.m";
        v56 = 1024;
        v57 = 200;
        v58 = 2114;
        v59 = v31;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v36 = v31;
      [v31 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84F0ACLL);
    }

    if ([v5 BOOLValue] && *(a1 + 72))
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HideAtLaunch is only supported for automatic domains"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v38 = NSStringFromSelector(*(a1 + 56));
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        v41 = *(a1 + 64);
        *buf = 138544642;
        v49 = v38;
        v50 = 2114;
        v51 = v40;
        v52 = 2048;
        v53 = v41;
        v54 = 2114;
        v55 = @"BSServicesConfiguration.m";
        v56 = 1024;
        v57 = 202;
        v58 = 2114;
        v59 = v37;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v42 = v37;
      [v37 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84F1A4);
    }
  }

  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [v44 bs_safeDictionaryForKey:@"Options"];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __81__BSServicesConfiguration__configOfService_fromPlist_isViewService_postfixBlock___block_invoke_130;
  v45[3] = &unk_1E7520A80;
  v8 = v6;
  v46 = v8;
  v47 = *(a1 + 48);
  [v7 enumerateKeysAndObjectsUsingBlock:v45];

  v9 = *(a1 + 48);
  v10 = [BSServiceSpecification alloc];
  v11 = (*(*(a1 + 48) + 16))();
  v12 = [v5 BOOLValue];
  v13 = [v8 count];
  if (v13)
  {
    v14 = (*(*(a1 + 48) + 16))();
  }

  else
  {
    v14 = 0;
  }

  v15 = [(BSServiceSpecification *)v10 _initWithIdentifier:v11 hiddenAtLaunch:v12 derived:0 options:v14];
  v16 = (*(v9 + 16))(v9, v15);

  if (v13)
  {
  }

  v17 = *(a1 + 40);
  v18 = [v16 identifier];
  [v17 setObject:v16 forKey:v18];
}

+ (id)_parseFeatureFlagsForDomain:(void *)domain parameterName:(void *)name featureFlags:
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a2;
  domainCopy = domain;
  nameCopy = name;
  v9 = objc_opt_self();
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__1;
  v39 = __Block_byref_object_dispose__1;
  v40 = 0;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __82__BSServicesConfiguration__parseFeatureFlagsForDomain_parameterName_featureFlags___block_invoke;
  v34[3] = &unk_1E7520AF8;
  v34[5] = sel__parseFeatureFlagsForDomain_parameterName_featureFlags_;
  v34[6] = v9;
  v34[4] = &v35;
  v10 = MEMORY[0x19A908200](v34);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (v10)[2](v10, nameCopy);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = MEMORY[0x1E696AEC0];
      v18 = objc_opt_class();
      v20 = v19 = NSStringFromClass(v18);

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v21 = NSStringFromSelector(sel__parseFeatureFlagsForDomain_parameterName_featureFlags_);
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        *buf = 138544642;
        v43 = v21;
        v44 = 2114;
        v45 = v23;
        v46 = 2048;
        v47 = v9;
        v48 = 2114;
        v49 = @"BSServicesConfiguration.m";
        v50 = 1024;
        v51 = 311;
        v52 = 2114;
        v53 = v20;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v24 = v20;
      [v20 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84FC54);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FeatureFlagConditionals"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v26 = NSStringFromSelector(sel__parseFeatureFlagsForDomain_parameterName_featureFlags_);
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        *buf = 138544642;
        v43 = v26;
        v44 = 2114;
        v45 = v28;
        v46 = 2048;
        v47 = v9;
        v48 = 2114;
        v49 = @"BSServicesConfiguration.m";
        v50 = 1024;
        v51 = 306;
        v52 = 2114;
        v53 = v25;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v29 = v25;
      [v25 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84FD48);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = nameCopy;
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v41 count:16];
    if (v12)
    {
      v13 = *v31;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v10[2](v10, *(*(&v30 + 1) + 8 * i));
        }

        v12 = [v11 countByEnumeratingWithState:&v30 objects:v41 count:16];
      }

      while (v12);
    }
  }

  v15 = v36[5];

  _Block_object_dispose(&v35, 8);

  return v15;
}

void __82__BSServicesConfiguration__parseFeatureFlagsForDomain_parameterName_featureFlags___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v23 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FeatureFlagConditional values must be NSString types."];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(*(a1 + 40));
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = *(a1 + 48);
      *buf = 138544642;
      v25 = v12;
      v26 = 2114;
      v27 = v14;
      v28 = 2048;
      v29 = v15;
      v30 = 2114;
      v31 = @"BSServicesConfiguration.m";
      v32 = 1024;
      v33 = 288;
      v34 = 2114;
      v35 = v11;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v16 = v11;
    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A850044);
  }

  v3 = [v23 componentsSeparatedByString:@"/"];
  if ([v3 count] != 2)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Feature flags must be defined in the format: Domain/FeatureName"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(*(a1 + 40));
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = *(a1 + 48);
      *buf = 138544642;
      v25 = v18;
      v26 = 2114;
      v27 = v20;
      v28 = 2048;
      v29 = v21;
      v30 = 2114;
      v31 = @"BSServicesConfiguration.m";
      v32 = 1024;
      v33 = 290;
      v34 = 2114;
      v35 = v17;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v22 = v17;
    [v17 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A85013CLL);
  }

  v4 = [v3 objectAtIndex:0];
  v5 = [v3 objectAtIndex:1];
  v6 = [[BSServiceFeatureFlag alloc] initWithDomain:v4 featureName:v5];
  v7 = *(*(*(a1 + 32) + 8) + 40);
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v7 = *(*(*(a1 + 32) + 8) + 40);
  }

  [v7 addObject:v6];
}

+ (id)_bootstrapConfigOfService:(void *)service withEnv:(void *)env info:
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = a2;
  serviceCopy = service;
  envCopy = env;
  v9 = objc_opt_self();
  v10 = objc_autoreleasePoolPush();
  if (serviceCopy)
  {
    uTF8String = [serviceCopy UTF8String];
    if (!uTF8String)
    {
      serviceCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"BSServiceDomains of environment could not be converted to UTF8String : %@", serviceCopy];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = NSStringFromSelector(sel__bootstrapConfigOfService_withEnv_info_);
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *buf = 138544642;
        v50 = v19;
        v51 = 2114;
        v52 = v21;
        v53 = 2048;
        v54 = v9;
        v55 = 2114;
        v56 = @"BSServicesConfiguration.m";
        v57 = 1024;
        v58 = 427;
        v59 = 2114;
        v60 = serviceCopy;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v22 = serviceCopy;
      [serviceCopy UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A850500);
    }

    v12 = [MEMORY[0x1E695DEF0] dataWithBytes:uTF8String length:strlen(uTF8String)];
    if (!v12)
    {
      serviceCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BSServiceDomains of environment could not be converted to NSData : %@", serviceCopy];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v24 = NSStringFromSelector(sel__bootstrapConfigOfService_withEnv_info_);
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        *buf = 138544642;
        v50 = v24;
        v51 = 2114;
        v52 = v26;
        v53 = 2048;
        v54 = v9;
        v55 = 2114;
        v56 = @"BSServicesConfiguration.m";
        v57 = 1024;
        v58 = 429;
        v59 = 2114;
        v60 = serviceCopy2;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v27 = serviceCopy2;
      [serviceCopy2 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8505FCLL);
    }

    v48 = 0;
    v13 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v12 options:0 error:&v48];
    v14 = v48;
    if (!v13)
    {
      serviceCopy3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BSServiceDomains of environment could not be deserialized due to %@ : %@", v14, serviceCopy];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v29 = NSStringFromSelector(sel__bootstrapConfigOfService_withEnv_info_);
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        *buf = 138544642;
        v50 = v29;
        v51 = 2114;
        v52 = v31;
        v53 = 2048;
        v54 = v9;
        v55 = 2114;
        v56 = @"BSServicesConfiguration.m";
        v57 = 1024;
        v58 = 432;
        v59 = 2114;
        v60 = serviceCopy3;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v32 = serviceCopy3;
      [serviceCopy3 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8506F8);
    }

    if (envCopy)
    {
      envCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"BSServiceDomains cannot be defined in both the environment and the Info.plist : env=%@ info=%@", v13, envCopy];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v34 = NSStringFromSelector(sel__bootstrapConfigOfService_withEnv_info_);
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        *buf = 138544642;
        v50 = v34;
        v51 = 2114;
        v52 = v36;
        v53 = 2048;
        v54 = v9;
        v55 = 2114;
        v56 = @"BSServicesConfiguration.m";
        v57 = 1024;
        v58 = 436;
        v59 = 2114;
        v60 = envCopy;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v37 = envCopy;
      [envCopy UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8507F4);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BSServiceDomains of environment was of an unexpected type : %@", v13];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v39 = NSStringFromSelector(sel__bootstrapConfigOfService_withEnv_info_);
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        *buf = 138544642;
        v50 = v39;
        v51 = 2114;
        v52 = v41;
        v53 = 2048;
        v54 = v9;
        v55 = 2114;
        v56 = @"BSServicesConfiguration.m";
        v57 = 1024;
        v58 = 437;
        v59 = 2114;
        v60 = v38;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v42 = v38;
      [v38 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8508F0);
    }

    v15 = [BSServicesConfiguration _configOfService:v6 fromPlist:v13 isViewService:0 postfixBlock:0];
  }

  else
  {
    if (envCopy)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BSServiceDomains was of an unexpected type : %@", 0];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v44 = NSStringFromSelector(sel__bootstrapConfigOfService_withEnv_info_);
          v45 = objc_opt_class();
          v46 = NSStringFromClass(v45);
          *buf = 138544642;
          v50 = v44;
          v51 = 2114;
          v52 = v46;
          v53 = 2048;
          v54 = v9;
          v55 = 2114;
          v56 = @"BSServicesConfiguration.m";
          v57 = 1024;
          v58 = 440;
          v59 = 2114;
          v60 = v43;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v47 = v43;
        [v43 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A8509ECLL);
      }

      v16 = [BSServicesConfiguration _configOfService:v6 fromPlist:envCopy isViewService:0 postfixBlock:&__block_literal_global_213];
    }

    else
    {
      v16 = [BSServicesConfiguration _configOfService:v6 fromPlist:0 isViewService:0 postfixBlock:0];
    }

    v15 = v16;
  }

  objc_autoreleasePoolPop(v10);

  return v15;
}

- (NSSet)disabledDomains
{
  v2 = MEMORY[0x1E695DFD8];
  allValues = [(NSDictionary *)self->_disabledDomainsByIdentifier allValues];
  v4 = [v2 setWithArray:allValues];

  return v4;
}

- (id)domainForIdentifier:(id)identifier
{
  v30 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!identifierCopy)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
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
      v25 = @"BSServicesConfiguration.m";
      v26 = 1024;
      v27 = 352;
      v28 = 2114;
      v29 = v8;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v12 = v8;
    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A850D6CLL);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
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
      v25 = @"BSServicesConfiguration.m";
      v26 = 1024;
      v27 = 352;
      v28 = 2114;
      v29 = v13;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v17 = v13;
    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A850E70);
  }

  v6 = [(NSDictionary *)self->_domainsByIdentifier objectForKey:identifierCopy];

  return v6;
}

- (id)domainForMachName:(id)name
{
  v41 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!nameCopy)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138544642;
      v30 = v15;
      v31 = 2114;
      v32 = v17;
      v33 = 2048;
      selfCopy2 = self;
      v35 = 2114;
      v36 = @"BSServicesConfiguration.m";
      v37 = 1024;
      v38 = 357;
      v39 = 2114;
      v40 = v14;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v18 = v14;
    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A85115CLL);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138544642;
      v30 = v20;
      v31 = 2114;
      v32 = v22;
      v33 = 2048;
      selfCopy2 = self;
      v35 = 2114;
      v36 = @"BSServicesConfiguration.m";
      v37 = 1024;
      v38 = 357;
      v39 = 2114;
      v40 = v19;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v23 = v19;
    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A851260);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = self->_orderedDomains;
  v7 = [(NSOrderedSet *)v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = *v25;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        machName = [v10 machName];
        v12 = [machName isEqualToString:nameCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_13;
        }
      }

      v7 = [(NSOrderedSet *)v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v7;
}

- (id)domainsContainingServiceIdentifier:(id)identifier
{
  v41 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!identifierCopy)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138544642;
      v30 = v15;
      v31 = 2114;
      v32 = v17;
      v33 = 2048;
      selfCopy2 = self;
      v35 = 2114;
      v36 = @"BSServicesConfiguration.m";
      v37 = 1024;
      v38 = 367;
      v39 = 2114;
      v40 = v14;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v18 = v14;
    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A851584);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138544642;
      v30 = v20;
      v31 = 2114;
      v32 = v22;
      v33 = 2048;
      selfCopy2 = self;
      v35 = 2114;
      v36 = @"BSServicesConfiguration.m";
      v37 = 1024;
      v38 = 367;
      v39 = 2114;
      v40 = v19;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v23 = v19;
    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A851688);
  }

  v6 = [MEMORY[0x1E695DFA8] setWithCapacity:{-[NSOrderedSet count](self->_orderedDomains, "count")}];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = self->_orderedDomains;
  v8 = [(NSOrderedSet *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = [v11 serviceForIdentifier:identifierCopy];
        if (v12)
        {
          [v6 addObject:v11];
        }
      }

      v8 = [(NSOrderedSet *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  return v6;
}

+ (id)extendAutomaticBootstrapCompletion
{
  v2 = +[BSServiceManager sharedInstance];
  extendAutomaticBootstrapCompletion = [(BSServiceManager *)v2 extendAutomaticBootstrapCompletion];

  return extendAutomaticBootstrapCompletion;
}

+ (id)registerDynamicDomainsFromPlist:(id)plist
{
  v29 = *MEMORY[0x1E69E9840];
  plistCopy = plist;
  v6 = +[BSServiceManager sharedInstance];
  _connection = [(BSServiceConnection *)v6 _connection];
  v8 = [BSServicesConfiguration _configOfService:_connection fromPlist:plistCopy isViewService:0 postfixBlock:0];

  v9 = [(BSServiceManager *)v6 registerDynamicConfiguration:v8];
  if (!v9)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing registration"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(a2);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *v20 = 138544642;
      *&v20[4] = v16;
      *&v20[12] = 2114;
      *&v20[14] = v18;
      v21 = 2048;
      selfCopy = self;
      v23 = 2114;
      v24 = @"BSServicesConfiguration.m";
      v25 = 1024;
      v26 = 388;
      v27 = 2114;
      v28 = v15;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v20, 0x3Au);
    }

    v19 = v15;
    [v15 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8519E8);
  }

  v10 = [BSServicesConfigurationRegistration alloc];
  v11 = v8;
  v12 = v9;
  if (v10)
  {
    *v20 = v10;
    *&v20[8] = BSServicesConfigurationRegistration;
    v13 = objc_msgSendSuper2(v20, sel_init);
    v10 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_configuration, v8);
      objc_storeStrong(&v10->_registration, v9);
    }
  }

  return v10;
}

+ (id)activateManualDomain:(id)domain
{
  domainCopy = domain;
  v4 = +[BSServiceManager sharedInstance];
  v5 = [(BSServiceManager *)v4 activateManualDomain:domainCopy];

  return v5;
}

+ (void)activateXPCService
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[BSServiceManager sharedInstance];
  [(BSServiceManager *)v3 enforceXPCServiceListenerRegistration];

  objc_autoreleasePoolPop(v2);
  v4 = xpc_bs_main();

  _Unwind_Resume(v4);
}

id *__66__BSServicesConfiguration__bootstrapConfigOfService_withEnv_info___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v32 = a3;
  v34 = v4;
  v30 = [v4 domainsContainingServiceIdentifier:@"com.apple.frontboard.system-service"];
  if ([v30 count] == 1)
  {
    v5 = [v30 anyObject];
    v31 = [v5 serviceForIdentifier:@"com.apple.frontboard.system-service"];
    if (v5)
    {
      v6 = v5[11];
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v33 = [MEMORY[0x1E695DFA8] set];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v8 = [&unk_1F0E05B90 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v8)
    {
      v9 = *v40;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v40 != v9)
          {
            objc_enumerationMutation(&unk_1F0E05B90);
          }

          v11 = *(*(&v39 + 1) + 8 * i);
          if (([v7 containsObject:v11] & 1) == 0)
          {
            v12 = [v34 domainsContainingServiceIdentifier:v11];
            v13 = [v12 count] == 0;

            if (v13)
            {
              v14 = [BSServiceSpecification alloc];
              v15 = v32[2](v32, v11);
              v16 = -[BSServiceSpecification _initWithIdentifier:hiddenAtLaunch:derived:options:](v14, v15, [v31 isHiddenAtLaunch], 1, 0);

              v17 = (v32)[2](v32, v16);
              [v33 addObject:v17];
            }
          }
        }

        v8 = [&unk_1F0E05B90 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v8);
    }

    if ([v33 count])
    {
      v18 = MEMORY[0x1E695DF90];
      v19 = [v34 domains];
      v20 = [v18 dictionaryWithCapacity:{objc_msgSend(v19, "count")}];

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v21 = [v34 domains];
      v22 = [v21 countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v22)
      {
        v23 = *v36;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v36 != v23)
            {
              objc_enumerationMutation(v21);
            }

            v25 = *(*(&v35 + 1) + 8 * j);
            if (v25 == v5)
            {
              v26 = [(BSServiceDomainSpecification *)v5 _domainWithAdditionalServices:v33];
              v27 = [v25 identifier];
              [v20 setObject:v26 forKey:v27];
            }

            else
            {
              v26 = [*(*(&v35 + 1) + 8 * j) identifier];
              [v20 setObject:v25 forKey:v26];
            }
          }

          v22 = [v21 countByEnumeratingWithState:&v35 objects:v43 count:16];
        }

        while (v22);
      }

      v28 = [[BSServicesConfiguration alloc] _initWithDomainsByIdentifier:v20 disabledDomainsByIdentifier:0];
      v34 = v28;
    }
  }

  return v34;
}

+ (id)_configOfService:(void *)service withViewServiceDomainsDictionary:
{
  v4 = a2;
  serviceCopy = service;
  objc_opt_self();
  v6 = [BSServicesConfiguration _configOfService:v4 fromPlist:serviceCopy isViewService:1 postfixBlock:0];

  return v6;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BSServicesConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BSServicesConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(BSServicesConfiguration *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__BSServicesConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E75209E8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];
  v7 = v6;

  return v6;
}

void __65__BSServicesConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(a1 + 40) + 24) array];
  [v1 appendArraySection:? withName:? skipIfEmpty:?];
}

@end