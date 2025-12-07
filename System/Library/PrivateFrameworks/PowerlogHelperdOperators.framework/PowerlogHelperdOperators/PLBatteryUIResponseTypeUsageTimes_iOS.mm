@interface PLBatteryUIResponseTypeUsageTimes_iOS
- (BOOL)energyEntryValidForAdjustment:(id)adjustment;
- (BOOL)gatherDependencies;
- (_PLTimeIntervalRange)getDataRange:(id)range;
- (id)entriesInRange:(_PLTimeIntervalRange)range fromEntries:(id)entries;
- (id)result;
- (int)adjustScreenOffTimeWithGraphValue:(double)value screenOnTime:(double)time andEnergyEntries:(id)entries;
- (int)adjustScreenOnTimeWithGraphValue:(double)value andEnergyEntries:(id)entries;
- (void)configure:(id)configure;
- (void)gatherDependencies;
- (void)run;
@end

@implementation PLBatteryUIResponseTypeUsageTimes_iOS

- (void)configure:(id)configure
{
  configureCopy = configure;
  v5 = [configureCopy objectForKeyedSubscript:@"start"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [configureCopy objectForKeyedSubscript:@"end"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v7];
  [(PLBatteryUIResponseTypeUsageTimes_iOS *)self setStart:v11];

  v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v10];
  [(PLBatteryUIResponseTypeUsageTimes_iOS *)self setEnd:v12];

  v13 = [(PLBatteryUIResponseTypeUsageTimes_iOS *)self end];
  start = [(PLBatteryUIResponseTypeUsageTimes_iOS *)self start];
  [v13 timeIntervalSinceDate:start];
  [(PLBatteryUIResponseTypeUsageTimes_iOS *)self setRange:?];

  v15 = [configureCopy objectForKeyedSubscript:@"bucket"];

  [v15 doubleValue];
  [(PLBatteryUIResponseTypeUsageTimes_iOS *)self setBucketSize:?];

  start2 = [(PLBatteryUIResponseTypeUsageTimes_iOS *)self start];
  v17 = [(PLBatteryUIResponseTypeUsageTimes_iOS *)self end];
  [start2 timeIntervalSince1970];
  v19 = v18;
  [v17 timeIntervalSince1970];
  v21 = v20 - v19;

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  convertFromMonotonicToSystem = [monotonicDate convertFromMonotonicToSystem];
  [(PLBatteryUIResponseTypeUsageTimes_iOS *)self getDataRange:convertFromMonotonicToSystem];
  v25 = v24;
  v27 = v26;

  v28 = v19 + -1800.0;
  v29 = v19 + -1800.0 + v21;
  if (v19 + -1800.0 >= v25 || v29 <= v25)
  {
    v30 = v25 + v27;
    if (v25 >= v28 || v30 <= v28)
    {
      v31 = 0.0;
      if (v28 != v25 || v21 <= 0.0)
      {
        v33 = 0.0;
        goto LABEL_15;
      }

      v32 = v27 <= 0.0;
      v33 = 0.0;
      if (v32)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v30 = v25 + v27;
  }

  if (v28 >= v25)
  {
    v31 = v28;
  }

  else
  {
    v31 = v25;
  }

  if (v29 >= v30)
  {
    v29 = v30;
  }

  v33 = v29 - v31;
LABEL_15:
  responderService = [(PLBatteryUIResponseTypeUsageTimes_iOS *)self responderService];
  v34 = objc_msgSend_storage(responderService);
  v35 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"UsageTime"];
  v36 = [v34 entriesForKey:v35 inTimeRange:0 withFilters:{v31, v33}];
  [(PLBatteryUIResponseTypeUsageTimes_iOS *)self setAggregateEntries:v36];
}

- (void)run
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 67109376;
  v1[1] = 0;
  v2 = 1024;
  v3 = 0;
  _os_log_error_impl(&dword_25EE51000, log, OS_LOG_TYPE_ERROR, "Usage Times: is24hrBuckets = %d, is10dBuckets = %d", v1, 0xEu);
}

- (id)result
{
  [(PLBatteryUIResponseTypeUsageTimes_iOS *)self setAggregateEntries:0];
  [(PLBatteryUIResponseTypeUsageTimes_iOS *)self setBatteryBreakdown_lastDay:0];
  [(PLBatteryUIResponseTypeUsageTimes_iOS *)self setBatteryBreakdown_buckets:0];

  return [(PLBatteryUIResponseTypeUsageTimes_iOS *)self resultDictionary];
}

