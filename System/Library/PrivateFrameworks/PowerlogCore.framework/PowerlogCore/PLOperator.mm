@interface PLOperator
+ (BOOL)fullMode;
+ (BOOL)isDebugEnabled;
+ (BOOL)isDebugEnabledForKey:(id)key;
+ (BOOL)isEnabled;
+ (id)className;
+ (id)createEntriesForMetrics:(id)metrics withData:(id)data withDate:(id)date;
+ (id)entryDefinitions;
+ (id)entryKeyForType:(id)type andName:(id)name isDynamic:(BOOL)dynamic;
+ (id)entryKeys;
+ (id)operator;
+ (id)storageQueueName;
+ (id)trimConditionsWithEntryKey:(id)key withTrimDate:(id)date withCount:(id)count withStartDateKey:(id)dateKey;
+ (id)trimConditionsWithEntryKey:(id)key withTrimDate:(id)date withDuration:(id)duration withStartDateKey:(id)dateKey;
+ (void)load;
+ (void)setEnabled:(BOOL)enabled;
- (BOOL)defaultBoolForKey:(id)key;
- (BOOL)isDebugEnabled;
- (BOOL)isDebugEnabledForKey:(id)key;
- (BOOL)postFilteredNotificationForEntry:(id)entry withFilteredDefition:(id)defition withNotificationName:(id)name;
- (BOOL)shouldWriteEntry:(id)entry withDebug:(BOOL)debug;
- (NSString)className;
- (NSString)storageQueueName;
- (OS_dispatch_queue)storageQueue;
- (OS_dispatch_queue)workQueue;
- (PLCoreStorage)storage;
- (PLOperator)init;
- (double)defaultDoubleForKey:(id)key;
- (double)timeIntervalSinceLastLogForEntryKey:(id)key;
- (id)defaultObjectForKey:(id)key;
- (id)entryDefinitions;
- (id)entryKeys;
- (id)initForTest;
- (id)tablesToTrimConditionsForTrimDate:(id)date;
- (id)trimConditionsForEntryKey:(id)key forTrimDate:(id)date;
- (int64_t)defaultLongForKey:(id)key;
- (void)dealloc;
- (void)enableBufferFlushTimer:(unint64_t)timer;
- (void)flushBuffer;
- (void)logDMAEntry:(id)entry;
- (void)logEntries:(id)entries withGroupID:(id)d;
- (void)logEntry:(id)entry;
- (void)logForSubsystem:(id)subsystem category:(id)category data:(id)data date:(id)date;
- (void)logFromCFCallback:(id)callback;
- (void)logProportionateAggregateEntry:(id)entry withStartDate:(id)date withEndDate:(id)endDate;
- (void)logRequestNotification:(id)notification;
- (void)postEntries:(id)entries;
- (void)postEntries:(id)entries withGroupID:(id)d;
- (void)setupFilterRequest:(id)request;
- (void)subscribeNotificationsForEntries;
- (void)updateEntry:(id)entry withBlock:(id)block;
@end

@implementation PLOperator

