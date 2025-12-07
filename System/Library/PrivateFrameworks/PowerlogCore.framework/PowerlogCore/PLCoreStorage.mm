@interface PLCoreStorage
+ (id)additionalTables;
+ (id)allOperatorTablesToTrimConditionsForTrimDate:(id)date;
+ (id)storageQueueNameForClass:(Class)class;
+ (id)storageQueueNameForEntryKey:(id)key;
+ (void)logMessage:(id)message fromFile:(id)file fromFunction:(id)function fromLineNumber:(int64_t)number;
- (BOOL)flushCachesIfRequiredForEntryKey:(id)key;
- (BOOL)registerDailyTasks;
- (BOOL)registerDailyTasks_XPCActivity;
- (BOOL)setFileProtectionForPath:(id)path withLevel:(id)level;
- (BOOL)storageLocked;
- (PLCoreStorage)init;
- (id)aggregateEntriesForKey:(id)key withBucketLength:(double)length inTimeIntervalRange:(_PLTimeIntervalRange)range;
- (id)entriesForKey:(id)key before:(BOOL)before timeInterval:(double)interval count:(int64_t)count withFilters:(id)filters;
- (id)entriesForKey:(id)key inTimeRange:(_PLTimeIntervalRange)range withCountOfEntriesBefore:(int64_t)before withCountOfEntriesAfter:(int64_t)after withFilters:(id)filters;
- (id)entriesForKey:(id)key inTimeRange:(_PLTimeIntervalRange)range withFilters:(id)filters;
- (id)entriesForKey:(id)key startingFromRowID:(int64_t)d count:(int64_t)count withFilters:(id)filters;
- (id)entriesForKey:(id)key withComparisons:(id)comparisons;
- (id)entriesForKey:(id)key withProperties:(id)properties;
- (id)entriesForKey:(id)key withQuery:(id)query;
- (id)entryForKey:(id)key withID:(int64_t)d;
- (id)firstEntryForKey:(id)key;
- (id)lastEntriesForKey:(id)key count:(int64_t)count withFilters:(id)filters;
- (id)lastEntryForKey:(id)key;
- (id)lastEntryForKey:(id)key withComparisons:(id)comparisons isSingleton:(BOOL)singleton;
- (id)lastEntryForKey:(id)key withFilters:(id)filters;
- (id)lastEntryForKey:(id)key withIDLessThan:(int64_t)than;
- (id)lastEntryForKey:(id)key withSubEntryKey:(id)entryKey;
- (id)processIDEntryForPid:(int)pid;
- (int64_t)blockingWriteEntry:(id)entry withCompletionBlock:(id)block;
- (int64_t)countOfEntriesForKey:(id)key;
- (int64_t)generalEntryCacheSizeLimit;
- (int64_t)writeEntry:(id)entry;
- (signed)verifySchemaVersionOfTable:(id)table matchesExpectedVersion:(double)version;
- (void)_updateEntry:(id)entry withBlock:(id)block;
- (void)addAggdModeKeys;
- (void)applyContainerPOSIXPermissions;
- (void)attemptToSendTaskingStartNotification;
- (void)blockingFlushCachesWithReason:(id)reason timeout:(int)timeout;
- (void)blockingFlushQueues:(id)queues withTimeout:(int)timeout;
- (void)checkCacheSizeForFlush;
- (void)cleanupQuarantine;
- (void)cleanupTmp;
- (void)configureCacheFlush;
- (void)copyUpgradePowerlogsAtPath:(id)path toPath:(id)toPath;
- (void)dailyTasks;
- (void)dealloc;
- (void)deleteAllEntriesForKey:(id)key beforeTimestamp:(id)timestamp withFilters:(id)filters;
- (void)deleteEntry:(id)entry;
- (void)deleteEntryForKey:(id)key WithRowID:(int64_t)d;
- (void)dispatchAsyncForEntryKey:(id)key withBlock:(id)block;
- (void)dispatchSyncForEntryKey:(id)key withBlock:(id)block;
- (void)flushCachesWithReason:(id)reason;
- (void)handleSchemaMismatchForTable:(id)table expectedVersion:(double)version schemaMatch:(signed __int16)match;
- (void)init;
- (void)initOperatorDependancies;
- (void)loadDynamicValuesIntoEntry:(id)entry;
- (void)logMessage:(id)message fromFile:(id)file fromFunction:(id)function fromLineNumber:(int64_t)number;
- (void)logPreUnlockState:(BOOL)state;
- (void)processEntriesForKey:(id)key withProperties:(id)properties withBlock:(id)block;
- (void)removeErroneousQualificationEntries;
- (void)removeOldPowerlogFiles;
- (void)reportPerfStats;
- (void)setAllNullValuesForEntryKey:(id)key forKey:(id)forKey toValue:(id)value withFilters:(id)filters;
- (void)setupArrayForTableName:(id)name forColumnNamed:(id)named withValueType:(signed __int16)type withShouldIndexFKID:(BOOL)d;
- (void)setupCompositeIndexOnTable:(id)table withColumns:(id)columns;
- (void)setupStorageForEntryKey:(id)key;
- (void)setupStorageForOperator:(id)operator;
- (void)setupStorageForOperatorClass:(Class)class;
- (void)setupStorageForOperatorName:(id)name;
- (void)setupStorageVersions;
- (void)setupTableName:(id)name withEntryKeyConfig:(id)config withKeyOrder:(id)order isDynamic:(BOOL)dynamic withShouldIndexFKID:(BOOL)d;
- (void)startStorage;
- (void)stopStorage;
- (void)updateEntry:(id)entry withBlock:(id)block;
- (void)writeAggregateEntry:(id)entry;
- (void)writeEntries:(id)entries withCompletionBlock:(id)block;
- (void)writeEntry:(id)entry withCompletionBlock:(id)block;
- (void)writeProportionateAggregateEntry:(id)entry withStartDate:(id)date withEndDate:(id)endDate;
@end

@implementation PLCoreStorage

- (BOOL)storageLocked
{
  if (storageLocked_onceToken != -1)
  {
    [PLCoreStorage storageLocked];
  }

  if (!+[PLPlatform internalBuild])
  {
    return storageLocked_storageLocked;
  }

  v2 = storageLocked_storageLocked;

  return [PLDefaults BOOLForKey:@"PLStorageLocked" ifNotSet:v2];
}

- (void)checkCacheSizeForFlush
{
  v3 = +[PLStorageCache sharedStorageCache];
  stagingEntryCacheSize = [v3 stagingEntryCacheSize];
  generalEntryCacheSizeLimit = [(PLCoreStorage *)self generalEntryCacheSizeLimit];

  if (stagingEntryCacheSize > generalEntryCacheSizeLimit)
  {
    v6 = [PLUtilities workQueueForKey:@"CacheSizeFlush"];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__PLCoreStorage_checkCacheSizeForFlush__block_invoke;
    block[3] = &unk_1E85190B8;
    block[4] = self;
    dispatch_async(v6, block);
  }
}

- (int64_t)generalEntryCacheSizeLimit
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__PLCoreStorage_generalEntryCacheSizeLimit__block_invoke;
  v4[3] = &unk_1E85195E0;
  v5 = @"generalEntryCacheSize";
  v6 = 500;
  if (generalEntryCacheSizeLimit_defaultOnce != -1)
  {
    dispatch_once(&generalEntryCacheSizeLimit_defaultOnce, v4);
  }

  v2 = generalEntryCacheSizeLimit_objectForKey;

  return v2;
}

+ (id)storageQueueNameForClass:(Class)class
{
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0 || ([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    v4 = @"storageQueue.shared";
  }

  else
  {
    v5 = NSStringFromClass(class);
    v4 = [v5 stringByAppendingString:@".storageQueue"];
  }

  return v4;
}

+ (id)storageQueueNameForEntryKey:(id)key
{
  v3 = [PLEntryKey operatorClassForEntryKey:key];

  return [(objc_class *)v3 storageQueueName];
}

- (BOOL)setFileProtectionForPath:(id)path withLevel:(id)level
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AC08];
  levelCopy = level;
  pathCopy = path;
  defaultManager = [v5 defaultManager];
  v12 = *MEMORY[0x1E696A3A0];
  v13[0] = levelCopy;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v11 = 0;
  LOBYTE(path) = [defaultManager setAttributes:v9 ofItemAtPath:pathCopy error:&v11];

  return path;
}

void __30__PLCoreStorage_storageLocked__block_invoke()
{
  v0 = MKBGetDeviceLockState();
  v1 = MKBDeviceUnlockedSinceBoot();
  v2 = v1;
  v4 = v0 == 1 && v1 == 0;
  storageLocked_storageLocked = v4;
  if (+[PLDefaults debugEnabled])
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Keybag lockstate=%d unlockedSinceBoot=%d", v0, v2];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
    v7 = [v6 lastPathComponent];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage storageLocked]_block_invoke"];
    [PLCoreStorage logMessage:v5 fromFile:v7 fromFunction:v8 fromLineNumber:152];

    v10 = PLLogCommon(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }
  }
}

- (void)logPreUnlockState:(BOOL)state
{
  stateCopy = state;
  v13 = *MEMORY[0x1E69E9840];
  v5 = PLLogCommon(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v12 = stateCopy;
    _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_DEFAULT, "KEYBAG: Logging pre unlock state '%d'", buf, 8u);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{stateCopy, @"preUnlock"}];
  v10 = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];

  storageOperator = [(PLCoreStorage *)self storageOperator];
  [storageOperator logEventPointPreUnlock:v7];
}

- (PLCoreStorage)init
{
  v136[3] = *MEMORY[0x1E69E9840];
  v126.receiver = self;
  v126.super_class = PLCoreStorage;
  v2 = [(PLCoreStorage *)&v126 init];
  if (!v2)
  {
    return v2;
  }

  v3 = time(0);
  srand(v3);
  if (+[PLDefaults debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __21__PLCoreStorage_init__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (init_defaultOnce_0 != -1)
    {
      dispatch_once(&init_defaultOnce_0, block);
    }

    if (init_classDebugEnabled_0 == 1)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"seeded random number generator, seed =%i", v3];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage init]"];
      [PLCoreStorage logMessage:v5 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:171];

      v10 = PLLogCommon(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_get_global_queue(9, 0);
  v13 = dispatch_queue_create_with_target_V2("com.apple.powerlog.storage.background", v11, v12);
  backgroundQueue = v2->_backgroundQueue;
  v2->_backgroundQueue = v13;

  v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v16 = dispatch_get_global_queue(17, 0);
  v17 = dispatch_queue_create_with_target_V2("com.apple.powerlog.storage.utility", v15, v16);
  utilityQueue = v2->_utilityQueue;
  v2->_utilityQueue = v17;

  v19 = +[PLUtilities containerPath];
  v20 = [v19 stringByAppendingString:@"/Library/BatteryLife/"];
  v136[0] = v20;
  v21 = +[PLUtilities containerPath];
  v22 = [v21 stringByAppendingString:@"/Library/BatteryLife/Archives/"];
  v136[1] = v22;
  v136[2] = @"/tmp/powerlog/";
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v136 count:3];

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v24 = v23;
  v25 = [v24 countByEnumeratingWithState:&v121 objects:v135 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v122;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v122 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [PLUtilities createAndChownDirectory:*(*(&v121 + 1) + 8 * i)];
      }

      v26 = [v24 countByEnumeratingWithState:&v121 objects:v135 count:16];
    }

    while (v26);
  }

  v29 = +[PLUtilities containerPath];
  v30 = [v29 stringByAppendingString:@"/Library/BatteryLife/"];
  [(PLCoreStorage *)v2 setFileProtectionForPath:v30 withLevel:*MEMORY[0x1E696A3A8]];

  v31 = +[PLUtilities containerPath];
  v32 = [v31 stringByAppendingString:@"/Library/BatteryLife/Archives/"];
  v134 = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v134 count:1];

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v34 = v33;
  v35 = [v34 countByEnumeratingWithState:&v117 objects:v133 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v118;
    v38 = *MEMORY[0x1E696A388];
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v118 != v37)
        {
          objc_enumerationMutation(v34);
        }

        [(PLCoreStorage *)v2 setFileProtectionForPath:*(*(&v117 + 1) + 8 * j) withLevel:v38];
      }

      v36 = [v34 countByEnumeratingWithState:&v117 objects:v133 count:16];
    }

    while (v36);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v41 = +[PLUtilities containerPath];
  v42 = [v41 stringByAppendingString:@"/Library/BatteryLife/CrashReporter/"];
  [defaultManager removeItemAtPath:v42 error:0];

  *&v2->_storageLocked = 1;
  storageLocked = [(PLCoreStorage *)v2 storageLocked];
  if (!storageLocked)
  {
    applyContainerPOSIXPermissions = +[PLUtilities isPowerlogHelperd];
    if ((applyContainerPOSIXPermissions & 1) == 0)
    {
      applyContainerPOSIXPermissions = +[PLUtilities isPerfPowerMetricd];
      if ((applyContainerPOSIXPermissions & 1) == 0)
      {
        applyContainerPOSIXPermissions = _os_feature_enabled_impl();
        if (applyContainerPOSIXPermissions)
        {
          applyContainerPOSIXPermissions = [(PLCoreStorage *)v2 applyContainerPOSIXPermissions];
        }
      }
    }

    v57 = PLLogCommon(applyContainerPOSIXPermissions);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v57, OS_LOG_TYPE_DEFAULT, "KEYBAG: Unlocked", buf, 2u);
    }

    if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPowerexceptionsd](PLUtilities, "isPowerexceptionsd") && !+[PLUtilities isPerfPowerMetricd])
    {
      v76 = [PLSQLiteConnection alloc];
      v77 = +[PLUtilities containerPath];
      v78 = [v77 stringByAppendingString:@"/Library/BatteryLife/CurrentPowerlog.PLSQL"];
      v79 = [(PLSQLiteConnection *)v76 initWithFilePath:v78];
      connection = v2->_connection;
      v2->_connection = v79;

      if (v2->_connection)
      {
        [PLDefaults setObject:0 forKey:@"PLNoConnectionRestartCount" saveToDisk:1];
      }

      else
      {
        [PLDefaults doubleForKey:@"PLNoConnectionRestartCount" ifNotSet:0.0];
        v94 = [MEMORY[0x1E696AD98] numberWithInt:(v93 + 1)];
        [PLDefaults setObject:v94 forKey:@"PLNoConnectionRestartCount" saveToDisk:1];

        v96 = PLLogCommon(v95);
        if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
        {
          [PLCoreStorage init];
        }

        v97 = [PLDefaults objectForKey:@"PLNoConnectionRestartCount" ifNotSet:&unk_1F5405B98];
        intValue = [v97 intValue];

        if (intValue >= 4)
        {
          v100 = PLLogCommon(v99);
          if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
          {
            [PLCoreStorage init];
          }

          defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
          v102 = MEMORY[0x1E695DFF8];
          v103 = +[PLUtilities containerPath];
          v104 = [v103 stringByAppendingString:@"/Library"];
          v105 = [v102 fileURLWithPath:v104];
          v110 = 0;
          v106 = [defaultManager2 removeItemAtURL:v105 error:&v110];
          v107 = v110;

          if ((v106 & 1) == 0)
          {
            v109 = PLLogCommon(v108);
            if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
            {
              [PLCoreStorage init];
            }
          }

          [PLUtilities exitWithReason:1010];
        }
      }

      goto LABEL_55;
    }

    v58 = +[PLUtilities isPowerexceptionsd];
    v59 = +[PLUtilities containerPath];
    v60 = [v59 stringByAppendingString:@"/Library/BatteryLife/CurrentPowerlog.PLSQL"];

    if (v58)
    {
      v61 = [[PLSQLiteConnection alloc] initWithFilePath:v60 withFlags:&unk_1F540B758];
      v62 = v2->_connection;
      v2->_connection = v61;

      v64 = PLLogCommon(v63);
      if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
      {
LABEL_54:

LABEL_55:
        if (!v2->_connection)
        {
          v84 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no connection to DB"];
          v85 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
          lastPathComponent2 = [v85 lastPathComponent];
          v87 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage init]"];
          [PLCoreStorage logMessage:v84 fromFile:lastPathComponent2 fromFunction:v87 fromLineNumber:314];

          v89 = PLLogCommon(v88);
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }

          [PLUtilities exitWithReason:101];
        }

        goto LABEL_59;
      }
    }

    else
    {
      if (+[PLPlatform internalBuild])
      {
        v65 = [PLDefaults objectForKey:@"BUI_DEMO_PATH" forApplicationID:@"com.apple.powerlogd" synchronize:1];
        v66 = v65;
        if (v65)
        {
          v67 = MEMORY[0x1E696AEC0];
          pathExtension = [v65 pathExtension];
          v69 = [v67 stringWithFormat:@".%@", pathExtension];
          v70 = [v69 isEqualToString:@".PLSQL"];

          defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
          v72 = [defaultManager3 fileExistsAtPath:v66];

          v74 = PLLogCommon(v73);
          v75 = v74;
          if (v70 && v72)
          {
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
            {
              [PLCoreStorage init];
            }

            v75 = v60;
            v60 = v66;
          }

          else if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v128 = v66;
            v129 = 1024;
            v130 = v70;
            v131 = 1024;
            v132 = v72;
            _os_log_error_impl(&dword_1D8611000, v75, OS_LOG_TYPE_ERROR, "PLCoreStorage: Unable to load '%@'. Resorting to main DB... (hasDBExt = %d, fileExists = %d)", buf, 0x18u);
          }
        }
      }

      v81 = [[PLSQLiteConnection alloc] initWithFilePath:v60 withFlags:&unk_1F540B770];
      v82 = v2->_connection;
      v2->_connection = v81;

      v64 = PLLogCommon(v83);
      if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_54;
      }
    }

    [(PLCoreStorage *)&v2->_connection init];
    goto LABEL_54;
  }

  v44 = PLLogCommon(storageLocked);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v44, OS_LOG_TYPE_DEFAULT, "KEYBAG: Locked", buf, 2u);
  }

  v115[0] = MEMORY[0x1E69E9820];
  v115[1] = 3221225472;
  v115[2] = __21__PLCoreStorage_init__block_invoke_64;
  v115[3] = &unk_1E85190B8;
  v45 = v2;
  v116 = v45;
  v46 = MEMORY[0x1DA71B0D0](v115);
  v47 = [PLUtilities workQueueForClass:objc_opt_class()];
  v48 = [PLCFNotificationOperatorComposition alloc];
  v113[0] = MEMORY[0x1E69E9820];
  v113[1] = 3221225472;
  v113[2] = __21__PLCoreStorage_init__block_invoke_69;
  v113[3] = &unk_1E8519980;
  v49 = v46;
  v114 = v49;
  v50 = [(PLCFNotificationOperatorComposition *)v48 initWithWorkQueue:v47 forNotification:@"com.apple.mobile.keybagd.first_unlock" requireState:0 withBlock:v113];
  keybagFirstUnlockNotification = v45->_keybagFirstUnlockNotification;
  v45->_keybagFirstUnlockNotification = v50;

  v52 = [PLCFNotificationOperatorComposition alloc];
  v111[0] = MEMORY[0x1E69E9820];
  v111[1] = 3221225472;
  v111[2] = __21__PLCoreStorage_init__block_invoke_74;
  v111[3] = &unk_1E8519980;
  v112 = v49;
  v53 = v49;
  v54 = [(PLCFNotificationOperatorComposition *)v52 initWithWorkQueue:v47 forNotification:@"com.apple.mobile.keybagd.lock_status" requireState:0 withBlock:v111];
  keybagLockStatusNotification = v45->_keybagLockStatusNotification;
  v45->_keybagLockStatusNotification = v54;

LABEL_59:
  v90 = objc_opt_new();
  safeCopyInProgress = v2->_safeCopyInProgress;
  v2->_safeCopyInProgress = v90;

  if (init_onceToken != -1)
  {
    [PLCoreStorage init];
  }

  return v2;
}

BOOL __21__PLCoreStorage_init__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  init_classDebugEnabled_0 = result;
  return result;
}

void __21__PLCoreStorage_init__block_invoke_64(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__PLCoreStorage_init__block_invoke_2;
  block[3] = &unk_1E85190B8;
  v2 = *(a1 + 32);
  if (kPLTaskingEndNotification_block_invoke_onceToken != -1)
  {
    dispatch_once(&kPLTaskingEndNotification_block_invoke_onceToken, block);
  }
}

uint64_t __21__PLCoreStorage_init__block_invoke_2(uint64_t a1)
{
  v2 = PLLogCommon(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D8611000, v2, OS_LOG_TYPE_DEFAULT, "KEYBAG: Unlock notification!", v4, 2u);
  }

  [*(a1 + 32) logPreUnlockState:0];
  return [PLUtilities exitWithReason:1];
}

uint64_t __21__PLCoreStorage_init__block_invoke_69(uint64_t a1)
{
  v2 = PLLogCommon(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D8611000, v2, OS_LOG_TYPE_DEFAULT, "KEYBAG: First unlock notification", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __21__PLCoreStorage_init__block_invoke_74(uint64_t a1)
{
  v2 = PLLogCommon(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D8611000, v2, OS_LOG_TYPE_DEFAULT, "KEYBAG: Lock status notification", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __21__PLCoreStorage_init__block_invoke_112()
{
  v3[9] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F5405BE0;
  v2[1] = &unk_1F5405BF8;
  v3[0] = @"BLOB";
  v3[1] = @"INTEGER";
  v2[2] = &unk_1F5405C10;
  v2[3] = &unk_1F5405C28;
  v3[2] = @"TEXT";
  v3[3] = @"REAL";
  v2[4] = &unk_1F5405C40;
  v2[5] = &unk_1F5405C58;
  v3[4] = @"INTEGER";
  v3[5] = @"INTEGER";
  v2[6] = &unk_1F5405C70;
  v2[7] = &unk_1F5405C88;
  v3[6] = @"INTEGER";
  v3[7] = @"REAL";
  v2[8] = &unk_1F5405CA0;
  v3[8] = @"BLOB";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:9];
  v1 = PLVTypeToPLSQLiteType;
  PLVTypeToPLSQLiteType = v0;
}

- (void)dealloc
{
  if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
  {
    v3 = +[PLArchiveManager sharedInstance];
    [v3 setEnabled:0];
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v6.receiver = self;
  v6.super_class = PLCoreStorage;
  [(PLCoreStorage *)&v6 dealloc];
}

- (void)setupStorageVersions
{
  v18[3] = *MEMORY[0x1E69E9840];
  v3 = +[PowerlogCore sharedCore];
  storage = [v3 storage];
  storageLocked = [storage storageLocked];

  if ((storageLocked & 1) == 0 && !+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
  {
    connection = [(PLCoreStorage *)self connection];
    v7 = [connection tableExistsForTableName:@"PLCoreStorage_schemaVersions"];

    if (v7)
    {
      if ([(PLCoreStorage *)self verifySchemaVersionOfTable:@"PLCoreStorage_schemaVersions" matchesExpectedVersion:1.08])
      {

        [(PLCoreStorage *)self handleSchemaMismatchForTable:@"PLCoreStorage_schemaVersions" expectedVersion:2 schemaMatch:1.08];
      }
    }

    else
    {
      v16[0] = @"column-name";
      v16[1] = @"type";
      v17[0] = @"tableName";
      v17[1] = @"TEXT";
      v18[0] = &unk_1F540C7E8;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
      v18[1] = v8;
      v14[0] = @"column-name";
      v14[1] = @"type";
      v15[0] = @"schemaVersion";
      v15[1] = @"REAL";
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
      v18[2] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];

      connection2 = [(PLCoreStorage *)self connection];
      [connection2 createTableName:@"PLCoreStorage_schemaVersions" withColumns:v10];

      connection3 = [(PLCoreStorage *)self connection];
      [connection3 setSchemaVersion:@"PLCoreStorage_schemaVersions" forTableName:1.08];

      connection4 = [(PLCoreStorage *)self connection];
      [connection4 createIndexOnTable:@"PLCoreStorage_schemaVersions" forColumn:@"tableName"];
    }
  }
}

- (void)startStorage
{
  if (+[PLUtilities PreUnlockTelemetryEnabled](PLUtilities, "PreUnlockTelemetryEnabled") || (+[PowerlogCore sharedCore](PowerlogCore, "sharedCore"), v3 = objc_claimAutoreleasedReturnValue(), [v3 storage], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "storageLocked"), v4, v3, (v5 & 1) == 0))
  {
    v6 = objc_autoreleasePoolPush();
    [(PLCoreStorage *)self setupStorageVersions];
    v7 = [PLUtilities workQueueForClass:objc_opt_class()];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__PLCoreStorage_startStorage__block_invoke;
    block[3] = &unk_1E85190B8;
    block[4] = self;
    dispatch_async_and_wait(v7, block);

    v8 = +[PLTimeManager sharedInstance];
    storageOperator = [(PLCoreStorage *)self storageOperator];
    [v8 setStorageOperator:storageOperator];

    v10 = +[PLTimeManager sharedInstance];
    [v10 initializeTimeOffsets];

    if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities shouldLogPreUnlockTelemetry](PLUtilities, "shouldLogPreUnlockTelemetry") && !+[PLUtilities isPowerexceptionsd](PLUtilities, "isPowerexceptionsd") && !+[PLUtilities isPerfPowerMetricd])
    {
      [(PLCoreStorage *)self cleanupTmp];
      [(PLCoreStorage *)self removeOldPowerlogFiles];
      if ([PLDefaults BOOLForKey:@"removedIDIndex" ifNotSet:0])
      {
        connection = [(PLCoreStorage *)self connection];
        [connection removeIDIndexes];

        [PLDefaults setObject:MEMORY[0x1E695E118] forKey:@"removedIDIndex" saveToDisk:1];
      }

      [(PLCoreStorage *)self registerDailyTasks];
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v13 = [PLD_ManagedPreferencePath stringByAppendingString:@"/com.apple.powerlogd.plist"];
      v14 = [defaultManager fileExistsAtPath:v13];

      v15 = [PLKQueue alloc];
      v16 = PLD_ManagedPreferencePath;
      v17 = [PLUtilities workQueueForKey:@"profileDefaultsKQueue"];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __29__PLCoreStorage_startStorage__block_invoke_2;
      v21[3] = &unk_1E85199A8;
      v22 = v14;
      v21[4] = self;
      v18 = [(PLKQueue *)v15 initWithPath:v16 withDispatchQueue:v17 withBlock:v21];

      [(PLCoreStorage *)self setProfileDefaultsKQueue:v18];
      profileDefaultsKQueue = [(PLCoreStorage *)self profileDefaultsKQueue];
      [profileDefaultsKQueue setEnabled:1];

      [(PLCoreStorage *)self addAggdModeKeys];
      v20 = [PLUtilities workQueueForClass:objc_opt_class()];
      [PLDefaults registerEPLNotificationWithQueue:v20];
    }

    objc_autoreleasePoolPop(v6);
  }
}

void __29__PLCoreStorage_startStorage__block_invoke(uint64_t a1)
{
  [PLEntryKey setupEntryObjectsForOperatorClass:objc_opt_class()];
  v2 = +[(PLOperator *)PLStorageOperator];
  [*(a1 + 32) setStorageOperator:v2];

  v3 = *(a1 + 32);
  v4 = [v3 storageOperator];
  [v3 setupStorageForOperator:v4];
}

void __29__PLCoreStorage_startStorage__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [PLD_ManagedPreferencePath stringByAppendingString:@"/com.apple.powerlogd.plist"];
  v4 = [v2 fileExistsAtPath:v3];

  if (*(a1 + 40) != v4)
  {
    if (+[PLDefaults debugEnabled])
    {
      v5 = objc_opt_class();
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __29__PLCoreStorage_startStorage__block_invoke_3;
      v16 = &unk_1E8519630;
      v17 = @"profileDefaults";
      v18 = v5;
      if (kPLTaskingEndNotification_block_invoke_2_defaultOnce != -1)
      {
        dispatch_once(&kPLTaskingEndNotification_block_invoke_2_defaultOnce, &v13);
      }

      v6 = kPLTaskingEndNotification_block_invoke_2_classDebugEnabled;

      if (v6 == 1)
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"*** WARNING *** SystemDebugProfile installed/uninstalled, bouncing powerlogd", v13, v14, v15, v16];
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
        v9 = [v8 lastPathComponent];
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage startStorage]_block_invoke_2"];
        [PLCoreStorage logMessage:v7 fromFile:v9 fromFunction:v10 fromLineNumber:419];

        v12 = PLLogCommon(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    [PLUtilities exitWithReason:3, v13, v14, v15, v16];
  }
}

