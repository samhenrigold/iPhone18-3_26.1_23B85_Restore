@interface RBJetsamPropertyManager
+ (id)testJetsamProperties;
+ (id)unmanagedJetsamProperties;
+ (int)testTaskLimitForPid:(int)pid;
+ (uint64_t)_taskLimit;
- (BOOL)_isNotValidProperties:(_BOOL8)properties;
- (RBJetsamPropertyManager)initWithEntitlementManager:(id)manager;
- (RBJetsamPropertyManager)initWithEntitlementManager:(id)manager properties:(id)properties;
- (__CFString)_jetsamTargetType;
- (id)_encodedValue:(uint64_t)value;
- (id)_jetsamPropertiesForAngelProcess:(uint64_t)process identity:(uint64_t)identity bundleProperties:(void *)properties;
- (id)_jetsamPropertiesForAppProcess:(uint64_t)process identity:(uint64_t)identity bundleProperties:(uint64_t)properties isPlatformBinary:(uint64_t)binary;
- (id)_jetsamPropertiesForDaemonProcess:(uint64_t)process identity:(uint64_t)identity bundleProperties:(void *)properties;
- (id)_jetsamPropertiesForExtensionProcess:(void *)process identity:(void *)identity bundleProperties:;
- (id)_jetsamPropertiesForProcess:(void *)process identifier:(void *)identifier properties:(void *)properties global:;
- (id)_jetsamPropertiesForServiceProcess:(uint64_t)process identity:(uint64_t)identity bundleProperties:(uint64_t)properties isPlatformBinary:(uint64_t)binary;
- (id)_jetsamPropertiesWithTaskLimit:(void *)limit;
- (id)_jetsamTryBasePath:(void *)path target:(void *)target extension:;
- (id)_jetsamTryPath:(void *)path target:(void *)target extension:;
- (id)_loadJetsamProperties;
- (id)jetsamPropertiesForProcess:(int)process identity:(id)identity bundleProperties:(id)properties isPlatformBinary:(BOOL)binary;
- (uint64_t)_taskLimitForProcess:(uint64_t)process;
- (uint64_t)_unLimitForProcess:(uint64_t)process;
- (void)_addJetsamValuesForSection:(void *)section fromPlist:(void *)plist toDatabase:;
- (void)_prepareJetsamData:(id *)data;
@end

@implementation RBJetsamPropertyManager

+ (uint64_t)_taskLimit
{
  objc_opt_self();
  if (_taskLimit_onceToken != -1)
  {
    +[RBJetsamPropertyManager _taskLimit];
  }

  return _taskLimit_taskLimit;
}

void __37__RBJetsamPropertyManager__taskLimit__block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = 0;
  v3 = 4;
  v0 = sysctlbyname("kern.max_task_pmem", &v4, &v3, 0, 0);
  v1 = rbs_jetsam_log();
  v2 = v1;
  if (v0)
  {
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __37__RBJetsamPropertyManager__taskLimit__block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v6 = v4;
    _os_log_impl(&dword_262485000, v2, OS_LOG_TYPE_DEFAULT, "Jetsam database _kern_max_task_pmem=%d", buf, 8u);
  }

  _taskLimit_taskLimit = v4;
}

void __75__RBJetsamPropertyManager__addJetsamValuesForSection_fromPlist_toDatabase___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 hasSuffix:@"MemoryLimit"])
  {
    v4 = RBSNumberForKey();
    if (v4)
    {
      [*(a1 + 40) setValue:v4 forKey:v3];
      v5 = rbs_jetsam_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = *(a1 + 48);
        v7 = *(a1 + 56);
        v13 = 138413058;
        v14 = v6;
        v15 = 2112;
        v16 = v3;
        v17 = 2112;
        v18 = v7;
        v19 = 2112;
        v20 = v4;
        _os_log_debug_impl(&dword_262485000, v5, OS_LOG_TYPE_DEBUG, "In %@ Setting %@ for %@ to %@", &v13, 0x2Au);
      }
    }

    else
    {
      v5 = rbs_jetsam_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __75__RBJetsamPropertyManager__addJetsamValuesForSection_fromPlist_toDatabase___block_invoke_cold_1(v3, v5);
      }
    }

