@interface _DKSync2Policy
+ (BOOL)cloudSyncDisabled;
+ (BOOL)isSyncPolicyDisabledForFeature:(unint64_t)feature transportType:(int64_t)type;
+ (BOOL)rapportSyncDisabled;
+ (NSObject)configurationPlistForFilename:(uint64_t)filename;
+ (_DKSync2Policy)_policyForSyncTransportType:(uint64_t)type;
+ (id)disabledFeaturesForSyncType:(id)type transports:(int64_t)transports;
+ (id)featureNameFromFeatureType:(unint64_t)type;
+ (id)getDisabledFeaturesForTransportType:(uint64_t)type;
+ (id)internalFeatureNameFromFeatureName:(id)name;
+ (id)policyCache;
+ (id)policyForSyncTransportType:(int64_t)type;
+ (id)policyFromDictionary:(id)dictionary;
+ (id)productVersion;
+ (id)removeDisabledFeaturesStreamsForTransportType:(void *)type fromDictionary:;
+ (id)syncPolicyConfigPathForFilename:(uint64_t)filename;
+ (id)userDefaults;
+ (void)disableSyncPolicyForFeature:(unint64_t)feature transportType:(int64_t)type disabled:(BOOL)disabled;
+ (void)handleDownloadSyncPolicyResponse:(void *)response data:(void *)data error:;
+ (void)possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays:(uint64_t)days;
+ (void)setOkToDownloadPolicyUpdates:(BOOL)updates;
- (BOOL)canDeferSyncOperationWithSyncType:(id)type;
- (BOOL)canPerformSyncOperationWithSyncType:(id)type lastSyncDate:(id)date lastDaySyncCount:(unint64_t)count isCharging:(BOOL)charging;
- (BOOL)highPriorityForSyncDownWithSyncType:(id)type;
- (BOOL)highPriorityForSyncUpWithSyncType:(id)type lastSyncDate:(id)date;
- (double)hoursBetweenSyncsWhenIsSingleDevice:(BOOL)device urgency:(unint64_t)urgency;
- (id)description;
- (id)queryStartDateWithSyncType:(id)type lastSyncDate:(id)date lastDaySyncCount:(unint64_t)count previousHighWaterMark:(id)mark;
- (id)queryStartDateWithSyncType:(id)type previousHighWaterMark:(id)mark;
- (id)queryStartDateWithSyncType:(void *)type lastSyncDate:(uint64_t)date lastDaySyncCount:(void *)count;
- (id)streamNamesToSyncWithDisabledFeatures:(id)features;
- (id)streamNamesToSyncWithSyncType:(id)type transportType:(int64_t)transportType;
- (uint64_t)initWithDictionary:(uint64_t *)dictionary;
@end

@implementation _DKSync2Policy

+ (id)userDefaults
{
  objc_opt_self();
  v1 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.CoreDuet"];

  return v1;
}

+ (id)policyCache
{
  objc_opt_self();
  if (policyCache_onceToken != -1)
  {
    +[_DKSync2Policy policyCache];
  }

  v1 = policyCache_policyCache;

  return v1;
}

+ (id)policyForSyncTransportType:(int64_t)type
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = @"CloudDown";
  v6 = &stru_1F05B9908;
  if (type == 8)
  {
    v6 = @"CloudUp";
  }

  if (type != 4)
  {
    v5 = v6;
  }

  if (type == 1)
  {
    v7 = @"Rapport";
  }

  else
  {
    v7 = v5;
  }

  v8 = +[(_DKSync2Policy *)self];
  v9 = [v8 objectForKey:v7];

  if (!v9)
  {
    v9 = [_DKSync2Policy _policyForSyncTransportType:type];
    if (v9)
    {
      v10 = +[(_DKSync2Policy *)self];
      [v10 setObject:v9 forKey:v7];

      v11 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v13 = [objc_opt_class() description];
        v14 = 138543874;
        v15 = v13;
        v16 = 2114;
        v17 = v7;
        v18 = 2114;
        v19 = v9;
        _os_log_debug_impl(&dword_191750000, v11, OS_LOG_TYPE_DEBUG, "%{public}@: Policy for transport %{public}@: %{public}@", &v14, 0x20u);
      }
    }
  }

  return v9;
}

+ (_DKSync2Policy)_policyForSyncTransportType:(uint64_t)type
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  switch(a2)
  {
    case 1:
      v4 = @"Policies/com.apple.coreduet.knowledge.syncPolicies2.ios.rp.dn";
      goto LABEL_7;
    case 8:
      v4 = @"Policies/com.apple.coreduet.knowledge.syncPolicies2.ios.ck.up";
      goto LABEL_7;
    case 4:
      v4 = @"Policies/com.apple.coreduet.knowledge.syncPolicies2.ios.ck.dn";
LABEL_7:
      v5 = objc_opt_new();
      v6 = [(_DKSync2Policy *)v3 configurationPlistForFilename:v4];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v5 addEntriesFromDictionary:v6];
      }

      v7 = [v6 objectForKeyedSubscript:@"Version"];
      [v7 floatValue];
      v9 = v8;

      v10 = +[(_DKSync2Policy *)v3];
      v11 = [v10 objectForKey:@"CloudSync2Policies"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = @"CloudDown";
        v13 = &stru_1F05B9908;
        if (a2 == 8)
        {
          v13 = @"CloudUp";
        }

        if (a2 != 4)
        {
          v12 = v13;
        }

        if (a2 == 1)
        {
          v14 = @"Rapport";
        }

        else
        {
          v14 = v12;
        }

        v15 = [v11 objectForKeyedSubscript:v14];
        if (v15)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = [v15 objectForKeyedSubscript:@"Version"];
            if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v16 floatValue], v17 < v9))
            {
              v18 = +[_CDLogging syncChannel];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                v29 = [objc_opt_class() description];
                *buf = 138543618;
                v31 = v29;
                v32 = 2112;
                v33 = v14;
                _os_log_impl(&dword_191750000, v18, OS_LOG_TYPE_INFO, "%{public}@: Cloud policy for %@ is invalid and/or old. Removing saved policies from defaults.", buf, 0x16u);
              }

              v19 = +[(_DKSync2Policy *)v3];
              [v19 removeObjectForKey:@"CloudSync2Policies"];

              v15 = MEMORY[0x1E695E0F8];
              v11 = MEMORY[0x1E695E0F8];
            }
          }
        }

        if ([v15 count])
        {
          v20 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v28 = [objc_opt_class() description];
            *buf = 138543874;
            v31 = v28;
            v32 = 2114;
            v33 = v14;
            v34 = 2114;
            v35 = v15;
            _os_log_debug_impl(&dword_191750000, v20, OS_LOG_TYPE_DEBUG, "%{public}@: Using remote policy override for %{public}@: %{public}@", buf, 0x20u);
          }
        }

        [v5 addEntriesFromDictionary:v15];
      }

      v21 = +[(_DKSync2Policy *)v3];
      v22 = [v21 objectForKey:@"CloudSync2Policy"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v22 count])
        {
          v23 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            +[_DKSync2Policy _policyForSyncTransportType:];
          }
        }

        [v5 addEntriesFromDictionary:v22];
      }

      [_DKSync2Policy removeDisabledFeaturesStreamsForTransportType:a2 fromDictionary:v5];
      objc_claimAutoreleasedReturnValue();

      v24 = [v3 policyFromDictionary:v5];
      if (+[_DKCloudUtilities isUnitTesting](_DKCloudUtilities, "isUnitTesting") && [v24 syncDisabled])
      {
        v25 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = [objc_opt_class() description];
          *buf = 138543362;
          v31 = v26;
          _os_log_impl(&dword_191750000, v25, OS_LOG_TYPE_INFO, "%{public}@: Enabling sync due to unit testing", buf, 0xCu);
        }

        [v24 setSyncDisabled:0];
      }

      goto LABEL_45;
  }

  v24 = objc_opt_new();
  [v24 setSyncDisabled:1];
  v5 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(_DKSync2Policy *)v3 _policyForSyncTransportType:v5];
  }

