@interface PLEnergyIssuesService
+ (BOOL)isTestRackDevice:(id)device withExpGroup:(id)group internalKeyDetected:(BOOL)detected;
+ (BOOL)shouldPopUpForPowerException;
+ (BOOL)shouldPopUpForPowerExceptionForProcess:(id)process;
+ (BOOL)shouldPopUpForPowerExceptionWithFatalCount:(id)count withNonFatalCount:(id)fatalCount withMitigationsEnabled:(BOOL)enabled;
+ (BOOL)supportsUrsa;
+ (id)createIssueEntriesFrom:(id)from forKey:(id)key now:(id)now midnight:(id)midnight;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventIntervalDefinitionsUrsaIssues;
+ (id)entryEventPointDefinitionUrsaInteraction;
+ (id)entryEventPointDefinitionUrsaSummary;
+ (id)entryEventPointDefinitions;
+ (id)parseBootArgs:(id)args;
+ (void)load;
- (BOOL)buildVersionChanged;
- (BOOL)isValidUrsaEntry:(id)entry;
- (BOOL)postUrsaNotification:(id)notification;
- (BOOL)requestUrsaNotificationAndLog:(id)log;
- (BOOL)shouldUpdateTableFrom:(id)from newPayload:(id)payload;
- (PLEnergyIssuesService)init;
- (__CFDictionary)createAssertionThreshold:(int)threshold withAggregateLimit:(int)limit;
- (double)defaultFetchWindow;
- (id)extractActionfromEntry:(id)entry;
- (id)extractProcessNameFromEntry:(id)entry;
- (id)getRepeatingTaskWith:(id)with needsSubmit:(BOOL *)submit;
- (id)insertSystemTime:(id)time fromPLEntry:(id)entry;
- (id)queryExistingUrsaEntries:(id)entries;
- (void)addUrsaResponders;
- (void)checkUrsaBootArgs;
- (void)deregister:(id)deregister;
- (void)deregisterUrsa;
- (void)executeUrsaClientCallWithBlock:(id)block;
- (void)handleAssertionNotifications;
- (void)handlePeriodicTableUpdateCallback:(id)callback withRequestUUID:(id)d withPayload:(id)payload forEntry:(id)entry;
- (void)handlePowerException:(id)exception;
- (void)handleUrsaCallback:(id)callback withRequestUUID:(id)d withPayload:(id)payload;
- (void)handleUrsaTask:(id)task;
- (void)initOperatorDependancies;
- (void)initializeSafeguardsSystem;
- (void)initializeUrsa;
- (void)logPowerExceptionTelemetry:(id)telemetry withNotified:(BOOL)notified withRequestUUID:(id)d;
- (void)processExistingEntriesSequentially;
- (void)registerPowerExceptionCallbacks;
- (void)registerTaskWith:(id)with inQueue:(id)queue launchHandler:(id)handler;
- (void)registerUrsa;
- (void)runPeriodic:(double)periodic withFlag:(id)flag;
- (void)setAssertionThresholds;
- (void)submitTask:(id)task;
- (void)updateExistingTableEntry:(id)entry withResponsePayload:(id)payload;
- (void)updateParamsForUrsaTask:(id)task;
- (void)updateTask:(id)task;
- (void)writeUrsaNotificationToTable:(id)table;
@end

@implementation PLEnergyIssuesService

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLEnergyIssuesService;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLEnergyIssuesService)init
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    selfCopy = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PLEnergyIssuesService;
    self = [(PLOperator *)&v5 init];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)initOperatorDependancies
{
  if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) == 0)
  {
    [(PLEnergyIssuesService *)self setAssertionThresholds];
    [(PLEnergyIssuesService *)self initializeSafeguardsSystem];

    [(PLEnergyIssuesService *)self initializeUrsa];
  }
}

- (__CFDictionary)createAssertionThreshold:(int)threshold withAggregateLimit:(int)limit
{
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  valuePtr = threshold;
  v8 = CFNumberCreate(v6, kCFNumberIntType, &valuePtr);
  limitCopy = limit;
  v9 = CFNumberCreate(v6, kCFNumberIntType, &limitCopy);
  CFDictionarySetValue(Mutable, @"Asssertion Duration Limit", v8);
  CFDictionarySetValue(Mutable, @"Aggregate Assertion Limit", v9);
  CFRelease(v8);
  CFRelease(v9);
  return Mutable;
}

- (void)setAssertionThresholds
{
  v27 = *MEMORY[0x277D85DE8];
  valueCallBacks = *byte_282B5B5D8;
  v3 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], &valueCallBacks);
  CFDictionarySetValue(v3, @"Default Limits", [(PLEnergyIssuesService *)self createAssertionThreshold:1800 withAggregateLimit:1800]);
  CFDictionarySetValue(v3, @"backboardd", [(PLEnergyIssuesService *)self createAssertionThreshold:999999 withAggregateLimit:999999]);
  CFDictionarySetValue(v3, @"SpringBoard", [(PLEnergyIssuesService *)self createAssertionThreshold:999999 withAggregateLimit:999999]);
  CFDictionarySetValue(v3, @"mediaserverd", [(PLEnergyIssuesService *)self createAssertionThreshold:7200 withAggregateLimit:3150]);
  CFDictionarySetValue(v3, @"locationd", [(PLEnergyIssuesService *)self createAssertionThreshold:7200 withAggregateLimit:3150]);
  CFDictionarySetValue(v3, @"InCallService", [(PLEnergyIssuesService *)self createAssertionThreshold:999999 withAggregateLimit:999999]);
  CFDictionarySetValue(v3, @"itunesstored", [(PLEnergyIssuesService *)self createAssertionThreshold:3600 withAggregateLimit:2250]);
  CFDictionarySetValue(v3, @"CommCenter", [(PLEnergyIssuesService *)self createAssertionThreshold:7200 withAggregateLimit:3150]);
  CFDictionarySetValue(v3, @"assertiond", [(PLEnergyIssuesService *)self createAssertionThreshold:3600 withAggregateLimit:2250]);
  CFDictionarySetValue(v3, @"nsurlsessiond", [(PLEnergyIssuesService *)self createAssertionThreshold:3600 withAggregateLimit:2250]);
  CFDictionarySetValue(v3, @"MobileMail", [(PLEnergyIssuesService *)self createAssertionThreshold:1800 withAggregateLimit:1800]);
  CFDictionarySetValue(v3, @"assetsd", [(PLEnergyIssuesService *)self createAssertionThreshold:1800 withAggregateLimit:1800]);
  CFDictionarySetValue(v3, @"iaptransportd", [(PLEnergyIssuesService *)self createAssertionThreshold:1800 withAggregateLimit:1800]);
  CFDictionarySetValue(v3, @"bluetoothd", [(PLEnergyIssuesService *)self createAssertionThreshold:3600 withAggregateLimit:999999]);
  CFDictionarySetValue(v3, @"identityservicesd", [(PLEnergyIssuesService *)self createAssertionThreshold:1800 withAggregateLimit:1800]);
  CFDictionarySetValue(v3, @"cloudd", [(PLEnergyIssuesService *)self createAssertionThreshold:3600 withAggregateLimit:3600]);
  CFDictionarySetValue(v3, @"backupd", [(PLEnergyIssuesService *)self createAssertionThreshold:3600 withAggregateLimit:2250]);
  CFDictionarySetValue(v3, @"apsd", [(PLEnergyIssuesService *)self createAssertionThreshold:3600 withAggregateLimit:999999]);
  CFDictionarySetValue(v3, @"ReportCrash", [(PLEnergyIssuesService *)self createAssertionThreshold:999999 withAggregateLimit:999999]);
  CFDictionarySetValue(v3, @"com.apple.TapToRadar", [(PLEnergyIssuesService *)self createAssertionThreshold:7200 withAggregateLimit:3150]);
  CFDictionarySetValue(v3, @"iapd", [(PLEnergyIssuesService *)self createAssertionThreshold:3600 withAggregateLimit:2250]);
  CFDictionarySetValue(v3, @"Music", [(PLEnergyIssuesService *)self createAssertionThreshold:7200 withAggregateLimit:3150]);
  CFDictionarySetValue(v3, @"pmset", [(PLEnergyIssuesService *)self createAssertionThreshold:999999 withAggregateLimit:999999]);
  CFDictionarySetValue(v3, @"Tap-To-Radar", [(PLEnergyIssuesService *)self createAssertionThreshold:7200 withAggregateLimit:3150]);
  CFDictionarySetValue(v3, @"callservicesd", [(PLEnergyIssuesService *)self createAssertionThreshold:999999 withAggregateLimit:999999]);
  CFDictionarySetValue(v3, @"terminusd", [(PLEnergyIssuesService *)self createAssertionThreshold:999999 withAggregateLimit:999999]);
  CFDictionarySetValue(v3, @"wifid", [(PLEnergyIssuesService *)self createAssertionThreshold:999999 withAggregateLimit:2250]);
  CFDictionarySetValue(v3, @"softwareupdateservicesd", [(PLEnergyIssuesService *)self createAssertionThreshold:3600 withAggregateLimit:999999]);
  CFDictionarySetValue(v3, @"sharingd", [(PLEnergyIssuesService *)self createAssertionThreshold:3600 withAggregateLimit:999999]);
  CFDictionarySetValue(v3, @"homed", [(PLEnergyIssuesService *)self createAssertionThreshold:3600 withAggregateLimit:999999]);
  CFDictionarySetValue(v3, @"dasd", [(PLEnergyIssuesService *)self createAssertionThreshold:3600 withAggregateLimit:999999]);
  v4 = IOPMSetAssertionExceptionLimits();
  debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
  if (v4)
  {
    if (debugEnabled)
    {
      v6 = objc_opt_class();
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __47__PLEnergyIssuesService_setAssertionThresholds__block_invoke_120;
      v21 = &__block_descriptor_40_e5_v8__0lu32l8;
      v22 = v6;
      if (qword_2811F4C38 != -1)
      {
        dispatch_once(&qword_2811F4C38, &v18);
      }

      if (byte_2811F4C29 == 1)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsuccessful initialization of thresholds", v18, v19, v20, v21, v22];
        v8 = MEMORY[0x277D3F178];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLEnergyIssuesService.m"];
        lastPathComponent = [v9 lastPathComponent];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLEnergyIssuesService setAssertionThresholds]"];
        [v8 logMessage:v7 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:802];

        v12 = PLLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v26 = v7;
LABEL_18:
          _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          goto LABEL_13;
        }

        goto LABEL_13;
      }
    }
  }

  else if (debugEnabled)
  {
    v13 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLEnergyIssuesService_setAssertionThresholds__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v13;
    if (qword_2811F4C30 != -1)
    {
      dispatch_once(&qword_2811F4C30, block);
    }

    if (_MergedGlobals_1_31 == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Succesful initialization of thresholds"];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLEnergyIssuesService.m"];
      lastPathComponent2 = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLEnergyIssuesService setAssertionThresholds]"];
      [v14 logMessage:v7 fromFile:lastPathComponent2 fromFunction:v17 fromLineNumber:799];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v26 = v7;
        goto LABEL_18;
      }

LABEL_13:
    }
  }

  if (v3)
  {
    CFDictionaryRemoveAllValues(v3);
    CFRelease(v3);
  }
}

void *__47__PLEnergyIssuesService_setAssertionThresholds__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_31 = result;
  return result;
}

void *__47__PLEnergyIssuesService_setAssertionThresholds__block_invoke_120(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4C29 = result;
  return result;
}

