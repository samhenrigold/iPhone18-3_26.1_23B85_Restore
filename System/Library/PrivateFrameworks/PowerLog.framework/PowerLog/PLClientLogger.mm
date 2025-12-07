@interface PLClientLogger
+ (BOOL)isMessageOnDeviceDisabled;
+ (id)sharedInstance;
- (PLClientLogger)init;
- (id)buildMessageForClientID:(signed __int16)d withKey:(id)key withPayload:(id)payload;
- (id)cacheForKey:(id)key;
- (id)pendingTasksForType:(id)type forClientID:(signed __int16)d forKey:(id)key;
- (id)queryForClientID:(signed __int16)d withKey:(id)key withPayload:(id)payload;
- (id)xpcConnectionWithClientID:(signed __int16)d withKey:(id)key withPayload:(id)payload;
- (id)xpcSendMessageWithReply:(id)reply withClientID:(signed __int16)d withKey:(id)key withPayload:(id)payload;
- (int)batchSizeForClientID:(signed __int16)d;
- (int)shouldLogNowForClientID:(signed __int16)d withKey:(id)key withPayload:(id)payload withFilterInterval:(double)interval;
- (signed)blockedPermissionForClientID:(signed __int16)d withKey:(id)key withType:(id)type withTimeout:(unint64_t)timeout;
- (signed)cachedPermissionForClientID:(signed __int16)d withKey:(id)key withType:(id)type;
- (void)addToBatchedTaskCacheForType:(id)type forClientID:(signed __int16)d forKey:(id)key withPayload:(id)payload;
- (void)addToPendingTaskCacheForType:(id)type forClientID:(signed __int16)d forKey:(id)key withPayload:(id)payload;
- (void)batchTasksCacheFlush;
- (void)clearBatchedTaskCache;
- (void)clearBatchedTaskCachePPS;
- (void)clearCache;
- (void)init;
- (void)logForClientID:(signed __int16)d withKey:(id)key withPayload:(id)payload;
- (void)logLaterForClientID:(signed __int16)d withKey:(id)key withFilterInterval:(double)interval;
- (void)logStateCaches;
- (void)logWithCurrentDateForClientID:(signed __int16)d withKey:(id)key withPayload:(id)payload;
- (void)permissionForClientID:(signed __int16)d withKey:(id)key withType:(id)type completion:(id)completion;
- (void)powerlogStateChanged;
- (void)sendBatchToPPS;
- (void)setCachePermission:(signed __int16)permission ForClientID:(signed __int16)d withKey:(id)key withType:(id)type;
- (void)xpcSendMessage:(id)message withClientID:(signed __int16)d withKey:(id)key withPayload:(id)payload;
- (void)xpcSendMessageWithRateLimitingforClient:(signed __int16)client withKey:(id)key withPayload:(id)payload;
@end

@implementation PLClientLogger

+ (BOOL)isMessageOnDeviceDisabled
{
  if (isMessageOnDeviceDisabled_onceToken != -1)
  {
    +[PLClientLogger isMessageOnDeviceDisabled];
  }

  return disableMessageOnDevice;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[PLClientLogger sharedInstance];
  }

  v3 = sharedInstance__clientLogger;

  return v3;
}

- (void)batchTasksCacheFlush
{
  v8[2] = *MEMORY[0x1E69E9840];
  objc_sync_enter(@"___BatchCacheSync___");
  v7[0] = @"PLXPCBatchedMessage";
  batchedTaskCache = [(PLClientLogger *)self batchedTaskCache];
  v7[1] = @"PLXPCBatchedMessageDropCounts";
  v8[0] = batchedTaskCache;
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[PLClientLogger batchedDropMessageCount](self, "batchedDropMessageCount")}];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v6 = [(PLClientLogger *)self buildMessageForClientID:51 withKey:@"MyEvent" withPayload:v5];
  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"Post"];
  [(PLClientLogger *)self xpcSendMessage:v6 withClientID:51 withKey:@"MyEvent" withPayload:v5];

  objc_sync_exit(@"___BatchCacheSync___");
}

- (void)sendBatchToPPS
{
  v7[1] = *MEMORY[0x1E69E9840];
  objc_sync_enter(@"___BatchCacheSync___");
  v6 = @"PLXPCBatchedMessage";
  dynamicCache = [(PLClientLogger *)self dynamicCache];
  v7[0] = dynamicCache;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v5 = [(PLClientLogger *)self buildMessageForClientID:110 withKey:@"PPSBatchedMessages" withPayload:v4];
  [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"Post"];
  [(PLClientLogger *)self xpcSendMessage:v5 withClientID:110 withKey:@"PPSBatchedMessages" withPayload:v4];

  objc_sync_exit(@"___BatchCacheSync___");
}

- (void)clearCache
{
  objc_sync_enter(@"___BatchCacheSync___");
  [(PLClientLogger *)self clearBatchedTaskCachePPS];
  [(PLClientLogger *)self clearBatchedTaskCache];
  [(PLClientLogger *)self setBatchedTimerInFlight:0];

  objc_sync_exit(@"___BatchCacheSync___");
}

- (void)clearBatchedTaskCachePPS
{
  objc_sync_enter(@"___BatchCacheSync___");
  v3 = objc_opt_new();
  [(PLClientLogger *)self setDynamicCache:v3];

  v4 = objc_opt_new();
  dynamicCache = [(PLClientLogger *)self dynamicCache];
  [dynamicCache setObject:v4 forKeyedSubscript:@"kPLDefault"];

  v6 = objc_opt_new();
  dynamicCache2 = [(PLClientLogger *)self dynamicCache];
  [dynamicCache2 setObject:v6 forKeyedSubscript:@"kPLCuratedBatchingListCache"];

  objc_sync_exit(@"___BatchCacheSync___");
}

- (void)clearBatchedTaskCache
{
  objc_sync_enter(@"___BatchCacheSync___");
  v3 = objc_opt_new();
  [(PLClientLogger *)self setBatchedTaskCache:v3];

  [(PLClientLogger *)self setBatchedDropMessageCount:0];

  objc_sync_exit(@"___BatchCacheSync___");
}

void __43__PLClientLogger_isMessageOnDeviceDisabled__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = [v0 intValue];
  if (v0)
  {
    CFRelease(v0);
  }

  disableMessageOnDevice = v1 == -1;
}

void __32__PLClientLogger_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(PLClientLogger);
  v2 = sharedInstance__clientLogger;
  sharedInstance__clientLogger = v1;

  objc_autoreleasePoolPop(v0);
}

- (PLClientLogger)init
{
  v57.receiver = self;
  v57.super_class = PLClientLogger;
  v2 = [(PLClientLogger *)&v57 init];
  v3 = v2;
  if (v2)
  {
    disableMessageOnDevice = 0;
    v2->_talkToPowerlogHelper = 0;
    v4 = PLLogClientLogging(v2);
    v3->_clientDebug = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_BACKGROUND, 0);

    v7 = dispatch_queue_create("PLClientLoggingWorkQueue", v6);
    workQueue = v3->_workQueue;
    v3->_workQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("PLClientLoggingAdaptivePermissionWorkQueue", v9);
    adaptivePermissionWorkQueue = v3->_adaptivePermissionWorkQueue;
    v3->_adaptivePermissionWorkQueue = v10;

    v12 = dispatch_queue_create("PLClientLoggingFlushQueue", v6);
    batchFlushQueue = v3->_batchFlushQueue;
    v3->_batchFlushQueue = v12;

    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];
    processName = v3->_processName;
    v3->_processName = processName;

    v17 = objc_opt_new();
    permissionCache = v3->_permissionCache;
    v3->_permissionCache = v17;

    v19 = objc_opt_new();
    pendingTaskCache = v3->_pendingTaskCache;
    v3->_pendingTaskCache = v19;

    v21 = objc_opt_new();
    batchedTaskCache = v3->_batchedTaskCache;
    v3->_batchedTaskCache = v21;

    v23 = objc_opt_new();
    dynamicCache = v3->_dynamicCache;
    v3->_dynamicCache = v23;

    v25 = objc_opt_new();
    [(NSMutableDictionary *)v3->_dynamicCache setObject:v25 forKeyedSubscript:@"kPLDefault"];

    v26 = objc_opt_new();
    [(NSMutableDictionary *)v3->_dynamicCache setObject:v26 forKeyedSubscript:@"kPLCuratedBatchingListCache"];

    v27 = objc_opt_new();
    eventFilterSaved = v3->_eventFilterSaved;
    v3->_eventFilterSaved = v27;

    *&v3->_batchedTimerInFlight = 0;
    v3->_batchedDropMessageCount = 0;
    v3->_batchDropMessages = 1;
    v29 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{&unk_1F38E3278, &unk_1F38E3290, &unk_1F38E32A8, &unk_1F38E32C0, &unk_1F38E32D8, &unk_1F38E32F0, &unk_1F38E3308, &unk_1F38E3320, &unk_1F38E3338, &unk_1F38E3350, &unk_1F38E3368, 0}];
    batchingClientAllowlist = v3->_batchingClientAllowlist;
    v3->_batchingClientAllowlist = v29;

    v31 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"BackgroundProcessing::FeatureCheckpoint", @"BackgroundProcessing::SystemConditionsBattery", @"BackgroundProcessing::SystemConditionsInUseOrMotion", @"BackgroundProcessing::SystemConditionsNetwork", @"BackgroundProcessing::SystemConditionsOther", @"BackgroundProcessing::SystemConditionsPowerManagement", @"BackgroundProcessing::TaskCheckpoint", @"BackgroundProcessing::TaskWorkload", @"BackgroundProcessing::TaskInstanceData", @"BackgroundProcessing::TaskInstanceStore", @"BackgroundProcessing::TaskMetadata", @"BackgroundProcessing::TaskRuntimeAllocation", @"GenerativeFunctionMetrics::SmartReplySession", @"GenerativeFunctionMetrics::Summarization", @"GenerativeFunctionMetrics::appleDiffusion", @"GenerativeFunctionMetrics::assetLoad", @"GenerativeFunctionMetrics::mmExecuteRequest", @"GenerativeFunctionMetrics::tgiExecuteRequest", @"BatteryIntelligence::BatteryHealthDelta", @"XPCMetrics::OngoingRestore", 0}];
    curatedBatchingList = v3->_curatedBatchingList;
    v3->_curatedBatchingList = v31;

    v3->_batchMessagesSentCount = 0;
    v33 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"ConfigMetrics::BuddyData", @"ApplicationMetrics::RemoteControlSession", @"Button::CaptureButtonAction", @"Button::CaptureButtonConfig", 0}];
    batchingKeysAllowlist = v3->_batchingKeysAllowlist;
    v3->_batchingKeysAllowlist = v33;

    v35 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v36 = dispatch_queue_create("PLCLientLoggingConnectionQueue", v35);
    xpcConnectionQueue = v3->_xpcConnectionQueue;
    v3->_xpcConnectionQueue = v36;

    v38 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v39 = dispatch_queue_create("PLCLientLoggingConnectionHelperQueue", v38);
    xpcConnectionHelperQueue = v3->_xpcConnectionHelperQueue;
    v3->_xpcConnectionHelperQueue = v39;

    out_token = -1;
    workQueue = [(PLClientLogger *)v3 workQueue];
    LODWORD(v38) = notify_register_dispatch("com.apple.powerlog.state_changed", &out_token, workQueue, &__block_literal_global_131);

    if (v38)
    {
      clientDebug = [(PLClientLogger *)v3 clientDebug];
      if (clientDebug)
      {
        v43 = PLLogClientLogging(clientDebug);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          [PLClientLogger init];
        }
      }
    }

    v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.ProcessName.%@", @"com.apple.powerlog.state_changed", v3->_processName];
    v55 = -1;
    uTF8String = [v44 UTF8String];
    workQueue2 = [(PLClientLogger *)v3 workQueue];
    LODWORD(uTF8String) = notify_register_dispatch(uTF8String, &v55, workQueue2, &__block_literal_global_141);

    if (uTF8String)
    {
      clientDebug2 = [(PLClientLogger *)v3 clientDebug];
      if (clientDebug2)
      {
        v48 = PLLogClientLogging(clientDebug2);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          [PLClientLogger init];
        }
      }
    }

    v54 = -1;
    workQueue3 = [(PLClientLogger *)v3 workQueue];
    v50 = notify_register_dispatch("com.apple.powerlog.clientPermissionState", &v54, workQueue3, &__block_literal_global_145);

    if (v50)
    {
      clientDebug3 = [(PLClientLogger *)v3 clientDebug];
      if (clientDebug3)
      {
        v52 = PLLogClientLogging(clientDebug3);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          [PLClientLogger init];
        }
      }
    }
  }

  return v3;
}

