@interface PLTimeManager
+ (id)sharedInstance;
- (PLSQLiteConnection)connection;
- (PLStorageOperator)storageOperator;
- (PLTimeManager)init;
- (double)hourBucketBaseSnapOffsetWithMonotonicTime:(int64_t)time;
- (double)hourBucketBaseSnapOffsetWithMonotonicTimeNow:(int64_t)now;
- (double)timeOffsetForTimeReference:(int64_t)reference;
- (double)timeZoneHourBucketShift:(double)shift;
- (id)bucketNSDate:(id)date withBucketInterval:(int)interval;
- (id)convertTime:(id)time fromTimeReference:(int64_t)reference toTimeReference:(int64_t)timeReference;
- (id)currentTimeFromTimeReference:(int64_t)reference toTimeReference:(int64_t)timeReference;
- (id)initialMonotonicTime;
- (id)storageQueue;
- (int)bucketTimeStampForDate:(id)date withTimeReference:(int64_t)reference withBucketInterval:(int)interval;
- (void)getBootSessionUUID;
- (void)initializeTimeOffsets;
- (void)logTimeEntry;
- (void)registerForTimeChangedCallbackWithIdentifier:(id)identifier forTimeReference:(int64_t)reference usingBlock:(id)block;
- (void)unregisterForTimeChangedCallbackWithIdentifier:(id)identifier forTimeReference:(int64_t)reference;
@end

@implementation PLTimeManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__PLTimeManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

uint64_t __31__PLTimeManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(objc_opt_class());
  sharedInstance_instance = v1;

  return MEMORY[0x1EEE66BB8](v1);
}

- (id)storageQueue
{
  v2 = [PLCoreStorage storageQueueNameForClass:objc_opt_class()];
  v3 = [PLUtilities workQueueForKey:v2];

  return v3;
}

- (PLTimeManager)init
{
  v21[4] = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = PLTimeManager;
  v2 = [(PLTimeManager *)&v19 init];
  if (v2)
  {
    v3 = +[PLSQLiteConnection sharedSQLiteConnection];
    objc_storeWeak(&v2->_connection, v3);

    v4 = [[PLTimeReference alloc] initWithTimeManager:v2 entryDefinitionKey:@"monotonic" timeReferenceType:0];
    v5 = [[PLTimeReferenceKernel alloc] initWithTimeManager:v2 entryDefinitionKey:@"kernel" timeReferenceType:2];
    v6 = [(PLTimeReferenceDynamic *)[PLTimeReferenceSystem alloc] initWithTimeManager:v2 entryDefinitionKey:@"system" timeReferenceType:1];
    v7 = [[PLTimeReferenceBaseband alloc] initWithTimeManager:v2 entryDefinitionKey:@"baseband" timeReferenceType:3];
    v20[0] = &unk_1F5405A78;
    v20[1] = &unk_1F5405A90;
    v21[0] = v4;
    v21[1] = v5;
    v20[2] = &unk_1F5405AA8;
    v20[3] = &unk_1F5405AC0;
    v21[2] = v6;
    v21[3] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];
    timeReferences = v2->_timeReferences;
    v2->_timeReferences = v8;

    v10 = [objc_opt_class() description];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __21__PLTimeManager_init__block_invoke;
    v17[3] = &unk_1E85196C8;
    v11 = v2;
    v18 = v11;
    [(PLTimeReferenceDynamic *)v6 registerForTimeChangedCallbackWithIdentifier:v10 usingBlock:v17];

    v12 = [objc_opt_class() description];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __21__PLTimeManager_init__block_invoke_25;
    v15[3] = &unk_1E85196C8;
    v13 = v11;
    v16 = v13;
    [(PLTimeReferenceDynamic *)v7 registerForTimeChangedCallbackWithIdentifier:v12 usingBlock:v15];

    [(PLTimeManager *)v13 getBootSessionUUID];
  }

  return v2;
}

uint64_t __21__PLTimeManager_init__block_invoke(uint64_t a1, double a2)
{
  v4 = PLLogTimeManager(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __21__PLTimeManager_init__block_invoke_cold_1(v4, v5, v6, v7, v8, v9, v10, v11, a2);
  }

  return [*(a1 + 32) logTimeEntry];
}

uint64_t __21__PLTimeManager_init__block_invoke_25(uint64_t a1, double a2)
{
  v4 = PLLogTimeManager(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __21__PLTimeManager_init__block_invoke_25_cold_1(v4, v5, v6, v7, v8, v9, v10, v11, a2);
  }

  return [*(a1 + 32) logTimeEntry];
}

