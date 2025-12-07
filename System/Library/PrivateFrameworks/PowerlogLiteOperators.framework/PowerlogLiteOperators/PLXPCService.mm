@interface PLXPCService
+ (id)entryAggregateDefinitionXPCEvent;
+ (id)entryAggregateDefinitions;
+ (id)entryEventIntervalDefinitionResponderEvent;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventPointDefinitionClientLogging;
+ (id)entryEventPointDefinitionClientLoggingDrops;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (PLXPCService)init;
- (id)registeredOperatorFromDictionary:(id)dictionary forMessage:(id)message;
- (signed)permissionForClientID:(signed __int16)d withKey:(id)key withType:(id)type withProcessName:(id)name;
- (void)dailyTasks;
- (void)handlePeer:(id)peer forEvent:(id)event;
- (void)handlePeerListenerEvent:(id)event withMessage:(id)message withClientID:(signed __int16)d withProcessName:(id)name withKey:(id)key withPayload:(id)payload;
- (void)handlePeerResponderEvent:(id)event withMessage:(id)message withClientID:(signed __int16)d withProcessName:(id)name withKey:(id)key withPayload:(id)payload;
- (void)handlePeerShouldLogEvent:(id)event withMessage:(id)message withClientID:(signed __int16)d withProcessName:(id)name withKey:(id)key;
- (void)handleSingleMessage:(id)message fromPeer:(id)peer forEvent:(id)event;
- (void)initOperatorDependancies;
- (void)initSatelliteProcessSemaphore;
- (void)logMessage:(id)message withPayload:(id)payload;
- (void)resetPermissionsForClients;
- (void)respondToEvent:(id)event withResponse:(id)response;
- (void)setSatelliteProcessExit;
- (void)setSatelliteProcessExitWithTime:(double)time;
- (void)stopPowerlogHelperd:(id)helperd;
@end

@implementation PLXPCService

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLXPCService;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"ClientLogging";
  entryEventPointDefinitionClientLogging = [self entryEventPointDefinitionClientLogging];
  v7[1] = @"ClientLoggingDrops";
  v8[0] = entryEventPointDefinitionClientLogging;
  entryEventPointDefinitionClientLoggingDrops = [self entryEventPointDefinitionClientLoggingDrops];
  v8[1] = entryEventPointDefinitionClientLoggingDrops;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (id)entryEventPointDefinitionClientLoggingDrops
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F580];
  v13[0] = *MEMORY[0x277D3F568];
  v13[1] = v2;
  v14[0] = &unk_282C1CEE8;
  v14[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v16[0] = v3;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"clientID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v11[1] = @"PLXPCBatchedMessageDropCounts";
  v12[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v12[1] = commonTypeDict_IntegerFormat2;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  return v9;
}

+ (id)entryEventPointDefinitionClientLogging
{
  v27[3] = *MEMORY[0x277D85DE8];
  v26[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4F8];
  v24[0] = *MEMORY[0x277D3F568];
  v24[1] = v2;
  v25[0] = &unk_282C1CEE8;
  v25[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F4C0];
  v24[2] = *MEMORY[0x277D3F4C8];
  v24[3] = v3;
  v25[2] = &unk_282C13C98;
  v25[3] = &unk_282C13CB0;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];
  v27[0] = v17;
  v26[1] = *MEMORY[0x277D3F540];
  v22[0] = @"clientID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v23[0] = commonTypeDict_IntegerFormat;
  v22[1] = @"process-name";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v23[1] = commonTypeDict_StringFormat;
  v22[2] = @"event";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v23[2] = commonTypeDict_StringFormat2;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v27[1] = v8;
  v26[2] = *MEMORY[0x277D3F500];
  v20[0] = @"value";
  v18 = *MEMORY[0x277D3F5A8];
  v19 = &unk_282C13CC8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v20[1] = @"unit";
  v21[0] = v9;
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v21[1] = commonTypeDict_StringFormat3;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v27[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];

  return v13;
}

+ (id)entryEventIntervalDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  if ([self isDebugEnabled])
  {
    v6 = @"ResponderEvent";
    entryEventIntervalDefinitionResponderEvent = [self entryEventIntervalDefinitionResponderEvent];
    v7[0] = entryEventIntervalDefinitionResponderEvent;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  return v4;
}

+ (id)entryEventIntervalDefinitionResponderEvent
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v16 = *MEMORY[0x277D3F568];
  v17 = &unk_282C1CEE8;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19[0] = v13;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"timestampEnd";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198] commonTypeDict_DateFormat];
  v15[0] = commonTypeDict_DateFormat;
  v14[1] = @"clientID";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v15[1] = commonTypeDict_IntegerFormat;
  v14[2] = @"process-name";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v15[2] = commonTypeDict_StringFormat;
  v14[3] = @"event";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v15[3] = commonTypeDict_StringFormat2;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  return v11;
}

+ (id)entryAggregateDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  if ([self isDebugEnabledForKey:@"LogAggregateXPC"])
  {
    v6 = @"XPCEvent";
    entryAggregateDefinitionXPCEvent = [self entryAggregateDefinitionXPCEvent];
    v7[0] = entryAggregateDefinitionXPCEvent;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  return v4;
}

+ (id)entryAggregateDefinitionXPCEvent
{
  v32[4] = *MEMORY[0x277D85DE8];
  v31[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v29[0] = *MEMORY[0x277D3F568];
  v29[1] = v2;
  v30[0] = &unk_282C1CEE8;
  v30[1] = MEMORY[0x277CBEC28];
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v32[0] = v20;
  v31[1] = *MEMORY[0x277D3F540];
  v27[0] = @"clientID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v28[0] = commonTypeDict_IntegerFormat;
  v27[1] = @"process-name";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v28[1] = commonTypeDict_StringFormat;
  v27[2] = @"event";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v28[2] = commonTypeDict_StringFormat2;
  v27[3] = @"type";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v28[3] = commonTypeDict_StringFormat3;
  v27[4] = @"count";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_aggregateFunction_sum = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v28[4] = commonTypeDict_IntegerFormat_aggregateFunction_sum;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:5];
  v32[1] = v8;
  v31[2] = *MEMORY[0x277D3F478];
  v25[0] = &unk_282C1CEF8;
  v23 = *MEMORY[0x277D3F470];
  v9 = v23;
  v24 = &unk_282C1CF08;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v25[1] = &unk_282C1CF18;
  v26[0] = v10;
  v21 = v9;
  v22 = &unk_282C1CEF8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v26[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  v31[3] = *MEMORY[0x277D3F488];
  v32[2] = v12;
  v32[3] = &unk_282C16C38;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:4];

  return v13;
}

- (PLXPCService)init
{
  v84 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F258] isPerfPowerMetricd] & 1) == 0)
  {
    v81.receiver = self;
    v81.super_class = PLXPCService;
    v4 = [(PLOperator *)&v81 init];
    if (!v4)
    {
LABEL_39:
      self = v4;
      selfCopy = self;
      goto LABEL_40;
    }

    v5 = objc_opt_new();
    registeredListeners = v4->_registeredListeners;
    v4->_registeredListeners = v5;

    v7 = objc_opt_new();
    registeredResponders = v4->_registeredResponders;
    v4->_registeredResponders = v7;

    clientIDs = v4->_clientIDs;
    v4->_clientIDs = &unk_282C16C50;

    v10 = objc_opt_new();
    v11 = v4->_clientIDs;
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __20__PLXPCService_init__block_invoke;
    v79[3] = &unk_278259C68;
    v12 = v10;
    v80 = v12;
    [(NSArray *)v11 enumerateObjectsUsingBlock:v79];
    objc_storeStrong(&v4->_clientNames, v10);
    if ([MEMORY[0x277D3F258] isPowerlogHelperd])
    {
      v13 = 200000;
    }

    else
    {
      v13 = 1000000;
    }

    v4->_responderWaitTime = v13;
    v14 = getClientPermissions();
    permissionCache = v4->_permissionCache;
    v4->_permissionCache = v14;

    v16 = v4->_permissionCache;
    if ((!v16 || !-[NSDictionary count](v16, "count")) && [MEMORY[0x277D3F180] debugEnabled])
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"**** unable to load ClientPermissions ****"];
      v18 = MEMORY[0x277D3F178];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      lastPathComponent = [v19 lastPathComponent];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]"];
      [v18 logMessage:v17 fromFile:lastPathComponent fromFunction:v21 fromLineNumber:239];

      v22 = PLLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v83 = v17;
        _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    v23 = objc_alloc(MEMORY[0x277D3F1F0]);
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __20__PLXPCService_init__block_invoke_540;
    v77[3] = &unk_2782597E8;
    self = v4;
    selfCopy2 = self;
    v24 = [v23 initWithOperator:self forNotification:@"register.PLXPCService" withBlock:v77];
    registrationNotification = self->_registrationNotification;
    self->_registrationNotification = v24;

    if ([MEMORY[0x277D3F258] isPowerlogHelperd])
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:self selector:sel_stopPowerlogHelperd_ name:@"PLBatteryGaugeService.stopPowerlogHelperd" object:0];
    }

    if ([MEMORY[0x277D3F258] isLiteModeDaemon])
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        v28 = "com.apple.powerlog.plxpclogger.xpc";
        goto LABEL_35;
      }

      v27 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __20__PLXPCService_init__block_invoke_560;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v27;
      if (qword_2811F6E60 != -1)
      {
        dispatch_once(&qword_2811F6E60, block);
      }

      v28 = "com.apple.powerlog.plxpclogger.xpc";
      if (byte_2811F6E19 != 1)
      {
        goto LABEL_35;
      }

      v29 = MEMORY[0x277CCACA8];
      liteModeDaemonName = [MEMORY[0x277D3F258] liteModeDaemonName];
      v31 = [v29 stringWithFormat:@"running in %@ with service %s", liteModeDaemonName, "com.apple.powerlog.plxpclogger.xpc"];

      v32 = MEMORY[0x277D3F178];
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      lastPathComponent2 = [v33 lastPathComponent];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]"];
      [v32 logMessage:v31 fromFile:lastPathComponent2 fromFunction:v35 fromLineNumber:265];

      v36 = PLLogCommon();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_33;
      }

      *buf = 138412290;
      v83 = v31;
    }

    else if ([MEMORY[0x277D3F258] isFullModeDaemon])
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        v28 = "com.apple.powerlogd.XPCService.xpc";
LABEL_35:
        workQueue = [(PLOperator *)self workQueue];
        mach_service = xpc_connection_create_mach_service(v28, workQueue, 1uLL);
        xpcConnection = self->_xpcConnection;
        self->_xpcConnection = mach_service;

        xpc_connection_set_context(self->_xpcConnection, self);
        v51 = self->_xpcConnection;
        v52 = dispatch_get_global_queue(2, 0);
        xpc_connection_set_target_queue(v51, v52);

        v53 = self->_xpcConnection;
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __20__PLXPCService_init__block_invoke_579;
        handler[3] = &unk_278263360;
        selfCopy3 = self;
        v73 = selfCopy3;
        xpc_connection_set_event_handler(v53, handler);
        xpc_connection_activate(self->_xpcConnection);
        if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) == 0)
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.powerlog.state_changed", 0, 0, 0);
        }

        v56 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:3600.0];
        v57 = objc_alloc(MEMORY[0x277D3F250]);
        workQueue2 = [(PLOperator *)selfCopy3 workQueue];
        v70[0] = MEMORY[0x277D85DD0];
        v70[1] = 3221225472;
        v70[2] = __20__PLXPCService_init__block_invoke_601;
        v70[3] = &unk_278259C40;
        v59 = selfCopy3;
        v71 = v59;
        v60 = [v57 initWithFireDate:v56 withInterval:1 withTolerance:0 repeats:workQueue2 withUserInfo:v70 withQueue:3600.0 withBlock:0.0];
        resetPermissionsForClientsTimer = v59->_resetPermissionsForClientsTimer;
        v59->_resetPermissionsForClientsTimer = v60;

        goto LABEL_39;
      }

      v37 = objc_opt_class();
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __20__PLXPCService_init__block_invoke_567;
      v75[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v75[4] = v37;
      if (qword_2811F6E68 != -1)
      {
        dispatch_once(&qword_2811F6E68, v75);
      }

      v28 = "com.apple.powerlogd.XPCService.xpc";
      if (byte_2811F6E1A != 1)
      {
        goto LABEL_35;
      }

      v38 = MEMORY[0x277CCACA8];
      fullModeDaemonName = [MEMORY[0x277D3F258] fullModeDaemonName];
      v31 = [v38 stringWithFormat:@"running in %@ with service %s", fullModeDaemonName, "com.apple.powerlogd.XPCService.xpc"];

      v40 = MEMORY[0x277D3F178];
      v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      lastPathComponent3 = [v41 lastPathComponent];
      v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]"];
      [v40 logMessage:v31 fromFile:lastPathComponent3 fromFunction:v43 fromLineNumber:269];

      v36 = PLLogCommon();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
