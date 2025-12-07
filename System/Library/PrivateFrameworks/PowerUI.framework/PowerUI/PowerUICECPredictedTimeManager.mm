@interface PowerUICECPredictedTimeManager
+ (PowerUICECPredictedTimeManager)managerWithContextStore:(id)store withHandler:(id)handler;
- (BOOL)hasSufficientTimeForFullCharge;
- (BOOL)testOverrideForSignalMonitors;
- (PowerUICECPredictedTimeManager)initWithContextStore:(id)store withHandler:(id)handler;
- (double)leewayForConfidence:(double)confidence;
- (double)timeToFullChargeFromBatteryLevel:(unint64_t)level;
- (id)deadlineFromMonitors;
- (id)predictedUnplugTime;
- (id)testingOverrideForPredictedUnplugTime;
- (void)monitor:(id)monitor maySuggestNewFullChargeDeadline:(id)deadline;
- (void)resetState;
- (void)startAllMonitoring;
- (void)stopAllMonitoring;
@end

@implementation PowerUICECPredictedTimeManager

- (PowerUICECPredictedTimeManager)initWithContextStore:(id)store withHandler:(id)handler
{
  v44[4] = *MEMORY[0x277D85DE8];
  storeCopy = store;
  handlerCopy = handler;
  v43.receiver = self;
  v43.super_class = PowerUICECPredictedTimeManager;
  v9 = [(PowerUICECPredictedTimeManager *)&v43 init];
  if (v9)
  {
    v10 = os_log_create("com.apple.powerui.cec", "predictedTimeManager");
    log = v9->_log;
    v9->_log = v10;

    objc_storeStrong(&v9->_context, store);
    debugStatus = v9->_debugStatus;
    v9->_debugStatus = &stru_282D0B728;

    v13 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.powerui.cec"];
    defaults = v9->_defaults;
    v9->_defaults = v13;

    v9->_predictionLeeway = 18000.0;
    v15 = [[PowerUITrialManager alloc] initWithDefaultsDomain:@"com.apple.powerui.cec"];
    trialManager = v9->_trialManager;
    v9->_trialManager = v15;

    v9->_tBypassSignals = [(NSUserDefaults *)v9->_defaults BOOLForKey:@"testBypassSignals"];
    v17 = +[PowerUIBatteryMitigationManager sharedManager];
    batteryMitigationManager = v9->_batteryMitigationManager;
    v9->_batteryMitigationManager = v17;

    v19 = [(NSUserDefaults *)v9->_defaults objectForKey:@"testModelDuration"];
    v20 = v19;
    if (v19)
    {
      v21 = MEMORY[0x277CBEAA8];
      [v19 doubleValue];
      v22 = [v21 dateWithTimeIntervalSinceNow:?];
      tModelPredition = v9->_tModelPredition;
      v9->_tModelPredition = v22;
    }

    predictor = [MEMORY[0x277D36CD0] predictor];
    pluggedInPredictor = v9->_pluggedInPredictor;
    v9->_pluggedInPredictor = predictor;

    v26 = [(NSUserDefaults *)v9->_defaults objectForKey:@"predictedDeadline"];

    v27 = MEMORY[0x277CBEAA8];
    if (v26)
    {
      [v26 doubleValue];
      [v27 dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      [MEMORY[0x277CBEAA8] distantFuture];
    }
    v28 = ;
    deadline = v9->_deadline;
    v9->_deadline = v28;

    v30 = [(NSUserDefaults *)v9->_defaults objectForKey:@"predictedModelDeadline"];

    if (v30)
    {
      v31 = MEMORY[0x277CBEAA8];
      [v30 doubleValue];
      v32 = [v31 dateWithTimeIntervalSinceReferenceDate:?];
      modelDeadline = v9->_modelDeadline;
      v9->_modelDeadline = v32;
    }

    v34 = [PowerUIAlarmSignalMonitor monitorWithDelegate:v9 trialManager:v9->_trialManager withContext:v9->_context];
    v44[0] = v34;
    v35 = [PowerUIWalletSignalMonitor monitorWithDelegate:v9];
    v44[1] = v35;
    v36 = [PowerUICalendarSignalMonitor monitorWithDelegate:v9 trialManager:v9->_trialManager withContext:v9->_context];
    v44[2] = v36;
    v37 = [PowerUILocationSignalMonitor monitorWithDelegate:v9 trialManager:v9->_trialManager withContext:v9->_context];
    v44[3] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:4];
    monitors = v9->_monitors;
    v9->_monitors = v38;

    v40 = MEMORY[0x21CEF8A60](handlerCopy);
    handler = v9->_handler;
    v9->_handler = v40;
  }

  return v9;
}

