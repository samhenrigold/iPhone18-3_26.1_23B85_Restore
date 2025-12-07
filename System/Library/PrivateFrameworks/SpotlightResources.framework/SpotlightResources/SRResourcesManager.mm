@interface SRResourcesManager
+ (BOOL)parsecEnabled;
+ (id)defaultParameterWithType:(int64_t)type value:(id)value name:(id)name;
+ (id)sharedResourcesManager;
+ (id)trialOverrideList;
+ (id)trialParameterList;
+ (int64_t)parameterTypeFromString:(id)string;
+ (unint64_t)lastLoadedBundleVersion;
+ (void)dumpParameterList:(id)list;
+ (void)fetchOverrideList;
+ (void)fetchParameterList;
+ (void)fetchUserDefaults;
+ (void)initialize;
+ (void)setTrialUpdateHandler;
+ (void)updateDefaultParameter:(id)parameter withValue:(id)value;
- (BOOL)overrideFactor:(id)factor client:(id)client type:(id)type value:(id)value;
- (SRResourcesManager)initWithOptions:(id)options;
- (id)allLoadedAssets;
- (id)assetConfigDump;
- (id)resourcesForClient:(id)client locale:(id)locale options:(id)options;
- (id)resourcesForClient:(id)client options:(id)options;
- (id)trialConfigDump;
- (void)fetchAllParametersForLanguages:(id)languages;
- (void)handleAssetsCommand:(id)command;
- (void)loadAllParameters;
- (void)loadAllParametersForClient:(id)client;
- (void)loadAllParametersForClient:(id)client locale:(id)locale options:(id)options;
- (void)loadAllParametersForClient:(id)client locales:(id)locales options:(id)options;
- (void)loadDataSource:(id)source force:(BOOL)force;
- (void)refreshTrialForClient:(id)client;
@end

@implementation SRResourcesManager

+ (void)initialize
{
  +[SRDefaultsManager sharedDefaultsManager];

  [self setTrialUpdateHandler];
}

+ (void)setTrialUpdateHandler
{
  v2 = sTrialUpdateHandler;
  sTrialUpdateHandler = &__block_literal_global_440;

  [SSTrialManager setTrialUpdateHandler:&__block_literal_global_440];

  +[SSTrialManager setTrialOverridePath];
}

+ (id)sharedResourcesManager
{
  if (sharedResourcesManager_onceToken != -1)
  {
    +[SRResourcesManager sharedResourcesManager];
  }

  v3 = sharedResourcesManager_resourcesManager;

  return v3;
}

uint64_t __44__SRResourcesManager_sharedResourcesManager__block_invoke()
{
  v0 = [SRResourcesManager alloc];
  sharedResourcesManager_resourcesManager = [(SRResourcesManager *)v0 initWithOptions:MEMORY[0x1E695E0F8]];

  return MEMORY[0x1EEE66BB8]();
}

+ (void)fetchParameterList
{
  if (fetchParameterList_trialListOnceToken != -1)
  {
    +[SRResourcesManager fetchParameterList];
  }

  fetchUserDefaults = [self fetchUserDefaults];
  if (SRIsAppleInternalInstall(fetchUserDefaults, v4))
  {

    [self fetchOverrideList];
  }
}

void __40__SRResourcesManager_fetchParameterList__block_invoke()
{
  v30 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&sTrialParameterListLock);
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = sTrialParameterList;
  sTrialParameterList = v0;

  v2 = +[SRDefaultsManager sharedDefaultsManager];
  v3 = [v2 currentNamespaceDescription];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v3;
  v17 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v17)
  {
    v16 = *v25;
    do
    {
      v4 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = v4;
        v5 = *(*(&v24 + 1) + 8 * v4);
        v6 = [MEMORY[0x1E695DF90] dictionary];
        [sTrialParameterList setObject:v6 forKeyedSubscript:v5];

        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v7 = [obj objectForKeyedSubscript:v5];
        v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v21;
          do
          {
            v11 = 0;
            do
            {
              if (*v21 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v20 + 1) + 8 * v11);
              v13 = [[SRTrialParameter alloc] initWithParameter:v12];
              v14 = [sTrialParameterList objectForKeyedSubscript:v5];
              v15 = [v12 name];
              [v14 setObject:v13 forKeyedSubscript:v15];

              ++v11;
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v9);
        }

        v4 = v19 + 1;
      }

      while (v19 + 1 != v17);
      v17 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v17);
  }

  os_unfair_lock_unlock(&sTrialParameterListLock);
}

+ (void)fetchUserDefaults
{
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.spotlightui"];
  v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.searchd"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__SRResourcesManager_fetchUserDefaults__block_invoke;
  v7[3] = &unk_1E7A2B060;
  v8 = v3;
  selfCopy = self;
  v5 = fetchUserDefaults_userListOnceToken;
  v6 = v3;
  if (v5 != -1)
  {
    dispatch_once(&fetchUserDefaults_userListOnceToken, v7);
  }
}

