@interface CSTriggerManager
+ (id)sharedInstance;
+ (void)run;
- (BOOL)checkCpuPercentageAndInvokeIssueDetection:(id)detection windowStartDate:(id)date;
- (BOOL)checkDrainAndInvokeIssueDetection:(id)detection;
- (BOOL)cpuPercentageTriggerForWindowEndDate:(id)date windowStartDate:(id)startDate score:(double *)score;
- (id)_init;
- (id)generateMetadataForDrain:(int)drain cpuPercentage:(int)percentage detectionLookbackDuration:(int)duration;
- (id)generatePayloadWithMetadata:(id)metadata triggeredDetection:(int)detection triggeredType:(int)type;
- (id)getTriggerInterval;
- (int)getDetectionLookbackDuration;
- (int)getDrainPercentage:(id)percentage;
- (void)_start;
- (void)logTriggerToPPS:(int)s cpuPercentage:(int)percentage triggeredDetection:(int)detection triggeredType:(int)type detectionLookbackDuration:(int)duration;
- (void)modifyTriggerInterval:(id)interval;
- (void)processTimerFiredAction;
@end

@implementation CSTriggerManager

+ (void)run
{
  if (run_onceToken != -1)
  {
    +[CSTriggerManager run];
  }
}

void __23__CSTriggerManager_run__block_invoke()
{
  v0 = +[CSTriggerManager sharedInstance];
  [v0 _start];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CSTriggerManager sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

uint64_t __34__CSTriggerManager_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance = [[CSTriggerManager alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v13.receiver = self;
  v13.super_class = CSTriggerManager;
  v2 = [(CSTriggerManager *)&v13 init];
  if (v2)
  {
    v3 = [CSLogger logForCategory:@"CSTriggerManager"];
    logger = v2->_logger;
    v2->_logger = v3;

    triggerTimer = v2->_triggerTimer;
    v2->_triggerTimer = 0;

    *&v2->_triggerInterval = 1155596288;
    lastTriggerTimerDate = v2->_lastTriggerTimerDate;
    v2->_lastTriggerTimerDate = 0;

    v7 = +[CSPowerlogDBReader sharedInstance];
    powerlogDBReader = v2->_powerlogDBReader;
    v2->_powerlogDBReader = v7;

    v9 = +[CSIssueDetector sharedInstance];
    issueDetector = v2->_issueDetector;
    v2->_issueDetector = v9;

    v11 = v2;
  }

  return v2;
}

- (void)_start
{
  logger = self->_logger;
  v4 = os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "Started CSTriggerManagerService", buf, 2u);
  }

  v5 = getMainQueue(v4);
  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v5);
  triggerTimer = self->_triggerTimer;
  self->_triggerTimer = v6;

  v8 = self->_triggerTimer;
  v9 = dispatch_walltime(0, 0);
  dispatch_source_set_timer(v8, v9, (self->_triggerInterval * 1000000000.0), 0x8BB2C97000uLL);
  objc_initWeak(buf, self);
  v10 = self->_triggerTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __26__CSTriggerManager__start__block_invoke;
  handler[3] = &unk_278DF5180;
  objc_copyWeak(&v14, buf);
  dispatch_source_set_event_handler(v10, handler);
  dispatch_resume(self->_triggerTimer);
  v11 = self->_logger;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_243DC3000, v11, OS_LOG_TYPE_DEFAULT, "Repeating timer for Trigger polling armed.", v12, 2u);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

void __26__CSTriggerManager__start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained processTimerFiredAction];
}