+ (PowerUICECPredictedTimeManager)managerWithContextStore:(id)store withHandler:(id)handler
{
  storeCopy = store;
  handlerCopy = handler;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__PowerUICECPredictedTimeManager_managerWithContextStore_withHandler___block_invoke;
  v13[3] = &unk_2782D50B8;
  v14 = storeCopy;
  v15 = handlerCopy;
  v7 = managerWithContextStore_withHandler__onceToken;
  v8 = handlerCopy;
  v9 = storeCopy;
  if (v7 != -1)
  {
    dispatch_once(&managerWithContextStore_withHandler__onceToken, v13);
  }

  v10 = managerWithContextStore_withHandler__manager;
  v11 = managerWithContextStore_withHandler__manager;

  return v10;
}

uint64_t __70__PowerUICECPredictedTimeManager_managerWithContextStore_withHandler___block_invoke(uint64_t a1)
{
  managerWithContextStore_withHandler__manager = [[PowerUICECPredictedTimeManager alloc] initWithContextStore:*(a1 + 32) withHandler:*(a1 + 40)];

  return MEMORY[0x2821F96F8]();
}

- (void)startAllMonitoring
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_monitors;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) startMonitoring];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)stopAllMonitoring
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_monitors;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) stopMonitoring];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)testOverrideForSignalMonitors
{
  v3 = [(NSUserDefaults *)self->_defaults BOOLForKey:@"testBypassSignals"];
  if (v3)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "TestMode: Bypass Signals set", v6, 2u);
    }
  }

  return v3;
}

- (id)deadlineFromMonitors
{
  v36 = *MEMORY[0x277D85DE8];
  testOverrideForSignalMonitors = [(PowerUICECPredictedTimeManager *)self testOverrideForSignalMonitors];
  self->_tBypassSignals = testOverrideForSignalMonitors;
  if (testOverrideForSignalMonitors)
  {
    debugStatus = self->_debugStatus;
    v5 = @"\n";
    if (!debugStatus)
    {
      v5 = &stru_282D0B728;
    }

    v6 = MEMORY[0x277CCACA8];
    v7 = v5;
    v8 = [v6 stringWithFormat:@"%@%@%@", debugStatus, v7, @"Signal monitors overriden"];
    v9 = self->_debugStatus;
    self->_debugStatus = v8;

    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  }

  else
  {
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = self->_monitors;
    v11 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v7 = 0;
      v13 = *v28;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          requiredFullChargeDate = [v15 requiredFullChargeDate];
          if (requiredFullChargeDate)
          {
            log = self->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v32 = v15;
              v33 = 2112;
              v34 = requiredFullChargeDate;
              _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Monitor %@ suggested %@", buf, 0x16u);
            }

            v18 = [distantFuture earlierDate:requiredFullChargeDate];

            if ([v18 isEqualToDate:requiredFullChargeDate])
            {
              v19 = MEMORY[0x277CCACA8];
              v20 = [MEMORY[0x277CCA968] localizedStringFromDate:requiredFullChargeDate dateStyle:1 timeStyle:1];
              v21 = [v19 stringWithFormat:@"Monitor %@ suggested %@", v15, v20];

              v7 = v21;
            }

            distantFuture = v18;
          }
        }

        v12 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v12);
    }

    else
    {
      v7 = 0;
    }

    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", self->_debugStatus, 0];
    v23 = self->_debugStatus;
    self->_debugStatus = v22;

    v24 = self->_log;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = distantFuture;
      _os_log_impl(&dword_21B766000, v24, OS_LOG_TYPE_DEFAULT, "Monitors suggested: %@", buf, 0xCu);
    }
  }

  return distantFuture;
}