void __39__SRResourcesManager_fetchUserDefaults__block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&sUserDefaultsParameterListLock);
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = sUserDefaultsParameterList;
  sUserDefaultsParameterList = v2;

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v4 = [&unk_1F2427B48 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v41;
    do
    {
      v7 = 0;
      do
      {
        if (*v41 != v6)
        {
          objc_enumerationMutation(&unk_1F2427B48);
        }

        v8 = *(*(&v40 + 1) + 8 * v7);
        v9 = +[SRDefaultsManager sharedDefaultsManager];
        v10 = [v9 parametersOfNamespaceWithName:v8];

        if (v10)
        {
          v12 = [&unk_1F2427B70 objectForKeyedSubscript:v8];
          v13 = [*(a1 + 32) objectForKey:v12];
          if (v13)
          {
            v14 = [v10 allValues];
            v15 = [v14 firstObject];

            v16 = [*(a1 + 40) defaultParameterWithType:objc_msgSend(v15 value:"type") name:{v13, v8}];
            [sUserDefaultsParameterList setObject:v16 forKeyedSubscript:v8];
          }
        }

        else
        {
          v12 = SRLogCategoryTrial(v11);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v46 = v8;
            _os_log_debug_impl(&dword_1AE58E000, v12, OS_LOG_TYPE_DEBUG, "User default is not set for parameter %@", buf, 0xCu);
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [&unk_1F2427B48 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v5);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v17 = [&unk_1F2427B70 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v17)
  {
    v19 = v17;
    v20 = *v37;
    *&v18 = 138412290;
    v34 = v18;
    v21 = &unk_1F2427B70;
    do
    {
      v22 = 0;
      v35 = v19;
      do
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(v21);
        }

        v23 = *(*(&v36 + 1) + 8 * v22);
        v24 = +[SRDefaultsManager sharedDefaultsManager];
        v25 = [v24 parametersOfNamespaceWithName:v23];

        if (v25)
        {
          v27 = [v21 objectForKeyedSubscript:v23];
          v28 = [*(a1 + 32) objectForKey:v27];
          if (v28)
          {
            v29 = [v25 allValues];
            [v29 firstObject];
            v30 = v20;
            v32 = v31 = v21;

            v33 = [*(a1 + 40) defaultParameterWithType:objc_msgSend(v32 value:"type") name:{v28, v23}];
            [sUserDefaultsParameterList setObject:v33 forKeyedSubscript:v23];

            v21 = v31;
            v20 = v30;
            v19 = v35;
          }
        }

        else
        {
          v27 = SRLogCategoryTrial(v26);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            *buf = v34;
            v46 = v23;
            _os_log_debug_impl(&dword_1AE58E000, v27, OS_LOG_TYPE_DEBUG, "User default is not set for parameter %@", buf, 0xCu);
          }
        }

        ++v22;
      }

      while (v19 != v22);
      v19 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v19);
  }

  os_unfair_lock_unlock(&sUserDefaultsParameterListLock);
}

+ (void)fetchOverrideList
{
  v65 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = NSHomeDirectory();
  v4 = [v2 initWithFormat:@"%@/Library/Spotlight/overrides.plist", v3];
  v5 = sOverridesPath;
  sOverridesPath = v4;

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  LODWORD(v3) = [defaultManager fileExistsAtPath:sOverridesPath];

  if (v3)
  {
    v7 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:sOverridesPath];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 objectForKeyedSubscript:@"UsingOverrides"];

      if (v9)
      {
        v10 = [v8 objectForKeyedSubscript:@"UsingOverrides"];
        sUsingOverrides = [v10 BOOLValue];

        if (sUsingOverrides == 1)
        {
          v12 = SRLogCategoryTrial(v11);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AE58E000, v12, OS_LOG_TYPE_DEFAULT, "Using overrides.plist", buf, 2u);
          }

          dictionary = [MEMORY[0x1E695DF90] dictionary];
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v46 = [&unk_1F2427BC0 countByEnumeratingWithState:&v55 objects:v64 count:16];
          if (v46)
          {
            v44 = *v56;
            do
            {
              v13 = 0;
              do
              {
                if (*v56 != v44)
                {
                  objc_enumerationMutation(&unk_1F2427BC0);
                }

                v47 = v13;
                v14 = *(*(&v55 + 1) + 8 * v13);
                dictionary2 = [MEMORY[0x1E695DF90] dictionary];
                v51 = 0u;
                v52 = 0u;
                v53 = 0u;
                v54 = 0u;
                v50 = v14;
                obj = [v8 objectForKeyedSubscript:v14];
                v15 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
                if (v15)
                {
                  v16 = v15;
                  v17 = *v52;
                  do
                  {
                    for (i = 0; i != v16; ++i)
                    {
                      if (*v52 != v17)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v19 = *(*(&v51 + 1) + 8 * i);
                      if (([v19 isEqualToString:@"SampleOverrideParameter"] & 1) == 0)
                      {
                        v20 = [v8 objectForKeyedSubscript:v50];
                        v21 = [v20 objectForKeyedSubscript:v19];
                        v22 = [v21 objectForKeyedSubscript:@"Type"];

                        if (v22)
                        {
                          if (![v22 isEqualToString:@"Boolean"])
                          {
                            if ([v22 isEqualToString:@"Long"])
                            {
                              v29 = [v8 objectForKeyedSubscript:v50];
                              v30 = [v29 objectForKeyedSubscript:v19];
                              v26 = [v30 objectForKeyedSubscript:@"Value"];

                              if (!v26)
                              {
                                goto LABEL_35;
                              }

                              v27 = +[SRParameter parameterWithLong:name:](SRParameter, "parameterWithLong:name:", [v26 longValue], v19);
                            }

                            else if ([v22 isEqualToString:@"Double"])
                            {
                              v31 = [v8 objectForKeyedSubscript:v50];
                              v32 = [v31 objectForKeyedSubscript:v19];
                              v26 = [v32 objectForKeyedSubscript:@"Value"];

                              if (!v26)
                              {
                                goto LABEL_35;
                              }

                              [v26 doubleValue];
                              v27 = [SRParameter parameterWithDouble:v19 name:?];
                            }

                            else
                            {
                              if (([v22 isEqualToString:@"String"] & 1) == 0 && !objc_msgSend(v22, "isEqualToString:", @"File"))
                              {
                                goto LABEL_42;
                              }

                              v33 = [v8 objectForKeyedSubscript:v50];
                              v34 = [v33 objectForKeyedSubscript:v19];
                              v26 = [v34 objectForKeyedSubscript:@"Value"];

                              if (!v26)
                              {
                                goto LABEL_35;
                              }

                              v27 = [SRParameter parameterWithString:v26 name:v19];
                            }

LABEL_34:
                            v28 = v27;
                            goto LABEL_36;
                          }

                          v24 = [v8 objectForKeyedSubscript:v50];
                          v25 = [v24 objectForKeyedSubscript:v19];
                          v26 = [v25 objectForKeyedSubscript:@"Value"];

                          if (v26)
                          {
                            v27 = +[SRParameter parameterWithBoolean:name:](SRParameter, "parameterWithBoolean:name:", [v26 BOOLValue], v19);
                            goto LABEL_34;
                          }

LABEL_35:
                          v28 = 0;
LABEL_36:

                          if (v28)
                          {
                            v35 = SRLogCategoryLifeCycle([dictionary2 setObject:v28 forKeyedSubscript:v19]);
                            v36 = v35;
                            v37 = fetchOverrideList_index;
                            v38 = ++fetchOverrideList_index;
                            if (v37 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
                            {
                              [v28 typeString];
                              v40 = v39 = v8;
                              *buf = 138412546;
                              v60 = v19;
                              v61 = 2112;
                              v62 = v40;
                              _os_signpost_emit_with_name_impl(&dword_1AE58E000, v36, OS_SIGNPOST_EVENT, v38, "SRResourcesFactorOverride", "Overriding factor %@ of type %@", buf, 0x16u);

                              v8 = v39;
                            }

                            goto LABEL_41;
                          }
                        }

                        else
                        {
                          v28 = SRLogCategoryTrial(v23);
                          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 138412290;
                            v60 = v19;
                            _os_log_error_impl(&dword_1AE58E000, v28, OS_LOG_TYPE_ERROR, "Overrides.plist has no type for parameter %@, skipping", buf, 0xCu);
                          }

LABEL_41:
                        }

LABEL_42:

                        continue;
                      }
                    }

                    v16 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
                  }

                  while (v16);
                }

                v41 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary2];
                [dictionary setObject:v41 forKeyedSubscript:v50];

                v13 = v47 + 1;
              }

              while (v47 + 1 != v46);
              v46 = [&unk_1F2427BC0 countByEnumeratingWithState:&v55 objects:v64 count:16];
            }

            while (v46);
          }

          v42 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];
          v43 = sOverrideList;
          sOverrideList = v42;
        }
      }
    }
  }
}