LABEL_45:

  return v24;
}

+ (id)featureNameFromFeatureType:(unint64_t)type
{
  if (type)
  {
    return @"ScreenTime";
  }

  v5 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(_DKSync2Policy *)self featureNameFromFeatureType:v5];
  }

  return 0;
}

+ (id)internalFeatureNameFromFeatureName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"ScreenTime"])
  {
    v4 = @"DigitalHealth";
  }

  else
  {
    v5 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[_DKSync2Policy internalFeatureNameFromFeatureName:];
    }

    v4 = @"No name";
  }

  return v4;
}

+ (void)disableSyncPolicyForFeature:(unint64_t)feature transportType:(int64_t)type disabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v27 = *MEMORY[0x1E69E9840];
  v7 = [_DKSync2Policy featureNameFromFeatureType:feature];
  v8 = _DKSyncTransportName(type);
  v9 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [objc_opt_class() description];
    v21 = 138543874;
    v22 = v10;
    v23 = 2114;
    v24 = v7;
    v25 = 2114;
    v26 = v8;
    _os_log_impl(&dword_191750000, v9, OS_LOG_TYPE_INFO, "%{public}@: Disable sync policy for feature: %{public}@ on transport: %{public}@", &v21, 0x20u);
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12 = +[_DKSync2Policy userDefaults];
  v13 = [v12 valueForKey:@"DKSync2PolicyDisableSyncForFeature"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v11 addEntriesFromDictionary:v13];
  }

  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = [v11 valueForKey:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v14 addEntriesFromDictionary:v15];
  }

  v16 = [MEMORY[0x1E696AD98] numberWithBool:disabledCopy];
  [v14 setValue:v16 forKey:v8];

  [v11 setValue:v14 forKey:v7];
  v17 = +[_DKSync2Policy userDefaults];
  [v17 setValue:v11 forKey:@"DKSync2PolicyDisableSyncForFeature"];

  v18 = _DKSync2PolicyDisableSyncPolicyForFeatures;
  _DKSync2PolicyDisableSyncPolicyForFeatures = v11;
  v19 = v11;

  v20 = +[_DKSync2Policy policyCache];

  [v20 removeAllObjects];
}

+ (id)getDisabledFeaturesForTransportType:(uint64_t)type
{
  v47 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = _DKSyncTransportName(a2);
  v33 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = &getkUTTypeEmailMessageSymbolLoc_ptr;
  v5 = _DKSync2PolicyDisableSyncPolicyForFeatures;
  v6 = 0x1E7366000uLL;
  if (!_DKSync2PolicyDisableSyncPolicyForFeatures)
  {
    v7 = +[_DKSync2Policy userDefaults];
    v8 = [v7 objectForKey:@"DKSync2PolicyDisableSyncForFeature"];
    v9 = _DKSync2PolicyDisableSyncPolicyForFeatures;
    _DKSync2PolicyDisableSyncPolicyForFeatures = v8;

    v5 = _DKSync2PolicyDisableSyncPolicyForFeatures;
    if (!_DKSync2PolicyDisableSyncPolicyForFeatures)
    {
      v10 = +[_DKSync2Policy userDefaults];
      v11 = [v10 objectForKey:@"DKSync2PolicyDisableSyncForFeature"];
      v12 = _DKSync2PolicyDisableSyncPolicyForFeatures;
      _DKSync2PolicyDisableSyncPolicyForFeatures = v11;

      v5 = _DKSync2PolicyDisableSyncPolicyForFeatures;
    }
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v5;
  v13 = [obj countByEnumeratingWithState:&v35 objects:v46 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v36;
    *&v14 = 138543874;
    v32 = v14;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v35 + 1) + 8 * i);
        v19 = [v4[75] valueForKey:{v18, v32}];
        v20 = [v19 valueForKey:v3];
        if ([v20 BOOLValue])
        {
          v21 = v16;
          v22 = [*(v6 + 2312) internalFeatureNameFromFeatureName:v18];
          [v33 addObject:v22];

          v23 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v24 = [objc_opt_class() description];
            *buf = v32;
            v41 = v24;
            v42 = 2114;
            v43 = v18;
            v44 = 2114;
            v45 = v3;
            _os_log_impl(&dword_191750000, v23, OS_LOG_TYPE_INFO, "%{public}@: Sync policy is disabled for feature: %{public}@ on transport: %{public}@", buf, 0x20u);

            v4 = &getkUTTypeEmailMessageSymbolLoc_ptr;
            v6 = 0x1E7366000;
          }

          v16 = v21;
        }
      }

      v15 = [obj countByEnumeratingWithState:&v35 objects:v46 count:16];
    }

    while (v15);
  }

  if (_os_feature_enabled_impl())
  {
    v39[0] = @"Eucalyptus";
    v39[1] = @"IDSMessageGating";
    v39[2] = @"OptimizedBatteryCharging";
    v39[3] = @"SiriPortrait";
    v39[4] = @"Supergreen";
    v39[5] = @"Tips";
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:6];
    [v33 addObjectsFromArray:v25];

    LODWORD(v25) = [v33 containsObject:@"DigitalHealth"];
    v26 = +[_CDLogging syncChannel];
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);
    if (v25)
    {
      if (v27)
      {
        v28 = [objc_opt_class() description];
        *buf = 138543362;
        v41 = v28;
        v29 = "%{public}@: Sync is decommisioned on this platform. All features, except DigitalHealth, have been disabled";
LABEL_21:
        _os_log_impl(&dword_191750000, v26, OS_LOG_TYPE_INFO, v29, buf, 0xCu);
      }
    }

    else if (v27)
    {
      v28 = [objc_opt_class() description];
      *buf = 138543362;
      v41 = v28;
      v29 = "%{public}@: Sync is decommisioned on this platform. All features, including DigitalHealth, have been disabled";
      goto LABEL_21;
    }
  }

  allObjects = [v33 allObjects];

  return allObjects;
}

+ (id)removeDisabledFeaturesStreamsForTransportType:(void *)type fromDictionary:
{
  v28 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  objc_opt_self();
  v5 = [_DKSync2Policy getDisabledFeaturesForTransportType:a2];
  v6 = [typeCopy valueForKey:@"StreamNamesToSync"];
  if ([v5 count] && objc_msgSend(v6, "count"))
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          if (([v5 containsObject:{v13, v17}] & 1) == 0)
          {
            v14 = [v8 valueForKey:v13];
            [v7 setValue:v14 forKey:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    [typeCopy setValue:v7 forKey:@"StreamNamesToSync"];
  }

  else
  {
    v7 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v15 = [objc_opt_class() description];
      *buf = 138543874;
      v23 = v15;
      v24 = 2048;
      v25 = [v5 count];
      v26 = 2048;
      v27 = [v6 count];
      _os_log_impl(&dword_191750000, v7, OS_LOG_TYPE_INFO, "%{public}@: No disabled features, featuresCount = %lu, originalFeatureCount = %lu", buf, 0x20u);
    }
  }

  return typeCopy;
}

+ (NSObject)configurationPlistForFilename:(uint64_t)filename
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [(_DKSync2Policy *)v3 syncPolicyConfigPathForFilename:v2];
  if (!v4)
  {
    v5 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[_DKSync2Policy configurationPlistForFilename:];
    }

    goto LABEL_9;
  }

  v5 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v4];
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[_DKSync2Policy configurationPlistForFilename:];
    }

LABEL_9:
    v5 = 0;
  }

  return v5;
}

