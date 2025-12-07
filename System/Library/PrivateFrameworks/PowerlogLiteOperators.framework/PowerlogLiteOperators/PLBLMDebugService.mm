@interface PLBLMDebugService
+ (BOOL)isModelTriggerRun;
+ (id)entryEventNoneDefinitionBLMDebug;
+ (id)entryEventNoneDefinitions;
+ (void)load;
- (PLBLMDebugService)init;
- (double)energyForRootNodeID:(int)d withRange:(_PLTimeIntervalRange)range;
- (id)Testservice:(id)testservice;
- (id)logRailData:(int)data withTriggerName:(id)name inTimeRange:(_PLTimeIntervalRange)range;
- (id)respondBLMDDebugQuery:(id)query;
- (void)debugTrigger;
- (void)initOperatorDependancies;
- (void)registerTrigger:(id)trigger;
- (void)triggerLoggersNow:(id)now;
- (void)triggerSelectorAtDate:(id)date withSelector:(SEL)selector withUseInfo:(id)info;
@end

@implementation PLBLMDebugService

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLBLMDebugService;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventNoneDefinitions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"BLMQADebug";
  entryEventNoneDefinitionBLMDebug = [self entryEventNoneDefinitionBLMDebug];
  v6[0] = entryEventNoneDefinitionBLMDebug;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)entryEventNoneDefinitionBLMDebug
{
  v29[2] = *MEMORY[0x277D85DE8];
  v28[0] = *MEMORY[0x277D3F4E8];
  v26 = *MEMORY[0x277D3F568];
  v27 = &unk_282C1C4B8;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v29[0] = v23;
  v28[1] = *MEMORY[0x277D3F540];
  v24[0] = @"trigger_name";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v25[0] = commonTypeDict_StringFormat;
  v24[1] = @"trigger_start_time";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]2 commonTypeDict_DateFormat];
  v25[1] = commonTypeDict_DateFormat;
  v24[2] = @"trigger_stop_time";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_DateFormat];
  v25[2] = commonTypeDict_DateFormat2;
  v24[3] = @"trigger_start_time_monotonic";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_DateFormat];
  v25[3] = commonTypeDict_DateFormat3;
  v24[4] = @"trigger_stop_time_monotonic";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_DateFormat];
  v25[4] = commonTypeDict_DateFormat4;
  v24[5] = @"trigger_diff_time";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]6 commonTypeDict_RealFormat];
  v25[5] = commonTypeDict_RealFormat;
  v24[6] = @"rootnodeid";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v25[6] = commonTypeDict_IntegerFormat;
  v24[7] = @"railpower";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]8 commonTypeDict_RealFormat];
  v25[7] = commonTypeDict_RealFormat2;
  v24[8] = @"SafeTime";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]9 commonTypeDict_RealFormat];
  v25[8] = commonTypeDict_RealFormat3;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:9];
  v29[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];

  return v11;
}

+ (BOOL)isModelTriggerRun
{
  if (qword_2811F4CE0 != -1)
  {
    dispatch_once(&qword_2811F4CE0, &__block_literal_global_37);
  }

  return _MergedGlobals_1_34;
}

void *__38__PLBLMDebugService_isModelTriggerRun__block_invoke()
{
  result = [MEMORY[0x277D3F180] BOOLForKey:@"ModelTrigger"];
  _MergedGlobals_1_34 = result;
  return result;
}

- (PLBLMDebugService)init
{
  v19 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0 && objc_msgSend(MEMORY[0x277D3F208], "internalBuild") && ((objc_msgSend(MEMORY[0x277D3F180], "isDevBoard") & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F180], "debugEnabled") & 1) != 0 || +[PLBLMDebugService isModelTriggerRun](PLBLMDebugService, "isModelTriggerRun")))
  {
    v16.receiver = self;
    v16.super_class = PLBLMDebugService;
    v3 = [(PLOperator *)&v16 init];
    if (v3)
    {
      v4 = objc_opt_new();
      triggers = v3->_triggers;
      v3->_triggers = v4;

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v6 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __25__PLBLMDebugService_init__block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v6;
        if (qword_2811F4CE8 != -1)
        {
          dispatch_once(&qword_2811F4CE8, block);
        }

        if (byte_2811F4CD1 == 1)
        {
          v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Inited Trigger"];
          v8 = MEMORY[0x277D3F178];
          v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLMDebugService.m"];
          lastPathComponent = [v9 lastPathComponent];
          v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLMDebugService init]"];
          [v8 logMessage:v7 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:105];

          v12 = PLLogCommon();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v18 = v7;
            _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }
    }

    self = v3;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