LABEL_33:

        goto LABEL_35;
      }

      *buf = 138412290;
      v83 = v31;
    }

    else
    {
      if (![MEMORY[0x277D3F258] isPowerlogHelperd])
      {
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v63 = objc_opt_class();
          v74[0] = MEMORY[0x277D85DD0];
          v74[1] = 3221225472;
          v74[2] = __20__PLXPCService_init__block_invoke_575;
          v74[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v74[4] = v63;
          if (qword_2811F6E70 != -1)
          {
            dispatch_once(&qword_2811F6E70, v74);
          }

          if (byte_2811F6E1B == 1)
          {
            v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad processname, no xpc for you"];
            v65 = MEMORY[0x277D3F178];
            v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
            lastPathComponent4 = [v66 lastPathComponent];
            v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]"];
            [v65 logMessage:v64 fromFile:lastPathComponent4 fromFunction:v68 fromLineNumber:277];

            v69 = PLLogCommon();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v83 = v64;
              _os_log_debug_impl(&dword_21A4C6000, v69, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        goto LABEL_2;
      }

      [(PLXPCService *)self initSatelliteProcessSemaphore];
      v28 = "com.apple.powerlogHelperd.XPCService.xpc";
      if (![(PLOperator *)self isDebugEnabled])
      {
        goto LABEL_35;
      }

      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"running in BLDService with service %s", "com.apple.powerlogHelperd.XPCService.xpc"];
      v44 = MEMORY[0x277D3F178];
      v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      lastPathComponent5 = [v45 lastPathComponent];
      v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]"];
      [v44 logMessage:v31 fromFile:lastPathComponent5 fromFunction:v47 fromLineNumber:274];

      v36 = PLLogCommon();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_33;
      }

      *buf = 138412290;
      v83 = v31;
    }

    _os_log_debug_impl(&dword_21A4C6000, v36, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    goto LABEL_33;
  }

LABEL_2:
  selfCopy = 0;
LABEL_40:

  return selfCopy;
}

void __20__PLXPCService_init__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v7 = [v5 numberWithUnsignedInteger:a3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

void __20__PLXPCService_init__block_invoke_540(uint64_t a1, void *a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __20__PLXPCService_init__block_invoke_2;
    v30 = &__block_descriptor_40_e5_v8__0lu32l8;
    v31 = v10;
    if (qword_2811F6E58 != -1)
    {
      dispatch_once(&qword_2811F6E58, &block);
    }

    if (_MergedGlobals_1_69 == 1)
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [v7 objectForKeyedSubscript:@"type"];
      v13 = [v7 objectForKeyedSubscript:@"registration"];
      v14 = [v11 stringWithFormat:@"registration of type %@ of key %@ for %@", v12, v13, v9, block, v28, v29, v30, v31];

      v15 = MEMORY[0x277D3F178];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v17 = [v16 lastPathComponent];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]_block_invoke"];
      [v15 logMessage:v14 fromFile:v17 fromFunction:v18 fromLineNumber:243];

      v19 = PLLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v33 = v14;
        _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v20 = [v7 objectForKeyedSubscript:@"type"];
  v21 = [v20 caseInsensitiveCompare:@"Post"] == 0;

  if (v21)
  {
    v24 = [*(a1 + 32) registeredListeners];
    objc_sync_enter(v24);
    v25 = [*(a1 + 32) registeredListeners];
    v26 = [v7 objectForKeyedSubscript:@"registration"];
    [v25 setObject:v9 forKeyedSubscript:v26];
    goto LABEL_12;
  }

  v22 = [v7 objectForKeyedSubscript:@"type"];
  v23 = [v22 caseInsensitiveCompare:@"Query"] == 0;

  if (v23)
  {
    v24 = [*(a1 + 32) registeredResponders];
    objc_sync_enter(v24);
    v25 = [*(a1 + 32) registeredResponders];
    v26 = [v7 objectForKeyedSubscript:@"registration"];
    [v25 setObject:v9 forKeyedSubscript:v26];
LABEL_12:

    objc_sync_exit(v24);
  }
}

void *__20__PLXPCService_init__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_69 = result;
  return result;
}

void *__20__PLXPCService_init__block_invoke_560(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E19 = result;
  return result;
}

void *__20__PLXPCService_init__block_invoke_567(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E1A = result;
  return result;
}

void *__20__PLXPCService_init__block_invoke_575(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E1B = result;
  return result;
}

void __20__PLXPCService_init__block_invoke_579(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __20__PLXPCService_init__block_invoke_2_580;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (qword_2811F6E78 != -1)
    {
      dispatch_once(&qword_2811F6E78, block);
    }

    if (byte_2811F6E1C == 1)
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = [*(a1 + 32) xpcConnection];
      v7 = [v5 stringWithFormat:@"event handler fired peerPID=%d %@", xpc_connection_get_pid(v6), v3];

      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]_block_invoke"];
      [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:287];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v29 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (MEMORY[0x21CEDE6E0](v3) != MEMORY[0x277D86480])
  {
    v13 = v3;
    context = xpc_connection_get_context(*(*(a1 + 32) + 56));
    xpc_connection_set_context(v13, context);
    v15 = dispatch_get_global_queue(2, 0);
    xpc_connection_set_target_queue(v13, v15);

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __20__PLXPCService_init__block_invoke_590;
    handler[3] = &unk_278263338;
    v24 = *(a1 + 32);
    v25 = v13;
    v16 = v13;
    xpc_connection_set_event_handler(v16, handler);
    xpc_connection_activate(v16);

    v17 = v24;
LABEL_10:

    goto LABEL_17;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v18 = objc_opt_class();
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __20__PLXPCService_init__block_invoke_586;
    v26[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v26[4] = v18;
    if (qword_2811F6E80 != -1)
    {
      dispatch_once(&qword_2811F6E80, v26);
    }

    if (byte_2811F6E1D == 1)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"XPC error! %@", v3];
      v19 = MEMORY[0x277D3F178];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v21 = [v20 lastPathComponent];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]_block_invoke_2"];
      [v19 logMessage:v16 fromFile:v21 fromFunction:v22 fromLineNumber:290];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v29 = v16;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_10;
    }
  }

LABEL_17:
}

void *__20__PLXPCService_init__block_invoke_2_580(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E1C = result;
  return result;
}

void *__20__PLXPCService_init__block_invoke_586(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E1D = result;
  return result;
}

void __20__PLXPCService_init__block_invoke_590(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D3F180];
  v4 = a2;
  if ([v3 debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __20__PLXPCService_init__block_invoke_2_591;
    v18 = &__block_descriptor_40_e5_v8__0lu32l8;
    v19 = v5;
    if (qword_2811F6E88 != -1)
    {
      dispatch_once(&qword_2811F6E88, &block);
    }

    if (byte_2811F6E1E == 1)
    {
      v6 = MEMORY[0x277CCACA8];
      pid = xpc_connection_get_pid(*(a1 + 40));
      v8 = [v6 stringWithFormat:@"peer(%d) connected", pid, block, v16, v17, v18, v19];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]_block_invoke"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:298];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v14 = xpc_connection_get_context(*(a1 + 40));
  [v14 handlePeer:*(a1 + 40) forEvent:v4];
}

void *__20__PLXPCService_init__block_invoke_2_591(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E1E = result;
  return result;
}

- (void)initOperatorDependancies
{
  if ([(PLOperator *)self isDebugEnabledForKey:@"LogAggregateXPC"])
  {
    v3 = objc_alloc(MEMORY[0x277D3F1F0]);
    v4 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
    v5 = *MEMORY[0x277CBE580];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__PLXPCService_initOperatorDependancies__block_invoke;
    v7[3] = &unk_2782597E8;
    v7[4] = self;
    v6 = [v3 initWithWorkQueue:v4 forNotification:v5 withBlock:v7];

    [(PLXPCService *)self setDailyTaskNotification:v6];
  }
}

uint64_t __40__PLXPCService_initOperatorDependancies__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __40__PLXPCService_initOperatorDependancies__block_invoke_2;
    v14 = &unk_27825A310;
    v15 = @"DailyTasks";
    v16 = v2;
    if (qword_2811F6E90 != -1)
    {
      dispatch_once(&qword_2811F6E90, &v11);
    }

    v3 = byte_2811F6E1F;

    if (v3 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"DailyTasks notification!", v11, v12, v13, v14];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService initOperatorDependancies]_block_invoke"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:323];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v18 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  return [*(a1 + 32) dailyTasks];
}

