@interface PLMetricsAggregationService
+ (BOOL)metrickitClientsAvailable;
+ (void)load;
- (PLMetricsAggregationService)init;
- (void)createMetricsFile:(id)file;
- (void)logEventNoneSessionsFile;
- (void)setupMetricsAggregation;
- (void)setupMetricsListeners;
- (void)toggleMetricsAggregation:(BOOL)aggregation;
@end

@implementation PLMetricsAggregationService

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLMetricsAggregationService;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLMetricsAggregationService)init
{
  if ([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd"))
  {
    goto LABEL_6;
  }

  v6.receiver = self;
  v6.super_class = PLMetricsAggregationService;
  v3 = [(PLOperator *)&v6 init];
  if (!v3)
  {
    self = 0;
LABEL_6:
    selfCopy = 0;
    goto LABEL_7;
  }

  self = v3;
  selfCopy = self;
LABEL_7:

  return selfCopy;
}

- (void)setupMetricsAggregation
{
  [(PLMetricsAggregationService *)self setupMetricsListeners];
  if (([MEMORY[0x277D3F258] isAppAnalyticsEnabled] & 1) != 0 || +[PLMetricsAggregationService metrickitClientsAvailable](PLMetricsAggregationService, "metrickitClientsAvailable"))
  {
    v3 = [MEMORY[0x277D3F180] BOOLForKey:@"DisableMetricsAggregation" ifNotSet:0] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  [(PLMetricsAggregationService *)self toggleMetricsAggregation:v3];
}

- (void)toggleMetricsAggregation:(BOOL)aggregation
{
  v20[2] = *MEMORY[0x277D85DE8];
  if (aggregation)
  {
    v4 = PLLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_INFO, "metrics aggregation enabled", buf, 2u);
    }

    v5 = +[PLMetricsAggregationService defaults];
    v6 = [v5 objectForKeyedSubscript:@"Interval"];
    [v6 doubleValue];
    v8 = v7;

    v9 = MEMORY[0x277CBEB18];
    v10 = [MEMORY[0x277D3F138] timeCriterionWithInterval:v8];
    v11 = [v9 arrayWithObject:v10];

    pluggedInCriterion = [MEMORY[0x277D3F130] pluggedInCriterion];
    v20[0] = pluggedInCriterion;
    displayOffCriterion = [MEMORY[0x277D3F130] displayOffCriterion];
    v20[1] = displayOffCriterion;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    [v11 addObjectsFromArray:v14];

    mEMORY[0x277D3F140] = [MEMORY[0x277D3F140] sharedInstance];
    workQueue = [(PLOperator *)self workQueue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __56__PLMetricsAggregationService_toggleMetricsAggregation___block_invoke;
    v18[3] = &unk_27825A740;
    v18[4] = self;
    [mEMORY[0x277D3F140] scheduleActivityWithIdentifier:@"com.apple.powerlogd.PLAggregateDictionaryService.dailyTasks" withCriteria:v11 withMustRunCriterion:0 withQueue:workQueue withInterruptBlock:0 withActivityBlock:v18];
  }

  else
  {
    mEMORY[0x277D3F140]2 = [MEMORY[0x277D3F140] sharedInstance];
    [mEMORY[0x277D3F140]2 cancelActivityWithIdentifier:@"com.apple.powerlogd.PLAggregateDictionaryService.dailyTasks"];

    v11 = PLLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_INFO, "metrics aggregation disabled", buf, 2u);
    }
  }
}

void __56__PLMetricsAggregationService_toggleMetricsAggregation___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__PLMetricsAggregationService_toggleMetricsAggregation___block_invoke_2;
    block[3] = &unk_2782591D0;
    block[4] = *(a1 + 32);
    dispatch_async(v3, block);

    v4 = PLLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEFAULT, "Dispatched metric summarization activity", v5, 2u);
    }
  }
}