- (void)getBootSessionUUID
{
  timeReferences = [(PLTimeManager *)self timeReferences];
  v2 = [timeReferences objectForKeyedSubscript:&unk_1F5405A90];
  [v2 setRebootOccurred:{+[PLUtilities deviceRebooted](PLUtilities, "deviceRebooted")}];
}

- (void)initializeTimeOffsets
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = PLLogTimeManager(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(PLTimeManager *)v3 initializeTimeOffsets];
  }

  v4 = [(PLOperator *)PLStorageOperator entryKeyForType:@"EventForward" andName:@"TimeOffset"];
  v5 = +[PowerlogCore sharedCore];
  storage = [v5 storage];
  v33 = v4;
  v7 = [storage lastEntriesForKey:v4 count:3 withFilters:0];
  reverseObjectEnumerator = [v7 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  timeReferences = [(PLTimeManager *)self timeReferences];
  v11 = [timeReferences objectForKeyedSubscript:&unk_1F5405A78];
  [v11 setOffset:0.0];

  timeReferences2 = [(PLTimeManager *)self timeReferences];
  v13 = [timeReferences2 objectForKeyedSubscript:&unk_1F5405A90];
  [v13 initializeOffsetWithEntries:allObjects];

  timeReferences3 = [(PLTimeManager *)self timeReferences];
  v15 = [timeReferences3 objectForKeyedSubscript:&unk_1F5405AA8];
  [v15 initializeOffsetWithEntries:allObjects];

  timeReferences4 = [(PLTimeManager *)self timeReferences];
  v17 = [timeReferences4 objectForKeyedSubscript:&unk_1F5405AC0];
  v32 = allObjects;
  [v17 initializeOffsetWithEntries:allObjects];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  timeReferences5 = [(PLTimeManager *)self timeReferences];
  allValues = [timeReferences5 allValues];

  v20 = [allValues countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v39;
    do
    {
      v23 = 0;
      do
      {
        if (*v39 != v22)
        {
          objc_enumerationMutation(allValues);
        }

        v24 = *(*(&v38 + 1) + 8 * v23);
        if (objc_opt_respondsToSelector())
        {
          [v24 registerForTimeChangedNotification];
        }

        ++v23;
      }

      while (v21 != v23);
      v21 = [allValues countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v21);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  timeReferences6 = [(PLTimeManager *)self timeReferences];
  allValues2 = [timeReferences6 allValues];

  v27 = [allValues2 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v35;
    do
    {
      v30 = 0;
      do
      {
        if (*v35 != v29)
        {
          objc_enumerationMutation(allValues2);
        }

        v31 = *(*(&v34 + 1) + 8 * v30);
        if (objc_opt_respondsToSelector())
        {
          [v31 registerForDayChangedNotification];
        }

        if (objc_opt_respondsToSelector())
        {
          [v31 registerForTimeZoneChangedNotification];
        }

        ++v30;
      }

      while (v28 != v30);
      v28 = [allValues2 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v28);
  }

  [(PLTimeManager *)self logTimeEntry];
}

- (id)initialMonotonicTime
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__PLTimeManager_initialMonotonicTime__block_invoke;
  block[3] = &unk_1E85190B8;
  block[4] = self;
  if (initialMonotonicTime_onceToken != -1)
  {
    dispatch_once(&initialMonotonicTime_onceToken, block);
  }

  return initialMonotonicTime_initialMonotonicTime;
}

void __37__PLTimeManager_initialMonotonicTime__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E695DF00] date];
  v2 = initialMonotonicTime_initialMonotonicTime;
  initialMonotonicTime_initialMonotonicTime = v1;

  if (+[PLDefaults debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __37__PLTimeManager_initialMonotonicTime__block_invoke_2;
    v13 = &__block_descriptor_40_e5_v8__0lu32l8;
    v14 = v3;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_0 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_0, &block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_0 == 1)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLTimeManager::initialMonotonicTime=%@", initialMonotonicTime_initialMonotonicTime, block, v11, v12, v13, v14];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeManager.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeManager initialMonotonicTime]_block_invoke"];
      [PLCoreStorage logMessage:v4 fromFile:v6 fromFunction:v7 fromLineNumber:160];

      v9 = PLLogCommon(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }
}

BOOL __37__PLTimeManager_initialMonotonicTime__block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_0 = result;
  return result;
}

- (double)timeOffsetForTimeReference:(int64_t)reference
{
  timeReferences = [(PLTimeManager *)self timeReferences];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:reference];
  v6 = [timeReferences objectForKeyedSubscript:v5];
  [v6 offset];
  v8 = v7;

  return v8;
}

