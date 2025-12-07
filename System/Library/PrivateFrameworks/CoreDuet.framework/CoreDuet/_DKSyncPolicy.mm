@interface _DKSyncPolicy
+ (Class)policyFromDictionary:(uint64_t)dictionary;
+ (id)configurationPlist;
+ (id)forceSyncPolicy;
+ (id)policy;
+ (id)syncPolicyConfigPath;
+ (void)possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays:(uint64_t)days;
- (double)hoursBetweenSyncsWhenIsSingleDevice:(BOOL)device;
- (id)description;
- (id)initWithSyncDisabled:(void *)disabled alwaysSyncUpAndDown:(void *)down assetThresholdInBytes:(void *)bytes firstSyncPeriodInDays:(void *)days maxSyncDownIntervalInDays:(void *)inDays minSyncIntervalInSeconds:(void *)seconds minSyncsPerDay:(void *)day maxSyncsPerDay:(void *)self0 numChangesTriggeringSync:(void *)self1 policyDownloadIntervalInDays:(void *)self2 pushTriggersSync:(void *)self3 singleDeviceSyncIntervalInDays:(void *)self4 streamNamesWithAdditionsTriggeringSync:(void *)self5 streamNamesWithDeletionsTriggeringSync:(void *)self6 syncTimeoutInSeconds:(void *)self7 triggeredSyncDelayInSeconds:;
- (id)queryStartDateFromLastDaySyncDates:(id)dates lastSyncDate:(id)date isSingleDevice:(BOOL)device isTriggeredSync:(BOOL)sync;
@end

@implementation _DKSyncPolicy

+ (id)configurationPlist
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = objc_opt_self();
  v2 = MEMORY[0x1E695DF20];
  v3 = +[(_DKSyncPolicy *)v1];
  v4 = [v2 dictionaryWithContentsOfFile:v3];

  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = +[(_DKSyncPolicy *)v1];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_INFO, "Failed to read policy file: %@", &v8, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

