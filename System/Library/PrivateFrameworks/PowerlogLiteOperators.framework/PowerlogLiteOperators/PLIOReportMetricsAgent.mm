@interface PLIOReportMetricsAgent
+ (void)load;
- (BOOL)allowlistedChannel:(id)channel;
- (BOOL)isDynamicTable:(id)table;
- (BOOL)skipCurrentIteration:(id)iteration forChannel:(id)channel;
- (IOReportGroupChecks)initGroupChecks;
- (PLIOReportMetricsAgent)init;
- (id)buildBaseSet:(IOReportGroupChecks *)set;
- (id)buildCustomSet:(IOReportGroupChecks *)set;
- (id)buildScreenStateSet:(IOReportGroupChecks *)set;
- (id)buildSnapshotSet:(IOReportGroupChecks *)set;
- (id)channelDictionaryWithChannelSet:(id)set;
- (id)createCategoryString:(id)string forSubgroup:(id)subgroup;
- (id)sampleDeltaForChannelGroup:(id)group;
- (id)sampleSnapshotForChannelGroup:(id)group;
- (void)initOperatorDependancies;
- (void)log;
- (void)logDisplayOffAPWake;
- (void)logDisplayOffAPWakeStats;
- (void)logIOReportEntry:(id)entry forCategory:(id)category withEntryDate:(id)date withAPWakeTime:(double)time isInterval:(BOOL)interval;
- (void)logIOReportIntervals:(id)intervals forChannelGroup:(id)group;
- (void)logIOReportSnapshots:(id)snapshots;
- (void)logInit;
- (void)logSBC;
- (void)logScreenStateChange;
- (void)sampleDeltaForChannelSets;
- (void)startDisplayOffPeriodicTimer;
- (void)stopDisplayOffPeriodicTimer;
- (void)subscribeToChannelSets;
@end

@implementation PLIOReportMetricsAgent

- (void)logSBC
{
  sampleChannelsSignificantBattery = [(PLIOReportMetricsAgent *)self sampleChannelsSignificantBattery];
  v4 = [(PLIOReportMetricsAgent *)self sampleDeltaForChannelGroup:sampleChannelsSignificantBattery];
  sampleChannelsSignificantBattery2 = [(PLIOReportMetricsAgent *)self sampleChannelsSignificantBattery];
  [(PLIOReportMetricsAgent *)self logIOReportIntervals:v4 forChannelGroup:sampleChannelsSignificantBattery2];

  if (([MEMORY[0x277D3F180] fullMode] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "liteMode"))
  {
    sampleChannelsCustom = [(PLIOReportMetricsAgent *)self sampleChannelsCustom];
    v6 = [(PLIOReportMetricsAgent *)self sampleSnapshotForChannelGroup:sampleChannelsCustom];
    [(PLIOReportMetricsAgent *)self logIOReportSnapshots:v6];
  }
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLIOReportMetricsAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLIOReportMetricsAgent)init
{
  if ([MEMORY[0x277D3F180] BOOLForKey:@"DynamicIOReportMetricEnable" ifNotSet:1])
  {
    v6.receiver = self;
    v6.super_class = PLIOReportMetricsAgent;
    self = [(PLAgent *)&v6 init];
    selfCopy = self;
  }

  else
  {
    v4 = PLLogIOReportMetrics();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "IOReport Metrics: Dynamic telemetry disabled", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)initOperatorDependancies
{
  [(PLIOReportMetricsAgent *)self subscribeToChannelSets];
  [(PLIOReportMetricsAgent *)self sampleDeltaForChannelSets];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLIOReportMetricsAgent *)self setLastEntryDate:monotonicDate];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __50__PLIOReportMetricsAgent_initOperatorDependancies__block_invoke;
  v19[3] = &unk_2782597E8;
  v19[4] = self;
  v4 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v19];
  [(PLIOReportMetricsAgent *)self setBatteryLevelChangedNotifications:v4];

  if ([MEMORY[0x277D3F180] taskMode])
  {
    v5 = objc_alloc(MEMORY[0x277D3F1F0]);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __50__PLIOReportMetricsAgent_initOperatorDependancies__block_invoke_2;
    v18[3] = &unk_2782597E8;
    v18[4] = self;
    v6 = [v5 initWithOperator:self forNotification:@"com.apple.powerlog.EnhancedScreenState" withBlock:v18];
    enhancedScreenStateChangeListener = self->_enhancedScreenStateChangeListener;
    self->_enhancedScreenStateChangeListener = v6;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __50__PLIOReportMetricsAgent_initOperatorDependancies__block_invoke_23;
  v17[3] = &unk_2782597E8;
  v17[4] = self;
  v8 = [MEMORY[0x277D3F1A8] displayOffNotificationWithOperator:self withBlock:v17];
  [(PLIOReportMetricsAgent *)self setDisplayOffNotification:v8];

  if ([MEMORY[0x277D3F180] taskMode])
  {
    mEMORY[0x277D3F220] = [MEMORY[0x277D3F220] sharedInstance];
    [(PLIOReportMetricsAgent *)self setStateTracker:mEMORY[0x277D3F220]];

    stateTracker = [(PLIOReportMetricsAgent *)self stateTracker];
    [stateTracker registerForStates:8 withOperator:self withBlock:&__block_literal_global_27];

    if ([MEMORY[0x277D3F208] hasAOD])
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __50__PLIOReportMetricsAgent_initOperatorDependancies__block_invoke_3;
      v16[3] = &unk_2782597E8;
      v16[4] = self;
      v11 = [MEMORY[0x277D3F1A8] displayOffOrAODNotificationWithOperator:self withBlock:v16];
    }

    else
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __50__PLIOReportMetricsAgent_initOperatorDependancies__block_invoke_29;
      v15[3] = &unk_2782597E8;
      v15[4] = self;
      v11 = [MEMORY[0x277D3F1A8] displayOffNotificationWithOperator:self withBlock:v15];
    }

    v12 = v11;
    [(PLIOReportMetricsAgent *)self setDisplayOffNotification:v11];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50__PLIOReportMetricsAgent_initOperatorDependancies__block_invoke_30;
    v14[3] = &unk_2782597E8;
    v14[4] = self;
    v13 = [MEMORY[0x277D3F1A8] displayOnNotificationWithOperator:self withBlock:v14];
    [(PLIOReportMetricsAgent *)self setDisplayOnNotification:v13];
  }
}

