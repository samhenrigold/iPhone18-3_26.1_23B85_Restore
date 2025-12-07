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
  v14[0] = &unk_28714B948;
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
  v25[0] = &unk_28714B948;
  v25[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F4C0];
  v24[2] = *MEMORY[0x277D3F4C8];
  v24[3] = v3;
  v25[2] = &unk_287146F60;
  v25[3] = &unk_287146F78;
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
  v19 = &unk_287146F90;
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
  v17 = &unk_28714B948;
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
  v30[0] = &unk_28714B948;
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
  v25[0] = &unk_28714B958;
  v23 = *MEMORY[0x277D3F470];
  v9 = v23;
  v24 = &unk_28714B968;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v25[1] = &unk_28714B978;
  v26[0] = v10;
  v21 = v9;
  v22 = &unk_28714B958;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v26[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  v31[3] = *MEMORY[0x277D3F488];
  v32[2] = v12;
  v32[3] = &unk_28714DC40;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:4];

  return v13;
}

- (PLXPCService)init
{
  if (!+[PLUtilities isPerfPowerMetricd])
  {
    v86.receiver = self;
    v86.super_class = PLXPCService;
    v4 = [(PLOperator *)&v86 init];
    if (!v4)
    {
LABEL_40:
      self = v4;
      selfCopy = self;
      goto LABEL_41;
    }

    v5 = objc_opt_new();
    registeredListeners = v4->_registeredListeners;
    v4->_registeredListeners = v5;

    v7 = objc_opt_new();
    registeredResponders = v4->_registeredResponders;
    v4->_registeredResponders = v7;

    clientIDs = v4->_clientIDs;
    v4->_clientIDs = &unk_28714DC58;

    v10 = objc_opt_new();
    v11 = v4->_clientIDs;
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __20__PLXPCService_init__block_invoke;
    v84[3] = &unk_279A5C3A8;
    v12 = v10;
    v85 = v12;
    [(NSArray *)v11 enumerateObjectsUsingBlock:v84];
    objc_storeStrong(&v4->_clientNames, v10);
    if (+[PLUtilities isPowerlogHelperd])
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

      v23 = PLLogCommon(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }

    v24 = objc_alloc(MEMORY[0x277D3F1F0]);
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __20__PLXPCService_init__block_invoke_540;
    v82[3] = &unk_279A5BE78;
    self = v4;
    selfCopy2 = self;
    v25 = [v24 initWithOperator:self forNotification:@"register.PLXPCService" withBlock:v82];
    registrationNotification = self->_registrationNotification;
    self->_registrationNotification = v25;

    if (+[PLUtilities isPowerlogHelperd])
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:self selector:sel_stopPowerlogHelperd_ name:@"PLBatteryGaugeService.stopPowerlogHelperd" object:0];
    }

    if (+[PLUtilities isLiteModeDaemon])
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        v29 = "com.apple.powerlog.plxpclogger.xpc";
        goto LABEL_36;
      }

      v28 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __20__PLXPCService_init__block_invoke_560;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v28;
      if (init_defaultOnce_1 != -1)
      {
        dispatch_once(&init_defaultOnce_1, block);
      }

      v29 = "com.apple.powerlog.plxpclogger.xpc";
      if (init_classDebugEnabled_1 != 1)
      {
        goto LABEL_36;
      }

      v30 = MEMORY[0x277CCACA8];
      v31 = +[PLUtilities liteModeDaemonName];
      v32 = [v30 stringWithFormat:@"running in %@ with service %s", v31, "com.apple.powerlog.plxpclogger.xpc"];

      v33 = MEMORY[0x277D3F178];
      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      lastPathComponent2 = [v34 lastPathComponent];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]"];
      [v33 logMessage:v32 fromFile:lastPathComponent2 fromFunction:v36 fromLineNumber:265];

      v38 = PLLogCommon(v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }

    else if (+[PLUtilities isFullModeDaemon])
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        v29 = "com.apple.powerlogd.XPCService.xpc";
LABEL_36:
        workQueue = [(PLOperator *)self workQueue];
        mach_service = xpc_connection_create_mach_service(v29, workQueue, 1uLL);
        xpcConnection = self->_xpcConnection;
        self->_xpcConnection = mach_service;

        xpc_connection_set_context(self->_xpcConnection, self);
        v55 = self->_xpcConnection;
        v56 = dispatch_get_global_queue(2, 0);
        xpc_connection_set_target_queue(v55, v56);

        v57 = self->_xpcConnection;
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __20__PLXPCService_init__block_invoke_579;
        handler[3] = &unk_279A5EA58;
        selfCopy3 = self;
        v78 = selfCopy3;
        xpc_connection_set_event_handler(v57, handler);
        xpc_connection_activate(self->_xpcConnection);
        if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.powerlog.state_changed", 0, 0, 0);
        }

        v60 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:3600.0];
        v61 = objc_alloc(MEMORY[0x277D3F250]);
        workQueue2 = [(PLOperator *)selfCopy3 workQueue];
        v75[0] = MEMORY[0x277D85DD0];
        v75[1] = 3221225472;
        v75[2] = __20__PLXPCService_init__block_invoke_601;
        v75[3] = &unk_279A5D088;
        v63 = selfCopy3;
        v76 = v63;
        v64 = [v61 initWithFireDate:v60 withInterval:1 withTolerance:0 repeats:workQueue2 withUserInfo:v75 withQueue:3600.0 withBlock:0.0];
        resetPermissionsForClientsTimer = v63->_resetPermissionsForClientsTimer;
        v63->_resetPermissionsForClientsTimer = v64;

        goto LABEL_40;
      }

      v39 = objc_opt_class();
      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = __20__PLXPCService_init__block_invoke_567;
      v80[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v80[4] = v39;
      if (init_defaultOnce_565 != -1)
      {
        dispatch_once(&init_defaultOnce_565, v80);
      }

      v29 = "com.apple.powerlogd.XPCService.xpc";
      if (init_classDebugEnabled_566 != 1)
      {
        goto LABEL_36;
      }

      v40 = MEMORY[0x277CCACA8];
      v41 = +[PLUtilities fullModeDaemonName];
      v32 = [v40 stringWithFormat:@"running in %@ with service %s", v41, "com.apple.powerlogd.XPCService.xpc"];

      v42 = MEMORY[0x277D3F178];
      v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      lastPathComponent3 = [v43 lastPathComponent];
      v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]"];
      [v42 logMessage:v32 fromFile:lastPathComponent3 fromFunction:v45 fromLineNumber:269];

      v38 = PLLogCommon(v46);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }

    else
    {
      if (!+[PLUtilities isPowerlogHelperd])
      {
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v67 = objc_opt_class();
          v79[0] = MEMORY[0x277D85DD0];
          v79[1] = 3221225472;
          v79[2] = __20__PLXPCService_init__block_invoke_575;
          v79[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v79[4] = v67;
          if (init_defaultOnce_573 != -1)
          {
            dispatch_once(&init_defaultOnce_573, v79);
          }

          if (init_classDebugEnabled_574 == 1)
          {
            v68 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad processname, no xpc for you"];
            v69 = MEMORY[0x277D3F178];
            v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
            lastPathComponent4 = [v70 lastPathComponent];
            v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]"];
            [v69 logMessage:v68 fromFile:lastPathComponent4 fromFunction:v72 fromLineNumber:277];

            v74 = PLLogCommon(v73);
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
            {
              __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
            }
          }
        }

        goto LABEL_2;
      }

      [(PLXPCService *)self initSatelliteProcessSemaphore];
      v29 = "com.apple.powerlogHelperd.XPCService.xpc";
      if (![(PLOperator *)self isDebugEnabled])
      {
        goto LABEL_36;
      }

      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"running in BLDService with service %s", "com.apple.powerlogHelperd.XPCService.xpc"];
      v47 = MEMORY[0x277D3F178];
      v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      lastPathComponent5 = [v48 lastPathComponent];
      v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]"];
      [v47 logMessage:v32 fromFile:lastPathComponent5 fromFunction:v50 fromLineNumber:274];

      v38 = PLLogCommon(v51);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }

    goto LABEL_36;
  }

LABEL_2:
  selfCopy = 0;
LABEL_41:

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
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __20__PLXPCService_init__block_invoke_2;
    v31 = &__block_descriptor_40_e5_v8__0lu32l8;
    v32 = v10;
    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_defaultOnce != -1)
    {
      dispatch_once(&kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_defaultOnce, &block);
    }

    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_classDebugEnabled == 1)
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [v7 objectForKeyedSubscript:@"type"];
      v13 = [v7 objectForKeyedSubscript:@"registration"];
      v14 = [v11 stringWithFormat:@"registration of type %@ of key %@ for %@", v12, v13, v9, block, v29, v30, v31, v32];

      v15 = MEMORY[0x277D3F178];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v17 = [v16 lastPathComponent];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]_block_invoke"];
      [v15 logMessage:v14 fromFile:v17 fromFunction:v18 fromLineNumber:243];

      v20 = PLLogCommon(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v21 = [v7 objectForKeyedSubscript:@"type"];
  v22 = [v21 caseInsensitiveCompare:@"Post"];

  if (!v22)
  {
    v25 = [*(a1 + 32) registeredListeners];
    objc_sync_enter(v25);
    v26 = [*(a1 + 32) registeredListeners];
    v27 = [v7 objectForKeyedSubscript:@"registration"];
    [v26 setObject:v9 forKeyedSubscript:v27];
    goto LABEL_12;
  }

  v23 = [v7 objectForKeyedSubscript:@"type"];
  v24 = [v23 caseInsensitiveCompare:@"Query"];

  if (!v24)
  {
    v25 = [*(a1 + 32) registeredResponders];
    objc_sync_enter(v25);
    v26 = [*(a1 + 32) registeredResponders];
    v27 = [v7 objectForKeyedSubscript:@"registration"];
    [v26 setObject:v9 forKeyedSubscript:v27];
LABEL_12:

    objc_sync_exit(v25);
  }
}