void __22__PLClientLogger_init__block_invoke()
{
  v0 = +[PLClientLogger sharedInstance];
  [v0 powerlogStateChanged];
}

void __22__PLClientLogger_init__block_invoke_139()
{
  v0 = +[PLClientLogger sharedInstance];
  [v0 powerlogStateChanged];
}

void __22__PLClientLogger_init__block_invoke_143()
{
  v0 = +[PLClientLogger sharedInstance];
  [v0 logStateCaches];
}

- (void)logStateCaches
{
  processName = [self processName];
  permissionCache = [self permissionCache];
  pendingTaskCache = [self pendingTaskCache];
  dynamicCache = [self dynamicCache];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8_0(&dword_1BACB7000, v6, v7, "State:%@ ***\npermissionCache=%@\n\npendingTaskCache=%@\n\nbatchedTaskCachePPS=%@\n", v8, v9, v10, v11);
}

- (void)powerlogStateChanged
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __38__PLClientLogger_powerlogStateChanged__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) clientDebug])
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.ClientID.%@", @"com.apple.powerlog.state_changed", v3];
    v6 = PLLogClientLogging(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __38__PLClientLogger_powerlogStateChanged__block_invoke_cold_1();
    }
  }

  v7 = [*(a1 + 40) objectForKeyedSubscript:v3];
  v8 = [v7 objectForKeyedSubscript:@"PLClientPermissionToken"];

  if (v8)
  {
    v9 = [*(a1 + 40) objectForKeyedSubscript:v3];
    v10 = [v9 objectForKeyedSubscript:@"PLClientPermissionToken"];
    notify_cancel([v10 intValue]);
  }

  objc_autoreleasePoolPop(v4);
}

- (id)buildMessageForClientID:(signed __int16)d withKey:(id)key withPayload:(id)payload
{
  dCopy = d;
  keyCopy = key;
  payloadCopy = payload;
  objc_sync_enter(@"___BuildMessageSync___");
  v10 = objc_opt_new();
  v11 = [MEMORY[0x1E696AD98] numberWithShort:dCopy];
  [v10 setObject:v11 forKeyedSubscript:@"clientID"];

  if (keyCopy)
  {
    [v10 setObject:keyCopy forKeyedSubscript:@"event"];
  }

  if (payloadCopy)
  {
    [v10 setObject:payloadCopy forKeyedSubscript:@"content"];
  }

  processName = [(PLClientLogger *)self processName];
  [v10 setObject:processName forKeyedSubscript:@"process-name"];

  clientDebug = [(PLClientLogger *)self clientDebug];
  if (clientDebug)
  {
    v14 = PLLogClientLogging(clientDebug);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [PLClientLogger buildMessageForClientID:withKey:withPayload:];
    }
  }

  objc_sync_exit(@"___BuildMessageSync___");

  return v10;
}

- (void)setCachePermission:(signed __int16)permission ForClientID:(signed __int16)d withKey:(id)key withType:(id)type
{
  dCopy = d;
  permissionCopy = permission;
  v26 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  typeCopy = type;
  clientDebug = [(PLClientLogger *)self clientDebug];
  if (clientDebug)
  {
    v13 = PLLogClientLogging(clientDebug);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v19[0] = 67109890;
      v19[1] = permissionCopy;
      v20 = 1024;
      v21 = dCopy;
      v22 = 2112;
      v23 = keyCopy;
      v24 = 2112;
      v25 = typeCopy;
      _os_log_debug_impl(&dword_1BACB7000, v13, OS_LOG_TYPE_DEBUG, "setCachePermission:%d ForClientID:%d withKey:%@ withType:%@", v19, 0x22u);
    }
  }

  objc_sync_enter(@"___CacheSync___");
  v14 = [MEMORY[0x1E696AD98] numberWithShort:permissionCopy];
  permissionCache = [(PLClientLogger *)self permissionCache];
  v16 = [permissionCache objectForKeyedSubscript:typeCopy];
  v17 = [MEMORY[0x1E696AD98] numberWithShort:dCopy];
  v18 = [v16 objectForKeyedSubscript:v17];
  [v18 setObject:v14 forKeyedSubscript:keyCopy];

  objc_sync_exit(@"___CacheSync___");
}

- (signed)cachedPermissionForClientID:(signed __int16)d withKey:(id)key withType:(id)type
{
  dCopy = d;
  v66 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  typeCopy = type;
  v10 = [MEMORY[0x1E696AD98] numberWithShort:dCopy];
  objc_sync_enter(@"___CacheSync___");
  clientDebug = [(PLClientLogger *)self clientDebug];
  if (clientDebug)
  {
    v12 = PLLogClientLogging(clientDebug);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      permissionCache = [(PLClientLogger *)self permissionCache];
      [PLClientLogger cachedPermissionForClientID:permissionCache withKey:v65 withType:v12];
    }
  }

  permissionCache2 = [(PLClientLogger *)self permissionCache];
  v15 = [permissionCache2 objectForKeyedSubscript:typeCopy];
  v16 = v15 == 0;

  if (v16)
  {
    v17 = objc_opt_new();
    permissionCache3 = [(PLClientLogger *)self permissionCache];
    [permissionCache3 setObject:v17 forKeyedSubscript:typeCopy];
  }

  permissionCache4 = [(PLClientLogger *)self permissionCache];
  v20 = [permissionCache4 objectForKeyedSubscript:typeCopy];
  v21 = [v20 objectForKeyedSubscript:v10];
  v22 = v21 == 0;

  if (v22)
  {
    context = objc_autoreleasePoolPush();
    dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.ClientID.%d", @"com.apple.powerlog.state_changed", dCopy];
    clientDebug2 = [(PLClientLogger *)self clientDebug];
    if (clientDebug2)
    {
      v25 = PLLogClientLogging(clientDebug2);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [PLClientLogger cachedPermissionForClientID:withKey:withType:];
      }
    }

    out_token[0] = -1;
    v26 = dCopy;
    uTF8String = [dCopy UTF8String];
    workQueue = [(PLClientLogger *)self workQueue];
    LODWORD(uTF8String) = notify_register_dispatch(uTF8String, out_token, workQueue, &__block_literal_global_170);

    v29 = objc_opt_new();
    permissionCache5 = [(PLClientLogger *)self permissionCache];
    v31 = [permissionCache5 objectForKeyedSubscript:typeCopy];
    [v31 setObject:v29 forKeyedSubscript:v10];

    if (uTF8String)
    {
      clientDebug3 = [(PLClientLogger *)self clientDebug];
      if (!clientDebug3)
      {
LABEL_18:

        objc_autoreleasePoolPop(context);
        goto LABEL_19;
      }

      v33 = PLLogClientLogging(clientDebug3);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        [PLClientLogger cachedPermissionForClientID:withKey:withType:];
      }
    }

    else
    {
      v33 = [MEMORY[0x1E696AD98] numberWithInt:out_token[0]];
      permissionCache6 = [(PLClientLogger *)self permissionCache];
      v35 = [permissionCache6 objectForKeyedSubscript:typeCopy];
      v36 = [v35 objectForKeyedSubscript:v10];
      [v36 setObject:v33 forKeyedSubscript:@"PLClientPermissionToken"];
    }

    goto LABEL_18;
  }

