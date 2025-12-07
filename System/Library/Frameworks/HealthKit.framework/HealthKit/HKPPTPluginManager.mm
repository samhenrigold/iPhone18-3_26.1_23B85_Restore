@interface HKPPTPluginManager
+ (id)sharedPluginManager;
- (HKPPTPluginManager)init;
- (id)builtinTests;
- (void)_loadPPTBundles;
- (void)registerDriverClass:(Class)class;
@end

@implementation HKPPTPluginManager

+ (id)sharedPluginManager
{
  if (sharedPluginManager_onceToken != -1)
  {
    +[HKPPTPluginManager sharedPluginManager];
  }

  v3 = sharedPluginManager_sharedManager;

  return v3;
}

uint64_t __41__HKPPTPluginManager_sharedPluginManager__block_invoke()
{
  v0 = objc_alloc_init(HKPPTPluginManager);
  v1 = sharedPluginManager_sharedManager;
  sharedPluginManager_sharedManager = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (HKPPTPluginManager)init
{
  v8.receiver = self;
  v8.super_class = HKPPTPluginManager;
  v2 = [(HKPPTPluginManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    testClasses = v2->_testClasses;
    v2->_testClasses = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    builtinTests = v2->_builtinTests;
    v2->_builtinTests = v5;

    [(HKPPTPluginManager *)v2 _loadPPTBundles];
  }

  return v2;
}

- (id)builtinTests
{
  v2 = [(NSMutableDictionary *)self->_builtinTests copy];

  return v2;
}

- (void)registerDriverClass:(Class)class
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(class);
  v5 = v4;
  if (v4)
  {
    supportedTestType = [v4 supportedTestType];
    if (supportedTestType)
    {
      v8 = [(NSMutableDictionary *)self->_testClasses objectForKeyedSubscript:supportedTestType];
      _HKInitializeLogging(v8, v9);
      v12 = HKLogTesting(v10, v11);
      builtinTestDefinitions = v12;
      if (v8)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v14 = [(NSMutableDictionary *)self->_testClasses objectForKeyedSubscript:supportedTestType];
          *buf = 138543874;
          classCopy2 = class;
          v39 = 2114;
          v40 = supportedTestType;
          v41 = 2114;
          v42 = v14;
          _os_log_error_impl(&dword_19197B000, builtinTestDefinitions, OS_LOG_TYPE_ERROR, "Loaded PPT driver %{public}@ supports %{public}@, but we already have a driver (%{public}@) supporting that type.", buf, 0x20u);
        }
      }

      else
      {
        v17 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);

        if (v17)
        {
          v20 = HKLogTesting(v18, v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            classCopy2 = class;
            v39 = 2114;
            v40 = supportedTestType;
            _os_log_impl(&dword_19197B000, v20, OS_LOG_TYPE_INFO, "Loaded PPT driver %{public}@ for %{public}@", buf, 0x16u);
          }
        }

        [(NSMutableDictionary *)self->_testClasses setObject:class forKeyedSubscript:supportedTestType];
        builtinTestDefinitions = [v5 builtinTestDefinitions];
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v21 = [builtinTestDefinitions countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = supportedTestType;
          v30 = v5;
          v24 = *v33;
          v25 = MEMORY[0x1E695E118];
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v33 != v24)
              {
                objc_enumerationMutation(builtinTestDefinitions);
              }

              v27 = *(*(&v32 + 1) + 8 * i);
              v28 = [builtinTestDefinitions objectForKeyedSubscript:v27, v30];
              v29 = [v28 mutableCopy];

              [v29 setObject:v27 forKeyedSubscript:@"testName"];
              [v29 setObject:v23 forKeyedSubscript:@"testType"];
              [v29 setObject:v25 forKeyedSubscript:@"enabled"];
              [(NSMutableDictionary *)self->_builtinTests setObject:v29 forKeyedSubscript:v27];
            }

            v22 = [builtinTestDefinitions countByEnumeratingWithState:&v32 objects:v36 count:16];
          }

          while (v22);
          v5 = v30;
          supportedTestType = v23;
        }
      }
    }

    else
    {
      _HKInitializeLogging(0, v6);
      builtinTestDefinitions = HKLogTesting(v15, v16);
      if (os_log_type_enabled(builtinTestDefinitions, OS_LOG_TYPE_ERROR))
      {
        [(HKPPTPluginManager *)class registerDriverClass:builtinTestDefinitions];
      }
    }
  }
}

- (void)_loadPPTBundles
{
  v51[2] = *MEMORY[0x1E69E9840];
  v51[0] = @"/AppleInternal/Library/Health/Plugins";
  v51[1] = @"/AppleInternal/Library/Health/Plugins/PPTPlugins";
  v3 = 0x1E695D000uLL;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v4 = v46 = 0u;
  v29 = [v4 countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v29)
  {
    v5 = *v44;
    v6 = 0x1E695D000uLL;
    v7 = off_1E7375000;
    v8 = &selRef_setConditions_;
    v31 = v4;
    v28 = *v44;
    do
    {
      v9 = 0;
      do
      {
        if (*v44 != v5)
        {
          objc_enumerationMutation(v4);
        }

        v30 = v9;
        v10 = *(v6 + 4088);
        v11 = [GSSystemRootDirectory() stringByAppendingPathComponent:*(*(&v43 + 1) + 8 * v9)];
        v12 = [v10 fileURLWithPath:v11];

        v13 = v7[105];
        v49 = v8[469];
        v14 = [*(v3 + 3784) arrayWithObjects:&v49 count:1];
        v42 = 0;
        v33 = v12;
        v15 = [(__objc2_class *)v13 loadPrincipalClassesConformingToProtocols:v14 fromBundlesInDirectoryAtURL:v12 skipLoadedBundles:0 error:&v42];
        v32 = v42;

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v16 = v15;
        v17 = [v16 countByEnumeratingWithState:&v38 objects:v48 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v39;
          while (2)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v39 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = objc_alloc_init(*(*(&v38 + 1) + 8 * i));
              if (!v21)
              {

                v4 = v31;
                goto LABEL_25;
              }

              v22 = v21;
              v36 = 0u;
              v37 = 0u;
              v34 = 0u;
              v35 = 0u;
              pPTDriverClasses = [v21 PPTDriverClasses];
              v24 = [pPTDriverClasses countByEnumeratingWithState:&v34 objects:v47 count:16];
              if (v24)
              {
                v25 = v24;
                v26 = *v35;
                do
                {
                  for (j = 0; j != v25; ++j)
                  {
                    if (*v35 != v26)
                    {
                      objc_enumerationMutation(pPTDriverClasses);
                    }

                    [(HKPPTPluginManager *)self registerDriverClass:*(*(&v34 + 1) + 8 * j), v28];
                  }

                  v25 = [pPTDriverClasses countByEnumeratingWithState:&v34 objects:v47 count:16];
                }

                while (v25);
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v38 objects:v48 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        v9 = v30 + 1;
        v4 = v31;
        v3 = 0x1E695D000;
        v5 = v28;
        v6 = 0x1E695D000;
        v7 = off_1E7375000;
        v8 = &selRef_setConditions_;
      }

      while (v30 + 1 != v29);
      v29 = [v31 countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v29);
  }

LABEL_25:
}

- (void)registerDriverClass:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Loaded PPT driver %{public}@ did not return a supportedTestType.", &v2, 0xCu);
}

@end