+ (id)className
{
  if (className_onceToken != -1)
  {
    +[PLOperator className];
  }

  dispatch_semaphore_wait(className__classNamesSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v2 = [className__classNames objectForKeyedSubscript:objc_opt_class()];

  if (!v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    [className__classNames setObject:v4 forKeyedSubscript:objc_opt_class()];
  }

  v5 = [className__classNames objectForKeyedSubscript:objc_opt_class()];
  dispatch_semaphore_signal(className__classNamesSemaphore);

  return v5;
}

- (OS_dispatch_queue)workQueue
{
  v2 = objc_opt_class();

  return [PLUtilities workQueueForClass:v2];
}

- (PLCoreStorage)storage
{
  v2 = +[PowerlogCore sharedCore];
  storage = [v2 storage];

  return storage;
}

+ (id)storageQueueName
{
  if (storageQueueName_onceToken != -1)
  {
    +[PLOperator storageQueueName];
  }

  v3 = storageQueueName__storageQueueNames;
  objc_sync_enter(v3);
  v4 = [storageQueueName__storageQueueNames objectForKeyedSubscript:objc_opt_class()];

  if (!v4)
  {
    v5 = [PLCoreStorage storageQueueNameForClass:self];
    [storageQueueName__storageQueueNames setObject:v5 forKeyedSubscript:objc_opt_class()];
  }

  v6 = [storageQueueName__storageQueueNames objectForKeyedSubscript:objc_opt_class()];
  objc_sync_exit(v3);

  return v6;
}

- (OS_dispatch_queue)storageQueue
{
  storageQueueName = [(PLOperator *)self storageQueueName];
  v3 = [PLUtilities workQueueForKey:storageQueueName];

  return v3;
}

- (NSString)storageQueueName
{
  v2 = objc_opt_class();

  return [v2 storageQueueName];
}

- (BOOL)isDebugEnabled
{
  v2 = objc_opt_class();

  return [v2 isDebugEnabled];
}

+ (BOOL)isDebugEnabled
{
  if ([PLDefaults isClassDebugEnabled:objc_opt_class()])
  {
    return 1;
  }

  v3 = objc_opt_class();

  return [PLDefaults isClassDebugEnabled:v3];
}

- (NSString)className
{
  v2 = objc_opt_class();

  return [v2 className];
}

+ (void)load
{
  v2 = objc_opt_class();
  if (v2 != objc_opt_class())
  {
    v3 = objc_opt_class();

    [PLCoreOperator registerOperator:v3];
  }
}

uint64_t __23__PLOperator_className__block_invoke()
{
  v0 = objc_opt_new();
  v1 = className__classNames;
  className__classNames = v0;

  v2 = dispatch_semaphore_create(1);
  className__classNamesSemaphore = v2;

  return MEMORY[0x1EEE66BB8](v2);
}

uint64_t __30__PLOperator_storageQueueName__block_invoke()
{
  v0 = objc_opt_new();
  storageQueueName__storageQueueNames = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

+ (id)operator
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)entryKeyForType:(id)type andName:(id)name isDynamic:(BOOL)dynamic
{
  dynamicCopy = dynamic;
  nameCopy = name;
  typeCopy = type;
  className = [self className];
  v11 = [PLEntryKey entryKeyForOperatorName:className withType:typeCopy withName:nameCopy isDynamic:dynamicCopy];

  return v11;
}

+ (BOOL)isEnabled
{
  v2 = MEMORY[0x1E696AEC0];
  className = [self className];
  v4 = [v2 stringWithFormat:@"%@%@", className, @"_Enabled"];

  LOBYTE(className) = [PLDefaults BOOLForKey:v4 ifNotSet:1];
  return className;
}

+ (void)setEnabled:(BOOL)enabled
{
  v7 = [MEMORY[0x1E696AD98] numberWithBool:enabled];
  v4 = MEMORY[0x1E696AEC0];
  className = [self className];
  v6 = [v4 stringWithFormat:@"%@%@", className, @"_Enabled"];
  [PLDefaults setObject:v7 forKey:v6];
}

+ (BOOL)isDebugEnabledForKey:(id)key
{
  keyCopy = key;
  v4 = [PLDefaults isClassDebugEnabled:objc_opt_class() forKey:keyCopy]|| [PLDefaults isClassDebugEnabled:objc_opt_class() forKey:keyCopy];

  return v4;
}

+ (BOOL)fullMode
{
  v2 = objc_opt_class();

  return [PLDefaults fullModeForClass:v2];
}

+ (id)entryDefinitions
{
  v2 = objc_opt_class();

  return [PLEntryDefinition entryDefinitionsForOperatorClass:v2];
}

+ (id)entryKeys
{
  v2 = objc_opt_class();

  return [PLEntryKey entryKeysForOperatorClass:v2];
}

- (PLOperator)init
{
  v39.receiver = self;
  v39.super_class = PLOperator;
  v2 = [(PLOperator *)&v39 init];
  if (v2)
  {
    v3 = objc_opt_new();
    lastLogDateForEntryKey = v2->_lastLogDateForEntryKey;
    v2->_lastLogDateForEntryKey = v3;

    if (+[PLDefaults debugEnabled])
    {
      v5 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __18__PLOperator_init__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v5;
      if (init_defaultOnce_2 != -1)
      {
        dispatch_once(&init_defaultOnce_2, block);
      }

      if (init_classDebugEnabled_2 == 1)
      {
        v6 = MEMORY[0x1E696AEC0];
        className = [(PLOperator *)v2 className];
        v8 = [v6 stringWithFormat:@"*** Debug enabled for %@ ***", className];

        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
        lastPathComponent = [v9 lastPathComponent];
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator init]"];
        [PLCoreStorage logMessage:v8 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:183];

        v13 = PLLogCommon(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    if (+[PLDefaults debugEnabled])
    {
      v14 = objc_opt_class();
      v32 = MEMORY[0x1E69E9820];
      v33 = 3221225472;
      v34 = __18__PLOperator_init__block_invoke_39;
      v35 = &unk_1E8519630;
      v36 = @"entryDefinitions";
      v37 = v14;
      if (init_defaultOnce_37 != -1)
      {
        dispatch_once(&init_defaultOnce_37, &v32);
      }

      v15 = init_classDebugEnabled_38;

      if (v15 == 1)
      {
        v16 = MEMORY[0x1E696AEC0];
        entryDefinitions = [objc_opt_class() entryDefinitions];
        v18 = [v16 stringWithFormat:@"%@", entryDefinitions, v32, v33, v34, v35];

        v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
        lastPathComponent2 = [v19 lastPathComponent];
        v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator init]"];
        [PLCoreStorage logMessage:v18 fromFile:lastPathComponent2 fromFunction:v21 fromLineNumber:184];

        v23 = PLLogCommon(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    if ([(PLOperator *)v2 isDebugEnabled])
    {
      v24 = MEMORY[0x1E696AEC0];
      className2 = [(PLOperator *)v2 className];
      v26 = [v24 stringWithFormat:@"com.apple.powerlogd.%@.log", className2];

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, didReceiveLogNotification, v26, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    v28 = objc_opt_new();
    [(PLOperator *)v2 setFilterDefinitions:v28];

    v29 = objc_opt_new();
    [(PLOperator *)v2 setFilterDeltaLastEntryIDs:v29];

    v30 = objc_opt_new();
    [(PLOperator *)v2 setBufferedEntries:v30];

    [(PLOperator *)v2 setTriggerBufferFlush:0];
    [(PLOperator *)v2 subscribeNotificationsForEntries];
  }

  return v2;
}

BOOL __18__PLOperator_init__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  init_classDebugEnabled_2 = result;
  return result;
}

BOOL __18__PLOperator_init__block_invoke_39(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  init_classDebugEnabled_38 = result;
  return result;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = PLOperator;
  [(PLOperator *)&v5 dealloc];
}

- (id)defaultObjectForKey:(id)key
{
  keyCopy = key;
  v5 = MEMORY[0x1E696AEC0];
  className = [(PLOperator *)self className];
  keyCopy = [v5 stringWithFormat:@"%@_%@", className, keyCopy];

  v8 = [PLDefaults objectForKey:keyCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    defaults = [objc_opt_class() defaults];
    v10 = [defaults objectForKeyedSubscript:keyCopy];
  }

  return v10;
}

- (BOOL)defaultBoolForKey:(id)key
{
  v3 = [(PLOperator *)self defaultObjectForKey:key];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (double)defaultDoubleForKey:(id)key
{
  v3 = [(PLOperator *)self defaultObjectForKey:key];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (int64_t)defaultLongForKey:(id)key
{
  v3 = [(PLOperator *)self defaultObjectForKey:key];
  longValue = [v3 longValue];

  return longValue;
}

- (BOOL)isDebugEnabledForKey:(id)key
{
  keyCopy = key;
  v4 = [objc_opt_class() isDebugEnabledForKey:keyCopy];

  return v4;
}

- (id)initForTest
{
  v3.receiver = self;
  v3.super_class = PLOperator;
  return [(PLOperator *)&v3 init];
}

- (double)timeIntervalSinceLastLogForEntryKey:(id)key
{
  keyCopy = key;
  v5 = self->_lastLogDateForEntryKey;
  objc_sync_enter(v5);
  lastLogDateForEntryKey = [(PLOperator *)self lastLogDateForEntryKey];
  v7 = [lastLogDateForEntryKey objectForKeyedSubscript:keyCopy];

  if (v7)
  {
    lastLogDateForEntryKey2 = [(PLOperator *)self lastLogDateForEntryKey];
    lastLogDateForEntryKey3 = [lastLogDateForEntryKey2 objectForKeyedSubscript:keyCopy];
    [lastLogDateForEntryKey3 timeIntervalSinceMonitonicNow];
    v11 = -v10;
  }

  else
  {
    lastLogDateForEntryKey2 = [MEMORY[0x1E695DF00] monotonicDate];
    lastLogDateForEntryKey3 = [(PLOperator *)self lastLogDateForEntryKey];
    [lastLogDateForEntryKey3 setObject:lastLogDateForEntryKey2 forKeyedSubscript:keyCopy];
    v11 = INFINITY;
  }

  objc_sync_exit(v5);
  return v11;
}

- (void)logFromCFCallback:(id)callback
{
  callbackCopy = callback;
  workQueue = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__PLOperator_logFromCFCallback___block_invoke;
  v7[3] = &unk_1E8519100;
  v7[4] = self;
  v8 = callbackCopy;
  v6 = callbackCopy;
  dispatch_async(workQueue, v7);
}

void __32__PLOperator_logFromCFCallback___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (+[PLDefaults debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__PLOperator_logFromCFCallback___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (ArrayReserved_block_invoke_defaultOnce_1 != -1)
    {
      dispatch_once(&ArrayReserved_block_invoke_defaultOnce_1, block);
    }

    if (ArrayReserved_block_invoke_classDebugEnabled_1 == 1)
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = [*(a1 + 32) className];
      v6 = [v4 stringWithFormat:@"%@ got CFCallback %@", v5, *(a1 + 40)];

      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator logFromCFCallback:]_block_invoke"];
      [PLCoreStorage logMessage:v6 fromFile:v8 fromFunction:v9 fromLineNumber:306];

      v11 = PLLogCommon(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  [*(a1 + 32) log];
  objc_autoreleasePoolPop(v2);
}

BOOL __32__PLOperator_logFromCFCallback___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  ArrayReserved_block_invoke_classDebugEnabled_1 = result;
  return result;
}

- (void)flushBuffer
{
  if (+[PLDefaults debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __25__PLOperator_flushBuffer__block_invoke;
    v21 = &__block_descriptor_40_e5_v8__0lu32l8;
    v22 = v3;
    if (flushBuffer_defaultOnce != -1)
    {
      dispatch_once(&flushBuffer_defaultOnce, &block);
    }

    if (flushBuffer_classDebugEnabled == 1)
    {
      v4 = MEMORY[0x1E696AEC0];
      bufferedEntries = [(PLOperator *)self bufferedEntries];
      v6 = [bufferedEntries count];
      v7 = [v4 stringWithFormat:@"Flushing buffer, queue size %lu", v6, block, v19, v20, v21, v22];

      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator flushBuffer]"];
      [PLCoreStorage logMessage:v7 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:315];

      v12 = PLLogCommon(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  bufferedEntries2 = [(PLOperator *)self bufferedEntries];
  v14 = [bufferedEntries2 count];

  if (v14)
  {
    bufferedEntries3 = [(PLOperator *)self bufferedEntries];
    v16 = objc_opt_new();
    [(PLOperator *)self setBufferedEntries:v16];

    storage = [(PLOperator *)self storage];
    [storage writeEntries:bufferedEntries3 withCompletionBlock:&__block_literal_global_65];
  }
}

BOOL __25__PLOperator_flushBuffer__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  flushBuffer_classDebugEnabled = result;
  return result;
}

- (void)enableBufferFlushTimer:(unint64_t)timer
{
  triggerBufferFlush = [(PLOperator *)self triggerBufferFlush];

  if (!triggerBufferFlush)
  {
    v6 = [PLTimer alloc];
    date = [MEMORY[0x1E695DF00] date];
    timerCopy = timer;
    workQueue = [(PLOperator *)self workQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __37__PLOperator_enableBufferFlushTimer___block_invoke;
    v11[3] = &unk_1E8519A18;
    v11[4] = self;
    v10 = [(PLTimer *)v6 initWithFireDate:date withInterval:1 withTolerance:0 repeats:workQueue withUserInfo:v11 withQueue:timerCopy withBlock:0.0];
    [(PLOperator *)self setTriggerBufferFlush:v10];
  }
}

void __37__PLOperator_enableBufferFlushTimer___block_invoke(uint64_t a1)
{
  [*(a1 + 32) flushBuffer];
  if (+[PLDefaults debugEnabled])
  {
    v1 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__PLOperator_enableBufferFlushTimer___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v1;
    if (ArrayReserved_block_invoke_2_defaultOnce_0 != -1)
    {
      dispatch_once(&ArrayReserved_block_invoke_2_defaultOnce_0, block);
    }

    if (ArrayReserved_block_invoke_2_classDebugEnabled_0 == 1)
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Timer triggered flush buffer"];
      v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
      v4 = [v3 lastPathComponent];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator enableBufferFlushTimer:]_block_invoke"];
      [PLCoreStorage logMessage:v2 fromFile:v4 fromFunction:v5 fromLineNumber:334];

      v7 = PLLogCommon(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }
}

BOOL __37__PLOperator_enableBufferFlushTimer___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  ArrayReserved_block_invoke_2_classDebugEnabled_0 = result;
  return result;
}

- (void)logProportionateAggregateEntry:(id)entry withStartDate:(id)date withEndDate:(id)endDate
{
  entryCopy = entry;
  dateCopy = date;
  endDateCopy = endDate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!entryCopy)
    {
      goto LABEL_15;
    }
  }

  else
  {
    storage = [(PLOperator *)self storage];
    storageReady = [storage storageReady];

    if (!entryCopy || (storageReady & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  entryKey = [entryCopy entryKey];
  v14 = [PLUtilities shouldLogForEntryKey:entryKey];

  if (v14)
  {
    if ([(PLOperator *)self isDebugEnabledForKey:@"logEntry"])
    {
      entryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", entryCopy];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
      lastPathComponent = [v16 lastPathComponent];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator logProportionateAggregateEntry:withStartDate:withEndDate:]"];
      [PLCoreStorage logMessage:entryCopy fromFile:lastPathComponent fromFunction:v18 fromLineNumber:350];

      v20 = PLLogCommon(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }

    entryDefinition = [entryCopy entryDefinition];
    v22 = [PLEntryDefinition isAggregateForEntryDefinition:entryDefinition];

    if (v22)
    {
      v23 = self->_lastLogDateForEntryKey;
      objc_sync_enter(v23);
      monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
      lastLogDateForEntryKey = [(PLOperator *)self lastLogDateForEntryKey];
      entryKey2 = [entryCopy entryKey];
      [lastLogDateForEntryKey setObject:monotonicDate forKeyedSubscript:entryKey2];

      objc_sync_exit(v23);
      if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
      {
        storage2 = [(PLOperator *)self storage];
        [storage2 writeProportionateAggregateEntry:entryCopy withStartDate:dateCopy withEndDate:endDateCopy];
      }
    }
  }

LABEL_15:
}

- (void)logEntry:(id)entry
{
  v76[1] = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!entryCopy)
    {
      goto LABEL_41;
    }
  }

  else
  {
    storage = [(PLOperator *)self storage];
    storageReady = [storage storageReady];

    if (!entryCopy || (storageReady & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  entryKey = [entryCopy entryKey];
  v8 = [PLUtilities shouldLogForEntryKey:entryKey];

  if (!v8)
  {
    goto LABEL_41;
  }

  v9 = [(PLOperator *)self isDebugEnabledForKey:@"logEntry"];
  if (v9)
  {
    entryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", entryCopy];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
    lastPathComponent = [v11 lastPathComponent];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator logEntry:]"];
    [PLCoreStorage logMessage:entryCopy fromFile:lastPathComponent fromFunction:v13 fromLineNumber:372];

    v15 = PLLogCommon(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }
  }

  entryDefinition = [entryCopy entryDefinition];
  v17 = [PLEntryDefinition isAggregateForEntryDefinition:entryDefinition];

  if (v17)
  {
    v18 = self->_lastLogDateForEntryKey;
    objc_sync_enter(v18);
    monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
    lastLogDateForEntryKey = [(PLOperator *)self lastLogDateForEntryKey];
    entryKey2 = [entryCopy entryKey];
    [lastLogDateForEntryKey setObject:monotonicDate forKeyedSubscript:entryKey2];

    objc_sync_exit(v18);
    if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
    {
      storage2 = [(PLOperator *)self storage];
      [storage2 writeAggregateEntry:entryCopy];
    }

    goto LABEL_41;
  }

  if (![(PLOperator *)self shouldWriteEntry:entryCopy withDebug:v9])
  {
    goto LABEL_41;
  }

  v23 = self->_lastLogDateForEntryKey;
  objc_sync_enter(v23);
  monotonicDate2 = [MEMORY[0x1E695DF00] monotonicDate];
  lastLogDateForEntryKey2 = [(PLOperator *)self lastLogDateForEntryKey];
  entryKey3 = [entryCopy entryKey];
  [lastLogDateForEntryKey2 setObject:monotonicDate2 forKeyedSubscript:entryKey3];

  objc_sync_exit(v23);
  entryKey4 = [entryCopy entryKey];
  v28 = [PLEntryDefinition definitionForEntryKey:entryKey4];
  v29 = [v28 objectForKeyedSubscript:?];
  v30 = [v29 objectForKeyedSubscript:@"BufferEntries"];
  LODWORD(entryKey3) = [v30 BOOLValue];

  if (entryKey3)
  {
    entryKey5 = [entryCopy entryKey];
    v31 = [PLEntryDefinition definitionForEntryKey:entryKey5];
    v32 = [v31 objectForKeyedSubscript:@"Configs"];
    v33 = [v32 objectForKeyedSubscript:?];
    if (v33)
    {
      entryKey6 = [entryCopy entryKey];
      v35 = [PLEntryDefinition definitionForEntryKey:entryKey6];
      v36 = [v35 objectForKeyedSubscript:@"Configs"];
      v37 = [v36 objectForKeyedSubscript:@"BufferFlushInterval"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        entryKey7 = [entryCopy entryKey];
        v39 = [PLEntryDefinition definitionForEntryKey:entryKey7];
        v40 = [v39 objectForKeyedSubscript:@"Configs"];
        v41 = [v40 objectForKeyedSubscript:@"BufferFlushInterval"];
        unsignedIntValue = [v41 unsignedIntValue];

        v43 = unsignedIntValue;
        goto LABEL_25;
      }
    }

    else
    {
    }

    v43 = 10;
LABEL_25:
    [(PLOperator *)self enableBufferFlushTimer:v43];
    bufferedEntries = [(PLOperator *)self bufferedEntries];
    [bufferedEntries addObject:entryCopy];

    if (v9)
    {
      v46 = MEMORY[0x1E696AEC0];
      bufferedEntries2 = [(PLOperator *)self bufferedEntries];
      v48 = [v46 stringWithFormat:@"Added entry onto queue, queue size: %lu", objc_msgSend(bufferedEntries2, "count")];

      v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
      lastPathComponent2 = [v49 lastPathComponent];
      v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator logEntry:]"];
      [PLCoreStorage logMessage:v48 fromFile:lastPathComponent2 fromFunction:v51 fromLineNumber:400];

      v53 = PLLogCommon(v52);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }

    entryKey8 = [entryCopy entryKey];
    v55 = [PLEntryDefinition definitionForEntryKey:entryKey8];
    v56 = [v55 objectForKeyedSubscript:@"Configs"];
    v57 = [v56 objectForKeyedSubscript:?];
    if (v57)
    {
      entryKey9 = [entryCopy entryKey];
      v59 = [PLEntryDefinition definitionForEntryKey:entryKey9];
      v60 = [v59 objectForKeyedSubscript:@"Configs"];
      v61 = [v60 objectForKeyedSubscript:@"BufferSize"];
      objc_opt_class();
      v72 = objc_opt_isKindOfClass();

      if (v72)
      {
        entryKey10 = [entryCopy entryKey];
        v63 = [PLEntryDefinition definitionForEntryKey:entryKey10];
        v64 = [v63 objectForKeyedSubscript:@"Configs"];
        v65 = [v64 objectForKeyedSubscript:@"BufferSize"];
        unsignedIntValue2 = [v65 unsignedIntValue];

        v67 = unsignedIntValue2;
        goto LABEL_34;
      }
    }

    else
    {
    }

    v67 = 10;
LABEL_34:
    bufferedEntries3 = [(PLOperator *)self bufferedEntries];
    v69 = [bufferedEntries3 count] < v67;

    if (!v69)
    {
      [(PLOperator *)self flushBuffer];
    }

    goto LABEL_37;
  }

  if (+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd])
  {
    v76[0] = entryCopy;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:1];
    [(PLOperator *)self postEntries:v44];
  }

  else
  {
    storage3 = [(PLOperator *)self storage];
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __23__PLOperator_logEntry___block_invoke;
    v74[3] = &unk_1E8519100;
    v74[4] = self;
    v75 = entryCopy;
    [storage3 writeEntry:v75 withCompletionBlock:v74];
  }

LABEL_37:
  if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd](PLUtilities, "isPerfPowerMetricd") && [entryCopy hasDMAKeys])
  {
    [(PLOperator *)self logDMAEntry:entryCopy];
  }

LABEL_41:
}

void __23__PLOperator_logEntry___block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v3[0] = *(a1 + 40);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  [v1 postEntries:v2];
}

- (void)logEntries:(id)entries withGroupID:(id)d
{
  v52 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  dCopy = d;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (-[PLOperator storage](self, "storage"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 storageReady], v8, v9))
  {
    v36 = dCopy;
    v37 = entriesCopy;
    if ([(PLOperator *)self isDebugEnabledForKey:@"logEntry"]|| [(PLOperator *)self isDebugEnabledForKey:@"logEntries"])
    {
      entriesCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", entriesCopy];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator logEntries:withGroupID:]"];
      [PLCoreStorage logMessage:entriesCopy fromFile:lastPathComponent fromFunction:v13 fromLineNumber:453];

      v15 = PLLogCommon(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      entriesCopy = v37;
    }

    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    v46 = 0u;
    v16 = entriesCopy;
    v17 = [v16 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v47;
      v20 = 0x1E8518000uLL;
      v21 = 0x1E8518000uLL;
      v38 = *v47;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v47 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v23 = *(*(&v46 + 1) + 8 * i);
          v24 = [*(v20 + 2256) isAggregateForEntryKey:v23];
          isPowerlogHelperd = [*(v21 + 2584) isPowerlogHelperd];
          if (v24)
          {
            if ((isPowerlogHelperd & 1) == 0 && ([*(v21 + 2584) isPerfPowerMetricd] & 1) == 0)
            {
              v44 = 0u;
              v45 = 0u;
              v42 = 0u;
              v43 = 0u;
              v26 = [v16 objectForKeyedSubscript:v23];
              v27 = [v26 countByEnumeratingWithState:&v42 objects:v50 count:16];
              if (v27)
              {
                v28 = v27;
                v29 = *v43;
                do
                {
                  for (j = 0; j != v28; ++j)
                  {
                    if (*v43 != v29)
                    {
                      objc_enumerationMutation(v26);
                    }

                    v31 = *(*(&v42 + 1) + 8 * j);
                    storage = [(PLOperator *)self storage];
                    [storage writeAggregateEntry:v31];
                  }

                  v28 = [v26 countByEnumeratingWithState:&v42 objects:v50 count:16];
                }

                while (v28);
              }

              v19 = v38;
              v20 = 0x1E8518000;
              v21 = 0x1E8518000;
            }
          }

          else if (isPowerlogHelperd & 1) != 0 || ([*(v21 + 2584) isPerfPowerMetricd])
          {
            v33 = [v16 objectForKeyedSubscript:v23];
            [(PLOperator *)self postEntries:v33];
          }

          else
          {
            storage2 = [(PLOperator *)self storage];
            v35 = [v16 objectForKeyedSubscript:v23];
            v39[0] = MEMORY[0x1E69E9820];
            v39[1] = 3221225472;
            v39[2] = __37__PLOperator_logEntries_withGroupID___block_invoke;
            v39[3] = &unk_1E8519AF8;
            v39[4] = self;
            v40 = v16;
            v41 = v23;
            [storage2 writeEntries:v35 withCompletionBlock:v39];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v18);
    }

    dCopy = v36;
    [(PLOperator *)self postEntries:v16 withGroupID:v36];
    entriesCopy = v37;
  }
}

void __37__PLOperator_logEntries_withGroupID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
  [v1 postEntries:v2];
}

- (void)updateEntry:(id)entry withBlock:(id)block
{
  entryCopy = entry;
  blockCopy = block;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = 0;
    if (!entryCopy)
    {
      goto LABEL_11;
    }
  }

  else
  {
    storage = [(PLOperator *)self storage];
    v8 = [storage storageReady] ^ 1;

    if (!entryCopy)
    {
      goto LABEL_11;
    }
  }

  if ((v8 & 1) == 0)
  {
    if (+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd])
    {
      workQueue = [(PLOperator *)self workQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __36__PLOperator_updateEntry_withBlock___block_invoke_3;
      block[3] = &unk_1E8519100;
      v11 = v14;
      v14[0] = entryCopy;
      v14[1] = self;
      dispatch_async(workQueue, block);
    }

    else
    {
      storage2 = [(PLOperator *)self storage];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __36__PLOperator_updateEntry_withBlock___block_invoke;
      v15[3] = &unk_1E851B518;
      v11 = &v17;
      v17 = blockCopy;
      v15[4] = self;
      v16 = entryCopy;
      [storage2 updateEntry:v16 withBlock:v15];

      workQueue = v16;
    }
  }

LABEL_11:
}

void __36__PLOperator_updateEntry_withBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) workQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__PLOperator_updateEntry_withBlock___block_invoke_2;
  v6[3] = &unk_1E8519100;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  dispatch_async(v3, v6);
}