BOOL __29__PLCoreStorage_startStorage__block_invoke_3(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPLTaskingEndNotification_block_invoke_2_classDebugEnabled = result;
  return result;
}

- (void)addAggdModeKeys
{
  +[PLDefaults fullMode];
  PLADClientAddValueForScalarKey();
  if (+[PLDefaults fullMode])
  {
    AnalyticsSendEventLazy();
  }

  +[PLDefaults liteMode];
  PLADClientAddValueForScalarKey();
  if (+[PLDefaults liteMode])
  {
    AnalyticsSendEventLazy();
  }

  +[PLDefaults taskMode];
  PLADClientAddValueForScalarKey();
  if (+[PLDefaults taskMode])
  {

    AnalyticsSendEventLazy();
  }
}

- (void)stopStorage
{
  v3 = +[PLSubmissions sharedInstance];
  [v3 stopDRTasking];

  if (_os_feature_enabled_impl() && +[PLPlatform internalBuild])
  {
    +[PPSSignpostController unregisterDataCollectionActivity];
  }

  v4 = +[PLRapidController sharedInstance];
  [v4 stopDRTasking];

  v5 = +[PPSSafeguardController sharedInstance];
  [v5 unregisterDataCollectionActivity];

  [(PLCoreStorage *)self blockingFlushCachesWithReason:@"stopStorage"];
}

- (void)configureCacheFlush
{
  v3 = [PLCFNotificationOperatorComposition alloc];
  v4 = [PLUtilities workQueueForClass:objc_opt_class()];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __36__PLCoreStorage_configureCacheFlush__block_invoke;
  v20[3] = &unk_1E8519090;
  v20[4] = self;
  v5 = [(PLCFNotificationOperatorComposition *)v3 initWithWorkQueue:v4 forNotification:@"com.apple.powerlogd.flushCaches" requireState:0 withBlock:v20];

  [(PLCoreStorage *)self setFlushCachesCFNotification:v5];
  v6 = [PLCFNotificationOperatorComposition alloc];
  v7 = [PLUtilities workQueueForClass:objc_opt_class()];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __36__PLCoreStorage_configureCacheFlush__block_invoke_2;
  v19[3] = &unk_1E8519090;
  v19[4] = self;
  v8 = [(PLCFNotificationOperatorComposition *)v6 initWithWorkQueue:v7 forNotification:@"com.apple.powerlogd.blockingFlushCaches" requireState:0 withBlock:v19];

  [(PLCoreStorage *)self setBlockingFlushCachesCFNotification:v8];
  v9 = [PLXPCResponderOperatorComposition alloc];
  backgroundQueue = self->_backgroundQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __36__PLCoreStorage_configureCacheFlush__block_invoke_3;
  v18[3] = &unk_1E85199F0;
  v18[4] = self;
  v11 = [(PLXPCResponderOperatorComposition *)v9 initWithWorkQueue:backgroundQueue withRegistration:&unk_1F540C888 withBlock:v18];
  [(PLCoreStorage *)self setXPCFlushCacheResponder:v11];
  if ([PLDefaults BOOLForKey:@"CacheFlushTimerEnabled" ifNotSet:1])
  {
    v12 = [PLTimer alloc];
    v13 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:30.0];
    v14 = [PLDefaults longForKey:@"flushCachesInterval" ifNotSet:900];
    v15 = [PLUtilities workQueueForKey:@"CacheFlushTimer"];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __36__PLCoreStorage_configureCacheFlush__block_invoke_4;
    v17[3] = &unk_1E8519A18;
    v17[4] = self;
    v16 = [(PLTimer *)v12 initWithFireDate:v13 withInterval:1 withTolerance:0 repeats:v15 withUserInfo:v17 withQueue:v14 withBlock:0.0];

    [(PLCoreStorage *)self setFlushCachesTimer:v16];
  }
}

void __36__PLCoreStorage_configureCacheFlush__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) blockingFlushCachesWithReason:@"CFNotification"];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.powerlogd.blockingFlushCaches.complete", 0, 0, 4u);
}

void __36__PLCoreStorage_configureCacheFlush__block_invoke_4(uint64_t a1)
{
  v2 = [PLUtilities workQueueForClass:objc_opt_class()];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__PLCoreStorage_configureCacheFlush__block_invoke_5;
  block[3] = &unk_1E85190B8;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

- (void)initOperatorDependancies
{
  v62[6] = *MEMORY[0x1E69E9840];
  [(PLCoreStorage *)self setStorageReady:1];
  if (+[PLUtilities shouldLogPreUnlockTelemetry])
  {
    [(PLCoreStorage *)self logPreUnlockState:1];

    [(PLCoreStorage *)self configureCacheFlush];
    return;
  }

  if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
  {
    [(PLCoreStorage *)self removeErroneousQualificationEntries];
    v57 = [[PLXPCResponderOperatorComposition alloc] initWithWorkQueue:self->_backgroundQueue withRegistration:&unk_1F540C8D8 withBlock:&__block_literal_global_295];
    [(PLCoreStorage *)self setSafeFileResponder:v57];
    v3 = [[PLXPCResponderOperatorComposition alloc] initWithWorkQueue:self->_backgroundQueue withRegistration:&unk_1F540C900 withBlock:&__block_literal_global_329];
    [(PLCoreStorage *)self setBlPathResponder:v3];
    v4 = [[PLXPCResponderOperatorComposition alloc] initWithWorkQueue:self->_backgroundQueue withRegistration:&unk_1F540C928 withBlock:&__block_literal_global_338];
    [(PLCoreStorage *)self setArchivesResponder:v4];
    v5 = [[PLXPCResponderOperatorComposition alloc] initWithWorkQueue:self->_backgroundQueue withRegistration:&unk_1F540C950 withBlock:&__block_literal_global_350];
    [(PLCoreStorage *)self setQuarantineResponder:v5];
    v6 = [[PLXPCResponderOperatorComposition alloc] initWithWorkQueue:self->_backgroundQueue withRegistration:&unk_1F540C978 withBlock:&__block_literal_global_362];
    [(PLCoreStorage *)self setQuarantineCopyResponder:v6];
    v7 = [[PLXPCResponderOperatorComposition alloc] initWithWorkQueue:self->_backgroundQueue withRegistration:&unk_1F540C9A0 withBlock:&__block_literal_global_371];
    [(PLCoreStorage *)self setBatteryUIPlistsResponder:v7];
    v8 = [PLXPCResponderOperatorComposition alloc];
    backgroundQueue = self->_backgroundQueue;
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __41__PLCoreStorage_initOperatorDependancies__block_invoke_7;
    v60[3] = &unk_1E85199F0;
    v60[4] = self;
    v10 = [(PLXPCResponderOperatorComposition *)v8 initWithWorkQueue:backgroundQueue withRegistration:&unk_1F540C9C8 withBlock:v60];
    [(PLCoreStorage *)self setUpgradeLogsResponder:v10];
    v11 = +[PLSubmissions sharedInstance];
    storageOperator = [(PLCoreStorage *)self storageOperator];
    [v11 setStorageOperator:storageOperator];

    v13 = +[PLArchiveManager sharedInstance];
    [v13 setEnabled:1];
  }

  storageLocked = [(PLCoreStorage *)self storageLocked];
  v15 = +[PLDefaults fullMode];
  if (storageLocked)
  {
    if (v15)
    {
      v16 = kPLStorageModeLockedFull;
      goto LABEL_17;
    }

    v17 = +[PLDefaults taskMode];
    v16 = kPLStorageModeLockedLite;
    v18 = kPLStorageModeLockedTask;
LABEL_15:
    if (v17)
    {
      v16 = v18;
    }

    goto LABEL_17;
  }

  if (!v15)
  {
    v17 = +[PLDefaults taskMode];
    v16 = kPLStorageModeLite;
    v18 = kPLStorageModeTask;
    goto LABEL_15;
  }

  v16 = kPLStorageModeFull;
LABEL_17:
  v19 = *v16;
  v20 = 0x1E8518000;
  if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
  {
    if ([PLDefaults objectExistsForKey:@"PLUUID"])
    {
      uuid = [PLDefaults objectForKey:@"PLUUID" synchronize:1];
      [(PLCoreStorage *)self setUuid:uuid];
    }

    else
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      [(PLCoreStorage *)self setUuid:uUIDString];

      uuid = [(PLCoreStorage *)self uuid];
      [PLDefaults setObject:uuid forKey:@"PLUUID" saveToDisk:1];
    }

    v24 = [PLDefaults longForKey:@"PLExitReasonKey" ifNotSet:-1];
    [PLDefaults setObject:0 forKey:@"PLExitReasonKey" saveToDisk:1];
    storageOperator2 = [(PLCoreStorage *)self storageOperator];
    v61[0] = @"Mode";
    v61[1] = @"Version";
    v56 = v19;
    v62[0] = v19;
    v62[1] = &unk_1F540A3A0;
    v61[2] = @"PID";
    v25 = MEMORY[0x1E696AD98];
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [v25 numberWithInt:{objc_msgSend(processInfo, "processIdentifier")}];
    v27 = v26 = 0x1E696A000;
    v62[2] = v27;
    v61[3] = @"ProcessName";
    processInfo2 = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo2 processName];
    v62[3] = processName;
    v61[4] = @"ExitReason";
    v30 = [MEMORY[0x1E696AD98] numberWithLong:v24];
    v62[4] = v30;
    v61[5] = @"DefaultsEnabled";
    v31 = [PLDefaults BOOLForKey:@"logDefaultsToDB" ifNotSet:0];
    if (v31)
    {
      v26 = +[PLDefaults allDefaultsEnabled];
      [v26 description];
    }

    else
    {
      [MEMORY[0x1E695DFB0] null];
    }
    v32 = ;
    v62[5] = v32;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:6];
    [storageOperator2 logEventForwardConfiguration:v33];

    if (v31)
    {

      v32 = v26;
    }

    v34 = +[PLSubmissions sharedInstance];
    [v34 taskingModeSafeguard];

    v35 = +[PLSubmissions sharedInstance];
    [v35 taskingModeSetup];

    v19 = v56;
    v20 = 0x1E8518000uLL;
    if (_os_feature_enabled_impl() && +[PLPlatform internalBuild])
    {
      +[PPSSignpostController registerDataCollectionActivity];
    }
  }

  v36 = +[PLRapidController sharedInstance];
  [v36 registerDataCollectionActivity];

  if ([*(v20 + 2352) internalBuild] && _os_feature_enabled_impl())
  {
    v37 = +[PPSSafeguardController sharedInstance];
    [v37 registerDataCollectionActivity];
  }

  [(PLCoreStorage *)self configureCacheFlush];
  if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
  {
    mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
    [mEMORY[0x1E69DF068] registerUserSwitchStakeHolder:self];
  }

  v39 = objc_autoreleasePoolPush();
  v40 = MEMORY[0x1E695DFF8];
  v41 = +[PLUtilities containerPath];
  v42 = [v40 fileURLWithPath:v41];

  v43 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v44 = *MEMORY[0x1E695DB80];
  v59 = 0;
  v45 = [v42 setResourceValue:v43 forKey:v44 error:&v59];
  v46 = v59;

  if ((v45 & 1) == 0)
  {
    v47 = MEMORY[0x1E696AEC0];
    lastPathComponent = [v42 lastPathComponent];
    v49 = [v47 stringWithFormat:@"Error excluding %@ from backup %@", lastPathComponent, v46];

    v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
    lastPathComponent2 = [v50 lastPathComponent];
    v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage initOperatorDependancies]"];
    [PLCoreStorage logMessage:v49 fromFile:lastPathComponent2 fromFunction:v52 fromLineNumber:837];

    v54 = PLLogCommon(v53);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }
  }

  objc_autoreleasePoolPop(v39);
}

id __41__PLCoreStorage_initOperatorDependancies__block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v73 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Received safe log file request from %d, %@", a2, a3];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
  v10 = [v9 lastPathComponent];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage initOperatorDependancies]_block_invoke"];
  [PLCoreStorage logMessage:v8 fromFile:v10 fromFunction:v11 fromLineNumber:531];

  v13 = PLLogCommon(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v72 = v8;
    _os_log_impl(&dword_1D8611000, v13, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v14 = [v7 mutableCopy];
  v15 = +[PLFileStats logStartDate];
  v16 = [v15 convertFromMonotonicToSystem];

  v17 = +[PLFileStats logEndDate];
  v18 = [v17 convertFromMonotonicToSystem];

  v19 = [v14 objectForKeyedSubscript:@"clean"];
  if (v19)
  {
    v20 = v19;
    v21 = [v14 objectForKeyedSubscript:@"folder"];

    if (v21)
    {
      v22 = [v14 objectForKeyedSubscript:@"folder"];
      v23 = [MEMORY[0x1E696AC08] defaultManager];
      buf[0] = 0;
      if ([v23 fileExistsAtPath:v22 isDirectory:buf] && buf[0] == 1)
      {
        v60 = v7;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v24 = [v23 contentsOfDirectoryAtPath:v22 error:0];
        v25 = [v24 countByEnumeratingWithState:&v62 objects:v70 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v63;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v63 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = [v22 stringByAppendingString:*(*(&v62 + 1) + 8 * i)];
              [v23 removeItemAtPath:v29 error:0];
            }

            v26 = [v24 countByEnumeratingWithState:&v62 objects:v70 count:16];
          }

          while (v26);
        }

        v7 = v60;
      }

      v30 = v7;
      v68[0] = @"path";
      v31 = [v14 objectForKeyedSubscript:@"folder"];
      v69[0] = v31;
      v68[1] = @"startDate";
      v32 = v16;
      if (!v16)
      {
        v32 = [MEMORY[0x1E695DFB0] null];
      }

      v69[1] = v32;
      v68[2] = @"endDate";
      v33 = v18;
      if (!v18)
      {
        v33 = [MEMORY[0x1E695DFB0] null];
      }

      v69[2] = v33;
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:v68 count:3];
      if (v18)
      {
        if (v16)
        {
LABEL_21:

          v7 = v30;
          goto LABEL_34;
        }
      }

      else
      {

        if (v16)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_21;
    }
  }

  v35 = [v14 objectForKeyedSubscript:@"path"];

  if (v35)
  {
    v36 = +[PLSubmissions sharedInstance];
    [v36 generatePLLSubmissionWithPayload:v14];
LABEL_24:

    goto LABEL_28;
  }

  v61 = v7;
  v37 = [MEMORY[0x1E695DF00] filenameDateStringWithStartDate:v16 endDate:v18];
  v38 = [v14 objectForKeyedSubscript:@"folder"];

  if (!v38)
  {
    [PLUtilities createAndChownDirectoryIfDirectoryDoesNotExist:@"/tmp/powerlog/"];
    [v14 setObject:@"/tmp/powerlog/" forKeyedSubscript:@"folder"];
  }

  v39 = MEMORY[0x1E696AEC0];
  v40 = [v14 objectForKeyedSubscript:@"folder"];
  v41 = +[PLUtilities shortUUIDString];
  v42 = [v39 stringWithFormat:@"%@powerlog_%@_%@.PLSQL", v40, v37, v41];
  [v14 setObject:v42 forKeyedSubscript:@"path"];

  v43 = +[PLSubmissions sharedInstance];
  [v43 generatePLLSubmissionWithPayload:v14];

  v7 = v61;
  if (!v38)
  {
    v49 = [v14 objectForKeyedSubscript:@"path"];
    v36 = [v49 lastPathComponent];

    v50 = [v14 objectForKeyedSubscript:@"path"];
    v51 = [@"/var/mobile/Library/Logs/CrashReporter/" stringByAppendingString:v36];
    LOBYTE(v49) = [PLUtilities moveItemAtPath:v50 toPath:v51 withName:v36 error:0];

    if ((v49 & 1) == 0)
    {
      v52 = [MEMORY[0x1E696AC08] defaultManager];
      v53 = [v14 objectForKeyedSubscript:@"path"];
      v54 = [v14 objectForKeyedSubscript:@"path"];
      v55 = [v54 lastPathComponent];
      v56 = [@"/var/mobile/Library/Logs/CrashReporter/" stringByAppendingString:v55];
      [v52 moveItemAtPath:v53 toPath:v56 error:0];
    }

    v57 = [v14 objectForKeyedSubscript:@"path"];
    v58 = [v57 lastPathComponent];
    v59 = [@"/var/mobile/Library/Logs/CrashReporter/" stringByAppendingString:v58];
    [v14 setObject:v59 forKeyedSubscript:@"path"];

    v7 = v61;
    goto LABEL_24;
  }

LABEL_28:
  v44 = MEMORY[0x1E695DFF8];
  v45 = [v14 objectForKeyedSubscript:@"path"];
  v46 = [v44 URLWithString:v45];
  [PPSFileUtilities markAsPurgeable:v46 urgency:512 startDate:0];

  v66[0] = @"path";
  v22 = [v14 objectForKeyedSubscript:@"path"];
  v67[0] = v22;
  v66[1] = @"startDate";
  v23 = v16;
  if (!v16)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v67[1] = v23;
  v66[2] = @"endDate";
  v47 = v18;
  if (!v18)
  {
    v47 = [MEMORY[0x1E695DFB0] null];
  }

  v67[2] = v47;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:3];
  if (v18)
  {
    if (v16)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (!v16)
  {
LABEL_34:
  }

LABEL_35:

  return v34;
}

id __41__PLCoreStorage_initOperatorDependancies__block_invoke_327()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"BLPath";
  v0 = +[PLUtilities containerPath];
  v1 = [v0 stringByAppendingString:@"/Library/BatteryLife/"];
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

id __41__PLCoreStorage_initOperatorDependancies__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = [a5 mutableCopy];
  v6 = [v5 objectForKeyedSubscript:@"folder"];

  if (!v6)
  {
    [PLUtilities createAndChownDirectoryIfDirectoryDoesNotExist:@"/tmp/powerlog/"];
    [v5 setObject:@"/tmp/powerlog/" forKeyedSubscript:@"folder"];
  }

  v46 = [MEMORY[0x1E695DF00] monotonicDate];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = +[PLArchiveManager archiveEntriesFinished];
  v7 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v52;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v52 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v51 + 1) + 8 * i);
        v12 = [v5 objectForKeyedSubscript:@"disallow_resyncs"];
        if (![v12 BOOLValue])
        {

LABEL_12:
          v14 = [v5 objectForKeyedSubscript:@"folder"];
          v15 = [v11 compressedPath];
          v16 = [v15 lastPathComponent];
          v17 = [v14 stringByAppendingString:v16];

          v18 = [MEMORY[0x1E696AC08] defaultManager];
          v19 = [v11 compressedPath];
          [v18 copyItemAtPath:v19 toPath:v17 error:0];

          v20 = [MEMORY[0x1E695DFF8] URLWithString:v17];
          [PPSFileUtilities markAsPurgeable:v20 urgency:512 startDate:0];

          [v11 setSyncedOffDate:v46];
          continue;
        }

        v13 = [v11 syncedOff];

        if ((v13 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
    }

    while (v8);
  }

  if (!v42)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obja = +[PLArchiveManager allArchivePaths];
    v21 = [obja countByEnumeratingWithState:&v47 objects:v57 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v48;
      v24 = @"folder";
      v25 = 0x1E696A000uLL;
      v43 = v5;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v48 != v23)
          {
            objc_enumerationMutation(obja);
          }

          v27 = *(*(&v47 + 1) + 8 * j);
          v28 = [v5 objectForKeyedSubscript:v24];
          v29 = [v27 lastPathComponent];
          v30 = [v28 stringByAppendingString:v29];

          v31 = [*(v25 + 3080) defaultManager];
          LODWORD(v29) = [v31 fileExistsAtPath:v30];

          if (v29)
          {
            v32 = [v27 lastPathComponent];
            v33 = [@"/var/mobile/Library/Logs/CrashReporter/" stringByAppendingString:v32];
            [PLUtilities moveItemAtPath:v30 toPath:v33 withName:v32 error:0];
            [MEMORY[0x1E695DFF8] URLWithString:v33];
            v34 = v22;
            v35 = v23;
            v36 = v24;
            v38 = v37 = v25;
            [PPSFileUtilities markAsPurgeable:v38 urgency:512 startDate:0];

            v25 = v37;
            v24 = v36;
            v23 = v35;
            v22 = v34;
            v5 = v43;
          }
        }

        v22 = [obja countByEnumeratingWithState:&v47 objects:v57 count:16];
      }

      while (v22);
    }

    [v5 setObject:@"/var/mobile/Library/Logs/CrashReporter/" forKeyedSubscript:@"folder"];
  }

  v55 = @"folder";
  v39 = [v5 objectForKeyedSubscript:?];
  v56 = v39;
  v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];

  return v40;
}

