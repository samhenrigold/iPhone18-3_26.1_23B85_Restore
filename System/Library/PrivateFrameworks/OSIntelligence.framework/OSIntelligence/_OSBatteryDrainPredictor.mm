@interface _OSBatteryDrainPredictor
+ (id)behaviorDescription:(int64_t)description;
+ (id)predictor;
- (BOOL)highBatteryDrainComparedtoHourlyAggregate;
- (_OSBatteryDrainPredictor)init;
- (id)drainPerDayFromDate:(id)date forNumberOfDays:(int)days;
- (id)firstBatteryLevelDate;
- (id)lastBatteryLevelDate;
- (int64_t)historicalClassification;
- (int64_t)lastBatteryLevelValue;
- (void)logCompletion:(id)completion;
- (void)recordIntelligentLPMThreshold:(int64_t)threshold threshold:(int64_t)a4;
@end

@implementation _OSBatteryDrainPredictor

- (_OSBatteryDrainPredictor)init
{
  v6.receiver = self;
  v6.super_class = _OSBatteryDrainPredictor;
  v2 = [(_OSBatteryDrainPredictor *)&v6 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.osintelligence", "batteryDrainPrediction");
    log = v2->_log;
    v2->_log = v3;
  }

  return v2;
}

+ (id)predictor
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (id)behaviorDescription:(int64_t)description
{
  if ((description - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2799C1CE8[description - 1];
  }
}

- (int64_t)historicalClassification
{
  v28 = *MEMORY[0x277D85DE8];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [MEMORY[0x277CBEAA8] now];
  v5 = [currentCalendar components:28 fromDate:v4];
  v6 = [currentCalendar dateFromComponents:v5];

  v7 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v6 sinceDate:-604800.0];
  v8 = [(_OSBatteryDrainPredictor *)self drainPerDayFromDate:v7 forNumberOfDays:7];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v8;
    _os_log_impl(&dword_25D171000, log, OS_LOG_TYPE_DEFAULT, "Drain per day: %@", buf, 0xCu);
  }

  allValues = [v8 allValues];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v21 + 1) + 8 * i) intValue] > 90)
        {
          ++v13;
        }
      }

      v12 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v16 = self->_log;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v27) = v13;
    _os_log_impl(&dword_25D171000, v16, OS_LOG_TYPE_DEFAULT, "Number of days that cross the threshold %d", buf, 8u);
  }

  v17 = 2;
  v18 = 3;
  if (v13 >= 8)
  {
    v18 = 0;
  }

  if (v13 >= 5)
  {
    v17 = v18;
  }

  if (v13 >= 2)
  {
    v19 = v17;
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

- (void)logCompletion:(id)completion
{
  completionCopy = completion;
  state = [completionCopy state];
  log = self->_log;
  v7 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
  if (state)
  {
    if (v7)
    {
      [(_OSBatteryDrainPredictor *)log logCompletion:completionCopy];
    }
  }

  else if (v7)
  {
    [(_OSBatteryDrainPredictor *)log logCompletion:v8, v9, v10, v11, v12, v13, v14];
  }
}

- (id)drainPerDayFromDate:(id)date forNumberOfDays:(int)days
{
  v42 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  selfCopy = self;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    [(_OSBatteryDrainPredictor *)log drainPerDayFromDate:v6 forNumberOfDays:v7, v8, v9, v10, v11, v12];
  }

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v13 = [currentCalendar components:28 fromDate:dateCopy];
  v33 = [currentCalendar dateFromComponents:v13];

  v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (days >= 1)
  {
    v15 = 0;
    *&v14 = 138412546;
    v29 = v14;
    do
    {
      v16 = [v33 dateByAddingTimeInterval:{v15 * 86400.0, v29}];
      v17 = [v16 dateByAddingTimeInterval:86399.0];
      v18 = selfCopy->_log;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = v29;
        *&buf[4] = v16;
        *&buf[12] = 2112;
        *&buf[14] = v17;
        _os_log_debug_impl(&dword_25D171000, v18, OS_LOG_TYPE_DEBUG, "Processing events from %@ to %@", buf, 0x16u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v39 = __Block_byref_object_copy__5;
      v40 = __Block_byref_object_dispose__5;
      v41 = objc_alloc_init(_dayDrainInfo);
      v19 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:v16 endDate:v17 maxEvents:0 lastN:0 reversed:0];
      v20 = BiomeLibrary();
      device = [v20 Device];
      power = [device Power];
      batteryLevel = [power BatteryLevel];
      v24 = [batteryLevel publisherWithOptions:v19];
      v25 = [v24 filterWithIsIncluded:&__block_literal_global_8];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __64___OSBatteryDrainPredictor_drainPerDayFromDate_forNumberOfDays___block_invoke_2;
      v37[3] = &unk_2799C1A30;
      v37[4] = selfCopy;
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __64___OSBatteryDrainPredictor_drainPerDayFromDate_forNumberOfDays___block_invoke_3;
      v36[3] = &unk_2799C1A80;
      v36[4] = buf;
      v26 = [v25 sinkWithCompletion:v37 receiveInput:v36];

      v27 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(*(*&buf[8] + 40), "drainSoFar")}];
      [v32 setObject:v27 forKeyedSubscript:v16];

      _Block_object_dispose(buf, 8);
      ++v15;
    }

    while (days != v15);
  }

  return v32;
}