- (BOOL)gatherDependencies
{
  v33[2] = *MEMORY[0x277D85DE8];
  batteryBreakdown_lastDay = [(PLBatteryUIResponseTypeUsageTimes_iOS *)self batteryBreakdown_lastDay];

  if (!batteryBreakdown_lastDay)
  {
    v4 = PLBatteryUsageUIKeyFromConfiguration();
    responderService = [(PLBatteryUIResponseTypeUsageTimes_iOS *)self responderService];
    responseCache = [responderService responseCache];
    v7 = [responseCache objectForKeyedSubscript:&unk_287145A18];
    v8 = [v7 objectForKeyedSubscript:v4];
    v9 = [v8 objectForKeyedSubscript:@"result"];
    v10 = [v9 objectForKeyedSubscript:@"PLBatteryUIBreakdownKey"];

    if (!v10)
    {
      v29 = PLLogCommon(v11);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [PLBatteryUIResponseTypeUsageTimes_iOS gatherDependencies];
      }

      goto LABEL_16;
    }

    [(PLBatteryUIResponseTypeUsageTimes_iOS *)self setBatteryBreakdown_lastDay:v10];
  }

  batteryBreakdown_buckets = [(PLBatteryUIResponseTypeUsageTimes_iOS *)self batteryBreakdown_buckets];

  if (!batteryBreakdown_buckets)
  {
    v32[0] = @"end";
    v14 = MEMORY[0x277CCABB0];
    v15 = [(PLBatteryUIResponseTypeUsageTimes_iOS *)self end];
    start = [(PLBatteryUIResponseTypeUsageTimes_iOS *)self start];
    [v15 timeIntervalSinceDate:start];
    v17 = [v14 numberWithDouble:?];
    v32[1] = @"bucket";
    v33[0] = v17;
    v18 = MEMORY[0x277CCABB0];
    [(PLBatteryUIResponseTypeUsageTimes_iOS *)self bucketSize];
    v19 = [v18 numberWithDouble:?];
    v33[1] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
    v4 = PLBatteryUsageUIKeyFromConfiguration();

    responderService2 = [(PLBatteryUIResponseTypeUsageTimes_iOS *)self responderService];
    responseCache2 = [responderService2 responseCache];
    v23 = [responseCache2 objectForKeyedSubscript:&unk_287145A18];
    v24 = [v23 objectForKeyedSubscript:v4];
    v25 = [v24 objectForKeyedSubscript:@"result"];
    v26 = [v25 objectForKeyedSubscript:@"PLBatteryUIBreakdownKey"];

    if (v26)
    {
      [(PLBatteryUIResponseTypeUsageTimes_iOS *)self setBatteryBreakdown_buckets:v26];

      goto LABEL_7;
    }

    v30 = PLLogCommon(v27);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [(PLBatteryUIResponseTypeUsageTimes_iOS *)self gatherDependencies];
    }

LABEL_16:
    v28 = 0;
    goto LABEL_17;
  }

LABEL_7:
  v4 = PLLogCommon(v13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeUsageTimes_iOS gatherDependencies];
  }

  v28 = 1;
LABEL_17:

  return v28;
}