void *__20__PLXPCService_init__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_classDebugEnabled = result;
  return result;
}

void *__20__PLXPCService_init__block_invoke_560(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  init_classDebugEnabled_1 = result;
  return result;
}

void *__20__PLXPCService_init__block_invoke_567(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  init_classDebugEnabled_566 = result;
  return result;
}

void *__20__PLXPCService_init__block_invoke_575(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  init_classDebugEnabled_574 = result;
  return result;
}

void __20__PLXPCService_init__block_invoke_579(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __20__PLXPCService_init__block_invoke_2_580;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_2_defaultOnce != -1)
    {
      dispatch_once(&kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_2_defaultOnce, block);
    }

    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_2_classDebugEnabled == 1)
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = [*(a1 + 32) xpcConnection];
      v7 = [v5 stringWithFormat:@"event handler fired peerPID=%d %@", xpc_connection_get_pid(v6), v3];

      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]_block_invoke"];
      [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:287];

      v13 = PLLogCommon(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  if (MEMORY[0x25F8D2C50](v3) != MEMORY[0x277D86480])
  {
    v14 = v3;
    context = xpc_connection_get_context(*(*(a1 + 32) + 56));
    xpc_connection_set_context(v14, context);
    v16 = dispatch_get_global_queue(2, 0);
    xpc_connection_set_target_queue(v14, v16);

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __20__PLXPCService_init__block_invoke_590;
    handler[3] = &unk_279A5EA30;
    v26 = *(a1 + 32);
    v27 = v14;
    v17 = v14;
    xpc_connection_set_event_handler(v17, handler);
    xpc_connection_activate(v17);

    v18 = v26;
LABEL_10:

    goto LABEL_17;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v19 = objc_opt_class();
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __20__PLXPCService_init__block_invoke_586;
    v28[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v28[4] = v19;
    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_2_defaultOnce_584 != -1)
    {
      dispatch_once(&kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_2_defaultOnce_584, v28);
    }

    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_2_classDebugEnabled_585 == 1)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"XPC error! %@", v3];
      v20 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v22 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]_block_invoke_2"];
      [v20 logMessage:v17 fromFile:v22 fromFunction:v23 fromLineNumber:290];

      v18 = PLLogCommon(v24);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      goto LABEL_10;
    }
  }

LABEL_17:
}

void *__20__PLXPCService_init__block_invoke_2_580(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_2_classDebugEnabled = result;
  return result;
}

void *__20__PLXPCService_init__block_invoke_586(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_2_classDebugEnabled_585 = result;
  return result;
}

void __20__PLXPCService_init__block_invoke_590(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D3F180];
  v4 = a2;
  if ([v3 debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __20__PLXPCService_init__block_invoke_2_591;
    v19 = &__block_descriptor_40_e5_v8__0lu32l8;
    v20 = v5;
    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_3_defaultOnce != -1)
    {
      dispatch_once(&kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_3_defaultOnce, &block);
    }

    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_3_classDebugEnabled == 1)
    {
      v6 = MEMORY[0x277CCACA8];
      pid = xpc_connection_get_pid(*(a1 + 40));
      v8 = [v6 stringWithFormat:@"peer(%d) connected", pid, block, v17, v18, v19, v20];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]_block_invoke"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:298];

      v14 = PLLogCommon(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v15 = xpc_connection_get_context(*(a1 + 40));
  [v15 handlePeer:*(a1 + 40) forEvent:v4];
}

void *__20__PLXPCService_init__block_invoke_2_591(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_3_classDebugEnabled = result;
  return result;
}

- (void)initOperatorDependancies
{
  if ([(PLOperator *)self isDebugEnabledForKey:@"LogAggregateXPC"])
  {
    v3 = objc_alloc(MEMORY[0x277D3F1F0]);
    v4 = [PLUtilities workQueueForClass:objc_opt_class()];
    v5 = *MEMORY[0x277CBE580];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__PLXPCService_initOperatorDependancies__block_invoke;
    v7[3] = &unk_279A5BE78;
    v7[4] = self;
    v6 = [v3 initWithWorkQueue:v4 forNotification:v5 withBlock:v7];

    [(PLXPCService *)self setDailyTaskNotification:v6];
  }
}

uint64_t __40__PLXPCService_initOperatorDependancies__block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __40__PLXPCService_initOperatorDependancies__block_invoke_2;
    v15 = &unk_279A5E8C8;
    v16 = @"DailyTasks";
    v17 = v2;
    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_4_defaultOnce != -1)
    {
      dispatch_once(&kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_4_defaultOnce, &v12);
    }

    v3 = kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_4_classDebugEnabled;

    if (v3 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"DailyTasks notification!", v12, v13, v14, v15];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService initOperatorDependancies]_block_invoke"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:323];

      v10 = PLLogCommon(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  return [*(a1 + 32) dailyTasks];
}

void *__40__PLXPCService_initOperatorDependancies__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_4_classDebugEnabled = result;
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
  v49 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [date dateByAddingTimeInterval:-86400.0];
  v5 = date;
  [v4 timeIntervalSince1970];
  v7 = v6;
  [v5 timeIntervalSince1970];
  v9 = v8;
  v38 = v5;

  v10 = [(PLOperator *)PLXPCService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"XPCEvent"];
  v11 = objc_msgSend_storage(self);
  v37 = v10;
  v12 = [v11 aggregateEntriesForKey:v10 withBucketLength:3600.0 inTimeIntervalRange:{v7, v9 - v7}];

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __26__PLXPCService_dailyTasks__block_invoke;
  v45[3] = &unk_279A5BDC0;
  v45[4] = self;
  if (dailyTasks_defaultOnce != -1)
  {
    dispatch_once(&dailyTasks_defaultOnce, v45);
  }

  v13 = dailyTasks_objectForKey;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v12;
  v14 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v42;
    do
    {
      v17 = 0;
      do
      {
        if (*v42 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v41 + 1) + 8 * v17);
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
            if (dailyTasks_defaultOnce_615 != -1)
            {
              dispatch_once(&dailyTasks_defaultOnce_615, block);
            }

            if (dailyTasks_classDebugEnabled == 1)
            {
              v28 = MEMORY[0x277CCACA8];
              v29 = [v18 objectForKeyedSubscript:@"count"];
              v30 = [v28 stringWithFormat:@"Reporting %@ crossing ratePerHourThreshold with %@", v26, v29];

              v31 = MEMORY[0x277D3F178];
              v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
              lastPathComponent = [v32 lastPathComponent];
              v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService dailyTasks]"];
              [v31 logMessage:v30 fromFile:lastPathComponent fromFunction:v34 fromLineNumber:348];

              v36 = PLLogCommon(v35);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v47 = v30;
                _os_log_debug_impl(&dword_25EE51000, v36, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }
          }

          MEMORY[0x25F8D18D0](v26, 1);
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v15);
  }
}

void *__26__PLXPCService_dailyTasks__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) defaultLongForKey:@"ratePerHourThreshold"];
  dailyTasks_objectForKey = result;
  return result;
}

void *__26__PLXPCService_dailyTasks__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  dailyTasks_classDebugEnabled = result;
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
  v8 = [&unk_28714DC70 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v8)
  {
    v9 = *v34;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(&unk_28714DC70);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        v12 = [messageCopy objectForKeyedSubscript:v11];
        [v7 setObject:v12 forKeyedSubscript:v11];
      }

      v8 = [&unk_28714DC70 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v8);
  }

  v13 = dictionaryCopy;
  objc_sync_enter(v13);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = [&unk_28714DC70 countByEnumeratingWithState:&v29 objects:v40 count:16];
  if (v14)
  {
    v15 = *v30;
LABEL_10:
    v16 = 0;
    while (1)
    {
      if (*v30 != v15)
      {
        objc_enumerationMutation(&unk_28714DC70);
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
        v14 = [&unk_28714DC70 countByEnumeratingWithState:&v29 objects:v40 count:16];
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
    v19 = [&unk_28714DC70 countByEnumeratingWithState:&v25 objects:v39 count:16];
    if (v19)
    {
      v20 = *v26;
LABEL_18:
      v21 = 0;
      while (1)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(&unk_28714DC70);
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
          v19 = [&unk_28714DC70 countByEnumeratingWithState:&v25 objects:v39 count:16];
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
  v39 = *MEMORY[0x277D85DE8];
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
      if (respondToEvent_withResponse__defaultOnce != -1)
      {
        dispatch_once(&respondToEvent_withResponse__defaultOnce, block);
      }

      if (respondToEvent_withResponse__classDebugEnabled == 1)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"empty response"];
        v10 = MEMORY[0x277D3F178];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        lastPathComponent = [v11 lastPathComponent];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService respondToEvent:withResponse:]"];
        [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:388];

        v15 = PLLogCommon(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    responseCopy = MEMORY[0x277CBEC10];
  }

  if ([(PLOperator *)self isDebugEnabled])
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"adding debug to response"];
    v17 = MEMORY[0x277D3F178];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
    lastPathComponent2 = [v18 lastPathComponent];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService respondToEvent:withResponse:]"];
    [v17 logMessage:v16 fromFile:lastPathComponent2 fromFunction:v20 fromLineNumber:393];

    v22 = PLLogCommon(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
    }

    v23 = [responseCopy mutableCopy];
    v24 = [MEMORY[0x277CCABB0] numberWithBool:{-[PLOperator isDebugEnabled](self, "isDebugEnabled")}];
    [v23 setObject:v24 forKeyedSubscript:@"PLXPCClientDebug"];

    responseCopy = v23;
  }

  reply = xpc_dictionary_create_reply(eventCopy);
  v26 = _CFXPCCreateXPCMessageWithCFObject();
  xpc_dictionary_set_value(reply, [@"PLXPCConnectionReturnDict" UTF8String], v26);
  v27 = xpc_dictionary_get_remote_connection(eventCopy);
  v28 = v27;
  if (v27)
  {
    xpc_connection_send_message(v27, reply);
  }

  else
  {
    v30 = PLLogXPCService(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [PLXPCService respondToEvent:v30 withResponse:?];
    }
  }

  v31 = PLLogXPCService(v29);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v34 = eventCopy;
    v35 = 2112;
    v36 = responseCopy;
    v37 = 2112;
    v38 = reply;
    _os_log_impl(&dword_25EE51000, v31, OS_LOG_TYPE_DEFAULT, "responded to event! event=%@ response=%@ replyMessage=%@", buf, 0x20u);
  }
}