id __41__PLCoreStorage_initOperatorDependancies__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a5;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = 0x1E8518000uLL;
  v8 = +[PLUtilities containerPath];
  v9 = [v8 stringByAppendingString:@"/Library/BatteryLife/Quarantine/"];
  v10 = [v6 contentsOfDirectoryAtPath:v9 error:0];

  obj = v10;
  v11 = [v10 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        v16 = [*(v7 + 2584) containerPath];
        v17 = [v16 stringByAppendingString:@"/Library/BatteryLife/Quarantine/"];
        v18 = [v17 stringByAppendingString:v15];

        v19 = [v5 objectForKeyedSubscript:@"folder"];

        if (v19)
        {
          v20 = [v5 objectForKeyedSubscript:@"folder"];
          v21 = [v20 stringByAppendingString:v15];

          v22 = [MEMORY[0x1E696AC08] defaultManager];
          v23 = [v5 objectForKeyedSubscript:@"folder"];
          v24 = [v23 stringByAppendingString:v15];
          [v22 moveItemAtPath:v18 toPath:v24 error:0];
        }

        else
        {
          v21 = [@"/var/mobile/Library/Logs/CrashReporter/" stringByAppendingString:v15];
          [*(v7 + 2584) moveItemAtPath:v18 toPath:v21 withName:v15 error:0];
        }

        v25 = [MEMORY[0x1E695DFF8] URLWithString:v21];
        [PPSFileUtilities markAsPurgeable:v25 urgency:512 startDate:0];

        v7 = 0x1E8518000;
      }

      v12 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v12);
  }

  v35 = @"folder";
  v26 = [v5 objectForKeyedSubscript:?];
  if (v26)
  {
    v27 = [v5 objectForKeyedSubscript:@"folder"];
  }

  else
  {
    v27 = @"/var/mobile/Library/Logs/CrashReporter/";
  }

  v36 = v27;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  if (v26)
  {
  }

  return v28;
}

id __41__PLCoreStorage_initOperatorDependancies__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a5;
  v6 = [v5 objectForKeyedSubscript:@"folder"];
  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:@"folder"];
  }

  else
  {
    v7 = @"/var/mobile/Library/Logs/CrashReporter/";
  }

  v8 = +[PLUtilities containerPath];
  v9 = [v8 stringByAppendingString:@"/Library/BatteryLife/Quarantine/"];
  [PLUtilities PLCopyItemsFromPath:v9 toPath:v7];

  v12 = @"folder";
  v13[0] = v7;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  return v10;
}

id __41__PLCoreStorage_initOperatorDependancies__block_invoke_5(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v9 && ([v9 objectForKeyedSubscript:@"folder"], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = +[PLUtilities containerPath];
    v13 = [v12 stringByAppendingString:@"/Library/BatteryLife/Debug/"];

    v14 = [v10 objectForKeyedSubscript:@"folder"];
    v15 = [MEMORY[0x1E696AC08] defaultManager];
    v16 = [v15 contentsOfDirectoryAtPath:v13 error:0];
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __41__PLCoreStorage_initOperatorDependancies__block_invoke_6;
    v26 = &unk_1E8519A60;
    v27 = v13;
    v28 = v14;
    v29 = v15;
    v17 = v15;
    v18 = v14;
    v19 = v13;
    [v16 enumerateObjectsUsingBlock:&v23];
    v30 = @"folder";
    v20 = [v10 objectForKeyedSubscript:{@"folder", v23, v24, v25, v26}];
    v31[0] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  }

  else
  {
    v21 = MEMORY[0x1E695E0F8];
  }

  return v21;
}

void __41__PLCoreStorage_initOperatorDependancies__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 stringByAppendingString:v4];
  v5 = [*(a1 + 40) stringByAppendingString:v4];

  [*(a1 + 48) copyItemAtPath:v7 toPath:v5 error:0];
  v6 = [MEMORY[0x1E695DFF8] URLWithString:v5];
  [PPSFileUtilities markAsPurgeable:v6 urgency:512 startDate:0];
}

id __41__PLCoreStorage_initOperatorDependancies__block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = [a5 mutableCopy];
  v7 = PLLogCommon(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __41__PLCoreStorage_initOperatorDependancies__block_invoke_7_cold_1();
  }

  if (v6 && ([v6 objectForKeyedSubscript:@"folder"], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = *(a1 + 32);
    v10 = +[PLUtilities containerPath];
    v11 = [v10 stringByAppendingString:@"/Library/BatteryLife/UpgradeLogs/MajorVersion"];
    v12 = [v6 objectForKeyedSubscript:@"folder"];
    [v9 copyUpgradePowerlogsAtPath:v11 toPath:v12];

    v13 = *(a1 + 32);
    v14 = +[PLUtilities containerPath];
    v15 = [v14 stringByAppendingString:@"/Library/BatteryLife/UpgradeLogs/MinorVersion"];
    v16 = [v6 objectForKeyedSubscript:@"folder"];
    [v13 copyUpgradePowerlogsAtPath:v15 toPath:v16];

    v20 = @"folder";
    v17 = [v6 objectForKeyedSubscript:@"folder"];
    v21[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  }

  else
  {
    v18 = MEMORY[0x1E695E0F8];
  }

  return v18;
}

- (void)copyUpgradePowerlogsAtPath:(id)path toPath:(id)toPath
{
  pathCopy = path;
  toPathCopy = toPath;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [defaultManager contentsOfDirectoryAtPath:pathCopy error:0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__PLCoreStorage_copyUpgradePowerlogsAtPath_toPath___block_invoke;
  v12[3] = &unk_1E8519A60;
  v13 = pathCopy;
  v14 = defaultManager;
  v15 = toPathCopy;
  v9 = toPathCopy;
  v10 = defaultManager;
  v11 = pathCopy;
  [v8 enumerateObjectsUsingBlock:v12];
}

void __51__PLCoreStorage_copyUpgradePowerlogsAtPath_toPath___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] stringByAppendingPathComponent:v3];
  v5 = [a1[5] contentsOfDirectoryAtPath:v4 error:0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__PLCoreStorage_copyUpgradePowerlogsAtPath_toPath___block_invoke_2;
  v8[3] = &unk_1E8519A60;
  v9 = v4;
  v10 = v3;
  v11 = a1[6];
  v6 = v3;
  v7 = v4;
  [v5 enumerateObjectsUsingBlock:v8];
}

void __51__PLCoreStorage_copyUpgradePowerlogsAtPath_toPath___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 stringByAppendingPathComponent:v4];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@_%@", @"UpgradeLogs", *(a1 + 40), v4];

  v7 = [*(a1 + 48) stringByAppendingPathComponent:v6];
  v8 = PLLogCommon(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __51__PLCoreStorage_copyUpgradePowerlogsAtPath_toPath___block_invoke_2_cold_1();
  }

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v14 = 0;
  v10 = [v9 copyItemAtPath:v5 toPath:v7 error:&v14];
  v11 = v14;

  if (v10)
  {
    v13 = [MEMORY[0x1E695DFF8] URLWithString:v7];
    [PPSFileUtilities markAsPurgeable:v13 urgency:512 startDate:0];
  }

  else
  {
    v13 = PLLogCommon(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v16 = v5;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v11;
      _os_log_error_impl(&dword_1D8611000, v13, OS_LOG_TYPE_ERROR, "Failed to copy upgrade logs at path: %@ to path: %@ with error: %@", buf, 0x20u);
    }
  }
}

- (void)removeOldPowerlogFiles
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager removeItemAtPath:@"/var/mobile/Library/BatteryLife" error:0];
}

- (BOOL)registerDailyTasks
{
  if (+[PLUtilities isLiteModeDaemon](PLUtilities, "isLiteModeDaemon") || (v3 = +[PLUtilities isFullModeDaemon]))
  {
    [PLDefaults doubleForKey:@"dbDailyTasksInterval" ifNotSet:-1.0];
    v5 = v4;
    v6 = +[PLDefaults debugEnabled];
    if (v5 <= 0.0)
    {
      if (v6)
      {
        v19 = objc_opt_class();
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __35__PLCoreStorage_registerDailyTasks__block_invoke_430;
        v32[3] = &unk_1E8519630;
        v33 = @"DailyTasks";
        v34 = v19;
        if (registerDailyTasks_defaultOnce_428 != -1)
        {
          dispatch_once(&registerDailyTasks_defaultOnce_428, v32);
        }

        v20 = registerDailyTasks_classDebugEnabled_429;

        if (v20 == 1)
        {
          v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Setting up dailyTaskNotification dbDailyTasksInterval=%f", *&v5];
          v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
          lastPathComponent = [v22 lastPathComponent];
          v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage registerDailyTasks]"];
          [PLCoreStorage logMessage:v21 fromFile:lastPathComponent fromFunction:v24 fromLineNumber:893];

          v26 = PLLogCommon(v25);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }

      v27 = [PLNSNotificationOperatorComposition alloc];
      utilityQueue = self->_utilityQueue;
      v29 = *MEMORY[0x1E695D810];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __35__PLCoreStorage_registerDailyTasks__block_invoke_435;
      v31[3] = &unk_1E8519090;
      v31[4] = self;
      v18 = [(PLNSNotificationOperatorComposition *)v27 initWithWorkQueue:utilityQueue forNotification:v29 withBlock:v31];
      [(PLCoreStorage *)self setDailyTaskNotification:v18];
    }

    else
    {
      if (v6)
      {
        v7 = objc_opt_class();
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __35__PLCoreStorage_registerDailyTasks__block_invoke;
        block[3] = &unk_1E8519630;
        v37 = @"DailyTasks";
        v38 = v7;
        if (registerDailyTasks_defaultOnce != -1)
        {
          dispatch_once(&registerDailyTasks_defaultOnce, block);
        }

        v8 = registerDailyTasks_classDebugEnabled;

        if (v8 == 1)
        {
          v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Setting up dailyTaskTimer with dbDailyTasksInterval=%f", *&v5];
          v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
          lastPathComponent2 = [v10 lastPathComponent];
          v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage registerDailyTasks]"];
          [PLCoreStorage logMessage:v9 fromFile:lastPathComponent2 fromFunction:v12 fromLineNumber:884];

          v14 = PLLogCommon(v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }

      v15 = [PLTimer alloc];
      v16 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v5];
      v17 = self->_utilityQueue;
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __35__PLCoreStorage_registerDailyTasks__block_invoke_424;
      v35[3] = &unk_1E8519A18;
      v35[4] = self;
      v18 = [(PLTimer *)v15 initWithFireDate:v16 withInterval:1 withTolerance:0 repeats:v17 withUserInfo:v35 withQueue:v5 withBlock:0.0];

      [(PLCoreStorage *)self setDailyTaskTimer:v18];
    }

    LOBYTE(v3) = 1;
  }

  return v3;
}

BOOL __35__PLCoreStorage_registerDailyTasks__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  registerDailyTasks_classDebugEnabled = result;
  return result;
}

uint64_t __35__PLCoreStorage_registerDailyTasks__block_invoke_424(uint64_t a1)
{
  if (+[PLDefaults debugEnabled])
  {
    v2 = objc_opt_class();
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __35__PLCoreStorage_registerDailyTasks__block_invoke_2;
    v14 = &unk_1E8519630;
    v15 = @"DailyTasks";
    v16 = v2;
    if (kPLTaskingEndNotification_block_invoke_3_defaultOnce != -1)
    {
      dispatch_once(&kPLTaskingEndNotification_block_invoke_3_defaultOnce, &v11);
    }

    v3 = kPLTaskingEndNotification_block_invoke_3_classDebugEnabled;

    if (v3 == 1)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DailyTasks timer!", v11, v12, v13, v14];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage registerDailyTasks]_block_invoke"];
      [PLCoreStorage logMessage:v4 fromFile:v6 fromFunction:v7 fromLineNumber:887];

      v9 = PLLogCommon(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  return [*(a1 + 32) dailyTasks];
}

BOOL __35__PLCoreStorage_registerDailyTasks__block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPLTaskingEndNotification_block_invoke_3_classDebugEnabled = result;
  return result;
}

BOOL __35__PLCoreStorage_registerDailyTasks__block_invoke_430(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  registerDailyTasks_classDebugEnabled_429 = result;
  return result;
}

uint64_t __35__PLCoreStorage_registerDailyTasks__block_invoke_435(uint64_t a1)
{
  if (+[PLDefaults debugEnabled])
  {
    v2 = objc_opt_class();
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __35__PLCoreStorage_registerDailyTasks__block_invoke_2_436;
    v14 = &unk_1E8519630;
    v15 = @"DailyTasks";
    v16 = v2;
    if (kPLTaskingEndNotification_block_invoke_4_defaultOnce != -1)
    {
      dispatch_once(&kPLTaskingEndNotification_block_invoke_4_defaultOnce, &v11);
    }

    v3 = kPLTaskingEndNotification_block_invoke_4_classDebugEnabled;

    if (v3 == 1)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DailyTasks notification!", v11, v12, v13, v14];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage registerDailyTasks]_block_invoke"];
      [PLCoreStorage logMessage:v4 fromFile:v6 fromFunction:v7 fromLineNumber:896];

      v9 = PLLogCommon(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  return [*(a1 + 32) dailyTasks];
}

BOOL __35__PLCoreStorage_registerDailyTasks__block_invoke_2_436(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPLTaskingEndNotification_block_invoke_4_classDebugEnabled = result;
  return result;
}

- (void)dailyTasks
{
  v3 = PLLogCommon(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_DEFAULT, "DailyTasks fire!", buf, 2u);
  }

  connection = [(PLCoreStorage *)self connection];
  [connection removeEmptyOldTables];

  [(PLCoreStorage *)self cleanupTmp];
  [(PLCoreStorage *)self cleanupQuarantine];
  v5 = +[PLSubmissions sharedInstance];
  [v5 generateOTASubmissionAndSendTaskingEndSubmission:1];

  v6 = +[PLDefaults fullMode];
  v7 = @"com.apple.powerlogd.litemodesize";
  if (v6)
  {
    v7 = @"com.apple.powerlogd.fullmodesize";
  }

  v8 = v7;
  v9 = +[PLUtilities containerPath];
  v10 = [v9 stringByAppendingString:@"/Library/BatteryLife/CurrentPowerlog.PLSQL"];
  [PLFileStats fileSizeAtPath:v10];
  PLADClientAddValueForScalarKey();

  v11 = +[PLDefaults fullMode];
  v12 = @"litemode";
  if (v11)
  {
    v12 = @"fullmode";
  }

  v13 = v12;
  AnalyticsSendEventLazy();
  v14 = +[PLArchiveManager lastArchivePath];
  v15 = v14;
  if (v14)
  {
    [(__CFString *)v8 stringByAppendingString:@".compressed"];
    [PLFileStats fileSizeAtPath:v15];
    PLADClientAddValueForScalarKey();
    v18 = v13;
    v19 = v15;
    AnalyticsSendEventLazy();
  }

  v16 = PLLogCommon(v14);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v16, OS_LOG_TYPE_DEFAULT, "DailyTasks reporting perf stats to CA", buf, 2u);
  }

  v17 = PLLogCommon([(PLCoreStorage *)self reportPerfStats]);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v17, OS_LOG_TYPE_DEFAULT, "DailyTasks done!", buf, 2u);
  }
}

id __27__PLCoreStorage_dailyTasks__block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v8[0] = *(a1 + 32);
  v7[0] = @"mode";
  v7[1] = @"size";
  v1 = MEMORY[0x1E696AD98];
  v2 = +[PLUtilities containerPath];
  v3 = [v2 stringByAppendingString:@"/Library/BatteryLife/CurrentPowerlog.PLSQL"];
  v4 = [v1 numberWithLongLong:{+[PLFileStats fileSizeAtPath:](PLFileStats, "fileSizeAtPath:", v3)}];
  v7[2] = @"compressed";
  v8[1] = v4;
  v8[2] = MEMORY[0x1E695E110];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

id __27__PLCoreStorage_dailyTasks__block_invoke_2(uint64_t a1)
{
  v6[3] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v6[0] = *(a1 + 32);
  v5[0] = @"mode";
  v5[1] = @"size";
  v2 = [MEMORY[0x1E696AD98] numberWithLongLong:{+[PLFileStats fileSizeAtPath:](PLFileStats, "fileSizeAtPath:", v1)}];
  v5[2] = @"compressed";
  v6[1] = v2;
  v6[2] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];

  return v3;
}

- (void)applyContainerPOSIXPermissions
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

id __47__PLCoreStorage_applyContainerPOSIXPermissions__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32)];
  [v2 setObject:v3 forKeyedSubscript:@"DidSetPermissions"];

  return v2;
}

- (void)reportPerfStats
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [&unk_1F540B788 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v14;
    *&v3 = 138412290;
    v11 = v3;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(&unk_1F540B788);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [PLUtilities getPerfStatsForProcess:v7, v11];
        v9 = v8;
        if (v8)
        {
          v12 = v8;
          AnalyticsSendEventLazy();
          v10 = v12;
        }

        else
        {
          v10 = PLLogCommon(0);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = v11;
            v18 = v7;
            _os_log_impl(&dword_1D8611000, v10, OS_LOG_TYPE_INFO, "DailyTasks perf stats not available for %@", buf, 0xCu);
          }
        }
      }

      v4 = [&unk_1F540B788 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v4);
  }
}