+ (BOOL)rapportSyncDisabled
{
  v2 = +[(_DKSync2Policy *)self];
  v3 = [v2 objectForKey:@"CloudSync2Policy"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKeyedSubscript:@"RapportSyncDisabled"];
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (BOOL)isSyncPolicyDisabledForFeature:(unint64_t)feature transportType:(int64_t)type
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [_DKSync2Policy policyForSyncTransportType:type];
  v6 = v5;
  if (v5 && ![v5 syncDisabled])
  {
    v7 = [_DKSync2Policy featureNameFromFeatureType:feature];
    v10 = [_DKSync2Policy internalFeatureNameFromFeatureName:v7];
    v12 = [v6 valueForKey:@"_streamNamesToSync"];
    v13 = [v12 valueForKey:v10];
    v14 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [objc_opt_class() description];
      v17 = 138544130;
      v18 = v15;
      v19 = 2112;
      v20 = v7;
      v21 = 2112;
      v22 = v10;
      v23 = 2048;
      v24 = [v12 count];
      _os_log_impl(&dword_191750000, v14, OS_LOG_TYPE_INFO, "%{public}@: isSyncPolicyDisabledForFeature: featureName:%@ internal:%@ streamNamesToSync.count = %lu", &v17, 0x2Au);
    }

    v8 = v13 == 0;
    goto LABEL_10;
  }

  v7 = +[_CDLogging syncChannel];
  v8 = 1;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = [objc_opt_class() description];
    v10 = v9;
    v11 = @"has syncDisabled == YES";
    if (!v6)
    {
      v11 = @"is nil";
    }

    v17 = 138543618;
    v18 = v9;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_191750000, v7, OS_LOG_TYPE_INFO, "%{public}@: Sync Policy %@", &v17, 0x16u);
LABEL_10:
  }

  return v8;
}

+ (BOOL)cloudSyncDisabled
{
  v2 = +[(_DKSync2Policy *)self];
  v3 = [v2 objectForKey:@"CloudSync2Policy"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKeyedSubscript:@"CloudSyncDisabled"];
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (void)setOkToDownloadPolicyUpdates:(BOOL)updates
{
  v5 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(_DKSync2Policy *)self setOkToDownloadPolicyUpdates:v5];
  }

  _DKSync2PolicyOkToDownloadPolicyUpdates = updates;
}

+ (void)possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays:(uint64_t)days
{
  v3 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77___DKSync2Policy_possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays___block_invoke;
  block[3] = &unk_1E7367370;
  v5 = @"com.apple.coreduet.sync-policy.policy-download";
  v6 = v3;
  v7 = a2;
  if (possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays__initialized != -1)
  {
    dispatch_once(&possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays__initialized, block);
  }
}

+ (id)productVersion
{
  objc_opt_self();
  v1 = _CFCopySystemVersionDictionary();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 objectForKey:*MEMORY[0x1E695E208]];
    CFRelease(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (void)handleDownloadSyncPolicyResponse:(void *)response data:(void *)data error:
{
  v6 = a2;
  responseCopy = response;
  dataCopy = data;
  v9 = objc_opt_self();
  if (dataCopy)
  {
    v10 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      +[_DKSync2Policy handleDownloadSyncPolicyResponse:data:error:];
    }

    goto LABEL_5;
  }

  if ([v6 statusCode] != 200)
  {
    if ([v6 statusCode] != 204 && objc_msgSend(v6, "statusCode") != 205 && objc_msgSend(v6, "statusCode") != 404 && objc_msgSend(v6, "statusCode") != 410)
    {
      goto LABEL_5;
    }

    v11 = objc_opt_new();
    if (!v11)
    {
      goto LABEL_5;
    }

LABEL_26:
    v17 = +[_DKSync2Policy userDefaults];
    v18 = [v17 objectForKey:@"CloudSync2Policies"];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = objc_opt_new();
    }

    v21 = v20;

    [v17 setValue:v11 forKey:@"CloudSync2Policies"];
    if (([v11 isEqualToDictionary:v21]& 1) == 0)
    {
      v22 = +[(_DKSync2Policy *)v9];
      [v22 removeAllObjects];

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"_DKSync2PolicyDidChangeNotification" object:v9 userInfo:0];
    }

    goto LABEL_32;
  }

  if (responseCopy)
  {
    v24 = 0;
    v11 = [MEMORY[0x1E696AE40] propertyListWithData:responseCopy options:0 format:0 error:&v24];
    v12 = v24;
    if (!v11)
    {
      v13 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        +[_DKSync2Policy handleDownloadSyncPolicyResponse:data:error:];
      }
    }
  }

  else
  {
    v12 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      +[_DKSync2Policy handleDownloadSyncPolicyResponse:data:error:];
    }

    v11 = 0;
  }

  allHeaderFields = [v6 allHeaderFields];
  v15 = [_CDServerRequest getHTTPModifiedSinceFromHeaders:allHeaderFields];

  if (v15)
  {
    v16 = +[_DKSync2Policy userDefaults];
    [v16 setValue:v15 forKey:@"CloudSyncPoliciesLastModified"];
  }

  if (v11)
  {
    goto LABEL_26;
  }

LABEL_5:
  if ([v6 statusCode] == 304)
  {
    v11 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [_DKSync2Policy handleDownloadSyncPolicyResponse:v9 data:v11 error:?];
    }

LABEL_32:
  }
}

+ (id)syncPolicyConfigPathForFilename:(uint64_t)filename
{
  v2 = a2;
  objc_opt_self();
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:v2 ofType:@"plist"];

  return v4;
}