- (id)currentTimeFromTimeReference:(int64_t)reference toTimeReference:(int64_t)timeReference
{
  timeReferences = [(PLTimeManager *)self timeReferences];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:reference];
  v9 = [timeReferences objectForKeyedSubscript:v8];
  currentTime = [v9 currentTime];
  v11 = [(PLTimeManager *)self convertTime:currentTime fromTimeReference:reference toTimeReference:timeReference];

  return v11;
}

- (id)convertTime:(id)time fromTimeReference:(int64_t)reference toTimeReference:(int64_t)timeReference
{
  timeCopy = time;
  timeReferences = [(PLTimeManager *)self timeReferences];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:timeReference];
  v11 = [timeReferences objectForKeyedSubscript:v10];
  timeReferences2 = [(PLTimeManager *)self timeReferences];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:reference];
  v14 = [timeReferences2 objectForKeyedSubscript:v13];
  v15 = [v14 removeTimeOffsetFromReferenceTime:timeCopy];

  v16 = [v11 addTimeOffsetToMonotonicTime:v15];

  return v16;
}

- (void)registerForTimeChangedCallbackWithIdentifier:(id)identifier forTimeReference:(int64_t)reference usingBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  timeReferences = [(PLTimeManager *)self timeReferences];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:reference];
  v11 = [timeReferences objectForKeyedSubscript:v10];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    timeReferences2 = [(PLTimeManager *)self timeReferences];
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:reference];
    v15 = [timeReferences2 objectForKeyedSubscript:v14];
    [v15 registerForTimeChangedCallbackWithIdentifier:identifierCopy usingBlock:blockCopy];
  }
}

- (void)unregisterForTimeChangedCallbackWithIdentifier:(id)identifier forTimeReference:(int64_t)reference
{
  identifierCopy = identifier;
  timeReferences = [(PLTimeManager *)self timeReferences];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:reference];
  v8 = [timeReferences objectForKeyedSubscript:v7];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    timeReferences2 = [(PLTimeManager *)self timeReferences];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:reference];
    v12 = [timeReferences2 objectForKeyedSubscript:v11];
    [v12 unregisterForTimeChangedCallbackWithIdentifier:identifierCopy];
  }
}

- (id)bucketNSDate:(id)date withBucketInterval:(int)interval
{
  v5 = MEMORY[0x1E695DF00];
  [date timeIntervalSince1970];
  v7 = (v6 / interval * interval);

  return [v5 dateWithTimeIntervalSince1970:v7];
}

- (double)hourBucketBaseSnapOffsetWithMonotonicTimeNow:(int64_t)now
{
  if (!now)
  {
    return 0.0;
  }

  monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
  v6 = [(PLTimeManager *)self convertTime:monotonicDate fromTimeReference:0 toTimeReference:now];
  v7 = [(PLTimeManager *)self bucketNSDate:v6 withBucketInterval:3600];
  v8 = [(PLTimeManager *)self bucketNSDate:monotonicDate withBucketInterval:3600];
  v9 = [(PLTimeManager *)self convertTime:v8 fromTimeReference:0 toTimeReference:now];
  [v9 timeIntervalSinceDate:v7];
  if (v10 >= 0.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v10 + 3600.0;
  }

  if (now == 1)
  {
    [(PLTimeManager *)self timeZoneHourBucketShift:v11];
    v11 = v12;
  }

  return v11;
}

- (double)timeZoneHourBucketShift:(double)shift
{
  systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
  secondsFromGMT = [systemTimeZone secondsFromGMT];
  HIDWORD(v6) = -2023406815 * secondsFromGMT + 9544368;
  LODWORD(v6) = HIDWORD(v6);
  if ((v6 >> 4) >= 0x123457)
  {
    v7 = 1800.0;
  }

  else
  {
    v7 = 0.0;
  }

  if (+[PLDefaults debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__PLTimeManager_timeZoneHourBucketShift___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (timeZoneHourBucketShift__defaultOnce != -1)
    {
      dispatch_once(&timeZoneHourBucketShift__defaultOnce, block);
    }

    if (timeZoneHourBucketShift__classDebugEnabled == 1)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"OffsetComputation: secondsFromGMT: %ld timeZoneDelta: %f", secondsFromGMT, *&v7];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeManager.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeManager timeZoneHourBucketShift:]"];
      [PLCoreStorage logMessage:v9 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:246];

      v14 = PLLogCommon(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v15 = -v7;
  if (v7 >= shift)
  {
    v15 = v7;
  }

  v16 = v15 + shift;

  return v16;
}

BOOL __41__PLTimeManager_timeZoneHourBucketShift___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  timeZoneHourBucketShift__classDebugEnabled = result;
  return result;
}