+ (Class)policyFromDictionary:(uint64_t)dictionary
{
  v2 = a2;
  v91 = objc_opt_self();
  if (!v2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v2 = MEMORY[0x1E695E0F8];
  }

  objc_opt_class();
  objc_opt_class();
  v3 = [v2 objectForKeyedSubscript:@"SyncDisabled"];
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [v2 objectForKeyedSubscript:@"SyncDisabled"];
  v6 = v5;
  if (isKindOfClass)
  {
    v97 = v5;
  }

  else
  {

    if (v6)
    {
      v7 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        +[_DKSyncPolicy policyFromDictionary:];
      }
    }

    v97 = 0;
  }

  v8 = [v2 objectForKeyedSubscript:@"AlwaysSyncUpAndDown"];
  v9 = objc_opt_isKindOfClass();

  v10 = [v2 objectForKeyedSubscript:@"AlwaysSyncUpAndDown"];
  v11 = v10;
  if (v9)
  {
    v96 = v10;
  }

  else
  {

    if (v11)
    {
      v12 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[_DKSyncPolicy policyFromDictionary:];
      }
    }

    v96 = 0;
  }

  v13 = [v2 objectForKeyedSubscript:@"AssetThresholdInBytes"];
  v14 = objc_opt_isKindOfClass();

  v15 = [v2 objectForKeyedSubscript:@"AssetThresholdInBytes"];
  v16 = v15;
  if (v14)
  {
    v95 = v15;
  }

  else
  {

    if (v16)
    {
      v17 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        +[_DKSyncPolicy policyFromDictionary:];
      }
    }

    v95 = 0;
  }

  v18 = [v2 objectForKeyedSubscript:@"FirstSyncPeriodInDays"];
  v19 = objc_opt_isKindOfClass();

  v20 = [v2 objectForKeyedSubscript:@"FirstSyncPeriodInDays"];
  v21 = v20;
  if (v19)
  {
    v93 = v20;
  }

  else
  {

    if (v21)
    {
      v22 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        +[_DKSyncPolicy policyFromDictionary:];
      }
    }

    v93 = 0;
  }

  v23 = [v2 objectForKeyedSubscript:@"MaxSyncDownIntervalInDays"];
  v24 = objc_opt_isKindOfClass();

  v25 = [v2 objectForKeyedSubscript:@"MaxSyncDownIntervalInDays"];
  v26 = v25;
  if (v24)
  {
    v94 = v25;
  }

  else
  {

    if (v26)
    {
      v27 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        +[_DKSyncPolicy policyFromDictionary:];
      }
    }

    v94 = 0;
  }

  v28 = [v2 objectForKeyedSubscript:@"MinSyncIntervalInSeconds"];
  v29 = objc_opt_isKindOfClass();

  v30 = [v2 objectForKeyedSubscript:@"MinSyncIntervalInSeconds"];
  v31 = v30;
  if (v29)
  {
    v90 = v30;
  }

  else
  {

    if (v31)
    {
      v32 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        +[_DKSyncPolicy policyFromDictionary:];
      }
    }

    v90 = 0;
  }

  v33 = [v2 objectForKeyedSubscript:@"MinSyncsPerDay"];
  v34 = objc_opt_isKindOfClass();

  v35 = [v2 objectForKeyedSubscript:@"MinSyncsPerDay"];
  v36 = v35;
  if (v34)
  {
    v89 = v35;
  }

  else
  {

    if (v36)
    {
      v37 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        +[_DKSyncPolicy policyFromDictionary:];
      }
    }

    v89 = 0;
  }

  v38 = [v2 objectForKeyedSubscript:@"MaxSyncsPerDay"];
  v39 = objc_opt_isKindOfClass();

  v40 = [v2 objectForKeyedSubscript:@"MaxSyncsPerDay"];
  v41 = v40;
  if (v39)
  {
    v88 = v40;
  }

  else
  {

    if (v41)
    {
      v42 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        +[_DKSyncPolicy policyFromDictionary:];
      }
    }

    v88 = 0;
  }

  v43 = [v2 objectForKeyedSubscript:@"NumChangesTriggeringSync"];
  v44 = objc_opt_isKindOfClass();

  v45 = [v2 objectForKeyedSubscript:@"NumChangesTriggeringSync"];
  v46 = v45;
  if (v44)
  {
    v87 = v45;
  }

  else
  {

    if (v46)
    {
      v47 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        +[_DKSyncPolicy policyFromDictionary:];
      }
    }

    v87 = 0;
  }

  v48 = [v2 objectForKeyedSubscript:@"PolicyDownloadIntervalInDays"];
  v49 = objc_opt_isKindOfClass();

  v50 = [v2 objectForKeyedSubscript:@"PolicyDownloadIntervalInDays"];
  if (v49)
  {
    v86 = v50;
  }

  else
  {
    v51 = v50;

    if (v51)
    {
      v52 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        +[_DKSyncPolicy policyFromDictionary:];
      }
    }

    v86 = 0;
  }

  v53 = [v2 objectForKeyedSubscript:@"PushTriggersSync"];
  v54 = objc_opt_isKindOfClass();

  v55 = [v2 objectForKeyedSubscript:@"PushTriggersSync"];
  v56 = v55;
  if ((v54 & 1) == 0)
  {

    if (v56)
    {
      v57 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        +[_DKSyncPolicy policyFromDictionary:];
      }

      v56 = 0;
    }
  }

  v58 = [v2 objectForKeyedSubscript:@"SingleDeviceSyncIntervalInDays"];
  v59 = objc_opt_isKindOfClass();

  v60 = [v2 objectForKeyedSubscript:@"SingleDeviceSyncIntervalInDays"];
  v61 = v60;
  if (v59)
  {
    v62 = v60;
  }

  else
  {

    if (v61)
    {
      v63 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        +[_DKSyncPolicy policyFromDictionary:];
      }
    }

    v62 = 0;
  }

  v64 = [v2 objectForKeyedSubscript:@"StreamNamesWithAdditionsTriggeringSync"];
  v65 = objc_opt_isKindOfClass();

  v66 = [v2 objectForKeyedSubscript:@"StreamNamesWithAdditionsTriggeringSync"];
  v67 = v66;
  if (v65)
  {
    v68 = v66;
  }

  else
  {

    if (v67)
    {
      v69 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        +[_DKSyncPolicy policyFromDictionary:];
      }
    }

    v68 = 0;
  }

  v70 = [v2 objectForKeyedSubscript:@"StreamNamesWithDeletionsTriggeringSync"];
  v71 = objc_opt_isKindOfClass();

  v72 = [v2 objectForKeyedSubscript:@"StreamNamesWithDeletionsTriggeringSync"];
  v73 = v72;
  if ((v71 & 1) == 0)
  {

    if (v73)
    {
      v74 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        +[_DKSyncPolicy policyFromDictionary:];
      }

      v73 = 0;
    }
  }

  v75 = [v2 objectForKeyedSubscript:@"SyncTimeoutInSeconds"];
  v76 = objc_opt_isKindOfClass();

  v77 = [v2 objectForKeyedSubscript:@"SyncTimeoutInSeconds"];
  v78 = v77;
  if ((v76 & 1) == 0)
  {

    if (v78)
    {
      v79 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        +[_DKSyncPolicy policyFromDictionary:];
      }

      v78 = 0;
    }
  }

  v80 = [v2 objectForKeyedSubscript:@"TriggeredSyncDelayInSeconds"];
  v81 = objc_opt_isKindOfClass();

  v82 = [v2 objectForKeyedSubscript:@"TriggeredSyncDelayInSeconds"];
  v83 = v82;
  if ((v81 & 1) == 0)
  {

    if (v83)
    {
      v84 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        +[_DKSyncPolicy policyFromDictionary:];
      }

      v83 = 0;
    }
  }

  v92 = [(_DKSyncPolicy *)[v91 alloc] initWithSyncDisabled:v97 alwaysSyncUpAndDown:v96 assetThresholdInBytes:v95 firstSyncPeriodInDays:v93 maxSyncDownIntervalInDays:v94 minSyncIntervalInSeconds:v90 minSyncsPerDay:v89 maxSyncsPerDay:v88 numChangesTriggeringSync:v87 policyDownloadIntervalInDays:v86 pushTriggersSync:v56 singleDeviceSyncIntervalInDays:v62 streamNamesWithAdditionsTriggeringSync:v68 streamNamesWithDeletionsTriggeringSync:v73 syncTimeoutInSeconds:v78 triggeredSyncDelayInSeconds:v83];

  return v92;
}