void __50__PLIOReportMetricsAgent_initOperatorDependancies__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PLLogIOReportMetrics();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Notification for ScreenState change: %@", &v5, 0xCu);
  }

  [*(a1 + 32) logScreenStateChange];
}

id *__50__PLIOReportMetricsAgent_initOperatorDependancies__block_invoke_23(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] logScreenStateChange];
  }

  return result;
}

id *__50__PLIOReportMetricsAgent_initOperatorDependancies__block_invoke_3(id *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = PLLogIOReportMetrics();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4[0] = 0;
      _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "AOD case: Received Display OFF Notification", v4, 2u);
    }

    return [v2[4] startDisplayOffPeriodicTimer];
  }

  return result;
}

id *__50__PLIOReportMetricsAgent_initOperatorDependancies__block_invoke_29(id *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = PLLogIOReportMetrics();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4[0] = 0;
      _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Non-AOD case: Received Display OFF Notification", v4, 2u);
    }

    return [v2[4] startDisplayOffPeriodicTimer];
  }

  return result;
}

id *__50__PLIOReportMetricsAgent_initOperatorDependancies__block_invoke_30(id *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = PLLogIOReportMetrics();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4[0] = 0;
      _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Received Display ON Notification", v4, 2u);
    }

    return [v2[4] stopDisplayOffPeriodicTimer];
  }

  return result;
}

- (IOReportGroupChecks)initGroupChecks
{
  liteMode = [MEMORY[0x277D3F180] liteMode];
  taskMode = [MEMORY[0x277D3F180] taskMode];
  fullMode = [MEMORY[0x277D3F180] fullMode];
  isWatch = [MEMORY[0x277D3F208] isWatch];
  isiPhone = [MEMORY[0x277D3F208] isiPhone];
  internalBuild = [MEMORY[0x277D3F208] internalBuild];
  v8 = 0x10000000000;
  if (!internalBuild)
  {
    v8 = 0;
  }

  v9 = 0x100000000;
  if (!isiPhone)
  {
    v9 = 0;
  }

  v10 = 0x1000000;
  if (!isWatch)
  {
    v10 = 0;
  }

  v11 = 0x10000;
  if (!fullMode)
  {
    v11 = 0;
  }

  v12 = 256;
  if (!taskMode)
  {
    v12 = 0;
  }

  return (v12 | liteMode | v11 | v10 | v9 | v8);
}

