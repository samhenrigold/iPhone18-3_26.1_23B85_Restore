@interface GEOAPUploadPolicies
+ (id)sharedPolicies;
- (GEOAPUploadPolicies)init;
- (double)maxDelayForUploadPolicyType:(int)type;
- (double)ttlForUploadPolicyType:(int)type;
- (id)uploadPolicyForUploadPolicyType:(int)type;
- (void)_updatePolicyConfigForUploadPolicyConfigType:(int)type configKey:(id)key;
@end

@implementation GEOAPUploadPolicies

+ (id)sharedPolicies
{
  if (sharedPolicies_onceToken != -1)
  {
    dispatch_once(&sharedPolicies_onceToken, &__block_literal_global_3377);
  }

  v3 = sharedPolicies_policies;

  return v3;
}

- (id)uploadPolicyForUploadPolicyType:(int)type
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__3231;
  v12 = __Block_byref_object_dispose__3232;
  v13 = 0;
  isoQueue = self->_isoQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__GEOAPUploadPolicies_uploadPolicyForUploadPolicyType___block_invoke;
  block[3] = &unk_1E7959660;
  block[4] = self;
  block[5] = &v8;
  typeCopy = type;
  dispatch_sync(isoQueue, block);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __55__GEOAPUploadPolicies_uploadPolicyForUploadPolicyType___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v6 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (double)maxDelayForUploadPolicyType:(int)type
{
  v3 = [(GEOAPUploadPolicies *)self uploadPolicyForUploadPolicyType:*&type];
  [v3 maxDelay];
  v5 = v4;

  return v5;
}

- (double)ttlForUploadPolicyType:(int)type
{
  v3 = [(GEOAPUploadPolicies *)self uploadPolicyForUploadPolicyType:*&type];
  [v3 ttl];
  v5 = v4;

  return v5;
}

- (void)_updatePolicyConfigForUploadPolicyConfigType:(int)type configKey:(id)key
{
  v4 = *&type;
  v65 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(GEOAPUploadPolicy);
  [(GEOAPUploadPolicy *)v6 setType:v4];
  type = [(GEOAPUploadPolicy *)v6 type];
  if (type >= 0xE)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
  }

  else
  {
    v8 = off_1E7959680[type];
  }

  v9 = GEOConfigGetDictionary();
  v10 = [v9 objectForKeyedSubscript:@"ttl"];
  v11 = 0x1E696A000uLL;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = GEOGetUploadPoliciesAnalyticsLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v61 = v8;
      _os_log_impl(&dword_1AB634000, v12, OS_LOG_TYPE_ERROR, "'ttl' not set for %@ upload policy (using default value)", buf, 0xCu);
    }

    v10 = &unk_1F2056168;
  }

  [v10 doubleValue];
  [(GEOAPUploadPolicy *)v6 setTtl:?];
  v13 = [v9 objectForKeyedSubscript:@"maxDelay"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = GEOGetUploadPoliciesAnalyticsLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v61 = v8;
      _os_log_impl(&dword_1AB634000, v14, OS_LOG_TYPE_ERROR, "'maxDelay' not set for %@ upload policy (using default value)", buf, 0xCu);
    }

    v13 = &unk_1F2056180;
  }

  [v13 doubleValue];
  [(GEOAPUploadPolicy *)v6 setMaxDelay:?];
  v15 = [v9 objectForKeyedSubscript:@"immediately"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = v15;
    v17 = GEOGetUploadPoliciesAnalyticsLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v61 = v8;
      _os_log_impl(&dword_1AB634000, v17, OS_LOG_TYPE_ERROR, "'immediately' not set for %@ upload policy (using default value)", buf, 0xCu);
    }

    v15 = MEMORY[0x1E695E110];
  }

  v46 = v15;
  -[GEOAPUploadPolicy setSendImmediately:](v6, "setSendImmediately:", [v15 BOOLValue]);
  v18 = [v9 objectForKeyedSubscript:@"stages"];
  objc_opt_class();
  v51 = v6;
  v50 = v4;
  v48 = v9;
  selfCopy = self;
  v47 = v13;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = GEOGetUploadPoliciesAnalyticsLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v61 = v8;
      _os_log_impl(&dword_1AB634000, v19, OS_LOG_TYPE_ERROR, "bad upload stages for %@ upload policy (must be an array of dictionaries)", buf, 0xCu);
    }

    v18 = 0;
  }

  v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v20 = v18;
  v21 = [v20 countByEnumeratingWithState:&v56 objects:v64 count:16];
  if (!v21)
  {
    v53 = 0;
    v55 = 0;
    goto LABEL_60;
  }

  v22 = v21;
  v53 = 0;
  v55 = 0;
  v23 = *v57;
  v54 = v8;
  do
  {
    v24 = 0;
    do
    {
      if (*v57 != v23)
      {
        objc_enumerationMutation(v20);
      }

      v25 = *(*(&v56 + 1) + 8 * v24);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = [v25 objectForKeyedSubscript:@"ttl"];
        v27 = [v25 objectForKeyedSubscript:@"type"];
        v28 = v27;
        if (v26)
        {
          v29 = v27 == 0;
        }

        else
        {
          v29 = 1;
        }

        if (v29)
        {
          v30 = GEOGetUploadPoliciesAnalyticsLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v61 = v8;
            v31 = v30;
            v32 = "bad upload stage in %@ upload policy (missing ttl or type keys)";
            goto LABEL_42;
          }
        }

        else
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              intValue = [v28 intValue];
              v35 = [GEOAPURLSessionConfig configForURLSessionConfigType:intValue];

              if ([v35 type])
              {
                [v26 doubleValue];
                if (v36 <= 0.0)
                {
                  if (intValue >= 7)
                  {
                    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", intValue];
                  }

                  else
                  {
                    v39 = off_1E79596F0[intValue];
                  }

                  v40 = GEOGetUploadPoliciesAnalyticsLog();
                  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v61 = v39;
                    v62 = 2112;
                    v63 = v54;
                    _os_log_impl(&dword_1AB634000, v40, OS_LOG_TYPE_ERROR, "bad upload stage %@ in %@ upload policy (ttl is <= 0)", buf, 0x16u);
                  }
                }

                else
                {
                  v37 = [[GEOAPUploadStage alloc] initWithURLSessionConfig:v35 ttl:v36];

                  [v52 addObject:v37];
                  v53 = v37;
                }
              }

              else
              {
                v38 = GEOGetUploadPoliciesAnalyticsLog();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v61 = v54;
                  v62 = 1024;
                  LODWORD(v63) = intValue;
                  _os_log_impl(&dword_1AB634000, v38, OS_LOG_TYPE_ERROR, "bad upload stage in %@ upload policy (unknown session config type %d)", buf, 0x12u);
                }
              }

              v55 = v35;
              v8 = v54;
              v11 = 0x1E696A000;
              goto LABEL_44;
            }
          }

          v30 = GEOGetUploadPoliciesAnalyticsLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v61 = v8;
            v31 = v30;
            v32 = "bad upload stage in %@ upload policy (ttl and type must be of type NSNumber)";