LABEL_19:
  clientDebug4 = [(PLClientLogger *)self clientDebug];
  if (clientDebug4)
  {
    v38 = PLLogClientLogging(clientDebug4);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      permissionCache7 = [(PLClientLogger *)self permissionCache];
      v54 = [permissionCache7 objectForKeyedSubscript:typeCopy];
      v55 = [v54 objectForKeyedSubscript:v10];
      v56 = [v55 objectForKeyedSubscript:keyCopy];
      out_token[0] = 67109890;
      out_token[1] = dCopy;
      v59 = 2112;
      v60 = keyCopy;
      v61 = 2112;
      v62 = typeCopy;
      v63 = 2112;
      v64 = v56;
      _os_log_debug_impl(&dword_1BACB7000, v38, OS_LOG_TYPE_DEBUG, "cachePermissionForClientID: %d withKey:%@ withType:%@ - Return=%@", out_token, 0x26u);
    }
  }

  permissionCache8 = [(PLClientLogger *)self permissionCache];
  v40 = [permissionCache8 objectForKeyedSubscript:typeCopy];
  v41 = [v40 objectForKeyedSubscript:v10];
  v42 = [v41 objectForKeyedSubscript:keyCopy];
  v43 = v42 == 0;

  if (v43)
  {
    permissionCache9 = [(PLClientLogger *)self permissionCache];
    v45 = [permissionCache9 objectForKeyedSubscript:typeCopy];
    v46 = [v45 objectForKeyedSubscript:v10];
    [v46 setObject:&unk_1F38E3380 forKeyedSubscript:keyCopy];
  }

  permissionCache10 = [(PLClientLogger *)self permissionCache];
  v48 = [permissionCache10 objectForKeyedSubscript:typeCopy];
  v49 = [v48 objectForKeyedSubscript:v10];
  v50 = [v49 objectForKeyedSubscript:keyCopy];
  shortValue = [v50 shortValue];

  objc_sync_exit(@"___CacheSync___");
  return shortValue;
}

void __63__PLClientLogger_cachedPermissionForClientID_withKey_withType___block_invoke()
{
  v0 = +[PLClientLogger sharedInstance];
  [v0 powerlogStateChanged];
}

- (void)addToPendingTaskCacheForType:(id)type forClientID:(signed __int16)d forKey:(id)key withPayload:(id)payload
{
  dCopy = d;
  v40[3] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  keyCopy = key;
  payloadCopy = payload;
  objc_sync_enter(@"___CacheSync___");
  v13 = [MEMORY[0x1E696AD98] numberWithShort:dCopy];
  pendingTaskCache = [(PLClientLogger *)self pendingTaskCache];
  v15 = [pendingTaskCache objectForKeyedSubscript:typeCopy];

  if (!v15)
  {
    v16 = objc_opt_new();
    pendingTaskCache2 = [(PLClientLogger *)self pendingTaskCache];
    [pendingTaskCache2 setObject:v16 forKeyedSubscript:typeCopy];
  }

  pendingTaskCache3 = [(PLClientLogger *)self pendingTaskCache];
  v19 = [pendingTaskCache3 objectForKeyedSubscript:typeCopy];
  v20 = [v19 objectForKeyedSubscript:v13];

  if (!v20)
  {
    v21 = objc_opt_new();
    pendingTaskCache4 = [(PLClientLogger *)self pendingTaskCache];
    v23 = [pendingTaskCache4 objectForKeyedSubscript:typeCopy];
    [v23 setObject:v21 forKeyedSubscript:v13];
  }

  pendingTaskCache5 = [(PLClientLogger *)self pendingTaskCache];
  v25 = [pendingTaskCache5 objectForKeyedSubscript:typeCopy];
  v26 = [v25 objectForKeyedSubscript:v13];
  v27 = [v26 objectForKeyedSubscript:keyCopy];

  if (!v27)
  {
    v28 = objc_opt_new();
    pendingTaskCache6 = [(PLClientLogger *)self pendingTaskCache];
    v30 = [pendingTaskCache6 objectForKeyedSubscript:typeCopy];
    v31 = [v30 objectForKeyedSubscript:v13];
    [v31 setObject:v28 forKeyedSubscript:keyCopy];
  }

  v32 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:payloadCopy copyItems:1];
  pendingTaskCache7 = [(PLClientLogger *)self pendingTaskCache];
  v34 = [pendingTaskCache7 objectForKeyedSubscript:typeCopy];
  v35 = [v34 objectForKeyedSubscript:v13];
  v36 = [v35 objectForKeyedSubscript:keyCopy];
  [v36 addObject:v32];

  clientDebug = [(PLClientLogger *)self clientDebug];
  if (clientDebug)
  {
    v38 = PLLogClientLogging(clientDebug);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      pendingTaskCache8 = [(PLClientLogger *)self pendingTaskCache];
      [PLClientLogger addToPendingTaskCacheForType:pendingTaskCache8 forClientID:v40 forKey:v38 withPayload:?];
    }
  }

  objc_sync_exit(@"___CacheSync___");
}

- (int)batchSizeForClientID:(signed __int16)d
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__PLClientLogger_batchSizeForClientID___block_invoke;
  block[3] = &__block_descriptor_34_e5_v8__0l;
  dCopy = d;
  if (batchSizeForClientID__onceToken != -1)
  {
    dispatch_once(&batchSizeForClientID__onceToken, block);
  }

  if (batchSizeForClientID__batchSize)
  {
    return 60;
  }

  else
  {
    return 20;
  }
}

- (id)cacheForKey:(id)key
{
  keyCopy = key;
  objc_sync_enter(@"___BatchCacheSync___");
  curatedBatchingList = [(PLClientLogger *)self curatedBatchingList];
  v6 = [curatedBatchingList containsObject:keyCopy];

  dynamicCache = [(PLClientLogger *)self dynamicCache];
  if (v6)
  {
    [dynamicCache objectForKeyedSubscript:@"kPLCuratedBatchingListCache"];
  }

  else
  {
    [dynamicCache objectForKeyedSubscript:@"kPLDefault"];
  }
  v8 = ;

  objc_sync_exit(@"___BatchCacheSync___");

  return v8;
}

- (void)addToBatchedTaskCacheForType:(id)type forClientID:(signed __int16)d forKey:(id)key withPayload:(id)payload
{
  dCopy = d;
  v30 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  keyCopy = key;
  payloadCopy = payload;
  objc_sync_enter(@"___BatchCacheSync___");
  if (dCopy != 110)
  {
    batchedTaskCache = [(PLClientLogger *)self batchedTaskCache];
LABEL_5:
    v15 = [(PLClientLogger *)self batchSizeForClientID:dCopy];
    if (dCopy != 110)
    {
      goto LABEL_15;
    }

    goto LABEL_6;
  }

  batchedTaskCache = [(PLClientLogger *)self cacheForKey:keyCopy];
  curatedBatchingList = [(PLClientLogger *)self curatedBatchingList];
  if (([curatedBatchingList containsObject:keyCopy] & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = 30;
LABEL_6:

  curatedBatchingList2 = [(PLClientLogger *)self curatedBatchingList];
  v17 = [curatedBatchingList2 containsObject:keyCopy];

  if (v17)
  {
    if (-[PLClientLogger batchDropMessages](self, "batchDropMessages") && [batchedTaskCache count] >= v15)
    {
      batchMessagesSentCount = [(PLClientLogger *)self batchMessagesSentCount];
      if (batchMessagesSentCount < 8)
      {
        v25 = PLLogClientLogging(batchMessagesSentCount);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          LOWORD(v28) = 0;
          _os_log_impl(&dword_1BACB7000, v25, OS_LOG_TYPE_INFO, "Dynamic cache reached the limit, flushing cache now", &v28, 2u);
        }

        [(PLClientLogger *)self setBatchMessagesSentCount:[(PLClientLogger *)self batchMessagesSentCount]+ 1];
        [(PLClientLogger *)self sendBatchToPPS];
        [(PLClientLogger *)self clearBatchedTaskCachePPS];
        [(PLClientLogger *)self cacheForKey:keyCopy];
        batchedTaskCache = lastObject = batchedTaskCache;
      }

      else
      {
        lastObject = [batchedTaskCache lastObject];
        v20 = PLLogClientLogging(lastObject);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v28 = 138412290;
          v29 = lastObject;
          _os_log_impl(&dword_1BACB7000, v20, OS_LOG_TYPE_INFO, "Dynamic cache reached the limit, unable to flush, dropping last event %@", &v28, 0xCu);
        }

        if ([keyCopy isEqualToString:@"XPCMetrics::OngoingRestore"])
        {
          AnalyticsSendEventLazy();
        }

        [batchedTaskCache removeLastObject];
      }
    }

    goto LABEL_27;
  }

LABEL_15:
  if ([(PLClientLogger *)self batchDropMessages])
  {
    v21 = [batchedTaskCache count];
    if (v21 >= v15)
    {
      v22 = PLLogClientLogging(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        lastObject2 = [batchedTaskCache lastObject];
        v28 = 138412290;
        v29 = lastObject2;
        _os_log_impl(&dword_1BACB7000, v22, OS_LOG_TYPE_INFO, "Hit the cache limit, dropping last event:  %@", &v28, 0xCu);
      }

      [batchedTaskCache removeLastObject];
      if (dCopy == 110)
      {
        batchedDropMessageCount = [(PLClientLogger *)self batchedDropMessageCount];
      }

      else
      {
        batchedDropMessageCount = [(PLClientLogger *)self batchedDropMessageCount]+ 1;
      }

      [(PLClientLogger *)self setBatchedDropMessageCount:batchedDropMessageCount];
    }
  }

LABEL_27:
  v26 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:payloadCopy copyItems:1];
  v27 = [(PLClientLogger *)self buildMessageForClientID:dCopy withKey:keyCopy withPayload:v26];
  [v27 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"Post"];
  [batchedTaskCache addObject:v27];

  objc_sync_exit(@"___BatchCacheSync___");
}