+ (id)forceSyncPolicy
{
  result = [self policy];
  if (result)
  {
    *(result + 11) = 1;
    *(result + 9) = 1;
  }

  return result;
}

+ (void)possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays:(uint64_t)days
{
  objc_opt_self();
  if (!+[_DKCloudUtilities isUnitTesting])
  {
    v1 = +[_DKCloudUtilities sharedInstance];
    [v1 isCloudSyncAvailable];
  }
}

+ (id)syncPolicyConfigPath
{
  objc_opt_self();
  v1 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v2 = [v1 pathForResource:@"com.apple.coreduet.knowledge.syncPolicies" ofType:@"plist"];

  return v2;
}

- (id)queryStartDateFromLastDaySyncDates:(id)dates lastSyncDate:(id)date isSingleDevice:(BOOL)device isTriggeredSync:(BOOL)sync
{
  syncCopy = sync;
  deviceCopy = device;
  datesCopy = dates;
  dateCopy = date;
  if ([(_DKSyncPolicy *)self syncDisabled])
  {
    v12 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [_DKSyncPolicy queryStartDateFromLastDaySyncDates:lastSyncDate:isSingleDevice:isTriggeredSync:];
    }

LABEL_4:

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  forceSync = [(_DKSyncPolicy *)self forceSync];
  if (!forceSync && !syncCopy)
  {
    if (![(_DKSyncPolicy *)self minSyncsPerDay])
    {
      goto LABEL_5;
    }

LABEL_16:
    if (dateCopy)
    {
      v16 = [datesCopy count];
      maxSyncsPerDay = [(_DKSyncPolicy *)self maxSyncsPerDay];
      if (syncCopy)
      {
        if (v16 >= maxSyncsPerDay)
        {
          v12 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            [_DKSyncPolicy queryStartDateFromLastDaySyncDates:lastSyncDate:isSingleDevice:isTriggeredSync:];
          }

          goto LABEL_4;
        }
      }

      else
      {
        if (v16 >= maxSyncsPerDay)
        {
          v12 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            [_DKSyncPolicy queryStartDateFromLastDaySyncDates:lastSyncDate:isSingleDevice:isTriggeredSync:];
          }

          goto LABEL_4;
        }

        [dateCopy timeIntervalSinceNow];
        v21 = -v20;
        [(_DKSyncPolicy *)self hoursBetweenSyncsWhenIsSingleDevice:deviceCopy];
        if (v22 * 3600.0 * 0.75 > v21)
        {
          v12 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            [_DKSyncPolicy queryStartDateFromLastDaySyncDates:lastSyncDate:isSingleDevice:isTriggeredSync:];
          }

          goto LABEL_4;
        }
      }

      goto LABEL_28;
    }

    goto LABEL_21;
  }

  if (!forceSync)
  {
    goto LABEL_16;
  }

  if (dateCopy)
  {
LABEL_28:
    v13 = dateCopy;
    goto LABEL_6;
  }