- (id)buildBaseSet:(IOReportGroupChecks *)set
{
  v38[18] = *MEMORY[0x277D85DE8];
  v37[0] = @"AMC Stats,Perf Counters";
  if (set->var2)
  {
    v4 = 1;
  }

  else
  {
    v4 = set->var1 && set->var3;
  }

  v34 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  v38[0] = v34;
  v37[1] = @"DCP,scanout stats";
  v5 = set->var2 && set->var4;
  v33 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  v38[1] = v33;
  v37[2] = @"SoC Stats,Events";
  if (set->var2)
  {
    v6 = 1;
  }

  else
  {
    v6 = set->var1 && set->var3;
  }

  v32 = [MEMORY[0x277CCABB0] numberWithInt:v6];
  v38[2] = v32;
  v37[3] = @"SoC Stats,PMGR Counters";
  if (set->var2)
  {
    v7 = 1;
  }

  else
  {
    v7 = set->var1 && set->var3;
  }

  v31 = [MEMORY[0x277CCABB0] numberWithInt:v7];
  v38[3] = v31;
  v37[4] = @"SoC Stats,Device States";
  v30 = [MEMORY[0x277CCABB0] numberWithBool:set->var2];
  v38[4] = v30;
  v37[5] = @"AOP-EXCLAVE,Power";
  v8 = set->var1 || set->var2;
  v29 = [MEMORY[0x277CCABB0] numberWithInt:v8];
  v38[5] = v29;
  v37[6] = @"ISP,IOP State";
  v28 = [MEMORY[0x277CCABB0] numberWithBool:set->var2];
  v38[6] = v28;
  v37[7] = @"AOP2,Performance";
  v27 = [MEMORY[0x277CCABB0] numberWithBool:set->var2];
  v38[7] = v27;
  v37[8] = @"AOP2,Power";
  v25 = [MEMORY[0x277CCABB0] numberWithBool:set->var2];
  v38[8] = v25;
  v37[9] = @"GPU Stats,GPU Power Controller States";
  v9 = (set->var2 || set->var0) && set->var5;
  v10 = [MEMORY[0x277CCABB0] numberWithInt:{v9, v25}];
  v38[9] = v10;
  v37[10] = @"PMP,DCS Ceiling";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:set->var2];
  v38[10] = v11;
  v37[11] = @"PMP,DCS Floor";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:set->var2];
  v38[11] = v12;
  v37[12] = @"PMP,SOC Floor";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:set->var2];
  v38[12] = v13;
  v37[13] = @"PMP,PMC AVE Floor";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:set->var2];
  v38[13] = v14;
  v37[14] = @"PMP,PMC DCS Floor";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:set->var2];
  v38[14] = v15;
  v37[15] = @"PMP,PMC DISP Floor";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:set->var2];
  v38[15] = v16;
  v37[16] = @"PMP,PMC SOC Floor";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:set->var2];
  v38[16] = v17;
  v37[17] = @"PMP,PMC RMBS";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:set->var2];
  v38[17] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:18];

  v20 = objc_opt_new();
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __39__PLIOReportMetricsAgent_buildBaseSet___block_invoke;
  v35[3] = &unk_27825CDE8;
  v36 = v20;
  v21 = v20;
  [v19 enumerateKeysAndObjectsUsingBlock:v35];
  if ([v21 count])
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  return v22;
}

void __39__PLIOReportMetricsAgent_buildBaseSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([a3 BOOLValue])
  {
    [*(a1 + 32) addObject:v5];
    v6 = PLLogIOReportMetrics();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_INFO, "Base set has following subscription %@", &v7, 0xCu);
    }
  }
}

- (id)buildScreenStateSet:(IOReportGroupChecks *)set
{
  v32[17] = *MEMORY[0x277D85DE8];
  v31[0] = @"AMC Stats,Perf Counters";
  v28 = [MEMORY[0x277CCABB0] numberWithBool:set->var1];
  v32[0] = v28;
  v31[1] = @"DCP,scanout stats";
  v4 = set->var1 && set->var4;
  v27 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  v32[1] = v27;
  v31[2] = @"AOP2,Performance";
  v26 = [MEMORY[0x277CCABB0] numberWithBool:set->var1];
  v32[2] = v26;
  v31[3] = @"AOP2,Power";
  v25 = [MEMORY[0x277CCABB0] numberWithBool:set->var1];
  v32[3] = v25;
  v31[4] = @"GPU Stats,GPU Power Controller States";
  v5 = set->var1 && set->var5;
  v24 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  v32[4] = v24;
  v31[5] = @"PMP,DCS Ceiling";
  v23 = [MEMORY[0x277CCABB0] numberWithBool:set->var1];
  v32[5] = v23;
  v31[6] = @"PMP,DCS Floor";
  v22 = [MEMORY[0x277CCABB0] numberWithBool:set->var1];
  v32[6] = v22;
  v31[7] = @"PMP,SOC Floor";
  v21 = [MEMORY[0x277CCABB0] numberWithBool:set->var1];
  v32[7] = v21;
  v31[8] = @"PMP,PMC AVE Floor";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:set->var1];
  v32[8] = v6;
  v31[9] = @"PMP,PMC DCS Floor";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:set->var1];
  v32[9] = v7;
  v31[10] = @"PMP,PMC DISP Floor";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:set->var1];
  v32[10] = v8;
  v31[11] = @"PMP,PMC SOC Floor";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:set->var1];
  v32[11] = v9;
  v31[12] = @"PMP,PMC RMBS";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:set->var1];
  v32[12] = v10;
  v31[13] = @"SoC Stats,Events";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:set->var1];
  v32[13] = v11;
  v31[14] = @"SoC Stats,PMGR Counters";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:set->var1];
  v32[14] = v12;
  v31[15] = @"SoC Stats,Device States";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:set->var1];
  v32[15] = v13;
  v31[16] = @"ISP,IOP State";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:set->var1];
  v32[16] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:17];

  v16 = objc_opt_new();
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __46__PLIOReportMetricsAgent_buildScreenStateSet___block_invoke;
  v29[3] = &unk_27825CDE8;
  v30 = v16;
  v17 = v16;
  [v15 enumerateKeysAndObjectsUsingBlock:v29];
  if ([v17 count])
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  return v18;
}

void __46__PLIOReportMetricsAgent_buildScreenStateSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([a3 BOOLValue])
  {
    [*(a1 + 32) addObject:v5];
    v6 = PLLogIOReportMetrics();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_INFO, "ScreenState set has following subscription %@", &v7, 0xCu);
    }
  }
}