void *__40__PLXPCService_initOperatorDependancies__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F6E1F = result;
  return result;
}

- (void)initSatelliteProcessSemaphore
{
  v3 = [MEMORY[0x277D3F218] sharedSemaphoreForKey:*MEMORY[0x277D3F608]];
  satelliteProcessSemaphore = self->_satelliteProcessSemaphore;
  self->_satelliteProcessSemaphore = v3;

  satelliteProcessSemaphore = [(PLXPCService *)self satelliteProcessSemaphore];
  [satelliteProcessSemaphore setTimeout:100.0];

  satelliteProcessSemaphore2 = [(PLXPCService *)self satelliteProcessSemaphore];
  [satelliteProcessSemaphore2 signalStartListening];
}

- (void)dailyTasks
{
  v48 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [date dateByAddingTimeInterval:-86400.0];
  v5 = date;
  [v4 timeIntervalSince1970];
  v7 = v6;
  [v5 timeIntervalSince1970];
  v9 = v8;
  v37 = v5;

  v10 = [(PLOperator *)PLXPCService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"XPCEvent"];
  v11 = objc_msgSend_storage(self);
  v36 = v10;
  v12 = [v11 aggregateEntriesForKey:v10 withBucketLength:3600.0 inTimeIntervalRange:{v7, v9 - v7}];

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __26__PLXPCService_dailyTasks__block_invoke;
  v44[3] = &unk_2782591D0;
  v44[4] = self;
  if (qword_2811F6E98 != -1)
  {
    dispatch_once(&qword_2811F6E98, v44);
  }

  v13 = qword_2811F6EA0;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v12;
  v14 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v41;
    do
    {
      v17 = 0;
      do
      {
        if (*v41 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v40 + 1) + 8 * v17);
        v19 = [v18 objectForKeyedSubscript:@"count"];
        longValue = [v19 longValue];

        if (longValue > v13)
        {
          v21 = MEMORY[0x277CCACA8];
          v22 = [v18 objectForKeyedSubscript:@"type"];
          v23 = [v18 objectForKeyedSubscript:@"clientID"];
          v24 = [v18 objectForKeyedSubscript:@"process-name"];
          v25 = [v18 objectForKeyedSubscript:@"event"];
          v26 = [v21 stringWithFormat:@"com.apple.power.xpc.highRatePerHour.%@.%@.%@.%@", v22, v23, v24, v25];

          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v27 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __26__PLXPCService_dailyTasks__block_invoke_2;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v27;
            if (qword_2811F6EA8 != -1)
            {
              dispatch_once(&qword_2811F6EA8, block);
            }

            if (byte_2811F6E20 == 1)
            {
              v28 = MEMORY[0x277CCACA8];
              v29 = [v18 objectForKeyedSubscript:@"count"];
              v30 = [v28 stringWithFormat:@"Reporting %@ crossing ratePerHourThreshold with %@", v26, v29];

              v31 = MEMORY[0x277D3F178];
              v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
              lastPathComponent = [v32 lastPathComponent];
              v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService dailyTasks]"];
              [v31 logMessage:v30 fromFile:lastPathComponent fromFunction:v34 fromLineNumber:348];

              v35 = PLLogCommon();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v46 = v30;
                _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }
          }

          MEMORY[0x21CEDCD40](v26, 1);
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v15);
  }
}

void *__26__PLXPCService_dailyTasks__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) defaultLongForKey:@"ratePerHourThreshold"];
  qword_2811F6EA0 = result;
  return result;
}

void *__26__PLXPCService_dailyTasks__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E20 = result;
  return result;
}

- (id)registeredOperatorFromDictionary:(id)dictionary forMessage:(id)message
{
  v42 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  messageCopy = message;
  v7 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = [&unk_282C16C68 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v8)
  {
    v9 = *v34;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(&unk_282C16C68);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        v12 = [messageCopy objectForKeyedSubscript:v11];
        [v7 setObject:v12 forKeyedSubscript:v11];
      }

      v8 = [&unk_282C16C68 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v8);
  }

  v13 = dictionaryCopy;
  objc_sync_enter(v13);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = [&unk_282C16C68 countByEnumeratingWithState:&v29 objects:v40 count:16];
  if (v14)
  {
    v15 = *v30;
LABEL_10:
    v16 = 0;
    while (1)
    {
      if (*v30 != v15)
      {
        objc_enumerationMutation(&unk_282C16C68);
      }

      v17 = *(*(&v29 + 1) + 8 * v16);
      v18 = [v13 objectForKeyedSubscript:v7];
      if (v18)
      {
        break;
      }

      [v7 removeObjectForKey:v17];
      if (v14 == ++v16)
      {
        v14 = [&unk_282C16C68 countByEnumeratingWithState:&v29 objects:v40 count:16];
        if (v14)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v19 = [&unk_282C16C68 countByEnumeratingWithState:&v25 objects:v39 count:16];
    if (v19)
    {
      v20 = *v26;
LABEL_18:
      v21 = 0;
      while (1)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(&unk_282C16C68);
        }

        v37 = *(*(&v25 + 1) + 8 * v21);
        v22 = [messageCopy objectForKeyedSubscript:?];
        v38 = v22;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        v18 = [v13 objectForKeyedSubscript:v23];

        if (v18)
        {
          break;
        }

        if (v19 == ++v21)
        {
          v19 = [&unk_282C16C68 countByEnumeratingWithState:&v25 objects:v39 count:16];
          v18 = 0;
          if (v19)
          {
            goto LABEL_18;
          }

          break;
        }
      }
    }

    else
    {
      v18 = 0;
    }
  }

  objc_sync_exit(v13);

  return v18;
}

- (void)respondToEvent:(id)event withResponse:(id)response
{
  v36 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  responseCopy = response;
  if (!responseCopy)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v8 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __44__PLXPCService_respondToEvent_withResponse___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v8;
      if (qword_2811F6EB0 != -1)
      {
        dispatch_once(&qword_2811F6EB0, block);
      }

      if (byte_2811F6E21 == 1)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"empty response"];
        v10 = MEMORY[0x277D3F178];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        lastPathComponent = [v11 lastPathComponent];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService respondToEvent:withResponse:]"];
        [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:388];

        v14 = PLLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v31 = v9;
          _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    responseCopy = MEMORY[0x277CBEC10];
  }

  if ([(PLOperator *)self isDebugEnabled])
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"adding debug to response"];
    v16 = MEMORY[0x277D3F178];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
    lastPathComponent2 = [v17 lastPathComponent];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService respondToEvent:withResponse:]"];
    [v16 logMessage:v15 fromFile:lastPathComponent2 fromFunction:v19 fromLineNumber:393];

    v20 = PLLogCommon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v31 = v15;
      _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v21 = [responseCopy mutableCopy];
    v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[PLOperator isDebugEnabled](self, "isDebugEnabled")}];
    [v21 setObject:v22 forKeyedSubscript:@"PLXPCClientDebug"];

    responseCopy = v21;
  }

  reply = xpc_dictionary_create_reply(eventCopy);
  v24 = _CFXPCCreateXPCMessageWithCFObject();
  xpc_dictionary_set_value(reply, [@"PLXPCConnectionReturnDict" UTF8String], v24);
  v25 = xpc_dictionary_get_remote_connection(eventCopy);
  v26 = v25;
  if (v25)
  {
    xpc_connection_send_message(v25, reply);
  }

  else
  {
    v27 = PLLogXPCService();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_ERROR, "remote connection missing", buf, 2u);
    }
  }

  v28 = PLLogXPCService();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v31 = eventCopy;
    v32 = 2112;
    v33 = responseCopy;
    v34 = 2112;
    v35 = reply;
    _os_log_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEFAULT, "responded to event! event=%@ response=%@ replyMessage=%@", buf, 0x20u);
  }
}

void *__44__PLXPCService_respondToEvent_withResponse___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E21 = result;
  return result;
}

- (void)logMessage:(id)message withPayload:(id)payload
{
  v42 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  payloadCopy = payload;
  if ([MEMORY[0x277D3F180] fullMode])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v8 = objc_opt_class();
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __39__PLXPCService_logMessage_withPayload___block_invoke;
      v37[3] = &unk_27825A310;
      v38 = @"Listener";
      v39 = v8;
      if (qword_2811F6EB8 != -1)
      {
        dispatch_once(&qword_2811F6EB8, v37);
      }

      v9 = byte_2811F6E22;

      if (v9 == 1)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"No registered Listener"];
        v11 = MEMORY[0x277D3F178];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        lastPathComponent = [v12 lastPathComponent];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService logMessage:withPayload:]"];
        [v11 logMessage:v10 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:423];

        v15 = PLLogCommon();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v41 = v10;
          _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v16 = [(PLOperator *)PLXPCService entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ClientLogging"];
    v17 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v16];
    [v17 setObjectsFromRawData:messageCopy];
    [v17 setDynamicObjectsFromRawData:payloadCopy];
    block = MEMORY[0x277D85DD0];
    v32 = 3221225472;
    v33 = __39__PLXPCService_logMessage_withPayload___block_invoke_645;
    v34 = &unk_27825B7C8;
    v35 = @"dynamicClientLogging";
    v36 = 1;
    if (qword_2811F6EC0 != -1)
    {
      dispatch_once(&qword_2811F6EC0, &block);
    }

    v18 = byte_2811F6E23;

    if (v18 == 1)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v19 = objc_opt_class();
        v26 = MEMORY[0x277D85DD0];
        v27 = 3221225472;
        v28 = __39__PLXPCService_logMessage_withPayload___block_invoke_2;
        v29 = &__block_descriptor_40_e5_v8__0lu32l8;
        v30 = v19;
        if (qword_2811F6EC8 != -1)
        {
          dispatch_once(&qword_2811F6EC8, &v26);
        }

        if (byte_2811F6E24 == 1)
        {
          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"entry=%@", v17, v26, v27, v28, v29, v30, block, v32, v33, v34];
          v21 = MEMORY[0x277D3F178];
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
          lastPathComponent2 = [v22 lastPathComponent];
          v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService logMessage:withPayload:]"];
          [v21 logMessage:v20 fromFile:lastPathComponent2 fromFunction:v24 fromLineNumber:429];

          v25 = PLLogCommon();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v41 = v20;
            _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      [(PLOperator *)self logEntry:v17];
    }
  }
}

void *__39__PLXPCService_logMessage_withPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F6E22 = result;
  return result;
}