void __43__SRResourcesManager_setTrialUpdateHandler__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = SRLogCategoryTrial(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v7;
    _os_log_impl(&dword_1AE58E000, v9, OS_LOG_TYPE_DEFAULT, "Trial update handler called for namespace %@", buf, 0xCu);
  }

  v10 = [v8 getLevelForFactor:@"ExpConfig"];
  v11 = v10;
  if (!v10)
  {
    v21 = 0;
    goto LABEL_22;
  }

  v12 = SRLogCategoryTrial(v10);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_cold_1();
  }

  v13 = [v11 stringValue];
  v14 = v6;
  v15 = MEMORY[0x1E696ACB0];
  v16 = [v13 dataUsingEncoding:4];
  *buf = 0;
  v17 = [v15 JSONObjectWithData:v16 options:0 error:buf];
  v18 = *buf;

  if (!v18)
  {
    v21 = [MEMORY[0x1E695DF90] dictionary];
    if ([v14 isEqualToString:@"Spotlight"] && (objc_msgSend(v17, "objectForKeyedSubscript:", @"spotlightConfigParams"), v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
    {
      v23 = @"spotlightConfigParams";
    }

    else
    {
      if (![v14 isEqualToString:@"Mail"] || (objc_msgSend(v17, "objectForKeyedSubscript:", @"mailConfigParams"), v24 = objc_claimAutoreleasedReturnValue(), v24, !v24))
      {
        v26 = [v21 setObject:v17 forKeyedSubscript:v14];
LABEL_19:
        v20 = SRLogCategoryTrial(v26);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_cold_3();
        }

        goto LABEL_21;
      }

      v23 = @"mailConfigParams";
    }

    v25 = [v17 objectForKeyedSubscript:v23];
    [v21 setObject:v25 forKeyedSubscript:v14];

    goto LABEL_19;
  }

  v20 = SRLogCategoryTrial(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_cold_2();
  }

  v21 = 0;
LABEL_21:

LABEL_22:
  v27 = [v8 getLevelForFactor:@"factors"];
  v28 = v27;
  if (v27)
  {
    v29 = SRLogCategoryTrial(v27);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_cold_4();
    }

    v30 = [v28 fileValue];
    v31 = [v30 path];

    v32 = +[SRDefaultsManager sharedDefaultsManager];
    [v32 loadFactorsAtPath:v31 namespaceId:v7];
  }

  os_unfair_lock_lock(&sTrialParameterListLock);
  v33 = [sTrialParameterList objectForKeyedSubscript:v7];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_447;
  v40[3] = &unk_1E7A2B038;
  v34 = v7;
  v41 = v34;
  v35 = v8;
  v42 = v35;
  v36 = v21;
  v43 = v36;
  [v33 enumerateKeysAndObjectsUsingBlock:v40];

  os_unfair_lock_unlock(&sTrialParameterListLock);
  [v35 setWasLoadedSinceLaunch:1];
  v37 = +[SRDefaultsManager sharedDefaultsManager];
  [v37 didUpdateTrialNamespace:v34];

  v39 = SRLogCategoryTrial(v38);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v34;
    _os_log_impl(&dword_1AE58E000, v39, OS_LOG_TYPE_DEFAULT, "Trial update handler completed for namespace %@", buf, 0xCu);
  }
}