void *__25__PLBLMDebugService_init__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4CD1 = result;
  return result;
}

- (void)initOperatorDependancies
{
  v31 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] internalBuild] && ((objc_msgSend(MEMORY[0x277D3F180], "isDevBoard") & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F180], "debugEnabled") & 1) != 0 || +[PLBLMDebugService isModelTriggerRun](PLBLMDebugService, "isModelTriggerRun")))
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v3 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __45__PLBLMDebugService_initOperatorDependancies__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v3;
      if (qword_2811F4CF0 != -1)
      {
        dispatch_once(&qword_2811F4CF0, block);
      }

      if (byte_2811F4CD2 == 1)
      {
        v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Initoperators for triggers"];
        v5 = MEMORY[0x277D3F178];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLMDebugService.m"];
        lastPathComponent = [v6 lastPathComponent];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLMDebugService initOperatorDependancies]"];
        [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:115];

        v9 = PLLogCommon();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v30 = v4;
          _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v10 = objc_alloc(MEMORY[0x277D3F270]);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __45__PLBLMDebugService_initOperatorDependancies__block_invoke_66;
    v27[3] = &unk_27825A1D8;
    v27[4] = self;
    v26 = [v10 initWithOperator:self withRegistration:&unk_282C184B8 withBlock:v27];
    [(PLBLMDebugService *)self setXpcListenerBLMDebugTrigger:v26];
    v11 = *MEMORY[0x277D3F5C8];
    v25 = [(PLOperator *)PLIOReportAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"EnergyModel"];
    v24 = [objc_alloc(MEMORY[0x277D3F1A8]) initWithOperator:self forEntryKey:v25 withBlock:&__block_literal_global_76];
    [(PLBLMDebugService *)self setIoreportCallback:v24];
    v23 = [(PLOperator *)PLProcessNetworkAgent entryKeyForType:v11 andName:@"Usage"];
    v12 = [objc_alloc(MEMORY[0x277D3F1A8]) initWithOperator:self forEntryKey:v23 withBlock:&__block_literal_global_79];
    [(PLBLMDebugService *)self setProcessnetworkCallback:v12];
    v13 = [(PLOperator *)PLWifiAgent entryKeyForType:v11 andName:@"DiffProperties"];
    v14 = [objc_alloc(MEMORY[0x277D3F1A8]) initWithOperator:self forEntryKey:v13 withBlock:&__block_literal_global_82];
    [(PLBLMDebugService *)self setWifiCallback:v14];
    v15 = *MEMORY[0x277D3F5E0];
    v16 = +[PLBBAgent getNameBBReport];
    v17 = [(PLOperator *)PLBBAgent entryKeyForType:v15 andName:v16];

    v18 = [objc_alloc(MEMORY[0x277D3F1A8]) initWithOperator:self forEntryKey:v17 withBlock:&__block_literal_global_85];
    [(PLBLMDebugService *)self setBbCallback:v18];
    v19 = [(PLOperator *)PLBluetoothAgent entryKeyForType:v11 andName:@"PowerProfileStats"];
    v20 = [objc_alloc(MEMORY[0x277D3F1A8]) initWithOperator:self forEntryKey:v19 withBlock:&__block_literal_global_88];
    [(PLBLMDebugService *)self setBtCallback:v20];
    v21 = [(PLOperator *)PLDisplayAgent entryKeyForType:v11 andName:@"APLStats"];
    v22 = [objc_alloc(MEMORY[0x277D3F1A8]) initWithOperator:self forEntryKey:v21 withBlock:&__block_literal_global_91];
    [(PLBLMDebugService *)self setDisplayAPLCallback:v22];
  }
}

void *__45__PLBLMDebugService_initOperatorDependancies__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4CD2 = result;
  return result;
}

void __45__PLBLMDebugService_initOperatorDependancies__block_invoke_66(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCACA8];
  v7 = a5;
  v8 = [v6 stringWithFormat:@"Asked Trigger: %@", v7];
  v9 = MEMORY[0x277D3F178];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLMDebugService.m"];
  v11 = [v10 lastPathComponent];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLMDebugService initOperatorDependancies]_block_invoke"];
  [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:118];

  v13 = PLLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v15 = v8;
    _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  [*(a1 + 32) registerTrigger:v7];
}