- (void)handleAssertionNotifications
{
  v2 = dispatch_queue_create("PM test queue", 0);
  IOPMScheduleAssertionExceptionNotification();
}

+ (id)entryEventIntervalDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v6 = @"UrsaDefinition";
    entryEventIntervalDefinitionsUrsaIssues = [self entryEventIntervalDefinitionsUrsaIssues];
    v7[0] = entryEventIntervalDefinitionsUrsaIssues;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  return v4;
}

+ (id)entryEventIntervalDefinitionsUrsaIssues
{
  v30[2] = *MEMORY[0x277D85DE8];
  v29[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F590];
  v27[0] = *MEMORY[0x277D3F568];
  v27[1] = v2;
  v28[0] = &unk_282C1C448;
  v28[1] = &unk_282C118C8;
  v27[2] = *MEMORY[0x277D3F588];
  v28[2] = &unk_282C1C458;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
  v30[0] = v24;
  v29[1] = *MEMORY[0x277D3F540];
  v25[0] = @"radar";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v26[0] = commonTypeDict_IntegerFormat;
  v25[1] = @"impact";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v26[1] = commonTypeDict_IntegerFormat2;
  v25[2] = @"timestampStart";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]3 commonTypeDict_DateFormat];
  v26[2] = commonTypeDict_DateFormat;
  v25[3] = @"timestampEnd";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_DateFormat];
  v26[3] = commonTypeDict_DateFormat2;
  v25[4] = @"hitIn";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]5 commonTypeDict_StringFormat];
  v26[4] = commonTypeDict_StringFormat;
  v25[5] = @"fixedIn";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]6 commonTypeDict_StringFormat];
  v26[5] = commonTypeDict_StringFormat2;
  v25[6] = @"isCritical";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]7 commonTypeDict_BoolFormat];
  v26[6] = commonTypeDict_BoolFormat;
  v25[7] = @"timestampInvalid";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat3 = [mEMORY[0x277D3F198]8 commonTypeDict_DateFormat];
  v26[7] = commonTypeDict_DateFormat3;
  v25[8] = @"driMessage";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]9 commonTypeDict_StringFormat];
  v26[8] = commonTypeDict_StringFormat3;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:9];
  v30[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];

  return v12;
}

+ (id)entryEventPointDefinitions
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"UrsaSummary";
  entryEventPointDefinitionUrsaSummary = [self entryEventPointDefinitionUrsaSummary];
  v7[1] = @"UrsaInteraction";
  v8[0] = entryEventPointDefinitionUrsaSummary;
  entryEventPointDefinitionUrsaInteraction = [self entryEventPointDefinitionUrsaInteraction];
  v8[1] = entryEventPointDefinitionUrsaInteraction;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (id)entryEventPointDefinitionUrsaSummary
{
  v25[2] = *MEMORY[0x277D85DE8];
  if (+[PLEnergyIssuesService supportsUrsa])
  {
    v24[0] = *MEMORY[0x277D3F4E8];
    v22 = *MEMORY[0x277D3F568];
    v23 = &unk_282C1C468;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v25[0] = v19;
    v24[1] = *MEMORY[0x277D3F540];
    v20[0] = @"requestId";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
    v21[0] = commonTypeDict_StringFormat;
    v20[1] = @"countBui";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v21[1] = commonTypeDict_IntegerFormat;
    v20[2] = @"countNotification";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v21[2] = commonTypeDict_IntegerFormat2;
    v20[3] = @"error";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v21[3] = commonTypeDict_IntegerFormat3;
    v20[4] = @"peProcess";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_StringFormat];
    v21[4] = commonTypeDict_StringFormat2;
    v20[5] = @"peReason";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_StringFormat];
    v21[5] = commonTypeDict_StringFormat3;
    v20[6] = @"peFK_ID";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
    v21[6] = commonTypeDict_IntegerFormat4;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:7];
    v25[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  return v11;
}

+ (id)entryEventPointDefinitionUrsaInteraction
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (+[PLEnergyIssuesService supportsUrsa])
  {
    v16[0] = *MEMORY[0x277D3F4E8];
    v14 = *MEMORY[0x277D3F568];
    v15 = &unk_282C1C478;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v17[0] = v2;
    v16[1] = *MEMORY[0x277D3F540];
    v12[0] = @"source";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
    v13[0] = commonTypeDict_StringFormat;
    v12[1] = @"radar";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v13[1] = commonTypeDict_IntegerFormat;
    v12[2] = @"action";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
    v13[2] = commonTypeDict_StringFormat2;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
    v17[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  }

  else
  {
    v10 = MEMORY[0x277CBEC10];
  }

  return v10;
}

+ (BOOL)supportsUrsa
{
  internalBuild = [MEMORY[0x277D3F208] internalBuild];
  if (internalBuild)
  {
    if ([MEMORY[0x277D3F208] nonUIBuild])
    {
      LOBYTE(internalBuild) = 0;
    }

    else
    {
      LOBYTE(internalBuild) = [MEMORY[0x277D3F1B8] isVirtualDevice] ^ 1;
    }
  }

  return internalBuild;
}

- (void)initializeUrsa
{
  v33 = *MEMORY[0x277D85DE8];
  workQueue = [(PLOperator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(PLEnergyIssuesService *)self setUrsaStatus:-1];
  if (!+[PLEnergyIssuesService supportsUrsa])
  {
    return;
  }

  v4 = dispatch_semaphore_create(1);
  [(PLEnergyIssuesService *)self setCurrentUrsaCloudKitTask:v4];

  v5 = objc_alloc_init(MEMORY[0x277CCABD8]);
  [(PLEnergyIssuesService *)self setUrsaClientQueue:v5];

  ursaClientQueue = [(PLEnergyIssuesService *)self ursaClientQueue];
  [ursaClientQueue setMaxConcurrentOperationCount:1];

  ursaClientQueue2 = [(PLEnergyIssuesService *)self ursaClientQueue];
  [ursaClientQueue2 setQualityOfService:17];

  ursaClientQueue3 = [(PLEnergyIssuesService *)self ursaClientQueue];
  [ursaClientQueue3 setName:@"com.apple.powerlog.ursaClient"];

  [MEMORY[0x277D3F180] setObject:0 forKey:@"kUrsaEnabledKey" saveToDisk:1];
  [MEMORY[0x277D3F180] setObject:0 forKey:@"kUrsaNotificationEnabledKey" saveToDisk:1];
  [(PLEnergyIssuesService *)self addUrsaResponders];
  v9 = [MEMORY[0x277D3F180] BOOLForKey:@"UrsaUserSetting" ifNotSet:0];
  mobileUserADG = [MEMORY[0x277D3F258] mobileUserADG];
  experimentGroup = [MEMORY[0x277D3F258] experimentGroup];
  v12 = +[PLEnergyIssuesService isTestRackDevice:withExpGroup:internalKeyDetected:](PLEnergyIssuesService, "isTestRackDevice:withExpGroup:internalKeyDetected:", mobileUserADG, experimentGroup, [MEMORY[0x277D3F258] hasInternalKey]);

  v13 = PLLogUrsa();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 67109120;
    *v31 = v12;
    _os_log_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEFAULT, "test rack: %d", &v30, 8u);
  }

  v14 = _os_feature_enabled_impl();
  if (v9)
  {
    v15 = PLLogUrsa();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v30) = 0;
      _os_log_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEFAULT, "Forcing enablement", &v30, 2u);
    }

    goto LABEL_9;
  }

  if (!v12 & v14)
  {
LABEL_9:
    v16 = PLLogUrsa();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 138412290;
      *v31 = @"enabled";
      _os_log_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEFAULT, "Feature %@", &v30, 0xCu);
    }

    v17 = _os_feature_enabled_impl();
    buildVersion = [MEMORY[0x277D3F258] buildVersion];
    v19 = [MEMORY[0x277D3F180] objectForKey:@"UrsaBuildOverride" ifNotSet:0];
    if (v19)
    {
      v20 = PLLogUrsa();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 138412546;
        *v31 = buildVersion;
        *&v31[8] = 2112;
        v32 = v19;
        _os_log_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEFAULT, "overriding build: %@ -> %@", &v30, 0x16u);
      }

      v21 = v19;
      buildVersion = v21;
    }

    v22 = [_TtC21PowerlogLiteOperators10UrsaClient alloc];
    isUrsaDevModeEnabled = [(PLEnergyIssuesService *)self isUrsaDevModeEnabled];
    crashReporterKey = [MEMORY[0x277D3F258] crashReporterKey];
    getHardwareModel = [MEMORY[0x277D3F1B8] getHardwareModel];
    v26 = -[UrsaClient initClient:crKey:build:device:isiPad:isBeta:](v22, "initClient:crKey:build:device:isiPad:isBeta:", isUrsaDevModeEnabled, crashReporterKey, buildVersion, getHardwareModel, [MEMORY[0x277D3F208] isiPad], v17);
    [(PLEnergyIssuesService *)self setUrsaClient:v26];

    [(PLEnergyIssuesService *)self registerPowerExceptionCallbacks];
    [(PLEnergyIssuesService *)self registerUrsa];
    LOBYTE(v30) = 0;
    v27 = [(PLEnergyIssuesService *)self getUrsaTask:&v30];
    [(PLEnergyIssuesService *)self updateParamsForUrsaTask:v27];
    if (v30 == 1)
    {
      [(PLEnergyIssuesService *)self submitTask:v27];
    }

    else
    {
      [(PLEnergyIssuesService *)self updateTask:v27];
    }

    if ([(PLEnergyIssuesService *)self buildVersionChanged])
    {
      [(PLEnergyIssuesService *)self postUrsaNotification:&unk_282C183A0];
    }

    [(PLEnergyIssuesService *)self checkUrsaBootArgs];

    return;
  }

  v28 = PLLogUrsa();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    internalBuild = [MEMORY[0x277D3F208] internalBuild];
    v30 = 67109376;
    *v31 = internalBuild;
    *&v31[4] = 1024;
    *&v31[6] = v12;
    _os_log_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEFAULT, "Feature disabled int=%d adg=%d", &v30, 0xEu);
  }

  [(PLEnergyIssuesService *)self deregisterUrsa];
}

- (BOOL)buildVersionChanged
{
  if (qword_2811F4C50 != -1)
  {
    dispatch_once(&qword_2811F4C50, &__block_literal_global_238);
  }

  return byte_2811F4C2A;
}

void __44__PLEnergyIssuesService_buildVersionChanged__block_invoke()
{
  v15 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D3F180] objectForKey:@"kPLBatteryUrsaLastBuildKey"];
  v1 = PLLogUrsa();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v10 = [MEMORY[0x277D3F258] buildVersion];
    v11 = 138412546;
    v12 = v10;
    v13 = 2112;
    v14 = v0;
    _os_log_debug_impl(&dword_21A4C6000, v1, OS_LOG_TYPE_DEBUG, "Checking for update. Current build = %@, last build = %@.", &v11, 0x16u);
  }

  if (!v0)
  {
    v4 = MEMORY[0x277D3F180];
    v5 = MEMORY[0x277D3F258];
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x277D3F258] buildVersion];
    v3 = [v0 isEqualToString:v2];

    if (v3)
    {
      byte_2811F4C2A = 0;
      goto LABEL_13;
    }

    v4 = MEMORY[0x277D3F180];
    v5 = MEMORY[0x277D3F258];