void *__39__PLXPCService_logMessage_withPayload___block_invoke_645(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] BOOLForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  byte_2811F6E23 = result;
  return result;
}

void *__39__PLXPCService_logMessage_withPayload___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E24 = result;
  return result;
}

- (signed)permissionForClientID:(signed __int16)d withKey:(id)key withType:(id)type withProcessName:(id)name
{
  dCopy = d;
  v52 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  typeCopy = type;
  nameCopy = name;
  clientIDs = [(PLXPCService *)self clientIDs];
  v14 = [clientIDs count];

  if (v14 <= dCopy)
  {
    v16 = PLLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109890;
      *v47 = dCopy;
      *&v47[4] = 2112;
      *&v47[6] = keyCopy;
      v48 = 2112;
      v49 = typeCopy;
      v50 = 2112;
      v51 = nameCopy;
      _os_log_fault_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_FAULT, "Invalid client ID %d request for key : %@, type : %@, processName %@", buf, 0x26u);
    }

    bOOLValue = 0;
  }

  else
  {
    clientIDs2 = [(PLXPCService *)self clientIDs];
    v16 = [clientIDs2 objectAtIndexedSubscript:dCopy];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v17 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v42 = 3221225472;
      v43 = __71__PLXPCService_permissionForClientID_withKey_withType_withProcessName___block_invoke;
      v44 = &__block_descriptor_40_e5_v8__0lu32l8;
      v45 = v17;
      if (qword_2811F6ED0 != -1)
      {
        dispatch_once(&qword_2811F6ED0, &block);
      }

      if (byte_2811F6E25 == 1)
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLXPCService: permissionForClientID:%hd", dCopy, block, v42, v43, v44, v45];
        v19 = MEMORY[0x277D3F178];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        lastPathComponent = [v20 lastPathComponent];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService permissionForClientID:withKey:withType:withProcessName:]"];
        [v19 logMessage:v18 fromFile:lastPathComponent fromFunction:v22 fromLineNumber:449];

        v23 = PLLogCommon();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *v47 = v18;
          _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    if ([MEMORY[0x277D3F258] isPowerlogHelperd])
    {
      bOOLValue = 1;
    }

    else
    {
      permissionCache = [(PLXPCService *)self permissionCache];
      v26 = [permissionCache objectForKeyedSubscript:typeCopy];
      v27 = [v26 objectForKeyedSubscript:v16];
      v28 = [v27 objectForKeyedSubscript:@"__PL__Global"];

      permissionCache2 = [(PLXPCService *)self permissionCache];
      v30 = [permissionCache2 objectForKeyedSubscript:typeCopy];
      v31 = [v30 objectForKeyedSubscript:v16];
      v32 = v31;
      if (v28)
      {
        v33 = [v31 objectForKeyedSubscript:@"__PL__Global"];
        bOOLValue = [v33 BOOLValue];
      }

      else
      {
        v34 = [v31 objectForKeyedSubscript:keyCopy];
        v35 = [v34 objectForKeyedSubscript:@"__PL__Global"];

        permissionCache2 = [(PLXPCService *)self permissionCache];
        v30 = [permissionCache2 objectForKeyedSubscript:typeCopy];
        v32 = [v30 objectForKeyedSubscript:v16];
        v36 = [v32 objectForKeyedSubscript:keyCopy];
        v33 = v36;
        if (v35)
        {
          v37 = @"__PL__Global";
        }

        else
        {
          v38 = [v36 objectForKeyedSubscript:nameCopy];

          if (!v38)
          {
            bOOLValue = [MEMORY[0x277D3F180] fullMode];
            goto LABEL_22;
          }

          permissionCache2 = [(PLXPCService *)self permissionCache];
          v30 = [permissionCache2 objectForKeyedSubscript:typeCopy];
          v32 = [v30 objectForKeyedSubscript:v16];
          v36 = [v32 objectForKeyedSubscript:keyCopy];
          v33 = v36;
          v37 = nameCopy;
        }

        v39 = [v36 objectForKeyedSubscript:v37];
        bOOLValue = [v39 BOOLValue];
      }
    }
  }

LABEL_22:

  return bOOLValue;
}

void *__71__PLXPCService_permissionForClientID_withKey_withType_withProcessName___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E25 = result;
  return result;
}

- (void)resetPermissionsForClients
{
  v23 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__PLXPCService_resetPermissionsForClients__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F6ED8 != -1)
    {
      dispatch_once(&qword_2811F6ED8, block);
    }

    if (byte_2811F6E26 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"resetPermissionsForClients start!"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService resetPermissionsForClients]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:477];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  permissionCache = [(PLXPCService *)self permissionCache];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __42__PLXPCService_resetPermissionsForClients__block_invoke_660;
  v19[3] = &unk_2782631C8;
  v19[4] = self;
  [permissionCache enumerateKeysAndObjectsUsingBlock:v19];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __42__PLXPCService_resetPermissionsForClients__block_invoke_670;
    v18[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v18[4] = v11;
    if (qword_2811F6EE8 != -1)
    {
      dispatch_once(&qword_2811F6EE8, v18);
    }

    if (byte_2811F6E28 == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"resetPermissionsForClients done!"];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      lastPathComponent2 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService resetPermissionsForClients]"];
      [v13 logMessage:v12 fromFile:lastPathComponent2 fromFunction:v16 fromLineNumber:488];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v12;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__42__PLXPCService_resetPermissionsForClients__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E26 = result;
  return result;
}

void __42__PLXPCService_resetPermissionsForClients__block_invoke_660(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 allKeys];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__PLXPCService_resetPermissionsForClients__block_invoke_2;
  v5[3] = &unk_278259C68;
  v5[4] = *(a1 + 32);
  [v4 enumerateObjectsUsingBlock:v5];
}

void __42__PLXPCService_resetPermissionsForClients__block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = MEMORY[0x277CCACA8];
  v6 = [*(a1 + 32) clientNames];
  v7 = [v6 objectForKeyedSubscript:v3];
  v8 = [v5 stringWithFormat:@"%@.ClientID.%@", @"com.apple.powerlog.state_changed", v7];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, v8, 0, 0, 0);
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__PLXPCService_resetPermissionsForClients__block_invoke_3;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v10;
    if (qword_2811F6EE0 != -1)
    {
      dispatch_once(&qword_2811F6EE0, block);
    }

    if (byte_2811F6E27 == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"resetPermissionsForClients posted %@", v8];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v14 = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService resetPermissionsForClients]_block_invoke_2"];
      [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:484];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v11;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  objc_autoreleasePoolPop(v4);
}

void *__42__PLXPCService_resetPermissionsForClients__block_invoke_3(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E27 = result;
  return result;
}

void *__42__PLXPCService_resetPermissionsForClients__block_invoke_670(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E28 = result;
  return result;
}