void *__44__PLXPCService_respondToEvent_withResponse___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  respondToEvent_withResponse__classDebugEnabled = result;
  return result;
}

- (void)logMessage:(id)message withPayload:(id)payload
{
  messageCopy = message;
  payloadCopy = payload;
  if ([MEMORY[0x277D3F180] fullMode])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v8 = objc_opt_class();
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __39__PLXPCService_logMessage_withPayload___block_invoke;
      v32[3] = &unk_279A5E8C8;
      v33 = @"Listener";
      v34 = v8;
      if (logMessage_withPayload__defaultOnce != -1)
      {
        dispatch_once(&logMessage_withPayload__defaultOnce, v32);
      }

      v9 = logMessage_withPayload__classDebugEnabled;

      if (v9 == 1)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"No registered Listener"];
        v11 = MEMORY[0x277D3F178];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        lastPathComponent = [v12 lastPathComponent];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService logMessage:withPayload:]"];
        [v11 logMessage:v10 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:423];

        v16 = PLLogCommon(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    v17 = [(PLOperator *)PLXPCService entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ClientLogging"];
    v18 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v17];
    [v18 setObjectsFromRawData:messageCopy];
    [v18 setDynamicObjectsFromRawData:payloadCopy];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__PLXPCService_logMessage_withPayload___block_invoke_645;
    block[3] = &unk_279A5EA80;
    v30 = @"dynamicClientLogging";
    v31 = 1;
    if (logMessage_withPayload__defaultOnce_644 != -1)
    {
      dispatch_once(&logMessage_withPayload__defaultOnce_644, block);
    }

    v19 = logMessage_withPayload__objectForKey;

    if (v19 == 1)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v20 = objc_opt_class();
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __39__PLXPCService_logMessage_withPayload___block_invoke_2;
        v28[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v28[4] = v20;
        if (logMessage_withPayload__defaultOnce_646 != -1)
        {
          dispatch_once(&logMessage_withPayload__defaultOnce_646, v28);
        }

        if (logMessage_withPayload__classDebugEnabled_647 == 1)
        {
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"entry=%@", v18];
          v22 = MEMORY[0x277D3F178];
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
          lastPathComponent2 = [v23 lastPathComponent];
          v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService logMessage:withPayload:]"];
          [v22 logMessage:v21 fromFile:lastPathComponent2 fromFunction:v25 fromLineNumber:429];

          v27 = PLLogCommon(v26);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }

      [(PLOperator *)self logEntry:v18];
    }
  }
}

void *__39__PLXPCService_logMessage_withPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  logMessage_withPayload__classDebugEnabled = result;
  return result;
}

void *__39__PLXPCService_logMessage_withPayload___block_invoke_645(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] BOOLForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  logMessage_withPayload__objectForKey = result;
  return result;
}

void *__39__PLXPCService_logMessage_withPayload___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logMessage_withPayload__classDebugEnabled_647 = result;
  return result;
}

- (signed)permissionForClientID:(signed __int16)d withKey:(id)key withType:(id)type withProcessName:(id)name
{
  dCopy = d;
  v56 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  typeCopy = type;
  nameCopy = name;
  clientIDs = [(PLXPCService *)self clientIDs];
  v14 = [clientIDs count];

  if (v14 <= dCopy)
  {
    v17 = PLLogCommon(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109890;
      v49 = dCopy;
      v50 = 2112;
      v51 = keyCopy;
      v52 = 2112;
      v53 = typeCopy;
      v54 = 2112;
      v55 = nameCopy;
      _os_log_fault_impl(&dword_25EE51000, v17, OS_LOG_TYPE_FAULT, "Invalid client ID %d request for key : %@, type : %@, processName %@", buf, 0x26u);
    }

    bOOLValue = 0;
  }

  else
  {
    clientIDs2 = [(PLXPCService *)self clientIDs];
    v17 = [clientIDs2 objectAtIndexedSubscript:dCopy];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v18 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v44 = 3221225472;
      v45 = __71__PLXPCService_permissionForClientID_withKey_withType_withProcessName___block_invoke;
      v46 = &__block_descriptor_40_e5_v8__0lu32l8;
      v47 = v18;
      if (permissionForClientID_withKey_withType_withProcessName__defaultOnce != -1)
      {
        dispatch_once(&permissionForClientID_withKey_withType_withProcessName__defaultOnce, &block);
      }

      if (permissionForClientID_withKey_withType_withProcessName__classDebugEnabled == 1)
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLXPCService: permissionForClientID:%hd", dCopy, block, v44, v45, v46, v47];
        v20 = MEMORY[0x277D3F178];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        lastPathComponent = [v21 lastPathComponent];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService permissionForClientID:withKey:withType:withProcessName:]"];
        [v20 logMessage:v19 fromFile:lastPathComponent fromFunction:v23 fromLineNumber:449];

        v25 = PLLogCommon(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    if (+[PLUtilities isPowerlogHelperd])
    {
      bOOLValue = 1;
    }

    else
    {
      permissionCache = [(PLXPCService *)self permissionCache];
      v28 = [permissionCache objectForKeyedSubscript:typeCopy];
      v29 = [v28 objectForKeyedSubscript:v17];
      v30 = [v29 objectForKeyedSubscript:@"__PL__Global"];

      permissionCache2 = [(PLXPCService *)self permissionCache];
      v32 = [permissionCache2 objectForKeyedSubscript:typeCopy];
      v33 = [v32 objectForKeyedSubscript:v17];
      v34 = v33;
      if (v30)
      {
        v35 = [v33 objectForKeyedSubscript:@"__PL__Global"];
        bOOLValue = [v35 BOOLValue];
      }

      else
      {
        v36 = [v33 objectForKeyedSubscript:keyCopy];
        v37 = [v36 objectForKeyedSubscript:@"__PL__Global"];

        permissionCache2 = [(PLXPCService *)self permissionCache];
        v32 = [permissionCache2 objectForKeyedSubscript:typeCopy];
        v34 = [v32 objectForKeyedSubscript:v17];
        v38 = [v34 objectForKeyedSubscript:keyCopy];
        v35 = v38;
        if (v37)
        {
          v39 = @"__PL__Global";
        }

        else
        {
          v40 = [v38 objectForKeyedSubscript:nameCopy];

          if (!v40)
          {
            bOOLValue = [MEMORY[0x277D3F180] fullMode];
            goto LABEL_22;
          }

          permissionCache2 = [(PLXPCService *)self permissionCache];
          v32 = [permissionCache2 objectForKeyedSubscript:typeCopy];
          v34 = [v32 objectForKeyedSubscript:v17];
          v38 = [v34 objectForKeyedSubscript:keyCopy];
          v35 = v38;
          v39 = nameCopy;
        }

        v41 = [v38 objectForKeyedSubscript:v39];
        bOOLValue = [v41 BOOLValue];
      }
    }
  }

LABEL_22:

  return bOOLValue;
}

void *__71__PLXPCService_permissionForClientID_withKey_withType_withProcessName___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  permissionForClientID_withKey_withType_withProcessName__classDebugEnabled = result;
  return result;
}