LABEL_12:
    v9 = [v5 buildVersion];
    [v4 setObject:v9 forKey:@"kPLBatteryUrsaLastBuildKey" saveToDisk:1];

    byte_2811F4C2A = 1;
    goto LABEL_13;
  }

  v6 = PLLogUrsa();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v0;
    _os_log_error_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_ERROR, "Invalid last build type: %@", &v11, 0xCu);
  }

  v7 = MEMORY[0x277D3F180];
  v8 = [MEMORY[0x277D3F258] buildVersion];
  [v7 setObject:v8 forKey:@"kPLBatteryUrsaLastBuildKey" saveToDisk:1];

LABEL_13:
}

- (void)addUrsaResponders
{
  v3 = objc_alloc(MEMORY[0x277D3F278]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__PLEnergyIssuesService_addUrsaResponders__block_invoke;
  v8[3] = &unk_278259810;
  v8[4] = self;
  v4 = [v3 initWithOperator:self withRegistration:&unk_282C183C8 withBlock:v8];
  [(PLEnergyIssuesService *)self setUrsaResponder:v4];

  v5 = objc_alloc(MEMORY[0x277D3F270]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__PLEnergyIssuesService_addUrsaResponders__block_invoke_6;
  v7[3] = &unk_27825A1D8;
  v7[4] = self;
  v6 = [v5 initWithOperator:self withRegistration:&unk_282C18440 withBlock:v7];
  [(PLEnergyIssuesService *)self setUrsaInteractionListener:v6];
}

id __42__PLEnergyIssuesService_addUrsaResponders__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v103 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v10 count])
  {
    v17 = &unk_282C183F0;
    goto LABEL_28;
  }

  v11 = [*(a1 + 32) ursaClient];

  if (!v11)
  {
    v17 = &unk_282C18418;
    goto LABEL_28;
  }

  v12 = PLLogUrsa();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEFAULT, "handling test CLI query %@", &buf, 0xCu);
  }

  v13 = [v10 objectForKeyedSubscript:@"flag"];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v99 = 0x3032000000;
  v100 = __Block_byref_object_copy__10;
  v101 = __Block_byref_object_dispose__10;
  v102 = [MEMORY[0x277CBEB38] dictionary];
  v92 = 0;
  v93 = &v92;
  v94 = 0x3032000000;
  v95 = __Block_byref_object_copy__10;
  v96 = __Block_byref_object_dispose__10;
  v97 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = __Block_byref_object_copy__10;
  v90 = __Block_byref_object_dispose__10;
  v91 = dispatch_semaphore_create(0);
  v14 = [v10 objectForKeyedSubscript:@"networkPeriodic"];
  v15 = v14 == 0;

  if (v15)
  {
    v18 = [v10 objectForKeyedSubscript:@"networkAdmit"];
    v19 = v18 == 0;

    if (v19)
    {
      v23 = [v10 objectForKeyedSubscript:@"runPeriodic"];
      v24 = v23 == 0;

      if (v24)
      {
        v26 = [v10 objectForKeyedSubscript:@"runAdmit"];
        v27 = v26 == 0;

        if (v27)
        {
          v57 = [v10 objectForKeyedSubscript:@"rateLimit"];
          v58 = v57 == 0;

          if (v58)
          {
            v62 = [v10 objectForKeyedSubscript:@"loadBuild"];
            v63 = v62 == 0;

            if (v63)
            {
              goto LABEL_25;
            }

            v64 = [v10 objectForKeyedSubscript:@"buildVersion"];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            v66 = MEMORY[0x277D3F180];
            if (isKindOfClass)
            {
              v67 = [v10 objectForKeyedSubscript:@"buildVersion"];
              [v66 setObject:v67 forKey:@"kPLBatteryUrsaLastBuildKey" saveToDisk:1];
            }

            else
            {
              [MEMORY[0x277D3F180] setObject:0 forKey:@"kPLBatteryUrsaLastBuildKey" saveToDisk:1];
            }
          }

          else
          {
            v59 = [v10 objectForKeyedSubscript:@"rateLimit"];
            v60 = [v59 isEqualToString:@"get"];

            if (v60)
            {
              [MEMORY[0x277D3F180] doubleForKey:@"UrsaNotifyAfter" ifNotSet:0.0];
              v61 = [MEMORY[0x277CCABB0] numberWithDouble:?];
              [*(*(&buf + 1) + 40) setObject:v61 forKeyedSubscript:@"notifyAfter"];
            }

            else
            {
              v68 = [v10 objectForKeyedSubscript:@"rateLimit"];
              v69 = [v68 isEqualToString:@"clear"];

              if (v69)
              {
                [MEMORY[0x277D3F180] setObject:0 forKey:@"UrsaNotifyAfter" saveToDisk:1];
                [*(*(&buf + 1) + 40) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"cleared"];
              }
            }
          }

          dispatch_semaphore_signal(v87[5]);
          goto LABEL_25;
        }

        v28 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:@"ursaRunAdmitCLI"];
        v29 = [v10 objectForKeyedSubscript:@"ProcessName"];
        [v28 setObject:v29 forKeyedSubscript:@"ProcessName"];

        v30 = MEMORY[0x277CCABB0];
        v31 = [v10 objectForKeyedSubscript:@"IssueType"];
        v32 = [v30 numberWithInt:{objc_msgSend(v31, "intValue")}];
        [v28 setObject:v32 forKeyedSubscript:@"IssueType"];

        v33 = MEMORY[0x277CCABB0];
        v34 = [v10 objectForKeyedSubscript:@"MitigationType"];
        v35 = [v33 numberWithInt:{objc_msgSend(v34, "intValue")}];
        [v28 setObject:v35 forKeyedSubscript:@"MitigationType"];

        v36 = MEMORY[0x277CCABB0];
        v37 = [v10 objectForKeyedSubscript:@"MitigationReason"];
        v38 = [v36 numberWithInt:{objc_msgSend(v37, "intValue")}];
        [v28 setObject:v38 forKeyedSubscript:@"MitigationReason"];

        v39 = MEMORY[0x277CCABB0];
        v40 = [v10 objectForKeyedSubscript:@"EstimatedEnergy"];
        v41 = [v39 numberWithInt:{objc_msgSend(v40, "intValue")}];
        [v28 setObject:v41 forKeyedSubscript:@"EstimatedEnergy"];

        v42 = MEMORY[0x277CCABB0];
        v43 = [v10 objectForKeyedSubscript:@"FatalCount"];
        v44 = [v42 numberWithInt:{objc_msgSend(v43, "intValue")}];
        [v28 setObject:v44 forKeyedSubscript:@"FatalCount"];

        v45 = MEMORY[0x277CCABB0];
        v46 = [v10 objectForKeyedSubscript:@"NonFatalCount"];
        v47 = [v45 numberWithInt:{objc_msgSend(v46, "intValue")}];
        [v28 setObject:v47 forKeyedSubscript:@"NonFatalCount"];

        v48 = MEMORY[0x277CCABB0];
        v49 = [v10 objectForKeyedSubscript:@"ThresholdCPUUsage"];
        v50 = [v48 numberWithInt:{objc_msgSend(v49, "intValue")}];
        [v28 setObject:v50 forKeyedSubscript:@"ThresholdCPUUsage"];

        v51 = MEMORY[0x277CCABB0];
        v52 = [v10 objectForKeyedSubscript:@"TimeWindowSize"];
        v53 = [v51 numberWithInt:{objc_msgSend(v52, "intValue")}];
        [v28 setObject:v53 forKeyedSubscript:@"TimeWindowSize"];

        v54 = MEMORY[0x277CCABB0];
        v55 = [v10 objectForKeyedSubscript:@"timestampEnd"];
        v56 = [v54 numberWithInt:{objc_msgSend(v55, "intValue")}];
        [v28 setObject:v56 forKeyedSubscript:@"timestampEnd"];

        [*(a1 + 32) handlePowerException:v28];
        dispatch_semaphore_signal(v87[5]);
      }

      else
      {
        v25 = [*(a1 + 32) workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __42__PLEnergyIssuesService_addUrsaResponders__block_invoke_5;
        block[3] = &unk_278259658;
        block[4] = *(a1 + 32);
        v74 = v13;
        dispatch_async(v25, block);

        [*(*(&buf + 1) + 40) setObject:@"running periodic" forKeyedSubscript:@"success"];
        dispatch_semaphore_signal(v87[5]);
      }
    }

    else
    {
      v20 = [v10 objectForKeyedSubscript:@"networkAdmit"];
      v21 = *(a1 + 32);
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __42__PLEnergyIssuesService_addUrsaResponders__block_invoke_3;
      v75[3] = &unk_27825DDA0;
      v75[4] = v21;
      v22 = v20;
      v76 = v22;
      v77 = v13;
      p_buf = &buf;
      v79 = &v92;
      v80 = &v86;
      [v21 executeUrsaClientCallWithBlock:v75];
    }
  }

  else
  {
    v16 = *(a1 + 32);
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __42__PLEnergyIssuesService_addUrsaResponders__block_invoke_277;
    v81[3] = &unk_27825DD78;
    v81[4] = v16;
    v82 = v13;
    v83 = &buf;
    v84 = &v92;
    v85 = &v86;
    [v16 executeUrsaClientCallWithBlock:v81];
  }

LABEL_25:
  v70 = v87[5];
  v71 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v70, v71))
  {
    [*(*(&buf + 1) + 40) setObject:@"timed out waiting for response" forKeyedSubscript:@"error"];
  }

  [*(*(&buf + 1) + 40) setObject:v93[5] forKeyedSubscript:@"requestUUID"];
  v17 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v86, 8);

  _Block_object_dispose(&v92, 8);
  _Block_object_dispose(&buf, 8);

LABEL_28:

  return v17;
}

void __42__PLEnergyIssuesService_addUrsaResponders__block_invoke_277(uint64_t a1)
{
  v2 = [*(a1 + 32) ursaClient];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__PLEnergyIssuesService_addUrsaResponders__block_invoke_2;
  v4[3] = &unk_27825DD50;
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  [v2 periodicCheckSince:v3 flag:v4 completionHandler:0.0];
}

void __42__PLEnergyIssuesService_addUrsaResponders__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = *(*(*(a1 + 40) + 8) + 40);
  v9 = a4;
  [v8 setObject:a2 forKeyedSubscript:@"error"];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v12 = v7;

  [*(*(*(a1 + 40) + 8) + 40) setObject:v9 forKeyedSubscript:@"payload"];
  dispatch_semaphore_signal(*(*(*(a1 + 56) + 8) + 40));
  dsema = [*(a1 + 32) currentUrsaCloudKitTask];

  dispatch_semaphore_signal(dsema);
}

void __42__PLEnergyIssuesService_addUrsaResponders__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) ursaClient];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__PLEnergyIssuesService_addUrsaResponders__block_invoke_4;
  v5[3] = &unk_27825DD50;
  v6 = *(a1 + 56);
  v7 = *(a1 + 72);
  v5[4] = *(a1 + 32);
  [v2 shouldAdmitFor:v3 impact:0 flag:v4 completionHandler:v5];
}

void __42__PLEnergyIssuesService_addUrsaResponders__block_invoke_4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = *(*(*(a1 + 40) + 8) + 40);
  v9 = a4;
  [v8 setObject:a2 forKeyedSubscript:@"error"];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v12 = v7;

  [*(*(*(a1 + 40) + 8) + 40) setObject:v9 forKeyedSubscript:@"payload"];
  dispatch_semaphore_signal(*(*(*(a1 + 56) + 8) + 40));
  dsema = [*(a1 + 32) currentUrsaCloudKitTask];

  dispatch_semaphore_signal(dsema);
}