- (void)handlePeer:(id)peer forEvent:(id)event
{
  v104 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  eventCopy = event;
  v8 = MEMORY[0x21CEDE6E0]();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v9 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v9;
    if (qword_2811F6EF0 != -1)
    {
      dispatch_once(&qword_2811F6EF0, block);
    }

    if (byte_2811F6E29 == 1)
    {
      eventCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! %s/%d: type=%@, event=%@", "-[PLXPCService handlePeer:forEvent:]", 497, v8, eventCopy];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeer:forEvent:]"];
      [v11 logMessage:eventCopy fromFile:lastPathComponent fromFunction:v14 fromLineNumber:497];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v103 = eventCopy;
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (v8 == MEMORY[0x277D86480])
  {
    if (eventCopy == MEMORY[0x277D863F8])
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_68;
      }

      v52 = objc_opt_class();
      v99[0] = MEMORY[0x277D85DD0];
      v99[1] = 3221225472;
      v99[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke_679;
      v99[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v99[4] = v52;
      if (qword_2811F6EF8 != -1)
      {
        dispatch_once(&qword_2811F6EF8, v99);
      }

      if (byte_2811F6E2A != 1)
      {
        goto LABEL_68;
      }

      eventCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"peer(%d) received XPC_ERROR_CONNECTION_INVALID", xpc_connection_get_pid(peerCopy)];
      v53 = MEMORY[0x277D3F178];
      v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      lastPathComponent2 = [v54 lastPathComponent];
      v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeer:forEvent:]"];
      [v53 logMessage:eventCopy2 fromFile:lastPathComponent2 fromFunction:v56 fromLineNumber:502];

      v51 = PLLogCommon();
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_67;
      }

      *buf = 138412290;
      v103 = eventCopy2;
    }

    else if (eventCopy == MEMORY[0x277D863F0])
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_68;
      }

      v63 = objc_opt_class();
      v98[0] = MEMORY[0x277D85DD0];
      v98[1] = 3221225472;
      v98[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke_685;
      v98[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v98[4] = v63;
      if (qword_2811F6F00 != -1)
      {
        dispatch_once(&qword_2811F6F00, v98);
      }

      if (byte_2811F6E2B != 1)
      {
        goto LABEL_68;
      }

      eventCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"peer(%d) received XPC_ERROR_CONNECTION_INTERRUPTED", xpc_connection_get_pid(peerCopy)];
      v64 = MEMORY[0x277D3F178];
      v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      lastPathComponent3 = [v65 lastPathComponent];
      v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeer:forEvent:]"];
      [v64 logMessage:eventCopy2 fromFile:lastPathComponent3 fromFunction:v67 fromLineNumber:506];

      v51 = PLLogCommon();
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_67;
      }

      *buf = 138412290;
      v103 = eventCopy2;
    }

    else
    {
      v43 = MEMORY[0x277D86420];
      debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
      if (eventCopy == v43)
      {
        if (!debugEnabled)
        {
          goto LABEL_68;
        }

        v68 = objc_opt_class();
        v97[0] = MEMORY[0x277D85DD0];
        v97[1] = 3221225472;
        v97[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke_691;
        v97[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v97[4] = v68;
        if (qword_2811F6F08 != -1)
        {
          dispatch_once(&qword_2811F6F08, v97);
        }

        if (byte_2811F6E2C != 1)
        {
          goto LABEL_68;
        }

        eventCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"peer(%d) received XPC_ERROR_TERMINATION_IMMINENT", xpc_connection_get_pid(peerCopy)];
        v69 = MEMORY[0x277D3F178];
        v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        lastPathComponent4 = [v70 lastPathComponent];
        v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeer:forEvent:]"];
        [v69 logMessage:eventCopy2 fromFile:lastPathComponent4 fromFunction:v72 fromLineNumber:510];

        v51 = PLLogCommon();
        if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_67;
        }

        *buf = 138412290;
        v103 = eventCopy2;
      }

      else
      {
        if (!debugEnabled)
        {
          goto LABEL_68;
        }

        v45 = objc_opt_class();
        v96[0] = MEMORY[0x277D85DD0];
        v96[1] = 3221225472;
        v96[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke_697;
        v96[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v96[4] = v45;
        if (qword_2811F6F10 != -1)
        {
          dispatch_once(&qword_2811F6F10, v96);
        }

        if (byte_2811F6E2D != 1)
        {
          goto LABEL_68;
        }

        eventCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"peer(%d) received Unidentified error:%@", xpc_connection_get_pid(peerCopy), eventCopy];
        v47 = MEMORY[0x277D3F178];
        v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        lastPathComponent5 = [v48 lastPathComponent];
        v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeer:forEvent:]"];
        [v47 logMessage:eventCopy2 fromFile:lastPathComponent5 fromFunction:v50 fromLineNumber:515];

        v51 = PLLogCommon();
        if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
LABEL_67:

LABEL_68:
          xpc_connection_cancel(peerCopy);
          goto LABEL_84;
        }

        *buf = 138412290;
        v103 = eventCopy2;
      }
    }

    _os_log_debug_impl(&dword_21A4C6000, v51, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    goto LABEL_67;
  }

  if (v8 == MEMORY[0x277D86468])
  {
    v16 = _CFXPCCreateCFObjectFromXPCMessage();
    v17 = [v16 objectForKeyedSubscript:@"content"];
    if (!v16)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"no message"];
        v58 = MEMORY[0x277D3F178];
        v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        lastPathComponent6 = [v59 lastPathComponent];
        v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeer:forEvent:]"];
        [v58 logMessage:v57 fromFile:lastPathComponent6 fromFunction:v61 fromLineNumber:559];

        v62 = PLLogCommon();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v103 = v57;
          _os_log_debug_impl(&dword_21A4C6000, v62, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }

      if ([MEMORY[0x277D3F258] isPowerlogHelperd])
      {
        [(PLXPCService *)self setSatelliteProcessExitWithTime:10.0];
      }

      goto LABEL_83;
    }

    v18 = [v16 objectForKeyedSubscript:@"clientID"];
    shortValue = [v18 shortValue];

    if (shortValue == 110)
    {
      v73 = [v17 objectForKey:@"PLXPCBatchedMessage"];

      if (v73)
      {
        v30 = [v17 objectForKeyedSubscript:@"PLXPCBatchedMessage"];
        v87[0] = MEMORY[0x277D85DD0];
        v87[1] = 3221225472;
        v87[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke_720;
        v87[3] = &unk_278261CB0;
        v87[4] = self;
        v88 = peerCopy;
        v89 = eventCopy;
        [v30 enumerateKeysAndObjectsUsingBlock:v87];

LABEL_82:
        goto LABEL_83;
      }
    }

    else if (shortValue == 51)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v20 = objc_opt_class();
        v95[0] = MEMORY[0x277D85DD0];
        v95[1] = 3221225472;
        v95[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke_706;
        v95[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v95[4] = v20;
        if (qword_2811F6F18 != -1)
        {
          dispatch_once(&qword_2811F6F18, v95);
        }

        if (byte_2811F6E2E == 1)
        {
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got a batched message %@", v16];
          v22 = MEMORY[0x277D3F178];
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
          lastPathComponent7 = [v23 lastPathComponent];
          v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeer:forEvent:]"];
          [v22 logMessage:v21 fromFile:lastPathComponent7 fromFunction:v25 fromLineNumber:527];

          v26 = PLLogCommon();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v103 = v21;
            _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      v27 = [v17 objectForKeyedSubscript:@"PLXPCBatchedMessage"];
      v28 = [v17 objectForKeyedSubscript:@"PLXPCBatchedMessageDropCounts"];
      intValue = [v28 intValue];

      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v30 = v27;
      v31 = [v30 countByEnumeratingWithState:&v91 objects:v101 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v92;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v92 != v33)
            {
              objc_enumerationMutation(v30);
            }

            [(PLXPCService *)self handleSingleMessage:*(*(&v91 + 1) + 8 * i) fromPeer:peerCopy forEvent:eventCopy];
          }

          v32 = [v30 countByEnumeratingWithState:&v91 objects:v101 count:16];
        }

        while (v32);
      }

      v35 = [(PLOperator *)PLXPCService entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ClientLoggingDrops"];
      v36 = MEMORY[0x277D3F1A0];
      className = [(PLOperator *)self className];
      LODWORD(v36) = [v36 isEntryKeySetup:v35 forOperatorName:className];

      if (v36)
      {
        v38 = intValue < 1;
      }

      else
      {
        v38 = 1;
      }

      if (!v38)
      {
        v84 = intValue;
        if ([v30 count])
        {
          v39 = [v30 objectAtIndexedSubscript:0];
          [v39 objectForKeyedSubscript:@"clientID"];
          v41 = v40 = v35;
          shortValue2 = [v41 shortValue];

          v35 = v40;
        }

        else
        {
          shortValue2 = 0;
        }

        v86 = v35;
        v74 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v35];
        v75 = [MEMORY[0x277CCABB0] numberWithInt:v84];
        [v74 setObject:v75 forKeyedSubscript:@"PLXPCBatchedMessageDropCounts"];

        v76 = [MEMORY[0x277CCABB0] numberWithShort:shortValue2];
        [v74 setObject:v76 forKeyedSubscript:@"clientID"];

        [(PLOperator *)self logEntry:v74];
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v77 = objc_opt_class();
          v90[0] = MEMORY[0x277D85DD0];
          v90[1] = 3221225472;
          v90[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke_716;
          v90[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v90[4] = v77;
          if (qword_2811F6F20 != -1)
          {
            dispatch_once(&qword_2811F6F20, v90);
          }

          if (byte_2811F6E2F == 1)
          {
            v85 = v74;
            v78 = [MEMORY[0x277CCACA8] stringWithFormat:@"Dropped messages %@", v74];
            v79 = MEMORY[0x277D3F178];
            v80 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
            lastPathComponent8 = [v80 lastPathComponent];
            v82 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeer:forEvent:]"];
            [v79 logMessage:v78 fromFile:lastPathComponent8 fromFunction:v82 fromLineNumber:544];

            v83 = PLLogCommon();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v103 = v78;
              _os_log_debug_impl(&dword_21A4C6000, v83, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v74 = v85;
          }
        }

        v35 = v86;
      }

      goto LABEL_82;
    }

    [(PLXPCService *)self handleSingleMessage:v16 fromPeer:peerCopy forEvent:eventCopy];
LABEL_83:
  }

LABEL_84:
}

void *__36__PLXPCService_handlePeer_forEvent___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E29 = result;
  return result;
}

void *__36__PLXPCService_handlePeer_forEvent___block_invoke_679(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E2A = result;
  return result;
}

void *__36__PLXPCService_handlePeer_forEvent___block_invoke_685(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E2B = result;
  return result;
}

void *__36__PLXPCService_handlePeer_forEvent___block_invoke_691(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E2C = result;
  return result;
}

void *__36__PLXPCService_handlePeer_forEvent___block_invoke_697(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E2D = result;
  return result;
}

void *__36__PLXPCService_handlePeer_forEvent___block_invoke_706(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E2E = result;
  return result;
}

void *__36__PLXPCService_handlePeer_forEvent___block_invoke_716(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E2F = result;
  return result;
}

