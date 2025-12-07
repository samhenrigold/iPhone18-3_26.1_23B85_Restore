@interface CDMServiceCenterUtils
+ (BOOL)isHostedInDaemon;
+ (BOOL)isServiceCenterEnabled:(id)enabled;
+ (BOOL)needEmbeddingConfigsFor:(id)for;
+ (id)getAvailableServiceGraphs:(id)graphs;
+ (id)tryInitDAGServices:(id)services;
@end

@implementation CDMServiceCenterUtils

+ (BOOL)isHostedInDaemon
{
  if (isHostedInDaemon_once != -1)
  {
    dispatch_once(&isHostedInDaemon_once, &__block_literal_global_1346);
  }

  return isHostedInDaemon_isHostedInDaemon;
}

+ (id)getAvailableServiceGraphs:(id)graphs
{
  v24 = *MEMORY[0x1E69E9840];
  graphsCopy = graphs;
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  availableServiceGraphs = [graphsCopy availableServiceGraphs];
  v6 = [v4 initWithCapacity:{objc_msgSend(availableServiceGraphs, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  availableServiceGraphs2 = [graphsCopy availableServiceGraphs];
  v8 = [availableServiceGraphs2 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(availableServiceGraphs2);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (NSClassFromString(v12))
        {
          [v6 addObject:v12];
        }

        else
        {
          v13 = CDMOSLoggerForCategory(3);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v20 = "+[CDMServiceCenterUtils getAvailableServiceGraphs:]";
            v21 = 2112;
            v22 = v12;
            _os_log_impl(&dword_1DC287000, v13, OS_LOG_TYPE_INFO, "%s Class not found: %@", buf, 0x16u);
          }
        }
      }

      v9 = [availableServiceGraphs2 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }

  return v6;
}

void __41__CDMServiceCenterUtils_isHostedInDaemon__block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  isHostedInDaemon_isHostedInDaemon = 0;
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  v2 = CDMOSLoggerForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315394;
    v4 = "+[CDMServiceCenterUtils isHostedInDaemon]_block_invoke";
    v5 = 2112;
    v6 = v1;
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s CDM's ServiceCenter is hosted in process: %@", &v3, 0x16u);
  }

  isHostedInDaemon_isHostedInDaemon = [v1 isEqualToString:@"assistant_cdmd"];
}

+ (BOOL)needEmbeddingConfigsFor:(id)for
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  forCopy = for;
  v4 = [forCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(forCopy);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [forCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

+ (id)tryInitDAGServices:(id)services
{
  v38 = *MEMORY[0x1E69E9840];
  servicesCopy = services;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  availableServiceGraphs = [servicesCopy availableServiceGraphs];
  v6 = [availableServiceGraphs countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(availableServiceGraphs);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = NSClassFromString(v10);
        if (v11)
        {
          requiredDAGServices = [(objc_class *)v11 requiredDAGServices];
          [v4 unionSet:requiredDAGServices];
        }

        else
        {
          requiredDAGServices = CDMOSLoggerForCategory(3);
          if (os_log_type_enabled(requiredDAGServices, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v34 = "+[CDMServiceCenterUtils tryInitDAGServices:]";
            v35 = 2112;
            v36 = v10;
            _os_log_impl(&dword_1DC287000, requiredDAGServices, OS_LOG_TYPE_INFO, "%s Class not found: %@", buf, 0x16u);
          }
        }
      }

      v7 = [availableServiceGraphs countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v7);
  }

  v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = v4;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * j);
        v19 = NSClassFromString(v18);
        if (v19)
        {
          v20 = [[v19 alloc] initWithConfig:servicesCopy];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v23 addObject:v20];
          }

          else
          {
            v21 = CDMOSLoggerForCategory(3);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v34 = "+[CDMServiceCenterUtils tryInitDAGServices:]";
              v35 = 2112;
              v36 = v18;
              _os_log_impl(&dword_1DC287000, v21, OS_LOG_TYPE_INFO, "%s [WARN]: Unexpected class type in config: %@", buf, 0x16u);
            }
          }
        }

        else
        {
          v20 = CDMOSLoggerForCategory(3);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v34 = "+[CDMServiceCenterUtils tryInitDAGServices:]";
            v35 = 2112;
            v36 = v18;
            _os_log_impl(&dword_1DC287000, v20, OS_LOG_TYPE_INFO, "%s Class not found: %@", buf, 0x16u);
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v15);
  }

  return v23;
}

+ (BOOL)isServiceCenterEnabled:(id)enabled
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = +[CDMFeatureFlags isSiriMiniEnabled];
  v4 = CDMOSLoggerForCategory(3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315138;
      v8 = "+[CDMServiceCenterUtils isServiceCenterEnabled:]";
      _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s FeatureFlag: SiriNL-> sirimini_nl_on_device is ON.", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315138;
    v8 = "+[CDMServiceCenterUtils isServiceCenterEnabled:]";
    _os_log_error_impl(&dword_1DC287000, v5, OS_LOG_TYPE_ERROR, "%s [ERR]: FeatureFlag: SiriNL-> sirimini_nl_on_device is OFF. CDM will not be able to process any request.", &v7, 0xCu);
  }

  return v3;
}

@end