- (void)registerTrigger:(id)trigger
{
  v42 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __37__PLBLMDebugService_registerTrigger___block_invoke;
    v36 = &__block_descriptor_40_e5_v8__0lu32l8;
    v37 = v5;
    if (qword_2811F4CF8 != -1)
    {
      dispatch_once(&qword_2811F4CF8, &block);
    }

    if (byte_2811F4CD3 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got a trigger %@", triggerCopy, block, v34, v35, v36, v37];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLMDebugService.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLMDebugService registerTrigger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:162];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v41 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = [triggerCopy objectForKeyedSubscript:@"trigger_name"];
  v13 = objc_opt_new();
  triggers = [(PLBLMDebugService *)self triggers];
  [triggers setObject:v13 forKeyedSubscript:v12];

  v15 = [triggerCopy objectForKeyedSubscript:@"trigger_start_time"];
  [v15 doubleValue];
  v17 = v16;

  v18 = [triggerCopy objectForKeyedSubscript:@"trigger_diff_time"];
  [v18 doubleValue];
  v20 = v19;

  if (v17 == -1.0)
  {
    [(PLBLMDebugService *)self triggerLoggersNow:0];
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  }

  else
  {
    v22 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v17];
    monotonicDate = [v22 convertFromSystemToMonotonic];

    [(PLBLMDebugService *)self triggerSelectorAtDate:monotonicDate withSelector:sel_triggerLoggersNow_ withUseInfo:0];
  }

  v23 = [monotonicDate dateByAddingTimeInterval:v20];
  v24 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v23 sinceDate:65.0];
  triggers2 = [(PLBLMDebugService *)self triggers];
  v26 = [triggers2 objectForKeyedSubscript:v12];
  [v26 setObject:monotonicDate forKeyedSubscript:@"trigger_start_time"];

  triggers3 = [(PLBLMDebugService *)self triggers];
  v28 = [triggers3 objectForKeyedSubscript:v12];
  [v28 setObject:v23 forKeyedSubscript:@"trigger_stop_time"];

  v29 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
  triggers4 = [(PLBLMDebugService *)self triggers];
  v31 = [triggers4 objectForKeyedSubscript:v12];
  [v31 setObject:v29 forKeyedSubscript:@"trigger_diff_time"];

  [(PLBLMDebugService *)self triggerSelectorAtDate:v23 withSelector:sel_triggerLoggersNow_ withUseInfo:0];
  v38 = @"trigger_name";
  v39 = v12;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  [(PLBLMDebugService *)self triggerSelectorAtDate:v24 withSelector:sel_respondBLMDDebugQuery_ withUseInfo:v32];
}

void *__37__PLBLMDebugService_registerTrigger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4CD3 = result;
  return result;
}

- (void)triggerSelectorAtDate:(id)date withSelector:(SEL)selector withUseInfo:(id)info
{
  v24 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  infoCopy = info;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__PLBLMDebugService_triggerSelectorAtDate_withSelector_withUseInfo___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v10;
    if (qword_2811F4D00 != -1)
    {
      dispatch_once(&qword_2811F4D00, block);
    }

    if (byte_2811F4CD4 == 1)
    {
      infoCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"setting time at date %@ %@", dateCopy, infoCopy];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLMDebugService.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLMDebugService triggerSelectorAtDate:withSelector:withUseInfo:]"];
      [v12 logMessage:infoCopy fromFile:lastPathComponent fromFunction:v15 fromLineNumber:189];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = infoCopy;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v17 = objc_alloc(MEMORY[0x277CBEBB8]);
  convertFromMonotonicToSystem = [dateCopy convertFromMonotonicToSystem];
  v19 = [v17 initWithFireDate:convertFromMonotonicToSystem interval:self target:selector selector:infoCopy userInfo:0 repeats:0.0];

  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [mainRunLoop addTimer:v19 forMode:*MEMORY[0x277CBE640]];
}

void *__68__PLBLMDebugService_triggerSelectorAtDate_withSelector_withUseInfo___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4CD4 = result;
  return result;
}