void __36__PLXPCService_handlePeer_forEvent___block_invoke_720(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 32) handleSingleMessage:*(*(&v9 + 1) + 8 * v8++) fromPeer:*(a1 + 40) forEvent:*(a1 + 48)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)handleSingleMessage:(id)message fromPeer:(id)peer forEvent:(id)event
{
  v122 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  peerCopy = peer;
  eventCopy = event;
  v10 = [messageCopy objectForKeyedSubscript:@"clientID"];
  shortValue = [v10 shortValue];

  v12 = [messageCopy objectForKeyedSubscript:@"process-name"];
  v13 = [messageCopy objectForKeyedSubscript:@"event"];
  if ([MEMORY[0x277D3F258] isPowerlogHelperd])
  {
    if (shortValue != 48)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v27 = objc_opt_class();
        v119[0] = MEMORY[0x277D85DD0];
        v119[1] = 3221225472;
        v119[2] = __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke;
        v119[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v119[4] = v27;
        if (qword_2811F6F28 != -1)
        {
          dispatch_once(&qword_2811F6F28, v119);
        }

        if (byte_2811F6E30 == 1)
        {
          v104 = shortValue;
          v102 = v12;
          v28 = peerCopy;
          messageCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! %s/%d: message=%@", "-[PLXPCService handleSingleMessage:fromPeer:forEvent:]", 581, messageCopy];
          v30 = MEMORY[0x277D3F178];
          v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
          lastPathComponent = [v31 lastPathComponent];
          v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handleSingleMessage:fromPeer:forEvent:]"];
          [v30 logMessage:messageCopy fromFile:lastPathComponent fromFunction:v33 fromLineNumber:581];

          v34 = PLLogCommon();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v121 = messageCopy;
            _os_log_debug_impl(&dword_21A4C6000, v34, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          peerCopy = v28;
          v12 = v102;
          shortValue = v104;
        }
      }

      v26 = 30.0;
      goto LABEL_20;
    }

    v14 = [messageCopy objectForKeyedSubscript:@"content"];
    v15 = [v14 objectForKeyedSubscript:@"battery_gauge_event"];
    intValue = [v15 intValue];

    debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
    if (intValue == 1)
    {
      if (debugEnabled)
      {
        v18 = objc_opt_class();
        v118[0] = MEMORY[0x277D85DD0];
        v118[1] = 3221225472;
        v118[2] = __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_733;
        v118[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v118[4] = v18;
        if (qword_2811F6F30 != -1)
        {
          dispatch_once(&qword_2811F6F30, v118);
        }

        if (byte_2811F6E31 == 1)
        {
          v101 = v12;
          v19 = peerCopy;
          messageCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! %s/%d: message=%@", "-[PLXPCService handleSingleMessage:fromPeer:forEvent:]", 587, messageCopy];
          v21 = MEMORY[0x277D3F178];
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
          lastPathComponent2 = [v22 lastPathComponent];
          v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handleSingleMessage:fromPeer:forEvent:]"];
          [v21 logMessage:messageCopy2 fromFile:lastPathComponent2 fromFunction:v24 fromLineNumber:587];

          v25 = PLLogCommon();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v121 = messageCopy2;
            _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          peerCopy = v19;
          v12 = v101;
          shortValue = 48;
        }
      }

      v26 = 100.0;
LABEL_20:
      [(PLXPCService *)self setSatelliteProcessExitWithTime:v26];
      goto LABEL_21;
    }

    if (debugEnabled)
    {
      v71 = objc_opt_class();
      v117[0] = MEMORY[0x277D85DD0];
      v117[1] = 3221225472;
      v117[2] = __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_736;
      v117[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v117[4] = v71;
      if (qword_2811F6F38 != -1)
      {
        dispatch_once(&qword_2811F6F38, v117);
      }

      if (byte_2811F6E32 == 1)
      {
        v103 = v12;
        v72 = peerCopy;
        messageCopy3 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! %s/%d: message=%@", "-[PLXPCService handleSingleMessage:fromPeer:forEvent:]", 592, messageCopy];
        v74 = MEMORY[0x277D3F178];
        v75 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        lastPathComponent3 = [v75 lastPathComponent];
        v77 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handleSingleMessage:fromPeer:forEvent:]"];
        [v74 logMessage:messageCopy3 fromFile:lastPathComponent3 fromFunction:v77 fromLineNumber:592];

        v78 = PLLogCommon();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v121 = messageCopy3;
          _os_log_debug_impl(&dword_21A4C6000, v78, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        peerCopy = v72;
        v12 = v103;
        shortValue = 48;
      }
    }
  }

LABEL_21:
  v35 = [messageCopy objectForKey:@"shouldLog"];

  if (v35)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v36 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_742;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v36;
      if (qword_2811F6F40 != -1)
      {
        dispatch_once(&qword_2811F6F40, block);
      }

      if (byte_2811F6E33 == 1)
      {
        v105 = shortValue;
        v37 = v13;
        v38 = v12;
        v39 = peerCopy;
        messageCopy4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Should log request(%d): %@", xpc_connection_get_pid(peerCopy), messageCopy];
        v41 = MEMORY[0x277D3F178];
        v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        lastPathComponent4 = [v42 lastPathComponent];
        v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handleSingleMessage:fromPeer:forEvent:]"];
        [v41 logMessage:messageCopy4 fromFile:lastPathComponent4 fromFunction:v44 fromLineNumber:598];

        v45 = PLLogCommon();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v121 = messageCopy4;
          _os_log_debug_impl(&dword_21A4C6000, v45, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        peerCopy = v39;
        v12 = v38;
        v13 = v37;
        shortValue = v105;
      }
    }

    [(PLXPCService *)self handlePeerShouldLogEvent:eventCopy withMessage:messageCopy withClientID:shortValue withProcessName:v12 withKey:v13];
    v46 = @"shouldLog";
  }

  else
  {
    v47 = [messageCopy objectForKeyedSubscript:@"content"];
    v48 = [messageCopy objectForKey:@"Query"];

    if (v48)
    {
      if (![MEMORY[0x277D3F258] allowQueryFromPeer:peerCopy])
      {
LABEL_69:

        goto LABEL_70;
      }

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v49 = objc_opt_class();
        v115[0] = MEMORY[0x277D85DD0];
        v115[1] = 3221225472;
        v115[2] = __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_748;
        v115[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v115[4] = v49;
        if (qword_2811F6F48 != -1)
        {
          dispatch_once(&qword_2811F6F48, v115);
        }

        if (byte_2811F6E34 == 1)
        {
          v108 = v47;
          v106 = shortValue;
          v50 = v13;
          v51 = v12;
          v52 = peerCopy;
          messageCopy5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Response request(%d): %@", xpc_connection_get_pid(peerCopy), messageCopy];
          v54 = MEMORY[0x277D3F178];
          v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
          lastPathComponent5 = [v55 lastPathComponent];
          v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handleSingleMessage:fromPeer:forEvent:]"];
          [v54 logMessage:messageCopy5 fromFile:lastPathComponent5 fromFunction:v57 fromLineNumber:609];

          v58 = PLLogCommon();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v121 = messageCopy5;
            _os_log_debug_impl(&dword_21A4C6000, v58, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          peerCopy = v52;
          v12 = v51;
          v13 = v50;
          shortValue = v106;
          v47 = v108;
        }
      }

      [(PLXPCService *)self handlePeerResponderEvent:eventCopy withMessage:messageCopy withClientID:shortValue withProcessName:v12 withKey:v13 withPayload:v47];
      v46 = @"Query";
    }

    else
    {
      v59 = [messageCopy objectForKey:@"Post"];

      debugEnabled2 = [MEMORY[0x277D3F180] debugEnabled];
      if (v59)
      {
        if (debugEnabled2)
        {
          v61 = objc_opt_class();
          v114[0] = MEMORY[0x277D85DD0];
          v114[1] = 3221225472;
          v114[2] = __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_754;
          v114[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v114[4] = v61;
          if (qword_2811F6F50 != -1)
          {
            dispatch_once(&qword_2811F6F50, v114);
          }

          if (byte_2811F6E35 == 1)
          {
            v109 = v47;
            v107 = shortValue;
            v62 = v13;
            v63 = v12;
            v64 = peerCopy;
            messageCopy6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Data posted(%d): %@", xpc_connection_get_pid(peerCopy), messageCopy];
            v66 = MEMORY[0x277D3F178];
            v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
            lastPathComponent6 = [v67 lastPathComponent];
            v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handleSingleMessage:fromPeer:forEvent:]"];
            [v66 logMessage:messageCopy6 fromFile:lastPathComponent6 fromFunction:v69 fromLineNumber:614];

            v70 = PLLogCommon();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v121 = messageCopy6;
              _os_log_debug_impl(&dword_21A4C6000, v70, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            peerCopy = v64;
            v12 = v63;
            v13 = v62;
            shortValue = v107;
            v47 = v109;
          }
        }

        [(PLXPCService *)self handlePeerListenerEvent:eventCopy withMessage:messageCopy withClientID:shortValue withProcessName:v12 withKey:v13 withPayload:v47];
        v46 = @"Post";
      }

      else
      {
        if (!debugEnabled2)
        {
          goto LABEL_63;
        }

        v79 = objc_opt_class();
        v113[0] = MEMORY[0x277D85DD0];
        v113[1] = 3221225472;
        v113[2] = __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_760;
        v113[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v113[4] = v79;
        if (qword_2811F6F58 != -1)
        {
          dispatch_once(&qword_2811F6F58, v113);
        }

        if (byte_2811F6E36 == 1)
        {
          v110 = v47;
          v80 = v13;
          v81 = v12;
          v82 = peerCopy;
          messageCopy7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Message with no direction: %@", messageCopy];
          v84 = MEMORY[0x277D3F178];
          v85 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
          lastPathComponent7 = [v85 lastPathComponent];
          v87 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handleSingleMessage:fromPeer:forEvent:]"];
          [v84 logMessage:messageCopy7 fromFile:lastPathComponent7 fromFunction:v87 fromLineNumber:618];

          v88 = PLLogCommon();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v121 = messageCopy7;
            _os_log_debug_impl(&dword_21A4C6000, v88, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v46 = 0;
          peerCopy = v82;
          v12 = v81;
          v13 = v80;
          v47 = v110;
        }

        else
        {
LABEL_63:
          v46 = 0;
        }
      }
    }
  }

  if ([(PLOperator *)self isDebugEnabledForKey:@"LogAggregateXPC"])
  {
    v111 = v13;
    v89 = v12;
    v90 = peerCopy;
    v47 = [(PLOperator *)PLXPCService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"XPCEvent"];
    v91 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v47];
    v92 = [messageCopy objectForKeyedSubscript:@"event"];
    [v91 setObject:v92 forKeyedSubscript:@"event"];

    v93 = [messageCopy objectForKeyedSubscript:@"clientID"];
    [v91 setObject:v93 forKeyedSubscript:@"clientID"];

    v94 = [messageCopy objectForKeyedSubscript:@"process-name"];
    [v91 setObject:v94 forKeyedSubscript:@"process-name"];

    if (v46)
    {
      [v91 setObject:v46 forKeyedSubscript:@"type"];
    }

    [v91 setObject:&unk_282C13CF8 forKeyedSubscript:@"count"];
    [(PLOperator *)self logEntry:v91];
    v95 = MEMORY[0x277CCACA8];
    v96 = [v91 objectForKeyedSubscript:@"type"];
    v97 = [v91 objectForKeyedSubscript:@"clientID"];
    v98 = [v91 objectForKeyedSubscript:@"process-name"];
    v99 = [v91 objectForKeyedSubscript:@"event"];
    v100 = [v95 stringWithFormat:@"com.apple.power.xpc.%@.%@.%@.%@", v96, v97, v98, v99];

    MEMORY[0x21CEDCD40](v100, 1);
    peerCopy = v90;
    v12 = v89;
    v13 = v111;
    goto LABEL_69;
  }

LABEL_70:
}

void *__54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E30 = result;
  return result;
}

void *__54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_733(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E31 = result;
  return result;
}

void *__54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_736(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E32 = result;
  return result;
}

void *__54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_742(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E33 = result;
  return result;
}

void *__54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_748(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E34 = result;
  return result;
}

void *__54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_754(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E35 = result;
  return result;
}

void *__54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_760(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E36 = result;
  return result;
}