- (void)resetPermissionsForClients
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__PLXPCService_resetPermissionsForClients__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (resetPermissionsForClients_defaultOnce != -1)
    {
      dispatch_once(&resetPermissionsForClients_defaultOnce, block);
    }

    if (resetPermissionsForClients_classDebugEnabled == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"resetPermissionsForClients start!"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService resetPermissionsForClients]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:477];

      v10 = PLLogCommon(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  permissionCache = [(PLXPCService *)self permissionCache];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __42__PLXPCService_resetPermissionsForClients__block_invoke_660;
  v21[3] = &unk_279A5E430;
  v21[4] = self;
  [permissionCache enumerateKeysAndObjectsUsingBlock:v21];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v12 = objc_opt_class();
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __42__PLXPCService_resetPermissionsForClients__block_invoke_670;
    v20[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v20[4] = v12;
    if (resetPermissionsForClients_defaultOnce_668 != -1)
    {
      dispatch_once(&resetPermissionsForClients_defaultOnce_668, v20);
    }

    if (resetPermissionsForClients_classDebugEnabled_669 == 1)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"resetPermissionsForClients done!"];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      lastPathComponent2 = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService resetPermissionsForClients]"];
      [v14 logMessage:v13 fromFile:lastPathComponent2 fromFunction:v17 fromLineNumber:488];

      v19 = PLLogCommon(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

void *__42__PLXPCService_resetPermissionsForClients__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  resetPermissionsForClients_classDebugEnabled = result;
  return result;
}

void __42__PLXPCService_resetPermissionsForClients__block_invoke_660(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 allKeys];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__PLXPCService_resetPermissionsForClients__block_invoke_2;
  v5[3] = &unk_279A5C3A8;
  v5[4] = *(a1 + 32);
  [v4 enumerateObjectsUsingBlock:v5];
}

void __42__PLXPCService_resetPermissionsForClients__block_invoke_2(uint64_t a1, void *a2)
{
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
    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_5_defaultOnce != -1)
    {
      dispatch_once(&kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_5_defaultOnce, block);
    }

    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_5_classDebugEnabled == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"resetPermissionsForClients posted %@", v8];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v14 = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService resetPermissionsForClients]_block_invoke_2"];
      [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:484];

      v17 = PLLogCommon(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  objc_autoreleasePoolPop(v4);
}

void *__42__PLXPCService_resetPermissionsForClients__block_invoke_3(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_5_classDebugEnabled = result;
  return result;
}

void *__42__PLXPCService_resetPermissionsForClients__block_invoke_670(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  resetPermissionsForClients_classDebugEnabled_669 = result;
  return result;
}

- (void)handlePeer:(id)peer forEvent:(id)event
{
  v108 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  eventCopy = event;
  v8 = MEMORY[0x25F8D2C50]();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v9 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v9;
    if (handlePeer_forEvent__defaultOnce != -1)
    {
      dispatch_once(&handlePeer_forEvent__defaultOnce, block);
    }

    if (handlePeer_forEvent__classDebugEnabled == 1)
    {
      eventCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! %s/%d: type=%@, event=%@", "-[PLXPCService handlePeer:forEvent:]", 497, v8, eventCopy];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeer:forEvent:]"];
      [v11 logMessage:eventCopy fromFile:lastPathComponent fromFunction:v14 fromLineNumber:497];

      v16 = PLLogCommon(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  if (v8 == MEMORY[0x277D86480])
  {
    if (eventCopy == MEMORY[0x277D863F8])
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_67;
      }

      v53 = objc_opt_class();
      v105[0] = MEMORY[0x277D85DD0];
      v105[1] = 3221225472;
      v105[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke_679;
      v105[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v105[4] = v53;
      if (handlePeer_forEvent__defaultOnce_677 != -1)
      {
        dispatch_once(&handlePeer_forEvent__defaultOnce_677, v105);
      }

      if (handlePeer_forEvent__classDebugEnabled_678 != 1)
      {
        goto LABEL_67;
      }

      eventCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"peer(%d) received XPC_ERROR_CONNECTION_INVALID", xpc_connection_get_pid(peerCopy)];
      v54 = MEMORY[0x277D3F178];
      v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      lastPathComponent2 = [v55 lastPathComponent];
      v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeer:forEvent:]"];
      [v54 logMessage:eventCopy2 fromFile:lastPathComponent2 fromFunction:v57 fromLineNumber:502];

      v52 = PLLogCommon(v58);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }

    else if (eventCopy == MEMORY[0x277D863F0])
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_67;
      }

      v66 = objc_opt_class();
      v104[0] = MEMORY[0x277D85DD0];
      v104[1] = 3221225472;
      v104[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke_685;
      v104[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v104[4] = v66;
      if (handlePeer_forEvent__defaultOnce_683 != -1)
      {
        dispatch_once(&handlePeer_forEvent__defaultOnce_683, v104);
      }

      if (handlePeer_forEvent__classDebugEnabled_684 != 1)
      {
        goto LABEL_67;
      }

      eventCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"peer(%d) received XPC_ERROR_CONNECTION_INTERRUPTED", xpc_connection_get_pid(peerCopy)];
      v67 = MEMORY[0x277D3F178];
      v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      lastPathComponent3 = [v68 lastPathComponent];
      v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeer:forEvent:]"];
      [v67 logMessage:eventCopy2 fromFile:lastPathComponent3 fromFunction:v70 fromLineNumber:506];

      v52 = PLLogCommon(v71);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }

    else
    {
      v43 = MEMORY[0x277D86420];
      debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
      if (eventCopy == v43)
      {
        if (!debugEnabled)
        {
          goto LABEL_67;
        }

        v72 = objc_opt_class();
        v103[0] = MEMORY[0x277D85DD0];
        v103[1] = 3221225472;
        v103[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke_691;
        v103[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v103[4] = v72;
        if (handlePeer_forEvent__defaultOnce_689 != -1)
        {
          dispatch_once(&handlePeer_forEvent__defaultOnce_689, v103);
        }

        if (handlePeer_forEvent__classDebugEnabled_690 != 1)
        {
          goto LABEL_67;
        }

        eventCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"peer(%d) received XPC_ERROR_TERMINATION_IMMINENT", xpc_connection_get_pid(peerCopy)];
        v73 = MEMORY[0x277D3F178];
        v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        lastPathComponent4 = [v74 lastPathComponent];
        v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeer:forEvent:]"];
        [v73 logMessage:eventCopy2 fromFile:lastPathComponent4 fromFunction:v76 fromLineNumber:510];

        v52 = PLLogCommon(v77);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }

      else
      {
        if (!debugEnabled)
        {
          goto LABEL_67;
        }

        v45 = objc_opt_class();
        v102[0] = MEMORY[0x277D85DD0];
        v102[1] = 3221225472;
        v102[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke_697;
        v102[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v102[4] = v45;
        if (handlePeer_forEvent__defaultOnce_695 != -1)
        {
          dispatch_once(&handlePeer_forEvent__defaultOnce_695, v102);
        }

        if (handlePeer_forEvent__classDebugEnabled_696 != 1)
        {
          goto LABEL_67;
        }

        eventCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"peer(%d) received Unidentified error:%@", xpc_connection_get_pid(peerCopy), eventCopy];
        v47 = MEMORY[0x277D3F178];
        v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        lastPathComponent5 = [v48 lastPathComponent];
        v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeer:forEvent:]"];
        [v47 logMessage:eventCopy2 fromFile:lastPathComponent5 fromFunction:v50 fromLineNumber:515];

        v52 = PLLogCommon(v51);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

LABEL_67:
    xpc_connection_cancel(peerCopy);
    goto LABEL_83;
  }

  if (v8 == MEMORY[0x277D86468])
  {
    v17 = _CFXPCCreateCFObjectFromXPCMessage();
    v18 = [v17 objectForKeyedSubscript:@"content"];
    if (!v17)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"no message"];
        v60 = MEMORY[0x277D3F178];
        v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        lastPathComponent6 = [v61 lastPathComponent];
        v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeer:forEvent:]"];
        [v60 logMessage:v59 fromFile:lastPathComponent6 fromFunction:v63 fromLineNumber:559];

        v65 = PLLogCommon(v64);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }

      if (+[PLUtilities isPowerlogHelperd])
      {
        [(PLXPCService *)self setSatelliteProcessExitWithTime:10.0];
      }

      goto LABEL_82;
    }

    v19 = [v17 objectForKeyedSubscript:@"clientID"];
    shortValue = [v19 shortValue];

    if (shortValue == 110)
    {
      v78 = [v18 objectForKey:@"PLXPCBatchedMessage"];

      if (v78)
      {
        v31 = [v18 objectForKeyedSubscript:@"PLXPCBatchedMessage"];
        v93[0] = MEMORY[0x277D85DD0];
        v93[1] = 3221225472;
        v93[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke_720;
        v93[3] = &unk_279A5EAA8;
        v93[4] = self;
        v94 = peerCopy;
        v95 = eventCopy;
        [v31 enumerateKeysAndObjectsUsingBlock:v93];

LABEL_81:
        goto LABEL_82;
      }
    }

    else if (shortValue == 51)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v21 = objc_opt_class();
        v101[0] = MEMORY[0x277D85DD0];
        v101[1] = 3221225472;
        v101[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke_706;
        v101[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v101[4] = v21;
        if (handlePeer_forEvent__defaultOnce_704 != -1)
        {
          dispatch_once(&handlePeer_forEvent__defaultOnce_704, v101);
        }

        if (handlePeer_forEvent__classDebugEnabled_705 == 1)
        {
          v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got a batched message %@", v17];
          v23 = MEMORY[0x277D3F178];
          v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
          lastPathComponent7 = [v24 lastPathComponent];
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeer:forEvent:]"];
          [v23 logMessage:v22 fromFile:lastPathComponent7 fromFunction:v26 fromLineNumber:527];

          v28 = PLLogCommon(v27);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }

      v29 = [v18 objectForKeyedSubscript:@"PLXPCBatchedMessage"];
      v30 = [v18 objectForKeyedSubscript:@"PLXPCBatchedMessageDropCounts"];
      intValue = [v30 intValue];

      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v31 = v29;
      v32 = [v31 countByEnumeratingWithState:&v97 objects:v107 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v98;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v98 != v34)
            {
              objc_enumerationMutation(v31);
            }

            [(PLXPCService *)self handleSingleMessage:*(*(&v97 + 1) + 8 * i) fromPeer:peerCopy forEvent:eventCopy];
          }

          v33 = [v31 countByEnumeratingWithState:&v97 objects:v107 count:16];
        }

        while (v33);
      }

      v36 = [(PLOperator *)PLXPCService entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ClientLoggingDrops"];
      v37 = MEMORY[0x277D3F1A0];
      className = [(PLOperator *)self className];
      LODWORD(v37) = [v37 isEntryKeySetup:v36 forOperatorName:className];

      if (v37)
      {
        v39 = intValue < 1;
      }

      else
      {
        v39 = 1;
      }

      if (!v39)
      {
        if ([v31 count])
        {
          v40 = [v31 objectAtIndexedSubscript:0];
          v41 = [v40 objectForKeyedSubscript:@"clientID"];
          shortValue2 = [v41 shortValue];
        }

        else
        {
          shortValue2 = 0;
        }

        v90 = v36;
        v79 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v36];
        v80 = [MEMORY[0x277CCABB0] numberWithInt:intValue];
        [v79 setObject:v80 forKeyedSubscript:@"PLXPCBatchedMessageDropCounts"];

        v81 = [MEMORY[0x277CCABB0] numberWithShort:shortValue2];
        [v79 setObject:v81 forKeyedSubscript:@"clientID"];

        [(PLOperator *)self logEntry:v79];
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v82 = objc_opt_class();
          v96[0] = MEMORY[0x277D85DD0];
          v96[1] = 3221225472;
          v96[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke_716;
          v96[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v96[4] = v82;
          if (handlePeer_forEvent__defaultOnce_714 != -1)
          {
            dispatch_once(&handlePeer_forEvent__defaultOnce_714, v96);
          }

          if (handlePeer_forEvent__classDebugEnabled_715 == 1)
          {
            v83 = [MEMORY[0x277CCACA8] stringWithFormat:@"Dropped messages %@", v79];
            v92 = MEMORY[0x277D3F178];
            v84 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
            lastPathComponent8 = [v84 lastPathComponent];
            v86 = v83;
            v87 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeer:forEvent:]"];
            [v92 logMessage:v86 fromFile:lastPathComponent8 fromFunction:v87 fromLineNumber:544];

            v89 = PLLogCommon(v88);
            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
            {
              __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
            }
          }
        }

        v36 = v90;
      }

      goto LABEL_81;
    }

    [(PLXPCService *)self handleSingleMessage:v17 fromPeer:peerCopy forEvent:eventCopy];