LABEL_11:
    goto LABEL_12;
  }

  if ([v3 isEqualToString:@"FreezerEligible"])
  {
    v8 = RBSBoolForKey();
    v9 = *(a1 + 40);
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    [v9 setValue:v10 forKey:v3];

    v4 = rbs_jetsam_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      v13 = 138413058;
      v14 = v11;
      v15 = 2112;
      v16 = v3;
      v17 = 2112;
      v18 = v12;
      v19 = 1024;
      LODWORD(v20) = v8;
      _os_log_debug_impl(&dword_262485000, v4, OS_LOG_TYPE_DEBUG, "In %@ Setting %@ for %@ to %hhd", &v13, 0x26u);
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (RBJetsamPropertyManager)initWithEntitlementManager:(id)manager properties:(id)properties
{
  managerCopy = manager;
  propertiesCopy = properties;
  v12.receiver = self;
  v12.super_class = RBJetsamPropertyManager;
  v9 = [(RBJetsamPropertyManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entitlementManager, manager);
    [(RBJetsamPropertyManager *)&v10->super.isa _prepareJetsamData:propertiesCopy];
  }

  return v10;
}

- (id)jetsamPropertiesForProcess:(int)process identity:(id)identity bundleProperties:(id)properties isPlatformBinary:(BOOL)binary
{
  v7 = *&process;
  identityCopy = identity;
  propertiesCopy = properties;
  if (os_variant_has_internal_content())
  {
    embeddedApplicationIdentifier = [identityCopy embeddedApplicationIdentifier];
    if ([embeddedApplicationIdentifier isEqualToString:@"com.apple.runningboard.test.limePuppet"])
    {
      v12 = +[RBJetsamPropertyManager testJetsamProperties];

      goto LABEL_4;
    }
  }

  if ([identityCopy isApplication])
  {
    v15 = [RBJetsamPropertyManager _jetsamPropertiesForAppProcess:v7 identity:v14 bundleProperties:propertiesCopy isPlatformBinary:?];
  }

  else if ([identityCopy osServiceType] == 2)
  {
    v15 = [RBJetsamPropertyManager _jetsamPropertiesForDaemonProcess:v7 identity:identityCopy bundleProperties:?];
  }

  else if ([identityCopy osServiceType] == 3)
  {
    v15 = [RBJetsamPropertyManager _jetsamPropertiesForAngelProcess:v7 identity:identityCopy bundleProperties:?];
  }

  else if ([identityCopy isExtension])
  {
    v15 = [(RBJetsamPropertyManager *)self _jetsamPropertiesForExtensionProcess:v7 identity:identityCopy bundleProperties:propertiesCopy];
  }

  else if ([identityCopy isXPCService])
  {
    v15 = [RBJetsamPropertyManager _jetsamPropertiesForServiceProcess:v7 identity:v16 bundleProperties:propertiesCopy isPlatformBinary:?];
  }

  else
  {
    v17 = rbs_jetsam_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [RBJetsamPropertyManager jetsamPropertiesForProcess:identityCopy identity:v17 bundleProperties:? isPlatformBinary:?];
    }

    v18 = [RBJetsamPropertyManager _taskLimitForProcess:?];
    v15 = [(RBJetsamPropertyManager *)self _jetsamPropertiesWithTaskLimit:v18];
  }

  v12 = v15;
LABEL_4:

  return v12;
}

+ (int)testTaskLimitForPid:(int)pid
{
  v3 = memorystatus_control();
  if (v3 <= 0)
  {
    v4 = rbs_jetsam_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[RBJetsamPropertyManager testTaskLimitForPid:];
    }

    return +[RBJetsamPropertyManager _taskLimit];
  }

  return v3;
}