+ (BOOL)parsecEnabled
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.spotlightui"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:@"SBSearchDisabledDomains"];
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = [v4 containsObject:@"DOMAIN_PARSEC"] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

void __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_447(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = SRLogCategoryTrial(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_447_cold_1();
  }

  v8 = [v6 parameter];
  [v6 setHasValueFromTrial:0];
  v9 = [*(a1 + 40) getLevelForFactor:v5];
  v10 = v9;
  if (v9)
  {
    v11 = SRLogCategoryTrial(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_447_cold_2();
    }

    v12 = [v8 type];
    if (v12 <= 1)
    {
      if (!v12)
      {
        [v8 updateWithBoolean:{objc_msgSend(v10, "BOOLeanValue")}];
        goto LABEL_23;
      }

      if (v12 != 1)
      {
LABEL_60:
        v56 = SRLogCategoryTrial(v12);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_447_cold_5(v8, v56);
        }

        goto LABEL_25;
      }

      [v8 updateWithLong:{objc_msgSend(v10, "longValue")}];
      v15 = [v5 isEqualToString:@"MaxSectionsBelowSuggestions"];
      if (v15)
      {
        v16 = SRLogCategoryTrial(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_18;
        }

        goto LABEL_19;
      }
    }

    else
    {
      if (v12 != 2)
      {
        if (v12 == 3)
        {
          v13 = [v10 stringValue];
          [v8 updateWithString:v13];
          goto LABEL_21;
        }

        if (v12 == 4)
        {
          v13 = [v10 fileValue];
          v14 = [v13 path];
          [v8 updateWithFilePath:v14];

LABEL_21:
          goto LABEL_23;
        }

        goto LABEL_60;
      }

      [v10 doubleValue];
      [v8 updateWithDouble:?];
      v17 = [v5 isEqualToString:@"LocalSuggestionThreshold"];
      if (v17)
      {
        v16 = SRLogCategoryTrial(v17);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
LABEL_18:
          __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_447_cold_3();
        }

LABEL_19:

        v18 = v6;
        v19 = 0;
LABEL_24:
        [v18 setHasValueFromTrial:v19];
        goto LABEL_25;
      }
    }

LABEL_23:
    v20 = +[SRDefaultsManager sharedDefaultsManager];
    [v20 updateParameter:v5 inNamespace:*(a1 + 32) withValue:v8];

    v18 = v6;
    v19 = 1;
    goto LABEL_24;
  }

LABEL_25:
  v21 = [v8 irisName];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v5;
  }

  v24 = v23;

  v26 = SRLogCategoryTrial(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_447_cold_6();
  }

  v27 = MEMORY[0x1E696AEC0];
  v28 = [v24 substringToIndex:1];
  v29 = [v28 lowercaseString];
  v30 = [v24 substringFromIndex:1];
  v59 = [v27 stringWithFormat:@"%@%@", v29, v30];

  v31 = *(a1 + 48);
  if (v31)
  {
    v32 = [*(a1 + 40) client];
    v33 = [v31 objectForKeyedSubscript:v32];
    if (v33)
    {
      v34 = *(a1 + 48);
      [*(a1 + 40) client];
      v58 = a1;
      v35 = v24;
      v36 = v8;
      v37 = v5;
      v38 = v10;
      v40 = v39 = v6;
      v41 = [v34 objectForKeyedSubscript:v40];
      v31 = [v41 objectForKeyedSubscript:v59];

      v6 = v39;
      v10 = v38;
      v5 = v37;
      v8 = v36;
      v24 = v35;
      a1 = v58;
    }

    else
    {
      v31 = 0;
    }
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v43 = [v31 copy];
    if ([v43 count])
    {
      v44 = [v43 componentsJoinedByString:{@", "}];
    }

    else
    {
      v44 = 0;
    }

    v31 = v44;
  }

  if (v31)
  {
    v45 = SRLogCategoryTrial(isKindOfClass);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_447_cold_7();
    }

    v46 = [v8 type];
    if (v46 <= 1)
    {
      if (v46)
      {
        if (v46 == 1)
        {
          objc_opt_class();
          v48 = objc_opt_isKindOfClass();
          if (v48)
          {
            [v8 updateWithLong:{objc_msgSend(v31, "longValue")}];
            goto LABEL_59;
          }

          v57 = SRLogCategoryTrial(v48);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_74;
          }

          goto LABEL_75;
        }

LABEL_63:
        v57 = SRLogCategoryTrial(v46);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_447_cold_13(v8, v59, v57);
        }

        goto LABEL_75;
      }

      objc_opt_class();
      v51 = objc_opt_isKindOfClass();
      if (v51)
      {
        [v8 updateWithBoolean:{objc_msgSend(v31, "BOOLValue")}];
        goto LABEL_59;
      }

      v57 = SRLogCategoryTrial(v51);
      if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_75;
      }
    }

    else
    {
      switch(v46)
      {
        case 2:
          objc_opt_class();
          v49 = objc_opt_isKindOfClass();
          if (v49)
          {
            [v31 doubleValue];
            [v8 updateWithDouble:?];
            goto LABEL_59;
          }

          v57 = SRLogCategoryTrial(v49);
          if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_75;
          }

          break;
        case 3:
          objc_opt_class();
          v50 = objc_opt_isKindOfClass();
          if (v50)
          {
            [v8 updateWithString:v31];
            goto LABEL_59;
          }

          v57 = SRLogCategoryTrial(v50);
          if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_75;
          }

          break;
        case 4:
          objc_opt_class();
          v47 = objc_opt_isKindOfClass();
          if (v47)
          {
            [v8 updateWithFilePath:v31];
LABEL_59:
            +[SRDefaultsManager sharedDefaultsManager];
            v52 = v5;
            v53 = v10;
            v55 = v54 = v6;
            [v55 updateParameter:v52 inNamespace:*(a1 + 32) withValue:v8];

            v6 = v54;
            v10 = v53;
            v5 = v52;
            [v6 setHasValueFromTrial:1];
            goto LABEL_76;
          }

          v57 = SRLogCategoryTrial(v47);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            break;
          }

