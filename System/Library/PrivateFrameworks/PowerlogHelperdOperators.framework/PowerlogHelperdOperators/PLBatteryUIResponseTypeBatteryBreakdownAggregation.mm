@interface PLBatteryUIResponseTypeBatteryBreakdownAggregation
- (_PLTimeIntervalRange)generateRange:(_PLTimeIntervalRange)result withDataRange:(_PLTimeIntervalRange)range;
- (void)addFgEnergyForMetrics:(id)metrics qualificationID:(id)d rootNodeQualificationEnergy:(id)energy energyEntry:(id)entry;
- (void)addRNEForMetrics:(id)metrics rootNodeEnergy:(id)energy energyEntry:(id)entry;
- (void)bgLocationAudioTimeApps:(id)apps;
- (void)bgLocationAudioTimeRuntimes:(id)runtimes bundleID:(id)d;
- (void)filterEnergyEntries:(id)entries;
- (void)initBackgroundLocationAudioTime;
- (void)populateBackgroundLocationAudioTime:(id)time bundleID:(id)d;
- (void)populateEnergyBucketKeysWithEntries:(id)entries;
@end

@implementation PLBatteryUIResponseTypeBatteryBreakdownAggregation

- (_PLTimeIntervalRange)generateRange:(_PLTimeIntervalRange)result withDataRange:(_PLTimeIntervalRange)range
{
  if (range.location == 0.0 && range.length == 0.0)
  {
    location = result.location;
    goto LABEL_21;
  }

  v5 = result.location + result.length;
  if (result.location < range.location)
  {
    v6 = v5 == range.location;
    v7 = v5 < range.location;
  }

  else
  {
    v6 = 1;
    v7 = 0;
  }

  if (!v7 && !v6)
  {
    v8 = range.location + range.length;
LABEL_14:
    if (result.location >= range.location)
    {
      location = range.location;
    }

    else
    {
      location = result.location;
    }

    if (v5 >= v8)
    {
      v9 = v5;
    }

    else
    {
      v9 = v8;
    }

    result.length = v9 - location;
    goto LABEL_21;
  }

  v8 = range.location + range.length;
  if (range.location < result.location && v8 > result.location)
  {
    goto LABEL_14;
  }

  location = 0.0;
  if (result.location != range.location || result.length <= 0.0)
  {
    result.length = 0.0;
    goto LABEL_21;
  }

  result.length = 0.0;
  if (range.length > 0.0)
  {
    goto LABEL_14;
  }

LABEL_21:
  v10 = location;
  result.location = v10;
  return result;
}