+ (id)testJetsamProperties
{
  v2 = +[RBJetsamPropertyManager _taskLimit];
  v3 = +[RBJetsamPropertyManager _taskLimit];
  v4 = MEMORY[0x277CBEC10];

  return [RBJetsamProperties jetsamPropertiesForProperties:&unk_28751B090 globalProperties:v4 taskLimit:v2 unLimit:v3];
}

+ (id)unmanagedJetsamProperties
{
  v2 = +[RBJetsamPropertyManager _taskLimit];
  v3 = +[RBJetsamPropertyManager _taskLimit];
  v4 = MEMORY[0x277CBEC10];

  return [RBJetsamProperties jetsamPropertiesForProperties:&unk_28751B0B8 globalProperties:v4 taskLimit:v2 unLimit:v3];
}

- (__CFString)_jetsamTargetType
{
  v30 = *MEMORY[0x277D85DE8];
  if (self)
  {
    OUTLINED_FUNCTION_4_3();
    v6 = sysctlbyname(v1, v2, v3, v4, v5);
    if (v6)
    {
      v7 = rbs_jetsam_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v17 = *__error();
        v18 = __error();
        v19 = strerror(*v18);
        *buf = 67109890;
        v22 = v6;
        v23 = 2048;
        v24 = 16;
        v25 = 1024;
        v26 = v17;
        v27 = 2080;
        v28 = v19;
        _os_log_error_impl(&dword_262485000, v7, OS_LOG_TYPE_ERROR, "SyscallError: getJetsamPriorityBandFromSystem getJetsamPropertyInfo sysctlbyname, try 1 -> %d, %zu, %d (%s)", buf, 0x22u);
      }
    }

    if (v6)
    {
      goto LABEL_7;
    }

    if (*__error() == 12)
    {
      OUTLINED_FUNCTION_4_3();
      v14 = sysctlbyname(v9, v10, v11, v12, v13);
      if (v14)
      {
        v15 = v14;
        v16 = rbs_jetsam_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          v22 = v15;
          v23 = 2048;
          v24 = 16;
          _os_log_error_impl(&dword_262485000, v16, OS_LOG_TYPE_ERROR, "SyscallError: getJetsamPriorityBandFromSystem getJetsamPropertyInfo sysctlbyname, try 2 -> %d, %zu", buf, 0x12u);
        }

LABEL_7:
        v8 = &stru_287507640;
        goto LABEL_14;
      }
    }

    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v29];
  }

  else
  {
    v8 = 0;
  }

LABEL_14:

  return v8;
}