LABEL_82:
  }

LABEL_83:
}

void *__36__PLXPCService_handlePeer_forEvent___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled = result;
  return result;
}

void *__36__PLXPCService_handlePeer_forEvent___block_invoke_679(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_678 = result;
  return result;
}

void *__36__PLXPCService_handlePeer_forEvent___block_invoke_685(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_684 = result;
  return result;
}

void *__36__PLXPCService_handlePeer_forEvent___block_invoke_691(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_690 = result;
  return result;
}

void *__36__PLXPCService_handlePeer_forEvent___block_invoke_697(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_696 = result;
  return result;
}

void *__36__PLXPCService_handlePeer_forEvent___block_invoke_706(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_705 = result;
  return result;
}

void *__36__PLXPCService_handlePeer_forEvent___block_invoke_716(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_715 = result;
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
  messageCopy = message;
  peerCopy = peer;
  eventCopy = event;
  v11 = [messageCopy objectForKeyedSubscript:@"clientID"];
  shortValue = [v11 shortValue];

  v13 = [messageCopy objectForKeyedSubscript:@"process-name"];
  v14 = [messageCopy objectForKeyedSubscript:@"event"];
  v120 = v14;
  if (+[PLUtilities isPowerlogHelperd])
  {
    if (shortValue != 48)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v29 = objc_opt_class();
        v127[0] = MEMORY[0x277D85DD0];
        v127[1] = 3221225472;
        v127[2] = __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke;
        v127[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v127[4] = v29;
        if (handleSingleMessage_fromPeer_forEvent__defaultOnce != -1)
        {
          dispatch_once(&handleSingleMessage_fromPeer_forEvent__defaultOnce, v127);
        }

        if (handleSingleMessage_fromPeer_forEvent__classDebugEnabled == 1)
        {
          v108 = shortValue;
          v116 = eventCopy;
          v30 = peerCopy;
          messageCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! %s/%d: message=%@", "-[PLXPCService handleSingleMessage:fromPeer:forEvent:]", 581, messageCopy];
          v32 = MEMORY[0x277D3F178];
          v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
          lastPathComponent = [v33 lastPathComponent];
          v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handleSingleMessage:fromPeer:forEvent:]"];
          [v32 logMessage:messageCopy fromFile:lastPathComponent fromFunction:v35 fromLineNumber:581];

          v37 = PLLogCommon(v36);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }

          peerCopy = v30;
          eventCopy = v116;
          v14 = v120;
          shortValue = v108;
        }
      }

      v28 = 30.0;
      goto LABEL_20;
    }

    v15 = [messageCopy objectForKeyedSubscript:@"content"];
    v16 = [v15 objectForKeyedSubscript:@"battery_gauge_event"];
    intValue = [v16 intValue];

    debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
    if (intValue == 1)
    {
      v14 = v120;
      if (debugEnabled)
      {
        v19 = objc_opt_class();
        v126[0] = MEMORY[0x277D85DD0];
        v126[1] = 3221225472;
        v126[2] = __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_733;
        v126[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v126[4] = v19;
        if (handleSingleMessage_fromPeer_forEvent__defaultOnce_731 != -1)
        {
          dispatch_once(&handleSingleMessage_fromPeer_forEvent__defaultOnce_731, v126);
        }

        if (handleSingleMessage_fromPeer_forEvent__classDebugEnabled_732 == 1)
        {
          v115 = eventCopy;
          v20 = peerCopy;
          messageCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! %s/%d: message=%@", "-[PLXPCService handleSingleMessage:fromPeer:forEvent:]", 587, messageCopy];
          v22 = MEMORY[0x277D3F178];
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
          lastPathComponent2 = [v23 lastPathComponent];
          v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handleSingleMessage:fromPeer:forEvent:]"];
          [v22 logMessage:messageCopy2 fromFile:lastPathComponent2 fromFunction:v25 fromLineNumber:587];

          v27 = PLLogCommon(v26);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }

          peerCopy = v20;
          eventCopy = v115;
          v14 = v120;
          shortValue = 48;
        }
      }

      v28 = 100.0;
LABEL_20:
      [(PLXPCService *)self setSatelliteProcessExitWithTime:v28];
      goto LABEL_21;
    }

    v14 = v120;
    if (debugEnabled)
    {
      v74 = objc_opt_class();
      v125[0] = MEMORY[0x277D85DD0];
      v125[1] = 3221225472;
      v125[2] = __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_736;
      v125[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v125[4] = v74;
      if (handleSingleMessage_fromPeer_forEvent__defaultOnce_734 != -1)
      {
        dispatch_once(&handleSingleMessage_fromPeer_forEvent__defaultOnce_734, v125);
      }

      if (handleSingleMessage_fromPeer_forEvent__classDebugEnabled_735 == 1)
      {
        v117 = eventCopy;
        v75 = peerCopy;
        messageCopy3 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! %s/%d: message=%@", "-[PLXPCService handleSingleMessage:fromPeer:forEvent:]", 592, messageCopy];
        v77 = MEMORY[0x277D3F178];
        v78 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        lastPathComponent3 = [v78 lastPathComponent];
        v80 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handleSingleMessage:fromPeer:forEvent:]"];
        [v77 logMessage:messageCopy3 fromFile:lastPathComponent3 fromFunction:v80 fromLineNumber:592];

        v82 = PLLogCommon(v81);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        peerCopy = v75;
        eventCopy = v117;
        v14 = v120;
        shortValue = 48;
      }
    }
  }