LABEL_75:

          goto LABEL_76;
        default:
          goto LABEL_63;
      }
    }

LABEL_74:
    __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_447_cold_8();
    goto LABEL_75;
  }

LABEL_76:
}

- (SRResourcesManager)initWithOptions:(id)options
{
  v6.receiver = self;
  v6.super_class = SRResourcesManager;
  v3 = [(SRResourcesManager *)&v6 init];
  if (v3)
  {
    +[SRResourcesManager fetchParameterList];
  }

  else
  {
    v4 = SRLogCategoryGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SRResourcesManager initWithOptions:v4];
    }
  }

  return v3;
}

+ (unint64_t)lastLoadedBundleVersion
{
  v2 = +[SRDefaultsManager lastLoadedBundleVersion];
  v3 = [v2 componentsSeparatedByString:@"."];
  v4 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v4 setNumberStyle:1];
  firstObject = [v3 firstObject];
  v6 = [v4 numberFromString:firstObject];

  unsignedLongLongValue = [v6 unsignedLongLongValue];
  return unsignedLongLongValue;
}

+ (id)defaultParameterWithType:(int64_t)type value:(id)value name:(id)name
{
  valueCopy = value;
  nameCopy = name;
  if (valueCopy)
  {
    if (type <= 1)
    {
      if (type)
      {
        if (type == 1)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = +[SRParameter parameterWithLong:name:](SRParameter, "parameterWithLong:name:", [valueCopy longValue], nameCopy);
            goto LABEL_19;
          }
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = +[SRParameter parameterWithBoolean:name:](SRParameter, "parameterWithBoolean:name:", [valueCopy BOOLValue], nameCopy);
          goto LABEL_19;
        }
      }
    }

    else
    {
      switch(type)
      {
        case 2:
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [valueCopy doubleValue];
            v9 = [SRParameter parameterWithDouble:nameCopy name:?];
            goto LABEL_19;
          }

          break;
        case 3:
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [SRParameter parameterWithString:valueCopy name:nameCopy];
            goto LABEL_19;
          }

          break;
        case 4:
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [SRParameter parameterWithFilePath:valueCopy name:nameCopy];
            goto LABEL_19;
          }

          break;
      }
    }
  }

  v9 = [SRParameter nilParameterWithType:type];
LABEL_19:
  v10 = v9;

  return v10;
}

+ (void)updateDefaultParameter:(id)parameter withValue:(id)value
{
  parameterCopy = parameter;
  valueCopy = value;
  type = [parameterCopy type];
  if (valueCopy)
  {
    if (type <= 1)
    {
      if (type)
      {
        if (type == 1)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [parameterCopy updateWithLong:{objc_msgSend(valueCopy, "longValue")}];
          }
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [parameterCopy updateWithBoolean:{objc_msgSend(valueCopy, "BOOLValue")}];
        }
      }
    }

    else
    {
      switch(type)
      {
        case 2:
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [valueCopy doubleValue];
            [parameterCopy updateWithDouble:?];
          }

          break;
        case 3:
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [parameterCopy updateWithString:valueCopy];
          }

          break;
        case 4:
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [parameterCopy updateWithFilePath:valueCopy];
          }

          break;
      }
    }
  }
}

+ (int64_t)parameterTypeFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"Boolean"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"Long"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"Double"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"String"])
  {
    v4 = 3;
  }

  else
  {
    v5 = [stringCopy isEqualToString:@"File"];
    if (v5)
    {
      v4 = 4;
    }

    else
    {
      v6 = SRLogCategoryTrial(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        +[SRResourcesManager parameterTypeFromString:];
      }

      v4 = -1;
    }
  }

  return v4;
}

+ (id)trialOverrideList
{
  v2 = [sOverrideList copy];

  return v2;
}