uint64_t __42__PLEnergyIssuesService_addUrsaResponders__block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 defaultFetchWindow];
  v3 = *(a1 + 40);

  return [v2 runPeriodic:v3 withFlag:?];
}

void __42__PLEnergyIssuesService_addUrsaResponders__block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogUrsa();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Payload from Ursa Interaction via XPC: %@", &v10, 0xCu);
  }

  if (v6)
  {
    v8 = [(PLOperator *)PLEnergyIssuesService entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"UrsaInteraction"];
    v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v6];
    [*(a1 + 32) logEntry:v9];
  }

  else
  {
    v8 = PLLogUrsa();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_error_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_ERROR, "No payload available", &v10, 2u);
    }
  }
}

- (void)registerUrsa
{
  objc_initWeak(&location, self);
  workQueue = [(PLOperator *)self workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__PLEnergyIssuesService_registerUrsa__block_invoke;
  v4[3] = &unk_27825DDC8;
  objc_copyWeak(&v5, &location);
  [(PLEnergyIssuesService *)self registerTaskWith:@"com.apple.PerfPowerServices.ursaTask" inQueue:workQueue launchHandler:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __37__PLEnergyIssuesService_registerUrsa__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleUrsaTask:v3];
}

- (void)registerTaskWith:(id)with inQueue:(id)queue launchHandler:(id)handler
{
  v7 = MEMORY[0x277CF0808];
  handlerCopy = handler;
  queueCopy = queue;
  withCopy = with;
  sharedScheduler = [v7 sharedScheduler];
  [sharedScheduler registerForTaskWithIdentifier:withCopy usingQueue:queueCopy launchHandler:handlerCopy];
}

- (id)getRepeatingTaskWith:(id)with needsSubmit:(BOOL *)submit
{
  mEMORY[0x277CF0808] = [MEMORY[0x277CF0808] sharedScheduler];
  v6 = [mEMORY[0x277CF0808] taskRequestForIdentifier:@"com.apple.PerfPowerServices.ursaTask"];

  *submit = 0;
  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x277CF07E0]) initWithIdentifier:@"com.apple.PerfPowerServices.ursaTask"];
    *submit = 1;
  }

  return v6;
}

- (void)updateParamsForUrsaTask:(id)task
{
  taskCopy = task;
  [taskCopy setPriority:1];
  [taskCopy setRequiresNetworkConnectivity:1];
  [taskCopy setRequiresExternalPower:0];
  [taskCopy setInterval:21600.0];
}

- (void)submitTask:(id)task
{
  v17 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  v4 = PLLogUrsa();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [taskCopy identifier];
    *buf = 138412290;
    v14 = identifier;
    _os_log_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEFAULT, "Submitting task with id, %@...", buf, 0xCu);
  }

  mEMORY[0x277CF0808] = [MEMORY[0x277CF0808] sharedScheduler];
  v12 = 0;
  v7 = [mEMORY[0x277CF0808] submitTaskRequest:taskCopy error:&v12];
  v8 = v12;

  v9 = PLLogUrsa();
  v10 = v9;
  if ((v7 & 1) == 0)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    identifier2 = [taskCopy identifier];
    *buf = 138412546;
    v14 = identifier2;
    v15 = 2112;
    v16 = v8;
    _os_log_error_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_ERROR, "Failed to submit task with id, %@, error: %@", buf, 0x16u);
    goto LABEL_6;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    identifier2 = [taskCopy identifier];
    *buf = 138412290;
    v14 = identifier2;
    _os_log_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEFAULT, "Submitted task with id, %@", buf, 0xCu);
LABEL_6:
  }

LABEL_8:
}

- (void)updateTask:(id)task
{
  v17 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  v4 = PLLogUrsa();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [taskCopy identifier];
    *buf = 138412290;
    v14 = identifier;
    _os_log_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEFAULT, "Updating task with id, %@...", buf, 0xCu);
  }

  mEMORY[0x277CF0808] = [MEMORY[0x277CF0808] sharedScheduler];
  v12 = 0;
  v7 = [mEMORY[0x277CF0808] updateTaskRequest:taskCopy error:&v12];
  v8 = v12;

  v9 = PLLogUrsa();
  v10 = v9;
  if ((v7 & 1) == 0)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    identifier2 = [taskCopy identifier];
    *buf = 138412546;
    v14 = identifier2;
    v15 = 2112;
    v16 = v8;
    _os_log_error_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_ERROR, "Failed to update task with id, %@, error: %@", buf, 0x16u);
    goto LABEL_6;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    identifier2 = [taskCopy identifier];
    *buf = 138412290;
    v14 = identifier2;
    _os_log_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEFAULT, "Updated task with id, %@ successfully", buf, 0xCu);
LABEL_6:
  }

LABEL_8:
}

- (void)deregisterUrsa
{
  [(PLEnergyIssuesService *)self setUrsaClient:0];
  [(PLEnergyIssuesService *)self setUrsaResponder:0];
  [(PLEnergyIssuesService *)self setUrsaInteractionListener:0];
  currentUrsaCloudKitTask = [(PLEnergyIssuesService *)self currentUrsaCloudKitTask];

  if (currentUrsaCloudKitTask)
  {
    currentUrsaCloudKitTask2 = [(PLEnergyIssuesService *)self currentUrsaCloudKitTask];
    dispatch_semaphore_signal(currentUrsaCloudKitTask2);

    [(PLEnergyIssuesService *)self setCurrentUrsaCloudKitTask:0];
  }

  ursaClientQueue = [(PLEnergyIssuesService *)self ursaClientQueue];

  if (ursaClientQueue)
  {
    ursaClientQueue2 = [(PLEnergyIssuesService *)self ursaClientQueue];
    [ursaClientQueue2 cancelAllOperations];

    [(PLEnergyIssuesService *)self setUrsaClientQueue:0];
  }

  mEMORY[0x277CF0808] = [MEMORY[0x277CF0808] sharedScheduler];
  v9 = [mEMORY[0x277CF0808] taskRequestForIdentifier:@"com.apple.PerfPowerServices.ursaTask"];

  v8 = v9;
  if (v9)
  {
    [(PLEnergyIssuesService *)self deregister:v9];
    v8 = v9;
  }
}

- (void)deregister:(id)deregister
{
  v14 = *MEMORY[0x277D85DE8];
  deregisterCopy = deregister;
  v4 = PLLogUrsa();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [deregisterCopy identifier];
    v12 = 138412290;
    v13 = identifier;
    _os_log_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEFAULT, "Deregistering task with id, %@...", &v12, 0xCu);
  }

  mEMORY[0x277CF0808] = [MEMORY[0x277CF0808] sharedScheduler];
  identifier2 = [deregisterCopy identifier];
  v8 = [mEMORY[0x277CF0808] deregisterTaskWithIdentifier:identifier2];

  v9 = PLLogUrsa();
  v10 = v9;
  if (!v8)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    identifier3 = [deregisterCopy identifier];
    v12 = 138412290;
    v13 = identifier3;
    _os_log_error_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_ERROR, "Failed to deregister task with id, %@", &v12, 0xCu);
    goto LABEL_6;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    identifier3 = [deregisterCopy identifier];
    v12 = 138412290;
    v13 = identifier3;
    _os_log_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEFAULT, "Deregistered task with id, %@", &v12, 0xCu);
LABEL_6:
  }

LABEL_8:
}

- (void)handleUrsaTask:(id)task
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__PLEnergyIssuesService_handleUrsaTask___block_invoke;
  v5[3] = &unk_2782591D0;
  v5[4] = self;
  taskCopy = task;
  [taskCopy setExpirationHandler:v5];
  [(PLEnergyIssuesService *)self runPeriodic:0 withFlag:0.0];
  [taskCopy setTaskCompleted];
}

void __40__PLEnergyIssuesService_handleUrsaTask___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) ursaClient];
  [v1 cancel];
}

- (void)runPeriodic:(double)periodic withFlag:(id)flag
{
  v17 = *MEMORY[0x277D85DE8];
  flagCopy = flag;
  if (periodic <= 0.0)
  {
    [(PLEnergyIssuesService *)self defaultFetchWindow];
    periodic = v7;
  }

  v8 = PLLogUrsa();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    periodicCopy = periodic;
    v15 = 2112;
    v16 = flagCopy;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Running periodic with table update since %.2f %@", buf, 0x16u);
  }

  [(PLEnergyIssuesService *)self processExistingEntriesSequentially];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__PLEnergyIssuesService_runPeriodic_withFlag___block_invoke;
  v10[3] = &unk_27825CFA0;
  periodicCopy2 = periodic;
  v10[4] = self;
  v11 = flagCopy;
  v9 = flagCopy;
  [(PLEnergyIssuesService *)self executeUrsaClientCallWithBlock:v10];
}

void __46__PLEnergyIssuesService_runPeriodic_withFlag___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ursaClient];
  v3 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__PLEnergyIssuesService_runPeriodic_withFlag___block_invoke_2;
  v5[3] = &unk_27825DDF0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  [v2 periodicCheckSince:v4 flag:v5 completionHandler:v3];
}

- (double)defaultFetchWindow
{
  v10 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  v3 = [MEMORY[0x277CBEAA8] nearestMidnightBeforeDate:date];
  v4 = PLLogUrsa();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "defaulting to %@", &v8, 0xCu);
  }

  [v3 timeIntervalSince1970];
  v6 = v5;

  return v6 + -86400.0;
}

- (void)processExistingEntriesSequentially
{
  v26 = *MEMORY[0x277D85DE8];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v4 = [monotonicDate dateByAddingTimeInterval:-1209600.0];

  v5 = [(PLEnergyIssuesService *)self queryExistingUrsaEntries:v4];
  v6 = PLLogUrsa();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v25 = [v5 count];
    _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEFAULT, "Found %lu existing entries for update", buf, 0xCu);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if ([(PLEnergyIssuesService *)self isValidUrsaEntry:v12])
        {
          v13 = [(PLEnergyIssuesService *)self extractProcessNameFromEntry:v12];
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __59__PLEnergyIssuesService_processExistingEntriesSequentially__block_invoke;
          v16[3] = &unk_27825D6E8;
          v16[4] = self;
          v17 = v13;
          v18 = v12;
          v14 = v13;
          [(PLEnergyIssuesService *)self executeUrsaClientCallWithBlock:v16];
        }

        else
        {
          v14 = PLLogUrsa();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            dictionary = [v12 dictionary];
            *buf = 138412290;
            v25 = dictionary;
            _os_log_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEFAULT, "Invalid PLEntry. Skipping update for %@", buf, 0xCu);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }
}

void __59__PLEnergyIssuesService_processExistingEntriesSequentially__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ursaClient];
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__PLEnergyIssuesService_processExistingEntriesSequentially__block_invoke_2;
  v6[3] = &unk_27825DE18;
  v4 = v3;
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  v9 = *(a1 + 48);
  [v2 shouldAdmitFor:v4 impact:0 flag:0 completionHandler:v6];
}