- (id)buildSnapshotSet:(IOReportGroupChecks *)set
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16 = @"SoC Stats,AON Fuse";
  v3 = set->var1 || set->var2;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v17[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

  v6 = objc_opt_new();
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __43__PLIOReportMetricsAgent_buildSnapshotSet___block_invoke;
  v14 = &unk_27825CDE8;
  v15 = v6;
  v7 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:&v11];
  if ([v7 count])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

void __43__PLIOReportMetricsAgent_buildSnapshotSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([a3 BOOLValue])
  {
    [*(a1 + 32) addObject:v5];
    v6 = PLLogIOReportMetrics();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_INFO, "Snapshot set has following subscription %@", &v7, 0xCu);
    }
  }
}

- (id)buildCustomSet:(IOReportGroupChecks *)set
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = @"ISP,ISP Events";
  v3 = set->var1 || set->var2;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v16[1] = @"ANS2,MSP0";
  v17[0] = v4;
  v17[1] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v6 = objc_opt_new();
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __41__PLIOReportMetricsAgent_buildCustomSet___block_invoke;
  v14 = &unk_27825CDE8;
  v15 = v6;
  v7 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:&v11];
  if ([v7 count])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

void __41__PLIOReportMetricsAgent_buildCustomSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([a3 BOOLValue])
  {
    [*(a1 + 32) addObject:v5];
    v6 = PLLogIOReportMetrics();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_INFO, "Snapshot set has following subscription %@", &v7, 0xCu);
    }
  }
}

- (id)channelDictionaryWithChannelSet:(id)set
{
  v9 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v4 = IOReportCopyFilteredChannels();
  if (IOReportGetChannelCount())
  {
    Subscription = IOReportCreateSubscription();
    if (v4)
    {
      CFRelease(v4);
    }

    if (!Subscription)
    {
      goto LABEL_10;
    }

    if (IOReportGetChannelCount())
    {
      v6 = objc_opt_new();
      [v6 setObject:Subscription forKeyedSubscript:@"subscription"];

      [v6 setObject:0 forKeyedSubscript:@"subscribedChannels"];
      goto LABEL_11;
    }

    CFRelease(Subscription);
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  CFRelease(v7);
LABEL_10:
  v6 = 0;
LABEL_11:

  return v6;
}

uint64_t __58__PLIOReportMetricsAgent_channelDictionaryWithChannelSet___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = IOReportChannelGetGroup();
  v5 = IOReportChannelGetSubGroup();
  if (v5)
  {
    v6 = [v4 stringByAppendingString:{@", "}];
    v7 = [v6 stringByAppendingString:v5];
  }

  else
  {
    v7 = v4;
  }

  v8 = [*(a1 + 32) containsObject:v7];
  v9 = PLLogIOReportMetrics();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    if (v10)
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "!!! Retain: groupSubgroupObj = %@ !!!", &v13, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    if (v10)
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "!!! Remove: groupSubgroupObj = %@ !!!", &v13, 0xCu);
    }

    v11 = 16;
  }

  objc_autoreleasePoolPop(v3);
  return v11;
}

- (void)subscribeToChannelSets
{
  initGroupChecks = [(PLIOReportMetricsAgent *)self initGroupChecks];
  v16 = initGroupChecks;
  v17 = WORD2(initGroupChecks);
  v4 = [(PLIOReportMetricsAgent *)self buildBaseSet:&v16];
  if (v4)
  {
    v5 = [(PLIOReportMetricsAgent *)self channelDictionaryWithChannelSet:v4];
    sampleChannelsSignificantBattery = self->_sampleChannelsSignificantBattery;
    self->_sampleChannelsSignificantBattery = v5;
  }

  v7 = [(PLIOReportMetricsAgent *)self buildScreenStateSet:&v16];
  if (v7)
  {
    v8 = [(PLIOReportMetricsAgent *)self channelDictionaryWithChannelSet:v7];
    sampleChannelsScreenState = self->_sampleChannelsScreenState;
    self->_sampleChannelsScreenState = v8;
  }

  v10 = [(PLIOReportMetricsAgent *)self buildSnapshotSet:&v16];
  if (v10)
  {
    v11 = [(PLIOReportMetricsAgent *)self channelDictionaryWithChannelSet:v10];
    sampleChannelsSnapshot = self->_sampleChannelsSnapshot;
    self->_sampleChannelsSnapshot = v11;
  }

  v13 = [(PLIOReportMetricsAgent *)self buildCustomSet:&v16];
  if (v13)
  {
    v14 = [(PLIOReportMetricsAgent *)self channelDictionaryWithChannelSet:v13];
    sampleChannelsCustom = self->_sampleChannelsCustom;
    self->_sampleChannelsCustom = v14;
  }
}

- (void)sampleDeltaForChannelSets
{
  if (self->_sampleChannelsSignificantBattery)
  {
    v3 = [(PLIOReportMetricsAgent *)self sampleDeltaForChannelGroup:?];
  }

  if (self->_sampleChannelsScreenState)
  {
    v4 = [(PLIOReportMetricsAgent *)self sampleDeltaForChannelGroup:?];
  }
}