void __36__PLOperator_updateEntry_withBlock___block_invoke_2(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v7 = @"entry";
  v8[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [*(a1 + 32) entryKey];
  v6 = [v4 stringWithFormat:@"%@_update", v5];
  [PLUtilities postNotificationName:v6 object:*(a1 + 40) userInfo:v3];
}

void __36__PLOperator_updateEntry_withBlock___block_invoke_3(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v7 = @"entry";
  v8[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [*(a1 + 32) entryKey];
  v6 = [v4 stringWithFormat:@"%@_update", v5];
  [PLUtilities postNotificationName:v6 object:*(a1 + 40) userInfo:v3];
}

- (BOOL)shouldWriteEntry:(id)entry withDebug:(BOOL)debug
{
  debugCopy = debug;
  entryCopy = entry;
  if (([entryCopy isErrorEntry] & 1) == 0)
  {
    if (![entryCopy filterEntryLogging])
    {
      v7 = 1;
      goto LABEL_22;
    }

    storage = [(PLOperator *)self storage];
    entryKey = [entryCopy entryKey];
    v10 = [storage lastEntryForKey:entryKey];

    if (debugCopy)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"lastEntry=%@", v10];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator shouldWriteEntry:withDebug:]"];
      [PLCoreStorage logMessage:v11 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:517];

      v16 = PLLogCommon(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      if (v10)
      {
        v17 = [entryCopy compare:v10 options:2];
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"result=%ld", v17];
        v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
        lastPathComponent2 = [v19 lastPathComponent];
        v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator shouldWriteEntry:withDebug:]"];
        [PLCoreStorage logMessage:v18 fromFile:lastPathComponent2 fromFunction:v21 fromLineNumber:520];

        v23 = PLLogCommon(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

        if (!v17)
        {
          v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"skipping logging"];
          v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
          lastPathComponent3 = [v25 lastPathComponent];
          v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator shouldWriteEntry:withDebug:]"];
          [PLCoreStorage logMessage:v24 fromFile:lastPathComponent3 fromFunction:v27 fromLineNumber:522];

          v29 = PLLogCommon(v28);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }

          goto LABEL_18;
        }
      }
    }

    else if (v10 && ![entryCopy compare:v10 options:2])
    {
LABEL_18:
      entryKey2 = [entryCopy entryKey];
      v31 = [entryKey2 rangeOfString:@"EventBackward"];

      if (v31 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v36[0] = 0;
        v36[1] = v36;
        v36[2] = 0x3032000000;
        v36[3] = __Block_byref_object_copy__19;
        v36[4] = __Block_byref_object_dispose__19;
        v37 = entryCopy;
        v34[0] = 0;
        v34[1] = v34;
        v34[2] = 0x3032000000;
        v34[3] = __Block_byref_object_copy__19;
        v34[4] = __Block_byref_object_dispose__19;
        v35 = v10;
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __41__PLOperator_shouldWriteEntry_withDebug___block_invoke;
        v33[3] = &unk_1E8519198;
        v33[4] = v34;
        v33[5] = v36;
        [(PLOperator *)self updateEntry:v35 withBlock:v33];
        _Block_object_dispose(v34, 8);

        _Block_object_dispose(v36, 8);
      }

      v7 = 0;
      goto LABEL_21;
    }

    v7 = 1;