LABEL_21:
  firstSyncPeriodInDays = [(_DKSyncPolicy *)self firstSyncPeriodInDays];
  v13 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-(86400 * firstSyncPeriodInDays)];
  v19 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [_DKSyncPolicy queryStartDateFromLastDaySyncDates:lastSyncDate:isSingleDevice:isTriggeredSync:];
  }

LABEL_6:

  return v13;
}

- (double)hoursBetweenSyncsWhenIsSingleDevice:(BOOL)device
{
  deviceCopy = device;
  if (![(_DKSyncPolicy *)self minSyncsPerDay])
  {
    return -1.0;
  }

  if (deviceCopy)
  {
    return [(_DKSyncPolicy *)self singleDeviceSyncIntervalInDays]* 24.0;
  }

  return 24.0 / [(_DKSyncPolicy *)self minSyncsPerDay];
}

+ (id)policy
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = +[(_DKSyncPolicy *)self];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 addEntriesFromDictionary:v4];
  }

  v5 = +[(_DKSync2Policy *)self];
  v6 = [v5 valueForKey:@"CloudSyncPolicy"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 addEntriesFromDictionary:v6];
  }

  v7 = [(_DKSyncPolicy *)self policyFromDictionary:v3];
  if (([v3 isEqualToDictionary:policy_previousPolicyDict] & 1) == 0)
  {
    v8 = policy_previousPolicyDict;
    v9 = +[_CDLogging syncChannel];
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      if (v10)
      {
        *v14 = 138412290;
        *&v14[4] = v7;
        v11 = "policy changed to: %@";
LABEL_21:
        _os_log_debug_impl(&dword_191750000, v9, OS_LOG_TYPE_DEBUG, v11, v14, 0xCu);
      }
    }

    else if (v10)
    {
      *v14 = 138412290;
      *&v14[4] = v7;
      v11 = "policy: %@";
      goto LABEL_21;
    }

    objc_storeStrong(&policy_previousPolicyDict, v3);
  }

  if (+[_DKCloudUtilities isUnitTesting](_DKCloudUtilities, "isUnitTesting", *v14, *&v14[8]) && [v7 syncDisabled])
  {
    v12 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_191750000, v12, OS_LOG_TYPE_INFO, "Enabling sync due to unit testing", v14, 2u);
    }

    if (v7)
    {
      v7[8] = 0;
    }
  }

  return v7;
}