void __59__PLEnergyIssuesService_processExistingEntriesSequentially__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PLLogUrsa();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v16 = 138412802;
    v17 = v11;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEFAULT, "Callback for %@ - error:%@ payload:%@", &v16, 0x20u);
  }

  if (!v7 && v9)
  {
    v12 = [v9 mutableCopy];
    v13 = [v12 objectForKeyedSubscript:@"process"];

    if (!v13)
    {
      v14 = [*(a1 + 40) extractProcessNameFromEntry:*(a1 + 48)];
      [v12 setObject:v14 forKeyedSubscript:@"process"];
    }

    v15 = [v12 objectForKeyedSubscript:@"action"];

    if (!v15)
    {
      [v12 setObject:@"ttr" forKeyedSubscript:@"action"];
    }

    [*(a1 + 40) handlePeriodicTableUpdateCallback:0 withRequestUUID:v8 withPayload:v12 forEntry:*(a1 + 48)];
LABEL_13:

    goto LABEL_14;
  }

  if (v7)
  {
    v12 = PLLogUrsa();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = v7;
      _os_log_error_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_ERROR, "Entry failed with error: %@", &v16, 0xCu);
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (id)queryExistingUrsaEntries:(id)entries
{
  v3 = *MEMORY[0x277D3F5D8];
  entriesCopy = entries;
  v5 = [(PLOperator *)PLEnergyIssuesService entryKeyForType:v3 andName:@"UrsaDefinition"];
  v6 = MEMORY[0x277CCACA8];
  v7 = MEMORY[0x277CCABB0];
  [entriesCopy timeIntervalSince1970];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 stringWithFormat:@"%@ >= %@ AND INSTR(%@, ':') > 0", @"timestampEnd", v10, @"driMessage"];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"SUBSTR(p1.%@, INSTR(p1.%@, ':') + 1) = SUBSTR(p2.%@, INSTR(p2.%@, ':') + 1)", @"driMessage", @"driMessage", @"driMessage", @"driMessage"];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT MAX(%@) FROM %@ p2 WHERE %@ ", @"timestampEnd", v5, v12];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT * FROM %@ p1 WHERE %@ AND %@ = (%@) ORDER BY %@ DESC", v5, v11, @"timestampEnd", v13, @"timestampEnd"];;
  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  v16 = objc_msgSend_storage(mEMORY[0x277D3F2A0]);
  v17 = [v16 entriesForKey:v5 withQuery:v14];

  return v17;
}

- (void)handlePeriodicTableUpdateCallback:(id)callback withRequestUUID:(id)d withPayload:(id)payload forEntry:(id)entry
{
  callbackCopy = callback;
  dCopy = d;
  payloadCopy = payload;
  entryCopy = entry;
  workQueue = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__PLEnergyIssuesService_handlePeriodicTableUpdateCallback_withRequestUUID_withPayload_forEntry___block_invoke;
  block[3] = &unk_27825DE40;
  v20 = dCopy;
  v21 = callbackCopy;
  v22 = payloadCopy;
  selfCopy = self;
  v24 = entryCopy;
  v15 = entryCopy;
  v16 = payloadCopy;
  v17 = callbackCopy;
  v18 = dCopy;
  dispatch_async(workQueue, block);
}

void __96__PLEnergyIssuesService_handlePeriodicTableUpdateCallback_withRequestUUID_withPayload_forEntry___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [(PLOperator *)PLEnergyIssuesService entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"UrsaSummary"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v2];
  [v3 setObject:*(a1 + 32) forKeyedSubscript:@"requestId"];
  if (*(a1 + 40))
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"error"];
  }

  else if (*(a1 + 48) && [*(a1 + 56) shouldUpdateTableFrom:*(a1 + 64) newPayload:?])
  {
    v5 = PLLogUrsa();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 56) extractProcessNameFromEntry:*(a1 + 64)];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEFAULT, "handling callback for %@", &v7, 0xCu);
    }

    [*(a1 + 56) updateExistingTableEntry:*(a1 + 64) withResponsePayload:*(a1 + 48)];
  }

  [*(a1 + 56) logEntry:v3];
  v4 = [*(a1 + 56) currentUrsaCloudKitTask];
  dispatch_semaphore_signal(v4);
}

- (void)updateExistingTableEntry:(id)entry withResponsePayload:(id)payload
{
  v29 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  payloadCopy = payload;
  v8 = [(PLOperator *)PLEnergyIssuesService entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"UrsaDefinition"];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8];
  v10 = [payloadCopy objectForKeyedSubscript:@"action"];

  v11 = MEMORY[0x277CCACA8];
  if (v10)
  {
    v12 = [payloadCopy objectForKeyedSubscript:@"action"];
    v13 = [payloadCopy objectForKeyedSubscript:@"process"];
    v14 = [v11 stringWithFormat:@"%@:%@", v12, v13];
  }

  else
  {
    v12 = [payloadCopy objectForKeyedSubscript:@"process"];
    v14 = [v11 stringWithFormat:@"%@:%@", @"ttr", v12];
  }

  [v9 setObject:v14 forKeyedSubscript:@"driMessage"];
  v15 = [payloadCopy objectForKeyedSubscript:@"radar"];
  [v9 setObject:v15 forKeyedSubscript:@"radar"];

  v16 = [entryCopy objectForKeyedSubscript:@"hitIn"];
  [v9 setObject:v16 forKeyedSubscript:@"hitIn"];

  v17 = [entryCopy objectForKeyedSubscript:@"timestampEnd"];
  [v9 setObject:v17 forKeyedSubscript:@"timestampEnd"];

  v18 = [payloadCopy objectForKeyedSubscript:@"fixedIn"];
  [v9 setObject:v18 forKeyedSubscript:@"fixedIn"];

  v19 = [payloadCopy objectForKeyedSubscript:@"impact"];
  [v9 setObject:v19 forKeyedSubscript:@"impact"];

  [(PLOperator *)self logEntry:v9];
  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  v21 = objc_msgSend_storage(mEMORY[0x277D3F2A0]);
  [v21 deleteEntryForKey:v8 WithRowID:{objc_msgSend(entryCopy, "entryID")}];

  v22 = PLLogUrsa();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    dictionary = [entryCopy dictionary];
    dictionary2 = [v9 dictionary];
    *buf = 138412546;
    v26 = dictionary;
    v27 = 2112;
    v28 = dictionary2;
    _os_log_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEFAULT, "Updated table entry for %@ with new entry %@", buf, 0x16u);
  }
}

- (void)handleUrsaCallback:(id)callback withRequestUUID:(id)d withPayload:(id)payload
{
  callbackCopy = callback;
  dCopy = d;
  payloadCopy = payload;
  workQueue = [(PLOperator *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__PLEnergyIssuesService_handleUrsaCallback_withRequestUUID_withPayload___block_invoke;
  v15[3] = &unk_2782591A8;
  v16 = dCopy;
  v17 = callbackCopy;
  v18 = payloadCopy;
  selfCopy = self;
  v12 = payloadCopy;
  v13 = callbackCopy;
  v14 = dCopy;
  dispatch_async(workQueue, v15);
}

void __72__PLEnergyIssuesService_handleUrsaCallback_withRequestUUID_withPayload___block_invoke(uint64_t a1)
{
  v13 = [(PLOperator *)PLEnergyIssuesService entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"UrsaSummary"];
  v2 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v13];
  [v2 setObject:*(a1 + 32) forKeyedSubscript:@"requestId"];
  if (*(a1 + 40))
  {
    [v2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"error"];
    goto LABEL_3;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:@"admit"];
    if (v5)
    {
      v6 = [*(a1 + 48) objectForKeyedSubscript:@"admit"];
      v7 = [v6 BOOLValue];

      if (v7)
      {
        v5 = [*(a1 + 56) requestUrsaNotificationAndLog:*(a1 + 48)];
      }

      else
      {
        v5 = 0;
      }
    }

    v8 = [*(a1 + 48) objectForKeyedSubscript:@"action"];
    if (!v8)
    {
      goto LABEL_16;
    }

    v9 = [*(a1 + 48) objectForKeyedSubscript:@"action"];
    if ([v9 isEqual:@"livability"])
    {
    }

    else
    {
      v10 = [*(a1 + 48) objectForKeyedSubscript:@"action"];
      v11 = [v10 isEqual:@"softwareUpdate"];

      if (!v11)
      {
        goto LABEL_16;
      }
    }

    v5 = [*(a1 + 56) requestUrsaNotificationAndLog:*(a1 + 48)];
LABEL_16:
    v12 = [*(a1 + 48) objectForKeyedSubscript:@"process"];

    if (v12)
    {
      [*(a1 + 56) logPowerExceptionTelemetry:*(a1 + 48) withNotified:v5 withRequestUUID:*(a1 + 32)];
    }
  }

LABEL_3:
  [*(a1 + 56) logEntry:v2];
  v3 = [*(a1 + 56) currentUrsaCloudKitTask];
  dispatch_semaphore_signal(v3);
}

- (void)logPowerExceptionTelemetry:(id)telemetry withNotified:(BOOL)notified withRequestUUID:(id)d
{
  notifiedCopy = notified;
  v41 = *MEMORY[0x277D85DE8];
  telemetryCopy = telemetry;
  dCopy = d;
  v10 = dCopy;
  if (!telemetryCopy)
  {
    v29 = PLLogUrsa();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_ERROR, "Invalid payload for log-power-exception event", buf, 2u);
    }

    goto LABEL_31;
  }

  v31 = notifiedCopy;
  v32 = dCopy;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = telemetryCopy;
  v13 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = v13;
  v15 = *v36;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v36 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v35 + 1) + 8 * i);
      v18 = [v12 objectForKeyedSubscript:v17];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [dictionary setObject:v18 forKeyedSubscript:v17];
        goto LABEL_16;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        stringValue = [v18 stringValue];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = MEMORY[0x277CCACA8];
          [v18 timeIntervalSince1970];
          stringValue = [v20 stringWithFormat:@"%.0f", v21];
        }

        else
        {
          if (!v18)
          {
            goto LABEL_16;
          }

          stringValue = [v18 description];
        }
      }

      v22 = stringValue;
      [dictionary setObject:stringValue forKeyedSubscript:v17];

LABEL_16:
    }

    v14 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
  }

  while (v14);
LABEL_18:

  v23 = [dictionary objectForKeyedSubscript:@"admit"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = [dictionary objectForKeyedSubscript:@"admit"];
    v25 = [v24 isEqualToString:@"1"];

    v10 = v32;
    selfCopy2 = self;
    v27 = v31;
    if (v25)
    {
      v28 = @"true";
      goto LABEL_25;
    }
  }

  else
  {

    v10 = v32;
    selfCopy2 = self;
    v27 = v31;
  }

  v28 = @"false";
LABEL_25:
  [dictionary setObject:v28 forKeyedSubscript:@"admit"];
  if (v27)
  {
    v30 = @"true";
  }

  else
  {
    v30 = @"false";
  }

  [dictionary setObject:v30 forKeyedSubscript:@"notified"];
  if (v10)
  {
    [dictionary setObject:v10 forKeyedSubscript:@"requestUUID"];
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __81__PLEnergyIssuesService_logPowerExceptionTelemetry_withNotified_withRequestUUID___block_invoke;
  v33[3] = &unk_278259658;
  v33[4] = selfCopy2;
  v34 = dictionary;
  v29 = dictionary;
  [(PLEnergyIssuesService *)selfCopy2 executeUrsaClientCallWithBlock:v33];

LABEL_31:
}

void __81__PLEnergyIssuesService_logPowerExceptionTelemetry_withNotified_withRequestUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ursaClient];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __81__PLEnergyIssuesService_logPowerExceptionTelemetry_withNotified_withRequestUUID___block_invoke_2;
  v4[3] = &unk_27825DDF0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  [v2 reportTelemetryEvent:@"log-power-exception" payload:v3 flag:0 completionHandler:v4];
}