LABEL_21:

    goto LABEL_22;
  }

  v7 = 0;
LABEL_22:

  return v7;
}

void __41__PLOperator_shouldWriteEntry_withDebug___block_invoke(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) entryDate];
  [*(*(*(a1 + 32) + 8) + 40) setEntryDate:v2];
}

- (void)postEntries:(id)entries
{
  entriesCopy = entries;
  v5 = entriesCopy;
  if (entriesCopy && [entriesCopy count])
  {
    workQueue = [(PLOperator *)self workQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __26__PLOperator_postEntries___block_invoke;
    v7[3] = &unk_1E8519100;
    v8 = v5;
    selfCopy = self;
    dispatch_async(workQueue, v7);
  }
}

void __26__PLOperator_postEntries___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v3)
  {
    v4 = v3;
    v22 = *v27;
    do
    {
      v5 = 0;
      v21 = v4;
      do
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v26 + 1) + 8 * v5);
        v32 = @"entry";
        v33 = v6;
        v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        if (+[PLDefaults debugEnabled])
        {
          v8 = objc_opt_class();
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __26__PLOperator_postEntries___block_invoke_2;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v8;
          if (ArrayReserved_block_invoke_3_defaultOnce_0 != -1)
          {
            dispatch_once(&ArrayReserved_block_invoke_3_defaultOnce_0, block);
          }

          if (ArrayReserved_block_invoke_3_classDebugEnabled_0 == 1)
          {
            v9 = v2;
            v10 = MEMORY[0x1E696AEC0];
            v11 = [v6 entryKey];
            v12 = [v10 stringWithFormat:@"posting %@", v11];

            v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
            v14 = [v13 lastPathComponent];
            v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator postEntries:]_block_invoke"];
            [PLCoreStorage logMessage:v12 fromFile:v14 fromFunction:v15 fromLineNumber:544];

            v17 = PLLogCommon(v16);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v31 = v12;
              _os_log_debug_impl(&dword_1D8611000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v2 = v9;
            v4 = v21;
          }
        }

        v18 = [v6 entryKey];
        [PLUtilities postNotificationName:v18 object:*(a1 + 40) userInfo:v7];

        v19 = [*(a1 + 40) filterDefinitions];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __26__PLOperator_postEntries___block_invoke_101;
        v23[3] = &unk_1E8519318;
        v23[4] = *(a1 + 40);
        v23[5] = v6;
        v24 = v7;
        v20 = v7;
        [v19 enumerateKeysAndObjectsUsingBlock:v23];

        ++v5;
      }

      while (v4 != v5);
      v4 = [v2 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v4);
  }
}

BOOL __26__PLOperator_postEntries___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  ArrayReserved_block_invoke_3_classDebugEnabled_0 = result;
  return result;
}