- (id)sampleDeltaForChannelGroup:(id)group
{
  groupCopy = group;
  v4 = objc_autoreleasePoolPush();
  if (groupCopy)
  {
    v5 = [groupCopy objectForKey:@"currentSample"];
    [groupCopy setObject:v5 forKeyedSubscript:@"lastSample"];

    v6 = [groupCopy objectForKey:@"currentSampleAPWakeTime"];
    [groupCopy setObject:v6 forKeyedSubscript:@"lastSampleAPWakeTime"];

    [groupCopy objectForKey:@"subscription"];
    [groupCopy objectForKey:@"subscribedChannels"];
    Samples = IOReportCreateSamples();
    [groupCopy setObject:Samples forKeyedSubscript:@"currentSample"];

    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_absolute_time()];
    [groupCopy setObject:v8 forKeyedSubscript:@"currentSampleAPWakeTime"];

    v9 = [groupCopy objectForKey:@"lastSample"];

    if (v9)
    {
      [groupCopy objectForKey:@"lastSample"];
      [groupCopy objectForKey:@"currentSample"];
      SamplesDelta = IOReportCreateSamplesDelta();
      [groupCopy removeObjectForKey:@"lastSample"];
      goto LABEL_7;
    }

    dictionary = [groupCopy objectForKey:@"currentSample"];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  SamplesDelta = dictionary;
LABEL_7:
  objc_autoreleasePoolPop(v4);

  return SamplesDelta;
}

- (id)sampleSnapshotForChannelGroup:(id)group
{
  groupCopy = group;
  v4 = objc_autoreleasePoolPush();
  v5 = [groupCopy objectForKeyedSubscript:@"subscription"];

  v6 = [groupCopy objectForKeyedSubscript:@"subscribedChannels"];
  v7 = v6;
  Samples = 0;
  if (groupCopy && v5 && v6)
  {
    v9 = [groupCopy objectForKey:@"lastSample"];

    if (v9)
    {
      Samples = [groupCopy objectForKeyedSubscript:@"lastSample"];
      if (!IOReportUpdateSamples())
      {
        [groupCopy removeObjectForKey:@"lastSample"];
        goto LABEL_9;
      }
    }

    else
    {
      Samples = IOReportCreateSamples();
      if (!Samples)
      {
        goto LABEL_9;
      }
    }

    [groupCopy setObject:Samples forKeyedSubscript:@"lastSample"];
  }

LABEL_9:

  objc_autoreleasePoolPop(v4);

  return Samples;
}

- (void)log
{
  [(PLIOReportMetricsAgent *)self logInit];
  [(PLIOReportMetricsAgent *)self logSBC];

  [(PLIOReportMetricsAgent *)self logScreenStateChange];
}

- (void)logInit
{
  sampleChannelsSnapshot = [(PLIOReportMetricsAgent *)self sampleChannelsSnapshot];
  v3 = [(PLIOReportMetricsAgent *)self sampleSnapshotForChannelGroup:sampleChannelsSnapshot];
  [(PLIOReportMetricsAgent *)self logIOReportSnapshots:v3];
}

- (void)logScreenStateChange
{
  sampleChannelsScreenState = [(PLIOReportMetricsAgent *)self sampleChannelsScreenState];
  v4 = [(PLIOReportMetricsAgent *)self sampleDeltaForChannelGroup:sampleChannelsScreenState];
  sampleChannelsScreenState2 = [(PLIOReportMetricsAgent *)self sampleChannelsScreenState];
  [(PLIOReportMetricsAgent *)self logIOReportIntervals:v4 forChannelGroup:sampleChannelsScreenState2];

  if ([MEMORY[0x277D3F180] taskMode])
  {
    sampleChannelsCustom = [(PLIOReportMetricsAgent *)self sampleChannelsCustom];
    v6 = [(PLIOReportMetricsAgent *)self sampleSnapshotForChannelGroup:sampleChannelsCustom];
    [(PLIOReportMetricsAgent *)self logIOReportSnapshots:v6];
  }
}

- (void)logDisplayOffAPWake
{
  sampleChannelsScreenState = [(PLIOReportMetricsAgent *)self sampleChannelsScreenState];
  v3 = [(PLIOReportMetricsAgent *)self sampleDeltaForChannelGroup:sampleChannelsScreenState];
  sampleChannelsScreenState2 = [(PLIOReportMetricsAgent *)self sampleChannelsScreenState];
  [(PLIOReportMetricsAgent *)self logIOReportIntervals:v3 forChannelGroup:sampleChannelsScreenState2];
}

- (void)logIOReportSnapshots:(id)snapshots
{
  snapshotsCopy = snapshots;
  v5 = [snapshotsCopy objectForKey:@"IOReportChannelGroups"];
  allKeys = [v5 allKeys];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__PLIOReportMetricsAgent_logIOReportSnapshots___block_invoke;
  v8[3] = &unk_278259C90;
  v9 = snapshotsCopy;
  selfCopy = self;
  v7 = snapshotsCopy;
  [allKeys enumerateObjectsUsingBlock:v8];
}