LABEL_21:
  v38 = [messageCopy objectForKey:@"shouldLog"];

  if (v38)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v39 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_742;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v39;
      if (handleSingleMessage_fromPeer_forEvent__defaultOnce_740 != -1)
      {
        dispatch_once(&handleSingleMessage_fromPeer_forEvent__defaultOnce_740, block);
      }

      if (handleSingleMessage_fromPeer_forEvent__classDebugEnabled_741 == 1)
      {
        v109 = shortValue;
        v112 = v13;
        v40 = eventCopy;
        v41 = peerCopy;
        messageCopy4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Should log request(%d): %@", xpc_connection_get_pid(peerCopy), messageCopy];
        v43 = MEMORY[0x277D3F178];
        v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        lastPathComponent4 = [v44 lastPathComponent];
        v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handleSingleMessage:fromPeer:forEvent:]"];
        [v43 logMessage:messageCopy4 fromFile:lastPathComponent4 fromFunction:v46 fromLineNumber:598];

        v48 = PLLogCommon(v47);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        peerCopy = v41;
        eventCopy = v40;
        v13 = v112;
        v14 = v120;
        shortValue = v109;
      }
    }

    [(PLXPCService *)self handlePeerShouldLogEvent:eventCopy withMessage:messageCopy withClientID:shortValue withProcessName:v13 withKey:v14];
    v49 = @"shouldLog";
  }

  else
  {
    v50 = [messageCopy objectForKeyedSubscript:@"content"];
    v51 = [messageCopy objectForKey:@"Query"];

    if (v51)
    {
      if (![PLUtilities allowQueryFromPeer:peerCopy])
      {
LABEL_69:

        goto LABEL_70;
      }

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v52 = objc_opt_class();
        v123[0] = MEMORY[0x277D85DD0];
        v123[1] = 3221225472;
        v123[2] = __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_748;
        v123[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v123[4] = v52;
        if (handleSingleMessage_fromPeer_forEvent__defaultOnce_746 != -1)
        {
          dispatch_once(&handleSingleMessage_fromPeer_forEvent__defaultOnce_746, v123);
        }

        if (handleSingleMessage_fromPeer_forEvent__classDebugEnabled_747 == 1)
        {
          v105 = v50;
          v110 = shortValue;
          v113 = v13;
          v53 = eventCopy;
          v54 = peerCopy;
          messageCopy5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Response request(%d): %@", xpc_connection_get_pid(peerCopy), messageCopy];
          v56 = MEMORY[0x277D3F178];
          v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
          lastPathComponent5 = [v57 lastPathComponent];
          v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handleSingleMessage:fromPeer:forEvent:]"];
          [v56 logMessage:messageCopy5 fromFile:lastPathComponent5 fromFunction:v59 fromLineNumber:609];

          v61 = PLLogCommon(v60);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }

          peerCopy = v54;
          eventCopy = v53;
          v13 = v113;
          v14 = v120;
          shortValue = v110;
          v50 = v105;
        }
      }

      [(PLXPCService *)self handlePeerResponderEvent:eventCopy withMessage:messageCopy withClientID:shortValue withProcessName:v13 withKey:v14 withPayload:v50];
      v49 = @"Query";
    }

    else
    {
      v62 = [messageCopy objectForKey:@"Post"];

      debugEnabled2 = [MEMORY[0x277D3F180] debugEnabled];
      if (v62)
      {
        if (debugEnabled2)
        {
          v64 = objc_opt_class();
          v122[0] = MEMORY[0x277D85DD0];
          v122[1] = 3221225472;
          v122[2] = __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_754;
          v122[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v122[4] = v64;
          if (handleSingleMessage_fromPeer_forEvent__defaultOnce_752 != -1)
          {
            dispatch_once(&handleSingleMessage_fromPeer_forEvent__defaultOnce_752, v122);
          }

          if (handleSingleMessage_fromPeer_forEvent__classDebugEnabled_753 == 1)
          {
            v106 = v50;
            v111 = shortValue;
            v114 = v13;
            v65 = eventCopy;
            v66 = peerCopy;
            messageCopy6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Data posted(%d): %@", xpc_connection_get_pid(peerCopy), messageCopy];
            v68 = MEMORY[0x277D3F178];
            v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
            lastPathComponent6 = [v69 lastPathComponent];
            v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handleSingleMessage:fromPeer:forEvent:]"];
            [v68 logMessage:messageCopy6 fromFile:lastPathComponent6 fromFunction:v71 fromLineNumber:614];

            v73 = PLLogCommon(v72);
            if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
            {
              __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
            }

            peerCopy = v66;
            eventCopy = v65;
            v13 = v114;
            v14 = v120;
            shortValue = v111;
            v50 = v106;
          }
        }

        [(PLXPCService *)self handlePeerListenerEvent:eventCopy withMessage:messageCopy withClientID:shortValue withProcessName:v13 withKey:v14 withPayload:v50];
        v49 = @"Post";
      }

      else
      {
        if (!debugEnabled2)
        {
          goto LABEL_63;
        }

        v83 = objc_opt_class();
        v121[0] = MEMORY[0x277D85DD0];
        v121[1] = 3221225472;
        v121[2] = __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_760;
        v121[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v121[4] = v83;
        if (handleSingleMessage_fromPeer_forEvent__defaultOnce_758 != -1)
        {
          dispatch_once(&handleSingleMessage_fromPeer_forEvent__defaultOnce_758, v121);
        }

        if (handleSingleMessage_fromPeer_forEvent__classDebugEnabled_759 == 1)
        {
          v107 = v50;
          v84 = v13;
          v118 = eventCopy;
          v85 = peerCopy;
          messageCopy7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Message with no direction: %@", messageCopy];
          v87 = MEMORY[0x277D3F178];
          v88 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
          lastPathComponent7 = [v88 lastPathComponent];
          v90 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handleSingleMessage:fromPeer:forEvent:]"];
          [v87 logMessage:messageCopy7 fromFile:lastPathComponent7 fromFunction:v90 fromLineNumber:618];

          v92 = PLLogCommon(v91);
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }

          v49 = 0;
          peerCopy = v85;
          eventCopy = v118;
          v14 = v120;
          v13 = v84;
          v50 = v107;
        }

        else
        {
LABEL_63:
          v49 = 0;
        }
      }
    }
  }

  if ([(PLOperator *)self isDebugEnabledForKey:@"LogAggregateXPC"])
  {
    v119 = eventCopy;
    v93 = v13;
    v94 = peerCopy;
    v50 = [(PLOperator *)PLXPCService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"XPCEvent"];
    v95 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v50];
    v96 = [messageCopy objectForKeyedSubscript:@"event"];
    [v95 setObject:v96 forKeyedSubscript:@"event"];

    v97 = [messageCopy objectForKeyedSubscript:@"clientID"];
    [v95 setObject:v97 forKeyedSubscript:@"clientID"];

    v98 = [messageCopy objectForKeyedSubscript:@"process-name"];
    [v95 setObject:v98 forKeyedSubscript:@"process-name"];

    if (v49)
    {
      [v95 setObject:v49 forKeyedSubscript:@"type"];
    }

    [v95 setObject:&unk_287146FC0 forKeyedSubscript:@"count"];
    [(PLOperator *)self logEntry:v95];
    v99 = MEMORY[0x277CCACA8];
    v100 = [v95 objectForKeyedSubscript:@"type"];
    v101 = [v95 objectForKeyedSubscript:@"clientID"];
    v102 = [v95 objectForKeyedSubscript:@"process-name"];
    v103 = [v95 objectForKeyedSubscript:@"event"];
    v103 = [v99 stringWithFormat:@"com.apple.power.xpc.%@.%@.%@.%@", v100, v101, v102, v103];

    MEMORY[0x25F8D18D0](v103, 1);
    peerCopy = v94;
    v13 = v93;
    eventCopy = v119;
    v14 = v120;
    goto LABEL_69;
  }

LABEL_70:
}

void *__54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleSingleMessage_fromPeer_forEvent__classDebugEnabled = result;
  return result;
}

void *__54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_733(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleSingleMessage_fromPeer_forEvent__classDebugEnabled_732 = result;
  return result;
}

void *__54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_736(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleSingleMessage_fromPeer_forEvent__classDebugEnabled_735 = result;
  return result;
}

void *__54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_742(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleSingleMessage_fromPeer_forEvent__classDebugEnabled_741 = result;
  return result;
}

void *__54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_748(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleSingleMessage_fromPeer_forEvent__classDebugEnabled_747 = result;
  return result;
}

void *__54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_754(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleSingleMessage_fromPeer_forEvent__classDebugEnabled_753 = result;
  return result;
}

void *__54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_760(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleSingleMessage_fromPeer_forEvent__classDebugEnabled_759 = result;
  return result;
}

- (void)handlePeerShouldLogEvent:(id)event withMessage:(id)message withClientID:(signed __int16)d withProcessName:(id)name withKey:(id)key
{
  dCopy = d;
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
    if (handlePeerShouldLogEvent_withMessage_withClientID_withProcessName_withKey__defaultOnce != -1)
    {
      dispatch_once(&handlePeerShouldLogEvent_withMessage_withClientID_withProcessName_withKey__defaultOnce, block);
    }

    if (handlePeerShouldLogEvent_withMessage_withClientID_withProcessName_withKey__classDebugEnabled == 1)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! response=%@ %s:%d", v16, "-[PLXPCService handlePeerShouldLogEvent:withMessage:withClientID:withProcessName:withKey:]", 648];;
      v20 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      lastPathComponent = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerShouldLogEvent:withMessage:withClientID:withProcessName:withKey:]"];
      [v20 logMessage:v19 fromFile:lastPathComponent fromFunction:v23 fromLineNumber:648];

      v25 = PLLogCommon(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v26 = objc_opt_class();
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __90__PLXPCService_handlePeerShouldLogEvent_withMessage_withClientID_withProcessName_withKey___block_invoke_774;
    v42[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v42[4] = v26;
    if (handlePeerShouldLogEvent_withMessage_withClientID_withProcessName_withKey__defaultOnce_772 != -1)
    {
      dispatch_once(&handlePeerShouldLogEvent_withMessage_withClientID_withProcessName_withKey__defaultOnce_772, v42);
    }

    if (handlePeerShouldLogEvent_withMessage_withClientID_withProcessName_withKey__classDebugEnabled_773 == 1)
    {
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! vlad=%@ %s:%d", v16, "-[PLXPCService handlePeerShouldLogEvent:withMessage:withClientID:withProcessName:withKey:]", 649];;
      v28 = MEMORY[0x277D3F178];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      lastPathComponent2 = [v29 lastPathComponent];
      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerShouldLogEvent:withMessage:withClientID:withProcessName:withKey:]"];
      [v28 logMessage:v27 fromFile:lastPathComponent2 fromFunction:v31 fromLineNumber:649];

      v33 = PLLogCommon(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  if ([(PLOperator *)self isDebugEnabled])
  {
    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! response=%@ %s:%d", v16, "-[PLXPCService handlePeerShouldLogEvent:withMessage:withClientID:withProcessName:withKey:]", 650];;
    v35 = MEMORY[0x277D3F178];
    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
    lastPathComponent3 = [v36 lastPathComponent];
    v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerShouldLogEvent:withMessage:withClientID:withProcessName:withKey:]"];
    [v35 logMessage:v34 fromFile:lastPathComponent3 fromFunction:v38 fromLineNumber:650];

    v40 = PLLogCommon(v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
    }
  }

  [(PLXPCService *)self respondToEvent:eventCopy withResponse:v16];
}

void *__90__PLXPCService_handlePeerShouldLogEvent_withMessage_withClientID_withProcessName_withKey___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handlePeerShouldLogEvent_withMessage_withClientID_withProcessName_withKey__classDebugEnabled = result;
  return result;
}