void __26__PLOperator_postEntries___block_invoke_101(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  LODWORD(a3) = [*(a1 + 32) postFilteredNotificationForEntry:*(a1 + 40) withFilteredDefition:a3 withNotificationName:v5];
  v6 = +[PLDefaults debugEnabled];
  if (a3)
  {
    if (v6)
    {
      v7 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __26__PLOperator_postEntries___block_invoke_2_102;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v7;
      if (ArrayReserved_block_invoke_4_defaultOnce_0 != -1)
      {
        dispatch_once(&ArrayReserved_block_invoke_4_defaultOnce_0, block);
      }

      if (ArrayReserved_block_invoke_4_classDebugEnabled_0 == 1)
      {
        v8 = MEMORY[0x1E696AEC0];
        v9 = [*(a1 + 40) entryKey];
        v10 = [v8 stringWithFormat:@"posting %@ with NotificationName %@", v9, v5];

        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
        v12 = [v11 lastPathComponent];
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator postEntries:]_block_invoke"];
        [PLCoreStorage logMessage:v10 fromFile:v12 fromFunction:v13 fromLineNumber:551];

        v15 = PLLogCommon(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    [PLUtilities postNotificationName:v5 object:*(a1 + 32) userInfo:*(a1 + 48)];
  }

  else if (v6)
  {
    v16 = objc_opt_class();
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __26__PLOperator_postEntries___block_invoke_108;
    v28 = &__block_descriptor_40_e5_v8__0lu32l8;
    v29 = v16;
    if (ArrayReserved_block_invoke_4_defaultOnce_106 != -1)
    {
      dispatch_once(&ArrayReserved_block_invoke_4_defaultOnce_106, &v25);
    }

    if (ArrayReserved_block_invoke_4_classDebugEnabled_107 == 1)
    {
      v17 = MEMORY[0x1E696AEC0];
      v18 = [*(a1 + 40) entryKey];
      v19 = [v17 stringWithFormat:@"NOT posting %@ with NotificationName %@", v18, v5, v25, v26, v27, v28, v29];

      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
      v21 = [v20 lastPathComponent];
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator postEntries:]_block_invoke_2"];
      [PLCoreStorage logMessage:v19 fromFile:v21 fromFunction:v22 fromLineNumber:554];

      v24 = PLLogCommon(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }
}

BOOL __26__PLOperator_postEntries___block_invoke_2_102(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  ArrayReserved_block_invoke_4_classDebugEnabled_0 = result;
  return result;
}

BOOL __26__PLOperator_postEntries___block_invoke_108(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  ArrayReserved_block_invoke_4_classDebugEnabled_107 = result;
  return result;
}

- (void)postEntries:(id)entries withGroupID:(id)d
{
  entriesCopy = entries;
  dCopy = d;
  storageQueue = [(PLOperator *)self storageQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__PLOperator_postEntries_withGroupID___block_invoke;
  block[3] = &unk_1E8519AF8;
  block[4] = self;
  v12 = dCopy;
  v13 = entriesCopy;
  v9 = entriesCopy;
  v10 = dCopy;
  dispatch_async(storageQueue, block);
}

void __38__PLOperator_postEntries_withGroupID___block_invoke(id *a1)
{
  v2 = [a1[4] workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__PLOperator_postEntries_withGroupID___block_invoke_2;
  block[3] = &unk_1E8519AF8;
  v3 = a1[5];
  v4 = a1[4];
  v6 = v3;
  v7 = v4;
  v8 = a1[6];
  dispatch_async(v2, block);
}

void __38__PLOperator_postEntries_withGroupID___block_invoke_2(void *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"GroupID_%@", a1[4]];
  v4 = a1[5];
  v3 = a1[6];
  v6 = @"group";
  v7[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [PLUtilities postNotificationName:v2 object:v4 userInfo:v5];
}

- (BOOL)postFilteredNotificationForEntry:(id)entry withFilteredDefition:(id)defition withNotificationName:(id)name
{
  v152 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  defitionCopy = defition;
  nameCopy = name;
  v11 = objc_autoreleasePoolPush();
  v12 = [nameCopy componentsSeparatedByString:@"."];
  v131 = v12;
  if ([v12 count])
  {
    firstObject = [v12 firstObject];
    entryKey = [entryCopy entryKey];
    v15 = [firstObject isEqualToString:entryKey];

    if (v15)
    {
      selfCopy = self;
      filterDeltaLastEntryIDs = [(PLOperator *)self filterDeltaLastEntryIDs];
      v17 = [filterDeltaLastEntryIDs objectForKeyedSubscript:nameCopy];

      if (!v17)
      {
        filterDeltaLastEntryIDs2 = [(PLOperator *)selfCopy filterDeltaLastEntryIDs];
        [filterDeltaLastEntryIDs2 setObject:entryCopy forKeyedSubscript:nameCopy];
      }

      v130 = v11;
      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      v144 = 0u;
      obj = defitionCopy;
      v133 = [obj countByEnumeratingWithState:&v143 objects:v151 count:16];
      v134 = v17;
      v19 = 0;
      if (!v133)
      {
        v20 = 1;
        goto LABEL_77;
      }

      v132 = *v144;
      v20 = 1;
      while (1)
      {
        v21 = 0;
        do
        {
          if (*v144 != v132)
          {
            objc_enumerationMutation(obj);
          }

          v136 = v21;
          v22 = *(*(&v143 + 1) + 8 * v21);
          v23 = [obj objectForKeyedSubscript:v22];
          v24 = [v23 mutableCopy];

          v137 = v24;
          v25 = [v24 objectForKeyedSubscript:&unk_1F540A320];

          if (v25)
          {
            if (!v17 || ([v17 entryDate], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(entryCopy, "entryDate"), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "timeIntervalSinceDate:", v27), v29 = fabs(v28), objc_msgSend(v24, "objectForKeyedSubscript:", &unk_1F540A320), v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "doubleValue"), v32 = v31, v30, v27, v17 = v134, v26, v29 <= v32))
            {
LABEL_75:

              v111 = 0;
              goto LABEL_86;
            }
          }

          if (v19)
          {
            goto LABEL_14;
          }

          v33 = [v24 objectForKeyedSubscript:&unk_1F540A338];

          if (v33)
          {
            if (!v17)
            {
              goto LABEL_75;
            }

            entryDate = [v17 entryDate];
            entryDate2 = [entryCopy entryDate];
            [entryDate timeIntervalSinceDate:entryDate2];
            v37 = fabs(v36);
            v38 = [v24 objectForKeyedSubscript:&unk_1F540A338];
            [v38 doubleValue];
            v40 = v39;

            if (v37 >= v40)
            {
              goto LABEL_26;
            }

            v20 = 0;
            v17 = v134;
          }

          v41 = [v24 objectForKeyedSubscript:&unk_1F540A350];

          if (v41)
          {
            if (!v17)
            {
              goto LABEL_75;
            }

            v42 = [v17 objectForKeyedSubscript:v22];
            [v42 doubleValue];
            v44 = v43;
            v45 = [entryCopy objectForKeyedSubscript:v22];
            [v45 doubleValue];
            v47 = vabdd_f64(v44, v46);
            v48 = [v24 objectForKeyedSubscript:&unk_1F540A350];
            [v48 doubleValue];
            v50 = v49;

            if (v47 >= v50)
            {
LABEL_26:
              v19 = 1;
              goto LABEL_27;
            }

            v20 = 0;
            v17 = v134;
          }

          v51 = [v24 objectForKeyedSubscript:&unk_1F540A368];

          if (v51)
          {
            if (v17)
            {
              v52 = [v17 objectForKeyedSubscript:v22];
              v53 = [entryCopy objectForKeyedSubscript:v22];
              v19 = [v52 isEqual:v53] ^ 1;

              v20 &= v19;
              goto LABEL_28;
            }

LABEL_14:
            v19 = 1;
            goto LABEL_28;
          }

          if ((v20 & 1) == 0)
          {
            v20 = 0;
            v19 = 0;
            goto LABEL_28;
          }

          v127 = nameCopy;
          v128 = defitionCopy;
          v141 = 0u;
          v142 = 0u;
          v139 = 0u;
          v140 = 0u;
          v54 = v24;
          v55 = [v54 countByEnumeratingWithState:&v139 objects:v150 count:16];
          if (!v55)
          {
            v20 = 1;
            goto LABEL_65;
          }

          v56 = v55;
          v57 = *v140;
          v20 = 1;
          do
          {
            for (i = 0; i != v56; ++i)
            {
              if (*v140 != v57)
              {
                objc_enumerationMutation(v54);
              }

              v59 = *(*(&v139 + 1) + 8 * i);
              shortValue = [v59 shortValue];
              if (shortValue > 3)
              {
                switch(shortValue)
                {
                  case 4u:
                    v81 = [entryCopy objectForKeyedSubscript:v22];
                    [v81 doubleValue];
                    v83 = v82;
                    v84 = [v54 objectForKeyedSubscript:v59];
                    [v84 doubleValue];
                    v86 = v85;

                    if (v83 >= v86)
                    {
                      goto LABEL_56;
                    }

                    break;
                  case 5u:
                    v93 = [entryCopy objectForKeyedSubscript:v22];
                    [v93 doubleValue];
                    v95 = v94;
                    v96 = [v54 objectForKeyedSubscript:v59];
                    [v96 doubleValue];
                    v98 = v97;

                    if (v95 <= v98)
                    {
                      continue;
                    }

LABEL_56:
                    v20 = 0;
                    continue;
                  case 6u:
                    v69 = [entryCopy objectForKeyedSubscript:v22];
                    [v69 doubleValue];
                    v71 = v70;
                    v72 = [v54 objectForKeyedSubscript:v59];
                    [v72 doubleValue];
                    v74 = v73;

                    if (v71 == v74)
                    {
                      goto LABEL_56;
                    }

                    break;
                }
              }

              else
              {
                switch(shortValue)
                {
                  case 1u:
                    v75 = [entryCopy objectForKeyedSubscript:v22];
                    [v75 doubleValue];
                    v77 = v76;
                    v78 = [v54 objectForKeyedSubscript:v59];
                    [v78 doubleValue];
                    v80 = v79;

                    if (v77 <= v80)
                    {
                      goto LABEL_56;
                    }

                    break;
                  case 2u:
                    v87 = [entryCopy objectForKeyedSubscript:v22];
                    [v87 doubleValue];
                    v89 = v88;
                    v90 = [v54 objectForKeyedSubscript:v59];
                    [v90 doubleValue];
                    v92 = v91;

                    if (v89 < v92)
                    {
                      goto LABEL_56;
                    }

                    break;
                  case 3u:
                    v61 = [v54 objectForKeyedSubscript:v59];
                    v62 = [entryCopy objectForKeyedSubscript:v22];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      objc_opt_class();
                      isKindOfClass = objc_opt_isKindOfClass();

                      if (isKindOfClass)
                      {
                        v64 = [entryCopy objectForKeyedSubscript:v22];
                        [v64 doubleValue];
                        v66 = v65;
                        [v61 doubleValue];
                        v68 = v67;

                        if (v66 != v68)
                        {
                          v20 = 0;
                        }

                        goto LABEL_59;
                      }
                    }

                    else
                    {
                    }

                    v99 = [entryCopy objectForKeyedSubscript:v22];
                    v100 = [v99 plCompare:v61] == 0;

                    v20 &= v100;
LABEL_59:

                    continue;
                  default:
                    continue;
                }
              }
            }

            v56 = [v54 countByEnumeratingWithState:&v139 objects:v150 count:16];
          }

          while (v56);
LABEL_65:

          v19 = 0;
          nameCopy = v127;
          defitionCopy = v128;
LABEL_27:
          v17 = v134;
LABEL_28:

          v21 = v136 + 1;
        }

        while (v136 + 1 != v133);
        v101 = [obj countByEnumeratingWithState:&v143 objects:v151 count:16];
        v133 = v101;
        if (!v101)
        {
LABEL_77:

          if (+[PLDefaults debugEnabled])
          {
            v112 = objc_opt_class();
            v138[0] = MEMORY[0x1E69E9820];
            v138[1] = 3221225472;
            v138[2] = __89__PLOperator_postFilteredNotificationForEntry_withFilteredDefition_withNotificationName___block_invoke_137;
            v138[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v138[4] = v112;
            if (postFilteredNotificationForEntry_withFilteredDefition_withNotificationName__defaultOnce_135 != -1)
            {
              dispatch_once(&postFilteredNotificationForEntry_withFilteredDefition_withNotificationName__defaultOnce_135, v138);
            }

            if (postFilteredNotificationForEntry_withFilteredDefition_withNotificationName__classDebugEnabled_136 == 1)
            {
              v113 = MEMORY[0x1E696AEC0];
              entryKey2 = [entryCopy entryKey];
              v115 = NSStringFromBOOL();
              v116 = NSStringFromBOOL();
              v117 = nameCopy;
              v118 = v116;
              v119 = v117;
              v116 = [v113 stringWithFormat:@"entryKey=%@ notificationName=%@ shouldPost=%@ Post=%@", entryKey2, v117, v115, v116];

              v121 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
              lastPathComponent = [v121 lastPathComponent];
              v123 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator postFilteredNotificationForEntry:withFilteredDefition:withNotificationName:]"];
              [PLCoreStorage logMessage:v116 fromFile:lastPathComponent fromFunction:v123 fromLineNumber:693];

              v125 = PLLogCommon(v124);
              if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
              {
                [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
              }

              nameCopy = v119;
              v17 = v134;
            }
          }

          if ((v20 | v19))
          {
            obj = [(PLOperator *)selfCopy filterDeltaLastEntryIDs];
            [obj setObject:entryCopy forKeyedSubscript:nameCopy];
            v111 = 1;
LABEL_86:
            v11 = v130;
LABEL_87:
          }

          else
          {
            v111 = 0;
            v11 = v130;
          }

          goto LABEL_89;
        }
      }
    }
  }

  if (+[PLDefaults debugEnabled])
  {
    v102 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __89__PLOperator_postFilteredNotificationForEntry_withFilteredDefition_withNotificationName___block_invoke;
    block[3] = &unk_1E8519630;
    v148 = @"FilteredNotifications";
    v149 = v102;
    if (postFilteredNotificationForEntry_withFilteredDefition_withNotificationName__defaultOnce != -1)
    {
      dispatch_once(&postFilteredNotificationForEntry_withFilteredDefition_withNotificationName__defaultOnce, block);
    }

    v103 = postFilteredNotificationForEntry_withFilteredDefition_withNotificationName__classDebugEnabled;

    if (v103 == 1)
    {
      v104 = MEMORY[0x1E696AEC0];
      entryKey3 = [entryCopy entryKey];
      nameCopy = [v104 stringWithFormat:@"EntryKey %@ does not match key %@", entryKey3, nameCopy];

      v107 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
      lastPathComponent2 = [v107 lastPathComponent];
      v109 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator postFilteredNotificationForEntry:withFilteredDefition:withNotificationName:]"];
      [PLCoreStorage logMessage:nameCopy fromFile:lastPathComponent2 fromFunction:v109 fromLineNumber:579];

      obj = PLLogCommon(v110);
      if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
      {
        v17 = nameCopy;
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        v111 = 0;
      }

      else
      {
        v111 = 0;
        v17 = nameCopy;
      }

      goto LABEL_87;
    }
  }

  v111 = 0;
LABEL_89:

  objc_autoreleasePoolPop(v11);
  return v111;
}

BOOL __89__PLOperator_postFilteredNotificationForEntry_withFilteredDefition_withNotificationName___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  postFilteredNotificationForEntry_withFilteredDefition_withNotificationName__classDebugEnabled = result;
  return result;
}

BOOL __89__PLOperator_postFilteredNotificationForEntry_withFilteredDefition_withNotificationName___block_invoke_137(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  postFilteredNotificationForEntry_withFilteredDefition_withNotificationName__classDebugEnabled_136 = result;
  return result;
}

- (id)entryDefinitions
{
  v2 = objc_opt_class();

  return [v2 entryDefinitions];
}

- (id)entryKeys
{
  v2 = objc_opt_class();

  return [v2 entryKeys];
}

- (void)subscribeNotificationsForEntries
{
  v48 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  entryKeys = [(PLOperator *)self entryKeys];
  v4 = [entryKeys copy];

  v5 = [v4 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v42;
    v8 = 0x1E8518000uLL;
    v33 = *v42;
    v32 = v4;
    do
    {
      v9 = 0;
      v34 = v6;
      do
      {
        if (*v42 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v41 + 1) + 8 * v9);
        if ([*(v8 + 2256) isOnDemandQueryableForEntryKey:v10])
        {
          v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"requesting.%@", v10];
          if (+[PLDefaults debugEnabled])
          {
            v12 = objc_opt_class();
            v38[0] = MEMORY[0x1E69E9820];
            v38[1] = 3221225472;
            v38[2] = __46__PLOperator_subscribeNotificationsForEntries__block_invoke;
            v38[3] = &unk_1E8519630;
            v39 = @"notifications";
            v40 = v12;
            if (subscribeNotificationsForEntries_defaultOnce != -1)
            {
              dispatch_once(&subscribeNotificationsForEntries_defaultOnce, v38);
            }

            v13 = subscribeNotificationsForEntries_classDebugEnabled;

            if (v13 == 1)
            {
              v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"signing up for notification %@", v11];
              v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
              lastPathComponent = [v15 lastPathComponent];
              v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator subscribeNotificationsForEntries]"];
              [PLCoreStorage logMessage:v14 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:718];

              v19 = PLLogCommon(v18);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v46 = v14;
                _os_log_debug_impl(&dword_1D8611000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v4 = v32;
              v7 = v33;
              v6 = v34;
              v8 = 0x1E8518000;
            }
          }

          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter addObserver:self selector:sel_logRequestNotification_ name:v11 object:0];
        }

        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"requestingFilter.%@", v10];
        if (+[PLDefaults debugEnabled])
        {
          v22 = objc_opt_class();
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __46__PLOperator_subscribeNotificationsForEntries__block_invoke_157;
          block[3] = &unk_1E8519630;
          v36 = @"notifications";
          v37 = v22;
          if (subscribeNotificationsForEntries_defaultOnce_155 != -1)
          {
            dispatch_once(&subscribeNotificationsForEntries_defaultOnce_155, block);
          }

          v23 = subscribeNotificationsForEntries_classDebugEnabled_156;

          if (v23 == 1)
          {
            v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"signing up for notification %@", v21];
            v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
            lastPathComponent2 = [v25 lastPathComponent];
            v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator subscribeNotificationsForEntries]"];
            [PLCoreStorage logMessage:v24 fromFile:lastPathComponent2 fromFunction:v27 fromLineNumber:723];

            v29 = PLLogCommon(v28);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v46 = v24;
              _os_log_debug_impl(&dword_1D8611000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v7 = v33;
            v6 = v34;
            v8 = 0x1E8518000;
          }
        }

        defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter2 addObserver:self selector:sel_setupFilterRequest_ name:v21 object:0];

        ++v9;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(context);
}