- (id)pendingTasksForType:(id)type forClientID:(signed __int16)d forKey:(id)key
{
  dCopy = d;
  typeCopy = type;
  keyCopy = key;
  objc_sync_enter(@"___CacheSync___");
  v10 = [MEMORY[0x1E696AD98] numberWithShort:dCopy];
  pendingTaskCache = [(PLClientLogger *)self pendingTaskCache];
  v12 = [pendingTaskCache objectForKeyedSubscript:typeCopy];
  v13 = [v12 objectForKeyedSubscript:v10];
  v14 = [v13 objectForKeyedSubscript:keyCopy];

  pendingTaskCache2 = [(PLClientLogger *)self pendingTaskCache];
  v16 = [pendingTaskCache2 objectForKeyedSubscript:typeCopy];
  v17 = [v16 objectForKeyedSubscript:v10];
  [v17 removeObjectForKey:keyCopy];

  objc_sync_exit(@"___CacheSync___");

  return v14;
}

- (id)xpcConnectionWithClientID:(signed __int16)d withKey:(id)key withPayload:(id)payload
{
  dCopy = d;
  keyCopy = key;
  payloadCopy = payload;
  if ((dCopy & 0xFFFFFFFD) == 0x30 || [(PLClientLogger *)self talkToPowerlogHelper])
  {
    p_xpcConnectionHelper = &self->_xpcConnectionHelper;
    xpcConnectionHelper = self->_xpcConnectionHelper;
    clientDebug = [(PLClientLogger *)self clientDebug];
    if (xpcConnectionHelper)
    {
      if (clientDebug)
      {
        v13 = PLLogClientLogging(clientDebug);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [PLClientLogger xpcConnectionWithClientID:withKey:withPayload:];
        }

LABEL_33:
      }
    }

    else
    {
      if (clientDebug)
      {
        v14 = PLLogClientLogging(clientDebug);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [PLClientLogger xpcConnectionWithClientID:withKey:withPayload:];
        }
      }

      mach_service = xpc_connection_create_mach_service("com.apple.powerlogHelperd.XPCService.xpc", self->_xpcConnectionQueue, 0);
      v16 = self->_xpcConnectionHelper;
      self->_xpcConnectionHelper = mach_service;

      v17 = self->_xpcConnectionHelper;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __64__PLClientLogger_xpcConnectionWithClientID_withKey_withPayload___block_invoke;
      handler[3] = &unk_1E7F18C68;
      handler[4] = self;
      v44 = dCopy;
      v42 = keyCopy;
      v43 = payloadCopy;
      xpc_connection_set_event_handler(v17, handler);
      xpc_connection_activate(self->_xpcConnectionHelper);
      clientDebug2 = [(PLClientLogger *)self clientDebug];
      if (clientDebug2)
      {
        v19 = PLLogClientLogging(clientDebug2);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [PLClientLogger xpcConnectionWithClientID:withKey:withPayload:];
        }
      }
    }
  }

  else
  {
    p_xpcConnectionHelper = &self->_xpcConnection;
    xpcConnection = self->_xpcConnection;
    clientDebug3 = [(PLClientLogger *)self clientDebug];
    if (xpcConnection)
    {
      if (clientDebug3)
      {
        v22 = PLLogClientLogging(clientDebug3);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [PLClientLogger xpcConnectionWithClientID:withKey:withPayload:];
        }
      }
    }

    else
    {
      if (clientDebug3)
      {
        v23 = PLLogClientLogging(clientDebug3);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [PLClientLogger xpcConnectionWithClientID:withKey:withPayload:];
        }
      }

      v24 = xpc_connection_create_mach_service("com.apple.powerlog.plxpclogger.xpc", self->_xpcConnectionQueue, 0);
      v25 = self->_xpcConnection;
      self->_xpcConnection = v24;

      v26 = self->_xpcConnection;
      v33 = MEMORY[0x1E69E9820];
      v34 = 3221225472;
      v35 = __64__PLClientLogger_xpcConnectionWithClientID_withKey_withPayload___block_invoke_190;
      v36 = &unk_1E7F18C68;
      selfCopy = self;
      v40 = dCopy;
      v38 = keyCopy;
      v39 = payloadCopy;
      xpc_connection_set_event_handler(v26, &v33);
      xpc_connection_activate(self->_xpcConnection);
      v27 = [(PLClientLogger *)self clientDebug:v33];
      if (v27)
      {
        v28 = PLLogClientLogging(v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          [PLClientLogger xpcConnectionWithClientID:withKey:withPayload:];
        }
      }
    }

    clientDebug4 = [(PLClientLogger *)self clientDebug];
    if (clientDebug4)
    {
      v13 = PLLogClientLogging(clientDebug4);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLClientLogger xpcConnectionWithClientID:withKey:withPayload:];
      }

      goto LABEL_33;
    }
  }

  v30 = *p_xpcConnectionHelper;
  v31 = v30;

  return v30;
}

void __64__PLClientLogger_xpcConnectionWithClientID_withKey_withPayload___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) clientDebug];
  if (v4)
  {
    v5 = PLLogClientLogging(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v13 = [*(a1 + 32) xpcConnectionWithClientID:*(a1 + 56) withKey:*(a1 + 40) withPayload:*(a1 + 48)];
      v14[0] = 67109378;
      v14[1] = xpc_connection_get_pid(v13);
      v15 = 2112;
      v16 = v3;
      _os_log_debug_impl(&dword_1BACB7000, v5, OS_LOG_TYPE_DEBUG, "xpcConnectionWithClientID: Event handler fired peerPID=%d %@", v14, 0x12u);
    }
  }

  v6 = MEMORY[0x1BFB01330](v3);
  v7 = MEMORY[0x1E69E9E98];
  v8 = [*(a1 + 32) clientDebug];
  if (v6 == v7)
  {
    if (v8)
    {
      v10 = PLLogClientLogging(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __64__PLClientLogger_xpcConnectionWithClientID_withKey_withPayload___block_invoke_cold_2();
      }
    }

    if (v3 == MEMORY[0x1E69E9E20])
    {
      v11 = [*(a1 + 32) clientDebug];
      if (v11)
      {
        v12 = PLLogClientLogging(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          __64__PLClientLogger_xpcConnectionWithClientID_withKey_withPayload___block_invoke_cold_3();
        }
      }

      disableMessageOnDevice = 1;
    }
  }

  else if (v8)
  {
    v9 = PLLogClientLogging(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __64__PLClientLogger_xpcConnectionWithClientID_withKey_withPayload___block_invoke_cold_1();
    }
  }
}

void __64__PLClientLogger_xpcConnectionWithClientID_withKey_withPayload___block_invoke_190(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) clientDebug];
  if (v4)
  {
    v5 = PLLogClientLogging(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v10 = [*(a1 + 32) xpcConnectionWithClientID:*(a1 + 56) withKey:*(a1 + 40) withPayload:*(a1 + 48)];
      v11[0] = 67109378;
      v11[1] = xpc_connection_get_pid(v10);
      v12 = 2112;
      v13 = v3;
      _os_log_debug_impl(&dword_1BACB7000, v5, OS_LOG_TYPE_DEBUG, "xpcConnectionWithClientID: event handler fired peerPID=%d %@", v11, 0x12u);
    }
  }

  if (MEMORY[0x1BFB01330](v3) == MEMORY[0x1E69E9E98])
  {
    if (v3 == MEMORY[0x1E69E9E20])
    {
      v8 = [*(a1 + 32) clientDebug];
      if (v8)
      {
        v9 = PLLogClientLogging(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          __64__PLClientLogger_xpcConnectionWithClientID_withKey_withPayload___block_invoke_cold_3();
        }
      }

      disableMessageOnDevice = 1;
    }
  }

  else
  {
    v6 = [*(a1 + 32) clientDebug];
    if (v6)
    {
      v7 = PLLogClientLogging(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __64__PLClientLogger_xpcConnectionWithClientID_withKey_withPayload___block_invoke_190_cold_1();
      }
    }
  }
}