- (void)handlePeerShouldLogEvent:(id)event withMessage:(id)message withClientID:(signed __int16)d withProcessName:(id)name withKey:(id)key
{
  dCopy = d;
  v43 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  keyCopy = key;
  nameCopy = name;
  messageCopy = message;
  v15 = [messageCopy objectForKeyedSubscript:@"shouldLog"];
  v16 = [messageCopy mutableCopy];

  LODWORD(dCopy) = [(PLXPCService *)self permissionForClientID:dCopy withKey:keyCopy withType:v15 withProcessName:nameCopy];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:dCopy != 0];
  [v16 setObject:v17 forKeyedSubscript:@"shouldLog"];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v18 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __90__PLXPCService_handlePeerShouldLogEvent_withMessage_withClientID_withProcessName_withKey___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v18;
    if (qword_2811F6F60 != -1)
    {
      dispatch_once(&qword_2811F6F60, block);
    }

    if (byte_2811F6E37 == 1)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! response=%@ %s:%d", v16, "-[PLXPCService handlePeerShouldLogEvent:withMessage:withClientID:withProcessName:withKey:]", 648];;
      v20 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      lastPathComponent = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerShouldLogEvent:withMessage:withClientID:withProcessName:withKey:]"];
      [v20 logMessage:v19 fromFile:lastPathComponent fromFunction:v23 fromLineNumber:648];

      v24 = PLLogCommon();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v42 = v19;
        _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v25 = objc_opt_class();
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __90__PLXPCService_handlePeerShouldLogEvent_withMessage_withClientID_withProcessName_withKey___block_invoke_774;
    v39[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v39[4] = v25;
    if (qword_2811F6F68 != -1)
    {
      dispatch_once(&qword_2811F6F68, v39);
    }

    if (byte_2811F6E38 == 1)
    {
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! vlad=%@ %s:%d", v16, "-[PLXPCService handlePeerShouldLogEvent:withMessage:withClientID:withProcessName:withKey:]", 649];;
      v27 = MEMORY[0x277D3F178];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      lastPathComponent2 = [v28 lastPathComponent];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerShouldLogEvent:withMessage:withClientID:withProcessName:withKey:]"];
      [v27 logMessage:v26 fromFile:lastPathComponent2 fromFunction:v30 fromLineNumber:649];

      v31 = PLLogCommon();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v42 = v26;
        _os_log_debug_impl(&dword_21A4C6000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if ([(PLOperator *)self isDebugEnabled])
  {
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! response=%@ %s:%d", v16, "-[PLXPCService handlePeerShouldLogEvent:withMessage:withClientID:withProcessName:withKey:]", 650];;
    v33 = MEMORY[0x277D3F178];
    v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
    lastPathComponent3 = [v34 lastPathComponent];
    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerShouldLogEvent:withMessage:withClientID:withProcessName:withKey:]"];
    [v33 logMessage:v32 fromFile:lastPathComponent3 fromFunction:v36 fromLineNumber:650];

    v37 = PLLogCommon();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v42 = v32;
      _os_log_debug_impl(&dword_21A4C6000, v37, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  [(PLXPCService *)self respondToEvent:eventCopy withResponse:v16];
}

void *__90__PLXPCService_handlePeerShouldLogEvent_withMessage_withClientID_withProcessName_withKey___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E37 = result;
  return result;
}

void *__90__PLXPCService_handlePeerShouldLogEvent_withMessage_withClientID_withProcessName_withKey___block_invoke_774(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E38 = result;
  return result;
}

- (void)handlePeerResponderEvent:(id)event withMessage:(id)message withClientID:(signed __int16)d withProcessName:(id)name withKey:(id)key withPayload:(id)payload
{
  dCopy = d;
  v137 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  messageCopy = message;
  nameCopy = name;
  keyCopy = key;
  payloadCopy = payload;
  if ([MEMORY[0x277D3F258] isPowerlogHelperd])
  {
    satelliteProcessSemaphore = [(PLXPCService *)self satelliteProcessSemaphore];
    [satelliteProcessSemaphore signalInterestByObject:messageCopy];
  }

  v124 = 0;
  v125 = &v124;
  v126 = 0x3032000000;
  v127 = __Block_byref_object_copy__20;
  v128 = __Block_byref_object_dispose__20;
  v129 = 0;
  if ([(PLOperator *)self isDebugEnabled])
  {
    v16 = [(PLOperator *)PLXPCService entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"ResponderEvent"];
    v17 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v16];
    v18 = v125[5];
    v125[5] = v17;

    v19 = [messageCopy objectForKeyedSubscript:@"event"];
    [v125[5] setObject:v19 forKeyedSubscript:@"event"];

    v20 = [messageCopy objectForKeyedSubscript:@"clientID"];
    [v125[5] setObject:v20 forKeyedSubscript:@"clientID"];

    v21 = [messageCopy objectForKeyedSubscript:@"process-name"];
    [v125[5] setObject:v21 forKeyedSubscript:@"process-name"];

    if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) == 0)
    {
      [(PLOperator *)self logEntry:v125[5]];
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v22 = objc_opt_class();
    v123[0] = MEMORY[0x277D85DD0];
    v123[1] = 3221225472;
    v123[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke;
    v123[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v123[4] = v22;
    if (qword_2811F6F70 != -1)
    {
      dispatch_once(&qword_2811F6F70, v123);
    }

    if (byte_2811F6E39 == 1)
    {
      payloadCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"clientID=%i, processName=%@, key=%@, payload=%@", dCopy, nameCopy, keyCopy, payloadCopy];
      v24 = MEMORY[0x277D3F178];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      lastPathComponent = [v25 lastPathComponent];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]"];
      [v24 logMessage:payloadCopy fromFile:lastPathComponent fromFunction:v27 fromLineNumber:675];

      v28 = PLLogCommon();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(v132) = 138412290;
        *(&v132 + 4) = payloadCopy;
        _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", &v132, 0xCu);
      }
    }
  }

  *&v132 = 0;
  *(&v132 + 1) = &v132;
  v133 = 0x3032000000;
  v134 = __Block_byref_object_copy__20;
  v135 = __Block_byref_object_dispose__20;
  v74 = eventCopy;
  v136 = v74;
  v119 = 0;
  v120 = &v119;
  v121 = 0x2020000000;
  v122 = dCopy;
  v113 = 0;
  v114 = &v113;
  v115 = 0x3032000000;
  v116 = __Block_byref_object_copy__20;
  v117 = __Block_byref_object_dispose__20;
  v72 = nameCopy;
  v118 = v72;
  v107 = 0;
  v108 = &v107;
  v109 = 0x3032000000;
  v110 = __Block_byref_object_copy__20;
  v111 = __Block_byref_object_dispose__20;
  v76 = keyCopy;
  v112 = v76;
  v101 = 0;
  v102 = &v101;
  v103 = 0x3032000000;
  v104 = __Block_byref_object_copy__20;
  v105 = __Block_byref_object_dispose__20;
  v78 = payloadCopy;
  v106 = v78;
  v95 = 0;
  v96 = &v95;
  v97 = 0x3032000000;
  v98 = __Block_byref_object_copy__20;
  v99 = __Block_byref_object_dispose__20;
  registeredResponders = [(PLXPCService *)self registeredResponders];
  v100 = [(PLXPCService *)self registeredOperatorFromDictionary:registeredResponders forMessage:messageCopy];

  v30 = 0;
  v93[0] = 0;
  v93[1] = v93;
  v93[2] = 0x3032000000;
  v93[3] = __Block_byref_object_copy__20;
  v93[4] = __Block_byref_object_dispose__20;
  v94 = 0;
  while (1)
  {
    registeredResponders2 = [(PLXPCService *)self registeredResponders];
    v32 = [(PLXPCService *)self registeredOperatorFromDictionary:registeredResponders2 forMessage:messageCopy];
    v33 = v96[5];
    v96[5] = v32;

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v34 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_783;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v34;
      if (qword_2811F6F78 != -1)
      {
        dispatch_once(&qword_2811F6F78, block);
      }

      if (byte_2811F6E3A == 1)
      {
        v35 = MEMORY[0x277CCACA8];
        registeredResponders3 = [(PLXPCService *)self registeredResponders];
        v37 = [v35 stringWithFormat:@"!!! %s/%d: count=%d, [self registeredResponders]=%@, message=%@, responder=%@", "-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]", 690, v30, registeredResponders3, messageCopy, v96[5]];

        v38 = MEMORY[0x277D3F178];
        v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        lastPathComponent2 = [v39 lastPathComponent];
        v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]"];
        [v38 logMessage:v37 fromFile:lastPathComponent2 fromFunction:v41 fromLineNumber:690];

        v42 = PLLogCommon();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v131 = v37;
          _os_log_debug_impl(&dword_21A4C6000, v42, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    if (v96[5])
    {
      break;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v43 = objc_opt_class();
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_842;
      v81[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v81[4] = v43;
      if (qword_2811F6FA8 != -1)
      {
        dispatch_once(&qword_2811F6FA8, v81);
      }

      if (byte_2811F6E40 == 1)
      {
        v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"No registered Responder"];
        v45 = MEMORY[0x277D3F178];
        v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        lastPathComponent3 = [v46 lastPathComponent];
        v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]"];
        [v45 logMessage:v44 fromFile:lastPathComponent3 fromFunction:v48 fromLineNumber:740];

        v49 = PLLogCommon();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v131 = v44;
          _os_log_debug_impl(&dword_21A4C6000, v49, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    if (v30 > 3)
    {
      responderWaitTime = 1000000;
    }

    else
    {
      responderWaitTime = [(PLXPCService *)self responderWaitTime];
    }

    usleep(responderWaitTime);
    v30 = (v30 + 1);
    if (v30 == 20)
    {
      goto LABEL_51;
    }
  }

  v51 = [messageCopy objectForKeyedSubscript:@"clientID"];
  if ([v51 integerValue] != 32)
  {
    goto LABEL_46;
  }

  v52 = [messageCopy objectForKeyedSubscript:@"event"];
  v53 = [v52 description];
  v54 = [v53 isEqualToString:@"SafeLogFile"];

  if (v54)
  {
    v55 = [v78 mutableCopy];
    [v55 setObject:MEMORY[0x277CBEC38] forKey:@"BLDRetail"];
    v51 = v55;

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v56 = objc_opt_class();
      v91[0] = MEMORY[0x277D85DD0];
      v91[1] = 3221225472;
      v91[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_795;
      v91[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v91[4] = v56;
      if (qword_2811F6F80 != -1)
      {
        dispatch_once(&qword_2811F6F80, v91);
      }

      if (byte_2811F6E3B == 1)
      {
        messageCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! %s/%d: clientID=%d, event=%@, processName=%@, key=%@, payload=%@, message=%@", "-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]", 696, *(v120 + 12), v74, v114[5], v108[5], v102[5], messageCopy];
        v58 = MEMORY[0x277D3F178];
        v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        lastPathComponent4 = [v59 lastPathComponent];
        v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]"];
        [v58 logMessage:messageCopy fromFile:lastPathComponent4 fromFunction:v61 fromLineNumber:696];

        v62 = PLLogCommon();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v131 = messageCopy;
          _os_log_debug_impl(&dword_21A4C6000, v62, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v63 = dispatch_get_global_queue(0, 0);
    v90[0] = MEMORY[0x277D85DD0];
    v90[1] = 3221225472;
    v90[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_799;
    v90[3] = &unk_27825F6D0;
    v90[4] = self;
    v90[5] = v93;
    dispatch_sync(v63, v90);

    v78 = v51;
LABEL_46:
  }

  v64 = [messageCopy objectForKeyedSubscript:@"event"];
  v65 = [v64 description];
  v66 = [v65 isEqualToString:@"Aggregate"];

  if (v66)
  {
    v67 = -32768;
  }

  else
  {
    v67 = 0;
  }

  v68 = dispatch_get_global_queue(v67, 0);
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_835;
  v82[3] = &unk_278263388;
  v85 = &v119;
  v86 = &v113;
  v87 = &v107;
  v88 = &v101;
  v84 = &v95;
  v82[4] = self;
  v89 = &v132;
  v83 = messageCopy;
  dispatch_async(v68, v82);

LABEL_51:
  if ([MEMORY[0x277D3F258] isPowerlogHelperd] && !v96[5])
  {
    v69 = PLLogCommon();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v131 = messageCopy;
      _os_log_error_impl(&dword_21A4C6000, v69, OS_LOG_TYPE_ERROR, "powerlogHelperd received unhandled query: %@", buf, 0xCu);
    }

    satelliteProcessSemaphore2 = [(PLXPCService *)self satelliteProcessSemaphore];
    [satelliteProcessSemaphore2 signalDoneByObject:messageCopy];
  }

  v71 = v125[5];
  if (v71)
  {
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_846;
    v80[3] = &unk_27825A990;
    v80[4] = &v124;
    [(PLOperator *)self updateEntry:v71 withBlock:v80];
  }

  _Block_object_dispose(v93, 8);

  _Block_object_dispose(&v95, 8);
  _Block_object_dispose(&v101, 8);

  _Block_object_dispose(&v107, 8);
  _Block_object_dispose(&v113, 8);

  _Block_object_dispose(&v119, 8);
  _Block_object_dispose(&v132, 8);

  _Block_object_dispose(&v124, 8);
}

void *__102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E39 = result;
  return result;
}

void *__102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_783(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E3A = result;
  return result;
}

void *__102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_795(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E3B = result;
  return result;
}

void __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_799(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  PLTalkToPowerlogHelper();
  v2 = PLQueryRegistered();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = 0x277D3F000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_2;
    v44[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v44[4] = v6;
    if (qword_2811F6F88 != -1)
    {
      dispatch_once(&qword_2811F6F88, v44);
    }

    if (byte_2811F6E3C == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%d: buiResults=%@", "-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]_block_invoke", 702, *(*(*(a1 + 40) + 8) + 40)];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]_block_invoke"];
      [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:702];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v47 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v5 = 0x277D3F000uLL;
    }
  }

  v13 = *(*(*(a1 + 40) + 8) + 40);
  if (v13)
  {
    v14 = [v13 objectForKeyedSubscript:@"result"];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v15)
    {
      v16 = v15;
      v37 = *v41;
      v36 = a1;
      do
      {
        v17 = 0;
        do
        {
          if (*v41 != v37)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v40 + 1) + 8 * v17);
          v19 = objc_alloc(MEMORY[0x277D3F190]);
          v20 = [v18 objectForKeyedSubscript:@"EntryKey"];
          v21 = [v19 initWithEntryKey:v20 withRawData:v18];

          [*(a1 + 32) logEntry:v21];
          if ([*(v5 + 384) debugEnabled])
          {
            v22 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_821;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v22;
            if (qword_2811F6F90 != -1)
            {
              dispatch_once(&qword_2811F6F90, block);
            }

            if (byte_2811F6E3D == 1)
            {
              v23 = v14;
              v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! %s/%d: log to database entry=%@, serializedEntry=%@", "-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]_block_invoke_2", 711, v21, v18];;
              v25 = MEMORY[0x277D3F178];
              v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
              v27 = [v26 lastPathComponent];
              v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]_block_invoke_2"];
              [v25 logMessage:v24 fromFile:v27 fromFunction:v28 fromLineNumber:711];

              v29 = PLLogCommon();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v47 = v24;
                _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v5 = 0x277D3F000;
              v14 = v23;
              a1 = v36;
            }
          }

          ++v17;
        }

        while (v16 != v17);
        v16 = [v14 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v16);
    }