LABEL_42:
            _os_log_impl(&dword_1AB634000, v31, OS_LOG_TYPE_ERROR, v32, buf, 0xCu);
          }
        }

LABEL_44:
        goto LABEL_45;
      }

      v26 = GEOGetUploadPoliciesAnalyticsLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v61 = v8;
        _os_log_impl(&dword_1AB634000, v26, OS_LOG_TYPE_ERROR, "bad upload stage in %@ upload policy (stage must be a dictionary)", buf, 0xCu);
      }

LABEL_45:

      ++v24;
    }

    while (v22 != v24);
    v41 = [v20 countByEnumeratingWithState:&v56 objects:v64 count:16];
    v22 = v41;
  }

  while (v41);
LABEL_60:

  if (![v52 count])
  {
    if (_updatePolicyConfigForUploadPolicyConfigType_configKey__onceToken != -1)
    {
      dispatch_once(&_updatePolicyConfigForUploadPolicyConfigType_configKey__onceToken, &__block_literal_global_129_3302);
    }

    [v52 addObject:_updatePolicyConfigForUploadPolicyConfigType_configKey__defaultUploadStage];
    v42 = GEOGetUploadPoliciesAnalyticsLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v61 = v8;
      _os_log_impl(&dword_1AB634000, v42, OS_LOG_TYPE_ERROR, "no upload stages declared for %@ upload policy; applying default upload stage", buf, 0xCu);
    }
  }

  v43 = [v52 copy];
  [(GEOAPUploadPolicy *)v51 setUploadStages:v43];

  policyDict = selfCopy->_policyDict;
  v45 = [*(v11 + 3480) numberWithInt:v50];
  [(NSMutableDictionary *)policyDict setObject:v51 forKeyedSubscript:v45];
}

void __78__GEOAPUploadPolicies__updatePolicyConfigForUploadPolicyConfigType_configKey___block_invoke()
{
  v2 = [GEOAPURLSessionConfig configForURLSessionConfigType:5];
  v0 = [[GEOAPUploadStage alloc] initWithURLSessionConfig:v2 ttl:604800.0];
  v1 = _updatePolicyConfigForUploadPolicyConfigType_configKey__defaultUploadStage;
  _updatePolicyConfigForUploadPolicyConfigType_configKey__defaultUploadStage = v0;
}