- (id)getTriggerInterval
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = getMainQueue(self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__CSTriggerManager_getTriggerInterval__block_invoke;
  v6[3] = &unk_278DF51A8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __38__CSTriggerManager_getTriggerInterval__block_invoke(uint64_t a1, double a2)
{
  LODWORD(a2) = *(*(a1 + 32) + 8);
  *(*(*(a1 + 40) + 8) + 40) = [MEMORY[0x277CCABB0] numberWithFloat:a2];

  return MEMORY[0x2821F96F8]();
}

- (void)modifyTriggerInterval:(id)interval
{
  intervalCopy = interval;
  triggerInterval = self->_triggerInterval;
  floatValue = [intervalCopy floatValue];
  if (triggerInterval != v7)
  {
    v8 = getMainQueue(floatValue);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __42__CSTriggerManager_modifyTriggerInterval___block_invoke;
    v9[3] = &unk_278DF51D0;
    v9[4] = self;
    v10 = intervalCopy;
    dispatch_sync(v8, v9);
  }
}

void __42__CSTriggerManager_modifyTriggerInterval___block_invoke(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 24));
  [*(a1 + 40) floatValue];
  if (v2 == 0.0)
  {
    *(*(a1 + 32) + 12) = *(*(a1 + 32) + 8);
    v3 = *(*(a1 + 32) + 24);
    v4 = dispatch_walltime(0, 0);
    v5 = v3;
    v6 = 1;
  }

  else
  {
    [*(a1 + 40) floatValue];
    *(*(a1 + 32) + 8) = v7;
    v8 = *(*(a1 + 32) + 24);
    v4 = dispatch_walltime(0, 0);
    v6 = (*(*(a1 + 32) + 8) * 1000000000.0);
    v5 = v8;
  }

  dispatch_source_set_timer(v5, v4, v6, 0x8BB2C97000uLL);
  v9 = *(*(a1 + 32) + 24);

  dispatch_resume(v9);
}

- (int)getDetectionLookbackDuration
{
  if (!self->_lastTriggerTimerDate)
  {
    return 10800;
  }

  selfCopy = self;
  v3 = [MEMORY[0x277CBEAA8] now];
  [v3 timeIntervalSinceDate:selfCopy->_lastTriggerTimerDate];
  LODWORD(selfCopy) = v4;

  v5 = (selfCopy + 3600);
  if (selfCopy > 18000)
  {
    v5 = 21600.0;
  }

  if (v5 < 10800.0)
  {
    return 10800.0;
  }

  return v5;
}

- (BOOL)checkDrainAndInvokeIssueDetection:(id)detection
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [(CSTriggerManager *)self getDrainPercentage:detection];
  if (v4 < 2)
  {
    v11 = +[CSLogger signpostCategory];
    if (os_signpost_enabled(v11))
    {
      v13 = 67240192;
      v14 = v4;
      _os_signpost_emit_with_name_impl(&dword_243DC3000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Trigger NonDetection", "Drain Percentage: %{public, name=drainPercentage}d\n", &v13, 8u);
    }

    selfCopy2 = self;
    v8 = v4;
    v9 = 0;
    v10 = 0xFFFFFFFFLL;
  }

  else
  {
    getDetectionLookbackDuration = [(CSTriggerManager *)self getDetectionLookbackDuration];
    [(CSIssueDetector *)self->_issueDetector detectWithLookbackDuration:getDetectionLookbackDuration];
    v6 = +[CSLogger signpostCategory];
    if (os_signpost_enabled(v6))
    {
      v13 = 67240192;
      v14 = v4;
      _os_signpost_emit_with_name_impl(&dword_243DC3000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Trigger Detection", "Drain Percentage: %{public, name=drainPercentage}d\n", &v13, 8u);
    }

    selfCopy2 = self;
    v8 = v4;
    v9 = 1;
    v10 = getDetectionLookbackDuration;
  }

  [(CSTriggerManager *)selfCopy2 logTriggerToPPS:v8 cpuPercentage:0xFFFFFFFFLL triggeredDetection:v9 triggeredType:1 detectionLookbackDuration:v10];
  return v4 > 1;
}

- (int)getDrainPercentage:(id)percentage
{
  percentageCopy = percentage;
  if (![percentageCopy count])
  {
    goto LABEL_10;
  }

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "Trigger DB query returned non empty results. Processing", v14, 2u);
  }

  if ([percentageCopy count])
  {
    v6 = 0;
    intValue = 0;
    do
    {
      v8 = [percentageCopy objectAtIndexedSubscript:v6];
      v9 = [v8 objectForKeyedSubscript:@"BatteryDrain"];
      null = [MEMORY[0x277CBEB68] null];

      if (v9 != null)
      {
        v11 = [percentageCopy objectAtIndexedSubscript:v6];
        v12 = [v11 objectForKeyedSubscript:@"BatteryDrain"];
        intValue = [v12 intValue];

        if (intValue > 1)
        {
          break;
        }
      }

      ++v6;
    }

    while ([percentageCopy count] > v6);
  }

  else
  {
LABEL_10:
    intValue = 0;
  }

  return intValue;
}