- (id)initWithSyncDisabled:(void *)disabled alwaysSyncUpAndDown:(void *)down assetThresholdInBytes:(void *)bytes firstSyncPeriodInDays:(void *)days maxSyncDownIntervalInDays:(void *)inDays minSyncIntervalInSeconds:(void *)seconds minSyncsPerDay:(void *)day maxSyncsPerDay:(void *)self0 numChangesTriggeringSync:(void *)self1 policyDownloadIntervalInDays:(void *)self2 pushTriggersSync:(void *)self3 singleDeviceSyncIntervalInDays:(void *)self4 streamNamesWithAdditionsTriggeringSync:(void *)self5 streamNamesWithDeletionsTriggeringSync:(void *)self6 syncTimeoutInSeconds:(void *)self7 triggeredSyncDelayInSeconds:
{
  v55 = a2;
  disabledCopy = disabled;
  downCopy = down;
  bytesCopy = bytes;
  daysCopy = days;
  inDaysCopy = inDays;
  secondsCopy = seconds;
  dayCopy = day;
  perDayCopy = perDay;
  syncCopy = sync;
  intervalInDaysCopy = intervalInDays;
  triggersSyncCopy = triggersSync;
  syncIntervalInDaysCopy = syncIntervalInDays;
  triggeringSyncCopy = triggeringSync;
  deletionsTriggeringSyncCopy = deletionsTriggeringSync;
  inSecondsCopy = inSeconds;
  if (!self)
  {
    v30 = 0;
    v31 = disabledCopy;
    v32 = v55;
    goto LABEL_64;
  }

  v61.receiver = self;
  v61.super_class = _DKSyncPolicy;
  v30 = objc_msgSendSuper2(&v61, sel_init);
  v31 = disabledCopy;
  if (!v30)
  {
    v32 = v55;
    goto LABEL_64;
  }

  v32 = v55;
  if (v55)
  {
    bOOLValue = [v55 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  *(v30 + 8) = bOOLValue;
  if (disabledCopy)
  {
    bOOLValue2 = [disabledCopy BOOLValue];
  }

  else
  {
    bOOLValue2 = 0;
  }

  *(v30 + 9) = bOOLValue2;
  if (downCopy)
  {
    unsignedIntegerValue = [downCopy unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 20480;
  }

  *(v30 + 2) = unsignedIntegerValue;
  if (bytesCopy)
  {
    unsignedIntegerValue2 = [bytesCopy unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = 7;
  }

  *(v30 + 3) = unsignedIntegerValue2;
  if (daysCopy)
  {
    unsignedIntegerValue3 = [daysCopy unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue3 = 7;
  }

  *(v30 + 4) = unsignedIntegerValue3;
  if (inDaysCopy)
  {
    unsignedIntegerValue4 = [inDaysCopy unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue4 = 60;
  }

  *(v30 + 5) = unsignedIntegerValue4;
  if (secondsCopy)
  {
    unsignedIntegerValue5 = [secondsCopy unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue5 = 4;
  }

  *(v30 + 6) = unsignedIntegerValue5;
  if (dayCopy)
  {
    unsignedIntegerValue6 = [dayCopy unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue6 = 6;
  }

  *(v30 + 7) = unsignedIntegerValue6;
  if (perDayCopy)
  {
    unsignedIntegerValue7 = [perDayCopy unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue7 = 0;
  }

  *(v30 + 8) = unsignedIntegerValue7;
  if (syncCopy)
  {
    unsignedIntegerValue8 = [syncCopy unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue8 = 7;
  }

  *(v30 + 14) = unsignedIntegerValue8;
  if (intervalInDaysCopy)
  {
    bOOLValue3 = [intervalInDaysCopy BOOLValue];
  }

  else
  {
    bOOLValue3 = 1;
  }

  *(v30 + 10) = bOOLValue3;
  if (triggersSyncCopy)
  {
    unsignedIntegerValue9 = [triggersSyncCopy unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue9 = 1;
  }

  *(v30 + 9) = unsignedIntegerValue9;
  objc_storeStrong(v30 + 10, syncIntervalInDays);
  objc_storeStrong(v30 + 11, triggeringSync);
  if (deletionsTriggeringSyncCopy)
  {
    unsignedIntegerValue10 = [deletionsTriggeringSyncCopy unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue10 = 30;
  }

  *(v30 + 12) = unsignedIntegerValue10;
  if (inSecondsCopy)
  {
    unsignedIntegerValue11 = [inSecondsCopy unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue11 = 10;
  }

  *(v30 + 13) = unsignedIntegerValue11;
  if (*(v30 + 5) > 0x15180uLL)
  {
    *(v30 + 5) = 86400;
  }

  v47 = *(v30 + 7);
  if (v47 >= 0x121)
  {
    v47 = 288;
    *(v30 + 7) = 288;
  }

  if (*(v30 + 6) > v47)
  {
    *(v30 + 3) = vdupq_n_s64(4uLL);
  }

  v48 = *(v30 + 14);
  if (!v48)
  {
    v49 = 1;
    goto LABEL_56;
  }

  if (v48 >= 0x16E)
  {
    v49 = 365;
LABEL_56:
    *(v30 + 14) = v49;
  }

  if (!*(v30 + 9))
  {
    *(v30 + 9) = 1;
  }

  if (!*(v30 + 12))
  {
    *(v30 + 12) = 30;
  }

  if (unsignedIntegerValue11 > 0x15180)
  {
    *(v30 + 13) = 86400;
  }

  [_DKSyncPolicy possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays:?];
LABEL_64:

  return v30;
}

- (id)description
{
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v5 = objc_opt_class();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_0();
  [v4 appendFormat:@"%@ { \n"];

  [(_DKSyncPolicy *)self syncDisabled];
  OUTLINED_FUNCTION_7_0();
  [v4 appendFormat:@"                           syncDisabled: %@\n"];
  if ([(_DKSyncPolicy *)self forceSync])
  {
    [(_DKSyncPolicy *)self forceSync];
    OUTLINED_FUNCTION_7_0();
    [v4 appendFormat:@"                              forceSync: %@\n"];
  }

  [(_DKSyncPolicy *)self alwaysSyncUpAndDown];
  OUTLINED_FUNCTION_7_0();
  [v4 appendFormat:@"                    alwaysSyncUpAndDown: %@\n"];
  [OUTLINED_FUNCTION_6_4() assetThresholdInBytes];
  [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_0();
  [v4 appendFormat:@"                  assetThresholdInBytes: %@\n"];

  [OUTLINED_FUNCTION_6_4() firstSyncPeriodInDays];
  [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_0();
  [v4 appendFormat:@"                  firstSyncPeriodInDays: %@\n"];

  [OUTLINED_FUNCTION_6_4() maxSyncDownIntervalInDays];
  [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_0();
  [v4 appendFormat:@"              maxSyncDownIntervalInDays: %@\n"];

  [OUTLINED_FUNCTION_6_4() minSyncIntervalInSeconds];
  [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_0();
  [v4 appendFormat:@"               minSyncIntervalInSeconds: %@\n"];

  [OUTLINED_FUNCTION_6_4() minSyncsPerDay];
  [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_0();
  [v4 appendFormat:@"                         minSyncsPerDay: %@\n"];

  [OUTLINED_FUNCTION_6_4() maxSyncsPerDay];
  [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_0();
  [v4 appendFormat:@"                         maxSyncsPerDay: %@\n"];

  if ([(_DKSyncPolicy *)self numChangesTriggeringSync])
  {
    [OUTLINED_FUNCTION_6_4() numChangesTriggeringSync];
    [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_4_0();
    [v4 appendFormat:@"               numChangesTriggeringSync: %@\n"];
  }

  else
  {
    [v4 appendFormat:@"               numChangesTriggeringSync: %@\n", @"disabled"];
  }

  if (self)
  {
    policyDownloadIntervalInDays = self->_policyDownloadIntervalInDays;
  }

  else
  {
    policyDownloadIntervalInDays = 0;
  }

  [MEMORY[0x1E696AD98] numberWithUnsignedInteger:policyDownloadIntervalInDays];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_0();
  [v4 appendFormat:@"           policyDownloadIntervalInDays: %@\n"];

  [(_DKSyncPolicy *)self pushTriggersSync];
  OUTLINED_FUNCTION_7_0();
  [v4 appendFormat:@"                       pushTriggersSync: %@\n"];
  [OUTLINED_FUNCTION_6_4() singleDeviceSyncIntervalInDays];
  [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_0();
  [v4 appendFormat:@"         singleDeviceSyncIntervalInDays: %@\n"];

  [(_DKSyncPolicy *)self streamNamesWithAdditionsTriggeringSync];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_11_2();
  v11 = _CDPrettyPrintCollection(v7, v8, v9, v10);
  [v4 appendFormat:@" streamNamesWithAdditionsTriggeringSync: %@\n", v11];

  [(_DKSyncPolicy *)self streamNamesWithDeletionsTriggeringSync];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_11_2();
  v16 = _CDPrettyPrintCollection(v12, v13, v14, v15);
  [v4 appendFormat:@" streamNamesWithDeletionsTriggeringSync: %@\n", v16];

  [OUTLINED_FUNCTION_6_4() syncTimeoutInSeconds];
  [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_0();
  [v4 appendFormat:@"                   syncTimeoutInSeconds: %@\n"];

  [OUTLINED_FUNCTION_6_4() triggeredSyncDelayInSeconds];
  v17 = [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
  [v4 appendFormat:@"            triggeredSyncDelayInSeconds: %@\n", v17];

  [v4 appendString:@"}\n"];

  return v4;
}

+ (void)policyFromDictionary:.cold.1()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_2_3();
  [v1 objectForKeyedSubscript:@"SyncDisabled"];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_1_4() objectForKeyedSubscript:?];
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0_4(v3);
  OUTLINED_FUNCTION_3_2(&dword_191750000, v5, v6, "Not setting %@ because %@ is a %@ instead of a %@", v7, v8, v9, v10);

  OUTLINED_FUNCTION_9_0();
}

+ (void)policyFromDictionary:.cold.2()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_2_3();
  [v1 objectForKeyedSubscript:@"AlwaysSyncUpAndDown"];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_1_4() objectForKeyedSubscript:?];
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0_4(v3);
  OUTLINED_FUNCTION_3_2(&dword_191750000, v5, v6, "Not setting %@ because %@ is a %@ instead of a %@", v7, v8, v9, v10);

  OUTLINED_FUNCTION_9_0();
}

+ (void)policyFromDictionary:.cold.3()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_2_3();
  [v1 objectForKeyedSubscript:@"AssetThresholdInBytes"];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_1_4() objectForKeyedSubscript:?];
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0_4(v3);
  OUTLINED_FUNCTION_3_2(&dword_191750000, v5, v6, "Not setting %@ because %@ is a %@ instead of a %@", v7, v8, v9, v10);

  OUTLINED_FUNCTION_9_0();
}

+ (void)policyFromDictionary:.cold.4()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_2_3();
  [v1 objectForKeyedSubscript:@"FirstSyncPeriodInDays"];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_1_4() objectForKeyedSubscript:?];
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0_4(v3);
  OUTLINED_FUNCTION_3_2(&dword_191750000, v5, v6, "Not setting %@ because %@ is a %@ instead of a %@", v7, v8, v9, v10);

  OUTLINED_FUNCTION_9_0();
}

+ (void)policyFromDictionary:.cold.5()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_2_3();
  [v1 objectForKeyedSubscript:@"MaxSyncDownIntervalInDays"];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_1_4() objectForKeyedSubscript:?];
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0_4(v3);
  OUTLINED_FUNCTION_3_2(&dword_191750000, v5, v6, "Not setting %@ because %@ is a %@ instead of a %@", v7, v8, v9, v10);

  OUTLINED_FUNCTION_9_0();
}

+ (void)policyFromDictionary:.cold.6()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_2_3();
  [v1 objectForKeyedSubscript:@"MinSyncIntervalInSeconds"];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_1_4() objectForKeyedSubscript:?];
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0_4(v3);
  OUTLINED_FUNCTION_3_2(&dword_191750000, v5, v6, "Not setting %@ because %@ is a %@ instead of a %@", v7, v8, v9, v10);

  OUTLINED_FUNCTION_9_0();
}

+ (void)policyFromDictionary:.cold.7()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_2_3();
  [v1 objectForKeyedSubscript:@"MinSyncsPerDay"];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_1_4() objectForKeyedSubscript:?];
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0_4(v3);
  OUTLINED_FUNCTION_3_2(&dword_191750000, v5, v6, "Not setting %@ because %@ is a %@ instead of a %@", v7, v8, v9, v10);

  OUTLINED_FUNCTION_9_0();
}

+ (void)policyFromDictionary:.cold.8()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_2_3();
  [v1 objectForKeyedSubscript:@"MaxSyncsPerDay"];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_1_4() objectForKeyedSubscript:?];
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0_4(v3);
  OUTLINED_FUNCTION_3_2(&dword_191750000, v5, v6, "Not setting %@ because %@ is a %@ instead of a %@", v7, v8, v9, v10);

  OUTLINED_FUNCTION_9_0();
}

+ (void)policyFromDictionary:.cold.9()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_2_3();
  [v1 objectForKeyedSubscript:@"NumChangesTriggeringSync"];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_1_4() objectForKeyedSubscript:?];
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0_4(v3);
  OUTLINED_FUNCTION_3_2(&dword_191750000, v5, v6, "Not setting %@ because %@ is a %@ instead of a %@", v7, v8, v9, v10);

  OUTLINED_FUNCTION_9_0();
}

+ (void)policyFromDictionary:.cold.10()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_2_3();
  [v1 objectForKeyedSubscript:@"PolicyDownloadIntervalInDays"];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_1_4() objectForKeyedSubscript:?];
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0_4(v3);
  OUTLINED_FUNCTION_3_2(&dword_191750000, v5, v6, "Not setting %@ because %@ is a %@ instead of a %@", v7, v8, v9, v10);

  OUTLINED_FUNCTION_9_0();
}

+ (void)policyFromDictionary:.cold.11()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_2_3();
  [v1 objectForKeyedSubscript:@"PushTriggersSync"];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_1_4() objectForKeyedSubscript:?];
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0_4(v3);
  OUTLINED_FUNCTION_3_2(&dword_191750000, v5, v6, "Not setting %@ because %@ is a %@ instead of a %@", v7, v8, v9, v10);

  OUTLINED_FUNCTION_9_0();
}

+ (void)policyFromDictionary:.cold.12()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_2_3();
  [v1 objectForKeyedSubscript:@"SingleDeviceSyncIntervalInDays"];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_1_4() objectForKeyedSubscript:?];
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0_4(v3);
  OUTLINED_FUNCTION_3_2(&dword_191750000, v5, v6, "Not setting %@ because %@ is a %@ instead of a %@", v7, v8, v9, v10);

  OUTLINED_FUNCTION_9_0();
}