+ (id)disabledFeaturesForSyncType:(id)type transports:(int64_t)transports
{
  typeCopy = type;
  v6 = +[_DKSyncedFeatures sharedInstance];
  v7 = objc_opt_new();
  isSingleDevice = [(_DKSyncType *)typeCopy isSingleDevice];

  if ([(_DKSyncedFeatures *)v6 isDigitalHealthDisabledWithIsSingleDevice:isSingleDevice forTransports:transports])
  {
    [v7 addObject:@"DigitalHealth"];
  }

  if ([(_DKSyncedFeatures *)v6 isIDSMessageGatingDisabled])
  {
    [v7 addObject:@"IDSMessageGating"];
  }

  if ([(_DKSyncedFeatures *)v6 isSiriPortraitDisabled])
  {
    [v7 addObject:@"SiriPortrait"];
  }

  if ([(_DKSyncedFeatures *)v6 isSupergreenDisabledForTransports:transports])
  {
    [v7 addObject:@"Supergreen"];
  }

  if ([(_DKSyncedFeatures *)v6 isEucalyptusDisabled])
  {
    [v7 addObject:@"Eucalyptus"];
  }

  if ([(_DKSyncedFeatures *)v6 isOptimizedBatteryChargingDisabled])
  {
    [v7 addObject:@"OptimizedBatteryCharging"];
  }

  if ([(_DKSyncedFeatures *)v6 isTipsDisabled])
  {
    [v7 addObject:@"Tips"];
  }

  if ([v7 count])
  {
    v9 = [v7 copy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)streamNamesToSyncWithDisabledFeatures:(id)features
{
  v21 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  if (self->_streamNamesToAlwaysSync)
  {
    v5 = [MEMORY[0x1E695DFA8] setWithArray:?];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_streamNamesToSync;
  v8 = [(NSDictionary *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (!featuresCopy || ([featuresCopy containsObject:{*(*(&v16 + 1) + 8 * i), v16}] & 1) == 0)
        {
          v13 = [(NSDictionary *)self->_streamNamesToSync objectForKeyedSubscript:v12, v16];
          [v6 addObjectsFromArray:v13];
        }
      }

      v9 = [(NSDictionary *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  allObjects = [v6 allObjects];

  return allObjects;
}

- (id)streamNamesToSyncWithSyncType:(id)type transportType:(int64_t)transportType
{
  v5 = [_DKSync2Policy disabledFeaturesForSyncType:type transports:transportType];
  v6 = [(_DKSync2Policy *)self streamNamesToSyncWithDisabledFeatures:v5];

  return v6;
}

- (BOOL)canDeferSyncOperationWithSyncType:(id)type
{
  typeCopy = type;
  v4 = [(_DKSyncType *)typeCopy isPeriodicSync]&& ([(_DKSyncType *)typeCopy forceSync]& 1) == 0 && [(_DKSyncType *)typeCopy urgency]< 8;

  return v4;
}

- (BOOL)canPerformSyncOperationWithSyncType:(id)type lastSyncDate:(id)date lastDaySyncCount:(unint64_t)count isCharging:(BOOL)charging
{
  typeCopy = type;
  dateCopy = date;
  forceSync = [(_DKSyncType *)typeCopy forceSync];
  isTriggeredSync = [(_DKSyncType *)typeCopy isTriggeredSync];
  isSingleDevice = [(_DKSyncType *)typeCopy isSingleDevice];
  if (![(_DKSync2Policy *)self syncDisabled])
  {
    if (forceSync)
    {
      goto LABEL_7;
    }

    if (([(_DKSyncType *)typeCopy didReceivePush]& isTriggeredSync) == 1)
    {
      if (![(_DKSync2Policy *)self pushTriggersSync])
      {
LABEL_17:
        v16 = 0;
        goto LABEL_18;
      }
    }

    else if ((isTriggeredSync & 1) == 0 && ![(_DKSync2Policy *)self minSyncsPerDay])
    {
      goto LABEL_17;
    }

    if ([(_DKSync2Policy *)self requireCharging]&& !charging)
    {
      v15 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [_DKSync2Policy canPerformSyncOperationWithSyncType:v15 lastSyncDate:? lastDaySyncCount:? isCharging:?];
      }

      goto LABEL_4;
    }

    if (dateCopy)
    {
      if (isTriggeredSync)
      {
        if ([(_DKSync2Policy *)self maxSyncsPerDay]<= count)
        {
          v15 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            [_DKSync2Policy canPerformSyncOperationWithSyncType:v15 lastSyncDate:? lastDaySyncCount:? isCharging:?];
          }

          goto LABEL_4;
        }
      }

      else
      {
        if ([(_DKSyncType *)typeCopy isPeriodicSync])
        {
          v18 = +[_DKSync2Policy userDefaults];
          v19 = [v18 BOOLForKey:@"IgnorePeriodicSyncLimits"];

          if (v19)
          {
            v15 = +[_CDLogging syncChannel];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              [_DKSync2Policy canPerformSyncOperationWithSyncType:v15 lastSyncDate:? lastDaySyncCount:? isCharging:?];
            }

            v16 = 1;
            goto LABEL_5;
          }
        }

        if ([(_DKSync2Policy *)self maxSyncsPerDay]<= count)
        {
          v15 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            [_DKSync2Policy canPerformSyncOperationWithSyncType:v15 lastSyncDate:? lastDaySyncCount:? isCharging:?];
          }

          goto LABEL_4;
        }

        [dateCopy timeIntervalSinceNow];
        v21 = -v20;
        [(_DKSync2Policy *)self hoursBetweenSyncsWhenIsSingleDevice:isSingleDevice];
        if (v22 * 3600.0 * 0.75 > v21)
        {
          v15 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            [_DKSync2Policy canPerformSyncOperationWithSyncType:v15 lastSyncDate:? lastDaySyncCount:? isCharging:?];
          }

          goto LABEL_4;
        }
      }
    }

LABEL_7:
    v16 = 1;
    goto LABEL_18;
  }

  v15 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [_DKSync2Policy canPerformSyncOperationWithSyncType:v15 lastSyncDate:? lastDaySyncCount:? isCharging:?];
  }

LABEL_4:
  v16 = 0;
LABEL_5:

LABEL_18:
  return v16;
}

- (BOOL)highPriorityForSyncDownWithSyncType:(id)type
{
  typeCopy = type;
  v4 = +[_DKSyncUrgencyTracker sharedInstance];
  forceSync = [(_DKSyncType *)typeCopy forceSync];

  v6 = (forceSync & 1) != 0 || [(_DKEventData *)v4 version]>= 0xA;
  return v6;
}