void __56__PLMetricsAggregationService_toggleMetricsAggregation___block_invoke_2(uint64_t a1)
{
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEFAULT, "Starting metric summarization activity", buf, 2u);
  }

  [*(a1 + 32) createMetricsFile:0];
  if ([MEMORY[0x277D3F180] taskMode])
  {
    [*(a1 + 32) logEventNoneSessionsFile];
  }

  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEFAULT, "Finished metric summarization activity", v4, 2u);
  }
}

- (void)setupMetricsListeners
{
  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v3 = objc_alloc(MEMORY[0x277D3F160]);
    workQueue = [(PLOperator *)self workQueue];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __52__PLMetricsAggregationService_setupMetricsListeners__block_invoke;
    v37[3] = &unk_2782597E8;
    v37[4] = self;
    v5 = [v3 initWithWorkQueue:workQueue forNotification:@"com.apple.powerlogd.metricsAggregate" requireState:0 withBlock:v37];
    [(PLMetricsAggregationService *)self setAggregateMetricsListener:v5];

    v6 = objc_alloc(MEMORY[0x277D3F160]);
    workQueue2 = [(PLOperator *)self workQueue];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __52__PLMetricsAggregationService_setupMetricsListeners__block_invoke_38;
    v36[3] = &unk_2782597E8;
    v36[4] = self;
    v8 = [v6 initWithWorkQueue:workQueue2 forNotification:@"com.apple.powerlogd.metricsAggregateToday" requireState:0 withBlock:v36];
    [(PLMetricsAggregationService *)self setAggregateMetricsTodayListener:v8];

    v9 = objc_alloc(MEMORY[0x277D3F160]);
    workQueue3 = [(PLOperator *)self workQueue];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __52__PLMetricsAggregationService_setupMetricsListeners__block_invoke_53;
    v35[3] = &unk_2782597E8;
    v35[4] = self;
    v11 = [v9 initWithWorkQueue:workQueue3 forNotification:@"com.apple.powerlogd.metricsAggregateForce" requireState:0 withBlock:v35];
    [(PLMetricsAggregationService *)self setAggregateMetricsForceListener:v11];

    v12 = objc_alloc(MEMORY[0x277D3F160]);
    workQueue4 = [(PLOperator *)self workQueue];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __52__PLMetricsAggregationService_setupMetricsListeners__block_invoke_57;
    v34[3] = &unk_2782597E8;
    v34[4] = self;
    v14 = [v12 initWithWorkQueue:workQueue4 forNotification:@"com.apple.powerlogd.metricsAggregateTodayForce" requireState:0 withBlock:v34];
    [(PLMetricsAggregationService *)self setAggregateMetricsTodayForceListener:v14];

    v15 = objc_alloc(MEMORY[0x277D3F160]);
    workQueue5 = [(PLOperator *)self workQueue];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __52__PLMetricsAggregationService_setupMetricsListeners__block_invoke_61;
    v33[3] = &unk_2782597E8;
    v33[4] = self;
    v17 = [v15 initWithWorkQueue:workQueue5 forNotification:@"com.apple.powerlogd.metricsAggregate24hrs" requireState:0 withBlock:v33];
    [(PLMetricsAggregationService *)self setAggregateMetrics24hrsListener:v17];

    v18 = objc_alloc(MEMORY[0x277D3F160]);
    workQueue6 = [(PLOperator *)self workQueue];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __52__PLMetricsAggregationService_setupMetricsListeners__block_invoke_68;
    v32[3] = &unk_2782597E8;
    v32[4] = self;
    v20 = [v18 initWithWorkQueue:workQueue6 forNotification:@"com.apple.powerlogd.metricsAggregate24hrsForce" requireState:0 withBlock:v32];
    [(PLMetricsAggregationService *)self setAggregateMetrics24hrsForceListener:v20];

    v21 = objc_alloc(MEMORY[0x277D3F160]);
    workQueue7 = [(PLOperator *)self workQueue];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __52__PLMetricsAggregationService_setupMetricsListeners__block_invoke_72;
    v31[3] = &unk_2782597E8;
    v31[4] = self;
    v23 = [v21 initWithWorkQueue:workQueue7 forNotification:@"com.apple.powerlogd.metricsAggregate1hr" requireState:0 withBlock:v31];
    [(PLMetricsAggregationService *)self setAggregateMetrics1hrListener:v23];

    v24 = objc_alloc(MEMORY[0x277D3F160]);
    workQueue8 = [(PLOperator *)self workQueue];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __52__PLMetricsAggregationService_setupMetricsListeners__block_invoke_79;
    v30[3] = &unk_2782597E8;
    v30[4] = self;
    v26 = [v24 initWithWorkQueue:workQueue8 forNotification:@"com.apple.powerlogd.metricsAggregate1hrForce" requireState:0 withBlock:v30];
    [(PLMetricsAggregationService *)self setAggregateMetrics1hrForceListener:v26];

    v27 = objc_alloc(MEMORY[0x277D3F278]);
    workQueue9 = [(PLOperator *)self workQueue];
    v29 = [v27 initWithWorkQueue:workQueue9 withRegistration:&unk_282C16FC8 withBlock:&__block_literal_global_9];
    [(PLMetricsAggregationService *)self setMetricSummarizationStateResponder:v29];
  }
}