LABEL_23:

    return;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v30 = objc_opt_class();
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_828;
    v38[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v38[4] = v30;
    if (qword_2811F6F98 != -1)
    {
      dispatch_once(&qword_2811F6F98, v38);
    }

    if (byte_2811F6E3E == 1)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! %s/%d: buiResults is nil", "-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]_block_invoke_2", 714];
      v31 = MEMORY[0x277D3F178];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v33 = [v32 lastPathComponent];
      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]_block_invoke_2"];
      [v31 logMessage:v14 fromFile:v33 fromFunction:v34 fromLineNumber:714];

      v35 = PLLogCommon();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v47 = v14;
        _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_23;
    }
  }
}

void *__102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E3C = result;
  return result;
}

void *__102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_821(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E3D = result;
  return result;
}

void *__102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_828(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E3E = result;
  return result;
}

void __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_835(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(*(*(a1 + 48) + 8) + 40) respondToRequestForClientID:*(*(*(a1 + 56) + 8) + 24) withProcessName:*(*(*(a1 + 64) + 8) + 40) withKey:*(*(*(a1 + 72) + 8) + 40) withPayload:*(*(*(a1 + 80) + 8) + 40)];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_2_836;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F6FA0 != -1)
    {
      dispatch_once(&qword_2811F6FA0, block);
    }

    if (byte_2811F6E3F == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! %s/%d: responder=%@, response=%@", "-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]_block_invoke", 731, *(*(*(a1 + 48) + 8) + 40), v2];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]_block_invoke"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:731];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v13 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) respondToEvent:*(*(*(a1 + 88) + 8) + 40) withResponse:v2];
  if ([MEMORY[0x277D3F258] isPowerlogHelperd])
  {
    v10 = [*(a1 + 32) satelliteProcessSemaphore];
    [v10 signalDoneByObject:*(a1 + 40)];
  }
}

void *__102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_2_836(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E3F = result;
  return result;
}

void *__102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_842(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E40 = result;
  return result;
}

void __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_846(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] monotonicDate];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v2 forKeyedSubscript:@"timestampEnd"];
}

- (void)handlePeerListenerEvent:(id)event withMessage:(id)message withClientID:(signed __int16)d withProcessName:(id)name withKey:(id)key withPayload:(id)payload
{
  dCopy = d;
  v40 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  nameCopy = name;
  keyCopy = key;
  payloadCopy = payload;
  if ([(PLXPCService *)self permissionForClientID:dCopy withKey:keyCopy withType:@"Post" withProcessName:nameCopy])
  {
    registeredListeners = [(PLXPCService *)self registeredListeners];
    v18 = [(PLXPCService *)self registeredOperatorFromDictionary:registeredListeners forMessage:messageCopy];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v19 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __101__PLXPCService_handlePeerListenerEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_852;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v19;
      if (qword_2811F6FB8 != -1)
      {
        dispatch_once(&qword_2811F6FB8, block);
      }

      if (byte_2811F6E42 == 1)
      {
        v34 = messageCopy;
        v35 = payloadCopy;
        v20 = MEMORY[0x277CCACA8];
        registeredListeners2 = [(PLXPCService *)self registeredListeners];
        v22 = [v20 stringWithFormat:@"!!! %s/%d: [self registeredListeners]=%@, listener=%@", "-[PLXPCService handlePeerListenerEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]", 783, registeredListeners2, v18];

        v23 = MEMORY[0x277D3F178];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        lastPathComponent = [v24 lastPathComponent];
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerListenerEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]"];
        [v23 logMessage:v22 fromFile:lastPathComponent fromFunction:v26 fromLineNumber:783];

        v27 = PLLogCommon();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v39 = v22;
          _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        messageCopy = v34;
        payloadCopy = v35;
      }
    }

    if (v18)
    {
      [v18 messageRecievedForClientID:dCopy withProcessName:nameCopy withKey:keyCopy withPayload:payloadCopy];
    }

    else
    {
      [(PLXPCService *)self logMessage:messageCopy withPayload:payloadCopy];
    }

LABEL_19:

    goto LABEL_20;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v28 = objc_opt_class();
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __101__PLXPCService_handlePeerListenerEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke;
    v37[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v37[4] = v28;
    if (qword_2811F6FB0 != -1)
    {
      dispatch_once(&qword_2811F6FB0, v37);
    }

    if (byte_2811F6E41 == 1)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"no permission to log!"];
      v29 = MEMORY[0x277D3F178];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      lastPathComponent2 = [v30 lastPathComponent];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerListenerEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]"];
      [v29 logMessage:v18 fromFile:lastPathComponent2 fromFunction:v32 fromLineNumber:775];

      v33 = PLLogCommon();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v39 = v18;
        _os_log_debug_impl(&dword_21A4C6000, v33, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_19;
    }
  }

LABEL_20:
}

void *__101__PLXPCService_handlePeerListenerEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E41 = result;
  return result;
}

void *__101__PLXPCService_handlePeerListenerEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_852(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E42 = result;
  return result;
}

- (void)stopPowerlogHelperd:(id)helperd
{
  userInfo = [helperd userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"timeout"];
  -[PLXPCService setSatelliteProcessExitWithTime:](self, "setSatelliteProcessExitWithTime:", [v4 intValue]);
}

- (void)setSatelliteProcessExitWithTime:(double)time
{
  satelliteProcessSemaphore = [(PLXPCService *)self satelliteProcessSemaphore];
  [satelliteProcessSemaphore setTimeout:time];

  [(PLXPCService *)self setSatelliteProcessExit];
}

- (void)setSatelliteProcessExit
{
  if ([MEMORY[0x277D3F258] isPowerlogHelperd])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__PLXPCService_setSatelliteProcessExit__block_invoke;
    block[3] = &unk_2782591D0;
    block[4] = self;
    if (setSatelliteProcessExit_onceToken != -1)
    {
      dispatch_once(&setSatelliteProcessExit_onceToken, block);
    }
  }
}

void __39__PLXPCService_setSatelliteProcessExit__block_invoke(uint64_t a1)
{
  v2 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__PLXPCService_setSatelliteProcessExit__block_invoke_2;
  block[3] = &unk_2782591D0;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void __39__PLXPCService_setSatelliteProcessExit__block_invoke_2(uint64_t a1)
{
  while (1)
  {
    v2 = [*(a1 + 32) satelliteProcessSemaphore];
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __39__PLXPCService_setSatelliteProcessExit__block_invoke_3;
    v3[3] = &unk_2782591D0;
    v3[4] = *(a1 + 32);
    [v2 waitWithBlockSync:v3];
  }
}

void __39__PLXPCService_setSatelliteProcessExit__block_invoke_3(uint64_t a1, const char *a2)
{
  v4 = objc_msgSend_storage(*(a1 + 32), a2);
  [v4 blockingFlushCachesWithReason:@"SatelliteExit"];

  sleep(0xAu);
  v5 = [*(a1 + 32) satelliteProcessSemaphore];
  LOBYTE(v4) = [v5 isActive];

  if ((v4 & 1) == 0)
  {
    v6 = PLLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEFAULT, "Stopping powerlogHelperd", v7, 2u);
    }

    [MEMORY[0x277D3F258] exitWithReason:6];
  }
}

@end