- (void)xpcSendMessage:(id)message withClientID:(signed __int16)d withKey:(id)key withPayload:(id)payload
{
  dCopy = d;
  messageCopy = message;
  keyCopy = key;
  payloadCopy = payload;
  clientDebug = [(PLClientLogger *)self clientDebug];
  if (clientDebug)
  {
    v14 = PLLogClientLogging(clientDebug);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [PLClientLogger xpcSendMessage:withClientID:withKey:withPayload:];
    }
  }

  v15 = _CFXPCCreateXPCMessageWithCFObject();
  if (v15)
  {
    v16 = [(PLClientLogger *)self xpcConnectionWithClientID:dCopy withKey:keyCopy withPayload:payloadCopy];
    if (v16)
    {
      xpc_connection_send_notification();
    }

    else
    {
      v18 = PLLogClientLogging(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *v19 = 0;
        _os_log_impl(&dword_1BACB7000, v18, OS_LOG_TYPE_INFO, "xpcSendMessage: xpc connection is not valid", v19, 2u);
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  clientDebug2 = [(PLClientLogger *)self clientDebug];
  if (clientDebug2)
  {
    v16 = PLLogClientLogging(clientDebug2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [PLClientLogger xpcSendMessage:withClientID:withKey:withPayload:];
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (id)xpcSendMessageWithReply:(id)reply withClientID:(signed __int16)d withKey:(id)key withPayload:(id)payload
{
  dCopy = d;
  v46 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  keyCopy = key;
  payloadCopy = payload;
  clientDebug = [(PLClientLogger *)self clientDebug];
  if (clientDebug)
  {
    v14 = PLLogClientLogging(clientDebug);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v37 = [(PLClientLogger *)self xpcConnectionWithClientID:dCopy withKey:keyCopy withPayload:payloadCopy];
      *buf = 138412546;
      v41 = replyCopy;
      v42 = 2112;
      v43 = v37;
      _os_log_debug_impl(&dword_1BACB7000, v14, OS_LOG_TYPE_DEBUG, "xpcSendMessageWithReply: waiting for replay to message %@, xpcConnection=%@", buf, 0x16u);
    }
  }

  v15 = _CFXPCCreateXPCMessageWithCFObject();
  if (v15)
  {
    v16 = [(PLClientLogger *)self xpcConnectionWithClientID:dCopy withKey:keyCopy withPayload:payloadCopy];
    v17 = v16;
    if (v16)
    {
      v18 = xpc_connection_send_message_with_reply_sync(v16, v15);
      clientDebug2 = [(PLClientLogger *)self clientDebug];
      if (clientDebug2)
      {
        v20 = PLLogClientLogging(clientDebug2);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v38 = [(PLClientLogger *)self xpcConnectionWithClientID:dCopy withKey:keyCopy withPayload:payloadCopy];
          *buf = 138412802;
          v41 = v15;
          v42 = 2112;
          v43 = v18;
          v44 = 2112;
          v45 = v38;
          _os_log_debug_impl(&dword_1BACB7000, v20, OS_LOG_TYPE_DEBUG, "xpcSendMessageWithReply: xpcMessage=%@, xpcResponse=%@, xpcConnection=%@", buf, 0x20u);
        }
      }

      clientDebug3 = [(PLClientLogger *)self clientDebug];
      if (v18)
      {
        if (clientDebug3)
        {
          v22 = PLLogClientLogging(clientDebug3);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            [PLClientLogger xpcSendMessageWithReply:withClientID:withKey:withPayload:];
          }
        }

        v23 = xpc_dictionary_get_value(v18, [@"PLXPCConnectionReturnDict" UTF8String]);
        clientDebug4 = [(PLClientLogger *)self clientDebug];
        if (v23)
        {
          if (clientDebug4)
          {
            v25 = PLLogClientLogging(clientDebug4);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              [PLClientLogger xpcSendMessageWithReply:withClientID:withKey:withPayload:];
            }
          }

          v26 = _CFXPCCreateCFObjectFromXPCMessage();
          v27 = [v26 objectForKeyedSubscript:@"PLXPCClientDebug"];

          if (v27)
          {
            v28 = [v26 objectForKeyedSubscript:@"PLXPCClientDebug"];
            bOOLValue = [v28 BOOLValue];

            v30 = PLLogClientLogging(v29);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              [PLClientLogger xpcSendMessageWithReply:withClientID:withKey:withPayload:];
            }

            [(PLClientLogger *)self setClientDebug:bOOLValue];
          }

          clientDebug5 = [(PLClientLogger *)self clientDebug];
          if (v26)
          {
            if (clientDebug5)
            {
              v32 = PLLogClientLogging(clientDebug5);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                [PLClientLogger xpcSendMessageWithReply:withClientID:withKey:withPayload:];
              }
            }

            v26 = v26;
            v33 = v26;
          }

          else
          {
            if (clientDebug5)
            {
              v35 = PLLogClientLogging(clientDebug5);
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
              {
                [PLClientLogger xpcSendMessageWithReply:withClientID:withKey:withPayload:];
              }
            }

            v33 = 0;
          }

LABEL_52:

          goto LABEL_53;
        }

        if (clientDebug4)
        {
          v26 = PLLogClientLogging(clientDebug4);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            [PLClientLogger xpcSendMessageWithReply:withClientID:withKey:withPayload:];
          }

          v33 = 0;
          goto LABEL_52;
        }

LABEL_46:
        v33 = 0;
LABEL_53:

        goto LABEL_54;
      }

      if (clientDebug3)
      {
        v23 = PLLogClientLogging(clientDebug3);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [PLClientLogger xpcSendMessageWithReply:withClientID:withKey:withPayload:];
        }

        goto LABEL_46;
      }
    }

    else
    {
      v18 = PLLogClientLogging(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1BACB7000, v18, OS_LOG_TYPE_INFO, "xpcSendMessageWithReply: xpc connection is not valid", buf, 2u);
      }
    }

    v33 = 0;
LABEL_54:

    goto LABEL_55;
  }

  clientDebug6 = [(PLClientLogger *)self clientDebug];
  if (!clientDebug6)
  {
    v33 = 0;
    goto LABEL_56;
  }

  v17 = PLLogClientLogging(clientDebug6);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [PLClientLogger xpcSendMessageWithReply:withClientID:withKey:withPayload:];
  }

  v33 = 0;
LABEL_55:

LABEL_56:

  return v33;
}

- (void)permissionForClientID:(signed __int16)d withKey:(id)key withType:(id)type completion:(id)completion
{
  dCopy = d;
  v32 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  typeCopy = type;
  completionCopy = completion;
  v13 = [(PLClientLogger *)self cachedPermissionForClientID:dCopy withKey:keyCopy withType:typeCopy];
  clientDebug = [(PLClientLogger *)self clientDebug];
  if (clientDebug)
  {
    v15 = PLLogClientLogging(clientDebug);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109890;
      v25 = dCopy;
      v26 = 2112;
      v27 = keyCopy;
      v28 = 2112;
      v29 = typeCopy;
      v30 = 1024;
      v31 = v13;
      _os_log_debug_impl(&dword_1BACB7000, v15, OS_LOG_TYPE_DEBUG, "permissionForClientID: permissionForClientId: %hd withKey:%@ withType:%@ returnValue=%hd", buf, 0x22u);
    }
  }

  if (v13 == 2)
  {
    [(PLClientLogger *)self setCachePermission:3 ForClientID:dCopy withKey:keyCopy withType:typeCopy];
    adaptivePermissionWorkQueue = [(PLClientLogger *)self adaptivePermissionWorkQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__PLClientLogger_permissionForClientID_withKey_withType_completion___block_invoke;
    block[3] = &unk_1E7F18C90;
    block[4] = self;
    v23 = dCopy;
    v20 = keyCopy;
    v21 = typeCopy;
    v22 = completionCopy;
    dispatch_async(adaptivePermissionWorkQueue, block);
  }

  else
  {
    clientDebug2 = [(PLClientLogger *)self clientDebug];
    if (clientDebug2)
    {
      v18 = PLLogClientLogging(clientDebug2);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [PLClientLogger permissionForClientID:withKey:withType:completion:];
      }
    }

    (*(completionCopy + 2))(completionCopy, v13);
  }
}

void __68__PLClientLogger_permissionForClientID_withKey_withType_completion___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) buildMessageForClientID:*(a1 + 64) withKey:*(a1 + 40) withPayload:0];
  [v2 setObject:*(a1 + 48) forKeyedSubscript:@"shouldLog"];
  v3 = [*(a1 + 32) xpcSendMessageWithReply:v2 withClientID:*(a1 + 64) withKey:*(a1 + 40) withPayload:0];
  v4 = [*(a1 + 32) clientDebug];
  if (v4)
  {
    v5 = PLLogClientLogging(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __68__PLClientLogger_permissionForClientID_withKey_withType_completion___block_invoke_cold_1();
    }
  }

  if (v3)
  {
    v6 = [v3 objectForKeyedSubscript:@"shouldLog"];
    v7 = [v6 shortValue];

    [*(a1 + 32) setCachePermission:v7 ForClientID:*(a1 + 64) withKey:*(a1 + 40) withType:*(a1 + 48)];
    (*(*(a1 + 56) + 16))();
    v8 = v7 == 1;
  }

  else
  {
    [*(a1 + 32) setCachePermission:2 ForClientID:*(a1 + 64) withKey:*(a1 + 40) withType:*(a1 + 48)];
    (*(*(a1 + 56) + 16))();
    v8 = 0;
  }

  v9 = [*(a1 + 32) pendingTasksForType:*(a1 + 48) forClientID:*(a1 + 64) forKey:*(a1 + 40)];
  v10 = [*(a1 + 32) clientDebug];
  if (v10)
  {
    v11 = PLLogClientLogging(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 64);
      v22 = *(a1 + 40);
      v23 = *(a1 + 48);
      *buf = 67110402;
      *v31 = v21;
      *&v31[4] = 2112;
      *&v31[6] = v22;
      v32 = 2112;
      v33 = v23;
      v34 = 2112;
      v35 = v2;
      v36 = 2112;
      v37 = v3;
      v38 = 2112;
      v39 = v9;
      _os_log_debug_impl(&dword_1BACB7000, v11, OS_LOG_TYPE_DEBUG, "permissionForClientID:%d withKey:%@ withType:%@\nquery=%@\n\nresult=%@\n\npending=%@", buf, 0x3Au);
    }
  }

  if (v8)
  {
    if ([*(a1 + 48) isEqualToString:@"Post"])
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v12 = v9;
      v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v13)
      {
        v14 = v13;
        v24 = v2;
        v15 = *v26;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v26 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v25 + 1) + 8 * i);
            v18 = [*(a1 + 32) clientDebug];
            if (v18)
            {
              v19 = PLLogClientLogging(v18);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                *v31 = v17;
                _os_log_debug_impl(&dword_1BACB7000, v19, OS_LOG_TYPE_DEBUG, "permissionForClientID: logging %@", buf, 0xCu);
              }
            }

            [*(a1 + 32) logForClientID:*(a1 + 64) withKey:*(a1 + 40) withPayload:v17];
          }

          v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v14);
        v2 = v24;
      }