void __81__PLEnergyIssuesService_logPowerExceptionTelemetry_withNotified_withRequestUUID___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = PLLogUrsa();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v5;
      _os_log_error_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_ERROR, "failed to log power exception event <%@>: %@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "logged power exception event <%@>", &v10, 0xCu);
  }

  v9 = [*(a1 + 32) currentUrsaCloudKitTask];
  dispatch_semaphore_signal(v9);
}

- (BOOL)requestUrsaNotificationAndLog:(id)log
{
  logCopy = log;
  v5 = logCopy;
  if (!logCopy)
  {
    v8 = PLLogUrsa();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_ERROR, "invalid power exception, skipping notify", buf, 2u);
    }

    goto LABEL_10;
  }

  v6 = [logCopy objectForKeyedSubscript:@"process"];

  if (v6)
  {
    [(PLEnergyIssuesService *)self writeUrsaNotificationToTable:v5];
  }

  if (!+[PLEnergyIssuesService shouldPopUpForPowerException])
  {
    v8 = PLLogUrsa();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEFAULT, "skipping notify due to rate limit", v10, 2u);
    }

LABEL_10:

    v7 = 0;
    goto LABEL_11;
  }

  v7 = [(PLEnergyIssuesService *)self postUrsaNotification:v5];
LABEL_11:

  return v7;
}

- (BOOL)postUrsaNotification:(id)notification
{
  v24 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = PLLogUrsa();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = notificationCopy;
    _os_log_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEFAULT, "posting %@", &v20, 0xCu);
  }

  v6 = [notificationCopy objectForKeyedSubscript:@"admit"];

  if (v6)
  {
    v7 = objc_msgSend_storage(self);
    [v7 blockingFlushCachesWithReason:@"ursa-ttr"];
  }

  v8 = PLQueryRegistered();
  v9 = v8;
  if (!v8 || ([v8 objectForKeyedSubscript:@"UrsaNotificationState"], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    v14 = PLLogUrsa();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      v16 = "invalid response";
      v17 = v14;
      v18 = 2;
LABEL_15:
      _os_log_error_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_ERROR, v16, &v20, v18);
    }

LABEL_16:
    v15 = 0;
    goto LABEL_17;
  }

  v11 = [v9 objectForKeyedSubscript:@"UrsaNotificationState"];
  bOOLValue = [v11 BOOLValue];

  v13 = PLLogUrsa();
  v14 = v13;
  if (!bOOLValue)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v20 = 138412546;
      v21 = notificationCopy;
      v22 = 2112;
      v23 = v9;
      v16 = "failed to post notification, %@ -> %@";
      v17 = v14;
      v18 = 22;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412546;
    v21 = notificationCopy;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEFAULT, "posted notification %@ -> %@", &v20, 0x16u);
  }

  v15 = 1;
LABEL_17:

  return v15;
}

- (void)writeUrsaNotificationToTable:(id)table
{
  v28 = *MEMORY[0x277D85DE8];
  tableCopy = table;
  v5 = [(PLOperator *)PLEnergyIssuesService entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"UrsaDefinition"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  v7 = [tableCopy objectForKeyedSubscript:@"action"];

  if (v7)
  {
    v8 = [tableCopy objectForKeyedSubscript:@"action"];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 stringByAppendingString:@":"];

  v10 = [tableCopy objectForKeyedSubscript:@"process"];

  if (v10)
  {
    v11 = [tableCopy objectForKeyedSubscript:@"process"];
    v12 = [v9 stringByAppendingString:v11];

    v9 = v12;
  }

  [v6 setObject:v9 forKeyedSubscript:@"driMessage"];
  v13 = [tableCopy objectForKeyedSubscript:@"radar"];

  if (v13)
  {
    v14 = [tableCopy objectForKeyedSubscript:@"radar"];
    [v6 setObject:v14 forKeyedSubscript:@"radar"];
  }

  v15 = [tableCopy objectForKeyedSubscript:@"fixedIn"];

  if (v15)
  {
    v16 = [tableCopy objectForKeyedSubscript:@"fixedIn"];
    [v6 setObject:v16 forKeyedSubscript:@"fixedIn"];
  }

  v17 = [tableCopy objectForKeyedSubscript:@"impact"];

  if (v17)
  {
    v18 = [tableCopy objectForKeyedSubscript:@"impact"];
    [v6 setObject:v18 forKeyedSubscript:@"impact"];
  }

  else
  {
    [v6 setObject:&unk_282C118E0 forKeyedSubscript:@"impact"];
  }

  v19 = [tableCopy objectForKeyedSubscript:@"timestamp"];

  if (v19)
  {
    v20 = [tableCopy objectForKeyedSubscript:@"timestamp"];
    [v6 setObject:v20 forKeyedSubscript:@"timestampEnd"];
  }

  buildVersion = [MEMORY[0x277D3F258] buildVersion];
  [v6 setObject:buildVersion forKeyedSubscript:@"hitIn"];

  [(PLOperator *)self logEntry:v6];
  v22 = PLLogUrsa();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    dictionary = [v6 dictionary];
    v24 = 138412546;
    v25 = @"UrsaDefinition";
    v26 = 2112;
    v27 = dictionary;
    _os_log_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEFAULT, "wrote notification data to %@ table: %@", &v24, 0x16u);
  }
}

- (void)executeUrsaClientCallWithBlock:(id)block
{
  blockCopy = block;
  v5 = MEMORY[0x277CCA8C8];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __56__PLEnergyIssuesService_executeUrsaClientCallWithBlock___block_invoke;
  v12 = &unk_27825DE68;
  selfCopy = self;
  v14 = blockCopy;
  v6 = blockCopy;
  v7 = [v5 blockOperationWithBlock:&v9];
  v8 = [(PLEnergyIssuesService *)self ursaClientQueue:v9];
  [v8 addOperation:v7];
}

uint64_t __56__PLEnergyIssuesService_executeUrsaClientCallWithBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentUrsaCloudKitTask];
  v3 = dispatch_time(0, 300000000000);
  dispatch_semaphore_wait(v2, v3);

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)checkUrsaBootArgs
{
  v34 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F258] deviceRebooted])
  {
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:*MEMORY[0x277D3F070]];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"ursa"];
      v6 = PLLogUrsa();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEFAULT, "checking for boot args", &buf, 2u);
      }

      deviceBootArgs = [MEMORY[0x277D3F258] deviceBootArgs];
      v8 = [PLEnergyIssuesService parseBootArgs:deviceBootArgs];

      v9 = PLLogUrsa();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v8;
        _os_log_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_INFO, "found args: %@", &buf, 0xCu);
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v30 = 0x3032000000;
      v31 = __Block_byref_object_copy__10;
      v32 = __Block_byref_object_dispose__10;
      v33 = 0;
      v10 = [v5 objectForKeyedSubscript:@"bootargs"];
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __42__PLEnergyIssuesService_checkUrsaBootArgs__block_invoke;
      v22 = &unk_27825DE90;
      v11 = v8;
      v23 = v11;
      p_buf = &buf;
      [v10 enumerateKeysAndObjectsUsingBlock:&v19];

      if (*(*(&buf + 1) + 40))
      {
        v12 = PLLogUrsa();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(*(&buf + 1) + 40);
          *v27 = 138412290;
          v28 = v13;
          _os_log_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEFAULT, "notifying boot arg %@", v27, 0xCu);
        }

        v14 = [(PLOperator *)PLEnergyIssuesService entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"UrsaSummary", v19, v20, v21, v22];
        v15 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v14];
        [v15 setObject:@"bootarg" forKeyedSubscript:@"requestId"];
        [v15 setObject:&unk_282C118F8 forKeyedSubscript:@"countNotification"];
        [(PLOperator *)self logEntry:v15];
        v16 = objc_msgSend_storage(self);
        [v16 blockingFlushCachesWithReason:@"ursa"];

        v17 = *(*(&buf + 1) + 40);
        v25 = @"bootarg";
        v26 = v17;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        [(PLEnergyIssuesService *)self postUrsaNotification:v18];
      }

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v5 = PLLogUrsa();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, "failed to read configuration", &buf, 2u);
      }
    }
  }

  else
  {
    v4 = PLLogUrsa();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEFAULT, "skipping boot arg check", &buf, 2u);
    }
  }
}

void __42__PLEnergyIssuesService_checkUrsaBootArgs__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = [v7 objectForKeyedSubscript:@"values"];

    if (v9)
    {
      v10 = MEMORY[0x277CBEB98];
      v11 = [v7 objectForKeyedSubscript:@"values"];
      v12 = [v10 setWithArray:v11];

      v13 = [*(a1 + 32) objectForKeyedSubscript:v6];
      if ([v12 containsObject:v13])
      {
        v14 = PLLogUrsa();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = 138412290;
          v16 = v6;
          _os_log_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_INFO, "found boot arg:%@", &v15, 0xCu);
        }

        objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      }
    }
  }
}

- (void)registerPowerExceptionCallbacks
{
  if (_os_feature_enabled_impl())
  {
    v3 = objc_alloc(MEMORY[0x277D3F1A8]);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __56__PLEnergyIssuesService_registerPowerExceptionCallbacks__block_invoke;
    v6[3] = &unk_2782597E8;
    v6[4] = self;
    v4 = [v3 initWithOperator:self forEntryKey:@"XPCMetrics_CPUViolations_1_2" withBlock:v6];
    [(PLEnergyIssuesService *)self setPowerExceptionListener:v4];
  }

  else
  {
    v5 = PLLogUrsa();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEFAULT, "skipping registration for power exceptions callbacks", buf, 2u);
    }
  }
}

void __56__PLEnergyIssuesService_registerPowerExceptionCallbacks__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"entry"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"FromPowerExceptions"];
    v6 = [v5 BOOLValue];

    if (v6)
    {
      v7 = [v4 objectForKeyedSubscript:@"ScenarioIdentifier"];
      if ([v7 isEqualToString:@"ScheduledIntensive"])
      {
        v8 = PLLogUrsa();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *v9 = 0;
          _os_log_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_INFO, "skipping PE due to schedule", v9, 2u);
        }
      }

      else
      {
        [*(a1 + 32) handlePowerException:v4];
      }
    }

    else
    {
      v7 = PLLogUrsa();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_INFO, "skipping PE due to not-PE", v10, 2u);
      }
    }
  }

  else
  {
    v7 = PLLogUrsa();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_ERROR, "invalid PE entry", buf, 2u);
    }
  }
}

- (void)handlePowerException:(id)exception
{
  v53 = *MEMORY[0x277D85DE8];
  exceptionCopy = exception;
  v5 = PLLogUrsa();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v52 = exceptionCopy;
    _os_log_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_INFO, "handling PE %@", buf, 0xCu);
  }

  if (!exceptionCopy)
  {
    v9 = PLLogUrsa();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_ERROR, "nil entry recieved in listener", buf, 2u);
    }

    goto LABEL_56;
  }

  v6 = [exceptionCopy objectForKeyedSubscript:@"IssueType"];
  if ([v6 intValue])
  {
    v7 = [exceptionCopy objectForKeyedSubscript:@"IssueType"];
    v8 = [v7 intValue] == 1;

    if (!v8)
    {
      v9 = PLLogUrsa();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v10 = "skipping non-CPU PE";
LABEL_15:
        v13 = v9;
        v14 = OS_LOG_TYPE_INFO;
        v15 = 2;
LABEL_20:
        _os_log_impl(&dword_21A4C6000, v13, v14, v10, buf, v15);
        goto LABEL_56;
      }

      goto LABEL_56;
    }
  }

  else
  {
  }

  v11 = [exceptionCopy objectForKeyedSubscript:@"MitigationType"];
  intValue = [v11 intValue];

  if (!intValue)
  {
    v16 = [exceptionCopy objectForKeyedSubscript:@"MitigationReason"];
    intValue2 = [v16 intValue];

    if (intValue2 <= 0x1A && ((1 << intValue2) & 0x4760842) != 0)
    {
      v9 = PLLogUrsa();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v52) = intValue2;
        v10 = "skipping exempt PE due to %d";
        v13 = v9;
        v14 = OS_LOG_TYPE_DEFAULT;
        v15 = 8;
        goto LABEL_20;
      }

      goto LABEL_56;
    }