- (id)_jetsamTryPath:(void *)path target:(void *)target extension:
{
  v16 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v6 = MEMORY[0x277CCACA8];
    targetCopy = target;
    pathCopy = path;
    v9 = a2;
    targetCopy = [[v6 alloc] initWithFormat:@"%@.%@.%@", v9, pathCopy, targetCopy];

    v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:targetCopy];
    if (v11)
    {
      v12 = rbs_jetsam_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = targetCopy;
        _os_log_impl(&dword_262485000, v12, OS_LOG_TYPE_DEFAULT, "Loaded jetsamproperties from %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_jetsamTryBasePath:(void *)path target:(void *)target extension:
{
  v7 = a2;
  targetCopy = target;
  if (self)
  {
    v9 = [(RBJetsamPropertyManager *)self _jetsamTryPath:v7 target:path extension:targetCopy];
    if (!v9)
    {
      v9 = [(RBJetsamPropertyManager *)self _jetsamTryPath:v7 target:@"NonUI" extension:targetCopy];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_loadJetsamProperties
{
  v19 = *MEMORY[0x277D85DE8];
  if (self)
  {
    _jetsamTargetType = [(RBJetsamPropertyManager *)self _jetsamTargetType];
    is_darwinos = os_variant_is_darwinos();
    v4 = @"plist";
    if (is_darwinos)
    {
      v4 = @"darwin.plist";
    }

    v5 = v4;
    if (os_variant_has_internal_content() && ([(RBJetsamPropertyManager *)self _jetsamTryBasePath:_jetsamTargetType target:v5 extension:?], (v6 = objc_claimAutoreleasedReturnValue()) != 0) || ([(RBJetsamPropertyManager *)self _jetsamTryBasePath:_jetsamTargetType target:v5 extension:?], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
    }

    else
    {
      v9 = rbs_jetsam_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        has_internal_content = os_variant_has_internal_content();
        v11 = @"/AppleInternal/Library/LaunchDaemons/com.apple.jetsamproperties";
        if (!has_internal_content)
        {
          v11 = @"/System/Library/LaunchDaemons/com.apple.jetsamproperties";
        }

        v12 = v11;
        v13 = 138412802;
        v14 = v12;
        v15 = 2112;
        v16 = _jetsamTargetType;
        v17 = 2112;
        v18 = v5;
        _os_log_error_impl(&dword_262485000, v9, OS_LOG_TYPE_ERROR, "Can't find jetsamproperties ('%@' | '%@' | '%@')", &v13, 0x20u);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isNotValidProperties:(_BOOL8)properties
{
  v3 = a2;
  v4 = v3;
  if (properties)
  {
    if (v3 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v4 count]))
    {
      objc_opt_class();
      properties = (objc_opt_isKindOfClass() & 1) != 0 && [v4 unsignedLongLongValue] == 0;
    }

    else
    {
      properties = 1;
    }
  }

  return properties;
}

- (void)_prepareJetsamData:(id *)data
{
  v123 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (data)
  {
    v100 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v99 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (v3)
    {
      v11 = RBSDictionaryForKey();

      if (v11)
      {
        v14 = OUTLINED_FUNCTION_2_6();
        [(RBJetsamPropertyManager *)v14 _addJetsamValuesForSection:v15 fromPlist:v16 toDatabase:v4];
        v17 = [v4 objectForKeyedSubscript:@"Global"];
        v18 = data[7];
        data[7] = v17;

        if ([(RBJetsamPropertyManager *)data _isNotValidProperties:?])
        {
          v19 = data[7];
          data[7] = &unk_28751B040;
        }

        v20 = OUTLINED_FUNCTION_2_6();
        [(RBJetsamPropertyManager *)v20 _addJetsamValuesForSection:v21 fromPlist:v22 toDatabase:v5];
        v23 = [v5 objectForKeyedSubscript:@"Global"];
        v24 = data[9];
        data[9] = v23;

        if ([(RBJetsamPropertyManager *)data _isNotValidProperties:?])
        {
          v25 = data[9];
          data[9] = &unk_28751B040;
        }

        v26 = OUTLINED_FUNCTION_2_6();
        [(RBJetsamPropertyManager *)v26 _addJetsamValuesForSection:v27 fromPlist:v28 toDatabase:v6];
        v29 = [v6 objectForKeyedSubscript:@"Global"];
        v30 = data[11];
        data[11] = v29;

        if ([(RBJetsamPropertyManager *)data _isNotValidProperties:?])
        {
          v31 = data[11];
          data[11] = &unk_28751B040;
        }

        v32 = OUTLINED_FUNCTION_2_6();
        [(RBJetsamPropertyManager *)v32 _addJetsamValuesForSection:v33 fromPlist:v34 toDatabase:v100];
        v35 = [v100 objectForKeyedSubscript:@"Global"];
        v36 = data[3];
        data[3] = v35;

        if ([(RBJetsamPropertyManager *)data _isNotValidProperties:?])
        {
          v37 = data[3];
          data[3] = &unk_28751B040;
        }

        v38 = OUTLINED_FUNCTION_2_6();
        [(RBJetsamPropertyManager *)v38 _addJetsamValuesForSection:v39 fromPlist:v40 toDatabase:v99];
        v41 = [v99 objectForKeyedSubscript:@"Global"];
        v42 = data[5];
        data[5] = v41;

        if ([(RBJetsamPropertyManager *)data _isNotValidProperties:?])
        {
          v43 = data[5];
          data[5] = &unk_28751B040;
        }

        v44 = OUTLINED_FUNCTION_2_6();
        [(RBJetsamPropertyManager *)v44 _addJetsamValuesForSection:v45 fromPlist:v46 toDatabase:v7];
        v47 = [v7 objectForKeyedSubscript:@"Global"];
        v48 = data[13];
        data[13] = v47;

        if ([(RBJetsamPropertyManager *)data _isNotValidProperties:?])
        {
          v49 = data[13];
          data[13] = &unk_28751B040;
        }

        v50 = OUTLINED_FUNCTION_2_6();
        [(RBJetsamPropertyManager *)v50 _addJetsamValuesForSection:v51 fromPlist:v52 toDatabase:v8];
        v53 = [v8 objectForKeyedSubscript:@"Global"];
        v54 = data[15];
        data[15] = v53;

        if ([(RBJetsamPropertyManager *)data _isNotValidProperties:?])
        {
          v55 = data[15];
          data[15] = &unk_28751B040;
        }

        v56 = OUTLINED_FUNCTION_2_6();
        [(RBJetsamPropertyManager *)v56 _addJetsamValuesForSection:v57 fromPlist:v58 toDatabase:v9];
        v59 = [v9 objectForKeyedSubscript:@"Global"];
        v60 = data[19];
        data[19] = v59;

        if ([(RBJetsamPropertyManager *)data _isNotValidProperties:?])
        {
          v61 = data[19];
          data[19] = &unk_28751B040;
        }

        v62 = OUTLINED_FUNCTION_2_6();
        [(RBJetsamPropertyManager *)v62 _addJetsamValuesForSection:v63 fromPlist:v64 toDatabase:v10];
        v65 = [v10 objectForKeyedSubscript:@"Global"];
        v66 = data[17];
        data[17] = v65;

        if ([(RBJetsamPropertyManager *)data _isNotValidProperties:?])
        {
          v67 = data[17];
          data[17] = &unk_28751B040;
        }

        v68 = [v100 copy];
        v69 = data[2];
        data[2] = v68;

        v70 = [v99 copy];
        v71 = data[4];
        data[4] = v70;

        v72 = [v4 copy];
        v73 = data[6];
        data[6] = v72;

        v74 = [v5 copy];
        v75 = data[8];
        data[8] = v74;

        v76 = [v6 copy];
        v77 = data[10];
        data[10] = v76;

        v78 = [v7 copy];
        v79 = data[12];
        data[12] = v78;

        v80 = [v8 copy];
        v81 = data[14];
        data[14] = v80;

        v82 = [v9 copy];
        v83 = data[18];
        data[18] = v82;

        v84 = [v10 copy];
        v85 = data[16];
        data[16] = v84;

        v12 = rbs_jetsam_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v98 = [data[2] count];
          v97 = [data[4] count];
          v96 = [data[6] count];
          v95 = [data[8] count];
          v94 = [data[10] count];
          v93 = [data[12] count];
          v92 = [data[14] count];
          v91 = [data[18] count];
          v90 = [data[16] count];
          v88 = [data[2] count];
          v89 = [data[4] count] + v88;
          [data[6] count];
          [data[8] count];
          OUTLINED_FUNCTION_7_2();
          [data[10] count];
          [data[12] count];
          [data[14] count];
          OUTLINED_FUNCTION_7_2();
          v87 = [data[18] count];
          v86 = [data[16] count];
          *buf = 134220544;
          v102 = v98;
          v103 = 2048;
          v104 = v97;
          v105 = 2048;
          v106 = v96;
          v107 = 2048;
          v108 = v95;
          v109 = 2048;
          v110 = v94;
          v111 = 2048;
          v112 = v93;
          v113 = 2048;
          v114 = v92;
          v115 = 2048;
          v116 = 0;
          v117 = 2048;
          v118 = v91;
          v119 = 2048;
          v120 = v90;
          v121 = 2048;
          v122 = v89 + v87 + v86;
          _os_log_impl(&dword_262485000, v12, OS_LOG_TYPE_DEFAULT, "Jetsam Properties Loaded x:%lu xs:%lu e:%lu ei:%lu ee:%lu a:%lu as:%lu ai:%lu g:%lu d:%lu T:%lu", buf, 0x70u);
        }

        goto LABEL_8;
      }

      v12 = rbs_jetsam_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v13 = "Jetsam database parse error !(Version4)";
LABEL_31:
        _os_log_fault_impl(&dword_262485000, v12, OS_LOG_TYPE_FAULT, v13, buf, 2u);
      }
    }

    else
    {
      v12 = rbs_jetsam_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v13 = "Unable to load jetsam database!";
        goto LABEL_31;
      }
    }

    v11 = 0;
LABEL_8:

    v3 = v11;
  }
}

- (void)_addJetsamValuesForSection:(void *)section fromPlist:(void *)plist toDatabase:
{
  v40 = *MEMORY[0x277D85DE8];
  v27 = a2;
  sectionCopy = section;
  selfCopy = self;
  plistCopy = plist;
  if (self)
  {
    if (!sectionCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel__addJetsamValuesForSection_fromPlist_toDatabase_ object:self file:@"RBJetsamPropertyManager.m" lineNumber:413 description:{@"Invalid parameter not satisfying: %@", @"plist != nil"}];
    }

    if (!plistCopy)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:sel__addJetsamValuesForSection_fromPlist_toDatabase_ object:self file:@"RBJetsamPropertyManager.m" lineNumber:414 description:{@"Invalid parameter not satisfying: %@", @"database != nil"}];
    }

    v8 = RBSDictionaryForKey();
    if ([v8 count])
    {
      v9 = RBSDictionaryForKey();
      if ([v9 count])
      {
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v11)
        {
          v12 = v11;
          v23 = v9;
          v24 = v8;
          v13 = *v34;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v34 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v33 + 1) + 8 * i);
              v16 = RBSDictionaryForKey();
              if (v16)
              {
                v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
                v28[0] = MEMORY[0x277D85DD0];
                v28[1] = 3221225472;
                v28[2] = __75__RBJetsamPropertyManager__addJetsamValuesForSection_fromPlist_toDatabase___block_invoke;
                v28[3] = &unk_279B336B8;
                v18 = v16;
                v29 = v18;
                v19 = v17;
                v30 = v19;
                v31 = v27;
                v32 = v15;
                [v18 enumerateKeysAndObjectsUsingBlock:v28];
                if ([v19 count])
                {
                  v20 = [(RBJetsamPropertyManager *)selfCopy _encodedValue:v19];
                  [plistCopy setValue:v20 forKey:v15];
                }
              }

              else
              {
                v19 = rbs_jetsam_log();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v39 = v15;
                  _os_log_error_impl(&dword_262485000, v19, OS_LOG_TYPE_ERROR, "Jetsam database entry for %@ not a dictionary, skipping", buf, 0xCu);
                }
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
          }

          while (v12);
          v8 = v24;
          v9 = v23;
        }
      }

      else
      {
        v10 = rbs_jetsam_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_262485000, v10, OS_LOG_TYPE_ERROR, "Jetsam database parse error !(Override)", buf, 2u);
        }
      }
    }

    else
    {
      v9 = rbs_jetsam_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v39 = v27;
        _os_log_error_impl(&dword_262485000, v9, OS_LOG_TYPE_ERROR, "Jetsam database parse error: no section found for %@", buf, 0xCu);
      }
    }
  }
}