- (id)lastBatteryLevelDate
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  v3 = BiomeLibrary();
  device = [v3 Device];
  power = [device Power];
  batteryLevel = [power BatteryLevel];
  publisher = [batteryLevel publisher];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48___OSBatteryDrainPredictor_lastBatteryLevelDate__block_invoke;
  v12[3] = &unk_2799C1A30;
  v12[4] = self;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48___OSBatteryDrainPredictor_lastBatteryLevelDate__block_invoke_58;
  v11[3] = &unk_2799C1A80;
  v11[4] = &v13;
  v8 = [publisher sinkWithCompletion:v12 receiveInput:v11];

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v9;
}

- (id)firstBatteryLevelDate
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__5;
  v19 = __Block_byref_object_dispose__5;
  v20 = 0;
  v3 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:0 endDate:0 maxEvents:5 lastN:0 reversed:0];
  v4 = BiomeLibrary();
  device = [v4 Device];
  power = [device Power];
  batteryLevel = [power BatteryLevel];
  v8 = [batteryLevel publisherWithOptions:v3];
  v9 = [v8 filterWithIsIncluded:&__block_literal_global_60];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49___OSBatteryDrainPredictor_firstBatteryLevelDate__block_invoke_2;
  v14[3] = &unk_2799C1A30;
  v14[4] = self;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49___OSBatteryDrainPredictor_firstBatteryLevelDate__block_invoke_61;
  v13[3] = &unk_2799C1CA8;
  v13[4] = &v15;
  v10 = [v9 sinkWithCompletion:v14 shouldContinue:v13];

  v11 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v11;
}

- (int64_t)lastBatteryLevelValue
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = -1;
  v3 = BiomeLibrary();
  device = [v3 Device];
  power = [device Power];
  batteryLevel = [power BatteryLevel];
  publisher = [batteryLevel publisher];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49___OSBatteryDrainPredictor_lastBatteryLevelValue__block_invoke;
  v12[3] = &unk_2799C1A30;
  v12[4] = self;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49___OSBatteryDrainPredictor_lastBatteryLevelValue__block_invoke_62;
  v11[3] = &unk_2799C1A80;
  v11[4] = &v13;
  v8 = [publisher sinkWithCompletion:v12 receiveInput:v11];

  v9 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v9;
}

- (BOOL)highBatteryDrainComparedtoHourlyAggregate
{
  v34 = *MEMORY[0x277D85DE8];
  if (-[_OSBatteryDrainPredictor historicalClassification](self, "historicalClassification") == 3 && -[_OSBatteryDrainPredictor didReachEngagementThresholds](self, "didReachEngagementThresholds") && ([MEMORY[0x277CBEAA8] now], v3 = objc_claimAutoreleasedReturnValue(), -[_OSBatteryDrainPredictor firstBatteryLevelDate](self, "firstBatteryLevelDate"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "timeIntervalSinceDate:", v4), v6 = v5 / 86400.0, v4, v3, v6 >= 28.0))
  {
    v7 = +[_OSBatteryPredictor predictor];
    v27 = 0;
    v17 = [v7 typicalBatteryLevelWithReferenceDays:0 aggregatedOverTimeWidth:60 withError:&v27];
    v18 = v27;
    lastBatteryLevelValue = [(_OSBatteryDrainPredictor *)self lastBatteryLevelValue];
    lastBatteryLevelDate = [(_OSBatteryDrainPredictor *)self lastBatteryLevelDate];
    v21 = lastBatteryLevelDate;
    if (lastBatteryLevelValue == -1 || !lastBatteryLevelDate || v18)
    {
      currentCalendar = [(_OSBatteryDrainPredictor *)self log];
      if (os_log_type_enabled(currentCalendar, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v29 = v18;
        v30 = 2048;
        v31 = lastBatteryLevelValue;
        v32 = 2112;
        v33 = v21;
        _os_log_error_impl(&dword_25D171000, currentCalendar, OS_LOG_TYPE_ERROR, "highBatteryDrainComparedtoHourlyAggregate failed error: %@ lastValue: %ld lastDate: %@", buf, 0x20u);
      }

      v15 = 0;
    }

    else
    {
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      v23 = [currentCalendar components:96 fromDate:v21];
      v24 = [v17 objectAtIndexedSubscript:{objc_msgSend(v23, "hour")}];
      v25 = [v24 intValue] - lastBatteryLevelValue;

      [(_OSBatteryDrainPredictor *)self recordIntelligentLPMThreshold:lastBatteryLevelValue threshold:v25];
      v26 = [(_OSBatteryDrainPredictor *)self log];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        v29 = lastBatteryLevelValue;
        v30 = 2048;
        v31 = v25;
        v32 = 2112;
        v33 = v17;
        _os_log_impl(&dword_25D171000, v26, OS_LOG_TYPE_DEFAULT, "highBatteryDrainComparedtoHourlyAggregate lastBatteryLevelValue: %ld currentDelta: %ld resultArray: %@", buf, 0x20u);
      }

      v15 = v25 > 12;
    }
  }

  else
  {
    v7 = [(_OSBatteryDrainPredictor *)self log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(_OSBatteryDrainPredictor *)v7 highBatteryDrainComparedtoHourlyAggregate:v8];
    }

    v15 = 0;
  }

  return v15;
}

- (void)recordIntelligentLPMThreshold:(int64_t)threshold threshold:(int64_t)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D85DD0];
  AnalyticsSendEventLazy();
  v6 = [(_OSBatteryDrainPredictor *)self log:v7];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = a4;
    _os_log_impl(&dword_25D171000, v6, OS_LOG_TYPE_DEFAULT, "Sending Intelligent LPM CA event: %ld", buf, 0xCu);
  }
}

- (void)logCompletion:(void *)a1 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 error];
  v5 = [v4 description];
  [v5 UTF8String];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_25D171000, v3, OS_LOG_TYPE_DEBUG, "Error: %s\n", v6, 0xCu);
}

@end