- (int)adjustScreenOnTimeWithGraphValue:(double)value andEnergyEntries:(id)entries
{
  v28 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  if ([entriesCopy count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = entriesCopy;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v22 = entriesCopy;
      v9 = *v24;
      v10 = 0.0;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          if ([(PLBatteryUIResponseTypeUsageTimes_iOS *)self energyEntryValidForAdjustment:v12])
          {
            v13 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
            [v13 doubleValue];
            v15 = v14;
            v16 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppCallOffScreenTimeKey"];
            [v16 doubleValue];
            v18 = v15 - v17;

            if (v18 >= 0.0)
            {
              v19 = v18;
            }

            else
            {
              v19 = 0.0;
            }

            v10 = v10 + floor(v19 / 60.0) * 60.0;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v8);
      v20 = v10;
      entriesCopy = v22;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (int)adjustScreenOffTimeWithGraphValue:(double)value screenOnTime:(double)time andEnergyEntries:(id)entries
{
  v33 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  if ([entriesCopy count])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = entriesCopy;
    v9 = entriesCopy;
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    v11 = 0.0;
    v12 = 0.0;
    if (v10)
    {
      v13 = v10;
      v14 = *v29;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          if ([(PLBatteryUIResponseTypeUsageTimes_iOS *)self energyEntryValidForAdjustment:v16])
          {
            v17 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
            [v17 doubleValue];
            v19 = v18;
            v20 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppCallOffScreenTimeKey"];
            [v20 doubleValue];
            v22 = v19 + v21;

            v12 = v12 + floor(v22 / 60.0) * 60.0;
            if (v22 > v11)
            {
              v11 = v22;
            }
          }
        }

        v13 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v13);
    }

    if (v12 >= value)
    {
      valueCopy = value;
    }

    else
    {
      valueCopy = v12;
    }

    v24 = v11 - time;
    if (v11 - time < 0.0)
    {
      v24 = 0.0;
    }

    if (valueCopy < v24)
    {
      valueCopy = v24;
    }

    v25 = valueCopy;
    entriesCopy = v27;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (BOOL)energyEntryValidForAdjustment:(id)adjustment
{
  adjustmentCopy = adjustment;
  v4 = [adjustmentCopy objectForKeyedSubscript:@"PLBatteryUIAppTypeKey"];
  intValue = [v4 intValue];

  v6 = [adjustmentCopy objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
  v7 = ([v6 intValue] + 0.5);

  v8 = [adjustmentCopy objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [adjustmentCopy objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
  [v11 doubleValue];
  v13 = v12;

  v14 = [adjustmentCopy objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

  v15 = v10 + v13;
  if (v7 <= 0 && v15 < 60.0)
  {
LABEL_9:
    v17 = 0;
    goto LABEL_11;
  }

  v17 = 0;
  if (intValue != 5 && intValue != 2)
  {
    if (intValue != 1 || ([v14 isEqualToString:{@"PowerOutAccessories", v15}] & 1) == 0)
    {
      v17 = 1;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_11:

  return v17;
}

- (_PLTimeIntervalRange)getDataRange:(id)range
{
  v43 = *MEMORY[0x277D85DE8];
  rangeCopy = range;
  v5 = *MEMORY[0x277D3F5B8];
  v6 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"UsageTime"];
  v40 = [MEMORY[0x277D3F128] entryKeyForType:v5 andName:*MEMORY[0x277D3F318]];
  responderService = [(PLBatteryUIResponseTypeUsageTimes_iOS *)self responderService];
  v8 = objc_msgSend_storage(responderService);
  v9 = [v8 firstEntryForKey:v6];

  if (v9)
  {
    entryDate = [v9 entryDate];
    v12 = PLLogCommon(entryDate);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIService getDataRangeWithNow:];
    }
  }

  else
  {
    v13 = PLLogCommon(v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeUsageTimes_iOS getDataRange:];
    }

    entryDate = rangeCopy;
  }

  responderService2 = [(PLBatteryUIResponseTypeUsageTimes_iOS *)self responderService];
  v15 = objc_msgSend_storage(responderService2);
  v16 = [v15 firstEntryForKey:v40];

  if (v16)
  {
    entryDate2 = [v16 entryDate];
    v19 = PLLogCommon(entryDate2);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIService getDataRangeWithNow:];
    }
  }

  else
  {
    v20 = PLLogCommon(v17);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeUsageTimes_iOS getDataRange:];
    }

    entryDate2 = rangeCopy;
  }

  v21 = [entryDate2 laterDate:entryDate];
  v22 = rangeCopy;
  [v21 timeIntervalSince1970];
  v24 = v23;
  [v22 timeIntervalSince1970];
  v26 = v25;

  v27 = v26 - v24;
  v29 = PLLogCommon(v28);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = MEMORY[0x277CCACA8];
    v39 = v9;
    [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v24];
    v31 = v16;
    v32 = entryDate;
    v34 = v33 = v6;
    v35 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v24 + v27];
    v36 = [v30 stringWithFormat:@"Start: %@, End %@", v34, v35];

    v9 = v39;
    v6 = v33;
    entryDate = v32;
    v16 = v31;
    *buf = 138412290;
    v42 = v36;
    _os_log_impl(&dword_25EE51000, v29, OS_LOG_TYPE_INFO, "dataRange: %@", buf, 0xCu);
  }

  v37 = v24;
  v38 = v27;
  result.length = v38;
  result.location = v37;
  return result;
}

- (id)entriesInRange:(_PLTimeIntervalRange)range fromEntries:(id)entries
{
  length = range.length;
  location = range.location;
  v26 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v7 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = entriesCopy;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    v12 = location + length;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        entryDate = [v14 entryDate];
        if (entryDate)
        {
          v16 = entryDate;
          [entryDate timeIntervalSince1970];
          v18 = v17;

          if (location <= v18 && v18 < v12)
          {
            [v7 addObject:v14];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)gatherDependencies
{
  v6 = *MEMORY[0x277D85DE8];
  [self bucketSize];
  v3 = PLBatteryUsageUIStringForQueryRange();
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_25EE51000, a2, OS_LOG_TYPE_ERROR, "Usage Times: missing %@ buckets", &v4, 0xCu);
}

@end