- (BOOL)highPriorityForSyncUpWithSyncType:(id)type lastSyncDate:(id)date
{
  dateCopy = date;
  typeCopy = type;
  v8 = +[_DKSyncUrgencyTracker sharedInstance];
  forceSync = [(_DKSyncType *)typeCopy forceSync];

  if (forceSync)
  {
    v10 = 1;
  }

  else
  {
    version = [(_DKEventData *)v8 version];
    v10 = 1;
    if (dateCopy && version <= 9)
    {
      maxSyncDownIntervalInDays = self->_maxSyncDownIntervalInDays;
      if (maxSyncDownIntervalInDays)
      {
        v13 = (86400 * maxSyncDownIntervalInDays);
        [dateCopy timeIntervalSinceNow];
        v10 = -v14 > v13;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  return v10;
}

- (double)hoursBetweenSyncsWhenIsSingleDevice:(BOOL)device urgency:(unint64_t)urgency
{
  deviceCopy = device;
  if (![(_DKSync2Policy *)self minSyncsPerDay])
  {
    return -1.0;
  }

  if (deviceCopy)
  {
    return [(_DKSync2Policy *)self singleDeviceSyncIntervalInDays]* 24.0;
  }

  result = 24.0 / [(_DKSync2Policy *)self minSyncsPerDay];
  v8 = 1.0;
  if (urgency <= 5)
  {
    if (urgency > 2)
    {
      if (urgency == 3)
      {
        v8 = 1.75;
      }

      else if (urgency == 4)
      {
        v8 = 2.0;
      }

      else
      {
        v8 = 2.33;
      }

      return result / v8;
    }

    if (!urgency)
    {
      return result;
    }

    v9 = 1.25;
    if (urgency == 2)
    {
      v8 = 1.5;
    }

    v10 = urgency == 1;
    goto LABEL_22;
  }

  if (urgency <= 8)
  {
    if (urgency == 6)
    {
      v8 = 2.66;
    }

    else if (urgency == 7)
    {
      v8 = 3.0;
    }

    else
    {
      v8 = 3.33;
    }

    return result / v8;
  }

  if (urgency != 9)
  {
    v9 = 4.0;
    if (urgency == 11)
    {
      v8 = 4.0;
    }

    v10 = urgency == 10;
LABEL_22:
    if (v10)
    {
      v8 = v9;
    }

    return result / v8;
  }

  v8 = 3.66;
  return result / v8;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"%@ { \n", v5];

  name = [(_DKSync2Policy *)self name];
  [v3 appendFormat:@"                                   name: %@\n", name];

  if ([(_DKSync2Policy *)self syncDisabled])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"                           syncDisabled: %@\n", v7];
  if (+[_DKSync2Policy cloudSyncDisabled])
  {
    if (+[_DKSync2Policy cloudSyncDisabled])
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    [v3 appendFormat:@"                      cloudSyncDisabled: %@\n", v8];
  }

  if (+[_DKSync2Policy rapportSyncDisabled])
  {
    if (+[_DKSync2Policy rapportSyncDisabled])
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    [v3 appendFormat:@"                    rapportSyncDisabled: %@\n", v9];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKSync2Policy maxSyncDownIntervalInDays](self, "maxSyncDownIntervalInDays")}];
  [v3 appendFormat:@"              maxSyncDownIntervalInDays: %@\n", v10];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKSync2Policy maxSyncPeriodInDays](self, "maxSyncPeriodInDays")}];
  [v3 appendFormat:@"                    maxSyncPeriodInDays: %@\n", v11];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKSync2Policy minSyncIntervalInSeconds](self, "minSyncIntervalInSeconds")}];
  [v3 appendFormat:@"               minSyncIntervalInSeconds: %@\n", v12];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKSync2Policy minSyncWindowInSeconds](self, "minSyncWindowInSeconds")}];
  [v3 appendFormat:@"                 minSyncWindowInSeconds: %@\n", v13];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKSync2Policy minSyncsPerDay](self, "minSyncsPerDay")}];
  [v3 appendFormat:@"                         minSyncsPerDay: %@\n", v14];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKSync2Policy maxSyncsPerDay](self, "maxSyncsPerDay")}];
  [v3 appendFormat:@"                         maxSyncsPerDay: %@\n", v15];

  if ([(_DKSync2Policy *)self numChangesTriggeringSync])
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKSync2Policy numChangesTriggeringSync](self, "numChangesTriggeringSync")}];
    [v3 appendFormat:@"               numChangesTriggeringSync: %@\n", v16];
  }

  else
  {
    [v3 appendFormat:@"               numChangesTriggeringSync: %@\n", @"disabled"];
  }

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKSync2Policy policyDownloadIntervalInDays](self, "policyDownloadIntervalInDays")}];
  [v3 appendFormat:@"           policyDownloadIntervalInDays: %@\n", v17];

  if ([(_DKSync2Policy *)self pushTriggersSync])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  [v3 appendFormat:@"                       pushTriggersSync: %@\n", v18];
  if ([(_DKSync2Policy *)self requireCharging])
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  [v3 appendFormat:@"                        requireCharging: %@\n", v19];
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKSync2Policy singleDeviceSyncIntervalInDays](self, "singleDeviceSyncIntervalInDays")}];
  [v3 appendFormat:@"         singleDeviceSyncIntervalInDays: %@\n", v20];

  streamNamesToSync = [(_DKSync2Policy *)self streamNamesToSync];
  v22 = _CDPrettyPrintCollection(streamNamesToSync, 0, 0, 0);
  [v3 appendFormat:@"                      streamNamesToSync: %@\n", v22];

  streamNamesToAlwaysSync = [(_DKSync2Policy *)self streamNamesToAlwaysSync];
  v24 = _CDPrettyPrintCollection(streamNamesToAlwaysSync, 0, 0, 0);
  [v3 appendFormat:@"                streamNamesToAlwaysSync: %@\n", v24];

  streamNamesWithAdditionsTriggeringSync = [(_DKSync2Policy *)self streamNamesWithAdditionsTriggeringSync];
  v26 = _CDPrettyPrintCollection(streamNamesWithAdditionsTriggeringSync, 0, 0, 0);
  [v3 appendFormat:@" streamNamesWithAdditionsTriggeringSync: %@\n", v26];

  streamNamesWithDeletionsTriggeringSync = [(_DKSync2Policy *)self streamNamesWithDeletionsTriggeringSync];
  v28 = _CDPrettyPrintCollection(streamNamesWithDeletionsTriggeringSync, 0, 0, 0);
  [v3 appendFormat:@" streamNamesWithDeletionsTriggeringSync: %@\n", v28];

  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKSync2Policy syncBatchSizeInEvents](self, "syncBatchSizeInEvents")}];
  [v3 appendFormat:@"                  syncBatchSizeInEvents: %@\n", v29];

  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKSync2Policy maxBatchesPerSync](self, "maxBatchesPerSync")}];
  [v3 appendFormat:@"                      maxBatchesPerSync: %@\n", v30];

  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKSync2Policy syncTimeoutInSeconds](self, "syncTimeoutInSeconds")}];
  [v3 appendFormat:@"                   syncTimeoutInSeconds: %@\n", v31];

  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKSync2Policy triggeredSyncDelayInSeconds](self, "triggeredSyncDelayInSeconds")}];
  [v3 appendFormat:@"            triggeredSyncDelayInSeconds: %@\n", v32];

  [v3 appendString:@"}\n"];

  return v3;
}

- (uint64_t)initWithDictionary:(uint64_t *)dictionary
{
  v308 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (dictionary)
  {
    v297.receiver = dictionary;
    v297.super_class = _DKSync2Policy;
    v4 = objc_msgSendSuper2(&v297, sel_init);

    if (!v4)
    {
LABEL_152:
      dictionary = v4;

      goto LABEL_153;
    }

    objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [OUTLINED_FUNCTION_21() objectForKeyedSubscript:?];
    isKindOfClass = objc_opt_isKindOfClass();

    v10 = [OUTLINED_FUNCTION_21() objectForKeyedSubscript:?];
    v11 = v10;
    v12 = 0x1E7366000uLL;
    if (isKindOfClass)
    {
      [v4 setName:v10];
    }

    else
    {

      if (!v11)
      {
        goto LABEL_9;
      }

      v13 = +[_CDLogging syncChannel];
      if (OUTLINED_FUNCTION_18(v13))
      {
        v296 = [objc_opt_class() description];
        v294 = [OUTLINED_FUNCTION_21() objectForKeyedSubscript:?];
        isKindOfClass = [OUTLINED_FUNCTION_21() objectForKeyedSubscript:?];
        v122 = objc_opt_class();
        *buf = 138544386;
        v299 = v296;
        OUTLINED_FUNCTION_10_0();
        v301 = @"Name";
        v302 = v123;
        v124 = v294;
        v303 = v294;
        v304 = v123;
        v305 = v125;
        v126 = v125;
        v306 = v123;
        v307 = v6;
        OUTLINED_FUNCTION_6_2(&dword_191750000, v127, v128, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v129, v130, v131, v132, v294, v296, v297.receiver, v297.super_class);

        v12 = 0x1E7366000;
      }
    }

LABEL_9:
    v14 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v15 = OUTLINED_FUNCTION_19_0(v14);

    v16 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v17 = v16;
    if (v15)
    {
      [v4 setVersion:v16];
    }

    else
    {

      if (!v17)
      {
        goto LABEL_15;
      }

      syncChannel = [*(v12 + 648) syncChannel];
      if (OUTLINED_FUNCTION_18(syncChannel))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3_1() objectForKeyedSubscript:?];
        objc_claimAutoreleasedReturnValue();
        v133 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:?];
        v134 = objc_opt_class();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_6_2(&dword_191750000, v135, v136, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v137, v138, v139, v140, v293, v295, v297.receiver, v297.super_class);

        v12 = 0x1E7366000;
      }
    }

LABEL_15:
    v19 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v20 = OUTLINED_FUNCTION_19_0(v19);

    v21 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v22 = v21;
    if (v20)
    {
      [v4 setSyncDisabled:{objc_msgSend(v21, "BOOLValue")}];
    }

    else
    {

      if (!v22)
      {
        goto LABEL_21;
      }

      syncChannel2 = [*(v12 + 648) syncChannel];
      if (OUTLINED_FUNCTION_18(syncChannel2))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3_1() objectForKeyedSubscript:?];
        objc_claimAutoreleasedReturnValue();
        v141 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:?];
        v142 = objc_opt_class();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_6_2(&dword_191750000, v143, v144, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v145, v146, v147, v148, v293, v295, v297.receiver, v297.super_class);

        v12 = 0x1E7366000;
      }
    }

LABEL_21:
    v24 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v25 = OUTLINED_FUNCTION_19_0(v24);

    v26 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v27 = v26;
    if (v25)
    {
      [v26 unsignedIntegerValue];
      [OUTLINED_FUNCTION_12() setMaxBatchesPerSync:?];
    }

    else
    {

      if (!v27)
      {
        goto LABEL_27;
      }

      syncChannel3 = [*(v12 + 648) syncChannel];
      if (OUTLINED_FUNCTION_18(syncChannel3))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3_1() objectForKeyedSubscript:?];
        objc_claimAutoreleasedReturnValue();
        v149 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:?];
        v150 = objc_opt_class();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_6_2(&dword_191750000, v151, v152, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v153, v154, v155, v156, v293, v295, v297.receiver, v297.super_class);

        v12 = 0x1E7366000;
      }
    }