void __47__PLIOReportMetricsAgent_logIOReportSnapshots___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:@"IOReportChannelGroups"];
  v5 = [v4 objectForKey:v3];

  v6 = [v5 objectForKey:@"IOReportChannelGroups"];
  v7 = [v6 allKeys];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__PLIOReportMetricsAgent_logIOReportSnapshots___block_invoke_2;
  v11[3] = &unk_278259CE0;
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v8;
  v14 = v3;
  v9 = v3;
  v10 = v5;
  [v7 enumerateObjectsUsingBlock:v11];
}

void __47__PLIOReportMetricsAgent_logIOReportSnapshots___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKey:@"IOReportChannelGroups"];
  v7 = [v5 objectForKey:v4];

  v6 = [*(a1 + 40) createCategoryString:*(a1 + 48) forSubgroup:v4];

  [*(a1 + 40) logIOReportEntry:v7 forCategory:v6 withEntryDate:0 withAPWakeTime:0 isInterval:0.0];
}

- (void)logIOReportIntervals:(id)intervals forChannelGroup:(id)group
{
  v53 = *MEMORY[0x277D85DE8];
  intervalsCopy = intervals;
  groupCopy = group;
  v8 = objc_autoreleasePoolPush();
  if (intervalsCopy)
  {
    v34 = v8;
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    v9 = [groupCopy objectForKey:@"currentSampleAPWakeTime"];
    unsignedLongLongValue = [v9 unsignedLongLongValue];

    v35 = groupCopy;
    v11 = [groupCopy objectForKey:@"lastSampleAPWakeTime"];
    unsignedLongLongValue2 = [v11 unsignedLongLongValue];

    [MEMORY[0x277D3F258] secondsFromMachTime:unsignedLongLongValue];
    v14 = v13;
    [MEMORY[0x277D3F258] secondsFromMachTime:unsignedLongLongValue2];
    v16 = v15;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v17 = [intervalsCopy objectForKey:@"IOReportChannelGroups"];
    allKeys = [v17 allKeys];

    obj = allKeys;
    v39 = [allKeys countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v39)
    {
      v19 = v14 - v16;
      v37 = *v48;
      v38 = intervalsCopy;
      do
      {
        v20 = 0;
        do
        {
          if (*v48 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v41 = v20;
          v21 = *(*(&v47 + 1) + 8 * v20);
          context = objc_autoreleasePoolPush();
          v22 = [intervalsCopy objectForKey:@"IOReportChannelGroups"];
          v23 = [v22 objectForKey:v21];

          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v24 = [v23 objectForKey:@"IOReportChannelGroups"];
          allKeys2 = [v24 allKeys];

          v26 = [allKeys2 countByEnumeratingWithState:&v43 objects:v51 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v44;
            do
            {
              v29 = 0;
              do
              {
                if (*v44 != v28)
                {
                  objc_enumerationMutation(allKeys2);
                }

                v30 = *(*(&v43 + 1) + 8 * v29);
                v31 = [v23 objectForKey:@"IOReportChannelGroups"];
                v32 = [v31 objectForKey:v30];

                v33 = [(PLIOReportMetricsAgent *)self createCategoryString:v21 forSubgroup:v30];
                [(PLIOReportMetricsAgent *)self logIOReportEntry:v32 forCategory:v33 withEntryDate:monotonicDate withAPWakeTime:1 isInterval:v19];

                ++v29;
              }

              while (v27 != v29);
              v27 = [allKeys2 countByEnumeratingWithState:&v43 objects:v51 count:16];
            }

            while (v27);
          }

          objc_autoreleasePoolPop(context);
          v20 = v41 + 1;
          intervalsCopy = v38;
        }

        while (v41 + 1 != v39);
        v39 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v39);
    }

    [(PLIOReportMetricsAgent *)self setLastEntryDate:monotonicDate];
    v8 = v34;
    groupCopy = v35;
  }

  objc_autoreleasePoolPop(v8);
}

- (void)logIOReportEntry:(id)entry forCategory:(id)category withEntryDate:(id)date withAPWakeTime:(double)time isInterval:(BOOL)interval
{
  intervalCopy = interval;
  v29 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  categoryCopy = category;
  dateCopy = date;
  v15 = objc_autoreleasePoolPush();
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v17 = objc_opt_new();
  v18 = [(PLIOReportMetricsAgent *)self isDynamicTable:categoryCopy];
  if (intervalCopy)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:time];
    [dictionary setObject:v19 forKeyedSubscript:@"APWakeTime"];

    [dictionary setObject:dateCopy forKeyedSubscript:@"timestampEnd"];
  }

  v20 = categoryCopy;
  v21 = v17;
  v22 = dictionary;
  IOReportIterate();
  if (v18)
  {
    [v22 setObject:v21 forKeyedSubscript:@"__PPSKVPairs__"];
  }

  v23 = PLLogIOReportMetrics();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v26 = v20;
    v27 = 2112;
    v28 = v22;
    _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "IOReportMetrics: category = %@, payload = %@", buf, 0x16u);
  }

  lastEntryDate = [(PLIOReportMetricsAgent *)self lastEntryDate];
  [(PLOperator *)self logForSubsystem:@"IOReportMetrics" category:v20 data:v22 date:lastEntryDate];

  objc_autoreleasePoolPop(v15);
}