- (void)populateEnergyBucketKeysWithEntries:(id)entries
{
  v54 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  array = [MEMORY[0x277CBEB18] array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v31 = entriesCopy;
  obj = [entriesCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v35 = [obj countByEnumeratingWithState:&v39 objects:v53 count:16];
  if (v35)
  {
    v33 = *v40;
    do
    {
      v4 = 0;
      do
      {
        if (*v40 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v36 = v4;
        v5 = *(*(&v39 + 1) + 8 * v4);
        v6 = 1;
        do
        {
          v7 = MEMORY[0x277CCACA8];
          v8 = [MEMORY[0x277CCABB0] numberWithShort:v6];
          v9 = [v7 stringWithFormat:@"%@", v8];

          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"fg", v9];
          v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"bg", v9];
          v12 = [v5 objectForKeyedSubscript:v9];
          intValue = [v12 intValue];

          v14 = [v5 objectForKeyedSubscript:v10];
          intValue2 = [v14 intValue];

          v16 = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self isForegroundOnlyBucket:v6];
          if (v16)
          {
            intValue2 = intValue;
            if (intValue >= 1)
            {
              v17 = [MEMORY[0x277CCABB0] numberWithInt:intValue];
              [v5 setObject:v17 forKeyedSubscript:v10];

              intValue2 = intValue;
            }
          }

          v18 = (intValue - intValue2);
          if (v18 >= 1)
          {
            v19 = [v5 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
            [v19 doubleValue];
            v21 = v20;

            v22 = [v5 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
            [v22 doubleValue];
            v24 = v23;

            v25 = v21 + v24;
            if (v21 + v24 <= 0.0 || ((v25 = v21 / v25 * intValue, v26 = v25, v18 >= v25) ? (v18 = v26) : (v18 = v18), v26 >= 1))
            {
              v27 = [MEMORY[0x277CCABB0] numberWithInt:{v18, v25}];
              [v5 setObject:v27 forKeyedSubscript:v11];

              intValue2 = intValue - v18;
              v28 = [MEMORY[0x277CCABB0] numberWithInt:(intValue - v18)];
              [v5 setObject:v28 forKeyedSubscript:v10];
            }
          }

          v29 = PLLogCommon(v16);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            v37 = [v5 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            *buf = 138413314;
            v44 = v37;
            v45 = 2112;
            v46 = v9;
            v47 = 1024;
            v48 = intValue;
            v49 = 1024;
            v50 = intValue2;
            v51 = 1024;
            v52 = v18;
            _os_log_debug_impl(&dword_25EE51000, v29, OS_LOG_TYPE_DEBUG, "%@: %@ total:%d fg:%d bg:%d", buf, 0x28u);
          }

          v30 = v6++;
        }

        while (v30 < 0x11);
        [array addObject:v5];
        v4 = v36 + 1;
      }

      while (v36 + 1 != v35);
      v35 = [obj countByEnumeratingWithState:&v39 objects:v53 count:16];
    }

    while (v35);
  }

  [v31 setObject:array forKeyedSubscript:@"PLBatteryUIAppArrayKey"];
}

- (void)addRNEForMetrics:(id)metrics rootNodeEnergy:(id)energy energyEntry:(id)entry
{
  energyCopy = energy;
  entryCopy = entry;
  v9 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getEnergyMetricBucketForRootNodeID:metrics];
  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCABB0] numberWithShort:v9];
  v12 = [v10 stringWithFormat:@"%@", v11];

  if (v12)
  {
    intValue = [energyCopy intValue];
    if (intValue >= 1)
    {
      v14 = intValue;
      v15 = MEMORY[0x277CCABB0];
      v16 = [entryCopy objectForKeyedSubscript:v12];
      v17 = [v15 numberWithInt:{objc_msgSend(v16, "intValue") + v14}];
      [entryCopy setObject:v17 forKeyedSubscript:v12];
    }
  }
}

- (void)addFgEnergyForMetrics:(id)metrics qualificationID:(id)d rootNodeQualificationEnergy:(id)energy energyEntry:(id)entry
{
  metricsCopy = metrics;
  energyCopy = energy;
  entryCopy = entry;
  if ([d intValue] == 2)
  {
    v12 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getEnergyMetricBucketForRootNodeID:metricsCopy];
    v13 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCABB0] numberWithShort:v12];
    v15 = [v13 stringWithFormat:@"%@", v14];

    if (v15)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"fg", v15];
      intValue = [energyCopy intValue];
      if (intValue >= 1)
      {
        v18 = intValue;
        v19 = MEMORY[0x277CCABB0];
        v20 = [entryCopy objectForKeyedSubscript:v16];
        v21 = [v19 numberWithInt:{objc_msgSend(v20, "intValue") + v18}];
        [entryCopy setObject:v21 forKeyedSubscript:v16];
      }
    }
  }
}

- (void)initBackgroundLocationAudioTime
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self setBackgroundLocationBreakdown:dictionary];

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self setBackgroundLocationPluggedInBreakdown:dictionary2];

  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self setBackgroundAudioBreakdown:dictionary3];

  dictionary4 = [MEMORY[0x277CBEB38] dictionary];
  [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self setBackgroundAudioPluggedInBreakdown:dictionary4];

  dictionary5 = [MEMORY[0x277CBEB38] dictionary];
  [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self setBackgroundLocationAudioBreakdown:dictionary5];

  dictionary6 = [MEMORY[0x277CBEB38] dictionary];
  [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self setBackgroundLocationAudioPluggedInBreakdown:dictionary6];
}