LABEL_30:

      goto LABEL_31;
    }

    if ([*(a1 + 48) isEqualToString:@"Query"])
    {
      v20 = [*(a1 + 32) clientDebug];
      if (v20)
      {
        v12 = PLLogClientLogging(v20);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          __68__PLClientLogger_permissionForClientID_withKey_withType_completion___block_invoke_cold_2();
        }

        goto LABEL_30;
      }
    }
  }

LABEL_31:
}

- (signed)blockedPermissionForClientID:(signed __int16)d withKey:(id)key withType:(id)type withTimeout:(unint64_t)timeout
{
  dCopy = d;
  keyCopy = key;
  typeCopy = type;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 3;
  v12 = dispatch_semaphore_create(0);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __76__PLClientLogger_blockedPermissionForClientID_withKey_withType_withTimeout___block_invoke;
  v16[3] = &unk_1E7F18CB8;
  v18 = &v19;
  v13 = v12;
  v17 = v13;
  [(PLClientLogger *)self permissionForClientID:dCopy withKey:keyCopy withType:typeCopy completion:v16];
  v14 = dispatch_time(0, timeout);
  dispatch_semaphore_wait(v13, v14);
  LOWORD(timeout) = *(v20 + 12);

  _Block_object_dispose(&v19, 8);
  return timeout;
}

- (void)logWithCurrentDateForClientID:(signed __int16)d withKey:(id)key withPayload:(id)payload
{
  if (key && payload)
  {
    dCopy = d;
    keyCopy = key;
    v10 = [payload mutableCopy];
    date = [MEMORY[0x1E695DF00] date];
    [v10 setObject:date forKey:@"__pl_internal_timeSensitiveSystemDate"];

    [(PLClientLogger *)self logForClientID:dCopy withKey:keyCopy withPayload:v10];
  }
}

- (void)logForClientID:(signed __int16)d withKey:(id)key withPayload:(id)payload
{
  dCopy = d;
  v24 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  payloadCopy = payload;
  objc_opt_class();
  v10 = objc_opt_class();
  if (payloadCopy && (v10 = [payloadCopy count], keyCopy) && v10 && (v10 = objc_msgSend(keyCopy, "length")) != 0)
  {
    if (dCopy == 110)
    {
      goto LABEL_6;
    }

    v14 = [(PLClientLogger *)self blockedPermissionForClientID:dCopy withKey:keyCopy withType:@"Post" withTimeout:0];
    if (!v14)
    {
      goto LABEL_14;
    }

    v15 = v14;
    if (v14 == 1)
    {
LABEL_6:
      clientDebug = [(PLClientLogger *)self clientDebug];
      if (clientDebug)
      {
        v12 = PLLogClientLogging(clientDebug);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v20 = 67109634;
          v21 = dCopy;
          v22 = 2112;
          *v23 = keyCopy;
          *&v23[8] = 2112;
          *&v23[10] = payloadCopy;
          _os_log_debug_impl(&dword_1BACB7000, v12, OS_LOG_TYPE_DEBUG, "logForClientID: sending xpc message for client id: %d withKey:%@ withPayload:%@ dispatching...", &v20, 0x1Cu);
        }
      }

      [(PLClientLogger *)self xpcSendMessageWithRateLimitingforClient:dCopy withKey:keyCopy withPayload:payloadCopy];
    }

    else if (v14 == 3)
    {
      clientDebug2 = [(PLClientLogger *)self clientDebug];
      if (clientDebug2)
      {
        v17 = PLLogClientLogging(clientDebug2);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v20 = 67109634;
          v21 = dCopy;
          v22 = 2112;
          *v23 = keyCopy;
          *&v23[8] = 2112;
          *&v23[10] = payloadCopy;
          _os_log_debug_impl(&dword_1BACB7000, v17, OS_LOG_TYPE_DEBUG, "logForClientID: %d withKey:%@ withPayload:%@ caching...", &v20, 0x1Cu);
        }
      }

      [(PLClientLogger *)self addToPendingTaskCacheForType:@"Post" forClientID:dCopy forKey:keyCopy withPayload:payloadCopy];
    }

    else
    {
      clientDebug3 = [(PLClientLogger *)self clientDebug];
      if (clientDebug3)
      {
        v19 = PLLogClientLogging(clientDebug3);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v20 = 67109890;
          v21 = v15;
          v22 = 1024;
          *v23 = dCopy;
          *&v23[4] = 2112;
          *&v23[6] = keyCopy;
          *&v23[14] = 2112;
          *&v23[16] = payloadCopy;
          _os_log_debug_impl(&dword_1BACB7000, v19, OS_LOG_TYPE_DEBUG, "logForClientID: Unknown Permission %d - for client id:%d withKey:%@ withPayload:%@", &v20, 0x22u);
        }
      }
    }
  }

  else
  {
    v13 = PLLogClientLogging(v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [PLClientLogger logForClientID:withKey:withPayload:];
    }
  }

LABEL_14:
}

- (int)shouldLogNowForClientID:(signed __int16)d withKey:(id)key withPayload:(id)payload withFilterInterval:(double)interval
{
  dCopy = d;
  v60 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  payloadCopy = payload;
  date = [MEMORY[0x1E695DF00] date];
  keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d_%@", dCopy, keyCopy];
  objc_sync_enter(@"___sFilterByIntervalBufferSync___");
  eventFilterSaved = [(PLClientLogger *)self eventFilterSaved];
  v14 = [eventFilterSaved objectForKeyedSubscript:keyCopy];

  if (!v14)
  {
    v15 = objc_opt_new();
    eventFilterSaved2 = [(PLClientLogger *)self eventFilterSaved];
    [eventFilterSaved2 setObject:v15 forKeyedSubscript:keyCopy];
  }

  eventFilterSaved3 = [(PLClientLogger *)self eventFilterSaved];
  v18 = [eventFilterSaved3 objectForKeyedSubscript:keyCopy];
  v19 = [v18 objectForKeyedSubscript:@"lastEventDate"];

  clientDebug = [(PLClientLogger *)self clientDebug];
  if (clientDebug)
  {
    v21 = PLLogClientLogging(clientDebug);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109890;
      v53 = dCopy;
      v54 = 2112;
      v55 = keyCopy;
      v56 = 2112;
      v57 = date;
      v58 = 2112;
      v59 = payloadCopy;
      _os_log_debug_impl(&dword_1BACB7000, v21, OS_LOG_TYPE_DEBUG, "shouldLogNowForClientID: (PLLogRegisteredEventFilterByInterval) Check(%d, %@ at %@) - %@\n", buf, 0x26u);
    }

    if (!v19)
    {
      if (payloadCopy)
      {
        goto LABEL_20;
      }

LABEL_24:
      clientDebug2 = [(PLClientLogger *)self clientDebug];
      if (clientDebug2)
      {
        v41 = PLLogClientLogging(clientDebug2);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109890;
          v53 = dCopy;
          v54 = 2112;
          v55 = keyCopy;
          v56 = 2112;
          v57 = date;
          v58 = 2112;
          v59 = 0;
          _os_log_debug_impl(&dword_1BACB7000, v41, OS_LOG_TYPE_DEBUG, "(PLLogRegisteredEventFilterByInterval) Drop invalid(%d, %@ at %@) - %@\n", buf, 0x26u);
        }

        v33 = 3;
        goto LABEL_34;
      }

      v33 = 3;
      goto LABEL_35;
    }

    v23 = PLLogClientLogging(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [PLClientLogger shouldLogNowForClientID:withKey:withPayload:withFilterInterval:];
    }

    v25 = PLLogClientLogging(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [PLClientLogger shouldLogNowForClientID:withKey:withPayload:withFilterInterval:];
    }

    v27 = PLLogClientLogging(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [date timeIntervalSinceDate:v19];
      [PLClientLogger shouldLogNowForClientID:v51 withKey:v27 withPayload:v28 withFilterInterval:interval];
    }
  }

  if (!payloadCopy)
  {
    goto LABEL_24;
  }

  if (v19)
  {
    [date timeIntervalSinceDate:v19];
    if (v29 < interval)
    {
      eventFilterSaved4 = [(PLClientLogger *)self eventFilterSaved];
      v31 = [eventFilterSaved4 objectForKeyedSubscript:keyCopy];
      v32 = [v31 objectForKeyedSubscript:@"bufferedEventDictionary"];

      if (v32)
      {
        v33 = 2;
      }

      else
      {
        eventFilterSaved5 = [(PLClientLogger *)self eventFilterSaved];
        v44 = [eventFilterSaved5 objectForKeyedSubscript:keyCopy];
        [v44 setObject:date forKeyedSubscript:@"bufferedEventDate"];

        v33 = 1;
      }

      v45 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:payloadCopy copyItems:1];
      eventFilterSaved6 = [(PLClientLogger *)self eventFilterSaved];
      v47 = [eventFilterSaved6 objectForKeyedSubscript:keyCopy];
      [v47 setObject:v45 forKeyedSubscript:@"bufferedEventDictionary"];

      clientDebug3 = [(PLClientLogger *)self clientDebug];
      if (clientDebug3)
      {
        v41 = PLLogClientLogging(clientDebug3);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109890;
          v53 = dCopy;
          v54 = 2112;
          v55 = keyCopy;
          v56 = 2112;
          v57 = date;
          v58 = 2112;
          v59 = payloadCopy;
          _os_log_debug_impl(&dword_1BACB7000, v41, OS_LOG_TYPE_DEBUG, "(PLLogRegisteredEventFilterByInterval) Buffer(%d, %@ at %@) - %@\n", buf, 0x26u);
        }

LABEL_34:

        goto LABEL_35;
      }

      goto LABEL_35;
    }
  }