- (void)cleanupTmp
{
  v64 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v3 = NSTemporaryDirectory();
  v59 = 0;
  v4 = [defaultManager contentsOfDirectoryAtPath:v3 error:&v59];
  v5 = v59;

  v44 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v56;
    v41 = *MEMORY[0x1E696A308];
    v9 = @".PLSQL";
    do
    {
      v10 = 0;
      v47 = v7;
      do
      {
        if (*v56 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v55 + 1) + 8 * v10);
        if (([v11 hasSuffix:v9] & 1) != 0 || (objc_msgSend(v11, "hasSuffix:", @".PLSQL-shm") & 1) != 0 || objc_msgSend(v11, "hasSuffix:", @".PLSQL-wal"))
        {
          if ([v11 hasPrefix:@"PLSafeFileInprogress_"])
          {
            v12 = [v11 stringByReplacingOccurrencesOfString:@"PLSafeFileInprogress_" withString:&stru_1F539D228];
            v13 = [v12 stringByReplacingOccurrencesOfString:v9 withString:&stru_1F539D228];

            safeCopyInProgress = [(PLCoreStorage *)self safeCopyInProgress];
            v15 = [safeCopyInProgress containsObject:v13];

            if ((v15 & 1) == 0)
            {
              [v44 addObject:v11];
            }
          }

          else
          {
            v16 = v8;
            v17 = v9;
            defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
            v19 = MEMORY[0x1E696AEC0];
            v20 = NSTemporaryDirectory();
            v21 = [v19 stringWithFormat:@"%@/%@", v20, v11];
            v54 = v5;
            v13 = [defaultManager2 attributesOfItemAtPath:v21 error:&v54];
            v22 = v54;

            v23 = [v13 objectForKeyedSubscript:v41];
            [v23 timeIntervalSinceNow];
            if (v24 < -7200.0)
            {
              [v44 addObject:v11];
            }

            v5 = v22;
            v9 = v17;
            v8 = v16;
            v7 = v47;
          }
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v7);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v45 = v44;
  v25 = [v45 countByEnumeratingWithState:&v50 objects:v62 count:16];
  if (v25)
  {
    v26 = v25;
    v48 = *v51;
    do
    {
      v27 = 0;
      v28 = v5;
      v43 = v26;
      do
      {
        if (*v51 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v29 = *(*(&v50 + 1) + 8 * v27);
        defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
        v31 = MEMORY[0x1E696AEC0];
        v32 = NSTemporaryDirectory();
        v33 = [v31 stringWithFormat:@"%@/%@", v32, v29];
        v49 = v28;
        v34 = [defaultManager3 removeItemAtPath:v33 error:&v49];
        v5 = v49;

        if ((v34 & 1) == 0)
        {
          v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to remove file %@ %@", v29, v5];
          v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
          lastPathComponent = [v36 lastPathComponent];
          v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage cleanupTmp]"];
          [PLCoreStorage logMessage:v35 fromFile:lastPathComponent fromFunction:v38 fromLineNumber:1050];

          v40 = PLLogCommon(v39);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v61 = v35;
            _os_log_impl(&dword_1D8611000, v40, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
          }

          v26 = v43;
        }

        ++v27;
        v28 = v5;
      }

      while (v26 != v27);
      v26 = [v45 countByEnumeratingWithState:&v50 objects:v62 count:16];
    }

    while (v26);
  }
}

- (void)cleanupQuarantine
{
  v50 = *MEMORY[0x1E69E9840];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v3 = +[PLUtilities containerPath];
  v4 = [v3 stringByAppendingString:@"/Library/BatteryLife/Quarantine/"];
  v5 = [defaultManager contentsOfDirectoryAtPath:v4 error:0];

  v6 = [v5 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v45;
    do
    {
      v9 = 0;
      do
      {
        if (*v45 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v44 + 1) + 8 * v9);
        v11 = +[PLUtilities containerPath];
        v12 = [v11 stringByAppendingString:@"/Library/BatteryLife/Quarantine/"];
        v13 = [v12 stringByAppendingString:v10];

        defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
        v15 = [defaultManager2 attributesOfItemAtPath:v13 error:0];

        fileModificationDate = [v15 fileModificationDate];
        date = [MEMORY[0x1E695DF00] date];
        [date timeIntervalSinceDate:fileModificationDate];
        v19 = v18;

        if (v19 > 604800.0)
        {
          defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
          [defaultManager3 removeItemAtPath:v13 error:0];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v7);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  defaultManager4 = [MEMORY[0x1E696AC08] defaultManager];
  v22 = +[PLUtilities containerPath];
  v23 = [v22 stringByAppendingString:@"/Library/PerfPowerTelemetry/Quarantine/"];
  v24 = [defaultManager4 contentsOfDirectoryAtPath:v23 error:0];

  v25 = [v24 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v41;
    do
    {
      v28 = 0;
      do
      {
        if (*v41 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v40 + 1) + 8 * v28);
        v30 = +[PLUtilities containerPath];
        v31 = [v30 stringByAppendingString:@"/Library/PerfPowerTelemetry/Quarantine/"];
        v32 = [v31 stringByAppendingString:v29];

        defaultManager5 = [MEMORY[0x1E696AC08] defaultManager];
        v34 = [defaultManager5 attributesOfItemAtPath:v32 error:0];

        fileModificationDate2 = [v34 fileModificationDate];
        date2 = [MEMORY[0x1E695DF00] date];
        [date2 timeIntervalSinceDate:fileModificationDate2];
        v38 = v37;

        if (v38 > 604800.0)
        {
          defaultManager6 = [MEMORY[0x1E696AC08] defaultManager];
          [defaultManager6 removeItemAtPath:v32 error:0];
        }

        ++v28;
      }

      while (v26 != v28);
      v26 = [v24 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v26);
  }
}

- (void)handleSchemaMismatchForTable:(id)table expectedVersion:(double)version schemaMatch:(signed __int16)match
{
  v216[3] = *MEMORY[0x1E69E9840];
  matchCopy = match;
  tableCopy = table;
  connection = [(PLCoreStorage *)self connection];
  [connection schemaVersionForTable:tableCopy];
  v11 = v10;

  if (v11 != version)
  {
    storageOperator = [(PLCoreStorage *)self storageOperator];
    v216[0] = tableCopy;
    v215[0] = @"TableName";
    v215[1] = @"PreviousVersion";
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
    v216[1] = v13;
    v215[2] = @"CurrentVersion";
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:version];
    v216[2] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v216 forKeys:v215 count:3];
    [storageOperator logEventForwardSchemaChange:v15];
  }

  tableCopy = 0;
  if (matchCopy <= 65533)
  {
    if (!matchCopy)
    {
      if (+[PLDefaults debugEnabled])
      {
        connection10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ERROR! Do not call handleSchemaMismatchForTable with PLSchemaVersionSame"];
        v88 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
        lastPathComponent = [v88 lastPathComponent];
        v90 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage handleSchemaMismatchForTable:expectedVersion:schemaMatch:]"];
        [PLCoreStorage logMessage:connection10 fromFile:lastPathComponent fromFunction:v90 fromLineNumber:1094];

        v22 = PLLogCommon(v91);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
LABEL_72:
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

LABEL_73:

        tableCopy = 0;
        goto LABEL_113;
      }

LABEL_74:
      tableCopy = 0;
      goto LABEL_114;
    }

    if (matchCopy == 65533)
    {
      if (+[PLDefaults debugEnabled])
      {
        connection10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ERROR! Do not call handleSchemaMismatchForTable with PLSchemaVersionNone"];
        v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
        lastPathComponent2 = [v18 lastPathComponent];
        v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage handleSchemaMismatchForTable:expectedVersion:schemaMatch:]"];
        [PLCoreStorage logMessage:connection10 fromFile:lastPathComponent2 fromFunction:v20 fromLineNumber:1098];

        v22 = PLLogCommon(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_72;
        }

        goto LABEL_73;
      }

      goto LABEL_74;
    }

    goto LABEL_99;
  }

  selfCopy = self;
  if (matchCopy == 65534)
  {
    connection2 = [(PLCoreStorage *)self connection];
    v93 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ALTER TABLE '%@' RENAME TO 'PLOLD_%@_%f'", tableCopy, tableCopy, *&v11];;
    v94 = [connection2 performQuery:v93];

    connection3 = [(PLCoreStorage *)self connection];
    LODWORD(v93) = [connection3 tableExistsForTableName:tableCopy];

    if (v93)
    {
      tableCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to move %@", tableCopy];
      goto LABEL_103;
    }

    tableCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_Dynamic", tableCopy];
    connection4 = [(PLCoreStorage *)self connection];
    v98 = [connection4 tableExistsForTableName:tableCopy2];
    if (v98 && (-[PLCoreStorage connection](self, "connection"), v99 = ;
    {
      tableCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to move %@", tableCopy2];
      matchCopy = 3;
    }

    else
    {
      v160 = tableCopy2;
      v152 = tableCopy;
      tableCopy3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT name FROM sqlite_master WHERE type='table' AND name LIKE %@_Array_%% AND name NOT LIKE PLOLD_%@_Array_%%", tableCopy, tableCopy];;
      connection5 = [(PLCoreStorage *)self connection];
      v158 = tableCopy3;
      v105 = [connection5 performQuery:tableCopy3];

      v196 = 0u;
      v197 = 0u;
      v194 = 0u;
      v195 = 0u;
      v106 = v105;
      v107 = [v106 countByEnumeratingWithState:&v194 objects:v214 count:16];
      v163 = v106;
      if (!v107)
      {
        goto LABEL_88;
      }

      v108 = v107;
      v109 = *v195;
      do
      {
        for (i = 0; i != v108; ++i)
        {
          if (*v195 != v109)
          {
            objc_enumerationMutation(v163);
          }

          v111 = *(*(&v194 + 1) + 8 * i);
          connection6 = [(PLCoreStorage *)self connection];
          v113 = MEMORY[0x1E696AEC0];
          v114 = [v111 objectForKeyedSubscript:@"name"];
          v115 = [v111 objectForKeyedSubscript:@"name"];
          v116 = [v113 stringWithFormat:@"ALTER TABLE '%@' RENAME TO 'PLOLD_%@_%f'", v114, v115, *&v11];;
          v117 = [connection6 performQuery:v116];

          self = selfCopy;
          connection7 = [(PLCoreStorage *)selfCopy connection];
          v119 = [v111 objectForKeyedSubscript:@"name"];
          LOBYTE(connection6) = [connection7 tableExistsForTableName:v119];

          if (connection6)
          {
            v136 = MEMORY[0x1E696AEC0];
            v123 = [v111 objectForKeyedSubscript:@"name"];
            tableCopy = [v136 stringWithFormat:@"unable to move %@", v123];
            matchCopy = 3;
            v134 = v163;
            v135 = v163;
            tableCopy = v152;
            tableCopy2 = v160;
            goto LABEL_97;
          }
        }

        v106 = v163;
        v108 = [v163 countByEnumeratingWithState:&v194 objects:v214 count:16];
      }

      while (v108);
LABEL_88:
      v120 = ;
      connection8 = [(PLCoreStorage *)self connection];
      v155 = v120;
      v122 = [connection8 performQuery:v120];

      v192 = 0u;
      v193 = 0u;
      v190 = 0u;
      v191 = 0u;
      v123 = v122;
      v124 = [v123 countByEnumeratingWithState:&v190 objects:v213 count:16];
      if (v124)
      {
        v125 = v124;
        v126 = *v191;
        do
        {
          for (j = 0; j != v125; ++j)
          {
            if (*v191 != v126)
            {
              objc_enumerationMutation(v123);
            }

            v128 = *(*(&v190 + 1) + 8 * j);
            connection9 = [(PLCoreStorage *)self connection];
            v130 = MEMORY[0x1E696AEC0];
            v131 = [v128 objectForKeyedSubscript:@"name"];
            v131 = [v130 stringWithFormat:@"DROP INDEX %@", v131];;
            v133 = [connection9 performQuery:v131];

            self = selfCopy;
          }

          v125 = [v123 countByEnumeratingWithState:&v190 objects:v213 count:16];
        }

        while (v125);
      }

      tableCopy = v152;
      [(PLCoreStorage *)self setupStorageForEntryKey:v152];
      tableCopy = 0;
      matchCopy = 65534;
      tableCopy2 = v160;
      v134 = v163;
      v135 = v155;
LABEL_97:
    }

LABEL_99:
    if ((matchCopy - 1) > 2)
    {
      goto LABEL_114;
    }

    if (matchCopy == 1)
    {

      v137 = 0;
      tableCopy = @"Previous Version Newer";
      v138 = 1;
      goto LABEL_105;
    }

    if (matchCopy == 2)
    {

      tableCopy = @"New File Required";
      v137 = 1;
      v138 = 2;
LABEL_105:
      storageOperator2 = [(PLCoreStorage *)self storageOperator];
      v206[0] = @"TableName";
      v206[1] = @"CurrentVersion";
      v207[0] = tableCopy;
      v207[1] = &unk_1F5405CB8;
      v206[2] = @"PreviousVersion";
      v207[2] = &unk_1F5405CB8;
      v140 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v207 forKeys:v206 count:3];
      [storageOperator2 logEventForwardSchemaChange:v140];

      v141 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ERROR! PLSQLversion mismatch on %@! expectedVersion=%f schemaMatch=%d error=%@", tableCopy, *&version, v138, tableCopy];
      v142 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      lastPathComponent3 = [v142 lastPathComponent];
      v144 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage handleSchemaMismatchForTable:expectedVersion:schemaMatch:]"];
      [PLCoreStorage logMessage:v141 fromFile:lastPathComponent3 fromFunction:v144 fromLineNumber:1211];

      v146 = PLLogCommon(v145);
      if (os_log_type_enabled(v146, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v148 = PLLogCommon(v147);
      if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v199 = tableCopy;
        v200 = 2048;
        versionCopy = version;
        v202 = 1024;
        v203 = v138;
        v204 = 2112;
        v205 = tableCopy;
        _os_log_error_impl(&dword_1D8611000, v148, OS_LOG_TYPE_ERROR, "SQL mismatch on %@ (expected=%f schemaMatch=%d error=%@)", buf, 0x26u);
      }

      connection10 = [(PLCoreStorage *)self connection];
      if (v137)
      {
        v149 = 1008;
      }

      else
      {
        v149 = 1007;
      }

      [PLUtilities exitWithReason:v149 connection:connection10];
      goto LABEL_113;
    }

LABEL_103:
    v137 = 0;
    v138 = 3;
    goto LABEL_105;
  }

  connection11 = [(PLCoreStorage *)self connection];
  v162 = [connection11 tableInfo:tableCopy];

  [PLEntryDefinition definitionForEntryKey:tableCopy];
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v159 = v189 = 0u;
  obj = [PLEntryDefinition allKeysForEntryDefinition:?];
  v156 = [obj countByEnumeratingWithState:&v186 objects:v212 count:16];
  if (!v156)
  {
    goto LABEL_44;
  }

  v153 = *v187;
  do
  {
    v24 = 0;
    do
    {
      if (*v187 != v153)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v186 + 1) + 8 * v24);
      v26 = [PLEntryDefinition keyConfigsForEntryDefinition:v159];
      v27 = [v26 objectForKey:v25];
      v28 = [v27 objectForKeyedSubscript:@"Type"];
      shortValue = [v28 shortValue];

      if (shortValue)
      {
        v181 = 0u;
        v182 = 0u;
        v179 = 0u;
        v180 = 0u;
        v30 = v162;
        v31 = [v30 countByEnumeratingWithState:&v179 objects:v211 count:16];
        if (v31)
        {
          v32 = *v180;
          while (2)
          {
            for (k = 0; k != v31; ++k)
            {
              if (*v180 != v32)
              {
                objc_enumerationMutation(v30);
              }

              v34 = [*(*(&v179 + 1) + 8 * k) objectForKeyedSubscript:@"name"];
              v35 = [v34 isEqualToString:v25];

              if (v35)
              {
                LOBYTE(v31) = 1;
                goto LABEL_26;
              }
            }

            v31 = [v30 countByEnumeratingWithState:&v179 objects:v211 count:16];
            if (v31)
            {
              continue;
            }

            break;
          }
        }

LABEL_26:

        if (+[PLDefaults debugEnabled])
        {
          v36 = objc_opt_class();
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __74__PLCoreStorage_handleSchemaMismatchForTable_expectedVersion_schemaMatch___block_invoke_561;
          block[3] = &unk_1E8519630;
          v177 = @"schemaMismatch";
          v178 = v36;
          if (handleSchemaMismatchForTable_expectedVersion_schemaMatch__defaultOnce_559 != -1)
          {
            dispatch_once(&handleSchemaMismatchForTable_expectedVersion_schemaMatch__defaultOnce_559, block);
          }

          v37 = handleSchemaMismatchForTable_expectedVersion_schemaMatch__classDebugEnabled_560;

          if (v37 == 1)
          {
            v38 = MEMORY[0x1E696AEC0];
            v39 = NSStringFromBOOL();
            v40 = [v38 stringWithFormat:@"%@ key=%@ existsInTable=%@", tableCopy, v25, v39];

            v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
            lastPathComponent4 = [v41 lastPathComponent];
            v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage handleSchemaMismatchForTable:expectedVersion:schemaMatch:]"];
            [PLCoreStorage logMessage:v40 fromFile:lastPathComponent4 fromFunction:v43 fromLineNumber:1163];

            v45 = PLLogCommon(v44);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v199 = v40;
              _os_log_debug_impl(&dword_1D8611000, v45, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        if ((v31 & 1) == 0)
        {
          v46 = MEMORY[0x1E696AEC0];
          v47 = PLVTypeToPLSQLiteType;
          v48 = [PLEntryDefinition keyConfigsForEntryDefinition:v159];
          v49 = [v48 objectForKey:v25];
          v50 = [v49 objectForKeyedSubscript:@"Type"];
          v51 = [v47 objectForKeyedSubscript:v50];
          v52 = [v46 stringWithFormat:@"ALTER TABLE '%@' ADD COLUMN '%@' %@", tableCopy, v25, v51];;

          connection12 = [(PLCoreStorage *)selfCopy connection];
          v54 = [connection12 performQuery:v52];
LABEL_41:
        }
      }

      else if (+[PLDefaults debugEnabled])
      {
        v55 = objc_opt_class();
        v183[0] = MEMORY[0x1E69E9820];
        v183[1] = 3221225472;
        v183[2] = __74__PLCoreStorage_handleSchemaMismatchForTable_expectedVersion_schemaMatch___block_invoke;
        v183[3] = &unk_1E8519630;
        v184 = @"schemaMismatch";
        v185 = v55;
        if (handleSchemaMismatchForTable_expectedVersion_schemaMatch__defaultOnce != -1)
        {
          dispatch_once(&handleSchemaMismatchForTable_expectedVersion_schemaMatch__defaultOnce, v183);
        }

        v56 = handleSchemaMismatchForTable_expectedVersion_schemaMatch__classDebugEnabled;

        if (v56 == 1)
        {
          v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ key=%@ skip arrays", tableCopy, v25];
          v57 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
          lastPathComponent5 = [v57 lastPathComponent];
          v59 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage handleSchemaMismatchForTable:expectedVersion:schemaMatch:]"];
          [PLCoreStorage logMessage:v52 fromFile:lastPathComponent5 fromFunction:v59 fromLineNumber:1151];

          connection12 = PLLogCommon(v60);
          if (os_log_type_enabled(connection12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v199 = v52;
            _os_log_debug_impl(&dword_1D8611000, connection12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          goto LABEL_41;
        }
      }

      ++v24;
    }

    while (v24 != v156);
    v156 = [obj countByEnumeratingWithState:&v186 objects:v212 count:16];
  }

  while (v156);
LABEL_44:

  v61 = [PLEntryDefinition overridesEntryDateForEntryKey:tableCopy];
  v62 = MEMORY[0x1E695E0F8];
  if (v61)
  {
    v62 = &unk_1F540CA18;
  }

  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  v175 = 0u;
  obja = v62;
  allKeys = [obja allKeys];
  v63 = [allKeys countByEnumeratingWithState:&v172 objects:v210 count:16];
  if (v63)
  {
    v64 = v63;
    v157 = *v173;
    do
    {
      for (m = 0; m != v64; ++m)
      {
        if (*v173 != v157)
        {
          objc_enumerationMutation(allKeys);
        }

        v66 = *(*(&v172 + 1) + 8 * m);
        v168 = 0u;
        v169 = 0u;
        v170 = 0u;
        v171 = 0u;
        v67 = v162;
        v68 = [v67 countByEnumeratingWithState:&v168 objects:v209 count:16];
        if (v68)
        {
          v69 = v68;
          v70 = *v169;
LABEL_53:
          v71 = 0;
          while (1)
          {
            if (*v169 != v70)
            {
              objc_enumerationMutation(v67);
            }

            v72 = [*(*(&v168 + 1) + 8 * v71) objectForKeyedSubscript:@"name"];
            v73 = [v72 isEqualToString:v66];

            if (v73)
            {
              break;
            }

            if (v69 == ++v71)
            {
              v69 = [v67 countByEnumeratingWithState:&v168 objects:v209 count:16];
              if (v69)
              {
                goto LABEL_53;
              }

              goto LABEL_59;
            }
          }
        }

        else
        {
LABEL_59:

          v74 = MEMORY[0x1E696AEC0];
          v75 = PLVTypeToPLSQLiteType;
          v76 = [obja objectForKeyedSubscript:v66];
          v77 = [v75 objectForKeyedSubscript:v76];
          v67 = [v74 stringWithFormat:@"ALTER TABLE '%@' ADD COLUMN '%@' %@", tableCopy, v66, v77];;

          connection13 = [(PLCoreStorage *)selfCopy connection];
          v79 = [connection13 performQuery:v67];
        }
      }

      v64 = [allKeys countByEnumeratingWithState:&v172 objects:v210 count:16];
    }

    while (v64);
  }

  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  v80 = [PLEntryDefinition allIndexKeysForEntryKey:tableCopy];
  v81 = [v80 countByEnumeratingWithState:&v164 objects:v208 count:16];
  if (v81)
  {
    v82 = v81;
    v83 = *v165;
    do
    {
      for (n = 0; n != v82; ++n)
      {
        if (*v165 != v83)
        {
          objc_enumerationMutation(v80);
        }

        v85 = *(*(&v164 + 1) + 8 * n);
        connection14 = [(PLCoreStorage *)selfCopy connection];
        [connection14 createIndexOnTable:tableCopy forColumn:v85];
      }

      v82 = [v80 countByEnumeratingWithState:&v164 objects:v208 count:16];
    }

    while (v82);
  }

  connection15 = [(PLCoreStorage *)selfCopy connection];
  [connection15 setSchemaVersion:tableCopy forTableName:version];

  tableCopy = 0;
  connection10 = v162;
LABEL_113:

LABEL_114:
}

BOOL __74__PLCoreStorage_handleSchemaMismatchForTable_expectedVersion_schemaMatch___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  handleSchemaMismatchForTable_expectedVersion_schemaMatch__classDebugEnabled = result;
  return result;
}

BOOL __74__PLCoreStorage_handleSchemaMismatchForTable_expectedVersion_schemaMatch___block_invoke_561(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  handleSchemaMismatchForTable_expectedVersion_schemaMatch__classDebugEnabled_560 = result;
  return result;
}

- (signed)verifySchemaVersionOfTable:(id)table matchesExpectedVersion:(double)version
{
  tableCopy = table;
  connection = [(PLCoreStorage *)self connection];
  v8 = [connection tableExistsForTableName:tableCopy];

  if (v8)
  {
    connection2 = [(PLCoreStorage *)self connection];
    [connection2 schemaVersionForTable:tableCopy];
    v11 = v10;

    if (v11 == 0.0)
    {
      v12 = -2;
    }

    else if (v11 == version)
    {
      v12 = 0;
    }

    else if (v11 >= version)
    {
      if (v11 <= version)
      {
        v12 = 3;
      }

      else
      {
        v12 = 1;
      }
    }

    else if (version == v11)
    {
      v12 = -1;
    }

    else
    {
      v12 = -2;
    }
  }

  else
  {
    v12 = -3;
    v11 = 0.0;
  }

  if (+[PLDefaults debugEnabled])
  {
    v13 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __67__PLCoreStorage_verifySchemaVersionOfTable_matchesExpectedVersion___block_invoke;
    v25 = &unk_1E8519630;
    v26 = @"schemaMismatch";
    v27 = v13;
    if (verifySchemaVersionOfTable_matchesExpectedVersion__defaultOnce != -1)
    {
      dispatch_once(&verifySchemaVersionOfTable_matchesExpectedVersion__defaultOnce, &block);
    }

    v14 = verifySchemaVersionOfTable_matchesExpectedVersion__classDebugEnabled;

    if (v14 == 1)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ expectedVersion=%f schemaVersion=%f schemaMatch=%d", tableCopy, *&version, *&v11, v12, block, v23, v24, v25];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      lastPathComponent = [v16 lastPathComponent];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage verifySchemaVersionOfTable:matchesExpectedVersion:]"];
      [PLCoreStorage logMessage:v15 fromFile:lastPathComponent fromFunction:v18 fromLineNumber:1253];

      v20 = PLLogCommon(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  return v12;
}

BOOL __67__PLCoreStorage_verifySchemaVersionOfTable_matchesExpectedVersion___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  verifySchemaVersionOfTable_matchesExpectedVersion__classDebugEnabled = result;
  return result;
}

- (void)setupTableName:(id)name withEntryKeyConfig:(id)config withKeyOrder:(id)order isDynamic:(BOOL)dynamic withShouldIndexFKID:(BOOL)d
{
  dCopy = d;
  dynamicCopy = dynamic;
  v94 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  configCopy = config;
  orderCopy = order;
  v15 = objc_opt_new();
  array = [MEMORY[0x1E695DF70] array];
  v17 = array;
  v71 = configCopy;
  selfCopy = self;
  v67 = nameCopy;
  v65 = array;
  if (dynamicCopy)
  {
    if (dCopy)
    {
      [array addObject:@"FK_ID"];
    }

    [v15 addObject:&unk_1F540CA40];
    v18 = &unk_1F540CA68;
  }

  else
  {
    v20 = [PLEntryDefinition allIndexKeysForEntryKey:nameCopy];
    [v17 addObjectsFromArray:v20];

    [v17 removeObject:@"FK_ID"];
    [v15 addObject:&unk_1F540CA40];
    if ([PLEntryDefinition isAggregateForEntryKey:nameCopy])
    {
      [v15 addObject:&unk_1F540CA90];
      [v15 addObject:&unk_1F540CAB8];
      [v17 addObject:@"timestamp"];
      [v17 addObject:@"timeInterval"];
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v21 = [PLEntryDefinition allAggregatePrimaryKeysForEntryKey:nameCopy];
      v22 = [v21 countByEnumeratingWithState:&v83 objects:v93 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v84;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v84 != v24)
            {
              objc_enumerationMutation(v21);
            }

            [v17 addObject:*(*(&v83 + 1) + 8 * i)];
          }

          v23 = [v21 countByEnumeratingWithState:&v83 objects:v93 count:16];
        }

        while (v23);
      }

      v19 = v15;

      configCopy = v71;
      goto LABEL_15;
    }

    if ([PLEntryDefinition overridesEntryDateForEntryKey:nameCopy])
    {
      [v15 addObject:&unk_1F540CAE0];
      v18 = &unk_1F540CB08;
    }

    else
    {
      v18 = &unk_1F540CB30;
    }
  }

  v19 = v15;
  [v15 addObject:v18];
LABEL_15:
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = orderCopy;
  v70 = [obj countByEnumeratingWithState:&v79 objects:v92 count:16];
  if (!v70)
  {
    goto LABEL_33;
  }

  v69 = *v80;
  do
  {
    for (j = 0; j != v70; ++j)
    {
      if (*v80 != v69)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(*(&v79 + 1) + 8 * j);
      v28 = [configCopy objectForKey:v27];
      v29 = [v28 objectForKeyedSubscript:@"Type"];
      if ([v29 shortValue])
      {

LABEL_22:
        v88[0] = @"column-name";
        v88[1] = @"type";
        v89[0] = v27;
        v30 = PLVTypeToPLSQLiteType;
        v31 = [configCopy objectForKey:v27];
        v32 = [v31 objectForKeyedSubscript:@"Type"];
        v33 = [v30 objectForKeyedSubscript:v32];
        v89[1] = v33;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:v88 count:2];
        [v19 addObject:v34];

        goto LABEL_31;
      }

      v35 = [configCopy objectForKey:v27];
      v36 = [v35 objectForKeyedSubscript:@"TypeArraySize"];

      if (!v36)
      {
        goto LABEL_22;
      }

      v37 = [configCopy objectForKey:v27];
      v38 = [v37 objectForKeyedSubscript:@"TypeArrayValue"];

      v39 = PLVTypeToPLSQLiteType;
      if (v38)
      {
        v40 = [configCopy objectForKey:v27];
        v41 = [v40 objectForKeyedSubscript:@"TypeArrayValue"];
        v31 = [v39 objectForKeyedSubscript:v41];
      }

      else
      {
        v31 = [PLVTypeToPLSQLiteType objectForKeyedSubscript:&unk_1F5405C10];
      }

      for (k = 0; ; k = (k + 1))
      {
        v43 = [v71 objectForKey:v27];
        v44 = [v43 objectForKeyedSubscript:@"TypeArraySize"];
        intValue = [v44 intValue];

        if (k >= intValue)
        {
          break;
        }

        v90[0] = @"column-name";
        v46 = [v27 stringByAppendingFormat:@"_%d", k];
        v90[1] = @"type";
        v91[0] = v46;
        v91[1] = v31;
        v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v91 forKeys:v90 count:2];
        [v19 addObject:v47];
      }

      configCopy = v71;
LABEL_31:
    }

    v70 = [obj countByEnumeratingWithState:&v79 objects:v92 count:16];
  }

  while (v70);
LABEL_33:

  v48 = v19;
  if (+[PLDefaults debugEnabled])
  {
    v49 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __94__PLCoreStorage_setupTableName_withEntryKeyConfig_withKeyOrder_isDynamic_withShouldIndexFKID___block_invoke;
    block[3] = &unk_1E8519630;
    v77 = @"setupTable";
    v78 = v49;
    if (setupTableName_withEntryKeyConfig_withKeyOrder_isDynamic_withShouldIndexFKID__defaultOnce != -1)
    {
      dispatch_once(&setupTableName_withEntryKeyConfig_withKeyOrder_isDynamic_withShouldIndexFKID__defaultOnce, block);
    }

    v50 = setupTableName_withEntryKeyConfig_withKeyOrder_isDynamic_withShouldIndexFKID__classDebugEnabled;

    if (v50 == 1)
    {
      v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"tableName=%@ tableSchemaColumns=%@", v67, v19];
      v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      lastPathComponent = [v52 lastPathComponent];
      v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage setupTableName:withEntryKeyConfig:withKeyOrder:isDynamic:withShouldIndexFKID:]"];
      [PLCoreStorage logMessage:v51 fromFile:lastPathComponent fromFunction:v54 fromLineNumber:1305];

      v56 = PLLogCommon(v55);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      configCopy = v71;
    }
  }

  connection = [(PLCoreStorage *)selfCopy connection];
  [connection createTableName:v67 withColumns:v19];

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v58 = v65;
  v59 = [v58 countByEnumeratingWithState:&v72 objects:v87 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v73;
    do
    {
      for (m = 0; m != v60; ++m)
      {
        if (*v73 != v61)
        {
          objc_enumerationMutation(v58);
        }

        v63 = *(*(&v72 + 1) + 8 * m);
        connection2 = [(PLCoreStorage *)selfCopy connection];
        [connection2 createIndexOnTable:v67 forColumn:v63];
      }

      v60 = [v58 countByEnumeratingWithState:&v72 objects:v87 count:16];
    }

    while (v60);
  }
}

BOOL __94__PLCoreStorage_setupTableName_withEntryKeyConfig_withKeyOrder_isDynamic_withShouldIndexFKID___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  setupTableName_withEntryKeyConfig_withKeyOrder_isDynamic_withShouldIndexFKID__classDebugEnabled = result;
  return result;
}

- (void)setupArrayForTableName:(id)name forColumnNamed:(id)named withValueType:(signed __int16)type withShouldIndexFKID:(BOOL)d
{
  dCopy = d;
  typeCopy = type;
  v21[2] = *MEMORY[0x1E69E9840];
  namedCopy = named;
  nameCopy = name;
  v12 = objc_opt_new();
  namedCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_Array_%@", nameCopy, namedCopy];

  [v12 addObject:&unk_1F540CB58];
  [v12 addObject:&unk_1F540CB80];
  v20[0] = @"column-name";
  v20[1] = @"type";
  v21[0] = @"value";
  v14 = PLVTypeToPLSQLiteType;
  v15 = [MEMORY[0x1E696AD98] numberWithShort:typeCopy];
  v16 = [v14 objectForKeyedSubscript:v15];
  v21[1] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  [v12 addObject:v17];

  connection = [(PLCoreStorage *)self connection];
  [connection createTableName:namedCopy withColumns:v12];

  if (dCopy)
  {
    connection2 = [(PLCoreStorage *)self connection];
    [connection2 createIndexOnTable:namedCopy forColumn:@"FK_ID"];
  }
}

- (void)setupCompositeIndexOnTable:(id)table withColumns:(id)columns
{
  columnsCopy = columns;
  tableCopy = table;
  connection = [(PLCoreStorage *)self connection];
  [connection createCompositeIndexOnTable:tableCopy forColumns:columnsCopy];
}

