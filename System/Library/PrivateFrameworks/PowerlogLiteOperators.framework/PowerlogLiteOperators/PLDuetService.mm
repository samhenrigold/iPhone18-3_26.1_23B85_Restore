@interface PLDuetService
+ (id)aggregateNameDuetEnergyAccumulator;
+ (id)entryAggregateDefinitions;
+ (id)entryEventBackwardDefinitions;
+ (id)entryEventForwardDefinitionBatterySaverMode;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventNoneDefinitions;
+ (id)eventIntervalDefinitionDuetEvents;
+ (void)load;
- (PLDuetService)init;
- (id)trimConditionsForEntryKey:(id)key forTrimDate:(id)date;
- (void)dealloc;
- (void)handleBatterySaverModeToken:(int)token withNotification:(id)notification;
- (void)initOperatorDependancies;
- (void)logEventForwardBatterySaverModeWithState:(BOOL)state fromNotification:(id)notification;
- (void)setupBatterySaverModeForNotification:(id)notification;
@end

@implementation PLDuetService

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLDuetService;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventNoneDefinitions
{
  v10[5] = *MEMORY[0x277D85DE8];
  v9[0] = @"DASPoliciesBlockingCriteria";
  v2 = +[PLDuetServiceDAS entryEventNoneDefinitionsDASPoliciesBlockingCriteria];
  v10[0] = v2;
  v9[1] = @"DASActivity";
  v3 = +[PLDuetServiceDAS entryEventNoneDefinitionsDASActivity];
  v10[1] = v3;
  v9[2] = @"DASDropCount";
  v4 = +[PLDuetServiceDAS entryEventNoneDefinitionsDASActivityDropCount];
  v10[2] = v4;
  v9[3] = @"DASInfo";
  v5 = +[PLDuetServiceDAS entryEventNoneDefinitionsDASInfo];
  v10[3] = v5;
  v9[4] = @"DASActivityLifecycle";
  v6 = +[PLDuetServiceDAS entryEventNoneDefinitionsDASActivityLifecycle];
  v10[4] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:5];

  return v7;
}

+ (id)entryEventForwardDefinitions
{
  v12[7] = *MEMORY[0x277D85DE8];
  v11[0] = @"BatterySaverMode";
  entryEventForwardDefinitionBatterySaverMode = [self entryEventForwardDefinitionBatterySaverMode];
  v12[0] = entryEventForwardDefinitionBatterySaverMode;
  v11[1] = @"DASPrediction";
  v3 = +[PLDuetServiceDAS entryEventForwardDefinitionsDASPrediction];
  v12[1] = v3;
  v11[2] = @"DASApplicationUsagePrediction";
  v4 = +[PLDuetServiceDAS entryEventForwardDefinitionsDASApplicationPrediction];
  v12[2] = v4;
  v11[3] = @"LpmSourceInformation";
  v5 = +[PLDuetServiceLpmSource entryEventForwardDefinitionLpmSourceInformation];
  v12[3] = v5;
  v11[4] = @"DASEnergyBudgetAvailable";
  v6 = +[PLDuetServiceDAS entryEventForwardDefinitionsDASEnergyBudgetAvailable];
  v12[4] = v6;
  v11[5] = @"DASDataBudgetAvailable";
  v7 = +[PLDuetServiceDAS entryEventForwardDefinitionsDASDataBudgetAvailable];
  v12[5] = v7;
  v11[6] = @"DASTrial";
  v8 = +[PLDuetServiceDAS entryEventForwardDefinitionsDASTrial];
  v12[6] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:7];

  return v9;
}