+ (void)dumpParameterList:(id)list
{
  v38 = *MEMORY[0x1E69E9840];
  listCopy = list;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = SRLogCategoryGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AE58E000, v5, OS_LOG_TYPE_DEFAULT, "entry is a dictionary:", buf, 2u);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    allKeys = [listCopy allKeys];
    v7 = [allKeys countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v29;
      *&v8 = 138412290;
      v23 = v8;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(allKeys);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          v13 = [listCopy objectForKey:{v12, v23}];
          if (v13)
          {
            v14 = SRLogCategoryGeneral();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v23;
              v33 = v12;
              _os_log_impl(&dword_1AE58E000, v14, OS_LOG_TYPE_DEFAULT, "dumping entry [%@]:", buf, 0xCu);
            }

            [self dumpParameterList:v13];
          }
        }

        v9 = [allKeys countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v9);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = SRLogCategoryGeneral();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AE58E000, v15, OS_LOG_TYPE_DEFAULT, "entry is an array:", buf, 2u);
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      allKeys = listCopy;
      v16 = [allKeys countByEnumeratingWithState:&v24 objects:v36 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v25;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v25 != v18)
            {
              objc_enumerationMutation(allKeys);
            }

            [self dumpParameterList:*(*(&v24 + 1) + 8 * j)];
          }

          v17 = [allKeys countByEnumeratingWithState:&v24 objects:v36 count:16];
        }

        while (v17);
      }
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      allKeys = SRLogCategoryGeneral();
      v21 = os_log_type_enabled(allKeys, OS_LOG_TYPE_DEFAULT);
      if (isKindOfClass)
      {
        if (v21)
        {
          *buf = 138412290;
          v33 = listCopy;
          _os_log_impl(&dword_1AE58E000, allKeys, OS_LOG_TYPE_DEFAULT, "entry is a parameter = (%@)", buf, 0xCu);
        }
      }

      else if (v21)
      {
        *buf = 138412546;
        v33 = objc_opt_class();
        v34 = 2112;
        v35 = listCopy;
        v22 = v33;
        _os_log_impl(&dword_1AE58E000, allKeys, OS_LOG_TYPE_DEFAULT, "entry has type %@ and is (%@)", buf, 0x16u);
      }
    }
  }
}