- (void)setupStorageForEntryKey:(id)key
{
  v52 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
  {
    v3 = [PLEntryDefinition definitionForEntryKey:keyCopy];
    v43 = [PLEntryDefinition keyConfigsForEntryKey:keyCopy];
    if (v43)
    {
      [PLEntryDefinition schemaVersionForEntryKey:keyCopy];
      v5 = v4;
      v6 = [(PLCoreStorage *)self verifySchemaVersionOfTable:keyCopy matchesExpectedVersion:?];
      if (v5 > 0.0 && v6 == -3)
      {
        if (+[PLDefaults debugEnabled])
        {
          v8 = objc_opt_class();
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __41__PLCoreStorage_setupStorageForEntryKey___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v8;
          if (setupStorageForEntryKey__defaultOnce != -1)
          {
            dispatch_once(&setupStorageForEntryKey__defaultOnce, block);
          }

          if (setupStorageForEntryKey__classDebugEnabled == 1)
          {
            keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"No table for %@", keyCopy];
            v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
            lastPathComponent = [v10 lastPathComponent];
            v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage setupStorageForEntryKey:]"];
            [PLCoreStorage logMessage:keyCopy fromFile:lastPathComponent fromFunction:v12 fromLineNumber:1347];

            v14 = PLLogCommon(v13);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
            }
          }
        }

        connection = [(PLCoreStorage *)self connection];
        [connection setSchemaVersion:keyCopy forTableName:v5];

        v16 = [PLEntryDefinition sortedKeysFromEntryDefinition:v3];
        [(PLCoreStorage *)self setupTableName:keyCopy withEntryKeyConfig:v43 withKeyOrder:v16 isDynamic:0 withShouldIndexFKID:0];
        if ([PLEntryDefinition hasArrayKeysForEntryKey:keyCopy])
        {
          v41 = v16;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v17 = v3;
          obj = [PLEntryDefinition arrayKeysForEntryDefinition:v3];
          v18 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v47;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v47 != v20)
                {
                  objc_enumerationMutation(obj);
                }

                v22 = *(*(&v46 + 1) + 8 * i);
                v23 = [v43 objectForKeyedSubscript:v22];
                v24 = [v23 objectForKeyedSubscript:@"TypeArrayValue"];
                shortValue = [v24 shortValue];

                v26 = [PLEntryDefinition allIndexKeysForEntryDefinition:v17];
                v27 = [v26 containsObject:@"FK_ID"];

                [(PLCoreStorage *)self setupArrayForTableName:keyCopy forColumnNamed:v22 withValueType:shortValue withShouldIndexFKID:v27];
              }

              v19 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
            }

            while (v19);
          }

          v3 = v17;
          v16 = v41;
        }

        if ([PLEntryDefinition hasDynamicKeysForEntryDefinition:v3])
        {
          v28 = [PLEntryKey dynamicEntryKeyForEntryKey:keyCopy];
          v29 = [PLEntryDefinition dynamicKeyConfigsForEntryDefinition:v3];
          v30 = [v29 mutableCopy];

          v31 = [v30 objectForKeyedSubscript:@"key"];

          if (v31)
          {
            v32 = [v30 objectForKeyedSubscript:@"key"];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v34 = [v30 objectForKeyedSubscript:@"key"];
              [v30 addEntriesFromDictionary:v34];

              [v30 removeObjectForKey:@"key"];
            }
          }

          else
          {
            v35 = +[PLEntryDefinition sharedInstance];
            commonTypeDict_StringFormat = [v35 commonTypeDict_StringFormat];
            [v30 setObject:commonTypeDict_StringFormat forKeyedSubscript:@"key"];
          }

          allKeys = [v30 allKeys];
          v38 = [allKeys sortedArrayUsingSelector:sel_compare_];

          v39 = [PLEntryDefinition allIndexKeysForEntryDefinition:v3];
          v40 = [v39 containsObject:@"FK_ID"];

          [(PLCoreStorage *)self setupTableName:v28 withEntryKeyConfig:v30 withKeyOrder:v38 isDynamic:1 withShouldIndexFKID:v40];
        }
      }

      else if (v6)
      {
        [(PLCoreStorage *)self handleSchemaMismatchForTable:keyCopy expectedVersion:v6 schemaMatch:v5];
      }
    }
  }
}

BOOL __41__PLCoreStorage_setupStorageForEntryKey___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  setupStorageForEntryKey__classDebugEnabled = result;
  return result;
}

- (void)setupStorageForOperator:(id)operator
{
  v16 = *MEMORY[0x1E69E9840];
  operatorCopy = operator;
  if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd](PLUtilities, "isPerfPowerMetricd") && !+[PLUtilities isPowerlogHelperd])
  {
    v5 = [PLEntryKey entryKeysForOperator:operatorCopy];
    if ([v5 count])
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = [v5 copy];
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          v10 = 0;
          do
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [(PLCoreStorage *)self setupStorageForEntryKey:*(*(&v11 + 1) + 8 * v10++)];
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }
    }
  }
}

- (void)setupStorageForOperatorName:(id)name
{
  v16 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (!+[PLUtilities isPowerlogHelperd])
  {
    v5 = [PLEntryKey entryKeysForOperatorName:nameCopy];
    if ([v5 count])
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = [v5 copy];
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          v10 = 0;
          do
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [(PLCoreStorage *)self setupStorageForEntryKey:*(*(&v11 + 1) + 8 * v10++)];
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }
    }
  }
}

- (void)setupStorageForOperatorClass:(Class)class
{
  v16 = *MEMORY[0x1E69E9840];
  if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
  {
    v5 = [PLEntryKey entryKeysForOperatorClass:class];
    if ([v5 count])
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = [v5 copy];
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          v10 = 0;
          do
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [(PLCoreStorage *)self setupStorageForEntryKey:*(*(&v11 + 1) + 8 * v10++)];
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }
    }
  }
}

- (void)flushCachesWithReason:(id)reason
{
  v61[2] = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"Cache Size"] && (+[PLStorageCache sharedStorageCache](PLStorageCache, "sharedStorageCache"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "stagingEntryCacheSize"), v7 = -[PLCoreStorage generalEntryCacheSizeLimit](self, "generalEntryCacheSizeLimit"), v5, v6 <= v7))
  {
    if (+[PLDefaults debugEnabled])
    {
      v40 = objc_opt_class();
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __39__PLCoreStorage_flushCachesWithReason___block_invoke;
      v55[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v55[4] = v40;
      if (flushCachesWithReason__defaultOnce != -1)
      {
        dispatch_once(&flushCachesWithReason__defaultOnce, v55);
      }

      if (flushCachesWithReason__classDebugEnabled == 1)
      {
        v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cache size is fine!"];
        v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
        lastPathComponent = [v41 lastPathComponent];
        v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage flushCachesWithReason:]"];
        [PLCoreStorage logMessage:v34 fromFile:lastPathComponent fromFunction:v43 fromLineNumber:1435];

        v39 = PLLogCommon(v44);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

        goto LABEL_20;
      }
    }
  }

  else
  {
    if (+[PLPlatform isiOS](PLPlatform, "isiOS") && +[PLPlatform internalBuild])
    {
      v61[0] = reasonCopy;
      v60[0] = @"Reason";
      v60[1] = @"Size";
      v8 = MEMORY[0x1E696AD98];
      v9 = +[PLStorageCache sharedStorageCache];
      v10 = [v8 numberWithLong:{objc_msgSend(v9, "stagingEntryCacheSize")}];
      v61[1] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:2];
      v12 = [PLStorageOperator eventPointCacheFlushWithPayload:v11];

      v13 = +[PLStorageCache sharedStorageCache];
      [v13 addToStagingEntryCache:v12];
    }

    v14 = [reasonCopy length];
    if (v14)
    {
      v50 = MEMORY[0x1E69E9820];
      v51 = 3221225472;
      v52 = __39__PLCoreStorage_flushCachesWithReason___block_invoke_667;
      v53 = &unk_1E8519A88;
      v54 = reasonCopy;
      AnalyticsSendEventLazy();
    }

    v15 = PLLogCommon(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v57 = reasonCopy;
      v58 = 2080;
      label = dispatch_queue_get_label(0);
      _os_log_impl(&dword_1D8611000, v15, OS_LOG_TYPE_DEFAULT, "Flush cache start with Reason: %@ on Queue:%s", buf, 0x16u);
    }

    if (([reasonCopy isEqualToString:@"Timer"] & 1) == 0)
    {
      v16 = MEMORY[0x1E695DF00];
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __39__PLCoreStorage_flushCachesWithReason___block_invoke_669;
      v47[3] = &unk_1E85195E0;
      v48 = @"flushCachesInterval";
      v49 = 900;
      if (flushCachesWithReason__defaultOnce_668 != -1)
      {
        dispatch_once(&flushCachesWithReason__defaultOnce_668, v47);
      }

      v17 = flushCachesWithReason__objectForKey;

      v18 = [v16 dateWithTimeIntervalSinceNow:v17];
      flushCachesTimer = [(PLCoreStorage *)self flushCachesTimer];
      [flushCachesTimer setFireDate:v18];
    }

    if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
    {
      v20 = os_transaction_create();
      v21 = objc_autoreleasePoolPush();
      connection = [(PLCoreStorage *)self connection];
      [connection beginTransaction];

      v23 = +[PLStorageCache sharedStorageCache];
      [v23 flushStagingEntryCacheToDatabase];

      connection2 = [(PLCoreStorage *)self connection];
      [connection2 endTransaction];

      objc_autoreleasePoolPop(v21);
      v25 = objc_autoreleasePoolPush();
      connection3 = [(PLCoreStorage *)self connection];
      [connection3 beginTransaction];

      v27 = +[PLStorageCache sharedStorageCache];
      [v27 flushStagingAggregateEntryCacheToDatabase];

      connection4 = [(PLCoreStorage *)self connection];
      [connection4 endTransaction];

      objc_autoreleasePoolPop(v25);
      v29 = dispatch_time(0, 60000000000);
      v30 = +[PLUtilities transactionWorkQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __39__PLCoreStorage_flushCachesWithReason___block_invoke_2;
      block[3] = &unk_1E85190B8;
      v46 = v20;
      v31 = v20;
      dispatch_after(v29, v30, block);

      v32 = +[PLStorageCache sharedStorageCache];
      v33 = [MEMORY[0x1E695DF00] monotonicDateWithTimeIntervalSinceNow:-3600.0];
      [v32 lastEntryCachePruneToDate:v33];
    }

    if (+[PLDefaults debugEnabled])
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Flush cache done with Reason: %@ on Queue:%s", reasonCopy, dispatch_queue_get_label(0)];
      v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      lastPathComponent2 = [v35 lastPathComponent];
      v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage flushCachesWithReason:]"];
      [PLCoreStorage logMessage:v34 fromFile:lastPathComponent2 fromFunction:v37 fromLineNumber:1482];

      v39 = PLLogCommon(v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

LABEL_20:
    }
  }
}

BOOL __39__PLCoreStorage_flushCachesWithReason___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  flushCachesWithReason__classDebugEnabled = result;
  return result;
}

id __39__PLCoreStorage_flushCachesWithReason___block_invoke_667(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4 = @"Reason";
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

int64_t __39__PLCoreStorage_flushCachesWithReason___block_invoke_669(uint64_t a1)
{
  result = [PLDefaults longForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  flushCachesWithReason__objectForKey = result;
  return result;
}

- (void)blockingFlushCachesWithReason:(id)reason timeout:(int)timeout
{
  v4 = *&timeout;
  v74 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if (+[PLDefaults debugEnabled])
  {
    v7 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__PLCoreStorage_blockingFlushCachesWithReason_timeout___block_invoke;
    block[3] = &unk_1E8519630;
    v70 = @"blockingFlush";
    v71 = v7;
    if (blockingFlushCachesWithReason_timeout__defaultOnce != -1)
    {
      dispatch_once(&blockingFlushCachesWithReason_timeout__defaultOnce, block);
    }

    v8 = blockingFlushCachesWithReason_timeout__classDebugEnabled;

    if (v8 == 1)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"begin"];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage blockingFlushCachesWithReason:timeout:]"];
      [PLCoreStorage logMessage:v9 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:1490];

      v14 = PLLogCommon(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v57 = reasonCopy;
  array = [MEMORY[0x1E695DF70] array];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v16 = +[PowerlogCore sharedCore];
  agents = [v16 agents];
  allOperators = [agents allOperators];

  v19 = [allOperators countByEnumeratingWithState:&v65 objects:v73 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v66;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v66 != v21)
        {
          objc_enumerationMutation(allOperators);
        }

        className = [*(*(&v65 + 1) + 8 * i) className];
        [array addObject:className];

        v24 = [PLCoreStorage storageQueueNameForClass:objc_opt_class()];
        [array addObject:v24];
      }

      v20 = [allOperators countByEnumeratingWithState:&v65 objects:v73 count:16];
    }

    while (v20);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v25 = +[PowerlogCore sharedCore];
  services = [v25 services];
  allOperators2 = [services allOperators];

  v28 = [allOperators2 countByEnumeratingWithState:&v61 objects:v72 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v62;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v62 != v30)
        {
          objc_enumerationMutation(allOperators2);
        }

        className2 = [*(*(&v61 + 1) + 8 * j) className];
        [array addObject:className2];

        v33 = [PLCoreStorage storageQueueNameForClass:objc_opt_class()];
        [array addObject:v33];
      }

      v29 = [allOperators2 countByEnumeratingWithState:&v61 objects:v72 count:16];
    }

    while (v29);
  }

  [(PLCoreStorage *)self blockingFlushQueues:array withTimeout:v4];
  [array removeAllObjects];
  [array addObject:@"PLTimeReferenceBaseband"];
  [array addObject:@"PLTimeReferenceSystem"];
  [array addObject:@"PLTimeReferenceKernel"];
  [array addObject:@"PLTimeManager"];
  if (!+[PLPlatform isHomePod])
  {
    v34 = +[PowerlogCore sharedCore];
    accounting = [v34 accounting];

    if (accounting)
    {
      v36 = +[PowerlogCore sharedCore];
      accounting2 = [v36 accounting];
      className3 = [accounting2 className];
      [array addObject:className3];

      v39 = +[PowerlogCore sharedCore];
      accounting3 = [v39 accounting];
      v41 = [PLCoreStorage storageQueueNameForClass:objc_opt_class()];
      [array addObject:v41];
    }
  }

  [(PLCoreStorage *)self blockingFlushQueues:array withTimeout:v4];
  [array removeAllObjects];
  v42 = objc_opt_class();
  v43 = NSStringFromClass(v42);
  [array addObject:v43];

  [(PLCoreStorage *)self blockingFlushQueues:array withTimeout:v4];
  [array removeAllObjects];
  v44 = objc_opt_class();
  v45 = NSStringFromClass(v44);
  [array addObject:v45];

  [(PLCoreStorage *)self blockingFlushQueues:array withTimeout:v4];
  [array removeAllObjects];
  v46 = [PLCoreStorage storageQueueNameForClass:objc_opt_class()];
  [array addObject:v46];

  [(PLCoreStorage *)self blockingFlushQueues:array withTimeout:v4];
  [array removeAllObjects];
  [(PLCoreStorage *)self flushCachesWithReason:v57];
  v47 = objc_opt_class();
  v48 = NSStringFromClass(v47);
  [array addObject:v48];

  [(PLCoreStorage *)self blockingFlushQueues:array withTimeout:v4];
  [array removeAllObjects];
  if (+[PLDefaults debugEnabled])
  {
    v49 = objc_opt_class();
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __55__PLCoreStorage_blockingFlushCachesWithReason_timeout___block_invoke_694;
    v58[3] = &unk_1E8519630;
    v59 = @"blockingFlush";
    v60 = v49;
    if (blockingFlushCachesWithReason_timeout__defaultOnce_692 != -1)
    {
      dispatch_once(&blockingFlushCachesWithReason_timeout__defaultOnce_692, v58);
    }

    v50 = blockingFlushCachesWithReason_timeout__classDebugEnabled_693;

    if (v50 == 1)
    {
      v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"end"];
      v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      lastPathComponent2 = [v52 lastPathComponent];
      v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage blockingFlushCachesWithReason:timeout:]"];
      [PLCoreStorage logMessage:v51 fromFile:lastPathComponent2 fromFunction:v54 fromLineNumber:1553];

      v56 = PLLogCommon(v55);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }
}

BOOL __55__PLCoreStorage_blockingFlushCachesWithReason_timeout___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  blockingFlushCachesWithReason_timeout__classDebugEnabled = result;
  return result;
}

BOOL __55__PLCoreStorage_blockingFlushCachesWithReason_timeout___block_invoke_694(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  blockingFlushCachesWithReason_timeout__classDebugEnabled_693 = result;
  return result;
}

- (void)blockingFlushQueues:(id)queues withTimeout:(int)timeout
{
  v68 = *MEMORY[0x1E69E9840];
  queuesCopy = queues;
  v6 = &unk_1E8519630;
  v7 = @"blockingFlush";
  if (+[PLDefaults debugEnabled])
  {
    v8 = objc_opt_class();
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __49__PLCoreStorage_blockingFlushQueues_withTimeout___block_invoke;
    v62[3] = &unk_1E8519630;
    v63 = @"blockingFlush";
    v64 = v8;
    if (blockingFlushQueues_withTimeout__defaultOnce != -1)
    {
      dispatch_once(&blockingFlushQueues_withTimeout__defaultOnce, v62);
    }

    v9 = blockingFlushQueues_withTimeout__classDebugEnabled;

    if (v9 == 1)
    {
      queuesCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"begin for queueNames=%@", queuesCopy];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage blockingFlushQueues:withTimeout:]"];
      [PLCoreStorage logMessage:queuesCopy fromFile:lastPathComponent fromFunction:v13 fromLineNumber:1557];

      v15 = PLLogCommon(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v16 = dispatch_semaphore_create(0);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v17 = queuesCopy;
  v45 = v17;
  v47 = [v17 countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (v47)
  {
    v46 = *v59;
    v44 = v16;
    do
    {
      v18 = 0;
      do
      {
        if (*v59 != v46)
        {
          objc_enumerationMutation(v17);
        }

        v19 = *(*(&v58 + 1) + 8 * v18);
        if (+[PLDefaults debugEnabled])
        {
          v20 = objc_opt_class();
          v55[0] = MEMORY[0x1E69E9820];
          v55[1] = 3221225472;
          v55[2] = __49__PLCoreStorage_blockingFlushQueues_withTimeout___block_invoke_703;
          v55[3] = v6;
          v56 = v7;
          v57 = v20;
          if (blockingFlushQueues_withTimeout__defaultOnce_701 != -1)
          {
            dispatch_once(&blockingFlushQueues_withTimeout__defaultOnce_701, v55);
          }

          v21 = blockingFlushQueues_withTimeout__classDebugEnabled_702;

          if (v21 == 1)
          {
            v22 = v6;
            v23 = v7;
            selfCopy = self;
            v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"waiting: %@", v19];
            v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
            lastPathComponent2 = [v26 lastPathComponent];
            v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage blockingFlushQueues:withTimeout:]"];
            [PLCoreStorage logMessage:v25 fromFile:lastPathComponent2 fromFunction:v28 fromLineNumber:1561];

            v30 = PLLogCommon(v29);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v66 = v25;
              _os_log_debug_impl(&dword_1D8611000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            self = selfCopy;
            v7 = v23;
            v6 = v22;
            v16 = v44;
            v17 = v45;
          }
        }

        v31 = [PLUtilities workQueueForKey:v19];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __49__PLCoreStorage_blockingFlushQueues_withTimeout___block_invoke_707;
        block[3] = &unk_1E8519AF8;
        v52 = v16;
        selfCopy2 = self;
        v54 = v19;
        dispatch_async(v31, block);

        ++v18;
      }

      while (v47 != v18);
      v47 = [v17 countByEnumeratingWithState:&v58 objects:v67 count:16];
    }

    while (v47);
  }

  if ([v17 count])
  {
    v32 = 0;
    do
    {
      v33 = dispatch_time(0, 1000000000 * timeout);
      dispatch_semaphore_wait(v16, v33);
      ++v32;
    }

    while ([v17 count] > v32);
  }

  if (+[PLDefaults debugEnabled])
  {
    v34 = objc_opt_class();
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __49__PLCoreStorage_blockingFlushQueues_withTimeout___block_invoke_713;
    v48[3] = v6;
    v49 = v7;
    v50 = v34;
    if (blockingFlushQueues_withTimeout__defaultOnce_711 != -1)
    {
      dispatch_once(&blockingFlushQueues_withTimeout__defaultOnce_711, v48);
    }

    v35 = blockingFlushQueues_withTimeout__classDebugEnabled_712;

    if (v35 == 1)
    {
      v36 = v16;
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"end for queueNames=%@", v17];
      v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      lastPathComponent3 = [v38 lastPathComponent];
      v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage blockingFlushQueues:withTimeout:]"];
      [PLCoreStorage logMessage:v37 fromFile:lastPathComponent3 fromFunction:v40 fromLineNumber:1575];

      v42 = PLLogCommon(v41);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v16 = v36;
      v17 = v45;
    }
  }
}

BOOL __49__PLCoreStorage_blockingFlushQueues_withTimeout___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  blockingFlushQueues_withTimeout__classDebugEnabled = result;
  return result;
}

BOOL __49__PLCoreStorage_blockingFlushQueues_withTimeout___block_invoke_703(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  blockingFlushQueues_withTimeout__classDebugEnabled_702 = result;
  return result;
}

void __49__PLCoreStorage_blockingFlushQueues_withTimeout___block_invoke_707(uint64_t a1)
{
  dispatch_semaphore_signal(*(a1 + 32));
  if (+[PLDefaults debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__PLCoreStorage_blockingFlushQueues_withTimeout___block_invoke_2;
    block[3] = &unk_1E8519630;
    v11 = @"blockingFlush";
    v12 = v2;
    if (kPLTaskingEndNotification_block_invoke_5_defaultOnce != -1)
    {
      dispatch_once(&kPLTaskingEndNotification_block_invoke_5_defaultOnce, block);
    }

    v3 = kPLTaskingEndNotification_block_invoke_5_classDebugEnabled;

    if (v3 == 1)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"finished: %@", *(a1 + 48)];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage blockingFlushQueues:withTimeout:]_block_invoke"];
      [PLCoreStorage logMessage:v4 fromFile:v6 fromFunction:v7 fromLineNumber:1566];

      v9 = PLLogCommon(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }
}

BOOL __49__PLCoreStorage_blockingFlushQueues_withTimeout___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPLTaskingEndNotification_block_invoke_5_classDebugEnabled = result;
  return result;
}

BOOL __49__PLCoreStorage_blockingFlushQueues_withTimeout___block_invoke_713(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  blockingFlushQueues_withTimeout__classDebugEnabled_712 = result;
  return result;
}

- (BOOL)flushCachesIfRequiredForEntryKey:(id)key
{
  keyCopy = key;
  v5 = +[PLStorageCache sharedStorageCache];
  v6 = [v5 stagingEntryCacheSizeForEntryKey:keyCopy];

  if (v6 >= 1)
  {
    if (+[PLDefaults debugEnabled])
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cache dump for query entryKey=%@ cacheSize=%ld", keyCopy, v6];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage flushCachesIfRequiredForEntryKey:]"];
      [PLCoreStorage logMessage:v7 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:1582];

      v12 = PLLogCommon(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }

    keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Query EntryKey %@", keyCopy];
    [(PLCoreStorage *)self flushCachesWithReason:keyCopy];
  }

  return v6 > 0;
}

- (void)dispatchAsyncForEntryKey:(id)key withBlock:(id)block
{
  blockCopy = block;
  keyCopy = key;
  v7 = [objc_opt_class() storageQueueNameForEntryKey:keyCopy];

  v8 = [PLUtilities workQueueForKey:v7];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PLCoreStorage_dispatchAsyncForEntryKey_withBlock___block_invoke;
  block[3] = &unk_1E8519B20;
  v11 = blockCopy;
  v9 = blockCopy;
  dispatch_async(v8, block);
}

void __52__PLCoreStorage_dispatchAsyncForEntryKey_withBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (void)dispatchSyncForEntryKey:(id)key withBlock:(id)block
{
  blockCopy = block;
  keyCopy = key;
  v7 = [objc_opt_class() storageQueueNameForEntryKey:keyCopy];

  v8 = [PLUtilities workQueueForKey:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__PLCoreStorage_dispatchSyncForEntryKey_withBlock___block_invoke;
  v10[3] = &unk_1E8519B20;
  v11 = blockCopy;
  v9 = blockCopy;
  [PLUtilities dispatchSyncIfNotCallerQueue:v8 withBlock:v10];
}

void __51__PLCoreStorage_dispatchSyncForEntryKey_withBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

int64_t __43__PLCoreStorage_generalEntryCacheSizeLimit__block_invoke(uint64_t a1)
{
  result = [PLDefaults longForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  generalEntryCacheSizeLimit_objectForKey = result;
  return result;
}

- (void)writeEntries:(id)entries withCompletionBlock:(id)block
{
  entriesCopy = entries;
  blockCopy = block;
  if ([entriesCopy count])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__4;
    v23 = __Block_byref_object_dispose__4;
    v24 = entriesCopy;
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = __Block_byref_object_copy__732;
    v17[4] = __Block_byref_object_dispose__733;
    v18 = MEMORY[0x1DA71B0D0](blockCopy);
    v8 = [v20[5] objectAtIndexedSubscript:0];
    entryKey = [v8 entryKey];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __50__PLCoreStorage_writeEntries_withCompletionBlock___block_invoke;
    v16[3] = &unk_1E85195B8;
    v16[4] = self;
    v16[5] = &v19;
    v16[6] = v17;
    [(PLCoreStorage *)self dispatchAsyncForEntryKey:entryKey withBlock:v16];

    _Block_object_dispose(v17, 8);
    _Block_object_dispose(&v19, 8);
  }

  else if (+[PLDefaults debugEnabled])
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"writeEntries: ERROR, no entries to write"];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
    lastPathComponent = [v11 lastPathComponent];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage writeEntries:withCompletionBlock:]"];
    [PLCoreStorage logMessage:v10 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:1621];

    v15 = PLLogCommon(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }
  }
}