- (double)hourBucketBaseSnapOffsetWithMonotonicTime:(int64_t)time
{
  timeReferences = [(PLTimeManager *)self timeReferences];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:time];
  v6 = [timeReferences objectForKeyedSubscript:v5];
  [v6 getHourBucketOffset];
  v8 = v7;

  return v8;
}

- (int)bucketTimeStampForDate:(id)date withTimeReference:(int64_t)reference withBucketInterval:(int)interval
{
  v5 = *&interval;
  dateCopy = date;
  [(PLTimeManager *)self hourBucketBaseSnapOffsetWithMonotonicTime:reference];
  v10 = v9;
  v11 = [(PLTimeManager *)self bucketNSDate:dateCopy withBucketInterval:v5];
  [v11 timeIntervalSince1970];
  v13 = v12;

  v14 = v13;
  v15 = (v13 - v10);
  if (+[PLDefaults debugEnabled])
  {
    v16 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__PLTimeManager_bucketTimeStampForDate_withTimeReference_withBucketInterval___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v16;
    if (bucketTimeStampForDate_withTimeReference_withBucketInterval__defaultOnce != -1)
    {
      dispatch_once(&bucketTimeStampForDate_withTimeReference_withBucketInterval__defaultOnce, block);
    }

    if (bucketTimeStampForDate_withTimeReference_withBucketInterval__classDebugEnabled == 1)
    {
      v17 = MEMORY[0x1E696AEC0];
      v18 = [MEMORY[0x1E696AD98] numberWithInteger:reference];
      v19 = [v17 stringWithFormat:@"MonotonicDate %@, timeReference: %@, bucketInterval %d", dateCopy, v18, v5];

      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeManager.m"];
      lastPathComponent = [v20 lastPathComponent];
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeManager bucketTimeStampForDate:withTimeReference:withBucketInterval:]"];
      [PLCoreStorage logMessage:v19 fromFile:lastPathComponent fromFunction:v22 fromLineNumber:279];

      v24 = PLLogCommon(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v25 = v15 + v5;
  if (+[PLDefaults debugEnabled])
  {
    v26 = objc_opt_class();
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __77__PLTimeManager_bucketTimeStampForDate_withTimeReference_withBucketInterval___block_invoke_56;
    v59[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v59[4] = v26;
    if (bucketTimeStampForDate_withTimeReference_withBucketInterval__defaultOnce_54 != -1)
    {
      dispatch_once(&bucketTimeStampForDate_withTimeReference_withBucketInterval__defaultOnce_54, v59);
    }

    if (bucketTimeStampForDate_withTimeReference_withBucketInterval__classDebugEnabled_55 == 1)
    {
      v27 = MEMORY[0x1E696AEC0];
      v28 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v14];
      v29 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v15];
      v30 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v25];
      v31 = [v27 stringWithFormat:@"BucketTickInSameClock %@ LowerTick %@, UpperTick %@", v28, v29, v30];

      v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeManager.m"];
      lastPathComponent2 = [v32 lastPathComponent];
      v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeManager bucketTimeStampForDate:withTimeReference:withBucketInterval:]"];
      [PLCoreStorage logMessage:v31 fromFile:lastPathComponent2 fromFunction:v34 fromLineNumber:281];

      v36 = PLLogCommon(v35);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  [dateCopy timeIntervalSince1970];
  v38 = v37;
  v39 = +[PLDefaults debugEnabled];
  if (v38 < v25)
  {
    if (!v39)
    {
      goto LABEL_30;
    }

    v40 = objc_opt_class();
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __77__PLTimeManager_bucketTimeStampForDate_withTimeReference_withBucketInterval___block_invoke_62;
    v58[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v58[4] = v40;
    if (bucketTimeStampForDate_withTimeReference_withBucketInterval__defaultOnce_60 != -1)
    {
      dispatch_once(&bucketTimeStampForDate_withTimeReference_withBucketInterval__defaultOnce_60, v58);
    }

    if (bucketTimeStampForDate_withTimeReference_withBucketInterval__classDebugEnabled_61 != 1)
    {
      goto LABEL_30;
    }

    v41 = MEMORY[0x1E696AEC0];
    v42 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v15];
    v43 = [v41 stringWithFormat:@"Returning lowerTick %@", v42];

    v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeManager.m"];
    lastPathComponent3 = [v44 lastPathComponent];
    v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeManager bucketTimeStampForDate:withTimeReference:withBucketInterval:]"];
    [PLCoreStorage logMessage:v43 fromFile:lastPathComponent3 fromFunction:v46 fromLineNumber:284];

    v48 = PLLogCommon(v47);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }

LABEL_29:

LABEL_30:
    v25 = v15;
    goto LABEL_31;
  }

  if (v39)
  {
    v49 = objc_opt_class();
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __77__PLTimeManager_bucketTimeStampForDate_withTimeReference_withBucketInterval___block_invoke_68;
    v57[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v57[4] = v49;
    if (bucketTimeStampForDate_withTimeReference_withBucketInterval__defaultOnce_66 != -1)
    {
      dispatch_once(&bucketTimeStampForDate_withTimeReference_withBucketInterval__defaultOnce_66, v57);
    }

    if (bucketTimeStampForDate_withTimeReference_withBucketInterval__classDebugEnabled_67 == 1)
    {
      v50 = MEMORY[0x1E696AEC0];
      v51 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v25];
      v43 = [v50 stringWithFormat:@"Returning upperTick %@", v51];

      v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeManager.m"];
      lastPathComponent4 = [v52 lastPathComponent];
      v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeManager bucketTimeStampForDate:withTimeReference:withBucketInterval:]"];
      [PLCoreStorage logMessage:v43 fromFile:lastPathComponent4 fromFunction:v54 fromLineNumber:287];

      v48 = PLLogCommon(v55);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v15 = v25;
      goto LABEL_29;
    }
  }