void __52__PLMetricsAggregationService_setupMetricsListeners__block_invoke(uint64_t a1)
{
  if (([MEMORY[0x277D3F258] isAppAnalyticsEnabled] & 1) != 0 || +[PLMetricsAggregationService metrickitClientsAvailable](PLMetricsAggregationService, "metrickitClientsAvailable"))
  {
    v2 = PLLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEFAULT, "creating metrics file", v4, 2u);
    }

    [*(a1 + 32) createMetricsFile:0];
  }

  else
  {
    v3 = PLLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEFAULT, "metrics file notification ignored", buf, 2u);
    }
  }
}

void __52__PLMetricsAggregationService_setupMetricsListeners__block_invoke_38(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F258] isAppAnalyticsEnabled] & 1) != 0 || +[PLMetricsAggregationService metrickitClientsAvailable](PLMetricsAggregationService, "metrickitClientsAvailable"))
  {
    v2 = PLLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEFAULT, "creating metrics file for today", v6, 2u);
    }

    v7[0] = @"AppAnalyticsEnabled";
    v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D3F258], "isAppAnalyticsEnabled")}];
    v8[0] = v3;
    v7[1] = @"MetrickitClientsAvailable";
    v4 = [MEMORY[0x277CCABB0] numberWithBool:{+[PLMetricsAggregationService metrickitClientsAvailable](PLMetricsAggregationService, "metrickitClientsAvailable")}];
    v7[2] = @"today";
    v8[1] = v4;
    v8[2] = MEMORY[0x277CBEC38];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

    [*(a1 + 32) createMetricsFile:v5];
  }

  else
  {
    v5 = PLLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEFAULT, "metrics file notification ignored", v6, 2u);
    }
  }
}

void __52__PLMetricsAggregationService_setupMetricsListeners__block_invoke_53(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F258] isAppAnalyticsEnabled] & 1) == 0)
  {
    v2 = PLLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEFAULT, "metrics creation forced", v6, 2u);
    }
  }

  v7[0] = @"AppAnalyticsEnabled";
  v7[1] = @"MetrickitClientsAvailable";
  v8[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{+[PLMetricsAggregationService metrickitClientsAvailable](PLMetricsAggregationService, "metrickitClientsAvailable")}];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEFAULT, "creating metrics file", v6, 2u);
  }

  [*(a1 + 32) createMetricsFile:v4];
}

void __52__PLMetricsAggregationService_setupMetricsListeners__block_invoke_57(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F258] isAppAnalyticsEnabled] & 1) == 0)
  {
    v2 = PLLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEFAULT, "metrics creation forced", v7, 2u);
    }
  }

  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEFAULT, "creating metrics file for today", v7, 2u);
  }

  v4 = MEMORY[0x277CBEC38];
  v9[0] = MEMORY[0x277CBEC38];
  v8[0] = @"AppAnalyticsEnabled";
  v8[1] = @"MetrickitClientsAvailable";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{+[PLMetricsAggregationService metrickitClientsAvailable](PLMetricsAggregationService, "metrickitClientsAvailable")}];
  v8[2] = @"today";
  v9[1] = v5;
  v9[2] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  [*(a1 + 32) createMetricsFile:v6];
}