+ (void)policyFromDictionary:.cold.13()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_2_3();
  [v1 objectForKeyedSubscript:@"StreamNamesWithAdditionsTriggeringSync"];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_1_4() objectForKeyedSubscript:?];
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0_4(v3);
  OUTLINED_FUNCTION_3_2(&dword_191750000, v5, v6, "Not setting %@ because %@ is a %@ instead of a %@", v7, v8, v9, v10);

  OUTLINED_FUNCTION_9_0();
}

+ (void)policyFromDictionary:.cold.14()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_2_3();
  [v1 objectForKeyedSubscript:@"StreamNamesWithDeletionsTriggeringSync"];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_1_4() objectForKeyedSubscript:?];
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0_4(v3);
  OUTLINED_FUNCTION_3_2(&dword_191750000, v5, v6, "Not setting %@ because %@ is a %@ instead of a %@", v7, v8, v9, v10);

  OUTLINED_FUNCTION_9_0();
}

+ (void)policyFromDictionary:.cold.15()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_2_3();
  [v1 objectForKeyedSubscript:@"SyncTimeoutInSeconds"];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_1_4() objectForKeyedSubscript:?];
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0_4(v3);
  OUTLINED_FUNCTION_3_2(&dword_191750000, v5, v6, "Not setting %@ because %@ is a %@ instead of a %@", v7, v8, v9, v10);

  OUTLINED_FUNCTION_9_0();
}

+ (void)policyFromDictionary:.cold.16()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_2_3();
  [v1 objectForKeyedSubscript:@"TriggeredSyncDelayInSeconds"];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_1_4() objectForKeyedSubscript:?];
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0_4(v3);
  OUTLINED_FUNCTION_3_2(&dword_191750000, v5, v6, "Not setting %@ because %@ is a %@ instead of a %@", v7, v8, v9, v10);

  OUTLINED_FUNCTION_9_0();
}

- (void)queryStartDateFromLastDaySyncDates:lastSyncDate:isSingleDevice:isTriggeredSync:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)queryStartDateFromLastDaySyncDates:lastSyncDate:isSingleDevice:isTriggeredSync:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)queryStartDateFromLastDaySyncDates:lastSyncDate:isSingleDevice:isTriggeredSync:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)queryStartDateFromLastDaySyncDates:lastSyncDate:isSingleDevice:isTriggeredSync:.cold.5()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end