LABEL_21:
    v18 = PLLogUrsa();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v52 = exceptionCopy;
      _os_log_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_INFO, "handling PE entry:%@", buf, 0xCu);
    }

    v9 = [exceptionCopy objectForKeyedSubscript:@"CoalitionName"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v9 length])
    {
      v19 = PLLogUrsa();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEFAULT, "falling back to process name", buf, 2u);
      }

      v20 = [exceptionCopy objectForKeyedSubscript:@"ProcessName"];

      v9 = v20;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 length])
    {
      if ([v9 hasPrefix:@"xpc."])
      {
        v21 = [v9 substringFromIndex:4];

        v9 = v21;
      }

      v22 = [exceptionCopy objectForKeyedSubscript:@"EstimatedEnergy"];
      unsignedIntValue = [v22 unsignedIntValue];

      v45 = [(PLOperator *)PLEnergyIssuesService entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"UrsaSummary"];
      v24 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v45];
      [v24 setObject:v9 forKeyedSubscript:@"peProcess"];
      [v24 setObject:&unk_282C118E0 forKeyedSubscript:@"countNotification"];
      v25 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[NSObject entryID](exceptionCopy, "entryID")}];
      [v24 setObject:v25 forKeyedSubscript:@"peFK_ID"];

      safeguardsManagingClient = [(PLEnergyIssuesService *)self safeguardsManagingClient];
      v50 = 0;
      v27 = [safeguardsManagingClient getMitigationPolicy:&v50];
      v28 = v50;
      bOOLValue = [v27 BOOLValue];

      if (v28)
      {
        v30 = PLLogUrsa();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v52 = v28;
          _os_log_error_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_ERROR, "failed to read mitigation policy: %@", buf, 0xCu);
        }
      }

      v31 = PLLogUrsa();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v52) = bOOLValue;
        _os_log_impl(&dword_21A4C6000, v31, OS_LOG_TYPE_DEFAULT, "mitigations are %d", buf, 8u);
      }

      v32 = [exceptionCopy objectForKeyedSubscript:@"FatalCount"];
      v33 = [exceptionCopy objectForKeyedSubscript:@"NonFatalCount"];
      if ([PLEnergyIssuesService shouldPopUpForPowerExceptionWithFatalCount:v32 withNonFatalCount:v33 withMitigationsEnabled:bOOLValue])
      {
        v34 = [exceptionCopy objectForKeyedSubscript:@"ThresholdCPUUsage"];
        intValue3 = [v34 intValue];

        v36 = PLLogUrsa();
        v37 = v36;
        if (intValue3)
        {
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v52 = v9;
            _os_log_impl(&dword_21A4C6000, v37, OS_LOG_TYPE_DEFAULT, "notify exception (%@)", buf, 0xCu);
          }

          [MEMORY[0x277D3F058] defaultBatteryEnergyCapacity];
          v39 = v38;
          v40 = unsignedIntValue / 0x3E8;
          if (v38 >= v40)
          {
            v43 = [exceptionCopy objectForKeyedSubscript:@"TimeWindowSize"];
            intValue4 = [v43 intValue];

            v41 = ((360000 * v40) / v39 / intValue4);
          }

          else
          {
            v41 = 0;
          }

          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __46__PLEnergyIssuesService_handlePowerException___block_invoke;
          v46[3] = &unk_27825DEB8;
          v46[4] = self;
          v47 = v9;
          v49 = v41;
          v48 = exceptionCopy;
          [(PLEnergyIssuesService *)self executeUrsaClientCallWithBlock:v46];
          [v24 setObject:&unk_282C118F8 forKeyedSubscript:@"countNotification"];
        }

        else
        {
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_21A4C6000, v37, OS_LOG_TYPE_ERROR, "skipping notify due to not threshold-based", buf, 2u);
          }
        }
      }

      else
      {
        v42 = PLLogUrsa();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_21A4C6000, v42, OS_LOG_TYPE_INFO, "skipping notify", buf, 2u);
        }

        [v24 setObject:@"pePolicy" forKeyedSubscript:@"peReason"];
      }

      [(PLOperator *)self logEntry:v24];
    }

    else
    {
      v24 = PLLogUrsa();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_ERROR, "invalid proc name for exception", buf, 2u);
      }
    }

    goto LABEL_56;
  }

  if (intValue != -1)
  {
    goto LABEL_21;
  }

  v9 = PLLogUrsa();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v10 = "skipping PE";
    goto LABEL_15;
  }

LABEL_56:
}

void __46__PLEnergyIssuesService_handlePowerException___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ursaClient];
  v3 = *(a1 + 56);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__PLEnergyIssuesService_handlePowerException___block_invoke_2;
  v5[3] = &unk_27825DE18;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 40);
  [v2 shouldAdmitFor:v4 impact:v3 flag:0 completionHandler:v5];
}

void __46__PLEnergyIssuesService_handlePowerException___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v11 = a2;
  v7 = a3;
  v8 = [*(a1 + 32) insertSystemTime:a4 fromPLEntry:*(a1 + 40)];
  v9 = [v8 objectForKeyedSubscript:@"process"];

  if (!v9)
  {
    [v8 setObject:*(a1 + 48) forKeyedSubscript:@"process"];
  }

  v10 = [v8 objectForKeyedSubscript:@"action"];

  if (!v10)
  {
    [v8 setObject:@"ttr" forKeyedSubscript:@"action"];
  }

  [*(a1 + 32) handleUrsaCallback:v11 withRequestUUID:v7 withPayload:v8];
}

- (id)insertSystemTime:(id)time fromPLEntry:(id)entry
{
  v26 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  entryCopy = entry;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (!timeCopy || (isKindOfClass & 1) != 0)
  {
    v9 = PLLogUrsa();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_ERROR, "invalid payload for timestamp", &v24, 2u);
    }

    goto LABEL_16;
  }

  v8 = [timeCopy mutableCopy];
  if (!v8)
  {
    v15 = PLLogUrsa();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_ERROR, "failed to copy payload dictionary", &v24, 2u);
    }

    v9 = 0;
LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  v9 = v8;
  if (entryCopy)
  {
    v10 = [entryCopy objectForKeyedSubscript:@"timestampEnd"];

    if (v10)
    {
      v11 = [entryCopy objectForKeyedSubscript:@"timestampEnd"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v22 = PLLogUrsa();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v24 = 138412290;
            v25 = v11;
            _os_log_error_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_ERROR, "violation end time is neither NSNumber nor NSDate: %@", &v24, 0xCu);
          }

          v23 = v9;
          goto LABEL_31;
        }

        v17 = MEMORY[0x277CBEAA8];
        [v11 doubleValue];
        v12 = [v17 dateWithTimeIntervalSince1970:?];
      }

      v18 = v12;
      convertFromMonotonicToSystem = [v12 convertFromMonotonicToSystem];
      if (convertFromMonotonicToSystem)
      {
        [v9 setObject:convertFromMonotonicToSystem forKeyedSubscript:@"timestamp"];
      }

      else
      {
        v20 = PLLogUrsa();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v24) = 0;
          _os_log_error_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_ERROR, "failed to convert exception monotonic time to system time", &v24, 2u);
        }
      }

      v21 = v9;

LABEL_31:
      v14 = v9;
      goto LABEL_17;
    }
  }

  v13 = PLLogUrsa();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v24) = 0;
    _os_log_error_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_ERROR, "invalid violation monotonic time for exception", &v24, 2u);
  }

  v9 = v9;
  v14 = v9;
LABEL_17:

  return v14;
}

- (BOOL)isValidUrsaEntry:(id)entry
{
  v24 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  v4 = entryCopy;
  if (entryCopy)
  {
    v5 = [entryCopy objectForKeyedSubscript:@"driMessage"];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v5;
        if (![v5 length]|| [v5 rangeOfString:@":"]== 0x7FFFFFFFFFFFFFFFLL)
        {
          v6 = PLLogUrsa();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_ERROR, "driMessage empty or missing ':'", buf, 2u);
          }

          v7 = 0;
          goto LABEL_40;
        }

        v6 = [v4 objectForKeyedSubscript:@"timestampEnd"];
        if (v6)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v10 = [v4 objectForKeyedSubscript:@"hitIn"];
            if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              if ([v10 length])
              {
                v11 = [v4 objectForKeyedSubscript:@"radar"];
                if (v11)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v12 = PLLogUrsa();
                    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_ERROR, "radar present but not NSNumber", buf, 2u);
                    }

                    v7 = 0;
                    goto LABEL_62;
                  }
                }

                v12 = [v4 objectForKeyedSubscript:@"impact"];
                if (v12)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v13 = PLLogUrsa();
                    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_ERROR, "impact present but not NSNumber", buf, 2u);
                    }

                    v7 = 0;
                    goto LABEL_61;
                  }
                }

                v13 = [v4 objectForKeyedSubscript:@"fixedIn"];
                if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  v14 = PLLogUrsa();
                  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_ERROR, "fixedInBuild present but not NSString", buf, 2u);
                  }
                }

                else
                {
                  v14 = [v5 componentsSeparatedByString:@":"];
                  if ([v14 count]== 2)
                  {
                    v15 = [v14 objectAtIndexedSubscript:0];
                    if ([v15 length])
                    {
                      v21 = v15;
                      v7 = 1;
                      v16 = [v14 objectAtIndexedSubscript:1];
                      v20 = [v16 length];

                      if (v20)
                      {
LABEL_60:

LABEL_61:
LABEL_62:

                        goto LABEL_36;
                      }
                    }

                    else
                    {
                    }
                  }

                  v19 = PLLogUrsa();
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v23 = v5;
                    _os_log_error_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_ERROR, "driMessage format invalid, expected 'action:process' got '%@'", buf, 0xCu);
                  }
                }

                v7 = 0;
                goto LABEL_60;
              }

              v11 = PLLogUrsa();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                v18 = "hitInBuild is empty string";
LABEL_50:
                _os_log_error_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_ERROR, v18, buf, 2u);
              }
            }

            else
            {
              v11 = PLLogUrsa();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                v18 = "hitInBuild missing or not a string";
                goto LABEL_50;
              }
            }

            v7 = 0;
LABEL_36:

LABEL_39:
LABEL_40:

            goto LABEL_15;
          }

          v10 = PLLogUrsa();
          if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
LABEL_38:
            v7 = 0;
            goto LABEL_39;
          }

          *buf = 0;
          v17 = "timestampEnd not NSDate or NSNumber";
        }

        else
        {
          v10 = PLLogUrsa();
          if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_38;
          }

          *buf = 0;
          v17 = "timestampEnd missing";
        }

        _os_log_error_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_ERROR, v17, buf, 2u);
        goto LABEL_38;
      }
    }

    v8 = PLLogUrsa();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_ERROR, "driMessage missing or not a string", buf, 2u);
    }
  }

  else
  {
    v5 = PLLogUrsa();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, "Entry is nil", buf, 2u);
    }
  }

  v7 = 0;