- (void)populateBackgroundLocationAudioTime:(id)time bundleID:(id)d
{
  dCopy = d;
  timeCopy = time;
  v8 = [timeCopy objectForKeyedSubscript:@"BackgroundLocationTime"];
  backgroundLocationBreakdown = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundLocationBreakdown];
  [backgroundLocationBreakdown setObject:v8 forKeyedSubscript:dCopy];

  v10 = [timeCopy objectForKeyedSubscript:@"BackgroundLocationPluggedInTime"];
  backgroundLocationPluggedInBreakdown = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundLocationPluggedInBreakdown];
  [backgroundLocationPluggedInBreakdown setObject:v10 forKeyedSubscript:dCopy];

  v12 = [timeCopy objectForKeyedSubscript:@"BackgroundAudioPlayingTime"];
  backgroundAudioBreakdown = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundAudioBreakdown];
  [backgroundAudioBreakdown setObject:v12 forKeyedSubscript:dCopy];

  v14 = [timeCopy objectForKeyedSubscript:@"BackgroundAudioPlayingTimePluggedIn"];
  backgroundAudioPluggedInBreakdown = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundAudioPluggedInBreakdown];
  [backgroundAudioPluggedInBreakdown setObject:v14 forKeyedSubscript:dCopy];

  v16 = [timeCopy objectForKeyedSubscript:@"BackgroundLocationAudioTime"];
  backgroundLocationAudioBreakdown = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundLocationAudioBreakdown];
  [backgroundLocationAudioBreakdown setObject:v16 forKeyedSubscript:dCopy];

  v19 = [timeCopy objectForKeyedSubscript:@"BackgroundLocationAudioPluggedInTime"];

  backgroundLocationAudioPluggedInBreakdown = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundLocationAudioPluggedInBreakdown];
  [backgroundLocationAudioPluggedInBreakdown setObject:v19 forKeyedSubscript:dCopy];
}

- (void)bgLocationAudioTimeRuntimes:(id)runtimes bundleID:(id)d
{
  v6 = MEMORY[0x277CCABB0];
  dCopy = d;
  runtimesCopy = runtimes;
  backgroundLocationBreakdown = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundLocationBreakdown];
  v10 = [backgroundLocationBreakdown objectForKeyedSubscript:dCopy];
  [v10 doubleValue];
  v11 = [v6 numberWithDouble:?];
  [runtimesCopy setObject:v11 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationRuntimeKey"];

  v12 = MEMORY[0x277CCABB0];
  backgroundLocationPluggedInBreakdown = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundLocationPluggedInBreakdown];
  v14 = [backgroundLocationPluggedInBreakdown objectForKeyedSubscript:dCopy];
  [v14 doubleValue];
  v15 = [v12 numberWithDouble:?];
  [runtimesCopy setObject:v15 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationPluggedInRuntimeKey"];

  v16 = MEMORY[0x277CCABB0];
  backgroundAudioBreakdown = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundAudioBreakdown];
  v18 = [backgroundAudioBreakdown objectForKeyedSubscript:dCopy];
  [v18 doubleValue];
  v19 = [v16 numberWithDouble:?];
  [runtimesCopy setObject:v19 forKeyedSubscript:@"PLBatteryUIAppBackgroundAudioRuntimeKey"];

  v20 = MEMORY[0x277CCABB0];
  backgroundAudioPluggedInBreakdown = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundAudioPluggedInBreakdown];
  v22 = [backgroundAudioPluggedInBreakdown objectForKeyedSubscript:dCopy];
  [v22 doubleValue];
  v23 = [v20 numberWithDouble:?];
  [runtimesCopy setObject:v23 forKeyedSubscript:@"PLBatteryUIAppBackgroundAudioPluggedInRuntimeKey"];

  v24 = MEMORY[0x277CCABB0];
  backgroundLocationAudioBreakdown = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundLocationAudioBreakdown];
  v26 = [backgroundLocationAudioBreakdown objectForKeyedSubscript:dCopy];
  [v26 doubleValue];
  v27 = [v24 numberWithDouble:?];
  [runtimesCopy setObject:v27 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationAudioRuntimeKey"];

  v28 = MEMORY[0x277CCABB0];
  backgroundLocationAudioPluggedInBreakdown = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundLocationAudioPluggedInBreakdown];
  v29 = [backgroundLocationAudioPluggedInBreakdown objectForKeyedSubscript:dCopy];

  [v29 doubleValue];
  v30 = [v28 numberWithDouble:?];
  [runtimesCopy setObject:v30 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationAudioPluggedInRuntimeKey"];
}