uint64_t __50__PLCoreStorage_writeEntries_withCompletionBlock___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = +[PLStorageCache sharedStorageCache];
        [v8 addToStagingEntryCache:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  [*(a1 + 32) checkCacheSizeForFlush];
  result = *(*(*(a1 + 48) + 8) + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (int64_t)writeEntry:(id)entry
{
  entryCopy = entry;
  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __28__PLCoreStorage_writeEntry___block_invoke;
    v18 = &__block_descriptor_40_e5_v8__0lu32l8;
    v19 = v5;
    if (writeEntry__defaultOnce != -1)
    {
      dispatch_once(&writeEntry__defaultOnce, &block);
    }

    if (writeEntry__classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"entry=%@", entryCopy, block, v16, v17, v18, v19];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage writeEntry:]"];
      [PLCoreStorage logMessage:v6 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:1641];

      v11 = PLLogCommon(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v12 = +[PLStorageCache sharedStorageCache];
  v13 = [v12 addToStagingEntryCache:entryCopy];

  [(PLCoreStorage *)self checkCacheSizeForFlush];
  return v13;
}

BOOL __28__PLCoreStorage_writeEntry___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  writeEntry__classDebugEnabled = result;
  return result;
}

- (void)writeEntry:(id)entry withCompletionBlock:(id)block
{
  entryCopy = entry;
  blockCopy = block;
  if (+[PLDefaults debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__PLCoreStorage_writeEntry_withCompletionBlock___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (writeEntry_withCompletionBlock__defaultOnce != -1)
    {
      dispatch_once(&writeEntry_withCompletionBlock__defaultOnce, block);
    }

    if (writeEntry_withCompletionBlock__classDebugEnabled == 1)
    {
      entryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"entry=%@", entryCopy];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage writeEntry:withCompletionBlock:]"];
      [PLCoreStorage logMessage:entryCopy fromFile:lastPathComponent fromFunction:v12 fromLineNumber:1651];

      v14 = PLLogCommon(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  if (entryCopy)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__4;
    v23 = __Block_byref_object_dispose__4;
    v24 = entryCopy;
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = __Block_byref_object_copy__732;
    v17[4] = __Block_byref_object_dispose__733;
    v18 = MEMORY[0x1DA71B0D0](blockCopy);
    entryKey = [v20[5] entryKey];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __48__PLCoreStorage_writeEntry_withCompletionBlock___block_invoke_737;
    v16[3] = &unk_1E8519B48;
    v16[4] = self;
    v16[5] = &v19;
    v16[6] = v17;
    [(PLCoreStorage *)self dispatchAsyncForEntryKey:entryKey withBlock:v16];

    _Block_object_dispose(v17, 8);
    _Block_object_dispose(&v19, 8);
  }
}

BOOL __48__PLCoreStorage_writeEntry_withCompletionBlock___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  writeEntry_withCompletionBlock__classDebugEnabled = result;
  return result;
}

void __48__PLCoreStorage_writeEntry_withCompletionBlock___block_invoke_737(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) writeEntry:*(*(*(a1 + 40) + 8) + 40)];
  v3 = *(*(*(a1 + 48) + 8) + 40);
  if (v3)
  {
    (*(v3 + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

- (int64_t)blockingWriteEntry:(id)entry withCompletionBlock:(id)block
{
  entryCopy = entry;
  blockCopy = block;
  if (entryCopy)
  {
    v8 = [(PLCoreStorage *)self writeEntry:entryCopy];
    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (void)_updateEntry:(id)entry withBlock:(id)block
{
  if (entry)
  {
    blockCopy = block;
    entryCopy = entry;
    v8 = +[PLStorageCache sharedStorageCache];
    [v8 updateStagingEntryCacheWithEntry:entryCopy withBlock:blockCopy];

    [(PLCoreStorage *)self checkCacheSizeForFlush];
  }
}

- (void)updateEntry:(id)entry withBlock:(id)block
{
  entryCopy = entry;
  blockCopy = block;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__4;
  v13[4] = __Block_byref_object_dispose__4;
  v8 = entryCopy;
  v14 = v8;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__732;
  v11[4] = __Block_byref_object_dispose__733;
  v12 = MEMORY[0x1DA71B0D0](blockCopy);
  entryKey = [v8 entryKey];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__PLCoreStorage_updateEntry_withBlock___block_invoke;
  v10[3] = &unk_1E8519B48;
  v10[4] = self;
  v10[5] = v13;
  v10[6] = v11;
  [(PLCoreStorage *)self dispatchAsyncForEntryKey:entryKey withBlock:v10];

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v13, 8);
}

- (void)writeProportionateAggregateEntry:(id)entry withStartDate:(id)date withEndDate:(id)endDate
{
  v104 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  dateCopy = date;
  endDateCopy = endDate;
  [endDateCopy timeIntervalSinceDate:dateCopy];
  if (v11 <= 0.0)
  {
    selfCopy = self;
LABEL_28:
    [(PLCoreStorage *)selfCopy writeAggregateEntry:entryCopy];
    goto LABEL_43;
  }

  v12 = v11;
  entryKey = [entryCopy entryKey];
  v14 = [PLEntryDefinition isAggregateWallClockBucket:entryKey];

  v15 = +[PLTimeManager sharedInstance];
  selfCopy2 = self;
  v16 = v14;
  v17 = [v15 bucketTimeStampForDate:endDateCopy withTimeReference:v14 withBucketInterval:3600];

  v18 = +[PLTimeManager sharedInstance];
  v19 = selfCopy2;
  v20 = [v18 bucketTimeStampForDate:dateCopy withTimeReference:v16 withBucketInterval:3600];

  v89 = entryCopy;
  v84 = dateCopy;
  if (+[PLDefaults debugEnabled])
  {
    v21 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__PLCoreStorage_writeProportionateAggregateEntry_withStartDate_withEndDate___block_invoke;
    block[3] = &unk_1E8519630;
    v101 = @"writeAggregateEntry";
    v102 = v21;
    if (writeProportionateAggregateEntry_withStartDate_withEndDate__defaultOnce != -1)
    {
      dispatch_once(&writeProportionateAggregateEntry_withStartDate_withEndDate__defaultOnce, block);
    }

    v22 = writeProportionateAggregateEntry_withStartDate_withEndDate__classDebugEnabled;

    if (v22 == 1)
    {
      endDateCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Split Entry: startDate: %@, endDate: %@", dateCopy, endDateCopy];
      v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      lastPathComponent = [v24 lastPathComponent];
      v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage writeProportionateAggregateEntry:withStartDate:withEndDate:]"];
      [PLCoreStorage logMessage:endDateCopy fromFile:lastPathComponent fromFunction:v26 fromLineNumber:1717];

      v28 = PLLogCommon(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      entryCopy = v89;
      dateCopy = v84;
      v19 = selfCopy2;
    }
  }

  v29 = v17;
  v30 = v20;
  if (+[PLDefaults debugEnabled])
  {
    v31 = objc_opt_class();
    v97[0] = MEMORY[0x1E69E9820];
    v97[1] = 3221225472;
    v97[2] = __76__PLCoreStorage_writeProportionateAggregateEntry_withStartDate_withEndDate___block_invoke_746;
    v97[3] = &unk_1E8519630;
    v98 = @"writeAggregateEntry";
    v99 = v31;
    if (writeProportionateAggregateEntry_withStartDate_withEndDate__defaultOnce_744 != -1)
    {
      dispatch_once(&writeProportionateAggregateEntry_withStartDate_withEndDate__defaultOnce_744, v97);
    }

    v32 = writeProportionateAggregateEntry_withStartDate_withEndDate__classDebugEnabled_745;

    if (v32 == 1)
    {
      v33 = MEMORY[0x1E696AEC0];
      v34 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v20];
      v35 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v29];
      v36 = [v33 stringWithFormat:@"Split Entry: startHourBoundary: %@, endHourBoundary: %@", v34, v35];

      v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      lastPathComponent2 = [v37 lastPathComponent];
      v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage writeProportionateAggregateEntry:withStartDate:withEndDate:]"];
      [PLCoreStorage logMessage:v36 fromFile:lastPathComponent2 fromFunction:v39 fromLineNumber:1718];

      v41 = PLLogCommon(v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      dateCopy = v84;
      v19 = selfCopy2;
    }
  }

  v42 = ((v29 - v30) / 3600.0);
  if (+[PLDefaults debugEnabled])
  {
    v43 = objc_opt_class();
    v94[0] = MEMORY[0x1E69E9820];
    v94[1] = 3221225472;
    v94[2] = __76__PLCoreStorage_writeProportionateAggregateEntry_withStartDate_withEndDate___block_invoke_752;
    v94[3] = &unk_1E8519630;
    v95 = @"writeAggregateEntry";
    v96 = v43;
    if (writeProportionateAggregateEntry_withStartDate_withEndDate__defaultOnce_750 != -1)
    {
      dispatch_once(&writeProportionateAggregateEntry_withStartDate_withEndDate__defaultOnce_750, v94);
    }

    v44 = writeProportionateAggregateEntry_withStartDate_withEndDate__classDebugEnabled_751;

    if (v44 == 1)
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Split Entry: numberOfIntermediateHourTicks = %d", v42];
      v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      lastPathComponent3 = [v45 lastPathComponent];
      v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage writeProportionateAggregateEntry:withStartDate:withEndDate:]"];
      [PLCoreStorage logMessage:v42 fromFile:lastPathComponent3 fromFunction:v47 fromLineNumber:1720];

      v49 = PLLogCommon(v48);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      dateCopy = v84;
      v19 = selfCopy2;
      LODWORD(v42) = ((v29 - v30) / 3600.0);
    }
  }

  if (!v42)
  {
    selfCopy = v19;
    goto LABEL_28;
  }

  [dateCopy timeIntervalSince1970];
  v51 = v50;
  [endDateCopy timeIntervalSince1970];
  v53 = v52;
  v88 = [entryCopy copy];
  v54 = [entryCopy copy];
  if (v42 == 1)
  {
    v87 = 0;
  }

  else
  {
    v87 = [entryCopy copy];
  }

  v56 = MEMORY[0x1E695DFA8];
  entryDefinition = [entryCopy entryDefinition];
  v58 = [PLEntryDefinition allAggregateKeysForEntryDefinition:entryDefinition];
  v59 = [v56 setWithArray:v58];

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = v59;
  v60 = [obj countByEnumeratingWithState:&v90 objects:v103 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = v53 - v29;
    v63 = (v30 - v51 + 3600.0) / v12;
    v64 = v62 / v12;
    v65 = *v91;
    v66 = 3600.0 / v12;
    do
    {
      for (i = 0; i != v61; ++i)
      {
        if (*v91 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v68 = *(*(&v90 + 1) + 8 * i);
        v69 = MEMORY[0x1E696AD98];
        v70 = [v89 objectForKeyedSubscript:v68];
        [v70 doubleValue];
        v72 = [v69 numberWithDouble:v63 * v71];
        [v88 setObject:v72 forKeyedSubscript:v68];

        v73 = MEMORY[0x1E696AD98];
        v74 = [v89 objectForKeyedSubscript:v68];
        [v74 doubleValue];
        v76 = [v73 numberWithDouble:v64 * v75];
        [v54 setObject:v76 forKeyedSubscript:v68];

        if (v42 != 1)
        {
          v77 = MEMORY[0x1E696AD98];
          v78 = [v89 objectForKeyedSubscript:v68];
          [v78 doubleValue];
          v80 = [v77 numberWithDouble:v66 * v79];
          [v87 setObject:v80 forKeyedSubscript:v68];
        }
      }

      v61 = [obj countByEnumeratingWithState:&v90 objects:v103 count:16];
    }

    while (v61);
  }

  dateCopy = v84;
  [v88 setEntryDate:v84];
  [v54 setEntryDate:endDateCopy];
  [(PLCoreStorage *)selfCopy2 writeAggregateEntry:v88];
  [(PLCoreStorage *)selfCopy2 writeAggregateEntry:v54];
  if (v42 != 1)
  {
    v81 = 1;
    do
    {
      v82 = [v87 copy];
      v83 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v30 + v81 * 3600.0];
      [v82 setEntryDate:v83];

      [(PLCoreStorage *)selfCopy2 writeAggregateEntry:v82];
      ++v81;
    }

    while (v42 != v81);
  }

  entryCopy = v89;
LABEL_43:
}

BOOL __76__PLCoreStorage_writeProportionateAggregateEntry_withStartDate_withEndDate___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  writeProportionateAggregateEntry_withStartDate_withEndDate__classDebugEnabled = result;
  return result;
}

BOOL __76__PLCoreStorage_writeProportionateAggregateEntry_withStartDate_withEndDate___block_invoke_746(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  writeProportionateAggregateEntry_withStartDate_withEndDate__classDebugEnabled_745 = result;
  return result;
}

BOOL __76__PLCoreStorage_writeProportionateAggregateEntry_withStartDate_withEndDate___block_invoke_752(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  writeProportionateAggregateEntry_withStartDate_withEndDate__classDebugEnabled_751 = result;
  return result;
}

- (void)writeAggregateEntry:(id)entry
{
  entryCopy = entry;
  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__PLCoreStorage_writeAggregateEntry___block_invoke;
    block[3] = &unk_1E8519630;
    v19 = @"writeAggregateEntry";
    v20 = v5;
    if (writeAggregateEntry__defaultOnce != -1)
    {
      dispatch_once(&writeAggregateEntry__defaultOnce, block);
    }

    v6 = writeAggregateEntry__classDebugEnabled;

    if (v6 == 1)
    {
      entryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"entry=%@", entryCopy];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage writeAggregateEntry:]"];
      [PLCoreStorage logMessage:entryCopy fromFile:lastPathComponent fromFunction:v10 fromLineNumber:1771];

      v12 = PLLogCommon(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  entryKey = [entryCopy entryKey];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __37__PLCoreStorage_writeAggregateEntry___block_invoke_756;
  v15[3] = &unk_1E8519100;
  v16 = entryCopy;
  selfCopy = self;
  v14 = entryCopy;
  [(PLCoreStorage *)self dispatchAsyncForEntryKey:entryKey withBlock:v15];
}

BOOL __37__PLCoreStorage_writeAggregateEntry___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  writeAggregateEntry__classDebugEnabled = result;
  return result;
}

void __37__PLCoreStorage_writeAggregateEntry___block_invoke_756(uint64_t a1)
{
  v115 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) entryKey];
  v4 = [PLEntryDefinition isAggregateWallClockBucket:v3];

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v5 = [*(a1 + 32) entryDefinition];
  v6 = [PLEntryDefinition aggregateBucketDefinitionsForEntryDefinition:v5];

  obj = v6;
  v79 = [v6 countByEnumeratingWithState:&v106 objects:v114 count:16];
  if (v79)
  {
    v77 = v4;
    v78 = *v107;
    v74 = v92;
    v75 = v103;
    v82 = v2;
    v81 = a1;
    do
    {
      v7 = 0;
      do
      {
        if (*v107 != v78)
        {
          objc_enumerationMutation(obj);
        }

        v80 = v7;
        v8 = *(*(&v106 + 1) + 8 * v7);
        if (+[PLDefaults debugEnabled])
        {
          v9 = objc_opt_class();
          v102[0] = MEMORY[0x1E69E9820];
          v102[1] = 3221225472;
          v103[0] = __37__PLCoreStorage_writeAggregateEntry___block_invoke_2;
          v103[1] = &unk_1E8519630;
          v104 = @"writeAggregateEntry";
          v105 = v9;
          if (kPLTaskingEndNotification_block_invoke_6_defaultOnce != -1)
          {
            dispatch_once(&kPLTaskingEndNotification_block_invoke_6_defaultOnce, v102);
          }

          v10 = kPLTaskingEndNotification_block_invoke_6_classDebugEnabled;

          if (v10 == 1)
          {
            v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"bucketIntervalNumber=%@", v8, v74, v75];
            v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
            v13 = [v12 lastPathComponent];
            v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage writeAggregateEntry:]_block_invoke"];
            [PLCoreStorage logMessage:v11 fromFile:v13 fromFunction:v14 fromLineNumber:1779];

            v16 = PLLogCommon(v15);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v113 = v11;
              _os_log_debug_impl(&dword_1D8611000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        [v8 doubleValue];
        v18 = v17;
        v19 = +[PLTimeManager sharedInstance];
        v20 = [*(a1 + 32) entryDate];
        v21 = [v19 bucketTimeStampForDate:v20 withTimeReference:v77 withBucketInterval:v18];

        v22 = [MEMORY[0x1E696AD98] numberWithDouble:v21];
        [v2 setObject:v22 forKeyedSubscript:@"timestamp"];

        v23 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
        [v2 setObject:v23 forKeyedSubscript:@"timeInterval"];

        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v24 = [*(a1 + 32) entryDefinition];
        v25 = [PLEntryDefinition allAggregatePrimaryKeysForEntryDefinition:v24];

        v26 = [v25 countByEnumeratingWithState:&v98 objects:v111 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v99;
          do
          {
            v29 = 0;
            do
            {
              if (*v99 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v98 + 1) + 8 * v29);
              if (+[PLDefaults debugEnabled])
              {
                v31 = objc_opt_class();
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = __37__PLCoreStorage_writeAggregateEntry___block_invoke_762;
                block[3] = &unk_1E8519630;
                v96 = @"writeAggregateEntry";
                v97 = v31;
                if (kPLTaskingEndNotification_block_invoke_6_defaultOnce_760 != -1)
                {
                  dispatch_once(&kPLTaskingEndNotification_block_invoke_6_defaultOnce_760, block);
                }

                v32 = kPLTaskingEndNotification_block_invoke_6_classDebugEnabled_761;

                if (v32 == 1)
                {
                  v33 = v25;
                  v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"primaryKey=%@", v30];
                  v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
                  v36 = [v35 lastPathComponent];
                  v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage writeAggregateEntry:]_block_invoke_2"];
                  [PLCoreStorage logMessage:v34 fromFile:v36 fromFunction:v37 fromLineNumber:1791];

                  v39 = PLLogCommon(v38);
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v113 = v34;
                    _os_log_debug_impl(&dword_1D8611000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  v2 = v82;
                  v25 = v33;
                  a1 = v81;
                }
              }

              v40 = [*(a1 + 32) objectForKeyedSubscript:v30];
              [v2 setObject:v40 forKeyedSubscript:v30];

              ++v29;
            }

            while (v27 != v29);
            v27 = [v25 countByEnumeratingWithState:&v98 objects:v111 count:16];
          }

          while (v27);
        }

        if (+[PLDefaults debugEnabled])
        {
          v41 = objc_opt_class();
          v91[0] = MEMORY[0x1E69E9820];
          v91[1] = 3221225472;
          v92[0] = __37__PLCoreStorage_writeAggregateEntry___block_invoke_769;
          v92[1] = &unk_1E8519630;
          v93 = @"writeAggregateEntry";
          v94 = v41;
          if (kPLTaskingEndNotification_block_invoke_6_defaultOnce_767 != -1)
          {
            dispatch_once(&kPLTaskingEndNotification_block_invoke_6_defaultOnce_767, v91);
          }

          v42 = kPLTaskingEndNotification_block_invoke_6_classDebugEnabled_768;

          if (v42 == 1)
          {
            v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"matchingKeyToValue=%@", v2];
            v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
            v45 = [v44 lastPathComponent];
            v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage writeAggregateEntry:]_block_invoke_2"];
            [PLCoreStorage logMessage:v43 fromFile:v45 fromFunction:v46 fromLineNumber:1795];

            v48 = PLLogCommon(v47);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v113 = v43;
              _os_log_debug_impl(&dword_1D8611000, v48, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v49 = MEMORY[0x1E695DFA8];
        v50 = [*(a1 + 32) entryDefinition];
        v51 = [PLEntryDefinition allAggregateKeysForEntryDefinition:v50];
        v52 = [v49 setWithArray:v51];

        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v53 = v52;
        v54 = [v53 countByEnumeratingWithState:&v87 objects:v110 count:16];
        if (v54)
        {
          v55 = v54;
          v83 = *v88;
          do
          {
            v56 = 0;
            do
            {
              if (*v88 != v83)
              {
                objc_enumerationMutation(v53);
              }

              v57 = *(*(&v87 + 1) + 8 * v56);
              if (+[PLDefaults debugEnabled])
              {
                v58 = objc_opt_class();
                v84[0] = MEMORY[0x1E69E9820];
                v84[1] = 3221225472;
                v84[2] = __37__PLCoreStorage_writeAggregateEntry___block_invoke_775;
                v84[3] = &unk_1E8519630;
                v85 = @"writeAggregateEntry";
                v86 = v58;
                if (kPLTaskingEndNotification_block_invoke_6_defaultOnce_773 != -1)
                {
                  dispatch_once(&kPLTaskingEndNotification_block_invoke_6_defaultOnce_773, v84);
                }

                v59 = kPLTaskingEndNotification_block_invoke_6_classDebugEnabled_774;

                if (v59 == 1)
                {
                  v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"aggregateKey=%@", v57];
                  v61 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
                  v62 = [v61 lastPathComponent];
                  v63 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage writeAggregateEntry:]_block_invoke_2"];
                  [PLCoreStorage logMessage:v60 fromFile:v62 fromFunction:v63 fromLineNumber:1800];

                  v65 = PLLogCommon(v64);
                  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v113 = v60;
                    _os_log_debug_impl(&dword_1D8611000, v65, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  v2 = v82;
                }
              }

              v66 = objc_opt_new();
              v67 = [*(a1 + 32) entryKey];
              [v66 setEntryKey:v67];

              v68 = [v2 mutableCopy];
              [v66 setMatchingKeyToValue:v68];

              v69 = [v53 mutableCopy];
              [v69 removeObject:v57];
              v70 = [v69 allObjects];
              [v66 setOtherAggregateKeys:v70];

              [v66 setAggregateKey:v57];
              v71 = [*(a1 + 32) objectForKeyedSubscript:v57];
              [v71 doubleValue];
              [v66 setAggregateValue:?];

              v72 = [*(a1 + 32) entryDefinition];
              [v66 setAggregateFunction:{+[PLEntryDefinition aggregateFunctionForEntryDefinition:forKey:](PLEntryDefinition, "aggregateFunctionForEntryDefinition:forKey:", v72, v57)}];

              v73 = +[PLStorageCache sharedStorageCache];
              [v73 addToStagingAggregateEntryCache:v66];

              ++v56;
            }

            while (v55 != v56);
            v55 = [v53 countByEnumeratingWithState:&v87 objects:v110 count:16];
          }

          while (v55);
        }

        v7 = v80 + 1;
      }

      while (v80 + 1 != v79);
      v79 = [obj countByEnumeratingWithState:&v106 objects:v114 count:16];
    }

    while (v79);
  }
}

BOOL __37__PLCoreStorage_writeAggregateEntry___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPLTaskingEndNotification_block_invoke_6_classDebugEnabled = result;
  return result;
}

BOOL __37__PLCoreStorage_writeAggregateEntry___block_invoke_762(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPLTaskingEndNotification_block_invoke_6_classDebugEnabled_761 = result;
  return result;
}

BOOL __37__PLCoreStorage_writeAggregateEntry___block_invoke_769(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPLTaskingEndNotification_block_invoke_6_classDebugEnabled_768 = result;
  return result;
}

BOOL __37__PLCoreStorage_writeAggregateEntry___block_invoke_775(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPLTaskingEndNotification_block_invoke_6_classDebugEnabled_774 = result;
  return result;
}

- (void)setAllNullValuesForEntryKey:(id)key forKey:(id)forKey toValue:(id)value withFilters:(id)filters
{
  keyCopy = key;
  forKeyCopy = forKey;
  valueCopy = value;
  filtersCopy = filters;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__4;
  v34 = __Block_byref_object_dispose__4;
  v14 = keyCopy;
  v35 = v14;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__4;
  v28 = __Block_byref_object_dispose__4;
  v15 = forKeyCopy;
  v29 = v15;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__4;
  v22[4] = __Block_byref_object_dispose__4;
  v16 = valueCopy;
  v23 = v16;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__4;
  v20[4] = __Block_byref_object_dispose__4;
  v17 = filtersCopy;
  v21 = v17;
  [(PLCoreStorage *)self flushCachesIfRequiredForEntryKey:v25[5]];
  v18 = v31[5];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __72__PLCoreStorage_setAllNullValuesForEntryKey_forKey_toValue_withFilters___block_invoke;
  v19[3] = &unk_1E8519B70;
  v19[4] = self;
  v19[5] = &v30;
  v19[6] = &v24;
  v19[7] = v22;
  v19[8] = v20;
  [(PLCoreStorage *)self dispatchAsyncForEntryKey:v18 withBlock:v19];
  _Block_object_dispose(v20, 8);

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
}