- (void)triggerLoggersNow:(id)now
{
  v22 = *MEMORY[0x277D85DE8];
  nowCopy = now;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __39__PLBLMDebugService_triggerLoggersNow___block_invoke;
    v18 = &__block_descriptor_40_e5_v8__0lu32l8;
    v19 = v5;
    if (qword_2811F4D08 != -1)
    {
      dispatch_once(&qword_2811F4D08, &block);
    }

    if (byte_2811F4CD5 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Triggering Now %@", nowCopy, block, v16, v17, v18, v19];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLMDebugService.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLMDebugService triggerLoggersNow:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:199];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = objc_opt_new();
  [MEMORY[0x277D3F258] postNotificationName:@"PLBatteryAgent_EventBackward_Battery.filtered.Level_0_1.Level_7_1800.Level_8_300" object:self userInfo:v12];
  displayAPLCallback = [(PLBLMDebugService *)self displayAPLCallback];
  [displayAPLCallback requestEntry];

  sleep(1u);
  bbCallback = [(PLBLMDebugService *)self bbCallback];
  [bbCallback requestEntry];
}

void *__39__PLBLMDebugService_triggerLoggersNow___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4CD5 = result;
  return result;
}

- (id)respondBLMDDebugQuery:(id)query
{
  v65 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v5 = 0x277D3F000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __43__PLBLMDebugService_respondBLMDDebugQuery___block_invoke;
    v61[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v61[4] = v6;
    if (qword_2811F4D10 != -1)
    {
      dispatch_once(&qword_2811F4D10, v61);
    }

    if (byte_2811F4CD6 == 1)
    {
      queryCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"responding to query %@", queryCopy];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLMDebugService.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLMDebugService respondBLMDDebugQuery:]"];
      [v8 logMessage:queryCopy fromFile:lastPathComponent fromFunction:v11 fromLineNumber:217];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v64 = queryCopy;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  userInfo = [queryCopy userInfo];
  v14 = objc_opt_new();
  v15 = [userInfo objectForKeyedSubscript:@"trigger_name"];
  triggers = [(PLBLMDebugService *)self triggers];
  v17 = [triggers objectForKey:v15];

  if (v17)
  {
    v52 = queryCopy;
    [v14 setObject:v15 forKeyedSubscript:@"trigger_name"];
    triggers2 = [(PLBLMDebugService *)self triggers];
    [triggers2 objectForKeyedSubscript:v15];
    v20 = v19 = v15;
    [v20 objectForKeyedSubscript:@"trigger_start_time"];
    v21 = v54 = userInfo;
    [v14 setObject:v21 forKeyedSubscript:@"trigger_start_time"];

    triggers3 = [(PLBLMDebugService *)self triggers];
    v50 = v19;
    v23 = [triggers3 objectForKeyedSubscript:v19];
    v24 = [v23 objectForKeyedSubscript:@"trigger_stop_time"];
    [v14 setObject:v24 forKeyedSubscript:@"trigger_stop_time"];

    v25 = [v14 objectForKeyedSubscript:@"trigger_start_time"];
    userInfo = v54;
    v26 = [v14 objectForKeyedSubscript:@"trigger_stop_time"];
    [v25 timeIntervalSince1970];
    v28 = v27;
    [v26 timeIntervalSince1970];
    v30 = v29;

    v31 = objc_opt_new();
    v51 = v14;
    [v14 setObject:v31 forKeyedSubscript:@"trigger_rail_data"];

    deviceRootNodeIDs = [MEMORY[0x277D3F0C0] deviceRootNodeIDs];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v33 = [deviceRootNodeIDs countByEnumeratingWithState:&v57 objects:v62 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = v30 - v28;
      v55 = *v58;
      v53 = deviceRootNodeIDs;
      do
      {
        v36 = 0;
        do
        {
          if (*v58 != v55)
          {
            objc_enumerationMutation(deviceRootNodeIDs);
          }

          intValue = [*(*(&v57 + 1) + 8 * v36) intValue];
          v38 = [userInfo objectForKeyedSubscript:@"trigger_name"];
          v39 = [(PLBLMDebugService *)self logRailData:intValue withTriggerName:v38 inTimeRange:v28, v35];

          if ([*(v5 + 384) debugEnabled])
          {
            v40 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __43__PLBLMDebugService_respondBLMDDebugQuery___block_invoke_122;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v40;
            if (qword_2811F4D18 != -1)
            {
              dispatch_once(&qword_2811F4D18, block);
            }

            if (byte_2811F4CD7 == 1)
            {
              selfCopy = self;
              v42 = v5;
              v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"Written %@", v39];
              v44 = MEMORY[0x277D3F178];
              v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLMDebugService.m"];
              lastPathComponent2 = [v45 lastPathComponent];
              v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLMDebugService respondBLMDDebugQuery:]"];
              [v44 logMessage:v43 fromFile:lastPathComponent2 fromFunction:v47 fromLineNumber:232];

              v48 = PLLogCommon();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v64 = v43;
                _os_log_debug_impl(&dword_21A4C6000, v48, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v5 = v42;
              self = selfCopy;
              deviceRootNodeIDs = v53;
              userInfo = v54;
            }
          }

          ++v36;
        }

        while (v34 != v36);
        v34 = [deviceRootNodeIDs countByEnumeratingWithState:&v57 objects:v62 count:16];
      }

      while (v34);
    }

    v14 = v51;
    queryCopy = v52;
    v15 = v50;
  }

  return v14;
}