- (BOOL)hasSufficientTimeForFullCharge
{
  v42 = *MEMORY[0x277D85DE8];
  debugStatus = self->_debugStatus;
  self->_debugStatus = &stru_282D0B728;

  predictedUnplugTime = [(PowerUICECPredictedTimeManager *)self predictedUnplugTime];
  deadlineFromMonitors = [(PowerUICECPredictedTimeManager *)self deadlineFromMonitors];
  v6 = [(NSDate *)predictedUnplugTime earlierDate:deadlineFromMonitors];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = predictedUnplugTime;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Model Deadline is %@", buf, 0xCu);
  }

  v8 = self->_log;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = deadlineFromMonitors;
    _os_log_impl(&dword_21B766000, v8, OS_LOG_TYPE_DEFAULT, "Signal Deadline is %@", buf, 0xCu);
  }

  v9 = self->_log;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = v6;
    _os_log_impl(&dword_21B766000, v9, OS_LOG_TYPE_DEFAULT, "Deadline is %@", buf, 0xCu);
  }

  v10 = [(NSDate *)v6 dateByAddingTimeInterval:-1800.0];

  v11 = self->_log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = v10;
    _os_log_impl(&dword_21B766000, v11, OS_LOG_TYPE_DEFAULT, "Deadline post buffer is %@", buf, 0xCu);
  }

  if ([(PowerUIBatteryMitigationManager *)self->_batteryMitigationManager mitigationsCurrentlyEnabled])
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];

    v10 = distantPast;
  }

  v13 = self->_log;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = v10;
    _os_log_impl(&dword_21B766000, v13, OS_LOG_TYPE_DEFAULT, "Deadline post battery mitigations is %@", buf, 0xCu);
  }

  [(PowerUICECPredictedTimeManager *)self timeToFullChargeFromBatteryLevel:[PowerUISmartChargeUtilities currentBatteryLevelWithContext:self->_context]];
  v15 = v14;
  v16 = self->_log;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = MEMORY[0x277CCABB0];
    v18 = v16;
    v19 = [v17 numberWithDouble:v15];
    *buf = 138412290;
    v41 = v19;
    _os_log_impl(&dword_21B766000, v18, OS_LOG_TYPE_DEFAULT, "Time to full charge is %@", buf, 0xCu);
  }

  [(NSDate *)self->_deadline timeIntervalSinceReferenceDate];
  v21 = v20;
  [(NSDate *)v10 timeIntervalSinceReferenceDate];
  if (!self->_deadline || v22 < v21)
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v10;
      _os_log_impl(&dword_21B766000, v23, OS_LOG_TYPE_DEFAULT, "Setting new deadline %@", buf, 0xCu);
    }

    objc_storeStrong(&self->_deadline, v10);
    defaults = self->_defaults;
    [(NSDate *)self->_deadline timeIntervalSinceReferenceDate];
    [(NSUserDefaults *)defaults setDouble:@"predictedDeadline" forKey:?];
  }

  v25 = self->_log;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    deadline = self->_deadline;
    *buf = 138412290;
    v41 = deadline;
    _os_log_impl(&dword_21B766000, v25, OS_LOG_TYPE_DEFAULT, "Final deadline is %@", buf, 0xCu);
  }

  v27 = MEMORY[0x277CCACA8];
  v28 = [MEMORY[0x277CCA968] localizedStringFromDate:self->_deadline dateStyle:1 timeStyle:1];
  v29 = [v27 stringWithFormat:@"Final deadline is %@", v28];

  v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", self->_debugStatus, v29];
  v31 = self->_debugStatus;
  self->_debugStatus = v30;

  v32 = MEMORY[0x277CCACA8];
  [(NSDate *)self->_deadline timeIntervalSinceNow];
  v34 = [v32 stringWithFormat:@"Time to full charge %d mins, Time from deadline %d mins", (v15 / 60), (v33 / 60)];

  v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", self->_debugStatus, v34];
  v36 = self->_debugStatus;
  self->_debugStatus = v35;

  [(NSDate *)self->_deadline timeIntervalSinceNow];
  v38 = v37 > v15;

  return v38;
}