- (id)_encodedValue:(uint64_t)value
{
  v3 = a2;
  v4 = v3;
  if (value)
  {
    v5 = [v3 count];
    v6 = [v4 valueForKey:@"ActiveHardMemoryLimit"];
    OUTLINED_FUNCTION_5_2();
    v8 = v5 - v7;
    v9 = [v4 valueForKey:@"ActiveSoftMemoryLimit"];
    OUTLINED_FUNCTION_5_2();
    v11 = v8 - v10;
    v12 = [v4 valueForKey:@"InactiveHardMemoryLimit"];
    OUTLINED_FUNCTION_5_2();
    v14 = v11 - v13;
    v15 = [v4 valueForKey:@"InactiveSoftMemoryLimit"];
    OUTLINED_FUNCTION_5_2();
    if (v14 == v16)
    {
      if (!v6 || v9)
      {
        if (v6 || !v9)
        {
          v17 = 0;
          if (v6 && v9)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v17 = (([v9 unsignedLongLongValue] & 0x3FFFFFFF) << 32) | 0x8000000000000000;
        }
      }

      else
      {
        v17 = ([v6 unsignedLongLongValue] << 32) | 0xC000000000000000;
      }

      if (v12 && !v15)
      {
        v18 = 3221225472;
        v19 = v12;
LABEL_15:
        v20 = [v19 unsignedLongLongValue] & 0x3FFFFFFF | v18;
LABEL_16:
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20 | v17];
LABEL_23:
        v22 = v21;

        goto LABEL_24;
      }

      if (!v12 && v15)
      {
        v18 = 0x80000000;
        v19 = v15;
        goto LABEL_15;
      }

      v20 = 0;
      if (!v12 || !v15)
      {
        goto LABEL_16;
      }
    }

LABEL_22:
    v21 = [v4 copy];
    goto LABEL_23;
  }

  v22 = 0;
