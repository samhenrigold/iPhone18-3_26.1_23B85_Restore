@interface FedStatsPluginCoreConsentCheck
+ (BOOL)checkConsentConfigurationItem:(id)item;
+ (BOOL)isConsentedForUseCase:(id)case;
+ (id)sharedInstance;
- (FedStatsPluginCoreConsentCheck)initWithConsentConfiguration:(id)configuration;
@end

@implementation FedStatsPluginCoreConsentCheck

- (FedStatsPluginCoreConsentCheck)initWithConsentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = FedStatsPluginCoreConsentCheck;
  v6 = [(FedStatsPluginCoreConsentCheck *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_consentConfiguration, configuration);
  }

  return v7;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[FedStatsPluginCoreConsentCheck sharedInstance];
  }

  v3 = sharedInstance_consentChecker;

  return v3;
}

void __48__FedStatsPluginCoreConsentCheck_sharedInstance__block_invoke()
{
  v33[6] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = +[FedStatsPluginLog logger];
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG);
  if (!v0)
  {
    if (v2)
    {
      __48__FedStatsPluginCoreConsentCheck_sharedInstance__block_invoke_cold_7();
    }

    goto LABEL_36;
  }

  if (v2)
  {
    __57__FedStatsPluginClientValidator_sharedInstanceWithError___block_invoke_cold_1(v0, v1);
  }

  v1 = [v0 URLForResource:@"FedStatsPluginCoreConsentConfiguration" withExtension:@"plist"];
  if (!v1)
  {
    v3 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __48__FedStatsPluginCoreConsentCheck_sharedInstance__block_invoke_cold_6();
    }

    goto LABEL_35;
  }

  v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v1];
  if (!v3)
  {
    v18 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      __48__FedStatsPluginCoreConsentCheck_sharedInstance__block_invoke_cold_5();
    }

    goto LABEL_35;
  }

  v33[0] = @"needsDnU";
  v33[1] = @"needsLocation";
  v33[2] = @"needsIHA";
  v33[3] = @"needsIDV";
  v33[4] = @"needsCNAI";
  v33[5] = @"needsCommSafety";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:6];
  v5 = sharedInstance_kFedStatsPluginCoreConsentConfigurationAllowedKeys;
  sharedInstance_kFedStatsPluginCoreConsentConfigurationAllowedKeys = v4;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = v3;
  v6 = [v3 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = v6;
  v8 = *v28;
  v21 = *v28;
  while (2)
  {
    v9 = 0;
    v22 = v7;
    do
    {
      if (*v28 != v8)
      {
        objc_enumerationMutation(v3);
      }

      v10 = *(*(&v27 + 1) + 8 * v9);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v11 = +[FedStatsPluginLog logger];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          __48__FedStatsPluginCoreConsentCheck_sharedInstance__block_invoke_cold_2();
        }

        goto LABEL_34;
      }

      v11 = [v3 objectForKey:v10];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v20 = +[FedStatsPluginLog logger];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          __48__FedStatsPluginCoreConsentCheck_sharedInstance__block_invoke_cold_3();
        }

LABEL_34:
        goto LABEL_35;
      }

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v11 = v11;
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v11);
            }

            if (([sharedInstance_kFedStatsPluginCoreConsentConfigurationAllowedKeys containsObject:{*(*(&v23 + 1) + 8 * i), v21}] & 1) == 0)
            {
              v19 = +[FedStatsPluginLog logger];
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                __48__FedStatsPluginCoreConsentCheck_sharedInstance__block_invoke_cold_4();
              }

              goto LABEL_34;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      ++v9;
      v8 = v21;
    }

    while (v9 != v22);
    v7 = [v3 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_23:

  v16 = [[FedStatsPluginCoreConsentCheck alloc] initWithConsentConfiguration:v3];
  v17 = sharedInstance_consentChecker;
  sharedInstance_consentChecker = v16;

LABEL_35:
LABEL_36:
}