+ (id)entryEventBackwardDefinitions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"DASEnergyBudgetReport";
  v2 = +[PLDuetServiceDAS entryEventBackwardDefinitionsDASEnergyBudgetReport];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)entryEventForwardDefinitionBatterySaverMode
{
  v15[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F258] hasBattery])
  {
    v14[0] = *MEMORY[0x277D3F4E8];
    v12 = *MEMORY[0x277D3F568];
    v13 = &unk_282C1CBE8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v15[0] = v2;
    v14[1] = *MEMORY[0x277D3F540];
    v10[0] = @"Mode";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v10[1] = @"Value";
    v11[0] = commonTypeDict_IntegerFormat;
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v11[1] = commonTypeDict_IntegerFormat2;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
    v15[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  return v8;
}

+ (id)entryEventIntervalDefinitions
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"DuetEvents";
  eventIntervalDefinitionDuetEvents = [self eventIntervalDefinitionDuetEvents];
  v7[1] = @"ComplicationEvents";
  v8[0] = eventIntervalDefinitionDuetEvents;
  eventIntervalDefinitionComplicationEvents = [self eventIntervalDefinitionComplicationEvents];
  v8[1] = eventIntervalDefinitionComplicationEvents;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (id)eventIntervalDefinitionDuetEvents
{
  v20[2] = *MEMORY[0x277D85DE8];
  if ([self isDebugEnabled])
  {
    v19[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F4A0];
    v17[0] = *MEMORY[0x277D3F568];
    v17[1] = v2;
    v18[0] = &unk_282C1CBF8;
    v18[1] = MEMORY[0x277CBEC38];
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v20[0] = v14;
    v19[1] = *MEMORY[0x277D3F540];
    v15[0] = @"BundleID";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
    v16[0] = commonTypeDict_StringFormat_withBundleID;
    v15[1] = @"UpdateType";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v16[1] = commonTypeDict_IntegerFormat;
    v15[2] = @"StartDate";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_DateFormat = [mEMORY[0x277D3F198]3 commonTypeDict_DateFormat];
    v16[2] = commonTypeDict_DateFormat;
    v15[3] = @"EndDate";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_DateFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_DateFormat];
    v16[3] = commonTypeDict_DateFormat2;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
    v20[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  return v12;
}

+ (id)entryAggregateDefinitions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"DuetEnergyAccumulator";
  aggregateNameDuetEnergyAccumulator = [self aggregateNameDuetEnergyAccumulator];
  v6[0] = aggregateNameDuetEnergyAccumulator;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)aggregateNameDuetEnergyAccumulator
{
  v24[4] = *MEMORY[0x277D85DE8];
  v23[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F590];
  v21[0] = *MEMORY[0x277D3F568];
  v21[1] = v2;
  v22[0] = &unk_282C1CBE8;
  v22[1] = &unk_282C13098;
  v21[2] = *MEMORY[0x277D3F4A0];
  v22[2] = MEMORY[0x277CBEC38];
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v24[0] = v14;
  v23[1] = *MEMORY[0x277D3F540];
  v19[0] = @"BundleID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v20[0] = commonTypeDict_StringFormat_withBundleID;
  v19[1] = @"QualificationID";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v20[1] = commonTypeDict_IntegerFormat;
  v19[2] = @"Energy";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
  v20[2] = commonTypeDict_RealFormat;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v24[1] = v9;
  v23[2] = *MEMORY[0x277D3F478];
  v17 = &unk_282C1CC08;
  v15 = *MEMORY[0x277D3F470];
  v16 = &unk_282C1CC18;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v18 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v23[3] = *MEMORY[0x277D3F488];
  v24[2] = v11;
  v24[3] = &unk_282C16AA0;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:4];

  return v12;
}

- (id)trimConditionsForEntryKey:(id)key forTrimDate:(id)date
{
  v4 = *MEMORY[0x277D3F5B8];
  keyCopy = key;
  v6 = [(PLOperator *)PLDuetService entryKeyForType:v4 andName:@"DuetEnergyAccumulator"];
  LODWORD(v4) = [keyCopy isEqualToString:v6];

  if (v4)
  {
    return @"ID < 0";
  }

  else
  {
    return 0;
  }
}