LABEL_24:

  return v22;
}

- (RBJetsamPropertyManager)initWithEntitlementManager:(id)manager
{
  managerCopy = manager;
  _loadJetsamProperties = [(RBJetsamPropertyManager *)self _loadJetsamProperties];
  v6 = [(RBJetsamPropertyManager *)self initWithEntitlementManager:managerCopy properties:_loadJetsamProperties];

  return v6;
}

- (uint64_t)_taskLimitForProcess:(uint64_t)process
{
  if (!process)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_3();
  v1 = memorystatus_control();
  if (v1 <= 0)
  {
    v2 = rbs_jetsam_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __error();
      v4 = __error();
      strerror(*v4);
      OUTLINED_FUNCTION_0_6();
      OUTLINED_FUNCTION_1_8(&dword_262485000, v5, v6, "memorystatus_control error: MEMORYSTATUS_CMD_CONVERT_MEMLIMIT_MB(-1) returned %d %d (%s)", v7, v8, v9, v10);
    }

    return +[RBJetsamPropertyManager _taskLimit];
  }

  return v1;
}

- (uint64_t)_unLimitForProcess:(uint64_t)process
{
  if (!process)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_3();
  v1 = memorystatus_control();
  if (v1 <= 0)
  {
    v2 = rbs_jetsam_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __error();
      v4 = __error();
      strerror(*v4);
      OUTLINED_FUNCTION_0_6();
      OUTLINED_FUNCTION_1_8(&dword_262485000, v5, v6, "memorystatus_control error: MEMORYSTATUS_CMD_CONVERT_MEMLIMIT_MB(0) returned %d %d (%s)", v7, v8, v9, v10);
    }

    return +[RBJetsamPropertyManager _taskLimit];
  }

  return v1;
}