- (id)testingOverrideForPredictedUnplugTime
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"testModelDuration"];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x277CBEAA8];
    [v3 doubleValue];
    v6 = [v5 dateWithTimeIntervalSinceNow:?];
    tModelPredition = self->_tModelPredition;
    self->_tModelPredition = v6;

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_tModelPredition;
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "TestMode: ModelPrediction set to %@", &v13, 0xCu);
    }
  }

  v10 = self->_tModelPredition;
  v11 = v10;

  return v10;
}

- (double)leewayForConfidence:(double)confidence
{
  v22 = *MEMORY[0x277D85DE8];
  [(PowerUITrialManager *)self->_trialManager doubleFactorForName:@"thresholdForCECWithPluginModel"];
  v6 = v5;
  [(PowerUITrialManager *)self->_trialManager doubleFactorForName:@"leewayForCECWithPluginModel"];
  v8 = v7;
  log = self->_log;
  v10 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (v6 == 0.0 || v8 == 0.0)
  {
    v6 = 0.575;
    v8 = 18900.0;
    if (!v10)
    {
      goto LABEL_8;
    }

    LOWORD(v16) = 0;
    v11 = "Trial parameter loading failed resorting to defaults";
    v12 = log;
    v13 = 2;
  }

  else
  {
    if (!v10)
    {
      goto LABEL_8;
    }

    v16 = 134218240;
    confidenceCopy = v6;
    v18 = 2048;
    v19 = v8;
    v11 = "Loaded threshold %f and leeway %f from trial ";
    v12 = log;
    v13 = 22;
  }

  _os_log_impl(&dword_21B766000, v12, OS_LOG_TYPE_INFO, v11, &v16, v13);
LABEL_8:
  v14 = self->_log;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v16 = 134218496;
    confidenceCopy = confidence;
    v18 = 2048;
    v19 = v6;
    v20 = 2048;
    v21 = v8;
    _os_log_impl(&dword_21B766000, v14, OS_LOG_TYPE_INFO, "Evaluating confidence %f with threshold of %f and leeway of %f", &v16, 0x20u);
  }

  result = INFINITY;
  if (v6 < confidence)
  {
    return v8;
  }

  return result;
}