- (id)resourcesForClient:(id)client locale:(id)locale options:(id)options
{
  v28 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  localeCopy = locale;
  optionsCopy = options;
  v11 = optionsCopy;
  if (optionsCopy)
  {
    optionsCopy = [optionsCopy objectForKeyedSubscript:@"SRResourcesOwner"];
    v12 = optionsCopy;
  }

  else
  {
    v12 = 0;
  }

  v13 = SRLogCategoryLifeCycle(optionsCopy);
  v14 = v13;
  v15 = resourcesForClient_locale_options__index;
  v16 = ++resourcesForClient_locale_options__index;
  if (v15 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
  {
    goto LABEL_13;
  }

  uTF8String = [clientCopy UTF8String];
  if (localeCopy)
  {
    localeIdentifier = [localeCopy localeIdentifier];
    uTF8String2 = [localeIdentifier UTF8String];
    if (v12)
    {
LABEL_8:
      uTF8String3 = [v12 UTF8String];
      goto LABEL_11;
    }
  }

  else
  {
    uTF8String2 = "none";
    if (v12)
    {
      goto LABEL_8;
    }
  }

  uTF8String3 = "unknown";
LABEL_11:
  v22 = 136315650;
  v23 = uTF8String;
  v24 = 2080;
  v25 = uTF8String2;
  v26 = 2080;
  v27 = uTF8String3;
  _os_signpost_emit_with_name_impl(&dword_1AE58E000, v14, OS_SIGNPOST_EVENT, v16, "SRResourcesCreate", "client=%s, locale=%s, caller=%s", &v22, 0x20u);
  if (localeCopy)
  {
  }

LABEL_13:

  v20 = [[SRResources alloc] initWithClient:clientCopy locale:localeCopy options:v11];

  return v20;
}

- (id)resourcesForClient:(id)client options:(id)options
{
  v6 = MEMORY[0x1E695DF58];
  optionsCopy = options;
  clientCopy = client;
  currentLocale = [v6 currentLocale];
  v10 = [(SRResourcesManager *)self resourcesForClient:clientCopy locale:currentLocale options:optionsCopy];

  return v10;
}

- (void)refreshTrialForClient:(id)client
{
  clientCopy = client;
  if ([clientCopy isEqualToString:@"Spotlight"])
  {
    v3 = +[SSTrialManager sharedSpotlightModelTrialManager];
    v4 = v3;
    if (v3)
    {
      [v3 refreshTrackingId];
    }

    v5 = +[SSTrialManager sharedSpotlightUITrialManager];

    if (v5)
    {
      [v5 refreshTrackingId];
    }

    v6 = +[SSTrialManager sharedSpotlightRankingTrialManager];

    if (v6)
    {
      [v6 refreshTrackingId];
    }

    v7 = +[SSTrialManager sharedSpotlightPolicyTrialManager];

    if (!v7)
    {
      goto LABEL_10;
    }

LABEL_9:
    [v7 refreshTrackingId];
LABEL_10:

    goto LABEL_11;
  }

  if ([clientCopy isEqualToString:@"SpotlightKnowledge"])
  {
    v8 = +[SSTrialManager sharedSpotlightKnowledgeTrialManager];
    goto LABEL_18;
  }

  if ([clientCopy isEqualToString:@"Mail"])
  {
    v8 = +[SSTrialManager sharedSpotlightUITrialManager];
LABEL_18:
    v7 = v8;
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_11:
}

- (void)loadDataSource:(id)source force:(BOOL)force
{
  sourceCopy = source;
  v5 = +[SRDefaultsManager sharedDefaultsManager];
  currentNamespaces = [v5 currentNamespaces];

  if (!currentNamespaces)
  {
    goto LABEL_19;
  }

  v7 = [currentNamespaces objectForKeyedSubscript:sourceCopy];
  v8 = [v7 isEqualToString:@"SPOTLIGHT_BLENDING_MODEL"];

  if (!v8)
  {
    v10 = [currentNamespaces objectForKeyedSubscript:sourceCopy];
    v11 = [v10 isEqualToString:@"SPOTLIGHT_UI"];

    if (v11)
    {
      v9 = +[SSTrialManager sharedSpotlightUITrialManager];
      goto LABEL_8;
    }

    v12 = [currentNamespaces objectForKeyedSubscript:sourceCopy];
    v13 = [v12 isEqualToString:@"SPOTLIGHT_RANKING_RULES"];

    if (v13)
    {
      v9 = +[SSTrialManager sharedSpotlightRankingTrialManager];
      goto LABEL_8;
    }

    v15 = [currentNamespaces objectForKeyedSubscript:sourceCopy];
    v16 = [v15 isEqualToString:@"SPOTLIGHT_RANKING_POLICY"];

    if (v16)
    {
      v17 = +[SSTrialManager sharedSpotlightPolicyTrialManager];
LABEL_16:
      v14 = v17;
      goto LABEL_20;
    }

    v18 = [currentNamespaces objectForKeyedSubscript:sourceCopy];
    v19 = [v18 isEqualToString:@"SPOTLIGHT_KNOWLEDGE_BEHAVIOR"];

    if (v19)
    {
      v17 = +[SSTrialManager sharedSpotlightKnowledgeTrialManager];
      goto LABEL_16;
    }

    v20 = [currentNamespaces objectForKeyedSubscript:sourceCopy];
    v21 = [v20 isEqualToString:@"SPOTLIGHT_MAIL_APP"];

    if (v21)
    {
      v9 = +[SSTrialManager sharedSpotlightMailTrialManager];
      goto LABEL_8;
    }

LABEL_19:
    v14 = 0;
    goto LABEL_20;
  }

  v9 = +[SSTrialManager sharedSpotlightModelTrialManager];
LABEL_8:
  v14 = v9;
  if (v9 && (force || ([v9 wasLoadedSinceLaunch] & 1) == 0))
  {
    [v14 loadWithUpdateHandler:sTrialUpdateHandler];
  }

LABEL_20:
}

- (void)loadAllParametersForClient:(id)client locales:(id)locales options:(id)options
{
  v64 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  localesCopy = locales;
  v9 = [options objectForKey:@"forceLoad"];
  bOOLValue = [v9 BOOLValue];

  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v11 = localesCopy;
  v12 = [v11 countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v58;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v58 != v14)
        {
          objc_enumerationMutation(v11);
        }

        localeIdentifier = [*(*(&v57 + 1) + 8 * i) localeIdentifier];
        v17 = normalizedLocaleForIdentifier(localeIdentifier);
        v18 = languageCodeForLocale(v17);
        [v10 addObject:v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v13);
  }

  v21 = 0x1E7A2A000uLL;
  v44 = v11;
  if (SRIsRunningInServer(v19, v20) & 1) != 0 || (+[SRDefaultsManager sharedDefaultsManager](SRDefaultsManager, "sharedDefaultsManager"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 hasTestAssets], v22, (v23))
  {
    v24 = +[SRDefaultsManager sharedDefaultsManager];
    v25 = [v24 loadAssetsForLanguage:@"root" reload:0 force:bOOLValue];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v26 = v10;
    v27 = [v26 countByEnumeratingWithState:&v51 objects:v62 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v52;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v52 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v51 + 1) + 8 * j);
          if (([v31 isEqualToString:@"root"] & 1) == 0)
          {
            [*(v21 + 2856) sharedDefaultsManager];
            v33 = v32 = v21;
            v34 = [v33 loadAssetsForLanguage:v31 reload:0 force:bOOLValue];

            v21 = v32;
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v51 objects:v62 count:16];
      }

      while (v28);
    }
  }

  else
  {
    [v10 addObject:@"root"];
    v35 = +[SRDefaultsManager sharedDefaultsManager];
    allObjects = [v10 allObjects];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __65__SRResourcesManager_loadAllParametersForClient_locales_options___block_invoke;
    v55[3] = &unk_1E7A2B088;
    v56 = v10;
    [v35 refreshCacheForLanguages:allObjects force:bOOLValue completion:v55];

    v26 = v56;
  }

  sharedDefaultsManager = [*(v21 + 2856) sharedDefaultsManager];
  v38 = [sharedDefaultsManager currentNamespacesForClient:clientCopy];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v39 = v38;
  v40 = [v39 countByEnumeratingWithState:&v47 objects:v61 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v48;
    do
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v48 != v42)
        {
          objc_enumerationMutation(v39);
        }

        [(SRResourcesManager *)self loadDataSource:*(*(&v47 + 1) + 8 * k) force:0];
      }

      v41 = [v39 countByEnumeratingWithState:&v47 objects:v61 count:16];
    }

    while (v41);
  }
}

void __65__SRResourcesManager_loadAllParametersForClient_locales_options___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SRLogCategoryAssets(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __65__SRResourcesManager_loadAllParametersForClient_locales_options___block_invoke_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1AE58E000, v5, OS_LOG_TYPE_DEFAULT, "Refreshed cache for %@", &v7, 0xCu);
  }
}

- (void)loadAllParametersForClient:(id)client locale:(id)locale options:(id)options
{
  v14 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  v8 = MEMORY[0x1E695DEC8];
  optionsCopy = options;
  localeCopy2 = locale;
  clientCopy = client;
  v12 = [v8 arrayWithObjects:&localeCopy count:1];

  [(SRResourcesManager *)self loadAllParametersForClient:clientCopy locales:v12 options:optionsCopy, localeCopy, v14];
}