- (id)_jetsamPropertiesForProcess:(void *)process identifier:(void *)identifier properties:(void *)properties global:
{
  if (self)
  {
    propertiesCopy = properties;
    identifierCopy = identifier;
    processCopy = process;
    v11 = [RBJetsamPropertyManager _taskLimitForProcess:self];
    v12 = [RBJetsamPropertyManager _unLimitForProcess:self];
    v13 = [identifierCopy valueForKey:processCopy];

    v14 = [v13 copy];
    v15 = [RBJetsamProperties jetsamPropertiesForProperties:v14 globalProperties:propertiesCopy taskLimit:v11 unLimit:v12];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_jetsamPropertiesForAppProcess:(uint64_t)process identity:(uint64_t)identity bundleProperties:(uint64_t)properties isPlatformBinary:(uint64_t)binary
{
  if (process)
  {
    identity = [OUTLINED_FUNCTION_6_2(process identity];
    v6 = [*(v4 + 112) valueForKey:identity];

    if (!v6)
    {
      [*(v4 + 96) valueForKey:identity];
    }

    v7 = OUTLINED_FUNCTION_3_2();
    v12 = [(RBJetsamPropertyManager *)v7 _jetsamPropertiesForProcess:v8 identifier:v9 properties:v10 global:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_jetsamPropertiesForDaemonProcess:(uint64_t)process identity:(uint64_t)identity bundleProperties:(void *)properties
{
  if (process)
  {
    consistentLaunchdJobLabel = [properties consistentLaunchdJobLabel];
    v6 = [(RBJetsamPropertyManager *)process _jetsamPropertiesForProcess:identity identifier:consistentLaunchdJobLabel properties:*(process + 128) global:*(process + 136)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_jetsamPropertiesForAngelProcess:(uint64_t)process identity:(uint64_t)identity bundleProperties:(void *)properties
{
  if (process)
  {
    consistentLaunchdJobLabel = [properties consistentLaunchdJobLabel];
    v6 = [(RBJetsamPropertyManager *)process _jetsamPropertiesForProcess:identity identifier:consistentLaunchdJobLabel properties:*(process + 144) global:*(process + 152)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_jetsamPropertiesForExtensionProcess:(void *)process identity:(void *)identity bundleProperties:
{
  identityCopy = identity;
  if (self)
  {
    isExternal = [process isExternal];
    extensionPointIdentifier = [identityCopy extensionPointIdentifier];
    v10 = 48;
    if (isExternal)
    {
      v10 = 80;
    }

    v11 = 56;
    if (isExternal)
    {
      v11 = 88;
    }

    v12 = [(RBJetsamPropertyManager *)self _jetsamPropertiesForProcess:a2 identifier:extensionPointIdentifier properties:*(self + v10) global:*(self + v11)];

    bundleIdentifier = [identityCopy bundleIdentifier];
    v14 = [(RBJetsamPropertyManager *)self _jetsamPropertiesForProcess:a2 identifier:bundleIdentifier properties:*(self + 64) global:*(self + 72)];

    v15 = *(self + 64);
    bundleIdentifier2 = [identityCopy bundleIdentifier];
    v17 = [v15 objectForKey:bundleIdentifier2];

    if (v17)
    {
      [v12 overrideMemoryLimitCategoriesWithProperties:v14];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_jetsamPropertiesForServiceProcess:(uint64_t)process identity:(uint64_t)identity bundleProperties:(uint64_t)properties isPlatformBinary:(uint64_t)binary
{
  if (process)
  {
    identity = [OUTLINED_FUNCTION_6_2(process identity];
    v6 = [*(v4 + 32) valueForKey:identity];

    if (!v6)
    {
      [*(v4 + 16) valueForKey:identity];
    }

    v7 = OUTLINED_FUNCTION_3_2();
    v12 = [(RBJetsamPropertyManager *)v7 _jetsamPropertiesForProcess:v8 identifier:v9 properties:v10 global:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_jetsamPropertiesWithTaskLimit:(void *)limit
{
  if (limit)
  {
    limit = [RBJetsamProperties jetsamPropertiesForProperties:&unk_28751B068 globalProperties:MEMORY[0x277CBEC10] taskLimit:a2 unLimit:a2];
    v2 = vars8;
  }

  return limit;
}

void __37__RBJetsamPropertyManager__taskLimit__block_invoke_cold_1()
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_8(&dword_262485000, v1, v2, "SyscallError: kern.max_task_pmem %d %d (%s)", v3, v4, v5, v6);
}

void __75__RBJetsamPropertyManager__addJetsamValuesForSection_fromPlist_toDatabase___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_262485000, a2, OS_LOG_TYPE_ERROR, "Jetsam database entry for %@ not a number, skipping", &v2, 0xCu);
}

- (void)jetsamPropertiesForProcess:(uint64_t)a1 identity:(NSObject *)a2 bundleProperties:isPlatformBinary:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_262485000, a2, OS_LOG_TYPE_DEBUG, "Unknown process type for %@", &v2, 0xCu);
}

+ (void)testTaskLimitForPid:.cold.1()
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_8(&dword_262485000, v1, v2, "memorystatus_control error: MEMORYSTATUS_CMD_CONVERT_MEMLIMIT_MB(-1) returned %d %d (%s)", v3, v4, v5, v6);
}

@end