void *__90__PLXPCService_handlePeerShouldLogEvent_withMessage_withClientID_withProcessName_withKey___block_invoke_774(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handlePeerShouldLogEvent_withMessage_withClientID_withProcessName_withKey__classDebugEnabled_773 = result;
  return result;
}

- (void)handlePeerResponderEvent:(id)event withMessage:(id)message withClientID:(signed __int16)d withProcessName:(id)name withKey:(id)key withPayload:(id)payload
{
  dCopy = d;
  v139 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  messageCopy = message;
  nameCopy = name;
  keyCopy = key;
  payloadCopy = payload;
  if (+[PLUtilities isPowerlogHelperd])
  {
    satelliteProcessSemaphore = [(PLXPCService *)self satelliteProcessSemaphore];
    [satelliteProcessSemaphore signalInterestByObject:messageCopy];
  }

  v131 = 0;
  v132 = &v131;
  v133 = 0x3032000000;
  v134 = __Block_byref_object_copy__15;
  v135 = __Block_byref_object_dispose__15;
  v136 = 0;
  if ([(PLOperator *)self isDebugEnabled])
  {
    v16 = [(PLOperator *)PLXPCService entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"ResponderEvent"];
    v17 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v16];
    v18 = v132[5];
    v132[5] = v17;

    v19 = [messageCopy objectForKeyedSubscript:@"event"];
    [v132[5] setObject:v19 forKeyedSubscript:@"event"];

    v20 = [messageCopy objectForKeyedSubscript:@"clientID"];
    [v132[5] setObject:v20 forKeyedSubscript:@"clientID"];

    v21 = [messageCopy objectForKeyedSubscript:@"process-name"];
    [v132[5] setObject:v21 forKeyedSubscript:@"process-name"];

    if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
    {
      [(PLOperator *)self logEntry:v132[5]];
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v22 = objc_opt_class();
    v130[0] = MEMORY[0x277D85DD0];
    v130[1] = 3221225472;
    v130[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke;
    v130[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v130[4] = v22;
    if (handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__defaultOnce != -1)
    {
      dispatch_once(&handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__defaultOnce, v130);
    }

    if (handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__classDebugEnabled == 1)
    {
      payloadCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"clientID=%i, processName=%@, key=%@, payload=%@", dCopy, nameCopy, keyCopy, payloadCopy];
      v24 = MEMORY[0x277D3F178];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      lastPathComponent = [v25 lastPathComponent];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]"];
      [v24 logMessage:payloadCopy fromFile:lastPathComponent fromFunction:v27 fromLineNumber:675];

      v29 = PLLogCommon(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v128[0] = 0;
  v128[1] = v128;
  v128[2] = 0x3032000000;
  v128[3] = __Block_byref_object_copy__15;
  v128[4] = __Block_byref_object_dispose__15;
  v79 = eventCopy;
  v129 = v79;
  v124 = 0;
  v125 = &v124;
  v126 = 0x2020000000;
  v127 = dCopy;
  v118 = 0;
  v119 = &v118;
  v120 = 0x3032000000;
  v121 = __Block_byref_object_copy__15;
  v122 = __Block_byref_object_dispose__15;
  v77 = nameCopy;
  v123 = v77;
  v112 = 0;
  v113 = &v112;
  v114 = 0x3032000000;
  v115 = __Block_byref_object_copy__15;
  v116 = __Block_byref_object_dispose__15;
  v81 = keyCopy;
  v117 = v81;
  v106 = 0;
  v107 = &v106;
  v108 = 0x3032000000;
  v109 = __Block_byref_object_copy__15;
  v110 = __Block_byref_object_dispose__15;
  v83 = payloadCopy;
  v111 = v83;
  v100 = 0;
  v101 = &v100;
  v102 = 0x3032000000;
  v103 = __Block_byref_object_copy__15;
  v104 = __Block_byref_object_dispose__15;
  registeredResponders = [(PLXPCService *)self registeredResponders];
  v105 = [(PLXPCService *)self registeredOperatorFromDictionary:registeredResponders forMessage:messageCopy];

  v31 = 0;
  v98[0] = 0;
  v98[1] = v98;
  v98[2] = 0x3032000000;
  v98[3] = __Block_byref_object_copy__15;
  v98[4] = __Block_byref_object_dispose__15;
  v99 = 0;
  while (1)
  {
    registeredResponders2 = [(PLXPCService *)self registeredResponders];
    v33 = [(PLXPCService *)self registeredOperatorFromDictionary:registeredResponders2 forMessage:messageCopy];
    v34 = v101[5];
    v101[5] = v33;

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v35 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_783;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v35;
      if (handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__defaultOnce_781 != -1)
      {
        dispatch_once(&handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__defaultOnce_781, block);
      }

      if (handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__classDebugEnabled_782 == 1)
      {
        v36 = MEMORY[0x277CCACA8];
        registeredResponders3 = [(PLXPCService *)self registeredResponders];
        v38 = [v36 stringWithFormat:@"!!! %s/%d: count=%d, [self registeredResponders]=%@, message=%@, responder=%@", "-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]", 690, v31, registeredResponders3, messageCopy, v101[5]];

        v39 = MEMORY[0x277D3F178];
        v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        lastPathComponent2 = [v40 lastPathComponent];
        v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]"];
        [v39 logMessage:v38 fromFile:lastPathComponent2 fromFunction:v42 fromLineNumber:690];

        v44 = PLLogCommon(v43);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v138 = v38;
          _os_log_debug_impl(&dword_25EE51000, v44, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    if (v101[5])
    {
      break;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v45 = objc_opt_class();
      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 3221225472;
      v86[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_842;
      v86[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v86[4] = v45;
      if (handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__defaultOnce_840 != -1)
      {
        dispatch_once(&handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__defaultOnce_840, v86);
      }

      if (handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__classDebugEnabled_841 == 1)
      {
        v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"No registered Responder"];
        v47 = MEMORY[0x277D3F178];
        v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        lastPathComponent3 = [v48 lastPathComponent];
        v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]"];
        [v47 logMessage:v46 fromFile:lastPathComponent3 fromFunction:v50 fromLineNumber:740];

        v52 = PLLogCommon(v51);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v138 = v46;
          _os_log_debug_impl(&dword_25EE51000, v52, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    if (v31 > 3)
    {
      responderWaitTime = 1000000;
    }

    else
    {
      responderWaitTime = [(PLXPCService *)self responderWaitTime];
    }

    usleep(responderWaitTime);
    v31 = (v31 + 1);
    if (v31 == 20)
    {
      goto LABEL_51;
    }
  }

  v54 = [messageCopy objectForKeyedSubscript:@"clientID"];
  if ([v54 integerValue] != 32)
  {
    goto LABEL_46;
  }

  v55 = [messageCopy objectForKeyedSubscript:@"event"];
  v56 = [v55 description];
  v57 = [v56 isEqualToString:@"SafeLogFile"];

  if (v57)
  {
    v58 = [v83 mutableCopy];
    [v58 setObject:MEMORY[0x277CBEC38] forKey:@"BLDRetail"];
    v54 = v58;

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v59 = objc_opt_class();
      v96[0] = MEMORY[0x277D85DD0];
      v96[1] = 3221225472;
      v96[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_795;
      v96[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v96[4] = v59;
      if (handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__defaultOnce_793 != -1)
      {
        dispatch_once(&handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__defaultOnce_793, v96);
      }

      if (handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__classDebugEnabled_794 == 1)
      {
        messageCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! %s/%d: clientID=%d, event=%@, processName=%@, key=%@, payload=%@, message=%@", "-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]", 696, *(v125 + 12), v79, v119[5], v113[5], v107[5], messageCopy];
        v61 = MEMORY[0x277D3F178];
        v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        lastPathComponent4 = [v62 lastPathComponent];
        v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]"];
        [v61 logMessage:messageCopy fromFile:lastPathComponent4 fromFunction:v64 fromLineNumber:696];

        v66 = PLLogCommon(v65);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    v67 = dispatch_get_global_queue(0, 0);
    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 3221225472;
    v95[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_799;
    v95[3] = &unk_279A5C3D0;
    v95[4] = self;
    v95[5] = v98;
    dispatch_sync(v67, v95);

    v83 = v54;
LABEL_46:
  }

  v68 = [messageCopy objectForKeyedSubscript:@"event"];
  v69 = [v68 description];
  v70 = [v69 isEqualToString:@"Aggregate"];

  if (v70)
  {
    v71 = -32768;
  }

  else
  {
    v71 = 0;
  }

  v72 = dispatch_get_global_queue(v71, 0);
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_835;
  v87[3] = &unk_279A5EAD0;
  v90 = &v124;
  v91 = &v118;
  v92 = &v112;
  v93 = &v106;
  v89 = &v100;
  v87[4] = self;
  v94 = v128;
  v88 = messageCopy;
  dispatch_async(v72, v87);

LABEL_51:
  v73 = +[PLUtilities isPowerlogHelperd];
  if (v73 && !v101[5])
  {
    v74 = PLLogCommon(v73);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      [PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:];
    }

    satelliteProcessSemaphore2 = [(PLXPCService *)self satelliteProcessSemaphore];
    [satelliteProcessSemaphore2 signalDoneByObject:messageCopy];
  }

  v76 = v132[5];
  if (v76)
  {
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_846;
    v85[3] = &unk_279A5C0C8;
    v85[4] = &v131;
    [(PLOperator *)self updateEntry:v76 withBlock:v85];
  }

  _Block_object_dispose(v98, 8);

  _Block_object_dispose(&v100, 8);
  _Block_object_dispose(&v106, 8);

  _Block_object_dispose(&v112, 8);
  _Block_object_dispose(&v118, 8);

  _Block_object_dispose(&v124, 8);
  _Block_object_dispose(v128, 8);

  _Block_object_dispose(&v131, 8);
}

void *__102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__classDebugEnabled = result;
  return result;
}

void *__102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_783(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__classDebugEnabled_782 = result;
  return result;
}

void *__102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_795(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__classDebugEnabled_794 = result;
  return result;
}

void __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_799(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  PLTalkToPowerlogHelper();
  v2 = PLQueryRegistered();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = 0x277D3F000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_2;
    v47[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v47[4] = v6;
    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_6_defaultOnce != -1)
    {
      dispatch_once(&kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_6_defaultOnce, v47);
    }

    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_6_classDebugEnabled == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%d: buiResults=%@", "-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]_block_invoke", 702, *(*(*(a1 + 40) + 8) + 40)];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]_block_invoke"];
      [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:702];

      v13 = PLLogCommon(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      v5 = 0x277D3F000uLL;
    }
  }

  v14 = *(*(*(a1 + 40) + 8) + 40);
  if (v14)
  {
    v15 = [v14 objectForKeyedSubscript:@"result"];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v43 objects:v50 count:16];
    if (v16)
    {
      v17 = v16;
      v40 = *v44;
      v39 = a1;
      do
      {
        v18 = 0;
        do
        {
          if (*v44 != v40)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v43 + 1) + 8 * v18);
          v20 = objc_alloc(MEMORY[0x277D3F190]);
          v21 = [v19 objectForKeyedSubscript:@"EntryKey"];
          v22 = [v20 initWithEntryKey:v21 withRawData:v19];

          [*(a1 + 32) logEntry:v22];
          if ([*(v5 + 384) debugEnabled])
          {
            v23 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_821;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v23;
            if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_6_defaultOnce_819 != -1)
            {
              dispatch_once(&kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_6_defaultOnce_819, block);
            }

            if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_6_classDebugEnabled_820 == 1)
            {
              v24 = v15;
              v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! %s/%d: log to database entry=%@, serializedEntry=%@", "-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]_block_invoke_2", 711, v22, v19];;
              v26 = MEMORY[0x277D3F178];
              v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
              v28 = [v27 lastPathComponent];
              v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]_block_invoke_2"];
              [v26 logMessage:v25 fromFile:v28 fromFunction:v29 fromLineNumber:711];

              v31 = PLLogCommon(v30);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v49 = v25;
                _os_log_debug_impl(&dword_25EE51000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v5 = 0x277D3F000;
              v15 = v24;
              a1 = v39;
            }
          }

          ++v18;
        }

        while (v17 != v18);
        v17 = [v15 countByEnumeratingWithState:&v43 objects:v50 count:16];
      }

      while (v17);
    }