uint64_t __95__PLIOReportMetricsAgent_logIOReportEntry_forCategory_withEntryDate_withAPWakeTime_isInterval___block_invoke(uint64_t a1, uint64_t a2)
{
  v50[2] = *MEMORY[0x277D85DE8];
  v4 = IOReportChannelGetChannelName();
  if ([*(a1 + 32) skipCurrentIteration:*(a1 + 40) forChannel:v4])
  {
    goto LABEL_2;
  }

  Format = IOReportChannelGetFormat();
  if (Format != 3)
  {
    if (Format != 2)
    {
      if (Format == 1)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithLongLong:IOReportSimpleGetIntegerValue()];
        v8 = v7;
        if (v4 && v7)
        {
          if (*(a1 + 64) == 1)
          {
            if ([v7 unsignedIntegerValue])
            {
              v9 = *(a1 + 48);
              v49[0] = @"Channel";
              v49[1] = @"Value";
              v50[0] = v4;
              v50[1] = v8;
              v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
              [v9 addObject:v10];
            }
          }

          else
          {
            [*(a1 + 56) setObject:v7 forKeyedSubscript:v4];
          }
        }
      }

      goto LABEL_49;
    }

    if ([MEMORY[0x277D3F208] internalBuild] && objc_msgSend(*(a1 + 40), "isEqualToString:", @"SoCStatsDeviceStates"))
    {
      if (![*(a1 + 32) allowlistedChannel:v4])
      {
LABEL_2:
        v5 = 16;
        goto LABEL_50;
      }

      v11 = PLLogIOReportMetrics();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v4;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "IOReportMetrics: Device States channel %@ is allowlisted", buf, 0xCu);
      }
    }

    Count = IOReportStateGetCount();
    if (Count < 1)
    {
LABEL_49:
      v5 = 0;
      goto LABEL_50;
    }

    v13 = Count;
    v14 = 0;
    v15 = 0x277CCA000uLL;
    while (1)
    {
      v16 = IOReportStateGetNameForIndex();
      if (!v16)
      {
        break;
      }

      v17 = v16;
      if ([v16 caseInsensitiveCompare:@"OFF"] && objc_msgSend(v17, "caseInsensitiveCompare:", @"INACT") && objc_msgSend(v17, "caseInsensitiveCompare:", @"PWROFF"))
      {
        goto LABEL_25;
      }

LABEL_34:

      v14 = (v14 + 1);
      if (v13 == v14)
      {
        goto LABEL_49;
      }
    }

    v17 = [*(v15 + 3240) stringWithFormat:@"%d", v14];
LABEL_25:
    v18 = [*(v15 + 3240) stringWithFormat:@"%@_%@", v4, v17];
    v19 = MEMORY[0x277CCABB0];
    IOReportStateGetDutyCycle();
    v20 = [v19 numberWithDouble:?];
    v21 = v20;
    if (v18)
    {
      v22 = v20 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      if (*(a1 + 64) == 1)
      {
        [v20 doubleValue];
        if (v23 >= 0.0)
        {
          v24 = *(a1 + 48);
          v46[0] = @"Channel";
          v46[1] = @"DutyCycle";
          v47[0] = v18;
          v47[1] = v21;
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
          v26 = v24;
          v15 = 0x277CCA000;
          [v26 addObject:v25];
        }
      }

      else
      {
        [*(a1 + 56) setObject:v20 forKeyedSubscript:v18];
      }
    }

    goto LABEL_34;
  }

  *buf = 0;
  BucketCount = IOReportHistogramGetBucketCount();
  if (BucketCount >= 1)
  {
    v28 = BucketCount;
    v29 = 0;
    v30 = 0x277CCA000uLL;
    do
    {
      IOReportHistogramGetBucketBounds();
      IOReportChannelGetUnit();
      v31 = MEMORY[0x277CCACA8];
      IOReportScaleValue();
      v33 = v32;
      IOReportScaleValue();
      v35 = [v31 stringWithFormat:@"%.1f%@-%.1f%@", v33, @"ms", v34, @"ms"];
      v36 = [*(v30 + 2992) numberWithUnsignedLongLong:IOReportHistogramGetBucketHits()];
      v37 = v36;
      if (v35)
      {
        v38 = v36 == 0;
      }

      else
      {
        v38 = 1;
      }

      if (!v38)
      {
        if (*(a1 + 64) == 1)
        {
          v39 = *(a1 + 48);
          v44[0] = @"Channel";
          v44[1] = @"DutyCycle";
          v45[0] = v35;
          v45[1] = v36;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
          v40 = a2;
          v42 = v41 = v30;
          [v39 addObject:v42];

          v30 = v41;
          a2 = v40;
        }

        else
        {
          [*(a1 + 56) setObject:v36 forKeyedSubscript:v35];
        }
      }

      ++v29;
    }

    while (v28 != v29);
  }

  v5 = 0;