void __72__PLCoreStorage_setAllNullValuesForEntryKey_forKey_toValue_withFilters___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  [v2 setAllNullValuesForEntryKey:*(*(*(a1 + 40) + 8) + 40) forKey:*(*(*(a1 + 48) + 8) + 40) toValue:*(*(*(a1 + 56) + 8) + 40) withFilters:*(*(*(a1 + 64) + 8) + 40)];
}

- (void)loadDynamicValuesIntoEntry:(id)entry
{
  entryCopy = entry;
  entryKey = [entryCopy entryKey];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__PLCoreStorage_loadDynamicValuesIntoEntry___block_invoke;
  v7[3] = &unk_1E8519100;
  v7[4] = self;
  v8 = entryCopy;
  v6 = entryCopy;
  [(PLCoreStorage *)self dispatchSyncForEntryKey:entryKey withBlock:v7];
}

void __44__PLCoreStorage_loadDynamicValuesIntoEntry___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  [v2 loadDynamicValuesIntoEntry:*(a1 + 40)];

  v3 = [*(a1 + 32) connection];
  [v3 loadArrayValuesIntoEntry:*(a1 + 40)];
}

- (void)deleteEntry:(id)entry
{
  entryCopy = entry;
  entryKey = [entryCopy entryKey];
  entryID = [entryCopy entryID];

  [(PLCoreStorage *)self deleteEntryForKey:entryKey WithRowID:entryID];
}

- (void)deleteEntryForKey:(id)key WithRowID:(int64_t)d
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__4;
  v15 = __Block_byref_object_dispose__4;
  keyCopy = key;
  v16 = keyCopy;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = d;
  [(PLCoreStorage *)self flushCachesIfRequiredForEntryKey:keyCopy];
  v7 = +[PLStorageCache sharedStorageCache];
  [v7 clearLastEntryCacheForEntryKey:keyCopy];

  v8 = v12[5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__PLCoreStorage_deleteEntryForKey_WithRowID___block_invoke;
  v9[3] = &unk_1E8519B48;
  v9[4] = self;
  v9[5] = &v11;
  v9[6] = v10;
  [(PLCoreStorage *)self dispatchAsyncForEntryKey:v8 withBlock:v9];
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(&v11, 8);
}

void __45__PLCoreStorage_deleteEntryForKey_WithRowID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  [v2 deleteEntryForKey:*(*(*(a1 + 40) + 8) + 40) withRowID:*(*(*(a1 + 48) + 8) + 24)];
}

- (void)deleteAllEntriesForKey:(id)key beforeTimestamp:(id)timestamp withFilters:(id)filters
{
  keyCopy = key;
  timestampCopy = timestamp;
  filtersCopy = filters;
  if (keyCopy)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__4;
    v23 = __Block_byref_object_dispose__4;
    v11 = keyCopy;
    v24 = v11;
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = __Block_byref_object_copy__4;
    v17[4] = __Block_byref_object_dispose__4;
    v18 = timestampCopy;
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = __Block_byref_object_copy__4;
    v15[4] = __Block_byref_object_dispose__4;
    v16 = filtersCopy;
    [(PLCoreStorage *)self flushCachesIfRequiredForEntryKey:v11];
    v12 = +[PLStorageCache sharedStorageCache];
    [v12 clearLastEntryCacheForEntryKey:v11];

    v13 = v20[5];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __68__PLCoreStorage_deleteAllEntriesForKey_beforeTimestamp_withFilters___block_invoke;
    v14[3] = &unk_1E8519B98;
    v14[4] = self;
    v14[5] = v17;
    v14[6] = v15;
    v14[7] = &v19;
    [(PLCoreStorage *)self dispatchAsyncForEntryKey:v13 withBlock:v14];
    _Block_object_dispose(v15, 8);

    _Block_object_dispose(v17, 8);
    _Block_object_dispose(&v19, 8);
  }
}

void __68__PLCoreStorage_deleteAllEntriesForKey_beforeTimestamp_withFilters___block_invoke(uint64_t a1)
{
  v7 = objc_opt_new();
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    v3 = MEMORY[0x1E696AEC0];
    [v2 timeIntervalSince1970];
    v5 = [v3 stringWithFormat:@"timestamp < %f", v4];
    [v7 addObject:v5];
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    [v7 addObjectsFromArray:?];
  }

  if (![v7 count])
  {

    v7 = 0;
  }

  v6 = [*(a1 + 32) connection];
  [v6 deleteAllEntriesForKey:*(*(*(a1 + 56) + 8) + 40) withFilters:*(*(*(a1 + 48) + 8) + 40)];
}

- (int64_t)countOfEntriesForKey:(id)key
{
  keyCopy = key;
  v5 = +[PLStorageCache sharedStorageCache];
  v6 = [v5 stagingEntryCacheSizeForEntryKey:keyCopy];

  connection = [(PLCoreStorage *)self connection];
  keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT COUNT(ID) AS count FROM %@", keyCopy];;

  v9 = [connection performQuery:keyCopy];

  if ([v9 count])
  {
    v10 = [v9 objectAtIndexedSubscript:0];
    v11 = [v10 objectForKeyedSubscript:@"count"];
    v6 += [v11 longValue];
  }

  return v6;
}

- (void)processEntriesForKey:(id)key withProperties:(id)properties withBlock:(id)block
{
  v73 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  propertiesCopy = properties;
  blockCopy = block;
  if (blockCopy)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__PLCoreStorage_processEntriesForKey_withProperties_withBlock___block_invoke;
    block[3] = &unk_1E85195E0;
    v66 = @"processEntriesBatchSize";
    v67 = 10;
    if (processEntriesForKey_withProperties_withBlock__defaultOnce != -1)
    {
      dispatch_once(&processEntriesForKey_withProperties_withBlock__defaultOnce, block);
    }

    v8 = processEntriesForKey_withProperties_withBlock__objectForKey;

    v9 = [propertiesCopy objectForKeyedSubscript:@"__NOCACHEDUMP__"];
    if (!v9 || ([propertiesCopy objectForKeyedSubscript:@"__NOCACHEDUMP__"], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "BOOLValue"), v10, v9, (v11 & 1) == 0))
    {
      if ([(PLCoreStorage *)self flushCachesIfRequiredForEntryKey:keyCopy]&& +[PLDefaults debugEnabled])
      {
        propertiesCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cache dumped for properties: %@", propertiesCopy];
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
        lastPathComponent = [v13 lastPathComponent];
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage processEntriesForKey:withProperties:withBlock:]"];
        [PLCoreStorage logMessage:propertiesCopy fromFile:lastPathComponent fromFunction:v15 fromLineNumber:1915];

        v17 = PLLogCommon(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    v63[0] = 0;
    v63[1] = v63;
    v63[2] = 0x3032000000;
    v63[3] = __Block_byref_object_copy__4;
    v63[4] = __Block_byref_object_dispose__4;
    v18 = keyCopy;
    v64 = v18;
    v61[0] = 0;
    v61[1] = v61;
    v61[2] = 0x3032000000;
    v61[3] = __Block_byref_object_copy__4;
    v61[4] = __Block_byref_object_dispose__4;
    v62 = propertiesCopy;
    v55 = 0;
    v56 = &v55;
    v57 = 0x3032000000;
    v58 = __Block_byref_object_copy__4;
    v59 = __Block_byref_object_dispose__4;
    array = [MEMORY[0x1E695DF70] array];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __63__PLCoreStorage_processEntriesForKey_withProperties_withBlock___block_invoke_798;
    v54[3] = &unk_1E8519B98;
    v54[4] = self;
    v54[5] = v63;
    v54[6] = v61;
    v54[7] = &v55;
    [(PLCoreStorage *)self dispatchSyncForEntryKey:v18 withBlock:v54];
    array2 = [MEMORY[0x1E695DF70] array];
    v20 = 0;
    while (1)
    {
      v21 = v20;
      if ([v56[5] count] <= v20)
      {
        break;
      }

      v22 = [v56[5] count];
      if (v22 >= v8 + v20)
      {
        v20 += v8;
      }

      else
      {
        v20 = v22;
      }

      v23 = [v56[5] subarrayWithRange:{v21, v20 - v21}];
      [array2 addObject:v23];
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = array2;
    v24 = [obj countByEnumeratingWithState:&v50 objects:v72 count:16];
    if (v24)
    {
      v41 = *v51;
      do
      {
        v25 = 0;
        v43 = v24;
        do
        {
          if (*v51 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v50 + 1) + 8 * v25);
          context = objc_autoreleasePoolPush();
          v27 = MEMORY[0x1E696AEC0];
          v28 = [v26 componentsJoinedByString:{@", "}];
          v45 = [v27 stringWithFormat:@"ID IN (%@)", v28];

          v71[0] = MEMORY[0x1E695E118];
          v70[0] = @"__NOCACHEDUMP__";
          v70[1] = @"where";
          v69 = v45;
          v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];
          v71[1] = v29;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:2];

          v31 = [(PLCoreStorage *)self entriesForKey:v18 withProperties:v30];
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v32 = v31;
          v33 = [v32 countByEnumeratingWithState:&v46 objects:v68 count:16];
          if (v33)
          {
            v34 = *v47;
            do
            {
              for (i = 0; i != v33; ++i)
              {
                if (*v47 != v34)
                {
                  objc_enumerationMutation(v32);
                }

                v36 = *(*(&v46 + 1) + 8 * i);
                v37 = objc_autoreleasePoolPush();
                blockCopy[2](blockCopy, v36);
                objc_autoreleasePoolPop(v37);
              }

              v33 = [v32 countByEnumeratingWithState:&v46 objects:v68 count:16];
            }

            while (v33);
          }

          objc_autoreleasePoolPop(context);
          ++v25;
        }

        while (v25 != v43);
        v24 = [obj countByEnumeratingWithState:&v50 objects:v72 count:16];
      }

      while (v24);
    }

    _Block_object_dispose(&v55, 8);
    _Block_object_dispose(v61, 8);

    _Block_object_dispose(v63, 8);
  }
}

int64_t __63__PLCoreStorage_processEntriesForKey_withProperties_withBlock___block_invoke(uint64_t a1)
{
  result = [PLDefaults longForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  processEntriesForKey_withProperties_withBlock__objectForKey = result;
  return result;
}

void __63__PLCoreStorage_processEntriesForKey_withProperties_withBlock___block_invoke_798(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD60] stringWithFormat:@"SELECT ID FROM '%@' ", *(*(*(a1 + 40) + 8) + 40)];
  v3 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:@"where"];
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [v4 componentsJoinedByString:@" AND "];
    [v2 appendFormat:@"WHERE %@ ", v5];
  }

  [v2 appendString:@";"];
  v6 = [*(a1 + 32) connection];
  v7 = [v6 performQuery:v2];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(*(a1 + 56) + 8) + 40);
        v14 = [*(*(&v15 + 1) + 8 * v12) objectForKeyedSubscript:@"ID"];
        [v13 addObject:v14];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (id)entriesForKey:(id)key withProperties:(id)properties
{
  keyCopy = key;
  propertiesCopy = properties;
  v8 = [propertiesCopy objectForKeyedSubscript:@"__NOCACHEDUMP__"];
  if (!v8 || (v9 = v8, [propertiesCopy objectForKeyedSubscript:@"__NOCACHEDUMP__"], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "BOOLValue"), v10, v9, (v11 & 1) == 0))
  {
    if ([(PLCoreStorage *)self flushCachesIfRequiredForEntryKey:keyCopy]&& +[PLDefaults debugEnabled])
    {
      propertiesCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cache dumped for properties: %@", propertiesCopy];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage entriesForKey:withProperties:]"];
      [PLCoreStorage logMessage:propertiesCopy fromFile:lastPathComponent fromFunction:v15 fromLineNumber:1979];

      v17 = PLLogCommon(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v18 = os_transaction_create();
  v19 = objc_autoreleasePoolPush();
  v20 = +[PLStorageCache sharedStorageCache];
  v21 = [v20 connectionForKey:keyCopy];
  v22 = [v21 entriesForKey:keyCopy withProperties:propertiesCopy];

  objc_autoreleasePoolPop(v19);
  v24 = PLLogCommon(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [PLCoreStorage entriesForKey:withProperties:];
  }

  v25 = dispatch_time(0, 1000000000 * [PLDefaults longForKey:@"kPLXPCTransactionEndDelay" ifNotSet:60]);
  v26 = +[PLUtilities transactionWorkQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__PLCoreStorage_entriesForKey_withProperties___block_invoke;
  block[3] = &unk_1E85190B8;
  v30 = v18;
  v27 = v18;
  dispatch_after(v25, v26, block);

  return v22;
}

- (id)entriesForKey:(id)key withComparisons:(id)comparisons
{
  v42 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  comparisonsCopy = comparisons;
  v8 = comparisonsCopy;
  if (keyCopy)
  {
    selfCopy = self;
    v9 = PLLogCommon(comparisonsCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PLCoreStorage entriesForKey:withComparisons:];
    }

    v10 = +[PLStorageCache sharedStorageCache];
    v11 = [v10 stagingEntryCacheIDsForEntryKey:keyCopy];

    v12 = +[PLStorageCache sharedStorageCache];
    v13 = [v12 stagingEntryCacheForEntryKey:keyCopy withComparisons:v8 isSingleton:0];

    v15 = PLLogCommon(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [PLCoreStorage entriesForKey:withComparisons:];
    }

    v17 = PLLogCommon(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [PLCoreStorage entriesForKey:withComparisons:];
    }

    array = [MEMORY[0x1E695DF70] array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v19 = v8;
    v20 = [v19 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v36;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v36 != v22)
          {
            objc_enumerationMutation(v19);
          }

          sqlWhereClause = [*(*(&v35 + 1) + 8 * i) sqlWhereClause];
          [array addObject:sqlWhereClause];
        }

        v21 = [v19 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v21);
    }

    if ([v11 count])
    {
      v25 = MEMORY[0x1E696AEC0];
      allObjects = [v11 allObjects];
      v27 = [allObjects componentsJoinedByString:{@", "}];
      v28 = [v25 stringWithFormat:@"ID NOT IN (%@)", v27];
      [array addObject:v28];
    }

    v39[0] = @"where";
    v39[1] = @"__NOCACHEDUMP__";
    v40[0] = array;
    v40[1] = MEMORY[0x1E695E118];
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
    v30 = [(PLCoreStorage *)selfCopy entriesForKey:keyCopy withProperties:v29];

    v31 = [MEMORY[0x1E695DF70] arrayWithArray:v13];
    [v31 addObjectsFromArray:v30];
    v32 = [v31 sortedArrayUsingComparator:&__block_literal_global_833];
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

uint64_t __47__PLCoreStorage_entriesForKey_withComparisons___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithLongLong:{objc_msgSend(a2, "entryID")}];
  v7 = MEMORY[0x1E696AD98];
  v8 = [v5 entryID];

  v9 = [v7 numberWithLongLong:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (id)entriesForKey:(id)key withQuery:(id)query
{
  keyCopy = key;
  queryCopy = query;
  if ([(PLCoreStorage *)self flushCachesIfRequiredForEntryKey:keyCopy]&& +[PLDefaults debugEnabled])
  {
    queryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cache dumped for query: %@", queryCopy];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
    lastPathComponent = [v9 lastPathComponent];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage entriesForKey:withQuery:]"];
    [PLCoreStorage logMessage:queryCopy fromFile:lastPathComponent fromFunction:v11 fromLineNumber:2036];

    v13 = PLLogCommon(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__4;
  v26 = __Block_byref_object_dispose__4;
  v27 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __41__PLCoreStorage_entriesForKey_withQuery___block_invoke;
  v18[3] = &unk_1E85194A0;
  v21 = &v22;
  v18[4] = self;
  v14 = keyCopy;
  v19 = v14;
  v15 = queryCopy;
  v20 = v15;
  [(PLCoreStorage *)self dispatchSyncForEntryKey:v14 withBlock:v18];
  v16 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v16;
}

void __41__PLCoreStorage_entriesForKey_withQuery___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) connection];
  v2 = [v5 entriesForKey:*(a1 + 40) withQuery:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)entriesForKey:(id)key inTimeRange:(_PLTimeIntervalRange)range withFilters:(id)filters
{
  location = range.location;
  v19[2] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E695DF70];
  v9 = MEMORY[0x1E696AEC0];
  v10 = range.location + range.length;
  filtersCopy = filters;
  keyCopy = key;
  v13 = [v9 stringWithFormat:@"timestamp BETWEEN %f AND %f", *&location, *&v10];
  v14 = [v8 arrayWithObject:v13];

  [v14 addObjectsFromArray:filtersCopy];
  v18[0] = @"where";
  v18[1] = @"order by";
  v19[0] = v14;
  v19[1] = &unk_1F540CBA8;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v16 = [(PLCoreStorage *)self entriesForKey:keyCopy withProperties:v15];

  return v16;
}

- (id)entriesForKey:(id)key inTimeRange:(_PLTimeIntervalRange)range withCountOfEntriesBefore:(int64_t)before withCountOfEntriesAfter:(int64_t)after withFilters:(id)filters
{
  length = range.length;
  location = range.location;
  v13 = MEMORY[0x1E695DF70];
  filtersCopy = filters;
  keyCopy = key;
  v16 = [(PLCoreStorage *)self entriesForKey:keyCopy inTimeRange:filtersCopy withFilters:location, length];
  v17 = [v13 arrayWithArray:v16];

  if ([v17 count])
  {
    firstObject = [v17 firstObject];
    entryID = [firstObject entryID];

    lastObject = [v17 lastObject];
    entryID2 = [lastObject entryID];

    if (+[PLDefaults debugEnabled])
    {
      v22 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __104__PLCoreStorage_entriesForKey_inTimeRange_withCountOfEntriesBefore_withCountOfEntriesAfter_withFilters___block_invoke;
      block[3] = &unk_1E8519630;
      v38 = @"query";
      v39 = v22;
      if (entriesForKey_inTimeRange_withCountOfEntriesBefore_withCountOfEntriesAfter_withFilters__defaultOnce != -1)
      {
        dispatch_once(&entriesForKey_inTimeRange_withCountOfEntriesBefore_withCountOfEntriesAfter_withFilters__defaultOnce, block);
      }

      v23 = entriesForKey_inTimeRange_withCountOfEntriesBefore_withCountOfEntriesAfter_withFilters__classDebugEnabled;

      if (v23 == 1)
      {
        v35 = entryID2;
        afterCopy = after;
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"first=%lld last=%lld", entryID, entryID2];
        v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
        lastPathComponent = [v25 lastPathComponent];
        v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage entriesForKey:inTimeRange:withCountOfEntriesBefore:withCountOfEntriesAfter:withFilters:]"];
        [PLCoreStorage logMessage:v24 fromFile:lastPathComponent fromFunction:v27 fromLineNumber:2061];

        v29 = PLLogCommon(v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

        entryID2 = v35;
        after = afterCopy;
      }
    }

    v30 = [(PLCoreStorage *)self entriesForKey:keyCopy startingFromRowID:entryID + 1 count:before withFilters:filtersCopy];
    [v17 addObjectsFromArray:v30];

    v31 = [(PLCoreStorage *)self entriesForKey:keyCopy startingFromRowID:entryID2 - 1 count:-after withFilters:filtersCopy];
  }

  else
  {
    v32 = [(PLCoreStorage *)self entriesForKey:keyCopy before:1 timeInterval:before count:filtersCopy withFilters:location];
    [v17 addObjectsFromArray:v32];

    v31 = [(PLCoreStorage *)self entriesForKey:keyCopy before:0 timeInterval:after count:filtersCopy withFilters:location + length];
  }

  v33 = v31;

  [v17 addObjectsFromArray:v33];
  [v17 sortUsingComparator:&__block_literal_global_856];

  return v17;
}

BOOL __104__PLCoreStorage_entriesForKey_inTimeRange_withCountOfEntriesBefore_withCountOfEntriesAfter_withFilters___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  entriesForKey_inTimeRange_withCountOfEntriesBefore_withCountOfEntriesAfter_withFilters__classDebugEnabled = result;
  return result;
}

uint64_t __104__PLCoreStorage_entriesForKey_inTimeRange_withCountOfEntriesBefore_withCountOfEntriesAfter_withFilters___block_invoke_853(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 entryID];
  if (v6 <= [v5 entryID])
  {
    v8 = [v4 entryID];
    v7 = v8 < [v5 entryID];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (id)entriesForKey:(id)key before:(BOOL)before timeInterval:(double)interval count:(int64_t)count withFilters:(id)filters
{
  beforeCopy = before;
  v27[3] = *MEMORY[0x1E69E9840];
  filtersCopy = filters;
  keyCopy = key;
  v14 = objc_opt_new();
  v15 = @">=";
  if (beforeCopy)
  {
    v15 = @"<=";
    v16 = MEMORY[0x1E695E118];
  }

  else
  {
    v16 = MEMORY[0x1E695E110];
  }

  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"timestamp %@ %f", v15, *&interval];
  [v14 addObject:v17];

  [v14 addObjectsFromArray:filtersCopy];
  v27[0] = v14;
  v26[0] = @"where";
  v26[1] = @"order by";
  v24 = @"timestamp";
  v25 = v16;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v27[1] = v18;
  v26[2] = @"limit";
  if (count >= 0)
  {
    countCopy = count;
  }

  else
  {
    countCopy = -count;
  }

  v20 = [MEMORY[0x1E696AD98] numberWithLongLong:countCopy];
  v27[2] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
  v22 = [(PLCoreStorage *)self entriesForKey:keyCopy withProperties:v21];

  return v22;
}

- (id)entryForKey:(id)key withID:(int64_t)d
{
  keyCopy = key;
  v7 = +[PLStorageCache sharedStorageCache];
  v8 = [v7 cachedEntryForEntryKey:keyCopy withEntryID:d];

  if (v8)
  {
    firstObject = v8;
  }

  else
  {
    v10 = [(PLCoreStorage *)self entriesForKey:keyCopy startingFromRowID:d count:1 withFilters:0];
    firstObject = 0;
    if ([v10 count] == 1)
    {
      firstObject = [v10 firstObject];
    }
  }

  return firstObject;
}

- (id)entriesForKey:(id)key startingFromRowID:(int64_t)d count:(int64_t)count withFilters:(id)filters
{
  v31[3] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  filtersCopy = filters;
  v12 = MEMORY[0x1E695E118];
  v13 = MEMORY[0x1E695E110];
  if (filtersCopy)
  {
    v14 = filtersCopy;
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  v15 = [v14 mutableCopy];
  if (count > 0)
  {
    v12 = v13;
  }

  v16 = @"<=";
  if (count > 0)
  {
    v16 = @">=";
  }

  if (!count)
  {
    v16 = @"==";
  }

  if (count < 0)
  {
    count = -count;
  }

  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ID %@ %lld", v16, d];
  [v15 addObject:v17];

  v31[0] = v15;
  v30[0] = @"where";
  v30[1] = @"order by";
  v28 = @"timestamp";
  v29 = v12;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v31[1] = v18;
  v30[2] = @"limit";
  v19 = [MEMORY[0x1E696AD98] numberWithLongLong:count];
  v31[2] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:3];

  if ([v15 count] >= 2)
  {
    firstObject = [v15 firstObject];
    v22 = [firstObject isEqualToString:@"__NOCACHEDUMP__"];

    if (v22)
    {
      [v15 removeObjectAtIndex:0];
      v23 = [v20 mutableCopy];
      [v23 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"__NOCACHEDUMP__"];
      [v23 setObject:v15 forKeyedSubscript:@"where"];

      v20 = v23;
    }
  }

  v24 = [(PLCoreStorage *)self entriesForKey:keyCopy withProperties:v20];
  if ([v12 isEqual:MEMORY[0x1E695E110]])
  {
    v25 = [v24 sortedArrayUsingComparator:&__block_literal_global_876];
  }

  else
  {
    v25 = v24;
  }

  v26 = v25;

  return v26;
}