void *__43__PLBLMDebugService_respondBLMDDebugQuery___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4CD6 = result;
  return result;
}

void *__43__PLBLMDebugService_respondBLMDDebugQuery___block_invoke_122(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4CD7 = result;
  return result;
}

- (id)logRailData:(int)data withTriggerName:(id)name inTimeRange:(_PLTimeIntervalRange)range
{
  var1 = range.var1;
  var0 = range.var0;
  v7 = *&data;
  v45 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__PLBLMDebugService_logRailData_withTriggerName_inTimeRange___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v10;
    if (qword_2811F4D20 != -1)
    {
      dispatch_once(&qword_2811F4D20, block);
    }

    if (byte_2811F4CD8 == 1)
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:var0];
      var1 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:var0 + var1];
      v14 = [v11 stringWithFormat:@"Start: %@, End %@", v12, var1];

      v15 = [v11 stringWithFormat:@"Logging rail data %li %@ %@", v7, nameCopy, v14];

      v16 = MEMORY[0x277D3F178];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLMDebugService.m"];
      lastPathComponent = [v17 lastPathComponent];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLMDebugService logRailData:withTriggerName:inTimeRange:]"];
      [v16 logMessage:v15 fromFile:lastPathComponent fromFunction:v19 fromLineNumber:239];

      v20 = PLLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v44 = v15;
        _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v41 = v7;
  v21 = [(PLOperator *)PLBLMDebugService entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"BLMQADebug"];
  v22 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v21];
  [v22 setObject:nameCopy forKeyedSubscript:@"trigger_name"];
  triggers = [(PLBLMDebugService *)self triggers];
  v24 = [triggers objectForKeyedSubscript:nameCopy];
  v25 = [v24 objectForKeyedSubscript:@"trigger_start_time"];

  triggers2 = [(PLBLMDebugService *)self triggers];
  v27 = [triggers2 objectForKeyedSubscript:nameCopy];
  v28 = [v27 objectForKeyedSubscript:@"trigger_stop_time"];

  if (v25)
  {
    convertFromMonotonicToSystem = [v25 convertFromMonotonicToSystem];
    [v22 setObject:convertFromMonotonicToSystem forKeyedSubscript:@"trigger_start_time"];

    [v22 setObject:v25 forKeyedSubscript:@"trigger_start_time_monotonic"];
  }

  if (v28)
  {
    convertFromMonotonicToSystem2 = [v28 convertFromMonotonicToSystem];
    [v22 setObject:convertFromMonotonicToSystem2 forKeyedSubscript:@"trigger_stop_time"];

    [v22 setObject:v28 forKeyedSubscript:@"trigger_stop_time_monotonic"];
  }

  triggers3 = [(PLBLMDebugService *)self triggers];
  v32 = [triggers3 objectForKeyedSubscript:nameCopy];
  v33 = [v32 objectForKeyedSubscript:@"trigger_diff_time"];
  [v22 setObject:v33 forKeyedSubscript:@"trigger_diff_time"];

  v34 = [MEMORY[0x277CCABB0] numberWithInt:v41];
  [v22 setObject:v34 forKeyedSubscript:@"rootnodeid"];

  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  [distantFuture timeIntervalSince1970];
  v37 = v36;

  v38 = [MEMORY[0x277CCABB0] numberWithDouble:v37];
  [v22 setObject:v38 forKeyedSubscript:@"SafeTime"];

  if (v37 >= var0 + var1)
  {
    [(PLBLMDebugService *)self energyForRootNodeID:v41 withRange:var0, var1];
    v39 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v22 setObject:v39 forKeyedSubscript:@"railpower"];
  }

  else
  {
    [v22 setObject:&unk_282C11940 forKeyedSubscript:@"railpower"];
  }

  [(PLOperator *)self logEntry:v22];

  return v22;
}