- (PLDuetService)init
{
  if ([MEMORY[0x277D3F208] nonUIBuild])
  {
    selfCopy = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PLDuetService;
    v4 = [(PLOperator *)&v12 init];
    if (v4)
    {
      v5 = objc_opt_new();
      lpmSource = v4->_lpmSource;
      v4->_lpmSource = v5;

      v7 = objc_opt_new();
      dasEvent = v4->_dasEvent;
      v4->_dasEvent = v7;

      v9 = objc_opt_new();
      impl = v4->_impl;
      v4->_impl = v9;
    }

    self = v4;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)initOperatorDependancies
{
  impl = [(PLDuetService *)self impl];

  if (impl)
  {
    impl2 = [(PLDuetService *)self impl];
    [impl2 initOperatorDependancies:self];
  }

  lpmSource = [(PLDuetService *)self lpmSource];
  [lpmSource initOperatorDependanciesLpmSource:self];

  dasEvent = [(PLDuetService *)self dasEvent];
  [dasEvent initOperatorDependanciesDAS:self];

  if ([MEMORY[0x277D3F258] hasBattery])
  {

    [(PLDuetService *)self setupBatterySaverModeForNotification:@"com.apple.system.lowpowermode"];
  }
}

- (void)setupBatterySaverModeForNotification:(id)notification
{
  v21 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v18 = notificationCopy;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "batterysaver: setting up %@", buf, 0xCu);
  }

  out_token = -1;
  uTF8String = [notificationCopy UTF8String];
  workQueue = [(PLOperator *)self workQueue];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __54__PLDuetService_setupBatterySaverModeForNotification___block_invoke;
  handler[3] = &unk_278261DD8;
  handler[4] = self;
  v8 = notificationCopy;
  v15 = v8;
  v9 = notify_register_dispatch(uTF8String, &out_token, workQueue, handler);

  v10 = PLLogCommon();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = v8;
      v19 = 1024;
      v20 = v9;
      _os_log_error_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_ERROR, "batterysaver: failed to register for %@ with status %d", buf, 0x12u);
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "batterysaver: re-syncing %@", buf, 0xCu);
    }

    if ([v8 isEqualToString:@"com.apple.system.lowpowermode"])
    {
      processInfo = [MEMORY[0x277CCAC38] processInfo];
      isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

      [(PLDuetService *)self logEventForwardBatterySaverModeWithState:isLowPowerModeEnabled fromNotification:v8];
    }

    else
    {
      [(PLDuetService *)self handleBatterySaverModeToken:out_token withNotification:v8];
    }

    v11 = PLLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "batterysaver: setup complete for %@", buf, 0xCu);
    }
  }
}

- (void)handleBatterySaverModeToken:(int)token withNotification:(id)notification
{
  v17 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  state64 = 0;
  state = notify_get_state(token, &state64);
  if (state)
  {
    v8 = state;
    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = notificationCopy;
      v15 = 1024;
      LODWORD(v16) = v8;
      _os_log_error_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_ERROR, "batterysaver: notify_get_state failed for %@ with status %d", buf, 0x12u);
    }
  }

  else
  {
    v10 = state64;
    v11 = PLLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v14 = notificationCopy;
      v15 = 2048;
      v16 = state64;
      _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "batterysaver: callback %@=%llu", buf, 0x16u);
    }

    [(PLDuetService *)self logEventForwardBatterySaverModeWithState:v10 != 0 fromNotification:notificationCopy];
  }
}

- (void)logEventForwardBatterySaverModeWithState:(BOOL)state fromNotification:(id)notification
{
  stateCopy = state;
  v17 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412546;
    v14 = notificationCopy;
    v15 = 1024;
    v16 = stateCopy;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "batterysaver: %@=%d", &v13, 0x12u);
  }

  v8 = [(PLOperator *)PLDuetService entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"BatterySaverMode"];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8];
  v10 = [(PLDuetService *)self registrationModeStringToEnum:notificationCopy];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
  [v9 setObject:v11 forKeyedSubscript:@"Mode"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:stateCopy];
  [v9 setObject:v12 forKeyedSubscript:@"Value"];

  [(PLOperator *)self logEntry:v9];
}

- (void)dealloc
{
  impl = [(PLDuetService *)self impl];

  if (impl)
  {
    impl2 = [(PLDuetService *)self impl];
    [impl2 stopService];
  }

  lpmSource = [(PLDuetService *)self lpmSource];
  [lpmSource stopService];

  dasEvent = [(PLDuetService *)self dasEvent];
  [dasEvent stopService];

  v7.receiver = self;
  v7.super_class = PLDuetService;
  [(PLOperator *)&v7 dealloc];
}

@end