- (id)predictedUnplugTime
{
  v43 = *MEMORY[0x277D85DE8];
  testingOverrideForPredictedUnplugTime = [(PowerUICECPredictedTimeManager *)self testingOverrideForPredictedUnplugTime];
  if (testingOverrideForPredictedUnplugTime)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [MEMORY[0x277CCA968] localizedStringFromDate:testingOverrideForPredictedUnplugTime dateStyle:1 timeStyle:1];
    v6 = [v4 stringWithFormat:@"ML model deadline is overriden to %@", v5];

    objc_storeStrong(&self->_debugStatus, v6);
    v7 = testingOverrideForPredictedUnplugTime;
LABEL_5:
    v11 = v7;
    goto LABEL_6;
  }

  modelDeadline = self->_modelDeadline;
  if (modelDeadline)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA968] localizedStringFromDate:modelDeadline dateStyle:1 timeStyle:1];
    v6 = [v9 stringWithFormat:@"Cached ML model predicted deadline %@", v10];

    objc_storeStrong(&self->_debugStatus, v6);
    v7 = self->_modelDeadline;
    goto LABEL_5;
  }

  pluggedInPredictor = self->_pluggedInPredictor;
  v34 = 0;
  v14 = [(_OSChargingPredictor *)pluggedInPredictor chargePredictionOutputOfScheme:1 withError:&v34];
  v15 = v34;
  if (v15)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v17 = log;
      localizedDescription = [v15 localizedDescription];
      *buf = 138412290;
      v36 = *&localizedDescription;
      _os_log_impl(&dword_21B766000, v17, OS_LOG_TYPE_DEFAULT, "Error querying the predictor through the client %@", buf, 0xCu);
    }
  }

  [v14 confidence];
  v20 = v19;
  [v14 chargingDuration];
  v22 = v21;
  [(PowerUICECPredictedTimeManager *)self leewayForConfidence:v20];
  self->_predictionLeeway = v23;
  v24 = fmin(fmax(v22 - v23, 0.0), 36000.0);
  v25 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v24];
  v26 = self->_log;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    predictionLeeway = self->_predictionLeeway;
    *buf = 134218754;
    v36 = v24;
    v37 = 2112;
    v38 = v25;
    v39 = 2048;
    v40 = predictionLeeway;
    v41 = 2048;
    v42 = v20;
    _os_log_impl(&dword_21B766000, v26, OS_LOG_TYPE_DEFAULT, "OSIntelligence predicts device to be plugged in for %lf until %@ after leeway of %lf with confidence %lf", buf, 0x2Au);
  }

  if (v20 <= 0.575)
  {
    v29 = self->_log;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, v29, OS_LOG_TYPE_DEFAULT, "Prediction model not confident. Setting an earlier date", buf, 2u);
    }

    date = [MEMORY[0x277CBEAA8] date];
  }

  else
  {
    date = v25;
  }

  v30 = self->_modelDeadline;
  self->_modelDeadline = date;

  defaults = self->_defaults;
  [(NSDate *)self->_modelDeadline timeIntervalSinceReferenceDate];
  [(NSUserDefaults *)defaults setDouble:@"predictedModelDeadline" forKey:?];
  v32 = MEMORY[0x277CCACA8];
  v33 = [MEMORY[0x277CCA968] localizedStringFromDate:self->_modelDeadline dateStyle:1 timeStyle:1];
  v6 = [v32 stringWithFormat:@"ML model predicted deadline %@ (confidence %lf)", v33, *&v20];

  objc_storeStrong(&self->_debugStatus, v6);
  v11 = self->_modelDeadline;

LABEL_6:

  return v11;
}

- (double)timeToFullChargeFromBatteryLevel:(unint64_t)level
{
  if (level == 80)
  {
    v3 = [PowerUISmartChargeUtilities historicalFullChargeDurationStartingAt:80 withMinimumPluginDuration:1200];
    if ([v3 count] >= 3)
    {
      v4 = [v3 sortedArrayUsingSelector:sel_compare_];
      v5 = [v4 subarrayWithRange:{1, objc_msgSend(v4, "count") - 2}];

      v3 = v5;
    }

    [v3 percentile:0.95];
    v7 = v6;
    if ([v3 count] < 4)
    {
      v8 = 5400.0;
    }

    else
    {
      v8 = fmax(fmin(v7 / 60.0, 180.0), 40.0) * 60.0;
    }
  }

  else if (level - 31 > 0x2B)
  {
    return 14400.0;
  }

  else
  {
    return (60 * (170 - level) + 15);
  }

  return v8;
}

- (void)monitor:(id)monitor maySuggestNewFullChargeDeadline:(id)deadline
{
  [deadline timeIntervalSinceDate:self->_deadline];
  if (v5 < 0.0)
  {
    v6 = *(self->_handler + 2);

    v6();
  }
}

- (void)resetState
{
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"predictedDeadline"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"predictedModelDeadline"];
  deadline = self->_deadline;
  self->_deadline = 0;

  modelDeadline = self->_modelDeadline;
  self->_modelDeadline = 0;

  [(PowerUICECPredictedTimeManager *)self stopAllMonitoring];
}

@end