BOOL __46__PLOperator_subscribeNotificationsForEntries__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  subscribeNotificationsForEntries_classDebugEnabled = result;
  return result;
}

BOOL __46__PLOperator_subscribeNotificationsForEntries__block_invoke_157(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  subscribeNotificationsForEntries_classDebugEnabled_156 = result;
  return result;
}

- (void)logRequestNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__PLOperator_logRequestNotification___block_invoke;
  v7[3] = &unk_1E8519100;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __37__PLOperator_logRequestNotification___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (+[PLDefaults debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__PLOperator_logRequestNotification___block_invoke_2;
    block[3] = &unk_1E8519630;
    v24 = @"notifications";
    v25 = v3;
    if (ArrayReserved_block_invoke_5_defaultOnce_0 != -1)
    {
      dispatch_once(&ArrayReserved_block_invoke_5_defaultOnce_0, block);
    }

    v4 = ArrayReserved_block_invoke_5_classDebugEnabled_0;

    if (v4 == 1)
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = [*(a1 + 40) name];
      v7 = [v5 stringWithFormat:@"notification=%@", v6];

      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator logRequestNotification:]_block_invoke"];
      [PLCoreStorage logMessage:v7 fromFile:v9 fromFunction:v10 fromLineNumber:732];

      v12 = PLLogCommon(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v13 = [*(a1 + 40) name];
  v14 = [v13 stringByReplacingOccurrencesOfString:@"requesting." withString:&stru_1F539D228];

  v15 = [PLEntryDefinition logSelectorStringForEnteryKey:v14];
  v16 = NSSelectorFromString(v15);

  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) performSelector:v16];
  }

  else
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Does not respond to entryKey=%@", v14];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
    v19 = [v18 lastPathComponent];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator logRequestNotification:]_block_invoke"];
    [PLCoreStorage logMessage:v17 fromFile:v19 fromFunction:v20 fromLineNumber:741];

    v22 = PLLogCommon(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }
  }

  objc_autoreleasePoolPop(v2);
}

