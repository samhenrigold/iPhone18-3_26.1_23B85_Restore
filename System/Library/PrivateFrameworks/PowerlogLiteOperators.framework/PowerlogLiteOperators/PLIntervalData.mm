@interface PLIntervalData
- (PLIntervalData)init;
- (void)addMetric:(id)metric;
- (void)resetMetrics;
- (void)submitIntervalData;
- (void)submitToCA:(id)a;
- (void)updateMetric:(id)metric withTimestamp:(id)timestamp forEvent:(signed __int16)event withValue:(int)value;
@end

@implementation PLIntervalData

- (PLIntervalData)init
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    selfCopy = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PLIntervalData;
    v4 = [(PLIntervalData *)&v11 init];
    if (v4)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
      metrics = v4->_metrics;
      v4->_metrics = v5;

      v4->_aggdValue = 0;
      v7 = objc_alloc_init(MEMORY[0x277CCA968]);
      dateFormat = v4->_dateFormat;
      v4->_dateFormat = v7;

      [(NSDateFormatter *)v4->_dateFormat setDateFormat:@"HHmm"];
      v9 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US"];
      [(NSDateFormatter *)v4->_dateFormat setLocale:v9];
    }

    self = v4;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)addMetric:(id)metric
{
  metricCopy = metric;
  if (metricCopy)
  {
    v8 = metricCopy;
    metricKey = [metricCopy metricKey];

    metricCopy = v8;
    if (metricKey)
    {
      metrics = self->_metrics;
      metricKey2 = [v8 metricKey];
      [(NSMutableDictionary *)metrics setObject:v8 forKey:metricKey2];

      metricCopy = v8;
    }
  }
}

- (void)updateMetric:(id)metric withTimestamp:(id)timestamp forEvent:(signed __int16)event withValue:(int)value
{
  v6 = *&value;
  eventCopy = event;
  v30 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  timestampCopy = timestamp;
  metrics = [(PLIntervalData *)self metrics];
  if (metrics)
  {
    v13 = metrics;
    metrics2 = [(PLIntervalData *)self metrics];
    v15 = [metrics2 objectForKeyedSubscript:metricCopy];

    if (v15)
    {
      metrics3 = [(PLIntervalData *)self metrics];
      v17 = [metrics3 objectForKeyedSubscript:metricCopy];

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v18 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __64__PLIntervalData_updateMetric_withTimestamp_forEvent_withValue___block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v18;
        if (qword_2811F4ED0 != -1)
        {
          dispatch_once(&qword_2811F4ED0, block);
        }

        if (byte_2811F4EAB == 1)
        {
          v19 = MEMORY[0x277CCACA8];
          metricKey = [v17 metricKey];
          v21 = [v19 stringWithFormat:@"Updating Metric : %@ Time : %@ Event : %d Value : %d", metricKey, timestampCopy, eventCopy, v6];

          v22 = MEMORY[0x277D3F178];
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAggregateUsageService.m"];
          lastPathComponent = [v23 lastPathComponent];
          v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLIntervalData updateMetric:withTimestamp:forEvent:withValue:]"];
          [v22 logMessage:v21 fromFile:lastPathComponent fromFunction:v25 fromLineNumber:326];

          v26 = PLLogCommon();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v29 = v21;
            _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      [v17 updateMetricWithTimestamp:timestampCopy forEvent:eventCopy withValue:v6];
    }
  }
}

void *__64__PLIntervalData_updateMetric_withTimestamp_forEvent_withValue___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4EAB = result;
  return result;
}

- (void)resetMetrics
{
  v17 = *MEMORY[0x277D85DE8];
  metrics = [(PLIntervalData *)self metrics];

  if (metrics)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    metrics2 = [(PLIntervalData *)self metrics];
    v5 = [metrics2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(metrics2);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          metrics3 = [(PLIntervalData *)self metrics];
          v11 = [metrics3 objectForKeyedSubscript:v9];

          [v11 resetMetric];
          ++v8;
        }

        while (v6 != v8);
        v6 = [metrics2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }
}