- (BOOL)checkCpuPercentageAndInvokeIssueDetection:(id)detection windowStartDate:(id)date
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0.0;
  v5 = [(CSTriggerManager *)self cpuPercentageTriggerForWindowEndDate:detection windowStartDate:date score:&v10];
  v6 = +[CSLogger signpostCategory];
  v7 = os_signpost_enabled(v6);
  if (v5)
  {
    if (v7)
    {
      *buf = 67240192;
      v12 = v10;
      _os_signpost_emit_with_name_impl(&dword_243DC3000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Trigger Detection", "CPU Percentage: %{public, name=percentage}d\n", buf, 8u);
    }

    getDetectionLookbackDuration = [(CSTriggerManager *)self getDetectionLookbackDuration];
    [(CSTriggerManager *)self logTriggerToPPS:0xFFFFFFFFLL cpuPercentage:v10 triggeredDetection:1 triggeredType:2 detectionLookbackDuration:getDetectionLookbackDuration];
    [(CSIssueDetector *)self->_issueDetector detectWithLookbackDuration:getDetectionLookbackDuration];
  }

  else
  {
    if (v7)
    {
      *buf = 67240192;
      v12 = v10;
      _os_signpost_emit_with_name_impl(&dword_243DC3000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Trigger NonDetection", "CPU Percentage: %{public, name=percentage}d\n", buf, 8u);
    }

    [(CSTriggerManager *)self logTriggerToPPS:0xFFFFFFFFLL cpuPercentage:v10 triggeredDetection:0 triggeredType:2 detectionLookbackDuration:0xFFFFFFFFLL];
  }

  return v5;
}

- (BOOL)cpuPercentageTriggerForWindowEndDate:(id)date windowStartDate:(id)startDate score:(double *)score
{
  v25 = *MEMORY[0x277D85DE8];
  powerlogDBReader = self->_powerlogDBReader;
  startDateCopy = startDate;
  dateCopy = date;
  [(CSPowerlogDBReader *)powerlogDBReader openConnection];
  [(CSPowerlogDBReader *)self->_powerlogDBReader getTotalCPUTimeWithStartDate:startDateCopy andEndDate:dateCopy];
  v12 = v11;
  powerlogDBReader = [(CSTriggerManager *)self powerlogDBReader];
  v14 = [powerlogDBReader getAPWakeIntervalListWithStartDate:startDateCopy andEndDate:dateCopy];

  [(CSPowerlogDBReader *)self->_powerlogDBReader closeConnection];
  [v14 durationInSeconds];
  v16 = v15;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 134218240;
    v22 = v12;
    v23 = 2048;
    v24 = v16;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "cpuPercentageTrigger: cpuTimeS: %f, apWakeTimeS %f", &v21, 0x16u);
  }

  if (v16 <= 0.0)
  {
    v19 = self->_logger;
    v18 = -1.0;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_243DC3000, v19, OS_LOG_TYPE_INFO, "Error totalApWakeTime is 0", &v21, 2u);
    }
  }

  else
  {
    v18 = v12 * 100.0 / v16;
  }

  if (score)
  {
    *score = v18;
  }

  return v18 >= 70.0;
}