BOOL __37__PLOperator_logRequestNotification___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  ArrayReserved_block_invoke_5_classDebugEnabled_0 = result;
  return result;
}

- (void)setupFilterRequest:(id)request
{
  requestCopy = request;
  workQueue = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__PLOperator_setupFilterRequest___block_invoke;
  v7[3] = &unk_1E8519100;
  v8 = requestCopy;
  selfCopy = self;
  v6 = requestCopy;
  dispatch_async(workQueue, v7);
}

void __33__PLOperator_setupFilterRequest___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) name];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"requestingFilter." withString:&stru_1F539D228];

  v5 = [*(a1 + 32) userInfo];
  v6 = [PLEntryDefinition notificationNameForEntryKey:v4 withFilterDefintion:v5];

  v7 = [*(a1 + 40) filterDefinitions];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (!v8)
  {
    v9 = [*(a1 + 32) userInfo];
    v10 = [*(a1 + 40) filterDefinitions];
    [v10 setObject:v9 forKeyedSubscript:v6];

    if (+[PLDefaults debugEnabled])
    {
      v11 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __33__PLOperator_setupFilterRequest___block_invoke_2;
      block[3] = &unk_1E8519630;
      v20 = @"notifications";
      v21 = v11;
      if (ArrayReserved_block_invoke_6_defaultOnce_0 != -1)
      {
        dispatch_once(&ArrayReserved_block_invoke_6_defaultOnce_0, block);
      }

      v12 = ArrayReserved_block_invoke_6_classDebugEnabled_0;

      if (v12 == 1)
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"added requestingFilter %@", v6];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
        v15 = [v14 lastPathComponent];
        v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator setupFilterRequest:]_block_invoke"];
        [PLCoreStorage logMessage:v13 fromFile:v15 fromFunction:v16 fromLineNumber:755];

        v18 = PLLogCommon(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

BOOL __33__PLOperator_setupFilterRequest___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  ArrayReserved_block_invoke_6_classDebugEnabled_0 = result;
  return result;
}

+ (id)trimConditionsWithEntryKey:(id)key withTrimDate:(id)date withDuration:(id)duration withStartDateKey:(id)dateKey
{
  dateCopy = date;
  dateKeyCopy = dateKey;
  if (duration)
  {
    [duration doubleValue];
    v11 = v10;
  }

  else
  {
    v11 = 1209600.0;
  }

  v12 = MEMORY[0x1E696AEC0];
  [dateCopy timeIntervalSince1970];
  v14 = v13;
  monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
  v16 = [monotonicDate dateByAddingTimeInterval:-v11];
  [v16 timeIntervalSince1970];
  v18 = v17;

  if (v14 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v14;
  }

  v20 = [v12 stringWithFormat:@"(%@ is NULL OR %@<%f)", dateKeyCopy, dateKeyCopy, *&v19];

  return v20;
}

+ (id)trimConditionsWithEntryKey:(id)key withTrimDate:(id)date withCount:(id)count withStartDateKey:(id)dateKey
{
  keyCopy = key;
  dateCopy = date;
  dateKeyCopy = dateKey;
  if (count)
  {
    integerValue = [count integerValue];
  }

  else
  {
    integerValue = 200;
  }

  v13 = MEMORY[0x1E696AEC0];
  [dateCopy timeIntervalSince1970];
  keyCopy = [v13 stringWithFormat:@"(%@ is NULL OR %@<%f) AND ID<=(SELECT (max(ID)-%i) from %@)", dateKeyCopy, dateKeyCopy, v14, integerValue, keyCopy];

  return keyCopy;
}

- (id)tablesToTrimConditionsForTrimDate:(id)date
{
  v59 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v50 = dateCopy;
  [dateCopy timeIntervalSince1970];
  v6 = v5;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  selfCopy = self;
  v7 = [PLEntryKey entryKeysForOperator:self];
  v8 = [v7 copy];

  obj = v8;
  v52 = [v8 countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v52)
  {
    v51 = *v55;
    v9 = @"TrimConditionsTemplate";
    do
    {
      v10 = 0;
      do
      {
        if (*v55 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v54 + 1) + 8 * v10);
        v12 = [PLEntryKey PLEntryKeyForEntryKey:v11];
        v13 = [PLEntryDefinition definitionForEntryKey:v11];
        v14 = [v13 objectForKeyedSubscript:@"Configs"];
        v15 = [v14 objectForKeyedSubscript:v9];

        v53 = v11;
        v16 = v12;
        if (v15)
        {
          v17 = [v13 objectForKeyedSubscript:@"Configs"];
          v18 = [v17 objectForKeyedSubscript:v9];
          integerValue = [v18 integerValue];

          v20 = integerValue;
        }

        else
        {
          v20 = 0;
        }

        v21 = v9;
        v22 = [v13 objectForKeyedSubscript:@"Keys"];
        allKeys = [v22 allKeys];

        v24 = @"StartDate";
        if (([allKeys containsObject:@"StartDate"] & 1) == 0)
        {
          if ([allKeys containsObject:@"StartOffset"])
          {
            v24 = @"(timestamp + StartOffset/1000.0)";
          }

          else
          {
            v24 = @"timestamp";
          }
        }

        v25 = @"EndDate";
        if (([allKeys containsObject:@"EndDate"] & 1) == 0)
        {
          if ([allKeys containsObject:@"EndOffset"])
          {
            v25 = @"(timestamp + EndOffset/1000.0)";
          }

          else
          {
            v25 = @"timestampEnd";
          }
        }

        if (v20 > 1)
        {
          v9 = v21;
          if (v20 != 2)
          {
            v26 = v53;
            if (v20 != 0x7FFF)
            {
              goto LABEL_35;
            }

            v30 = [(PLOperator *)selfCopy trimConditionsForEntryKey:v53 forTrimDate:v50];
LABEL_24:
            v31 = v30;
            if (v30)
            {
              goto LABEL_34;
            }

            goto LABEL_35;
          }

          v27 = [v13 objectForKeyedSubscript:@"Configs"];
          v28 = [v27 objectForKeyedSubscript:@"TrimConditionsTemplateArg"];
          v26 = v53;
          v29 = [PLOperator trimConditionsWithEntryKey:v53 withTrimDate:v50 withCount:v28 withStartDateKey:v24];
          goto LABEL_29;
        }

        if (v20)
        {
          v9 = v21;
          v26 = v53;
          if (v20 != 1)
          {
            goto LABEL_35;
          }

          v27 = [v13 objectForKeyedSubscript:@"Configs"];
          v28 = [v27 objectForKeyedSubscript:@"TrimConditionsTemplateArg"];
          v29 = [PLOperator trimConditionsWithEntryKey:v53 withTrimDate:v50 withDuration:v28 withStartDateKey:v24];
LABEL_29:
          v31 = v29;

          if (v31)
          {
            goto LABEL_34;
          }

          goto LABEL_35;
        }

        entryType = [v16 entryType];
        v33 = [entryType isEqualToString:@"EventInterval"];

        if (v33)
        {
          monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
          v35 = [monotonicDate dateByAddingTimeInterval:1209600.0];

          [v35 timeIntervalSince1970];
          v37 = v36;
          v38 = MEMORY[0x1E696AEC0];
          v39 = +[PLUtilities deviceBootTime];
          [v39 timeIntervalSince1970];
          v31 = [v38 stringWithFormat:@"(%@<%f) OR ((%@ is NULL OR %@<%f OR %@<%f) AND (%@ is NULL OR %@<%f))", v25, v6, v24, v24, v40, v24, v37, v25, v25, v6];

          v9 = v21;
          goto LABEL_33;
        }

        entryType2 = [v16 entryType];
        v42 = [entryType2 isEqualToString:@"EventForward"];

        v9 = v21;
        if (v42)
        {
          v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is NULL OR %@<(SELECT max(%@) FROM '%@' WHERE %@<%f)", v24, v24, v24, v16, v24, v6];
LABEL_33:
          v26 = v53;
          if (!v31)
          {
            goto LABEL_35;
          }

LABEL_34:
          [dictionary setObject:v31 forKeyedSubscript:v26];

          goto LABEL_35;
        }

        entryType3 = [v16 entryType];
        v44 = [entryType3 isEqualToString:@"Aggregate"];

        v26 = v53;
        if (v44)
        {
          v30 = [PLOperator trimConditionsWithEntryKey:v53 withTrimDate:v50 withDuration:&unk_1F540B640 withStartDateKey:v24];
          goto LABEL_24;
        }

LABEL_35:

        ++v10;
      }

      while (v52 != v10);
      v45 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
      v52 = v45;
    }

    while (v45);
  }

  return dictionary;
}

- (id)trimConditionsForEntryKey:(id)key forTrimDate:(id)date
{
  if ([PLDefaults debugEnabled:key])
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLOperator::trimConditionsForEntryKey:trimDate: WARNING: derived class must implement if they specify PLEDTrimConditionsTemplateCustom in an entryDefinition"];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLOperator.m"];
    lastPathComponent = [v5 lastPathComponent];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLOperator trimConditionsForEntryKey:forTrimDate:]"];
    [PLCoreStorage logMessage:v4 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:872];

    v9 = PLLogCommon(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }
  }

  return 0;
}