uint64_t __67__PLCoreStorage_entriesForKey_startingFromRowID_count_withFilters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 entryID];
  if (v6 <= [v5 entryID])
  {
    v8 = [v4 entryID];
    v7 = v8 < [v5 entryID];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (id)firstEntryForKey:(id)key
{
  if (key)
  {
    v3 = [(PLCoreStorage *)self entriesForKey:key withProperties:&unk_1F540CBF8];
    if ([v3 count])
    {
      firstObject = [v3 firstObject];
    }

    else
    {
      firstObject = 0;
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)lastEntryForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v5 = +[PLStorageCache sharedStorageCache];
    v6 = [v5 lastEntryCacheForEntryKey:keyCopy];

    if (!v6)
    {
      v6 = [(PLCoreStorage *)self lastEntryForKey:keyCopy withFilters:&unk_1F540B7A0];
      if (v6)
      {
        v7 = +[PLStorageCache sharedStorageCache];
        [v7 addToLastEntryCache:v6];

        v8 = +[PLStorageCache sharedStorageCache];
        [v8 addToLastEntryCacheSubKey:v6];
      }
    }

    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)lastEntryForKey:(id)key withSubEntryKey:(id)entryKey
{
  v17[2] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  entryKeyCopy = entryKey;
  if (keyCopy)
  {
    v8 = +[PLStorageCache sharedStorageCache];
    v9 = [v8 lastEntryCacheForEntryKey:keyCopy withSubEntryKey:entryKeyCopy];

    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v11 = [PLEntryDefinition subEntryKeyKeyForEntryKey:keyCopy];
      v17[0] = @"__NOCACHEDUMP__";
      entryKeyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ = %@", v11, entryKeyCopy];
      v17[1] = entryKeyCopy;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];

      v14 = [(PLCoreStorage *)self lastEntryForKey:keyCopy withFilters:v13];
      if (v14)
      {
        v15 = +[PLStorageCache sharedStorageCache];
        [v15 addToLastEntryCacheSubKey:v14];
      }

      v10 = v14;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)lastEntryForKey:(id)key withComparisons:(id)comparisons isSingleton:(BOOL)singleton
{
  singletonCopy = singleton;
  v64 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  comparisonsCopy = comparisons;
  if (keyCopy)
  {
    if (singletonCopy)
    {
      v10 = 0;
    }

    else
    {
      v12 = +[PLStorageCache sharedStorageCache];
      v10 = [v12 stagingEntryCacheIDsForEntryKey:keyCopy];
    }

    v13 = +[PLStorageCache sharedStorageCache];
    v14 = [v13 stagingEntryCacheForEntryKey:keyCopy withComparisons:comparisonsCopy isSingleton:singletonCopy];

    firstObject = [v14 firstObject];
    if (+[PLDefaults debugEnabled])
    {
      v16 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __61__PLCoreStorage_lastEntryForKey_withComparisons_isSingleton___block_invoke;
      block[3] = &unk_1E8519630;
      v61 = @"lastEntryForKey:withComparisons:isSingleton:";
      v62 = v16;
      if (lastEntryForKey_withComparisons_isSingleton__defaultOnce != -1)
      {
        dispatch_once(&lastEntryForKey_withComparisons_isSingleton__defaultOnce, block);
      }

      v17 = lastEntryForKey_withComparisons_isSingleton__classDebugEnabled;

      if (v17 == 1)
      {
        v49 = v14;
        v51 = v10;
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cacheEntry=%@", firstObject];
        v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
        lastPathComponent = [v19 lastPathComponent];
        v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage lastEntryForKey:withComparisons:isSingleton:]"];
        [PLCoreStorage logMessage:v18 fromFile:lastPathComponent fromFunction:v21 fromLineNumber:2208];

        v23 = PLLogCommon(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

        v14 = v49;
        v10 = v51;
      }
    }

    if (firstObject && (singletonCopy || ([firstObject existsInDB] & 1) == 0))
    {
      v11 = firstObject;
    }

    else
    {
      v50 = v14;
      v52 = v10;
      array = [MEMORY[0x1E695DF70] array];
      [array addObject:@"__NOCACHEDUMP__"];
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v25 = comparisonsCopy;
      v26 = [v25 countByEnumeratingWithState:&v56 objects:v63 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v57;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v57 != v28)
            {
              objc_enumerationMutation(v25);
            }

            sqlWhereClause = [*(*(&v56 + 1) + 8 * i) sqlWhereClause];
            [array addObject:sqlWhereClause];
          }

          v27 = [v25 countByEnumeratingWithState:&v56 objects:v63 count:16];
        }

        while (v27);
      }

      v10 = v52;
      if ([v52 count])
      {
        allObjects = [v52 allObjects];
        v32 = [allObjects mutableCopy];

        if (firstObject)
        {
          v33 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(firstObject, "entryID")}];
          [v32 removeObject:v33];
        }

        v34 = MEMORY[0x1E696AEC0];
        v35 = [v32 componentsJoinedByString:{@", "}];
        v36 = [v34 stringWithFormat:@"ID NOT IN (%@)", v35];
        [array addObject:v36];
      }

      v37 = [(PLCoreStorage *)self lastEntryForKey:keyCopy withFilters:array];
      if (+[PLDefaults debugEnabled])
      {
        v38 = objc_opt_class();
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __61__PLCoreStorage_lastEntryForKey_withComparisons_isSingleton___block_invoke_899;
        v53[3] = &unk_1E8519630;
        v54 = @"lastEntryForKey:withComparisons:isSingleton:";
        v55 = v38;
        if (lastEntryForKey_withComparisons_isSingleton__defaultOnce_897 != -1)
        {
          dispatch_once(&lastEntryForKey_withComparisons_isSingleton__defaultOnce_897, v53);
        }

        v39 = lastEntryForKey_withComparisons_isSingleton__classDebugEnabled_898;

        if (v39 == 1)
        {
          v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"dbEntry=%@", v37];
          v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
          lastPathComponent2 = [v41 lastPathComponent];
          v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage lastEntryForKey:withComparisons:isSingleton:]"];
          [PLCoreStorage logMessage:v40 fromFile:lastPathComponent2 fromFunction:v43 fromLineNumber:2232];

          v45 = PLLogCommon(v44);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }

          v10 = v52;
        }
      }

      entryID = [v37 entryID];
      if (entryID == [firstObject entryID])
      {
        v47 = firstObject;
      }

      else
      {
        v47 = v37;
      }

      v11 = v47;

      v14 = v50;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

BOOL __61__PLCoreStorage_lastEntryForKey_withComparisons_isSingleton___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  lastEntryForKey_withComparisons_isSingleton__classDebugEnabled = result;
  return result;
}

BOOL __61__PLCoreStorage_lastEntryForKey_withComparisons_isSingleton___block_invoke_899(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  lastEntryForKey_withComparisons_isSingleton__classDebugEnabled_898 = result;
  return result;
}

- (id)lastEntryForKey:(id)key withIDLessThan:(int64_t)than
{
  v14[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (keyCopy)
  {
    v7 = +[PLStorageCache sharedStorageCache];
    v8 = [v7 lastEntryCacheForEntryKey:keyCopy];

    if ([v8 entryID] > than)
    {
      v9 = +[PLStorageCache sharedStorageCache];
      v10 = [v9 stagingEntryCacheForEntryKey:keyCopy withIDLessThan:than];

      if ([v10 entryID] <= than)
      {
        v8 = v10;
      }

      else
      {
        than = [MEMORY[0x1E696AEC0] stringWithFormat:@"ID < %lld", than];
        v14[0] = than;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
        v8 = [(PLCoreStorage *)self lastEntryForKey:keyCopy withFilters:v12];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)lastEntryForKey:(id)key withFilters:(id)filters
{
  v4 = [(PLCoreStorage *)self lastEntriesForKey:key count:1 withFilters:filters];
  if ([v4 count] == 1)
  {
    firstObject = [v4 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)lastEntriesForKey:(id)key count:(int64_t)count withFilters:(id)filters
{
  v22[4] = *MEMORY[0x1E69E9840];
  filtersCopy = filters;
  v9 = filtersCopy;
  if (key)
  {
    if (!filtersCopy)
    {
      v9 = MEMORY[0x1E695E0F0];
    }

    keyCopy = key;
    if ([v9 count] && (objc_msgSend(v9, "firstObject"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", @"__NOCACHEDUMP__"), v11, v12))
    {
      v13 = [v9 mutableCopy];
      [v13 removeObjectAtIndex:0];

      v14 = 1;
      v9 = v13;
    }

    else
    {
      v14 = 0;
    }

    v21[0] = @"where";
    v21[1] = @"order by";
    v22[0] = v9;
    v22[1] = &unk_1F540CC20;
    v21[2] = @"limit";
    if (count >= 0)
    {
      countCopy = count;
    }

    else
    {
      countCopy = -count;
    }

    v16 = [MEMORY[0x1E696AD98] numberWithLongLong:countCopy];
    v22[2] = v16;
    v21[3] = @"__NOCACHEDUMP__";
    v17 = [MEMORY[0x1E696AD98] numberWithBool:v14];
    v22[3] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:4];

    v19 = [(PLCoreStorage *)self entriesForKey:keyCopy withProperties:v18];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)removeErroneousQualificationEntries
{
  connection = [(PLCoreStorage *)self connection];
  v3 = [connection performQuery:@"DELETE FROM PLAccountingOperator_EventInterval_QualificationEvents WHERE QualificationID = 13;"];

  v5 = PLLogCommon(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_INFO, "Performed query to remove qualificationID = 13 from DB", v6, 2u);
  }
}

- (id)processIDEntryForPid:(int)pid
{
  v3 = *&pid;
  v16[2] = *MEMORY[0x1E69E9840];
  v5 = [PLValueComparison alloc];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v7 = [(PLValueComparison *)v5 initWithKey:@"PID" withValue:v6 withComparisonOperation:0];

  v8 = [PLValueComparison alloc];
  v9 = MEMORY[0x1E696AD98];
  v10 = +[PLUtilities deviceBootTime];
  [v10 timeIntervalSince1970];
  v11 = [v9 numberWithDouble:?];
  v12 = [(PLValueComparison *)v8 initWithKey:@"timestamp" withValue:v11 withComparisonOperation:2];

  v16[0] = v7;
  v16[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v14 = [(PLCoreStorage *)self lastEntryForKey:@"PLProcessMonitorAgent_EventForward_ProcessID" withComparisons:v13 isSingleton:1];

  return v14;
}

- (id)aggregateEntriesForKey:(id)key withBucketLength:(double)length inTimeIntervalRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  keyCopy = key;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__4;
  v34 = __Block_byref_object_dispose__4;
  v35 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __77__PLCoreStorage_aggregateEntriesForKey_withBucketLength_inTimeIntervalRange___block_invoke;
  v24[3] = &unk_1E8519BE0;
  v27 = location;
  lengthCopy = length;
  lengthCopy2 = length;
  v26 = &v30;
  v24[4] = self;
  v10 = keyCopy;
  v25 = v10;
  [(PLCoreStorage *)self dispatchSyncForEntryKey:v10 withBlock:v24];
  if (+[PLDefaults debugEnabled])
  {
    v11 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__PLCoreStorage_aggregateEntriesForKey_withBucketLength_inTimeIntervalRange___block_invoke_2;
    block[3] = &unk_1E8519630;
    v22 = @"aggregate";
    v23 = v11;
    if (aggregateEntriesForKey_withBucketLength_inTimeIntervalRange__defaultOnce != -1)
    {
      dispatch_once(&aggregateEntriesForKey_withBucketLength_inTimeIntervalRange__defaultOnce, block);
    }

    v12 = aggregateEntriesForKey_withBucketLength_inTimeIntervalRange__classDebugEnabled;

    if (v12 == 1)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"entryResults=%@", v31[5]];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      lastPathComponent = [v14 lastPathComponent];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage aggregateEntriesForKey:withBucketLength:inTimeIntervalRange:]"];
      [PLCoreStorage logMessage:v13 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:2321];

      v18 = PLLogCommon(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v19 = v31[5];

  _Block_object_dispose(&v30, 8);

  return v19;
}

void __77__PLCoreStorage_aggregateEntriesForKey_withBucketLength_inTimeIntervalRange___block_invoke(uint64_t a1)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"timestamp + timeInterval AS timestampEnd"];
  [v2 addObject:v3];
  v4 = objc_opt_new();
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"timestamp <= %f AND %f <= timestampEnd", *(a1 + 56) + *(a1 + 64), *(a1 + 56)];
  [v4 addObject:v5];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"timeInterval = %f", *(a1 + 72)];
  [v4 addObject:v6];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13[0] = @"where";
  v13[1] = @"select";
  v14[0] = v4;
  v14[1] = v2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [v7 entriesForKey:v8 withProperties:v9];
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

BOOL __77__PLCoreStorage_aggregateEntriesForKey_withBucketLength_inTimeIntervalRange___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  aggregateEntriesForKey_withBucketLength_inTimeIntervalRange__classDebugEnabled = result;
  return result;
}

+ (id)allOperatorTablesToTrimConditionsForTrimDate:(id)date
{
  v77[2] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v3 = +[PowerlogCore sharedCore];
  agents = [v3 agents];
  v77[0] = agents;
  v5 = +[PowerlogCore sharedCore];
  services = [v5 services];
  v77[1] = services;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];

  v8 = +[PowerlogCore sharedCore];
  storage = [v8 storage];
  storageOperator = [storage storageOperator];
  v76 = storageOperator;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
  v12 = [v11 mutableCopy];

  if (!+[PLPlatform isHomePod])
  {
    v13 = +[PowerlogCore sharedCore];
    accounting = [v13 accounting];
    [v12 addObject:accounting];
  }

  v15 = +[PowerlogCore sharedCore];
  agents2 = [v15 agents];
  allOperators = [agents2 allOperators];
  [v12 addObjectsFromArray:allOperators];

  v18 = +[PowerlogCore sharedCore];
  services2 = [v18 services];
  allOperators2 = [services2 allOperators];
  v51 = v12;
  [v12 addObjectsFromArray:allOperators2];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v7;
  v22 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
  if (v22)
  {
    v23 = v22;
    v53 = *v69;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v69 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v25 = [*(*(&v68 + 1) + 8 * i) tablesToTrimConditionsForTrimDate:dateCopy];
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v26 = [v25 countByEnumeratingWithState:&v64 objects:v74 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v65;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v65 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v64 + 1) + 8 * j);
              v31 = [dictionary objectForKeyedSubscript:v30];

              if (!v31)
              {
                array = [MEMORY[0x1E695DF70] array];
                [dictionary setObject:array forKeyedSubscript:v30];
              }

              v33 = [dictionary objectForKeyedSubscript:v30];
              v34 = [v25 objectForKeyedSubscript:v30];
              [v33 addObject:v34];
            }

            v27 = [v25 countByEnumeratingWithState:&v64 objects:v74 count:16];
          }

          while (v27);
        }
      }

      v23 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
    }

    while (v23);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v49 = v51;
  v54 = [v49 countByEnumeratingWithState:&v60 objects:v73 count:16];
  if (v54)
  {
    v52 = *v61;
    do
    {
      for (k = 0; k != v54; ++k)
      {
        if (*v61 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v36 = [*(*(&v60 + 1) + 8 * k) tablesToTrimConditionsForTrimDate:dateCopy];
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        allKeys = [v36 allKeys];
        v38 = [allKeys countByEnumeratingWithState:&v56 objects:v72 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v57;
          do
          {
            for (m = 0; m != v39; ++m)
            {
              if (*v57 != v40)
              {
                objc_enumerationMutation(allKeys);
              }

              v42 = *(*(&v56 + 1) + 8 * m);
              v43 = [dictionary objectForKeyedSubscript:v42];

              if (!v43)
              {
                array2 = [MEMORY[0x1E695DF70] array];
                [dictionary setObject:array2 forKeyedSubscript:v42];
              }

              v45 = [dictionary objectForKeyedSubscript:v42];
              v46 = [v36 objectForKeyedSubscript:v42];
              [v45 addObject:v46];
            }

            v39 = [allKeys countByEnumeratingWithState:&v56 objects:v72 count:16];
          }

          while (v39);
        }
      }

      v54 = [v49 countByEnumeratingWithState:&v60 objects:v73 count:16];
    }

    while (v54);
  }

  v47 = [PPSSQLStorage trimConditionsForPLSQLWithTrimDate:dateCopy];
  [dictionary addEntriesFromDictionary:v47];

  return dictionary;
}

- (void)logMessage:(id)message fromFile:(id)file fromFunction:(id)function fromLineNumber:(int64_t)number
{
  v17[4] = *MEMORY[0x1E69E9840];
  functionCopy = function;
  fileCopy = file;
  messageCopy = message;
  storageOperator = [(PLCoreStorage *)self storageOperator];
  v16[0] = @"message";
  v16[1] = @"file";
  v17[0] = messageCopy;
  v17[1] = fileCopy;
  v17[2] = functionCopy;
  v16[2] = @"function";
  v16[3] = @"line";
  v14 = [MEMORY[0x1E696AD98] numberWithLong:number];
  v17[3] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];

  [storageOperator logEventPointPLLog:v15];
}

+ (void)logMessage:(id)message fromFile:(id)file fromFunction:(id)function fromLineNumber:(int64_t)number
{
  messageCopy = message;
  fileCopy = file;
  functionCopy = function;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PLCoreStorage_logMessage_fromFile_fromFunction_fromLineNumber___block_invoke;
  block[3] = &unk_1E85199A8;
  v23 = @"PLLogToSyslogOnly";
  v24 = 0;
  if (logMessage_fromFile_fromFunction_fromLineNumber__defaultOnce != -1)
  {
    dispatch_once(&logMessage_fromFile_fromFunction_fromLineNumber__defaultOnce, block);
  }

  v12 = logMessage_fromFile_fromFunction_fromLineNumber__objectForKey;

  if (v12 != 1)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __65__PLCoreStorage_logMessage_fromFile_fromFunction_fromLineNumber___block_invoke_2;
    v19 = &unk_1E85199A8;
    v20 = @"PLLogToSyslog";
    v21 = 0;
    if (logMessage_fromFile_fromFunction_fromLineNumber__defaultOnce_948 != -1)
    {
      dispatch_once(&logMessage_fromFile_fromFunction_fromLineNumber__defaultOnce_948, &v16);
    }

    v13 = logMessage_fromFile_fromFunction_fromLineNumber__objectForKey_949;

    if (v13 == 1)
    {
      NSLog(&stru_1F53A2A28.isa, functionCopy, messageCopy, v16, v17, v18, v19);
    }

    if (+[PowerlogCore sharedCoreStarted])
    {
      v14 = +[PowerlogCore sharedCore];
      storage = [v14 storage];
      [storage logMessage:messageCopy fromFile:fileCopy fromFunction:functionCopy fromLineNumber:number];

      goto LABEL_12;
    }

    if (!+[PLDefaults debugEnabled])
    {
      goto LABEL_12;
    }
  }

  NSLog(&stru_1F53A2A28.isa, functionCopy, messageCopy);
LABEL_12:
}

BOOL __65__PLCoreStorage_logMessage_fromFile_fromFunction_fromLineNumber___block_invoke(uint64_t a1)
{
  result = [PLDefaults BOOLForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  logMessage_fromFile_fromFunction_fromLineNumber__objectForKey = result;
  return result;
}

BOOL __65__PLCoreStorage_logMessage_fromFile_fromFunction_fromLineNumber___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults BOOLForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  logMessage_fromFile_fromFunction_fromLineNumber__objectForKey_949 = result;
  return result;
}

+ (id)additionalTables
{
  if (+[PLDefaults taskMode])
  {
    v2 = _additionalTables == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    v3 = [PLDefaults objectForKey:@"PLTaskingTables" ifNotSet:0];
    v4 = _additionalTables;
    _additionalTables = v3;

    if (!_additionalTables)
    {
      v5 = PLOSAPreferencesGetValue();
      v6 = _additionalTables;
      _additionalTables = v5;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = _additionalTables;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)attemptToSendTaskingStartNotification
{
  v3 = +[PLSubmissions sharedInstance];
  taskingStarted = [v3 taskingStarted];

  if (taskingStarted)
  {
    v6 = PLLogCommon(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1D8611000, v6, OS_LOG_TYPE_DEFAULT, "Tasking started, send out notification to inform clients.", v8, 2u);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"kPLTaskingStartNotification" object:self];

    notify_post("kPLTaskingStartNotificationGlobal");
  }
}

- (BOOL)registerDailyTasks_XPCActivity
{
  v15 = *MEMORY[0x1E69E9840];
  if (+[PLUtilities isLiteModeDaemon](PLUtilities, "isLiteModeDaemon") || (v3 = +[PLUtilities isFullModeDaemon]))
  {
    v4 = [PLDefaults doubleForKey:@"dbDailyTasksInterval" ifNotSet:*MEMORY[0x1E69E9CC0]];
    v6 = v5;
    v7 = PLLogCommon(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = v6;
      _os_log_impl(&dword_1D8611000, v7, OS_LOG_TYPE_DEFAULT, "Setting up dailyTasks XPC activity with dbDailyTasksInterval = %f", buf, 0xCu);
    }

    v8 = *MEMORY[0x1E69E9C50];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __62__PLCoreStorage_XPCScheduling__registerDailyTasks_XPCActivity__block_invoke_39;
    handler[3] = &unk_1E8519F60;
    v12 = v6;
    handler[4] = self;
    v11 = &__block_literal_global_18;
    xpc_activity_register("com.apple.powerlogd.dailyTasks", v8, handler);

    LOBYTE(v3) = 1;
  }

  return v3;
}

BOOL __62__PLCoreStorage_XPCScheduling__registerDailyTasks_XPCActivity__block_invoke(uint64_t a1, void *a2, xpc_activity_state_t a3)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v16[0] = &unk_1F5405D00;
  v16[1] = &unk_1F5405D18;
  v17[0] = @"RUN";
  v17[1] = @"DONE";
  v16[2] = &unk_1F5405D30;
  v16[3] = &unk_1F5405D48;
  v17[2] = @"WAIT";
  v17[3] = @"DEFER";
  v16[4] = &unk_1F5405D60;
  v17[4] = @"CONTINUE";
  v4 = MEMORY[0x1E695DF20];
  v5 = a2;
  v6 = [v4 dictionaryWithObjects:v17 forKeys:v16 count:5];
  v7 = xpc_activity_set_state(v5, a3);

  v9 = PLLogCommon(v8);
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x1E696AD98] numberWithLong:a3];
      v12 = [v6 objectForKeyedSubscript:v11];
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&dword_1D8611000, v10, OS_LOG_TYPE_DEFAULT, "registerDailyTasks: set XPC activity state to %@", &v14, 0xCu);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __62__PLCoreStorage_XPCScheduling__registerDailyTasks_XPCActivity__block_invoke_cold_1(a3, v6, v10);
  }

  return v7;
}

void __62__PLCoreStorage_XPCScheduling__registerDailyTasks_XPCActivity__block_invoke_39(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    if ((*(*(a1 + 40) + 16))())
    {
      if (xpc_activity_should_defer(v3))
      {
        (*(*(a1 + 40) + 16))();
      }

      else
      {
        [*(a1 + 32) dailyTasks];
        v12 = +[PLSubmissions sharedInstance];
        v13 = [v12 workQueue];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __62__PLCoreStorage_XPCScheduling__registerDailyTasks_XPCActivity__block_invoke_41;
        v14[3] = &unk_1E8519F38;
        v16 = *(a1 + 40);
        v15 = v3;
        dispatch_async(v13, v14);
      }
    }
  }

  else if (!state)
  {
    v5 = PLLogCommon(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_DEFAULT, "registerDailyTasks: Check in for XPC activity...", buf, 2u);
    }

    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v6, *MEMORY[0x1E69E9D88], 1);
    xpc_dictionary_set_int64(v6, *MEMORY[0x1E69E9CB0], *(a1 + 48));
    xpc_dictionary_set_string(v6, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D70]);
    v7 = *MEMORY[0x1E69E9CC8];
    xpc_dictionary_set_int64(v6, *MEMORY[0x1E69E9C68], 22 * *MEMORY[0x1E69E9CC8]);
    xpc_dictionary_set_int64(v6, *MEMORY[0x1E69E9C98], 2 * v7);
    v8 = xpc_activity_copy_criteria(v3);
    v9 = v8;
    if (v8 && (v8 = xpc_equal(v8, v6), (v8 & 1) != 0))
    {
      v10 = PLLogCommon(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v9;
        _os_log_impl(&dword_1D8611000, v10, OS_LOG_TYPE_DEFAULT, "registerDailyTasks: Existing criteria found { %@ }", buf, 0xCu);
      }
    }

    else
    {
      v11 = PLLogCommon(v8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v6;
        _os_log_impl(&dword_1D8611000, v11, OS_LOG_TYPE_DEFAULT, "registerDailyTasks: Existing criteria not found, setting default criteria { %@ }...", buf, 0xCu);
      }

      xpc_activity_set_criteria(v3, v6);
    }
  }
}

- (void)init
{
  filePath = [*self filePath];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1D8611000, v2, v3, "PLCoreStorage: Active DB Path = %@", v4, v5, v6, v7);
}

- (void)entriesForKey:withComparisons:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)entriesForKey:withComparisons:.cold.3()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __62__PLCoreStorage_XPCScheduling__registerDailyTasks_XPCActivity__block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD98] numberWithLong:a1];
  v6 = [a2 objectForKeyedSubscript:v5];
  v7 = 138412290;
  v8 = v6;
  _os_log_error_impl(&dword_1D8611000, a3, OS_LOG_TYPE_ERROR, "registerDailyTasks: failed to set XPC activity state to %@", &v7, 0xCu);
}

@end