- (void)submitIntervalData
{
  v38 = *MEMORY[0x277D85DE8];
  metrics = [(PLIntervalData *)self metrics];

  if (metrics)
  {
    v4 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    metrics2 = [(PLIntervalData *)self metrics];
    v6 = [metrics2 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v32;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(metrics2);
          }

          v10 = *(*(&v31 + 1) + 8 * i);
          metrics3 = [(PLIntervalData *)self metrics];
          v12 = [metrics3 objectForKeyedSubscript:v10];

          [v12 constructMetricValueForInterval:self->_currentInterval];
          v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v12, "metricValue")}];
          metricKey = [v12 metricKey];
          [v4 setObject:v13 forKeyedSubscript:metricKey];

          getBinnedMetricValue = [v12 getBinnedMetricValue];
          bitPosition = [v12 bitPosition];
          currentInterval = self->_currentInterval;
          self->_aggdValue |= getBinnedMetricValue << bitPosition;
          [v12 updateMetricWithTimestamp:currentInterval forEvent:2 withValue:0];
        }

        v7 = [metrics2 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v7);
    }

    v18 = [(NSDateFormatter *)self->_dateFormat stringFromDate:self->_currentInterval];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"com.apple.power.usagebitmap.interval", v18];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v20 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __36__PLIntervalData_submitIntervalData__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v20;
      if (qword_2811F4ED8 != -1)
      {
        dispatch_once(&qword_2811F4ED8, block);
      }

      if (byte_2811F4EAC == 1)
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : %llu", v19, self->_aggdValue];
        v22 = MEMORY[0x277D3F178];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAggregateUsageService.m"];
        lastPathComponent = [v23 lastPathComponent];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLIntervalData submitIntervalData]"];
        [v22 logMessage:v21 fromFile:lastPathComponent fromFunction:v25 fromLineNumber:360];

        v26 = PLLogCommon();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v36 = v21;
          _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    ADClientSetValueForScalarKey();
    v27 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v18, "intValue")}];
    [v4 setObject:v27 forKeyedSubscript:@"TimeInterval"];

    [(PLIntervalData *)self submitToCA:v4];
    v28 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:self->_currentInterval sinceDate:self->_intervalDuration];
    v29 = self->_currentInterval;
    self->_currentInterval = v28;

    self->_aggdValue = 0;
  }
}

void *__36__PLIntervalData_submitIntervalData__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4EAC = result;
  return result;
}

- (void)submitToCA:(id)a
{
  aCopy = a;
  AnalyticsSendEventLazy();
  v4 = aCopy;
  AnalyticsSendEventLazy();
  v3 = v4;
  AnalyticsSendEventLazy();
}

id __29__PLIntervalData_submitToCA___block_invoke(uint64_t a1)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v8[0] = @"TimeInterval";
  v2 = [*(a1 + 32) objectForKeyedSubscript:?];
  v9[0] = v2;
  v8[1] = @"ScreenOnDuration";
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  v9[1] = v3;
  v8[2] = @"WakeDuration";
  v4 = [*(a1 + 32) objectForKeyedSubscript:?];
  v9[2] = v4;
  v8[3] = @"AudioOnDuration";
  v5 = [*(a1 + 32) objectForKeyedSubscript:?];
  v9[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

id __29__PLIntervalData_submitToCA___block_invoke_2(uint64_t a1)
{
  v13[8] = *MEMORY[0x277D85DE8];
  v12[0] = @"TimeInterval";
  v2 = [*(a1 + 32) objectForKeyedSubscript:?];
  v13[0] = v2;
  v12[1] = @"BatteryLevel";
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  v13[1] = v3;
  v12[2] = @"ConnectedState";
  v4 = [*(a1 + 32) objectForKeyedSubscript:?];
  v13[2] = v4;
  v12[3] = @"ChargingState";
  v5 = [*(a1 + 32) objectForKeyedSubscript:?];
  v13[3] = v5;
  v12[4] = @"AdapterType";
  v6 = [*(a1 + 32) objectForKeyedSubscript:?];
  v13[4] = v6;
  v12[5] = @"BatteryTemperature";
  v7 = [*(a1 + 32) objectForKeyedSubscript:?];
  v13[5] = v7;
  v12[6] = @"ChargerCurrent";
  v8 = [*(a1 + 32) objectForKeyedSubscript:?];
  v13[6] = v8;
  v12[7] = @"ChargerVoltage";
  v9 = [*(a1 + 32) objectForKeyedSubscript:?];
  v13[7] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:8];

  return v10;
}

id __29__PLIntervalData_submitToCA___block_invoke_3(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = @"TimeInterval";
  v2 = [*(a1 + 32) objectForKeyedSubscript:?];
  v8[0] = v2;
  v7[1] = @"PowerlogInit";
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  v8[1] = v3;
  v7[2] = @"LockState";
  v4 = [*(a1 + 32) objectForKeyedSubscript:?];
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

@end