- (void)bgLocationAudioTimeApps:(id)apps
{
  appsCopy = apps;
  v29 = [appsCopy objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
  v5 = MEMORY[0x277CCABB0];
  backgroundLocationBreakdown = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundLocationBreakdown];
  v7 = [backgroundLocationBreakdown objectForKeyedSubscript:v29];
  [v7 doubleValue];
  v8 = [v5 numberWithDouble:?];
  [appsCopy setObject:v8 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationRuntimeKey"];

  v9 = MEMORY[0x277CCABB0];
  backgroundLocationPluggedInBreakdown = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundLocationPluggedInBreakdown];
  v11 = [backgroundLocationPluggedInBreakdown objectForKeyedSubscript:v29];
  [v11 doubleValue];
  v12 = [v9 numberWithDouble:?];
  [appsCopy setObject:v12 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationPluggedInRuntimeKey"];

  v13 = MEMORY[0x277CCABB0];
  backgroundAudioBreakdown = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundAudioBreakdown];
  v15 = [backgroundAudioBreakdown objectForKeyedSubscript:v29];
  [v15 doubleValue];
  v16 = [v13 numberWithDouble:?];
  [appsCopy setObject:v16 forKeyedSubscript:@"PLBatteryUIAppBackgroundAudioRuntimeKey"];

  v17 = MEMORY[0x277CCABB0];
  backgroundAudioPluggedInBreakdown = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundAudioPluggedInBreakdown];
  v19 = [backgroundAudioPluggedInBreakdown objectForKeyedSubscript:v29];
  [v19 doubleValue];
  v20 = [v17 numberWithDouble:?];
  [appsCopy setObject:v20 forKeyedSubscript:@"PLBatteryUIAppBackgroundAudioPluggedInRuntimeKey"];

  v21 = MEMORY[0x277CCABB0];
  backgroundLocationAudioBreakdown = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundLocationAudioBreakdown];
  v23 = [backgroundLocationAudioBreakdown objectForKeyedSubscript:v29];
  [v23 doubleValue];
  v24 = [v21 numberWithDouble:?];
  [appsCopy setObject:v24 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationAudioRuntimeKey"];

  v25 = MEMORY[0x277CCABB0];
  backgroundLocationAudioPluggedInBreakdown = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundLocationAudioPluggedInBreakdown];
  v27 = [backgroundLocationAudioPluggedInBreakdown objectForKeyedSubscript:v29];
  [v27 doubleValue];
  v28 = [v25 numberWithDouble:?];
  [appsCopy setObject:v28 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationAudioPluggedInRuntimeKey"];
}

- (void)filterEnergyEntries:(id)entries
{
  v18 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [entriesCopy objectForKeyedSubscript:{@"PLBatteryUIAppArrayKey", 0}];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppTypeKey"];
        intValue = [v11 intValue];

        if ((intValue & 0xFFFFFFFB) == 0)
        {
          [array addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [entriesCopy setObject:array forKeyedSubscript:@"PLBatteryUIAppArrayKey"];
}

@end