LABEL_15:

  return v7;
}

- (BOOL)shouldUpdateTableFrom:(id)from newPayload:(id)payload
{
  LOBYTE(v4) = 0;
  if (from && payload)
  {
    payloadCopy = payload;
    v8 = [(PLEnergyIssuesService *)self extractActionfromEntry:from];
    v9 = [payloadCopy objectForKeyedSubscript:@"action"];

    if (v9 && ([v8 isEqualToString:@"softwareUpdate"] & 1) == 0)
    {
      v4 = [v8 isEqualToString:v9] ^ 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (id)extractActionfromEntry:(id)entry
{
  v3 = [entry objectForKeyedSubscript:@"driMessage"];
  v4 = [v3 componentsSeparatedByString:@":"];
  if ([v4 count] == 2)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)extractProcessNameFromEntry:(id)entry
{
  v3 = [entry objectForKeyedSubscript:@"driMessage"];
  v4 = [v3 componentsSeparatedByString:@":"];
  if ([v4 count] == 2)
  {
    v5 = [v4 objectAtIndexedSubscript:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)parseBootArgs:(id)args
{
  v3 = MEMORY[0x277CCA900];
  argsCopy = args;
  whitespaceCharacterSet = [v3 whitespaceCharacterSet];
  v6 = [argsCopy componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39__PLEnergyIssuesService_parseBootArgs___block_invoke;
  v11[3] = &unk_278259C68;
  v8 = dictionary;
  v12 = v8;
  [v6 enumerateObjectsUsingBlock:v11];
  if ([v8 count])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __39__PLEnergyIssuesService_parseBootArgs___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 length])
  {
    if ([v3 rangeOfString:@"="] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(a1 + 32) setObject:@"?" forKeyedSubscript:v3];
    }

    else
    {
      v4 = [v3 componentsSeparatedByString:@"="];
      if ([v4 count] == 2)
      {
        v5 = [v4 firstObject];
        v6 = [v4 lastObject];
        v7 = v6;
        if (v5 && v6)
        {
          [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
        }

        else
        {
          v8 = PLLogUrsa();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v9 = 138412290;
            v10 = v3;
            _os_log_error_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_ERROR, "failed to parse %@", &v9, 0xCu);
          }
        }
      }

      else
      {
        v5 = PLLogUrsa();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v9 = 138412290;
          v10 = v3;
          _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, "failed to parse %@", &v9, 0xCu);
        }
      }
    }
  }
}

+ (id)createIssueEntriesFrom:(id)from forKey:(id)key now:(id)now midnight:(id)midnight
{
  v80 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  keyCopy = key;
  nowCopy = now;
  midnightCopy = midnight;
  if (fromCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v57 = fromCopy;
    v10 = fromCopy;
    v11 = [v10 countByEnumeratingWithState:&v73 objects:v79 count:16];
    if (!v11)
    {
      goto LABEL_51;
    }

    v12 = v11;
    v13 = @"radar";
    v14 = @"impact";
    v63 = *v74;
    while (1)
    {
      v15 = 0;
      do
      {
        if (*v74 != v63)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v73 + 1) + 8 * v15);
        v17 = [v16 objectForKeyedSubscript:{v13, v57}];
        v18 = [v16 objectForKeyedSubscript:v14];
        v70 = [v16 objectForKeyedSubscript:@"timestampStart"];
        v69 = [v16 objectForKeyedSubscript:@"timestampEnd"];
        v68 = [v16 objectForKeyedSubscript:@"hitIn"];
        v67 = [v16 objectForKeyedSubscript:@"fixedIn"];
        v72 = [v16 objectForKeyedSubscript:@"isCritical"];
        v66 = [v16 objectForKeyedSubscript:@"timestampInvalid"];
        v71 = [v16 objectForKeyedSubscript:@"driMessage"];
        v19 = [v16 objectForKeyedSubscript:@"notificationMessage"];
        v64 = v18;
        v65 = v19;
        if (!v17 || !v18 || !v70 || !v69 || !v68 || !v67 || !v72 || !v66 || !v71 || !v19)
        {
          v29 = PLLogUrsa();
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_30;
          }

          *buf = 138412290;
          v78 = v16;
          v37 = v29;
          v38 = "Insufficient information for issue. Given information: %@";
          goto LABEL_49;
        }

        null = [MEMORY[0x277CBEB68] null];
        if (v17 == null)
        {
          goto LABEL_28;
        }

        null2 = [MEMORY[0x277CBEB68] null];
        if (v72 == null2)
        {
          goto LABEL_27;
        }

        v62 = v17;
        v22 = v14;
        v23 = v13;
        v24 = v10;
        null3 = [MEMORY[0x277CBEB68] null];
        v26 = null3;
        if (v71 == null3)
        {

          v10 = v24;
          v13 = v23;
          v14 = v22;
LABEL_27:

LABEL_28:
LABEL_29:
          v29 = PLLogUrsa();
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_30;
          }

          *buf = 138412290;
          v78 = v16;
          v37 = v29;
          v38 = "Null data found in issue: %@";
LABEL_49:
          _os_log_error_impl(&dword_21A4C6000, v37, OS_LOG_TYPE_ERROR, v38, buf, 0xCu);
          goto LABEL_30;
        }

        null4 = [MEMORY[0x277CBEB68] null];

        v28 = v65 == null4;
        v10 = v24;
        v13 = v23;
        v14 = v22;
        v17 = v62;
        if (v28)
        {
          goto LABEL_29;
        }

        v29 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:keyCopy withDate:nowCopy];
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v62, "unsignedIntValue")}];
        [v29 setObject:v30 forKeyedSubscript:v13];

        v31 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v72, "BOOLValue")}];
        [v29 setObject:v31 forKeyedSubscript:@"isCritical"];

        [v29 setObject:v71 forKeyedSubscript:@"driMessage"];
        [v29 setObject:v65 forKeyedSubscript:@"notificationMessage"];
        null5 = [MEMORY[0x277CBEB68] null];

        if (v66 == null5)
        {
          v34 = 0.0;
LABEL_33:
          [v29 setObject:midnightCopy forKeyedSubscript:@"timestampInvalid"];
          v36 = 0;
          goto LABEL_34;
        }

        [v66 doubleValue];
        v34 = v33;
        if (v33 == 0.0)
        {
          goto LABEL_33;
        }

        v35 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
        [v29 setObject:v35 forKeyedSubscript:@"timestampInvalid"];

        v36 = 1;
LABEL_34:
        null6 = [MEMORY[0x277CBEB68] null];

        if (v64 != null6)
        {
          v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v64, "unsignedIntValue")}];
          [v29 setObject:v40 forKeyedSubscript:v22];
        }

        null7 = [MEMORY[0x277CBEB68] null];

        if (v70 != null7)
        {
          v42 = MEMORY[0x277CCABB0];
          [v70 doubleValue];
          v43 = [v42 numberWithDouble:?];
          [v29 setObject:v43 forKeyedSubscript:@"timestampStart"];
        }

        null8 = [MEMORY[0x277CBEB68] null];

        if (v69 != null8)
        {
          v45 = MEMORY[0x277CCABB0];
          [v69 doubleValue];
          v46 = [v45 numberWithDouble:?];
          [v29 setObject:v46 forKeyedSubscript:@"timestampEnd"];
        }

        null9 = [MEMORY[0x277CBEB68] null];

        if (v68 != null9)
        {
          v48 = [MEMORY[0x277CCACA8] stringWithString:?];
          [v29 setObject:v48 forKeyedSubscript:@"hitIn"];
        }

        null10 = [MEMORY[0x277CBEB68] null];

        if (v67 != null10)
        {
          v50 = [MEMORY[0x277CCACA8] stringWithString:?];
          [v29 setObject:v50 forKeyedSubscript:@"fixedIn"];
        }

        v51 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v34];
        v52 = v51;
        if (!v36 || ([v51 laterDate:nowCopy], v53 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend(v53, "isEqualToDate:", nowCopy), v53, (v54 & 1) == 0))
        {
          [array addObject:v29];
        }

        v17 = v62;
LABEL_30:

        ++v15;
      }

      while (v12 != v15);
      v55 = [v10 countByEnumeratingWithState:&v73 objects:v79 count:16];
      v12 = v55;
      if (!v55)
      {
LABEL_51:

        fromCopy = v57;
        goto LABEL_53;
      }
    }
  }

  array = 0;
LABEL_53:

  return array;
}

+ (BOOL)shouldPopUpForPowerExceptionWithFatalCount:(id)count withNonFatalCount:(id)fatalCount withMitigationsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  fatalCountCopy = fatalCount;
  v8 = !enabledCopy || [count intValue] >= 1 && objc_msgSend(fatalCountCopy, "intValue") > 0;

  return v8;
}

+ (BOOL)shouldPopUpForPowerExceptionForProcess:(id)process
{
  processCopy = process;
  if (processCopy)
  {
    if (qword_2811F4C60 != -1)
    {
      dispatch_once(&qword_2811F4C60, &__block_literal_global_496);
    }

    v4 = [qword_2811F4C58 containsObject:processCopy];
  }

  else
  {
    v5 = PLLogUrsa();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, "invalid proc name", v7, 2u);
    }

    v4 = 0;
  }

  return v4;
}

uint64_t __64__PLEnergyIssuesService_shouldPopUpForPowerExceptionForProcess___block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithArray:&unk_282C14B98];
  qword_2811F4C58 = v0;

  return MEMORY[0x2821F96F8](v0);
}

+ (BOOL)shouldPopUpForPowerException
{
  date = [MEMORY[0x277CBEAA8] date];
  [MEMORY[0x277D3F180] doubleForKey:@"UrsaNotifyAfter" ifNotSet:0.0];
  if (v3 == 0.0 || (v4 = v3, [date timeIntervalSince1970], v5 >= v4))
  {
    v6 = [MEMORY[0x277CBEAA8] nearestMidnightAfterDate:date];
    [v6 timeIntervalSince1970];
    v8 = v7;

    v9 = MEMORY[0x277D3F180];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
    v11 = 1;
    [v9 setObject:v10 forKey:@"UrsaNotifyAfter" saveToDisk:1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)isTestRackDevice:(id)device withExpGroup:(id)group internalKeyDetected:(BOOL)detected
{
  detectedCopy = detected;
  v14 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if ([group isEqualToString:@"carry"])
  {
    v8 = PLLogUrsa();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13[0]) = 0;
      v9 = "carry expGroup detected";
LABEL_7:
      _os_log_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEFAULT, v9, v13, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (detectedCopy)
  {
    v8 = PLLogUrsa();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13[0]) = 0;
      v9 = "internal key detected";
      goto LABEL_7;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v12 = [deviceCopy length];
  v10 = v12 != 0;
  v8 = PLLogUrsa();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109120;
    v13[1] = v12 != 0;
    _os_log_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEFAULT, "adg set: %d", v13, 8u);
  }

LABEL_9:

  return v10;
}

- (void)initializeSafeguardsSystem
{
  if (([MEMORY[0x277D3F208] nonUIBuild] & 1) == 0)
  {
    v3 = objc_alloc_init(MEMORY[0x277D3F068]);
    safeguardsManagingClient = self->_safeguardsManagingClient;
    self->_safeguardsManagingClient = v3;

    if (!self->_safeguardsManagingClient)
    {
      v5 = PLLogComputeSafeguards();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v6 = 0;
        _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, "initializeSafeguardsSystem: Failed to alloc/init _safeguardsManagingClient", v6, 2u);
      }
    }
  }
}

@end