LABEL_27:
    v29 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v30 = OUTLINED_FUNCTION_19_0(v29);

    v31 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v32 = v31;
    if (v30)
    {
      [v31 unsignedIntegerValue];
      [OUTLINED_FUNCTION_12() setMaxSyncPeriodInDays:?];
    }

    else
    {

      if (!v32)
      {
        goto LABEL_33;
      }

      syncChannel4 = [*(v12 + 648) syncChannel];
      if (OUTLINED_FUNCTION_18(syncChannel4))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3_1() objectForKeyedSubscript:?];
        objc_claimAutoreleasedReturnValue();
        v157 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:?];
        v158 = objc_opt_class();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_6_2(&dword_191750000, v159, v160, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v161, v162, v163, v164, v293, v295, v297.receiver, v297.super_class);

        v12 = 0x1E7366000;
      }
    }

LABEL_33:
    v34 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v35 = OUTLINED_FUNCTION_19_0(v34);

    v36 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v37 = v36;
    if (v35)
    {
      [v36 unsignedIntegerValue];
      [OUTLINED_FUNCTION_12() setMaxSyncDownIntervalInDays:?];
    }

    else
    {

      if (!v37)
      {
        goto LABEL_39;
      }

      syncChannel5 = [*(v12 + 648) syncChannel];
      if (OUTLINED_FUNCTION_18(syncChannel5))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3_1() objectForKeyedSubscript:?];
        objc_claimAutoreleasedReturnValue();
        v165 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:?];
        v166 = objc_opt_class();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_6_2(&dword_191750000, v167, v168, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v169, v170, v171, v172, v293, v295, v297.receiver, v297.super_class);

        v12 = 0x1E7366000;
      }
    }

LABEL_39:
    v39 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v40 = OUTLINED_FUNCTION_19_0(v39);

    v41 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v42 = v41;
    if (v40)
    {
      [v41 unsignedIntegerValue];
      [OUTLINED_FUNCTION_12() setMinSyncIntervalInSeconds:?];
    }

    else
    {

      if (!v42)
      {
        goto LABEL_45;
      }

      syncChannel6 = [*(v12 + 648) syncChannel];
      if (OUTLINED_FUNCTION_18(syncChannel6))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3_1() objectForKeyedSubscript:?];
        objc_claimAutoreleasedReturnValue();
        v173 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:?];
        v174 = objc_opt_class();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_6_2(&dword_191750000, v175, v176, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v177, v178, v179, v180, v293, v295, v297.receiver, v297.super_class);

        v12 = 0x1E7366000;
      }
    }

LABEL_45:
    v44 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v45 = OUTLINED_FUNCTION_19_0(v44);

    v46 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v47 = v46;
    if (v45)
    {
      [v46 unsignedIntegerValue];
      [OUTLINED_FUNCTION_12() setMinSyncWindowInSeconds:?];
    }

    else
    {

      if (!v47)
      {
        goto LABEL_51;
      }

      syncChannel7 = [*(v12 + 648) syncChannel];
      if (OUTLINED_FUNCTION_18(syncChannel7))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3_1() objectForKeyedSubscript:?];
        objc_claimAutoreleasedReturnValue();
        v181 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:?];
        v182 = objc_opt_class();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_6_2(&dword_191750000, v183, v184, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v185, v186, v187, v188, v293, v295, v297.receiver, v297.super_class);

        v12 = 0x1E7366000;
      }
    }

LABEL_51:
    v49 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v50 = OUTLINED_FUNCTION_19_0(v49);

    v51 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v52 = v51;
    if (v50)
    {
      [v51 unsignedIntegerValue];
      [OUTLINED_FUNCTION_12() setMinSyncsPerDay:?];
    }

    else
    {

      if (!v52)
      {
        goto LABEL_57;
      }

      syncChannel8 = [*(v12 + 648) syncChannel];
      if (OUTLINED_FUNCTION_18(syncChannel8))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3_1() objectForKeyedSubscript:?];
        objc_claimAutoreleasedReturnValue();
        v189 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:?];
        v190 = objc_opt_class();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_6_2(&dword_191750000, v191, v192, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v193, v194, v195, v196, v293, v295, v297.receiver, v297.super_class);

        v12 = 0x1E7366000;
      }
    }

LABEL_57:
    v54 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v55 = OUTLINED_FUNCTION_19_0(v54);

    v56 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v57 = v56;
    if (v55)
    {
      [v56 unsignedIntegerValue];
      [OUTLINED_FUNCTION_12() setMaxSyncsPerDay:?];
    }

    else
    {

      if (!v57)
      {
        goto LABEL_63;
      }

      syncChannel9 = [*(v12 + 648) syncChannel];
      if (OUTLINED_FUNCTION_18(syncChannel9))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3_1() objectForKeyedSubscript:?];
        objc_claimAutoreleasedReturnValue();
        v197 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:?];
        v198 = objc_opt_class();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_6_2(&dword_191750000, v199, v200, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v201, v202, v203, v204, v293, v295, v297.receiver, v297.super_class);

        v12 = 0x1E7366000;
      }
    }

LABEL_63:
    v59 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v60 = OUTLINED_FUNCTION_19_0(v59);

    v61 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v62 = v61;
    if (v60)
    {
      [v61 unsignedIntegerValue];
      [OUTLINED_FUNCTION_12() setNumChangesTriggeringSync:?];
    }

    else
    {

      if (!v62)
      {
        goto LABEL_69;
      }

      syncChannel10 = [*(v12 + 648) syncChannel];
      if (OUTLINED_FUNCTION_18(syncChannel10))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3_1() objectForKeyedSubscript:?];
        objc_claimAutoreleasedReturnValue();
        v205 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:?];
        v206 = objc_opt_class();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_6_2(&dword_191750000, v207, v208, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v209, v210, v211, v212, v293, v295, v297.receiver, v297.super_class);

        v12 = 0x1E7366000;
      }
    }

LABEL_69:
    v64 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v65 = OUTLINED_FUNCTION_19_0(v64);

    v66 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v67 = v66;
    if (v65)
    {
      [v66 unsignedIntegerValue];
      [OUTLINED_FUNCTION_12() setPolicyDownloadIntervalInDays:?];
    }

    else
    {

      if (!v67)
      {
        goto LABEL_75;
      }

      syncChannel11 = [*(v12 + 648) syncChannel];
      if (OUTLINED_FUNCTION_18(syncChannel11))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3_1() objectForKeyedSubscript:?];
        objc_claimAutoreleasedReturnValue();
        v213 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:?];
        v214 = objc_opt_class();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_6_2(&dword_191750000, v215, v216, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v217, v218, v219, v220, v293, v295, v297.receiver, v297.super_class);

        v12 = 0x1E7366000;
      }
    }

LABEL_75:
    v69 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v70 = OUTLINED_FUNCTION_19_0(v69);

    v71 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v72 = v71;
    if (v70)
    {
      [v4 setPushTriggersSync:{objc_msgSend(v71, "BOOLValue")}];
    }

    else
    {

      if (!v72)
      {
        goto LABEL_81;
      }

      syncChannel12 = [*(v12 + 648) syncChannel];
      if (OUTLINED_FUNCTION_18(syncChannel12))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3_1() objectForKeyedSubscript:?];
        objc_claimAutoreleasedReturnValue();
        v221 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:?];
        v222 = objc_opt_class();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_6_2(&dword_191750000, v223, v224, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v225, v226, v227, v228, v293, v295, v297.receiver, v297.super_class);

        v12 = 0x1E7366000;
      }
    }