- (GEOAPUploadPolicies)init
{
  v50.receiver = self;
  v50.super_class = GEOAPUploadPolicies;
  v2 = [(GEOAPUploadPolicies *)&v50 init];
  if (v2)
  {
    v3 = geo_dispatch_queue_create();
    isoQueue = v2->_isoQueue;
    v2->_isoQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    policyDict = v2->_policyDict;
    v2->_policyDict = v5;

    v7 = v2->_isoQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__GEOAPUploadPolicies_init__block_invoke;
    block[3] = &unk_1E7959610;
    v8 = v2;
    v49 = v8;
    dispatch_async(v7, block);
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    configListeners = v8->_configListeners;
    v8->_configListeners = v9;

    v11 = v8->_configListeners;
    v47 = v8;
    v12 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v11 addObject:v12];

    v13 = v8->_configListeners;
    v46 = v47;
    v14 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v13 addObject:v14];

    v15 = v8->_configListeners;
    v45 = v46;
    v16 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v15 addObject:v16];

    v17 = v8->_configListeners;
    v44 = v45;
    v18 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v17 addObject:v18];

    v19 = v8->_configListeners;
    v43 = v44;
    v20 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v19 addObject:v20];

    v21 = v8->_configListeners;
    v42 = v43;
    v22 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v21 addObject:v22];

    v23 = v8->_configListeners;
    v41 = v42;
    v24 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v23 addObject:v24];

    v25 = v8->_configListeners;
    v40 = v41;
    v26 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v25 addObject:v26];

    v27 = v8->_configListeners;
    v39 = v40;
    v28 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v27 addObject:v28];

    v29 = v8->_configListeners;
    v38 = v39;
    v30 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v29 addObject:v30];

    v31 = v8->_configListeners;
    v37 = v38;
    v32 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v31 addObject:v32];

    v33 = v8->_configListeners;
    v36 = v37;
    v34 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v33 addObject:v34];
  }

  return v2;
}

uint64_t __27__GEOAPUploadPolicies_init__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updatePolicyConfigForUploadPolicyConfigType:4 configKey:{1, &GeoAnalyticsUploadPolicyConfig_HIGHEST_COST_7D_config_Metadata}];
  [*(a1 + 32) _updatePolicyConfigForUploadPolicyConfigType:3 configKey:{2, &GeoAnalyticsUploadPolicyConfig_HIGH_COST_7D_config_Metadata}];
  [*(a1 + 32) _updatePolicyConfigForUploadPolicyConfigType:1 configKey:{3, &GeoAnalyticsUploadPolicyConfig_LOW_COST_7D_config_Metadata}];
  [*(a1 + 32) _updatePolicyConfigForUploadPolicyConfigType:2 configKey:{4, &GeoAnalyticsUploadPolicyConfig_MED_COST_7D_config_Metadata}];
  [*(a1 + 32) _updatePolicyConfigForUploadPolicyConfigType:5 configKey:{5, &GeoAnalyticsUploadPolicyConfig_MED_COST_90D_config_Metadata}];
  [*(a1 + 32) _updatePolicyConfigForUploadPolicyConfigType:10 configKey:{6, &GeoAnalyticsUploadPolicyConfig_POI_BUSYNESS_POLICY_config_Metadata}];
  [*(a1 + 32) _updatePolicyConfigForUploadPolicyConfigType:11 configKey:{7, &GeoAnalyticsUploadPolicyConfig_RAND_DELAY_config_Metadata}];
  [*(a1 + 32) _updatePolicyConfigForUploadPolicyConfigType:12 configKey:{8, &GeoAnalyticsUploadPolicyConfig_TEST_config_Metadata}];
  [*(a1 + 32) _updatePolicyConfigForUploadPolicyConfigType:6 configKey:{9, &GeoAnalyticsUploadPolicyConfig_UP_POLICY_00_config_Metadata}];
  [*(a1 + 32) _updatePolicyConfigForUploadPolicyConfigType:7 configKey:{10, &GeoAnalyticsUploadPolicyConfig_UP_POLICY_01_config_Metadata}];
  [*(a1 + 32) _updatePolicyConfigForUploadPolicyConfigType:8 configKey:{11, &GeoAnalyticsUploadPolicyConfig_UP_POLICY_02_config_Metadata}];
  v2 = *(a1 + 32);

  return [v2 _updatePolicyConfigForUploadPolicyConfigType:9 configKey:{12, &GeoAnalyticsUploadPolicyConfig_UP_POLICY_03_config_Metadata}];
}

uint64_t __37__GEOAPUploadPolicies_sharedPolicies__block_invoke()
{
  sharedPolicies_policies = objc_alloc_init(GEOAPUploadPolicies);

  return MEMORY[0x1EEE66BB8]();
}

@end