LABEL_20:
  eventFilterSaved7 = [(PLClientLogger *)self eventFilterSaved];
  v35 = [eventFilterSaved7 objectForKeyedSubscript:keyCopy];
  [v35 setObject:date forKeyedSubscript:@"lastEventDate"];

  eventFilterSaved8 = [(PLClientLogger *)self eventFilterSaved];
  v37 = [eventFilterSaved8 objectForKeyedSubscript:keyCopy];
  [v37 removeObjectForKey:@"bufferedEventDictionary"];

  eventFilterSaved9 = [(PLClientLogger *)self eventFilterSaved];
  v39 = [eventFilterSaved9 objectForKeyedSubscript:keyCopy];
  [v39 removeObjectForKey:@"bufferedEventDate"];

  clientDebug4 = [(PLClientLogger *)self clientDebug];
  if (clientDebug4)
  {
    v41 = PLLogClientLogging(clientDebug4);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109890;
      v53 = dCopy;
      v54 = 2112;
      v55 = keyCopy;
      v56 = 2112;
      v57 = date;
      v58 = 2112;
      v59 = payloadCopy;
      _os_log_debug_impl(&dword_1BACB7000, v41, OS_LOG_TYPE_DEBUG, "(PLLogRegisteredEventFilterByInterval)  Log(%d, %@ at %@) - %@\n", buf, 0x26u);
    }

    v33 = 0;
    goto LABEL_34;
  }

  v33 = 0;
LABEL_35:

  objc_sync_exit(@"___sFilterByIntervalBufferSync___");
  return v33;
}

- (void)logLaterForClientID:(signed __int16)d withKey:(id)key withFilterInterval:(double)interval
{
  dCopy = d;
  keyCopy = key;
  clientDebug = [(PLClientLogger *)self clientDebug];
  if (clientDebug)
  {
    v10 = PLLogClientLogging(clientDebug);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [PLClientLogger logLaterForClientID:v10 withKey:? withFilterInterval:?];
    }
  }

  v11 = dispatch_time(0, (interval * 1000000000.0));
  v12 = [(PLClientLogger *)self getWorkQueueForClientID:dCopy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__PLClientLogger_logLaterForClientID_withKey_withFilterInterval___block_invoke;
  v14[3] = &unk_1E7F18CE0;
  v17 = dCopy;
  v14[4] = self;
  v15 = keyCopy;
  intervalCopy = interval;
  v13 = keyCopy;
  dispatch_after(v11, v12, v14);
}

void __65__PLClientLogger_logLaterForClientID_withKey_withFilterInterval___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) clientDebug];
  if (v2)
  {
    v3 = PLLogClientLogging(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __65__PLClientLogger_logLaterForClientID_withKey_withFilterInterval___block_invoke_cold_1(v3);
    }
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d_%@", *(a1 + 56), *(a1 + 40)];
  v5 = [MEMORY[0x1E695DF00] date];
  objc_sync_enter(@"___sFilterByIntervalBufferSync___");
  v6 = [*(a1 + 32) eventFilterSaved];
  v7 = [v6 objectForKeyedSubscript:v4];
  v8 = [v7 objectForKeyedSubscript:@"bufferedEventDictionary"];

  v9 = [*(a1 + 32) eventFilterSaved];
  v10 = [v9 objectForKeyedSubscript:v4];
  v11 = [v10 objectForKeyedSubscript:@"bufferedEventDate"];

  if (v8 && v11)
  {
    [v5 timeIntervalSinceDate:v11];
    if (v12 >= *(a1 + 48))
    {
      v15 = [*(a1 + 32) eventFilterSaved];
      v16 = [v15 objectForKeyedSubscript:v4];
      [v16 removeObjectForKey:@"bufferedEventDictionary"];

      v17 = [*(a1 + 32) eventFilterSaved];
      v18 = [v17 objectForKeyedSubscript:v4];
      [v18 removeObjectForKey:@"bufferedEventDate"];

      v14 = [MEMORY[0x1E695DF00] date];
      v13 = [*(a1 + 32) eventFilterSaved];
      v19 = [v13 objectForKeyedSubscript:v4];
      [v19 setObject:v14 forKeyedSubscript:@"lastEventDate"];
    }

    else
    {
      v13 = v8;
      v14 = v11;
      v11 = 0;
      v8 = 0;
    }
  }

  objc_sync_exit(@"___sFilterByIntervalBufferSync___");
  if (v8)
  {
    v20 = v11 == 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = !v20;
  v22 = [*(a1 + 32) clientDebug];
  if (v21)
  {
    if (v22)
    {
      v23 = PLLogClientLogging(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v25 = *(a1 + 56);
        v26 = *(a1 + 40);
        *buf = 67109890;
        v30 = v25;
        v31 = 2112;
        v32 = v26;
        v33 = 2112;
        v34 = v5;
        v35 = 2112;
        v36 = v8;
        _os_log_debug_impl(&dword_1BACB7000, v23, OS_LOG_TYPE_DEBUG, "(PLLogRegisteredEventFilterByInterval) \t\t Log Buffered(%d, %@ at %@) - %@\n", buf, 0x26u);
      }
    }

    [*(a1 + 32) logWithCurrentDateForClientID:*(a1 + 56) withKey:*(a1 + 40) withPayload:v8];
  }

  else if (v22)
  {
    v24 = PLLogClientLogging(v22);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v27 = *(a1 + 56);
      v28 = *(a1 + 40);
      *buf = 67109634;
      v30 = v27;
      v31 = 2112;
      v32 = v28;
      v33 = 2112;
      v34 = v5;
      _os_log_debug_impl(&dword_1BACB7000, v24, OS_LOG_TYPE_DEBUG, "(PLLogRegisteredEventFilterByInterval) \t\t No Buffered Log(%d, %@ at %@)\n", buf, 0x1Cu);
    }
  }
}

- (void)xpcSendMessageWithRateLimitingforClient:(signed __int16)client withKey:(id)key withPayload:(id)payload
{
  clientCopy = client;
  keyCopy = key;
  payloadCopy = payload;
  batchingClientAllowlist = [(PLClientLogger *)self batchingClientAllowlist];
  v11 = [MEMORY[0x1E696AD98] numberWithShort:clientCopy];
  v12 = [batchingClientAllowlist containsObject:v11];

  batchingKeysAllowlist = [(PLClientLogger *)self batchingKeysAllowlist];
  v14 = [batchingKeysAllowlist containsObject:keyCopy];

  talkToPowerlogHelper = [(PLClientLogger *)self talkToPowerlogHelper];
  if ([(PLClientLogger *)self forceBatching]|| ((talkToPowerlogHelper | v14 | v12) & 1) == 0)
  {
    clientDebug = [(PLClientLogger *)self clientDebug];
    if (clientDebug)
    {
      v19 = PLLogClientLogging(clientDebug);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [PLClientLogger xpcSendMessageWithRateLimitingforClient:withKey:withPayload:];
      }
    }

    objc_sync_enter(@"___BatchCacheSync___");
    if (![(PLClientLogger *)self batchedTimerInFlight])
    {
      [(PLClientLogger *)self setBatchedTimerInFlight:1];
      v20 = dispatch_time(0, 5000000000);
      batchFlushQueue = [(PLClientLogger *)self batchFlushQueue];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __78__PLClientLogger_xpcSendMessageWithRateLimitingforClient_withKey_withPayload___block_invoke_227;
      v23[3] = &unk_1E7F187A0;
      v23[4] = self;
      dispatch_after(v20, batchFlushQueue, v23);
    }

    objc_sync_exit(@"___BatchCacheSync___");
    [(PLClientLogger *)self addToBatchedTaskCacheForType:@"Post" forClientID:clientCopy forKey:keyCopy withPayload:payloadCopy];
  }

  else
  {
    if (clientCopy == 58)
    {
      v16 = [(PLClientLogger *)self getWorkQueueForClientID:58];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __78__PLClientLogger_xpcSendMessageWithRateLimitingforClient_withKey_withPayload___block_invoke;
      block[3] = &unk_1E7F18D08;
      block[4] = self;
      v31 = 58;
      v29 = keyCopy;
      v30 = payloadCopy;
      dispatch_async_and_wait(v16, block);

      v17 = v29;
    }

    else
    {
      v22 = [(PLClientLogger *)self getWorkQueueForClientID:clientCopy];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __78__PLClientLogger_xpcSendMessageWithRateLimitingforClient_withKey_withPayload___block_invoke_226;
      v24[3] = &unk_1E7F18D08;
      v24[4] = self;
      v27 = clientCopy;
      v25 = keyCopy;
      v26 = payloadCopy;
      dispatch_async(v22, v24);

      v17 = v25;
    }
  }
}