void __52__PLMetricsAggregationService_setupMetricsListeners__block_invoke_61(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F258] isAppAnalyticsEnabled] & 1) != 0 || +[PLMetricsAggregationService metrickitClientsAvailable](PLMetricsAggregationService, "metrickitClientsAvailable"))
  {
    v2 = PLLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEFAULT, "creating metrics file for last 24hrs", v6, 2u);
    }

    v7[0] = @"AppAnalyticsEnabled";
    v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D3F258], "isAppAnalyticsEnabled")}];
    v8[0] = v3;
    v7[1] = @"MetrickitClientsAvailable";
    v4 = [MEMORY[0x277CCABB0] numberWithBool:{+[PLMetricsAggregationService metrickitClientsAvailable](PLMetricsAggregationService, "metrickitClientsAvailable")}];
    v7[2] = @"last24hrs";
    v8[1] = v4;
    v8[2] = MEMORY[0x277CBEC38];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

    [*(a1 + 32) createMetricsFile:v5];
  }

  else
  {
    v5 = PLLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEFAULT, "metrics file notification ignored", v6, 2u);
    }
  }
}

void __52__PLMetricsAggregationService_setupMetricsListeners__block_invoke_68(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F258] isAppAnalyticsEnabled] & 1) == 0)
  {
    v2 = PLLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEFAULT, "metrics creation forced", v7, 2u);
    }
  }

  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEFAULT, "creating metrics file for last 24hrs", v7, 2u);
  }

  v4 = MEMORY[0x277CBEC38];
  v9[0] = MEMORY[0x277CBEC38];
  v8[0] = @"AppAnalyticsEnabled";
  v8[1] = @"MetrickitClientsAvailable";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{+[PLMetricsAggregationService metrickitClientsAvailable](PLMetricsAggregationService, "metrickitClientsAvailable")}];
  v8[2] = @"last24hrs";
  v9[1] = v5;
  v9[2] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  [*(a1 + 32) createMetricsFile:v6];
}

void __52__PLMetricsAggregationService_setupMetricsListeners__block_invoke_72(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F258] isAppAnalyticsEnabled] & 1) != 0 || +[PLMetricsAggregationService metrickitClientsAvailable](PLMetricsAggregationService, "metrickitClientsAvailable"))
  {
    v2 = PLLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEFAULT, "creating metrics file for last 1hrs", v6, 2u);
    }

    v7[0] = @"AppAnalyticsEnabled";
    v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D3F258], "isAppAnalyticsEnabled")}];
    v8[0] = v3;
    v7[1] = @"MetrickitClientsAvailable";
    v4 = [MEMORY[0x277CCABB0] numberWithBool:{+[PLMetricsAggregationService metrickitClientsAvailable](PLMetricsAggregationService, "metrickitClientsAvailable")}];
    v7[2] = @"last1hr";
    v8[1] = v4;
    v8[2] = MEMORY[0x277CBEC38];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

    [*(a1 + 32) createMetricsFile:v5];
  }

  else
  {
    v5 = PLLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEFAULT, "metrics file notification ignored", v6, 2u);
    }
  }
}

void __52__PLMetricsAggregationService_setupMetricsListeners__block_invoke_79(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F258] isAppAnalyticsEnabled] & 1) == 0)
  {
    v2 = PLLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEFAULT, "metrics creation forced", v7, 2u);
    }
  }

  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEFAULT, "creating metrics file for last 1hrs", v7, 2u);
  }

  v4 = MEMORY[0x277CBEC38];
  v9[0] = MEMORY[0x277CBEC38];
  v8[0] = @"AppAnalyticsEnabled";
  v8[1] = @"MetrickitClientsAvailable";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{+[PLMetricsAggregationService metrickitClientsAvailable](PLMetricsAggregationService, "metrickitClientsAvailable")}];
  v8[2] = @"last1hr";
  v9[1] = v5;
  v9[2] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  [*(a1 + 32) createMetricsFile:v6];
}