LABEL_81:
    v74 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v75 = OUTLINED_FUNCTION_19_0(v74);

    v76 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v77 = v76;
    if (v75)
    {
      [v4 setRequireCharging:{objc_msgSend(v76, "BOOLValue")}];
    }

    else
    {

      if (!v77)
      {
        goto LABEL_87;
      }

      syncChannel13 = [*(v12 + 648) syncChannel];
      if (OUTLINED_FUNCTION_18(syncChannel13))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3_1() objectForKeyedSubscript:?];
        objc_claimAutoreleasedReturnValue();
        v229 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:?];
        v230 = objc_opt_class();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_6_2(&dword_191750000, v231, v232, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v233, v234, v235, v236, v293, v295, v297.receiver, v297.super_class);

        v12 = 0x1E7366000;
      }
    }

LABEL_87:
    v79 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v80 = OUTLINED_FUNCTION_19_0(v79);

    v81 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v82 = v81;
    if (v80)
    {
      [v81 unsignedIntegerValue];
      [OUTLINED_FUNCTION_12() setSingleDeviceSyncIntervalInDays:?];
    }

    else
    {

      if (!v82)
      {
        goto LABEL_93;
      }

      syncChannel14 = [*(v12 + 648) syncChannel];
      if (OUTLINED_FUNCTION_18(syncChannel14))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3_1() objectForKeyedSubscript:?];
        objc_claimAutoreleasedReturnValue();
        v237 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:?];
        v238 = objc_opt_class();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_6_2(&dword_191750000, v239, v240, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v241, v242, v243, v244, v293, v295, v297.receiver, v297.super_class);

        v12 = 0x1E7366000;
      }
    }

LABEL_93:
    v84 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v85 = objc_opt_isKindOfClass();

    v86 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v87 = v86;
    if (v85)
    {
      [v4 setStreamNamesToSync:v86];
    }

    else
    {

      if (!v87)
      {
        goto LABEL_99;
      }

      syncChannel15 = [*(v12 + 648) syncChannel];
      if (OUTLINED_FUNCTION_18(syncChannel15))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3_1() objectForKeyedSubscript:?];
        objc_claimAutoreleasedReturnValue();
        v245 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:?];
        v246 = objc_opt_class();
        *buf = 138544386;
        v299 = isKindOfClass;
        OUTLINED_FUNCTION_10_0();
        v301 = @"StreamNamesToSync";
        v302 = v247;
        v248 = v295;
        v303 = v295;
        OUTLINED_FUNCTION_2_2();
        v307 = v7;
        OUTLINED_FUNCTION_6_2(&dword_191750000, v249, v250, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v251, v252, v253, v254, v293, v295, v297.receiver, v297.super_class);

        v12 = 0x1E7366000;
      }
    }