LABEL_31:

  return v25;
}

BOOL __77__PLTimeManager_bucketTimeStampForDate_withTimeReference_withBucketInterval___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  bucketTimeStampForDate_withTimeReference_withBucketInterval__classDebugEnabled = result;
  return result;
}

BOOL __77__PLTimeManager_bucketTimeStampForDate_withTimeReference_withBucketInterval___block_invoke_56(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  bucketTimeStampForDate_withTimeReference_withBucketInterval__classDebugEnabled_55 = result;
  return result;
}

BOOL __77__PLTimeManager_bucketTimeStampForDate_withTimeReference_withBucketInterval___block_invoke_62(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  bucketTimeStampForDate_withTimeReference_withBucketInterval__classDebugEnabled_61 = result;
  return result;
}

BOOL __77__PLTimeManager_bucketTimeStampForDate_withTimeReference_withBucketInterval___block_invoke_68(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  bucketTimeStampForDate_withTimeReference_withBucketInterval__classDebugEnabled_67 = result;
  return result;
}

- (void)logTimeEntry
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = +[PLUtilities isPowerlogHelperd];
  if (v3 & 1) != 0 || (v3 = +[PLUtilities isPerfPowerMetricd](PLUtilities, "isPerfPowerMetricd"), (v3) || (v3 = +[PLUtilities shouldLogPreUnlockTelemetry], v3))
  {
    dictionary = PLLogTimeManager(v3);
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, dictionary, OS_LOG_TYPE_INFO, "Do not log to time offset table in pre unlock or in helperd case", buf, 2u);
    }
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    timeReferences = [(PLTimeManager *)self timeReferences];
    allValues = [timeReferences allValues];

    v7 = [allValues countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(allValues);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if ([v11 timeReferenceType])
          {
            v12 = MEMORY[0x1E696AD98];
            [v11 offset];
            v13 = [v12 numberWithDouble:?];
            entryDefinitionKey = [v11 entryDefinitionKey];
            [dictionary setObject:v13 forKeyedSubscript:entryDefinitionKey];
          }
        }

        v8 = [allValues countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v8);
    }

    storageOperator = [(PLTimeManager *)self storageOperator];
    [storageOperator logEventForwardTimeOffset:dictionary];
  }
}

- (PLStorageOperator)storageOperator
{
  WeakRetained = objc_loadWeakRetained(&self->_storageOperator);

  return WeakRetained;
}

- (PLSQLiteConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

void __21__PLTimeManager_init__block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  LODWORD(v9) = 134217984;
  *(&v9 + 4) = a9;
  OUTLINED_FUNCTION_0(&dword_1D8611000, a1, a3, "PLTimeManager::system time changed: delta=%f", a5, a6, a7, a8, v9, DWORD2(v9));
}

void __21__PLTimeManager_init__block_invoke_25_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  LODWORD(v9) = 134217984;
  *(&v9 + 4) = a9;
  OUTLINED_FUNCTION_0(&dword_1D8611000, a1, a3, "PLTimeManager::baseband time changed: delta=%f", a5, a6, a7, a8, v9, DWORD2(v9));
}

@end