- (void)loadAllParametersForClient:(id)client
{
  v4 = MEMORY[0x1E695DF58];
  clientCopy = client;
  currentLocale = [v4 currentLocale];
  [(SRResourcesManager *)self loadAllParametersForClient:clientCopy locale:currentLocale options:0];
}

- (void)loadAllParameters
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [&unk_1F2427BC0 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(&unk_1F2427BC0);
        }

        [(SRResourcesManager *)self loadAllParametersForClient:*(*(&v7 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [&unk_1F2427BC0 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)fetchAllParametersForLanguages:(id)languages
{
  v19 = *MEMORY[0x1E69E9840];
  languagesCopy = languages;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = languagesCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = normalizedLocaleForIdentifier(*(*(&v14 + 1) + 8 * v10));
        v12 = languageCodeForLocale(v11);
        [v5 addObject:{v12, v14}];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [v5 addObject:@"root"];
  v13 = +[SRDefaultsManager sharedDefaultsManager];
  [v13 requestAssetsForLanguages:v5 removeExisting:1 force:0];

  [(SRResourcesManager *)self loadAllParameters];
}

- (id)allLoadedAssets
{
  v2 = +[SRDefaultsManager sharedDefaultsManager];
  allLoadedAssets = [v2 allLoadedAssets];

  return allLoadedAssets;
}

- (id)assetConfigDump
{
  v2 = +[SRDefaultsManager sharedDefaultsManager];
  assetConfigDump = [v2 assetConfigDump];

  return assetConfigDump;
}

- (id)trialConfigDump
{
  v2 = objc_alloc(MEMORY[0x1E696AD60]);
  v3 = +[SRDefaultsManager sharedDefaultsManager];
  trialConfigDump = [v3 trialConfigDump];
  v5 = [v2 initWithString:trialConfigDump];

  os_unfair_lock_lock(&sTrialParameterListLock);
  [v5 appendFormat:@"\nFactors:\n%@", sTrialParameterList];
  os_unfair_lock_unlock(&sTrialParameterListLock);
  [v5 appendFormat:@"\n\nOverrides:\n%@", sOverrideList];

  return v5;
}

- (BOOL)overrideFactor:(id)factor client:(id)client type:(id)type value:(id)value
{
  v36[1] = *MEMORY[0x1E69E9840];
  clientCopy = client;
  typeCopy = type;
  valueCopy = value;
  v12 = MEMORY[0x1E695DFF8];
  v13 = sOverridesPath;
  factorCopy = factor;
  v15 = [v12 fileURLWithPath:v13];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v17 = [defaultManager fileExistsAtPath:sOverridesPath];

  if ((v17 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v19 = sOverridesPath;
    v35 = *MEMORY[0x1E696A3A0];
    v36[0] = *MEMORY[0x1E696A388];
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    [defaultManager2 createFileAtPath:v19 contents:0 attributes:v20];
  }

  v21 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v15];
  v22 = [v21 mutableCopy];

  if (!v22)
  {
    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v23 = [v22 objectForKeyedSubscript:clientCopy];

  if (!v23)
  {
    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v22 setObject:v24 forKeyedSubscript:clientCopy];
  }

  v25 = valueCopy;
  if ([typeCopy isEqualToString:@"Boolean"])
  {
    v26 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{objc_msgSend(v25, "BOOLValue")}];
LABEL_13:
    v27 = v26;

    goto LABEL_14;
  }

  if ([typeCopy isEqualToString:@"Long"])
  {
    v26 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLong:{objc_msgSend(v25, "integerValue")}];
    goto LABEL_13;
  }

  v27 = v25;
  if ([typeCopy isEqualToString:@"Double"])
  {
    v28 = objc_alloc(MEMORY[0x1E696AD98]);
    [v25 doubleValue];
    v26 = [v28 initWithDouble:?];
    goto LABEL_13;
  }

LABEL_14:
  v33[0] = @"Type";
  v33[1] = @"Value";
  v34[0] = typeCopy;
  v34[1] = v27;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
  v30 = [v22 objectForKeyedSubscript:clientCopy];
  [v30 setObject:v29 forKeyedSubscript:factorCopy];

  v31 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:1];
  [v22 setObject:v31 forKeyedSubscript:@"UsingOverrides"];

  LOBYTE(v31) = [v22 writeToURL:v15 error:0];
  return v31;
}

- (void)handleAssetsCommand:(id)command
{
  v6 = 0;
  [SRXPCListener handleMessage:command error:&v6];
  v3 = v6;
  v4 = v3;
  if (v3)
  {
    v5 = SRLogCategoryAssets(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SRResourcesManager handleAssetsCommand:];
    }
  }
}

+ (id)trialParameterList
{
  os_unfair_lock_lock(&sTrialParameterListLock);
  v2 = [sTrialParameterList copy];
  os_unfair_lock_unlock(&sTrialParameterListLock);

  return v2;
}

void __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_447_cold_5(void *a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  [a1 type];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1AE58E000, a2, OS_LOG_TYPE_ERROR, "loadDataSource: invalid SRParameter type %ld", v3, 0xCu);
}

void __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_447_cold_13(void *a1, uint64_t a2, NSObject *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 type];
  OUTLINED_FUNCTION_0_0();
  v6 = a2;
  _os_log_error_impl(&dword_1AE58E000, a3, OS_LOG_TYPE_ERROR, "loadDataSource: invalid SRParameter type %ld for exp config %@", v5, 0x16u);
}

void __65__SRResourcesManager_loadAllParametersForClient_locales_options___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1AE58E000, log, OS_LOG_TYPE_ERROR, "Error refreshing cache for languages %@: %@", &v4, 0x16u);
}

@end