void __78__PLClientLogger_xpcSendMessageWithRateLimitingforClient_withKey_withPayload___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) buildMessageForClientID:*(a1 + 56) withKey:*(a1 + 40) withPayload:*(a1 + 48)];
  [v2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"Post"];
  [*(a1 + 32) xpcSendMessage:v2 withClientID:*(a1 + 56) withKey:*(a1 + 40) withPayload:*(a1 + 48)];
  v3 = [*(a1 + 32) clientDebug];
  if (v3)
  {
    v4 = PLLogClientLogging(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 56);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8[0] = 67109634;
      v8[1] = v5;
      v9 = 2112;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_debug_impl(&dword_1BACB7000, v4, OS_LOG_TYPE_DEBUG, "xpcSendMessageWithRateLimitingforClient: client id:%d withKey:%@ withPayload:%@ sent!", v8, 0x1Cu);
    }
  }
}

void __78__PLClientLogger_xpcSendMessageWithRateLimitingforClient_withKey_withPayload___block_invoke_226(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) buildMessageForClientID:*(a1 + 56) withKey:*(a1 + 40) withPayload:*(a1 + 48)];
  [v2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"Post"];
  v3 = [*(a1 + 32) clientDebug];
  if (v3)
  {
    v4 = PLLogClientLogging(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 56);
      v8 = *(a1 + 40);
      v12 = 67109634;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v2;
      _os_log_debug_impl(&dword_1BACB7000, v4, OS_LOG_TYPE_DEBUG, "XPC Send Message - not batched xpcSendMessageWithRateLimitingforClient: %d withKey:%@ message %@", &v12, 0x1Cu);
    }
  }

  [*(a1 + 32) xpcSendMessage:v2 withClientID:*(a1 + 56) withKey:*(a1 + 40) withPayload:*(a1 + 48)];
  v5 = [*(a1 + 32) clientDebug];
  if (v5)
  {
    v6 = PLLogClientLogging(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 56);
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v12 = 67109634;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_debug_impl(&dword_1BACB7000, v6, OS_LOG_TYPE_DEBUG, "xpcSendMessageWithRateLimitingforClient: %d withKey:%@ withPayload:%@ sent!", &v12, 0x1Cu);
    }
  }
}

uint64_t __78__PLClientLogger_xpcSendMessageWithRateLimitingforClient_withKey_withPayload___block_invoke_227(uint64_t a1)
{
  [*(a1 + 32) batchTasksCacheFlush];
  [*(a1 + 32) sendBatchToPPS];
  [*(a1 + 32) clearCache];
  v2 = *(a1 + 32);

  return [v2 setBatchMessagesSentCount:0];
}

- (id)queryForClientID:(signed __int16)d withKey:(id)key withPayload:(id)payload
{
  dCopy = d;
  v32 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  payloadCopy = payload;
  objc_opt_class();
  objc_opt_class();
  clientDebug = [(PLClientLogger *)self clientDebug];
  if (clientDebug)
  {
    v11 = PLLogClientLogging(clientDebug);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [PLClientLogger queryForClientID:withKey:withPayload:];
    }
  }

  if (keyCopy && (clientDebug = [keyCopy length]) != 0)
  {
    if (dCopy == 50)
    {
      v13 = PLLogClientLogging(clientDebug);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLClientLogger queryForClientID:withKey:withPayload:];
      }

LABEL_11:
      *buf = 0;
      *v30 = buf;
      *&v30[8] = 0x3032000000;
      *&v30[16] = __Block_byref_object_copy__1;
      *&v30[24] = __Block_byref_object_dispose__1;
      v31 = 0;
      v14 = [(PLClientLogger *)self getWorkQueueForClientID:dCopy];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55__PLClientLogger_queryForClientID_withKey_withPayload___block_invoke;
      block[3] = &unk_1E7F18D30;
      block[4] = self;
      v28 = dCopy;
      v25 = keyCopy;
      v26 = payloadCopy;
      v27 = buf;
      dispatch_async_and_wait(v14, block);

      v15 = *(*v30 + 40);
      _Block_object_dispose(buf, 8);

      goto LABEL_15;
    }

    v18 = 0;
    *&v12 = 67110146;
    v23 = v12;
    do
    {
      v19 = [(PLClientLogger *)self blockedPermissionForClientID:dCopy withKey:keyCopy withType:@"Query" withTimeout:2000000000, v23];
      v20 = v19;
      if (!v19)
      {
        v15 = &unk_1F38E36C8;
        goto LABEL_15;
      }

      if (v19 == 1)
      {
        goto LABEL_11;
      }

      clientDebug2 = [(PLClientLogger *)self clientDebug];
      if (clientDebug2)
      {
        v22 = PLLogClientLogging(clientDebug2);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = v23;
          *&buf[4] = dCopy;
          *v30 = 2112;
          *&v30[2] = keyCopy;
          *&v30[10] = 2112;
          *&v30[12] = payloadCopy;
          *&v30[20] = 1024;
          *&v30[22] = v20;
          *&v30[26] = 1024;
          *&v30[28] = v18;
          _os_log_debug_impl(&dword_1BACB7000, v22, OS_LOG_TYPE_DEBUG, "queryForClientID:%d withKey:%@ withPayload%@ - keyPermission=%d, retry=%d", buf, 0x28u);
        }
      }

      ++v18;
    }

    while (v18 != 5);
    if (v20 != 3)
    {
      goto LABEL_11;
    }

    v15 = &unk_1F38E36F0;
  }

  else
  {
    v16 = PLLogClientLogging(clientDebug);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [PLClientLogger queryForClientID:withKey:withPayload:];
    }

    v15 = 0;
  }

LABEL_15:

  return v15;
}

void __55__PLClientLogger_queryForClientID_withKey_withPayload___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) buildMessageForClientID:*(a1 + 64) withKey:*(a1 + 40) withPayload:*(a1 + 48)];
  [v2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"Query"];
  v3 = [*(a1 + 32) xpcSendMessageWithReply:v2 withClientID:*(a1 + 64) withKey:*(a1 + 40) withPayload:*(a1 + 48)];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) clientDebug];
  if (v6)
  {
    v7 = PLLogClientLogging(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 64);
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = *(*(*(a1 + 56) + 8) + 40);
      v12[0] = 67110146;
      v12[1] = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v2;
      _os_log_debug_impl(&dword_1BACB7000, v7, OS_LOG_TYPE_DEBUG, "queryForClientID:%d withKey:%@ withPayload:%@ result=%@, message=%@", v12, 0x30u);
    }
  }
}

- (void)init
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __38__PLClientLogger_powerlogStateChanged__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)buildMessageForClientID:withKey:withPayload:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)cachedPermissionForClientID:(void *)a1 withKey:(uint64_t)a2 withType:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_5_0(&dword_1BACB7000, a3, a3, "permissionCache: %@", a2);
}

- (void)cachedPermissionForClientID:withKey:withType:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)cachedPermissionForClientID:withKey:withType:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)addToPendingTaskCacheForType:(NSObject *)a3 forClientID:forKey:withPayload:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_5_0(&dword_1BACB7000, a3, a3, "addToPendingTaskCacheForType: Current cached payloads = %@", a2);
}

- (void)xpcConnectionWithClientID:withKey:withPayload:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)xpcConnectionWithClientID:withKey:withPayload:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)xpcConnectionWithClientID:withKey:withPayload:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)xpcConnectionWithClientID:withKey:withPayload:.cold.7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __64__PLClientLogger_xpcConnectionWithClientID_withKey_withPayload___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __64__PLClientLogger_xpcConnectionWithClientID_withKey_withPayload___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __64__PLClientLogger_xpcConnectionWithClientID_withKey_withPayload___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __64__PLClientLogger_xpcConnectionWithClientID_withKey_withPayload___block_invoke_190_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)xpcSendMessage:withClientID:withKey:withPayload:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)xpcSendMessage:withClientID:withKey:withPayload:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)xpcSendMessageWithReply:withClientID:withKey:withPayload:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)xpcSendMessageWithReply:withClientID:withKey:withPayload:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)xpcSendMessageWithReply:withClientID:withKey:withPayload:.cold.4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)xpcSendMessageWithReply:withClientID:withKey:withPayload:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)xpcSendMessageWithReply:withClientID:withKey:withPayload:.cold.6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)xpcSendMessageWithReply:withClientID:withKey:withPayload:.cold.7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)xpcSendMessageWithReply:withClientID:withKey:withPayload:.cold.8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __68__PLClientLogger_permissionForClientID_withKey_withType_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __68__PLClientLogger_permissionForClientID_withKey_withType_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logForClientID:withKey:withPayload:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)shouldLogNowForClientID:withKey:withPayload:withFilterInterval:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)shouldLogNowForClientID:withKey:withPayload:withFilterInterval:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)shouldLogNowForClientID:(uint8_t *)buf withKey:(NSObject *)a2 withPayload:(double)a3 withFilterInterval:(double)a4 .cold.3(uint8_t *buf, NSObject *a2, double a3, double a4)
{
  *buf = 134218240;
  *(buf + 4) = a3;
  *(buf + 6) = 2048;
  *(buf + 14) = a4;
  _os_log_debug_impl(&dword_1BACB7000, a2, OS_LOG_TYPE_DEBUG, "(PLLogRegisteredEventFilterByInterval) \t interval = %f, minInterval = %f\n", buf, 0x16u);
}

- (void)logLaterForClientID:(NSObject *)a1 withKey:withFilterInterval:.cold.1(NSObject *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF00] date];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_0(&dword_1BACB7000, a1, v3, "(PLLogRegisteredEventFilterByInterval) \t Set Timer at %@\n", v4);
}

void __65__PLClientLogger_logLaterForClientID_withKey_withFilterInterval___block_invoke_cold_1(NSObject *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF00] date];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_0(&dword_1BACB7000, a1, v3, "(PLLogRegisteredEventFilterByInterval) \t Timer Fired at %@\n", v4);
}

- (void)xpcSendMessageWithRateLimitingforClient:withKey:withPayload:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)queryForClientID:withKey:withPayload:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end