- (void)processTimerFiredAction
{
  v17 = *MEMORY[0x277D85DE8];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "Flushing powerlog tables", &v13, 2u);
  }

  PLQueryRegistered();
  v4 = [MEMORY[0x277CBEAA8] now];
  v5 = [v4 dateByAddingTimeInterval:-7200.0];
  v6 = self->_logger;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = *&v5;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_243DC3000, v6, OS_LOG_TYPE_DEFAULT, "processTimerFiredAction: Querying DB with time window from: %@ to %@", &v13, 0x16u);
  }

  v7 = +[CSLogger signpostCategory];
  if (os_signpost_enabled(v7))
  {
    triggerInterval = self->_triggerInterval;
    v13 = 134349056;
    v14 = triggerInterval;
    _os_signpost_emit_with_name_impl(&dword_243DC3000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Trigger Fired", "Interval: %{public, name=interval}f\n", &v13, 0xCu);
  }

  if (self->_savedTriggerInterval != 0.0)
  {
    self->_savedTriggerInterval = 0.0;
    dispatch_suspend(self->_triggerTimer);
    triggerTimer = self->_triggerTimer;
    v10 = dispatch_walltime(0, (self->_triggerInterval * 1000000000.0));
    dispatch_source_set_timer(triggerTimer, v10, (self->_triggerInterval * 1000000000.0), 0x8BB2C97000uLL);
    dispatch_resume(self->_triggerTimer);
  }

  [(CSTriggerManager *)self detectAndInvokeIssueDetection:v4 slidingWindowStartDate:v5];
  v11 = [MEMORY[0x277CBEAA8] now];
  lastTriggerTimerDate = self->_lastTriggerTimerDate;
  self->_lastTriggerTimerDate = v11;
}

- (void)logTriggerToPPS:(int)s cpuPercentage:(int)percentage triggeredDetection:(int)detection triggeredType:(int)type detectionLookbackDuration:(int)duration
{
  v7 = *&duration;
  v8 = *&type;
  v9 = *&detection;
  v10 = *&percentage;
  v11 = *&s;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_INFO))
  {
    *v16 = 0;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_INFO, "Logging trigger information in powerlog", v16, 2u);
  }

  if (logTriggerToPPS_cpuPercentage_triggeredDetection_triggeredType_detectionLookbackDuration__onceToken != -1)
  {
    [CSTriggerManager logTriggerToPPS:cpuPercentage:triggeredDetection:triggeredType:detectionLookbackDuration:];
  }

  v14 = [(CSTriggerManager *)self generateMetadataForDrain:v11 cpuPercentage:v10 detectionLookbackDuration:v7];
  v15 = [(CSTriggerManager *)self generatePayloadWithMetadata:v14 triggeredDetection:v9 triggeredType:v8];

  PPSSendTelemetry();
}

uint64_t __109__CSTriggerManager_logTriggerToPPS_cpuPercentage_triggeredDetection_triggeredType_detectionLookbackDuration___block_invoke()
{
  result = PPSCreateTelemetryIdentifier();
  logTriggerToPPS_cpuPercentage_triggeredDetection_triggeredType_detectionLookbackDuration__streamID = result;
  return result;
}

- (id)generateMetadataForDrain:(int)drain cpuPercentage:(int)percentage detectionLookbackDuration:(int)duration
{
  v5 = *&duration;
  v6 = *&percentage;
  v7 = *&drain;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (v7 != -1)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:v7];
    [dictionary setObject:v9 forKeyedSubscript:@"DrainPercentage"];
  }

  if (v6 != -1)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInt:v6];
    [dictionary setObject:v10 forKeyedSubscript:@"CPUPercentage"];
  }

  if (v5 != -1)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInt:v5];
    [dictionary setObject:v11 forKeyedSubscript:@"DetectionLookbackDuration"];
  }

  return dictionary;
}

- (id)generatePayloadWithMetadata:(id)metadata triggeredDetection:(int)detection triggeredType:(int)type
{
  v5 = *&type;
  v6 = *&detection;
  v16[3] = *MEMORY[0x277D85DE8];
  v14 = 0;
  v7 = [MEMORY[0x277CCAAA0] dataWithJSONObject:metadata options:0 error:&v14];
  v8 = v14;
  v15[0] = @"Source";
  v9 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  v16[0] = v9;
  v15[1] = @"Metadata";
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
  v16[1] = v10;
  v15[2] = @"TriggeredDetection";
  v11 = [MEMORY[0x277CCABB0] numberWithInt:v6];
  v16[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  return v12;
}

@end