id __52__PLMetricsAggregationService_setupMetricsListeners__block_invoke_95()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"AppAnalyticsEnabled";
  v0 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D3F258], "isAppAnalyticsEnabled")}];
  v4[1] = @"MetrickitClientsAvailable";
  v5[0] = v0;
  v1 = [MEMORY[0x277CCABB0] numberWithBool:{+[PLMetricsAggregationService metrickitClientsAvailable](PLMetricsAggregationService, "metrickitClientsAvailable")}];
  v5[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (void)createMetricsFile:(id)file
{
  v20[2] = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v4 = PLLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEFAULT, "createMetricsFile called", buf, 2u);
  }

  if (([MEMORY[0x277D3F208] nonUIBuild] & 1) == 0)
  {
    v5 = PLLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEFAULT, "Not nonUIBuild", buf, 2u);
    }

    if ([MEMORY[0x277D3F208] internalBuild] && objc_msgSend(MEMORY[0x277D3F180], "BOOLForKey:ifNotSet:", @"SignpostReaderDisable", 0))
    {
      v6 = PLLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEFAULT, "signpost collection disabled", buf, 2u);
      }
    }

    else
    {
      if (!fileCopy)
      {
        v19[0] = @"AppAnalyticsEnabled";
        v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D3F258], "isAppAnalyticsEnabled")}];
        v20[0] = v7;
        v19[1] = @"MetrickitClientsAvailable";
        v8 = [MEMORY[0x277CCABB0] numberWithBool:{+[PLMetricsAggregationService metrickitClientsAvailable](PLMetricsAggregationService, "metrickitClientsAvailable")}];
        v20[1] = v8;
        fileCopy = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
      }

      v6 = PLQueryRegistered();
      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v18[0] = v6;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "Response to metrics file: %@", buf, 0xCu);
      }

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        isAppAnalyticsEnabled = [MEMORY[0x277D3F258] isAppAnalyticsEnabled];
        v14 = +[PLMetricsAggregationService metrickitClientsAvailable];
        *buf = 67109376;
        LODWORD(v18[0]) = isAppAnalyticsEnabled;
        WORD2(v18[0]) = 1024;
        *(v18 + 6) = v14;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "AppAnalyticsEnabled : %d, MetrickitClientsAvailable : %d", buf, 0xEu);
      }

      v11 = [v6 objectForKey:@"launchesTimeSeries"];

      if (v11)
      {
        v12 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __49__PLMetricsAggregationService_createMetricsFile___block_invoke;
        block[3] = &unk_2782591D0;
        v6 = v6;
        v16 = v6;
        dispatch_async(v12, block);
      }
    }
  }
}

void __49__PLMetricsAggregationService_createMetricsFile___block_invoke(uint64_t a1)
{
  v2 = objc_opt_class();
  v8 = NSStringFromClass(v2);
  v3 = [MEMORY[0x277D3F2A0] sharedCore];
  v4 = [v3 agents];
  v5 = [v4 operators];
  v6 = [v5 objectForKey:v8];

  if (v6)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:@"launchesTimeSeries"];
    [v6 logEventBackwardAppLaunchTimeSeries:v7];
  }
}