LABEL_99:
    v89 = [OUTLINED_FUNCTION_13_0() objectForKeyedSubscript:?];
    v90 = objc_opt_isKindOfClass();

    v91 = [OUTLINED_FUNCTION_13_0() objectForKeyedSubscript:?];
    syncChannel16 = v91;
    if (v90)
    {
      [v4 setStreamNamesToAlwaysSync:v91];
    }

    else
    {

      if (!syncChannel16)
      {
        goto LABEL_105;
      }

      syncChannel16 = [*(v12 + 648) syncChannel];
      if (os_log_type_enabled(syncChannel16, OS_LOG_TYPE_ERROR))
      {
        v255 = [objc_opt_class() description];
        v256 = [OUTLINED_FUNCTION_13_0() objectForKeyedSubscript:?];
        v257 = [OUTLINED_FUNCTION_13_0() objectForKeyedSubscript:?];
        v258 = objc_opt_class();
        *buf = 138544386;
        v299 = v255;
        OUTLINED_FUNCTION_10_0();
        v301 = @"StreamNamesToAlwaysSync";
        v302 = v259;
        v303 = v256;
        OUTLINED_FUNCTION_2_2();
        v307 = v5;
        OUTLINED_FUNCTION_17(&dword_191750000, syncChannel16, v260, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", buf);

        v12 = 0x1E7366000;
      }
    }

LABEL_105:
    v93 = [OUTLINED_FUNCTION_13_0() objectForKeyedSubscript:?];
    v94 = objc_opt_isKindOfClass();

    v95 = [OUTLINED_FUNCTION_13_0() objectForKeyedSubscript:?];
    syncChannel17 = v95;
    if (v94)
    {
      [v4 setStreamNamesWithAdditionsTriggeringSync:v95];
    }

    else
    {

      if (!syncChannel17)
      {
        goto LABEL_111;
      }

      syncChannel17 = [*(v12 + 648) syncChannel];
      if (os_log_type_enabled(syncChannel17, OS_LOG_TYPE_ERROR))
      {
        v261 = [objc_opt_class() description];
        v262 = [OUTLINED_FUNCTION_13_0() objectForKeyedSubscript:?];
        v263 = [OUTLINED_FUNCTION_13_0() objectForKeyedSubscript:?];
        v264 = objc_opt_class();
        *buf = 138544386;
        v299 = v261;
        OUTLINED_FUNCTION_10_0();
        v301 = @"StreamNamesWithAdditionsTriggeringSync";
        v302 = v265;
        v303 = v262;
        OUTLINED_FUNCTION_2_2();
        v307 = v5;
        OUTLINED_FUNCTION_17(&dword_191750000, syncChannel17, v266, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", buf);

        v12 = 0x1E7366000;
      }
    }

LABEL_111:
    v97 = [OUTLINED_FUNCTION_13_0() objectForKeyedSubscript:?];
    v98 = objc_opt_isKindOfClass();

    v99 = [OUTLINED_FUNCTION_13_0() objectForKeyedSubscript:?];
    syncChannel18 = v99;
    if (v98)
    {
      [v4 setStreamNamesWithDeletionsTriggeringSync:v99];
    }

    else
    {

      if (!syncChannel18)
      {
        goto LABEL_117;
      }

      syncChannel18 = [*(v12 + 648) syncChannel];
      if (os_log_type_enabled(syncChannel18, OS_LOG_TYPE_ERROR))
      {
        v267 = [objc_opt_class() description];
        v268 = [OUTLINED_FUNCTION_13_0() objectForKeyedSubscript:?];
        v269 = [OUTLINED_FUNCTION_13_0() objectForKeyedSubscript:?];
        v270 = objc_opt_class();
        *buf = 138544386;
        v299 = v267;
        OUTLINED_FUNCTION_10_0();
        v301 = @"StreamNamesWithDeletionsTriggeringSync";
        v302 = v271;
        v303 = v268;
        OUTLINED_FUNCTION_2_2();
        v307 = v5;
        OUTLINED_FUNCTION_17(&dword_191750000, syncChannel18, v272, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", buf);

        v12 = 0x1E7366000;
      }
    }

LABEL_117:
    v101 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
    v102 = objc_opt_isKindOfClass();

    v103 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
    syncChannel19 = v103;
    if (v102)
    {
      [v103 unsignedIntegerValue];
      [OUTLINED_FUNCTION_12() setSyncBatchSizeInEvents:?];
    }

    else
    {

      if (!syncChannel19)
      {
        goto LABEL_123;
      }

      syncChannel19 = [*(v12 + 648) syncChannel];
      if (os_log_type_enabled(syncChannel19, OS_LOG_TYPE_ERROR))
      {
        v273 = [objc_opt_class() description];
        v274 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        v275 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        v276 = objc_opt_class();
        *buf = 138544386;
        v299 = v273;
        OUTLINED_FUNCTION_10_0();
        v301 = @"SyncBatchSizeInEvents";
        v302 = v277;
        OUTLINED_FUNCTION_1_1();
        OUTLINED_FUNCTION_17(&dword_191750000, syncChannel19, v278, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", buf);
      }
    }

LABEL_123:
    v105 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
    v106 = objc_opt_isKindOfClass();

    v107 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
    syncChannel20 = v107;
    if (v106)
    {
      [v107 unsignedIntegerValue];
      [OUTLINED_FUNCTION_12() setSyncTimeoutInSeconds:?];
    }

    else
    {

      if (!syncChannel20)
      {
        goto LABEL_129;
      }

      syncChannel20 = [*(v12 + 648) syncChannel];
      if (os_log_type_enabled(syncChannel20, OS_LOG_TYPE_ERROR))
      {
        v279 = [objc_opt_class() description];
        v280 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        v281 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        v282 = objc_opt_class();
        *buf = 138544386;
        v299 = v279;
        OUTLINED_FUNCTION_10_0();
        v301 = @"SyncTimeoutInSeconds";
        v302 = v283;
        OUTLINED_FUNCTION_1_1();
        OUTLINED_FUNCTION_17(&dword_191750000, syncChannel20, v284, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", buf);
      }
    }

LABEL_129:
    v109 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
    v110 = objc_opt_isKindOfClass();

    v111 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
    syncChannel23 = v111;
    if (v110)
    {
      [v111 unsignedIntegerValue];
      [OUTLINED_FUNCTION_12() setTriggeredSyncDelayInSeconds:?];
    }

    else
    {

      if (!syncChannel23)
      {
LABEL_135:
        [@"com.apple.CoreDuet" UTF8String];
        if (os_variant_has_internal_diagnostics())
        {
          syncChannel21 = [*(v12 + 648) syncChannel];
          if (os_log_type_enabled(syncChannel21, OS_LOG_TYPE_DEBUG))
          {
            v121 = [objc_opt_class() description];
            *buf = 138543362;
            v299 = v121;
            _os_log_debug_impl(&dword_191750000, syncChannel21, OS_LOG_TYPE_DEBUG, "%{public}@: Enabling always sync stream", buf, 0xCu);
          }

          v114 = v4[20];
          if (v114)
          {
            v115 = [v114 mutableCopy];
          }

          else
          {
            v115 = objc_opt_new();
          }

          v116 = v115;

          [v116 addObject:@"/always/sync"];
          v117 = [v116 copy];
          v118 = v4[20];
          v4[20] = v117;
        }

        if ([v3 count] && (v4[1] & 1) == 0 && !v4[16])
        {
          *(v4 + 8) = 1;
          syncChannel22 = [*(v12 + 648) syncChannel];
          if (os_log_type_enabled(syncChannel22, OS_LOG_TYPE_ERROR))
          {
            v291 = [objc_opt_class() description];
            v292 = v4[2];
            *buf = 138543618;
            v299 = v291;
            v300 = 2114;
            v301 = v292;
            _os_log_error_impl(&dword_191750000, syncChannel22, OS_LOG_TYPE_ERROR, "%{public}@: Disabling %{public}@ sync policy due to invalid MaxBatchesPerSync", buf, 0x16u);
          }
        }

        if (_DKSync2PolicyOkToDownloadPolicyUpdates == 1 && [v3 count] && (v4[1] & 1) == 0)
        {
          [_DKSync2Policy possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays:?];
        }

        goto LABEL_152;
      }

      syncChannel23 = [*(v12 + 648) syncChannel];
      if (os_log_type_enabled(syncChannel23, OS_LOG_TYPE_ERROR))
      {
        v285 = [objc_opt_class() description];
        v286 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        v287 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        v288 = objc_opt_class();
        *buf = 138544386;
        v299 = v285;
        OUTLINED_FUNCTION_10_0();
        v301 = @"TriggeredSyncDelayInSeconds";
        v302 = v289;
        OUTLINED_FUNCTION_1_1();
        OUTLINED_FUNCTION_17(&dword_191750000, syncChannel23, v290, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", buf);
      }
    }

    goto LABEL_135;
  }

LABEL_153:

  return dictionary;
}

+ (id)policyFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (!dictionaryCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    dictionaryCopy = MEMORY[0x1E695E0F8];
  }

  v4 = [[_DKSync2Policy alloc] initWithDictionary:dictionaryCopy];

  return v4;
}

- (id)queryStartDateWithSyncType:(void *)type lastSyncDate:(uint64_t)date lastDaySyncCount:(void *)count
{
  v14 = *MEMORY[0x1E69E9840];
  countCopy = count;
  if (type)
  {
    maxSyncPeriodInDays = [type maxSyncPeriodInDays];
    v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-(86400 * maxSyncPeriodInDays)];
    if (countCopy && ([MEMORY[0x1E695DF00] distantPast], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(countCopy, "isEqualToDate:", v7), v7, (v8 & 1) == 0))
    {
      v9 = [countCopy laterDate:v6];
    }

    else
    {
      v9 = v6;
      v10 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v12 = 138412290;
        v13 = v9;
        _os_log_debug_impl(&dword_191750000, v10, OS_LOG_TYPE_DEBUG, "No last sync date, using: %@", &v12, 0xCu);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)queryStartDateWithSyncType:(id)type lastSyncDate:(id)date lastDaySyncCount:(unint64_t)count previousHighWaterMark:(id)mark
{
  markCopy = mark;
  v10 = [_DKSync2Policy queryStartDateWithSyncType:v9 lastSyncDate:date lastDaySyncCount:?];
  v11 = [v10 laterDate:markCopy];

  return v11;
}

- (id)queryStartDateWithSyncType:(id)type previousHighWaterMark:(id)mark
{
  markCopy = mark;
  v7 = [_DKSync2Policy queryStartDateWithSyncType:v6 lastSyncDate:0 lastDaySyncCount:?];
  v8 = v7;
  if (markCopy)
  {
    v9 = [v7 laterDate:markCopy];
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;

  return v10;
}

+ (void)_policyForSyncTransportType:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

+ (void)_policyForSyncTransportType:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

+ (void)featureNameFromFeatureType:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

+ (void)internalFeatureNameFromFeatureName:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

+ (void)configurationPlistForFilename:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

+ (void)configurationPlistForFilename:.cold.2()
{
  OUTLINED_FUNCTION_16();
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

+ (void)setOkToDownloadPolicyUpdates:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

+ (void)handleDownloadSyncPolicyResponse:data:error:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v1 = [objc_opt_class() description];
  v2 = [v0 domain];
  [v0 code];
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x2Au);
}

+ (void)handleDownloadSyncPolicyResponse:data:error:.cold.2()
{
  OUTLINED_FUNCTION_16();
  v1 = [objc_opt_class() description];
  v2 = [v0 domain];
  [v0 code];
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x2Au);
}

+ (void)handleDownloadSyncPolicyResponse:data:error:.cold.3()
{
  OUTLINED_FUNCTION_16();
  v5 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_8_0();
  v4 = v1;
  _os_log_fault_impl(&dword_191750000, v0, OS_LOG_TYPE_FAULT, "%{public}@: Policy download returned status 200 but no data. Response: %@", v3, 0x16u);
}

+ (void)handleDownloadSyncPolicyResponse:(uint64_t)a1 data:(uint64_t)a2 error:.cold.4(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)canPerformSyncOperationWithSyncType:(uint64_t)a1 lastSyncDate:(uint64_t)a2 lastDaySyncCount:isCharging:.cold.1(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)canPerformSyncOperationWithSyncType:(uint64_t)a1 lastSyncDate:(uint64_t)a2 lastDaySyncCount:isCharging:.cold.2(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)canPerformSyncOperationWithSyncType:(uint64_t)a1 lastSyncDate:(uint64_t)a2 lastDaySyncCount:isCharging:.cold.3(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)canPerformSyncOperationWithSyncType:(uint64_t)a1 lastSyncDate:(uint64_t)a2 lastDaySyncCount:isCharging:.cold.4(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)canPerformSyncOperationWithSyncType:(uint64_t)a1 lastSyncDate:(uint64_t)a2 lastDaySyncCount:isCharging:.cold.5(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)canPerformSyncOperationWithSyncType:(uint64_t)a1 lastSyncDate:(uint64_t)a2 lastDaySyncCount:isCharging:.cold.6(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

@end