LABEL_50:

  return v5;
}

- (void)startDisplayOffPeriodicTimer
{
  if (!self->_displayOffTimer)
  {
    v3 = MEMORY[0x277D3F1E0];
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    workQueue = [(PLOperator *)self workQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__PLIOReportMetricsAgent_startDisplayOffPeriodicTimer__block_invoke;
    v10[3] = &unk_27825B230;
    v10[4] = self;
    v6 = [v3 scheduledTimerWithMonotonicFireDate:monotonicDate withInterval:workQueue withQueue:v10 withBlock:180.0];
    displayOffTimer = self->_displayOffTimer;
    self->_displayOffTimer = v6;

    v8 = PLLogIOReportMetrics();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Display OFF timer started", v9, 2u);
    }
  }
}

- (void)stopDisplayOffPeriodicTimer
{
  displayOffTimer = self->_displayOffTimer;
  if (displayOffTimer)
  {
    [(PLMonotonicTimer *)displayOffTimer cancel];
    v4 = self->_displayOffTimer;
    self->_displayOffTimer = 0;

    v5 = PLLogIOReportMetrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Display OFF timer stopped", v6, 2u);
    }
  }
}

- (void)logDisplayOffAPWakeStats
{
  v8 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] taskMode])
  {
    v3 = [(PLStateTrackingComposition *)self->_stateTracker getCurrState:8];
    bOOLValue = [v3 BOOLValue];
    v5 = PLLogIOReportMetrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7[0] = 67109120;
      v7[1] = bOOLValue;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "logDisplayOffAPWakeStats: AP ON is %d", v7, 8u);
    }

    if (bOOLValue)
    {
      v6 = PLLogIOReportMetrics();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v7[0]) = 0;
        _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "Log table entries at display OFF + AP ON occurrence", v7, 2u);
      }

      [(PLIOReportMetricsAgent *)self logDisplayOffAPWake];
    }
  }
}

- (id)createCategoryString:(id)string forSubgroup:(id)subgroup
{
  stringCopy = string;
  v6 = stringCopy;
  if (subgroup)
  {
    v7 = [stringCopy stringByAppendingString:subgroup];
  }

  else
  {
    v7 = stringCopy;
  }

  v8 = v7;
  v9 = [v7 mutableCopy];
  [v9 replaceOccurrencesOfString:@" " withString:&stru_282B650A0 options:0 range:{0, objc_msgSend(v9, "length")}];

  return v9;
}

- (BOOL)allowlistedChannel:(id)channel
{
  channelCopy = channel;
  if (qword_2811F4C90 != -1)
  {
    dispatch_once(&qword_2811F4C90, &__block_literal_global_179);
  }

  if (qword_2811F4C88)
  {
    v4 = [qword_2811F4C88 containsObject:channelCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void *__45__PLIOReportMetricsAgent_allowlistedChannel___block_invoke()
{
  result = [MEMORY[0x277D3F208] isiPhone];
  if (result)
  {
    result = [MEMORY[0x277D3F208] kPLSoCClassOfDevice];
    if (result >= 1001021)
    {
      v1 = [MEMORY[0x277CBEB98] setWithObjects:{@"ATC0_COMMON", @"ATC0_USB", @"VENC0_DMA", @"VENC1_DMA", @"VENC0_SYS", @"VENC1_SYS", @"VENC0_PIPE4", @"VENC1_PIPE4", @"VENC0_PIPE5", @"VENC1_PIPE5", @"VENC0_ME0", @"VENC1_ME0", @"VENC0_ME1", @"VENC1_ME1", @"ISP_SYS", @"ISP_CPU", @"ISP_FE", 0}];
      qword_2811F4C88 = v1;

      return MEMORY[0x2821F96F8](v1);
    }
  }

  return result;
}

- (BOOL)isDynamicTable:(id)table
{
  tableCopy = table;
  v4 = ([tableCopy isEqualToString:@"ANS2MSP0"] & 1) == 0 && (objc_msgSend(tableCopy, "isEqualToString:", @"AOP2Power") & 1) == 0 && (objc_msgSend(tableCopy, "isEqualToString:", @"AOP-EXCLAVEPower") & 1) == 0 && (objc_msgSend(tableCopy, "isEqualToString:", @"DCPscanoutstats") & 1) == 0 && !objc_msgSend(tableCopy, "isEqualToString:", @"ISPISPEvents");

  return v4;
}

- (BOOL)skipCurrentIteration:(id)iteration forChannel:(id)channel
{
  iterationCopy = iteration;
  channelCopy = channel;
  v7 = [iterationCopy isEqualToString:@"ISPISPEvents"] && !objc_msgSend(channelCopy, "hasPrefix:", @"DPE_") || objc_msgSend(iterationCopy, "isEqualToString:", @"AOP2Performance") && (objc_msgSend(channelCopy, "hasPrefix:", @"Thread time") & 1) == 0;

  return v7;
}

@end