LABEL_23:

    return;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v32 = objc_opt_class();
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_828;
    v41[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v41[4] = v32;
    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_6_defaultOnce_826 != -1)
    {
      dispatch_once(&kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_6_defaultOnce_826, v41);
    }

    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_6_classDebugEnabled_827 == 1)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! %s/%d: buiResults is nil", "-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]_block_invoke_2", 714];
      v33 = MEMORY[0x277D3F178];
      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v35 = [v34 lastPathComponent];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]_block_invoke_2"];
      [v33 logMessage:v15 fromFile:v35 fromFunction:v36 fromLineNumber:714];

      v38 = PLLogCommon(v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      goto LABEL_23;
    }
  }
}

void *__102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_6_classDebugEnabled = result;
  return result;
}

void *__102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_821(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_6_classDebugEnabled_820 = result;
  return result;
}

void *__102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_828(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_6_classDebugEnabled_827 = result;
  return result;
}

void __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_835(uint64_t a1)
{
  v2 = [*(*(*(a1 + 48) + 8) + 40) respondToRequestForClientID:*(*(*(a1 + 56) + 8) + 24) withProcessName:*(*(*(a1 + 64) + 8) + 40) withKey:*(*(*(a1 + 72) + 8) + 40) withPayload:*(*(*(a1 + 80) + 8) + 40)];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_2_836;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_7_defaultOnce != -1)
    {
      dispatch_once(&kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_7_defaultOnce, block);
    }

    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_7_classDebugEnabled == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! %s/%d: responder=%@, response=%@", "-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]_block_invoke", 731, *(*(*(a1 + 48) + 8) + 40), v2];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]_block_invoke"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:731];

      v10 = PLLogCommon(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  [*(a1 + 32) respondToEvent:*(*(*(a1 + 88) + 8) + 40) withResponse:v2];
  if (+[PLUtilities isPowerlogHelperd])
  {
    v11 = [*(a1 + 32) satelliteProcessSemaphore];
    [v11 signalDoneByObject:*(a1 + 40)];
  }
}

void *__102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_2_836(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_7_classDebugEnabled = result;
  return result;
}

void *__102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_842(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__classDebugEnabled_841 = result;
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
      if (handlePeerListenerEvent_withMessage_withClientID_withProcessName_withKey_withPayload__defaultOnce_850 != -1)
      {
        dispatch_once(&handlePeerListenerEvent_withMessage_withClientID_withProcessName_withKey_withPayload__defaultOnce_850, block);
      }

      if (handlePeerListenerEvent_withMessage_withClientID_withProcessName_withKey_withPayload__classDebugEnabled_851 == 1)
      {
        v36 = payloadCopy;
        v20 = MEMORY[0x277CCACA8];
        registeredListeners2 = [(PLXPCService *)self registeredListeners];
        v22 = [v20 stringWithFormat:@"!!! %s/%d: [self registeredListeners]=%@, listener=%@", "-[PLXPCService handlePeerListenerEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]", 783, registeredListeners2, v18];

        v35 = MEMORY[0x277D3F178];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        lastPathComponent = [v23 lastPathComponent];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerListenerEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]"];
        [v35 logMessage:v22 fromFile:lastPathComponent fromFunction:v25 fromLineNumber:783];

        v27 = PLLogCommon(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        payloadCopy = v36;
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
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __101__PLXPCService_handlePeerListenerEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke;
    v38[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v38[4] = v28;
    if (handlePeerListenerEvent_withMessage_withClientID_withProcessName_withKey_withPayload__defaultOnce != -1)
    {
      dispatch_once(&handlePeerListenerEvent_withMessage_withClientID_withProcessName_withKey_withPayload__defaultOnce, v38);
    }

    if (handlePeerListenerEvent_withMessage_withClientID_withProcessName_withKey_withPayload__classDebugEnabled == 1)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"no permission to log!"];
      v29 = MEMORY[0x277D3F178];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      lastPathComponent2 = [v30 lastPathComponent];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerListenerEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]"];
      [v29 logMessage:v18 fromFile:lastPathComponent2 fromFunction:v32 fromLineNumber:775];

      v34 = PLLogCommon(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      goto LABEL_19;
    }
  }

LABEL_20:
}

void *__101__PLXPCService_handlePeerListenerEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handlePeerListenerEvent_withMessage_withClientID_withProcessName_withKey_withPayload__classDebugEnabled = result;
  return result;
}

void *__101__PLXPCService_handlePeerListenerEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_852(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handlePeerListenerEvent_withMessage_withClientID_withProcessName_withKey_withPayload__classDebugEnabled_851 = result;
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
  if (+[PLUtilities isPowerlogHelperd])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__PLXPCService_setSatelliteProcessExit__block_invoke;
    block[3] = &unk_279A5BDC0;
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
  block[3] = &unk_279A5BDC0;
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
    v3[3] = &unk_279A5BDC0;
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
    v7 = PLLogCommon(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25EE51000, v7, OS_LOG_TYPE_DEFAULT, "Stopping powerlogHelperd", v8, 2u);
    }

    [PLUtilities exitWithReason:6];
  }
}

- (void)handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:.cold.3()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_25EE51000, v0, OS_LOG_TYPE_ERROR, "powerlogHelperd received unhandled query: %@", v1, 0xCu);
}

@end