- (void)logForSubsystem:(id)subsystem category:(id)category data:(id)data date:(id)date
{
  v38 = *MEMORY[0x1E69E9840];
  subsystemCopy = subsystem;
  categoryCopy = category;
  dataCopy = data;
  dateCopy = date;
  v14 = dateCopy;
  if (dataCopy)
  {
    v15 = [MEMORY[0x1E69BDC20] getMetadataByNameForSubsystem:subsystemCopy category:categoryCopy];
    if (v15)
    {
      if (v14)
      {
        monotonicDate = v14;
      }

      else
      {
        monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
      }

      v17 = monotonicDate;
      v18 = [PLOperator createEntriesForMetrics:v15 withData:dataCopy withDate:monotonicDate];
      v19 = PPSLogCommon(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v33 = subsystemCopy;
        v34 = 2112;
        v35 = categoryCopy;
        v36 = 2048;
        v37 = [v18 count];
        _os_log_debug_impl(&dword_1D8611000, v19, OS_LOG_TYPE_DEBUG, "[Log] Number of entries for subsystem/category: %@/%@ : %lu", buf, 0x20u);
      }

      v26 = subsystemCopy;

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = v18;
      allValues = [v18 allValues];
      v21 = [allValues countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v28;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v28 != v23)
            {
              objc_enumerationMutation(allValues);
            }

            [(PLOperator *)self logEntry:*(*(&v27 + 1) + 8 * i)];
          }

          v22 = [allValues countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v22);
      }

      subsystemCopy = v26;
    }

    else
    {
      v17 = PPSLogCommon(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [PLOperator logForSubsystem:category:data:date:];
      }
    }
  }

  else
  {
    v15 = PPSLogCommon(dateCopy);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PLOperator logForSubsystem:category:data:date:];
    }
  }
}

- (void)logDMAEntry:(id)entry
{
  entryCopy = entry;
  dictionary = [entryCopy dictionary];
  v5 = [dictionary mutableCopy];

  v6 = MEMORY[0x1E696AEC0];
  entryKey = [entryCopy entryKey];
  v8 = [v6 stringWithFormat:@"com.apple.perfpowerservices.dma.%@", entryKey];

  v10 = PLLogCommon(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [PLOperator logDMAEntry:];
  }

  entryDefinition = [entryCopy entryDefinition];
  v12 = [PLEntryDefinition keyConfigsForEntryDefinition:entryDefinition];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __26__PLOperator_logDMAEntry___block_invoke;
  v25[3] = &unk_1E851ADE0;
  v13 = v5;
  v26 = v13;
  [v12 enumerateKeysAndObjectsUsingBlock:v25];

  hasDynamicKeys = [entryCopy hasDynamicKeys];
  if (hasDynamicKeys)
  {
    v15 = PLLogCommon(hasDynamicKeys);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [PLOperator logDMAEntry:];
    }

    dMAKeys = [entryCopy DMAKeys];
    v17 = [v13 dictionaryWithValuesForKeys:dMAKeys];
    v18 = [v17 mutableCopy];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __26__PLOperator_logDMAEntry___block_invoke_225;
    v22[3] = &unk_1E8519948;
    v23 = v18;
    v24 = v8;
    v19 = v18;
    [v13 enumerateKeysAndObjectsUsingBlock:v22];
  }

  else
  {
    v20 = v13;
    v21 = entryCopy;
    AnalyticsSendEventLazy();

    v19 = v20;
  }
}

void __26__PLOperator_logDMAEntry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 objectForKeyedSubscript:@"ProcessName"];

  if (v6)
  {
    v8 = *(a1 + 32);
    v7 = (a1 + 32);
    v9 = [v8 objectForKeyedSubscript:v5];
    v10 = [PLUtilities bundleIDFromProcessName:v9];

    if (v10)
    {
      v12 = *v7;
      v13 = v10;
    }

    else
    {
      v14 = PLLogCommon(v11);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __26__PLOperator_logDMAEntry___block_invoke_cold_1(v7, v5, v14);
      }

      v12 = *v7;
      v13 = @"unknown";
    }

    [v12 setObject:v13 forKeyedSubscript:v5];
  }
}

void __26__PLOperator_logDMAEntry___block_invoke_225(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) setValuesForKeysWithDictionary:v5];
    [*(a1 + 32) setObject:v6 forKey:@"value"];
    v7 = *(a1 + 32);
    AnalyticsSendEventLazy();
  }
}

id __26__PLOperator_logDMAEntry___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) copy];
  v2 = [PLUtilities sanitizeCAPayload:v1];

  return v2;
}

id __26__PLOperator_logDMAEntry___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) DMAKeys];
  v3 = [v1 dictionaryWithValuesForKeys:v2];
  v4 = [PLUtilities sanitizeCAPayload:v3];

  return v4;
}

+ (id)createEntriesForMetrics:(id)metrics withData:(id)data withDate:(id)date
{
  metricsCopy = metrics;
  dataCopy = data;
  dateCopy = date;
  v32 = 0;
  v33[0] = &v32;
  v33[1] = 0x3032000000;
  v33[2] = __Block_byref_object_copy__19;
  v33[3] = __Block_byref_object_dispose__19;
  v34 = 0;
  v10 = objc_opt_new();
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __56__PLOperator_createEntriesForMetrics_withData_withDate___block_invoke;
  v27 = &unk_1E851B540;
  v11 = metricsCopy;
  v28 = v11;
  v31 = &v32;
  v12 = v10;
  v29 = v12;
  v13 = dateCopy;
  v30 = v13;
  [dataCopy enumerateKeysAndObjectsUsingBlock:&v24];
  if (*(v33[0] + 40))
  {
    v14 = [v12 objectForKey:{v24, v25, v26, v27, v28, v29}];

    if (!v14)
    {
      v15 = [PLEntry alloc];
      v16 = [(PLEntry *)v15 initWithEntryKey:*(v33[0] + 40) withDate:v13];
      [v12 setObject:v16 forKeyedSubscript:*(v33[0] + 40)];
    }

    v17 = [dataCopy objectForKeyedSubscript:@"__PPSKVPairs__"];
    v18 = [v12 objectForKeyedSubscript:*(v33[0] + 40)];
    [v18 setObject:v17 forKeyedSubscript:@"__PPSKVPairs__"];

    v20 = PPSLogCommon(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [PLOperator createEntriesForMetrics:v33 withData:? withDate:?];
    }
  }

  v21 = v30;
  v22 = v12;

  _Block_object_dispose(&v32, 8);

  return v22;
}

void __56__PLOperator_createEntriesForMetrics_withData_withDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    if ([v5 isEqualToString:@"__PPSKVPairs__"])
    {
      v8 = [v6 firstObject];
      v9 = v8;
      if (!v8)
      {
LABEL_24:

        goto LABEL_25;
      }

      v10 = [v8 allKeys];
      v11 = [v10 firstObject];
      v12 = [*(a1 + 32) objectForKeyedSubscript:v11];
      v13 = [PPSEntryKey entryKeyForMetric:v12];
      v14 = *(*(a1 + 56) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }

    else
    {
      v9 = [*(a1 + 32) objectForKeyedSubscript:v5];
      if (v9)
      {
        if (+[PLUtilities OverrideAllowlistEnabled])
        {
          if (![PPSCoreUtilities shouldLogMetric:v9])
          {
            goto LABEL_24;
          }
        }

        else if (![PPSCoreUtilities isValidModeForMetric:v9]|| ![PPSCoreUtilities isAllowedMetric:v9])
        {
          goto LABEL_24;
        }

        v10 = [PPSEntryKey entryKeyForMetric:v9];
        if (v10)
        {
          v17 = [*(a1 + 40) objectForKeyedSubscript:v10];

          if (!v17)
          {
            v18 = [[PLEntry alloc] initWithEntryKey:v10 withDate:*(a1 + 48)];
            [*(a1 + 40) setObject:v18 forKeyedSubscript:v10];
          }

          v19 = [*(a1 + 40) objectForKeyedSubscript:v10];
          [v19 setObject:v6 forKeyedSubscript:v5];
        }

        else
        {
          v19 = PPSLogCommon(0);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            __56__PLOperator_createEntriesForMetrics_withData_withDate___block_invoke_cold_2();
          }
        }
      }

      else
      {
        v10 = PPSLogCommon(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          __56__PLOperator_createEntriesForMetrics_withData_withDate___block_invoke_cold_3();
        }
      }
    }

    goto LABEL_24;
  }

  v16 = PPSLogCommon(isKindOfClass);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    __56__PLOperator_createEntriesForMetrics_withData_withDate___block_invoke_cold_1(v5, v16);
  }

LABEL_25:
}

- (void)logForSubsystem:category:data:date:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0(&dword_1D8611000, v0, v1, "[Log] Metadata not found for subsystem/category: %@/%@");
}

- (void)logForSubsystem:category:data:date:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0(&dword_1D8611000, v0, v1, "[Log] Nil payload for subsystem/category: %@/%@");
}

void __26__PLOperator_logDMAEntry___block_invoke_cold_1(id *a1, uint64_t a2, NSObject *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = [*a1 objectForKeyedSubscript:a2];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1D8611000, a3, OS_LOG_TYPE_ERROR, "Failed to translate process name '%@' to bundle ID for DMA!", v5, 0xCu);
}

+ (void)createEntriesForMetrics:(uint64_t)a1 withData:withDate:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(*a1 + 40);
  v3 = 138412546;
  v4 = v1;
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(&dword_1D8611000, v2, OS_LOG_TYPE_DEBUG, "Adding to %@ entries array %@", &v3, 0x16u);
}

void __56__PLOperator_createEntriesForMetrics_withData_withDate___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = objc_opt_class();
  v3 = v7;
  _os_log_fault_impl(&dword_1D8611000, a2, OS_LOG_TYPE_FAULT, "Metric name: %@ is not String class %@", &v4, 0x16u);
}

void __56__PLOperator_createEntriesForMetrics_withData_withDate___block_invoke_cold_2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1D8611000, v0, OS_LOG_TYPE_ERROR, "No entryKey for metric: %@", v1, 0xCu);
}

@end