void *__61__PLBLMDebugService_logRailData_withTriggerName_inTimeRange___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4CD8 = result;
  return result;
}

- (double)energyForRootNodeID:(int)d withRange:(_PLTimeIntervalRange)range
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(timestamp+%@)>%f AND (timestamp+%@)<%f AND %@=%i", *MEMORY[0x277D3F360], *&range.var0, *MEMORY[0x277D3F3A0], range.var0 + range.var1, *MEMORY[0x277D3F370], *&d];
  v6 = MEMORY[0x277CCACA8];
  entryKey = [MEMORY[0x277D3F0B8] entryKey];
  v8 = [v6 stringWithFormat:@"SELECT * FROM '%@' WHERE (%@)", entryKey, v5];;

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v9 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__PLBLMDebugService_energyForRootNodeID_withRange___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v9;
    if (qword_2811F4D28 != -1)
    {
      dispatch_once(&qword_2811F4D28, block);
    }

    if (byte_2811F4CD9 == 1)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"rootNodeEnergyQuery=%@", v8];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLMDebugService.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLMDebugService energyForRootNodeID:withRange:]"];
      [v11 logMessage:v10 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:283];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v50 = v10;
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v16 = objc_msgSend_storage(self);
  entryKey2 = [MEMORY[0x277D3F0B8] entryKey];
  v18 = [v16 entriesForKey:entryKey2 withQuery:v8];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v19 = objc_opt_class();
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __51__PLBLMDebugService_energyForRootNodeID_withRange___block_invoke_143;
    v46[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v46[4] = v19;
    if (qword_2811F4D30 != -1)
    {
      dispatch_once(&qword_2811F4D30, v46);
    }

    if (byte_2811F4CDA == 1)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"rootNodeEnergyEntries=%@", v18];
      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLMDebugService.m"];
      lastPathComponent2 = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLMDebugService energyForRootNodeID:withRange:]"];
      [v21 logMessage:v20 fromFile:lastPathComponent2 fromFunction:v24 fromLineNumber:287];

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v50 = v20;
        _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v26 = v18;
  v27 = [v26 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v43;
    v30 = 0.0;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v43 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [*(*(&v42 + 1) + 8 * i) energy];
        v30 = v30 + v32;
      }

      v28 = [v26 countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v28);
  }

  else
  {
    v30 = 0.0;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v33 = objc_opt_class();
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __51__PLBLMDebugService_energyForRootNodeID_withRange___block_invoke_149;
    v41[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v41[4] = v33;
    if (qword_2811F4D38 != -1)
    {
      dispatch_once(&qword_2811F4D38, v41);
    }

    if (byte_2811F4CDB == 1)
    {
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"totalEnergy=%f", *&v30];
      v35 = MEMORY[0x277D3F178];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLMDebugService.m"];
      lastPathComponent3 = [v36 lastPathComponent];
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLMDebugService energyForRootNodeID:withRange:]"];
      [v35 logMessage:v34 fromFile:lastPathComponent3 fromFunction:v38 fromLineNumber:294];

      v39 = PLLogCommon();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v50 = v34;
        _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  return v30;
}

void *__51__PLBLMDebugService_energyForRootNodeID_withRange___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4CD9 = result;
  return result;
}

void *__51__PLBLMDebugService_energyForRootNodeID_withRange___block_invoke_143(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4CDA = result;
  return result;
}

void *__51__PLBLMDebugService_energyForRootNodeID_withRange___block_invoke_149(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4CDB = result;
  return result;
}

- (id)Testservice:(id)testservice
{
  v4 = objc_opt_new();
  [v4 setObject:&unk_282C11940 forKeyedSubscript:@"trigger_start_time"];
  [v4 setObject:&unk_282C11958 forKeyedSubscript:@"trigger_diff_time"];
  [v4 setObject:@"Abcd" forKeyedSubscript:@"trigger_name"];
  [(PLBLMDebugService *)self registerTrigger:v4];

  return 0;
}

- (void)debugTrigger
{
  v3 = objc_alloc(MEMORY[0x277D3F250]);
  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  workQueue = [(PLOperator *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__PLBLMDebugService_debugTrigger__block_invoke;
  v8[3] = &unk_278259C40;
  v8[4] = self;
  v6 = [v3 initWithFireDate:v4 withInterval:1 withTolerance:0 repeats:workQueue withUserInfo:v8 withQueue:20.0 withBlock:0.0];
  debugTimers = self->_debugTimers;
  self->_debugTimers = v6;
}

@end