- (void)logEventNoneSessionsFile
{
  v55 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager contentsOfDirectoryAtPath:@"/var/mobile/Library/Logs/CrashReporter/" error:0];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self BEGINSWITH[cd] 'log-power-'"];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  if (![v6 count])
  {
    goto LABEL_33;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (!v8)
  {
    v10 = v7;
    goto LABEL_32;
  }

  v9 = v8;
  v37 = v6;
  v38 = v4;
  v10 = 0;
  v43 = *v49;
  v11 = 0.0;
  selfCopy = self;
  v40 = defaultManager;
  v42 = v7;
  do
  {
    v12 = 0;
    do
    {
      if (*v49 != v43)
      {
        objc_enumerationMutation(v7);
      }

      v13 = [@"/var/mobile/Library/Logs/CrashReporter/" stringByAppendingString:*(*(&v48 + 1) + 8 * v12)];
      v47 = 0;
      v14 = [defaultManager attributesOfItemAtPath:v13 error:&v47];
      v15 = v47;
      if (!v15)
      {
        fileModificationDate = [v14 fileModificationDate];
        [fileModificationDate timeIntervalSince1970];
        v25 = v24;

        if (v25 <= v11)
        {
          goto LABEL_18;
        }

        v17 = v10;
        v10 = v13;
        v11 = v25;
        goto LABEL_17;
      }

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v16 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __55__PLMetricsAggregationService_logEventNoneSessionsFile__block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v16;
        if (qword_2811F3F18 != -1)
        {
          dispatch_once(&qword_2811F3F18, block);
        }

        if (_MergedGlobals_1_6 == 1)
        {
          v41 = v10;
          v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Reading file error: %@", v15];
          v18 = MEMORY[0x277D3F178];
          v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLMetricsAggregationService.m"];
          lastPathComponent = [v19 lastPathComponent];
          v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMetricsAggregationService logEventNoneSessionsFile]"];
          [v18 logMessage:v17 fromFile:lastPathComponent fromFunction:v21 fromLineNumber:347];

          v22 = PLLogCommon();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v53 = v17;
            _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          defaultManager = v40;
          v10 = v41;
          self = selfCopy;
LABEL_17:

          v7 = v42;
        }
      }

LABEL_18:

      ++v12;
    }

    while (v9 != v12);
    v9 = [v7 countByEnumeratingWithState:&v48 objects:v54 count:16];
  }

  while (v9);

  v6 = v37;
  v4 = v38;
  if (v10)
  {
    v26 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:@"PLAggregateDictionaryService_EventNone_SessionsFile"];
    v45 = 0;
    v27 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v10 encoding:4 error:&v45];
    v28 = v45;
    [v26 setObject:v27 forKeyedSubscript:@"SessionsFileData"];

    if (v28)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v29 = objc_opt_class();
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __55__PLMetricsAggregationService_logEventNoneSessionsFile__block_invoke_131;
        v44[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v44[4] = v29;
        if (qword_2811F3F20 != -1)
        {
          dispatch_once(&qword_2811F3F20, v44);
        }

        if (byte_2811F3F11 == 1)
        {
          v30 = v10;
          v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error reading file content: %@", v28];
          v32 = MEMORY[0x277D3F178];
          v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLMetricsAggregationService.m"];
          lastPathComponent2 = [v33 lastPathComponent];
          v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMetricsAggregationService logEventNoneSessionsFile]"];
          [v32 logMessage:v31 fromFile:lastPathComponent2 fromFunction:v35 fromLineNumber:364];

          v36 = PLLogCommon();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v53 = v31;
            _os_log_debug_impl(&dword_21A4C6000, v36, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          defaultManager = v40;
          v10 = v30;
        }
      }
    }

    else
    {
      [(PLOperator *)self logEntry:v26];
    }

LABEL_32:
  }

LABEL_33:
}

void *__55__PLMetricsAggregationService_logEventNoneSessionsFile__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_6 = result;
  return result;
}

void *__55__PLMetricsAggregationService_logEventNoneSessionsFile__block_invoke_131(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3F11 = result;
  return result;
}

+ (BOOL)metrickitClientsAvailable
{
  if (qword_2811F3F28 != -1)
  {
    dispatch_once(&qword_2811F3F28, &__block_literal_global_136);
  }

  return byte_2811F3F12;
}

void __56__PLMetricsAggregationService_metrickitClientsAvailable__block_invoke()
{
  v0 = [MEMORY[0x277D3F180] objectForKey:@"MXClientsAvailable" forApplicationID:@"com.apple.metrickitd" synchronize:1];
  byte_2811F3F12 = [v0 BOOLValue];
}

@end