+ (BOOL)checkConsentConfigurationItem:(id)item
{
  itemCopy = item;
  v4 = [itemCopy objectForKey:@"needsDnU"];
  v5 = v4;
  if (v4 && ![v4 BOOLValue])
  {
    v7 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      +[FedStatsPluginCoreConsentCheck checkConsentConfigurationItem:];
    }

LABEL_11:

    v10 = [itemCopy objectForKey:@"needsLocation"];
    v7 = v10;
    if (v10 && [v10 BOOLValue]&& !+[FedStatsPluginCoreConsentCheckHelper checkLocation])
    {
      v12 = +[FedStatsPluginLog logger];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        +[FedStatsPluginCoreConsentCheck checkConsentConfigurationItem:];
      }

      v9 = 0;
      goto LABEL_45;
    }

    v11 = [itemCopy objectForKey:@"needsIHA"];
    v12 = v11;
    if (v11 && [v11 BOOLValue]&& !+[FedStatsPluginCoreConsentCheckHelper checkIHA])
    {
      v14 = +[FedStatsPluginLog logger];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        +[FedStatsPluginCoreConsentCheck checkConsentConfigurationItem:];
      }

      v9 = 0;
      goto LABEL_44;
    }

    v13 = [itemCopy objectForKey:@"needsIDV"];
    v14 = v13;
    if (v13 && [v13 BOOLValue]&& !+[FedStatsPluginCoreConsentCheckHelper checkIDV])
    {
      v16 = +[FedStatsPluginLog logger];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        +[FedStatsPluginCoreConsentCheck checkConsentConfigurationItem:];
      }

      v9 = 0;
      goto LABEL_43;
    }

    v15 = [itemCopy objectForKey:@"needsCNAI"];
    v16 = v15;
    if (v15 && [v15 BOOLValue]&& !+[FedStatsPluginCoreConsentCheckHelper checkChinaAIEligibility])
    {
      v18 = +[FedStatsPluginLog logger];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        +[FedStatsPluginCoreConsentCheck checkConsentConfigurationItem:];
      }
    }

    else
    {
      v17 = [itemCopy objectForKey:@"needsCommSafety"];
      v18 = v17;
      if (!v17 || ![v17 BOOLValue]|| +[FedStatsPluginCoreConsentCheckHelper checkCommSafety])
      {
        v9 = 1;
LABEL_42:

LABEL_43:
LABEL_44:

LABEL_45:
        goto LABEL_46;
      }

      v19 = +[FedStatsPluginLog logger];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        +[FedStatsPluginCoreConsentCheck checkConsentConfigurationItem:];
      }
    }

    v9 = 0;
    goto LABEL_42;
  }

  v6 = +[FedStatsPluginCoreConsentCheckHelper checkDnU];
  v7 = +[FedStatsPluginLog logger];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      +[FedStatsPluginCoreConsentCheck checkConsentConfigurationItem:];
    }

    goto LABEL_11;
  }

  if (v8)
  {
    +[FedStatsPluginCoreConsentCheck checkConsentConfigurationItem:];
  }

  v9 = 0;
LABEL_46:

  return v9;
}

+ (BOOL)isConsentedForUseCase:(id)case
{
  caseCopy = case;
  v4 = +[FedStatsPluginLog logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[FedStatsPluginCoreConsentCheck isConsentedForUseCase:];
  }

  v5 = +[FedStatsPluginCoreConsentCheck sharedInstance];
  v6 = +[FedStatsPluginLog logger];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      +[FedStatsPluginCoreConsentCheck isConsentedForUseCase:];
    }

    consentConfiguration = [v5 consentConfiguration];
    v7 = [consentConfiguration objectForKey:caseCopy];

    if (!v7)
    {
      v9 = +[FedStatsPluginLog logger];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        +[FedStatsPluginCoreConsentCheck isConsentedForUseCase:];
      }
    }

    v10 = [FedStatsPluginCoreConsentCheck checkConsentConfigurationItem:v7];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[FedStatsPluginCoreConsentCheck isConsentedForUseCase:];
    }

    v10 = 0;
  }

  return v10;
}

@end