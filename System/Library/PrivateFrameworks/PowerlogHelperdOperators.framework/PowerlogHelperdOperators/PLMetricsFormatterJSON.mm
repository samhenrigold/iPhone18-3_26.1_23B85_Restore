@interface PLMetricsFormatterJSON
+ (id)pruneDictionary:(id)dictionary withAllowlist:(id)allowlist;
- (BOOL)checkKeyExistence:(id)existence secondLevel:(id)level dictToCheck:(id)check;
- (BOOL)moveLogFile;
- (BOOL)testAllMetrics;
- (BOOL)writeSessionFile;
- (PLMetricsFormatterJSON)init;
- (id)createHeaderForSessionsFile;
- (id)customRound:(int)round precision:(int)precision;
- (id)getCurrentTimeFormatted:(BOOL)formatted;
- (id)getFileHandle;
- (id)getOSVersion;
- (id)metricsToStringAsJSON;
- (id)roundArrayValuesToNearestX:(id)x precision:(int)precision;
- (id)sanitizeDictionary:(id)dictionary;
- (void)addAllMetrics:(id)metrics signpostData:(id)data;
- (void)addAppEnergy:(id)energy userData:(id)data;
- (void)addAppMemoryKeys:(id)keys userData:(id)data;
- (void)addAppMetaData:(id)data userData:(id)userData;
- (void)addAppMetric:(id)metric;
- (void)addAppPerformanceKeysActivations:(id)activations activationData:(id)data;
- (void)addAppPerformanceKeysExits:(id)exits processExitData:(id)data;
- (void)addAppPerformanceKeysGlitch:(id)glitch scrollGlitchData:(id)data;
- (void)addAppPerformanceKeysHang:(id)hang userData:(id)data hangTimeData:(id)timeData;
- (void)addAppPerformanceKeysLaunch:(id)launch userData:(id)data launchTimeData:(id)timeData;
- (void)addAppPerformanceKeysResume:(id)resume userData:(id)data resumeTimeData:(id)timeData;
- (void)addAppTime:(id)time userData:(id)data;
- (void)addDiskIO:(id)o userData:(id)data;
- (void)addDisplayAPL:(id)l userData:(id)data;
- (void)addNetworkIO:(id)o userData:(id)data;
- (void)addPerformanceMetrics:(id)metrics userData:(id)data signpostData:(id)signpostData;
- (void)addPowerMetrics:(id)metrics userData:(id)data;
- (void)addSubKeys:(id)keys extractFromHere:(id)here deviceFirstLevelMetric:(id)metric firstLevelKey:(id)key secondLevelKey:(id)levelKey subKeyMap:(id)map;
- (void)addSubKeysThirdLevel:(id)level extractFromHere:(id)here deviceFirstLevelMetric:(id)metric firstLevelKey:(id)key secondLevelKey:(id)levelKey thirdLevelKey:(id)thirdLevelKey subKeyMap:(id)map;
- (void)getFileHandle;
- (void)moveLogFile;
- (void)printAllMetricsToConsole;
- (void)pruneJSONData;
- (void)sendAppMetricToCoreAnalytics:(id)analytics;
- (void)test;
@end

@implementation PLMetricsFormatterJSON

- (PLMetricsFormatterJSON)init
{
  v98.receiver = self;
  v98.super_class = PLMetricsFormatterJSON;
  v2 = [(PLMetricsFormatterJSON *)&v98 init];
  if (v2)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(PLMetricsFormatterJSON *)v2 setLogFileTimeStamp:date];

    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    allMetrics = v2->allMetrics;
    v2->allMetrics = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    metricArray = v2->metricArray;
    v2->metricArray = v6;

    [(NSMutableDictionary *)v2->allMetrics setObject:v2->metricArray forKey:@"metrics"];
    v8 = MEMORY[0x277CBEA60];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"CPU", @"CPUTime", 0}];
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"GPU", @"GPUTime", 0}];
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"fg_total", @"fgTime_Total", 0}];
    v12 = [v8 arrayWithObjects:{v9, v10, v11, 0}];
    appTimeMapping = v2->appTimeMapping;
    v2->appTimeMapping = v12;

    v14 = MEMORY[0x277CBEA60];
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"CPU", @"CPUTime", 0}];
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"GPU", @"GPUTime", 0}];
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"fg_unplugged", @"fgTime_Unplugged", 0}];
    v18 = [v14 arrayWithObjects:{v15, v16, v17, 0}];
    appTimeUnpluggedMapping = v2->appTimeUnpluggedMapping;
    v2->appTimeUnpluggedMapping = v18;

    v20 = MEMORY[0x277CBEA60];
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"total", @"bgTime_Total", 0}];
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"audio", @"bgTime_Audio", 0}];
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"location", @"bgTime_Location", 0}];
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"location_audio", @"bgLocationAudioTime", 0}];
    v25 = [v20 arrayWithObjects:{v21, v22, v23, v24, 0}];
    appBGTimeMapping = v2->appBGTimeMapping;
    v2->appBGTimeMapping = v25;

    v27 = MEMORY[0x277CBEA60];
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"total", @"bgTime_Unplugged", 0}];
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"audio", @"bgAudioTime_Unplugged", 0}];
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"location", @"bgLocationTime_Unplugged", 0}];
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"location_audio", @"bgLocationAudioTime_Unplugged", 0}];
    v32 = [v27 arrayWithObjects:{v28, v29, v30, v31, 0}];
    appBGTimeUpMapping = v2->appBGTimeUpMapping;
    v2->appBGTimeUpMapping = v32;

    v34 = MEMORY[0x277CBEA60];
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"bestAccuracy", @"BestAccuracy", 0}];
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"bestAccuracyForNavigation", @"BestAccuracyForNavigation", 0}];
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"nearestTenMetersAccuracy", @"NearestTenMetersAccuracy", 0}];
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"hundredMetersAccuracy", @"HundredMetersAccuracy", 0}];
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"kilometerAccuracy", @"KilometerAccuracy", 0}];
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"threeKilometersAccuracy", @"ThreeKilometersAccuracy", 0}];
    v41 = [v34 arrayWithObjects:{v35, v36, v37, v38, v39, v40, 0}];
    appTimeLocationActivityMapping = v2->appTimeLocationActivityMapping;
    v2->appTimeLocationActivityMapping = v41;

    v43 = MEMORY[0x277CBEA60];
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"signalBar0", @"SignalBar0", 0}];
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"signalBar1", @"SignalBar1", 0}];
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"signalBar2", @"SignalBar2", 0}];
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"signalBar3", @"SignalBar3", 0}];
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"signalBar4", @"SignalBar4", 0}];
    v49 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"signalBar5", @"SignalBar5", 0}];
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"signalBarUnknown", @"SignalBarUnknown", 0}];
    v51 = [v43 arrayWithObjects:{v44, v45, v46, v47, v48, v49, v50, 0}];
    appTimeCellularConditionMapping = v2->appTimeCellularConditionMapping;
    v2->appTimeCellularConditionMapping = v51;

    v53 = MEMORY[0x277CBEA60];
    v54 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"totalDownload", @"bytesWifiIn", 0}];
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"totalUpload", @"bytesWifiOut", 0}];
    v56 = [v53 arrayWithObjects:{v54, v55, 0}];
    appNetworkIOWifiMapping = v2->appNetworkIOWifiMapping;
    v2->appNetworkIOWifiMapping = v56;

    v58 = MEMORY[0x277CBEA60];
    v59 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"totalDownload", @"bytesCellularIn", 0}];
    v60 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"totalUpload", @"bytesCellularOut", 0}];
    v61 = [v58 arrayWithObjects:{v59, v60, 0}];
    appNetworkIOCellularMapping = v2->appNetworkIOCellularMapping;
    v2->appNetworkIOCellularMapping = v61;

    v63 = MEMORY[0x277CBEA60];
    v64 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"averagePixelLuminance", @"AveragePictureLevel", 0}];
    v65 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"totalFrameCount", @"TotalFrameCount", 0}];
    v66 = [v63 arrayWithObjects:{v64, v65, 0}];
    appDisplayAPLMapping = v2->appDisplayAPLMapping;
    v2->appDisplayAPLMapping = v66;

    array = [MEMORY[0x277CBEB18] array];
    v69 = 1;
    do
    {
      v70 = MEMORY[0x277CCACA8];
      v71 = [MEMORY[0x277CCABB0] numberWithShort:v69];
      v72 = v69;
      v73 = [v70 stringWithFormat:@"%@", v71];
      [array addObject:v73];

      ++v69;
    }

    while (v72 < 0x11);
    array2 = [MEMORY[0x277CBEB18] array];
    appEnergyFGMapping = v2->appEnergyFGMapping;
    v2->appEnergyFGMapping = array2;

    array3 = [MEMORY[0x277CBEB18] array];
    appEnergyBGMapping = v2->appEnergyBGMapping;
    v2->appEnergyBGMapping = array3;

    array4 = [MEMORY[0x277CBEB18] array];
    appEnergyTotalMapping = v2->appEnergyTotalMapping;
    v2->appEnergyTotalMapping = array4;

    array5 = [MEMORY[0x277CBEB18] array];
    appEnergyBGAudioMapping = v2->appEnergyBGAudioMapping;
    v2->appEnergyBGAudioMapping = array5;

    array6 = [MEMORY[0x277CBEB18] array];
    appEnergyBGLocationMapping = v2->appEnergyBGLocationMapping;
    v2->appEnergyBGLocationMapping = array6;

    v96[0] = MEMORY[0x277D85DD0];
    v96[1] = 3221225472;
    v96[2] = __30__PLMetricsFormatterJSON_init__block_invoke;
    v96[3] = &unk_279A5C3A8;
    v84 = v2;
    v97 = v84;
    [array enumerateObjectsUsingBlock:v96];
    v85 = MEMORY[0x277CBEA60];
    v86 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"totalWrites", @"byteswritten", 0}];
    v87 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"totalReads", @"bytesread", 0}];
    v88 = [v85 arrayWithObjects:{v86, v87, 0}];
    diskIOMapping = v84->diskIOMapping;
    v84->diskIOMapping = v88;

    v90 = MEMORY[0x277CBEA60];
    v91 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"peak", @"PeakMemory", 0}];
    v92 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"average", @"AverageMemory", 0}];
    v93 = [v90 arrayWithObjects:{v91, v92, 0}];
    memoryMapping = v84->memoryMapping;
    v84->memoryMapping = v93;
  }

  return v2;
}

void __30__PLMetricsFormatterJSON_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v13 = [v3 stringWithFormat:@"%@%@", @"fg", v4];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"bg", v4];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"bgAudio", v4];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"bgLocation", v4];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:{v4, v13, 0}];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:{v4, v5, 0}];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:{v4, v4, 0}];
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:{v4, v6, 0}];
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:{v4, v7, 0}];

  [*(*(a1 + 32) + 96) addObject:v8];
  [*(*(a1 + 32) + 104) addObject:v9];
  [*(*(a1 + 32) + 112) addObject:v10];
  [*(*(a1 + 32) + 120) addObject:v11];
  [*(*(a1 + 32) + 128) addObject:v12];
}

- (id)customRound:(int)round precision:(int)precision
{
  if (round >= precision)
  {
    v5 = (round / precision * precision);
    v4 = MEMORY[0x277CCABB0];
    if (round - v5 > precision - (round - v5))
    {
      v5 = (v5 + precision);
    }
  }

  else
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = *&precision;
  }

  v7 = [v4 numberWithInt:v5];

  return v7;
}

- (id)roundArrayValuesToNearestX:(id)x precision:(int)precision
{
  v4 = *&precision;
  v21 = *MEMORY[0x277D85DE8];
  xCopy = x;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = xCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = -[PLMetricsFormatterJSON customRound:precision:](self, "customRound:precision:", [*(*(&v16 + 1) + 8 * i) intValue], v4);
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [v7 sortedArrayUsingSelector:sel_compare_];

  return v14;
}

- (BOOL)checkKeyExistence:(id)existence secondLevel:(id)level dictToCheck:(id)check
{
  levelCopy = level;
  v8 = [check objectForKeyedSubscript:existence];
  v9 = [v8 objectForKeyedSubscript:levelCopy];

  return v9 != 0;
}

- (void)addSubKeysThirdLevel:(id)level extractFromHere:(id)here deviceFirstLevelMetric:(id)metric firstLevelKey:(id)key secondLevelKey:(id)levelKey thirdLevelKey:(id)thirdLevelKey subKeyMap:(id)map
{
  v45 = *MEMORY[0x277D85DE8];
  levelCopy = level;
  hereCopy = here;
  metricCopy = metric;
  keyCopy = key;
  levelKeyCopy = levelKey;
  thirdLevelKeyCopy = thirdLevelKey;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = map;
  v17 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v41;
    selfCopy = self;
    do
    {
      v20 = 0;
      v37 = v18;
      do
      {
        if (*v41 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v40 + 1) + 8 * v20);
        v22 = [v21 objectAtIndexedSubscript:{1, selfCopy}];
        v23 = [(PLMetricsFormatterJSON *)self checkKeyExistence:metricCopy secondLevel:v22 dictToCheck:hereCopy];

        if (v23)
        {
          v24 = [v21 objectAtIndexedSubscript:0];
          v39 = [levelCopy objectForKeyedSubscript:keyCopy];
          v25 = [v39 objectForKeyedSubscript:levelKeyCopy];
          v26 = [v25 objectForKeyedSubscript:thirdLevelKeyCopy];
          [hereCopy objectForKeyedSubscript:metricCopy];
          v28 = v27 = hereCopy;
          v29 = [v21 objectAtIndexedSubscript:1];
          [v28 objectForKeyedSubscript:v29];
          v31 = v30 = v19;
          [v26 setObject:v31 forKey:v24];

          v19 = v30;
          hereCopy = v27;

          self = selfCopy;
          v18 = v37;
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v18);
  }
}

- (void)addSubKeys:(id)keys extractFromHere:(id)here deviceFirstLevelMetric:(id)metric firstLevelKey:(id)key secondLevelKey:(id)levelKey subKeyMap:(id)map
{
  v43 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  hereCopy = here;
  metricCopy = metric;
  keyCopy = key;
  levelKeyCopy = levelKey;
  v16 = hereCopy;
  v32 = levelKeyCopy;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = map;
  v17 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v39;
    do
    {
      v20 = 0;
      v35 = v18;
      do
      {
        if (*v39 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v38 + 1) + 8 * v20);
        v22 = [v21 objectAtIndexedSubscript:{1, v32}];
        v23 = [(PLMetricsFormatterJSON *)self checkKeyExistence:metricCopy secondLevel:v22 dictToCheck:v16];

        if (v23)
        {
          v24 = [v21 objectAtIndexedSubscript:0];
          v25 = [keysCopy objectForKeyedSubscript:keyCopy];
          [v25 objectForKeyedSubscript:v32];
          v27 = v26 = v19;
          [v16 objectForKeyedSubscript:metricCopy];
          v29 = v28 = v16;
          v30 = [v21 objectAtIndexedSubscript:1];
          v31 = [v29 objectForKeyedSubscript:v30];
          [v27 setObject:v31 forKey:v24];

          v16 = v28;
          v19 = v26;
          v18 = v35;
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v18);
  }
}

- (void)addAppTime:(id)time userData:(id)data
{
  v6 = MEMORY[0x277CBEB38];
  dataCopy = data;
  timeCopy = time;
  dictionary = [v6 dictionary];
  v9 = [timeCopy objectForKeyedSubscript:@"power_metrics"];
  [v9 setObject:dictionary forKey:@"app_time"];

  [PLMetricsFormatterJSON addSubKeys:"addSubKeys:extractFromHere:deviceFirstLevelMetric:firstLevelKey:secondLevelKey:subKeyMap:" extractFromHere:timeCopy deviceFirstLevelMetric:dataCopy firstLevelKey:? secondLevelKey:? subKeyMap:?];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v10 = [timeCopy objectForKeyedSubscript:@"power_metrics"];
  v11 = [v10 objectForKeyedSubscript:@"app_time"];
  [v11 setObject:dictionary2 forKey:@"bg_total"];

  [(PLMetricsFormatterJSON *)self addSubKeysThirdLevel:timeCopy extractFromHere:dataCopy deviceFirstLevelMetric:&unk_287146228 firstLevelKey:@"power_metrics" secondLevelKey:@"app_time" thirdLevelKey:@"bg_total" subKeyMap:self->appBGTimeMapping];
  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  v12 = [timeCopy objectForKeyedSubscript:@"power_metrics"];
  [v12 setObject:dictionary3 forKey:@"fg_unplugged"];

  [(PLMetricsFormatterJSON *)self addSubKeys:timeCopy extractFromHere:dataCopy deviceFirstLevelMetric:&unk_287146228 firstLevelKey:@"power_metrics" secondLevelKey:@"app_time" subKeyMap:self->appTimeUnpluggedMapping];
  dictionary4 = [MEMORY[0x277CBEB38] dictionary];
  v13 = [timeCopy objectForKeyedSubscript:@"power_metrics"];
  v14 = [v13 objectForKeyedSubscript:@"app_time"];
  [v14 setObject:dictionary4 forKey:@"bg_unplugged"];

  [(PLMetricsFormatterJSON *)self addSubKeysThirdLevel:timeCopy extractFromHere:dataCopy deviceFirstLevelMetric:&unk_287146228 firstLevelKey:@"power_metrics" secondLevelKey:@"app_time" thirdLevelKey:@"bg_unplugged" subKeyMap:self->appBGTimeUpMapping];
  dictionary5 = [MEMORY[0x277CBEB38] dictionary];
  v16 = [timeCopy objectForKeyedSubscript:@"power_metrics"];
  v17 = [v16 objectForKeyedSubscript:@"app_time"];
  [v17 setObject:dictionary5 forKey:@"location_activity"];

  [(PLMetricsFormatterJSON *)self addSubKeysThirdLevel:timeCopy extractFromHere:dataCopy deviceFirstLevelMetric:&unk_287146228 firstLevelKey:@"power_metrics" secondLevelKey:@"app_time" thirdLevelKey:@"location_activity" subKeyMap:self->appTimeLocationActivityMapping];
  dictionary6 = [MEMORY[0x277CBEB38] dictionary];
  v19 = [timeCopy objectForKeyedSubscript:@"power_metrics"];
  v20 = [v19 objectForKeyedSubscript:@"app_time"];
  [v20 setObject:dictionary6 forKey:@"cellular_condition"];

  [(PLMetricsFormatterJSON *)self addSubKeysThirdLevel:timeCopy extractFromHere:dataCopy deviceFirstLevelMetric:&unk_287146228 firstLevelKey:@"power_metrics" secondLevelKey:@"app_time" thirdLevelKey:@"cellular_condition" subKeyMap:self->appTimeCellularConditionMapping];
}

- (void)addNetworkIO:(id)o userData:(id)data
{
  v6 = MEMORY[0x277CBEB38];
  dataCopy = data;
  oCopy = o;
  dictionary = [v6 dictionary];
  v9 = [oCopy objectForKeyedSubscript:@"power_metrics"];
  [v9 setObject:dictionary forKey:@"network_io"];

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v11 = [oCopy objectForKeyedSubscript:@"power_metrics"];
  v12 = [v11 objectForKeyedSubscript:@"network_io"];
  [v12 setObject:dictionary2 forKey:@"wifi"];

  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  v14 = [oCopy objectForKeyedSubscript:@"power_metrics"];
  v15 = [v14 objectForKeyedSubscript:@"network_io"];
  [v15 setObject:dictionary3 forKey:@"cellular"];

  [(PLMetricsFormatterJSON *)self addSubKeysThirdLevel:oCopy extractFromHere:dataCopy deviceFirstLevelMetric:&unk_287146228 firstLevelKey:@"power_metrics" secondLevelKey:@"network_io" thirdLevelKey:@"wifi" subKeyMap:self->appNetworkIOWifiMapping];
  [(PLMetricsFormatterJSON *)self addSubKeysThirdLevel:oCopy extractFromHere:dataCopy deviceFirstLevelMetric:&unk_287146228 firstLevelKey:@"power_metrics" secondLevelKey:@"network_io" thirdLevelKey:@"cellular" subKeyMap:self->appNetworkIOCellularMapping];
}

- (void)addDisplayAPL:(id)l userData:(id)data
{
  v6 = MEMORY[0x277CBEB38];
  dataCopy = data;
  lCopy = l;
  dictionary = [v6 dictionary];
  v9 = [lCopy objectForKeyedSubscript:@"power_metrics"];
  [v9 setObject:dictionary forKey:@"display_apl"];

  [(PLMetricsFormatterJSON *)self addSubKeys:lCopy extractFromHere:dataCopy deviceFirstLevelMetric:&unk_287146228 firstLevelKey:@"power_metrics" secondLevelKey:@"display_apl" subKeyMap:self->appDisplayAPLMapping];
}

- (void)addAppEnergy:(id)energy userData:(id)data
{
  v6 = MEMORY[0x277CBEB38];
  dataCopy = data;
  energyCopy = energy;
  dictionary = [v6 dictionary];
  v9 = [energyCopy objectForKeyedSubscript:@"power_metrics"];
  [v9 setObject:dictionary forKey:@"app_energy"];

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v10 = [energyCopy objectForKeyedSubscript:@"power_metrics"];
  v11 = [v10 objectForKeyedSubscript:@"app_energy"];
  [v11 setObject:dictionary2 forKey:@"bg"];

  [PLMetricsFormatterJSON addSubKeysThirdLevel:"addSubKeysThirdLevel:extractFromHere:deviceFirstLevelMetric:firstLevelKey:secondLevelKey:thirdLevelKey:subKeyMap:" extractFromHere:energyCopy deviceFirstLevelMetric:dataCopy firstLevelKey:self->appEnergyBGMapping secondLevelKey:? thirdLevelKey:? subKeyMap:?];
  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  v12 = [energyCopy objectForKeyedSubscript:@"power_metrics"];
  v13 = [v12 objectForKeyedSubscript:@"app_energy"];
  [v13 setObject:dictionary3 forKey:@"fg"];

  [(PLMetricsFormatterJSON *)self addSubKeysThirdLevel:energyCopy extractFromHere:dataCopy deviceFirstLevelMetric:&unk_287146228 firstLevelKey:@"power_metrics" secondLevelKey:@"app_energy" thirdLevelKey:@"fg" subKeyMap:self->appEnergyFGMapping];
  dictionary4 = [MEMORY[0x277CBEB38] dictionary];
  v14 = [energyCopy objectForKeyedSubscript:@"power_metrics"];
  v15 = [v14 objectForKeyedSubscript:@"app_energy"];
  [v15 setObject:dictionary4 forKey:@"total"];

  [(PLMetricsFormatterJSON *)self addSubKeysThirdLevel:energyCopy extractFromHere:dataCopy deviceFirstLevelMetric:&unk_287146228 firstLevelKey:@"power_metrics" secondLevelKey:@"app_energy" thirdLevelKey:@"total" subKeyMap:self->appEnergyTotalMapping];
  dictionary5 = [MEMORY[0x277CBEB38] dictionary];
  v17 = [energyCopy objectForKeyedSubscript:@"power_metrics"];
  v18 = [v17 objectForKeyedSubscript:@"app_energy"];
  [v18 setObject:dictionary5 forKey:@"bg_audio"];

  [(PLMetricsFormatterJSON *)self addSubKeysThirdLevel:energyCopy extractFromHere:dataCopy deviceFirstLevelMetric:&unk_287146228 firstLevelKey:@"power_metrics" secondLevelKey:@"app_energy" thirdLevelKey:@"bg_audio" subKeyMap:self->appEnergyBGAudioMapping];
  dictionary6 = [MEMORY[0x277CBEB38] dictionary];
  v20 = [energyCopy objectForKeyedSubscript:@"power_metrics"];
  v21 = [v20 objectForKeyedSubscript:@"app_energy"];
  [v21 setObject:dictionary6 forKey:@"bg_location"];

  [(PLMetricsFormatterJSON *)self addSubKeysThirdLevel:energyCopy extractFromHere:dataCopy deviceFirstLevelMetric:&unk_287146228 firstLevelKey:@"power_metrics" secondLevelKey:@"app_energy" thirdLevelKey:@"bg_location" subKeyMap:self->appEnergyBGLocationMapping];
}

- (void)addDiskIO:(id)o userData:(id)data
{
  v6 = MEMORY[0x277CBEB38];
  dataCopy = data;
  oCopy = o;
  dictionary = [v6 dictionary];
  v9 = [oCopy objectForKeyedSubscript:@"performance_metrics"];
  [v9 setObject:dictionary forKey:@"disk_io"];

  [(PLMetricsFormatterJSON *)self addSubKeys:oCopy extractFromHere:dataCopy deviceFirstLevelMetric:&unk_287146240 firstLevelKey:@"performance_metrics" secondLevelKey:@"disk_io" subKeyMap:self->diskIOMapping];
}

- (void)addAppPerformanceKeysLaunch:(id)launch userData:(id)data launchTimeData:(id)timeData
{
  launchCopy = launch;
  timeDataCopy = timeData;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v10 = [launchCopy objectForKeyedSubscript:@"performance_metrics"];
  [v10 setObject:dictionary forKey:@"app_performance"];

  v11 = [launchCopy objectForKeyedSubscript:@"app_bundleid"];
  if (v11)
  {
    v12 = v11;
    v13 = [launchCopy objectForKeyedSubscript:@"app_bundleid"];
    v14 = [timeDataCopy objectForKeyedSubscript:v13];

    if (v14)
    {
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v15 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __78__PLMetricsFormatterJSON_addAppPerformanceKeysLaunch_userData_launchTimeData___block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v15;
        if (addAppPerformanceKeysLaunch_userData_launchTimeData__defaultOnce != -1)
        {
          dispatch_once(&addAppPerformanceKeysLaunch_userData_launchTimeData__defaultOnce, block);
        }

        if (addAppPerformanceKeysLaunch_userData_launchTimeData__classDebugEnabled == 1)
        {
          v16 = MEMORY[0x277CCACA8];
          v17 = [launchCopy objectForKeyedSubscript:@"app_bundleid"];
          v18 = [timeDataCopy objectForKeyedSubscript:v17];
          v19 = [v16 stringWithFormat:@"This is the data object: %@ %@", @"app_bundleid", v18];

          v20 = MEMORY[0x277D3F178];
          v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLMetricsFormatterJSON.m"];
          lastPathComponent = [v21 lastPathComponent];
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMetricsFormatterJSON addAppPerformanceKeysLaunch:userData:launchTimeData:]"];
          [v20 logMessage:v19 fromFile:lastPathComponent fromFunction:v23 fromLineNumber:487];

          v25 = PLLogCommon(v24);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }

      dictionary3 = [MEMORY[0x277CBEB38] dictionary];
      v27 = [launchCopy objectForKeyedSubscript:@"app_bundleid"];
      v28 = [timeDataCopy objectForKeyedSubscript:v27];
      v29 = [v28 objectForKeyedSubscript:&unk_287146258];
      [(PLMetricsFormatterJSON *)self roundArrayValuesToNearestX:v29 precision:50];
      v31 = v30 = self;
      [dictionary3 setObject:v31 forKeyedSubscript:@"sessions"];

      v32 = MEMORY[0x277CCABB0];
      v33 = [launchCopy objectForKeyedSubscript:@"app_bundleid"];
      v34 = [timeDataCopy objectForKeyedSubscript:v33];
      v35 = [v34 objectForKeyedSubscript:&unk_287146258];
      v36 = [v32 numberWithLong:{objc_msgSend(v35, "count")}];
      [dictionary3 setObject:v36 forKeyedSubscript:@"count"];

      dictionary4 = [MEMORY[0x277CBEB38] dictionary];
      v38 = [launchCopy objectForKeyedSubscript:@"app_bundleid"];
      v39 = [timeDataCopy objectForKeyedSubscript:v38];
      v40 = [v39 objectForKeyedSubscript:&unk_287146270];
      v41 = [(PLMetricsFormatterJSON *)v30 roundArrayValuesToNearestX:v40 precision:50];
      [dictionary4 setObject:v41 forKeyedSubscript:@"sessions"];

      v42 = MEMORY[0x277CCABB0];
      v43 = [launchCopy objectForKeyedSubscript:@"app_bundleid"];
      v44 = [timeDataCopy objectForKeyedSubscript:v43];
      v45 = [v44 objectForKeyedSubscript:&unk_287146270];
      v46 = [v42 numberWithLong:{objc_msgSend(v45, "count")}];
      [dictionary4 setObject:v46 forKeyedSubscript:@"count"];

      [dictionary2 setObject:dictionary3 forKeyedSubscript:@"fg"];
      [dictionary2 setObject:dictionary4 forKeyedSubscript:@"bg"];
      v47 = [launchCopy objectForKeyedSubscript:@"performance_metrics"];
      v48 = [v47 objectForKeyedSubscript:@"app_performance"];
      [v48 setObject:dictionary2 forKey:@"launch"];
    }
  }
}

void *__78__PLMetricsFormatterJSON_addAppPerformanceKeysLaunch_userData_launchTimeData___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addAppPerformanceKeysLaunch_userData_launchTimeData__classDebugEnabled = result;
  return result;
}

- (void)addAppPerformanceKeysActivations:(id)activations activationData:(id)data
{
  v76 = *MEMORY[0x277D85DE8];
  activationsCopy = activations;
  dataCopy = data;
  v8 = [activationsCopy objectForKeyedSubscript:@"app_bundleid"];
  if (v8)
  {
    v9 = v8;
    v10 = [activationsCopy objectForKeyedSubscript:@"app_bundleid"];
    v11 = [dataCopy objectForKeyedSubscript:v10];

    if (v11)
    {
      v60 = activationsCopy;
      v12 = [activationsCopy objectForKeyedSubscript:@"app_bundleid"];
      v59 = dataCopy;
      v13 = [dataCopy objectForKeyedSubscript:v12];
      v14 = [v13 mutableCopy];

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v63 = v14;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v15 = [v14 objectForKeyedSubscript:&unk_287146258];
      allKeys = [v15 allKeys];

      v17 = [allKeys countByEnumeratingWithState:&v70 objects:v75 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v71;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v71 != v19)
            {
              objc_enumerationMutation(allKeys);
            }

            v21 = *(*(&v70 + 1) + 8 * i);
            v22 = [v63 objectForKeyedSubscript:&unk_287146258];
            v23 = [v22 objectForKeyedSubscript:v21];
            v24 = [(PLMetricsFormatterJSON *)self roundArrayValuesToNearestX:v23 precision:50];
            stringValue = [v21 stringValue];
            [dictionary setObject:v24 forKeyedSubscript:stringValue];
          }

          v18 = [allKeys countByEnumeratingWithState:&v70 objects:v75 count:16];
        }

        while (v18);
      }

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v26 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __74__PLMetricsFormatterJSON_addAppPerformanceKeysActivations_activationData___block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v26;
        if (addAppPerformanceKeysActivations_activationData__defaultOnce != -1)
        {
          dispatch_once(&addAppPerformanceKeysActivations_activationData__defaultOnce, block);
        }

        if (addAppPerformanceKeysActivations_activationData__classDebugEnabled == 1)
        {
          v27 = MEMORY[0x277CCACA8];
          v28 = [v60 objectForKeyedSubscript:@"app_bundleid"];
          v29 = [v27 stringWithFormat:@"%@ FG Activation Data: %@", v28, dictionary];

          v30 = MEMORY[0x277D3F178];
          v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLMetricsFormatterJSON.m"];
          lastPathComponent = [v31 lastPathComponent];
          v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMetricsFormatterJSON addAppPerformanceKeysActivations:activationData:]"];
          [v30 logMessage:v29 fromFile:lastPathComponent fromFunction:v33 fromLineNumber:522];

          v35 = PLLogCommon(v34);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }

      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v36 = [v63 objectForKeyedSubscript:&unk_287146270];
      allKeys2 = [v36 allKeys];

      v38 = [allKeys2 countByEnumeratingWithState:&v65 objects:v74 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v66;
        do
        {
          for (j = 0; j != v39; ++j)
          {
            if (*v66 != v40)
            {
              objc_enumerationMutation(allKeys2);
            }

            v42 = *(*(&v65 + 1) + 8 * j);
            v43 = [v63 objectForKeyedSubscript:&unk_287146270];
            v44 = [v43 objectForKeyedSubscript:v42];
            v45 = [(PLMetricsFormatterJSON *)self roundArrayValuesToNearestX:v44 precision:50];
            stringValue2 = [v42 stringValue];
            [dictionary2 setObject:v45 forKeyedSubscript:stringValue2];
          }

          v39 = [allKeys2 countByEnumeratingWithState:&v65 objects:v74 count:16];
        }

        while (v39);
      }

      activationsCopy = v60;
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v47 = objc_opt_class();
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __74__PLMetricsFormatterJSON_addAppPerformanceKeysActivations_activationData___block_invoke_308;
        v64[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v64[4] = v47;
        if (addAppPerformanceKeysActivations_activationData__defaultOnce_306 != -1)
        {
          dispatch_once(&addAppPerformanceKeysActivations_activationData__defaultOnce_306, v64);
        }

        if (addAppPerformanceKeysActivations_activationData__classDebugEnabled_307 == 1)
        {
          v48 = MEMORY[0x277CCACA8];
          v49 = [v60 objectForKeyedSubscript:@"app_bundleid"];
          v50 = [v48 stringWithFormat:@"%@ BG Activation Data: %@", v49, dictionary2];

          v51 = MEMORY[0x277D3F178];
          v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLMetricsFormatterJSON.m"];
          lastPathComponent2 = [v52 lastPathComponent];
          v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMetricsFormatterJSON addAppPerformanceKeysActivations:activationData:]"];
          [v51 logMessage:v50 fromFile:lastPathComponent2 fromFunction:v54 fromLineNumber:527];

          v56 = PLLogCommon(v55);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }

      [v63 removeObjectsForKeys:&unk_28714CAA0];
      [v63 setObject:dictionary forKeyedSubscript:@"fg"];
      [v63 setObject:dictionary2 forKeyedSubscript:@"bg"];
      v57 = [v60 objectForKeyedSubscript:@"performance_metrics"];
      v58 = [v57 objectForKeyedSubscript:@"app_performance"];
      [v58 setObject:v63 forKeyedSubscript:@"activation"];

      dataCopy = v59;
    }
  }
}

void *__74__PLMetricsFormatterJSON_addAppPerformanceKeysActivations_activationData___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addAppPerformanceKeysActivations_activationData__classDebugEnabled = result;
  return result;
}

void *__74__PLMetricsFormatterJSON_addAppPerformanceKeysActivations_activationData___block_invoke_308(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addAppPerformanceKeysActivations_activationData__classDebugEnabled_307 = result;
  return result;
}

- (void)addAppPerformanceKeysResume:(id)resume userData:(id)data resumeTimeData:(id)timeData
{
  resumeCopy = resume;
  timeDataCopy = timeData;
  v9 = [resumeCopy objectForKeyedSubscript:@"app_bundleid"];
  if (v9)
  {
    v10 = v9;
    v11 = [resumeCopy objectForKeyedSubscript:@"app_bundleid"];
    v12 = [timeDataCopy objectForKeyedSubscript:v11];

    if (v12)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v14 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __78__PLMetricsFormatterJSON_addAppPerformanceKeysResume_userData_resumeTimeData___block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v14;
        if (addAppPerformanceKeysResume_userData_resumeTimeData__defaultOnce != -1)
        {
          dispatch_once(&addAppPerformanceKeysResume_userData_resumeTimeData__defaultOnce, block);
        }

        if (addAppPerformanceKeysResume_userData_resumeTimeData__classDebugEnabled == 1)
        {
          v15 = MEMORY[0x277CCACA8];
          v16 = [resumeCopy objectForKeyedSubscript:@"app_bundleid"];
          v17 = [timeDataCopy objectForKeyedSubscript:v16];
          v18 = [v15 stringWithFormat:@"This is the data object: %@ %@", @"app_bundleid", v17];

          v19 = MEMORY[0x277D3F178];
          v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLMetricsFormatterJSON.m"];
          lastPathComponent = [v20 lastPathComponent];
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMetricsFormatterJSON addAppPerformanceKeysResume:userData:resumeTimeData:]"];
          [v19 logMessage:v18 fromFile:lastPathComponent fromFunction:v22 fromLineNumber:555];

          v24 = PLLogCommon(v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }

      v25 = [resumeCopy objectForKeyedSubscript:@"app_bundleid"];
      v26 = [timeDataCopy objectForKeyedSubscript:v25];
      v27 = [(PLMetricsFormatterJSON *)self roundArrayValuesToNearestX:v26 precision:5];
      [dictionary setObject:v27 forKeyedSubscript:@"sessions"];

      v28 = MEMORY[0x277CCABB0];
      v29 = [resumeCopy objectForKeyedSubscript:@"app_bundleid"];
      v30 = [timeDataCopy objectForKeyedSubscript:v29];
      v31 = [v28 numberWithLong:{objc_msgSend(v30, "count")}];
      [dictionary setObject:v31 forKeyedSubscript:@"count"];

      v32 = [resumeCopy objectForKeyedSubscript:@"performance_metrics"];
      v33 = [v32 objectForKeyedSubscript:@"app_performance"];
      [v33 setObject:dictionary forKey:@"resume"];
    }
  }
}

void *__78__PLMetricsFormatterJSON_addAppPerformanceKeysResume_userData_resumeTimeData___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addAppPerformanceKeysResume_userData_resumeTimeData__classDebugEnabled = result;
  return result;
}

- (void)addAppPerformanceKeysHang:(id)hang userData:(id)data hangTimeData:(id)timeData
{
  hangCopy = hang;
  timeDataCopy = timeData;
  v9 = [hangCopy objectForKeyedSubscript:@"app_bundleid"];
  if (v9)
  {
    v10 = v9;
    v11 = [hangCopy objectForKeyedSubscript:@"app_bundleid"];
    v12 = [timeDataCopy objectForKeyedSubscript:v11];

    if (v12)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v14 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __74__PLMetricsFormatterJSON_addAppPerformanceKeysHang_userData_hangTimeData___block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v14;
        if (addAppPerformanceKeysHang_userData_hangTimeData__defaultOnce != -1)
        {
          dispatch_once(&addAppPerformanceKeysHang_userData_hangTimeData__defaultOnce, block);
        }

        if (addAppPerformanceKeysHang_userData_hangTimeData__classDebugEnabled == 1)
        {
          v15 = MEMORY[0x277CCACA8];
          v16 = [hangCopy objectForKeyedSubscript:@"app_bundleid"];
          v17 = [timeDataCopy objectForKeyedSubscript:v16];
          v18 = [v15 stringWithFormat:@"This is the data object: %@ %@", @"app_bundleid", v17];

          v19 = MEMORY[0x277D3F178];
          v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLMetricsFormatterJSON.m"];
          lastPathComponent = [v20 lastPathComponent];
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMetricsFormatterJSON addAppPerformanceKeysHang:userData:hangTimeData:]"];
          [v19 logMessage:v18 fromFile:lastPathComponent fromFunction:v22 fromLineNumber:583];

          v24 = PLLogCommon(v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }

      v25 = [hangCopy objectForKeyedSubscript:@"app_bundleid"];
      v26 = [timeDataCopy objectForKeyedSubscript:v25];
      v27 = [(PLMetricsFormatterJSON *)self roundArrayValuesToNearestX:v26 precision:10];
      [dictionary setObject:v27 forKeyedSubscript:@"sessions"];

      v28 = MEMORY[0x277CCABB0];
      v29 = [hangCopy objectForKeyedSubscript:@"app_bundleid"];
      v30 = [timeDataCopy objectForKeyedSubscript:v29];
      v31 = [v28 numberWithLong:{objc_msgSend(v30, "count")}];
      [dictionary setObject:v31 forKeyedSubscript:@"count"];

      v32 = [hangCopy objectForKeyedSubscript:@"performance_metrics"];
      v33 = [v32 objectForKeyedSubscript:@"app_performance"];
      [v33 setObject:dictionary forKey:@"hang"];
    }
  }
}

void *__74__PLMetricsFormatterJSON_addAppPerformanceKeysHang_userData_hangTimeData___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addAppPerformanceKeysHang_userData_hangTimeData__classDebugEnabled = result;
  return result;
}

- (void)addAppPerformanceKeysGlitch:(id)glitch scrollGlitchData:(id)data
{
  glitchCopy = glitch;
  dataCopy = data;
  v6 = [glitchCopy objectForKeyedSubscript:@"app_bundleid"];
  if (v6)
  {
    v7 = v6;
    v8 = [glitchCopy objectForKeyedSubscript:@"app_bundleid"];
    v9 = [dataCopy objectForKeyedSubscript:v8];

    if (v9)
    {
      v10 = MEMORY[0x277CBEB38];
      v11 = [glitchCopy objectForKeyedSubscript:@"app_bundleid"];
      v12 = [dataCopy objectForKeyedSubscript:v11];
      v13 = [v10 dictionaryWithDictionary:v12];

      v14 = [glitchCopy objectForKeyedSubscript:@"performance_metrics"];
      v15 = [v14 objectForKeyedSubscript:@"app_performance"];
      [v15 setObject:v13 forKey:@"animation"];
    }
  }
}

- (void)addAppPerformanceKeysExits:(id)exits processExitData:(id)data
{
  exitsCopy = exits;
  dataCopy = data;
  v6 = [exitsCopy objectForKeyedSubscript:@"app_bundleid"];
  if (v6)
  {
    v7 = v6;
    v8 = [exitsCopy objectForKeyedSubscript:@"app_bundleid"];
    v9 = [dataCopy objectForKeyedSubscript:v8];

    if (v9)
    {
      v10 = [exitsCopy objectForKeyedSubscript:@"app_bundleid"];
      v11 = [dataCopy objectForKeyedSubscript:v10];
      v12 = [v11 mutableCopy];

      v13 = [v12 objectForKeyedSubscript:&unk_287146258];
      v14 = [PLMetricsFormatterMetricKit categorizeAppExits:v13];

      v15 = [v12 objectForKeyedSubscript:&unk_287146270];
      v16 = [PLMetricsFormatterMetricKit categorizeAppExits:v15];

      [v12 removeObjectsForKeys:&unk_28714CAB8];
      [v12 setObject:v14 forKey:@"fg"];
      [v12 setObject:v16 forKey:@"bg"];
      v17 = [exitsCopy objectForKeyedSubscript:@"performance_metrics"];
      v18 = [v17 objectForKeyedSubscript:@"app_performance"];
      [v18 setObject:v12 forKeyedSubscript:@"processExits"];
    }
  }
}

- (void)addAppMemoryKeys:(id)keys userData:(id)data
{
  v6 = MEMORY[0x277CBEB38];
  dataCopy = data;
  keysCopy = keys;
  dictionary = [v6 dictionary];
  v9 = [keysCopy objectForKeyedSubscript:@"performance_metrics"];
  [v9 setObject:dictionary forKey:@"memory"];

  [(PLMetricsFormatterJSON *)self addSubKeys:keysCopy extractFromHere:dataCopy deviceFirstLevelMetric:&unk_287146240 firstLevelKey:@"performance_metrics" secondLevelKey:@"memory" subKeyMap:self->memoryMapping];
}

- (void)addPowerMetrics:(id)metrics userData:(id)data
{
  dataCopy = data;
  metricsCopy = metrics;
  [(PLMetricsFormatterJSON *)self addAppTime:metricsCopy userData:dataCopy];
  [(PLMetricsFormatterJSON *)self addNetworkIO:metricsCopy userData:dataCopy];
  [(PLMetricsFormatterJSON *)self addDisplayAPL:metricsCopy userData:dataCopy];
  [(PLMetricsFormatterJSON *)self addAppEnergy:metricsCopy userData:dataCopy];
}

- (void)addPerformanceMetrics:(id)metrics userData:(id)data signpostData:(id)signpostData
{
  signpostDataCopy = signpostData;
  dataCopy = data;
  metricsCopy = metrics;
  [(PLMetricsFormatterJSON *)self addDiskIO:metricsCopy userData:dataCopy];
  v10 = [signpostDataCopy objectForKeyedSubscript:@"launchDurations"];
  [(PLMetricsFormatterJSON *)self addAppPerformanceKeysLaunch:metricsCopy userData:dataCopy launchTimeData:v10];

  v11 = [signpostDataCopy objectForKeyedSubscript:@"resumeDurations"];
  [(PLMetricsFormatterJSON *)self addAppPerformanceKeysResume:metricsCopy userData:dataCopy resumeTimeData:v11];

  v12 = [signpostDataCopy objectForKeyedSubscript:@"hangDurations"];
  [(PLMetricsFormatterJSON *)self addAppPerformanceKeysHang:metricsCopy userData:dataCopy hangTimeData:v12];

  v13 = [signpostDataCopy objectForKeyedSubscript:@"scrollGlitches"];
  [(PLMetricsFormatterJSON *)self addAppPerformanceKeysGlitch:metricsCopy scrollGlitchData:v13];

  v14 = [signpostDataCopy objectForKeyedSubscript:@"processExits"];
  [(PLMetricsFormatterJSON *)self addAppPerformanceKeysExits:metricsCopy processExitData:v14];

  v15 = [signpostDataCopy objectForKeyedSubscript:@"activationDurations"];

  [(PLMetricsFormatterJSON *)self addAppPerformanceKeysActivations:metricsCopy activationData:v15];
  [(PLMetricsFormatterJSON *)self addAppMemoryKeys:metricsCopy userData:dataCopy];
}

- (void)addAppMetaData:(id)data userData:(id)userData
{
  dataCopy = data;
  v6 = [userData objectForKeyedSubscript:&unk_287146288];
  [dataCopy addEntriesFromDictionary:v6];
}

- (void)addAllMetrics:(id)metrics signpostData:(id)data
{
  v26 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  dataCopy = data;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = metricsCopy;
  v20 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v20)
  {
    v18 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v7);
        }

        v9 = *(*(&v21 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        dictionary2 = [MEMORY[0x277CBEB38] dictionary];
        dictionary3 = [MEMORY[0x277CBEB38] dictionary];
        [dictionary setObject:dictionary2 forKey:@"power_metrics"];
        [dictionary setObject:dictionary3 forKey:@"performance_metrics"];
        v14 = [v7 objectForKeyedSubscript:v9];
        [(PLMetricsFormatterJSON *)self addAppMetaData:dictionary userData:v14];

        v15 = [v7 objectForKeyedSubscript:v9];
        [(PLMetricsFormatterJSON *)self addPowerMetrics:dictionary userData:v15];

        v16 = [v7 objectForKeyedSubscript:v9];
        [(PLMetricsFormatterJSON *)self addPerformanceMetrics:dictionary userData:v16 signpostData:dataCopy];

        v17 = [(PLMetricsFormatterJSON *)self sanitizeDictionary:dictionary];
        [(PLMetricsFormatterJSON *)self addAppMetric:v17];
        [(PLMetricsFormatterJSON *)self sendAppMetricToCoreAnalytics:v17];

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v20 != v8);
      v20 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v20);
  }
}

- (id)sanitizeDictionary:(id)dictionary
{
  v24 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  allKeys = [dictionaryCopy allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [dictionaryCopy objectForKeyedSubscript:v9];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [dictionaryCopy objectForKeyedSubscript:v9];
          v12 = [v11 count];

          if (!v12)
          {
            goto LABEL_10;
          }

          v10 = [dictionaryCopy objectForKeyedSubscript:v9];
          v13 = [(PLMetricsFormatterJSON *)self sanitizeDictionary:v10];
          [dictionaryCopy setObject:v13 forKeyedSubscript:v9];
        }

LABEL_10:
        v14 = [dictionaryCopy objectForKeyedSubscript:v9];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [dictionaryCopy objectForKeyedSubscript:v9];
          v16 = [v15 count];

          if (!v16)
          {
            [dictionaryCopy removeObjectForKey:v9];
          }
        }

        else
        {
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  return dictionaryCopy;
}

- (id)getOSVersion
{
  if (getOSVersion_onceToken != -1)
  {
    [PLMetricsFormatterJSON getOSVersion];
  }

  v3 = getOSVersion_osVersion;

  return v3;
}

void __38__PLMetricsFormatterJSON_getOSVersion__block_invoke()
{
  v6 = _CFCopySupplementalVersionDictionary();
  if (v6)
  {
    v0 = objc_alloc(MEMORY[0x277CCACA8]);
    v1 = [v6 objectForKeyedSubscript:@"ProductName"];
    v2 = [v6 objectForKeyedSubscript:@"ProductVersion"];
    v3 = [v6 objectForKeyedSubscript:@"ProductBuildVersion"];
    v4 = [v0 initWithFormat:@"%@ %@ (%@)", v1, v2, v3];
    v5 = getOSVersion_osVersion;
    getOSVersion_osVersion = v4;
  }

  else
  {
    v1 = getOSVersion_osVersion;
    getOSVersion_osVersion = 0;
  }
}

- (id)createHeaderForSessionsFile
{
  v8[2] = *MEMORY[0x277D85DE8];
  getOSVersion = [(PLMetricsFormatterJSON *)self getOSVersion];
  v3 = getOSVersion;
  v7[0] = @"bug_type";
  v7[1] = @"os_version";
  v4 = @"<unknown>";
  if (getOSVersion)
  {
    v4 = getOSVersion;
  }

  v8[0] = @"278";
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (BOOL)writeSessionFile
{
  date = [MEMORY[0x277CBEAA8] date];
  [(PLMetricsFormatterJSON *)self setLogFileTimeStamp:date];

  v4 = [(PLMetricsFormatterJSON *)self getCurrentTimeFormatted:1];
  [(NSMutableDictionary *)self->allMetrics setObject:v4 forKey:@"log_timestamp"];
  createHeaderForSessionsFile = [(PLMetricsFormatterJSON *)self createHeaderForSessionsFile];
  getFileHandle = [(PLMetricsFormatterJSON *)self getFileHandle];
  v16 = 0;
  v7 = [MEMORY[0x277CCAAA0] dataWithJSONObject:createHeaderForSessionsFile options:0 error:&v16];
  v8 = v16;
  [getFileHandle writeData:v7];

  v9 = [MEMORY[0x277CBEA90] dataWithBytes:"\n" length:1];
  [getFileHandle writeData:v9];

  [(PLMetricsFormatterJSON *)self pruneJSONData];
  allMetrics = self->allMetrics;
  v15 = v8;
  v11 = [MEMORY[0x277CCAAA0] dataWithJSONObject:allMetrics options:1 error:&v15];
  v12 = v15;

  [getFileHandle writeData:v11];
  v13 = [MEMORY[0x277CBEA90] dataWithBytes:"\n" length:1];
  [getFileHandle writeData:v13];

  [getFileHandle closeFile];
  LOBYTE(self) = [(PLMetricsFormatterJSON *)self moveLogFile];

  return self;
}

- (BOOL)moveLogFile
{
  v3 = [(PLMetricsFormatterJSON *)self getCurrentTimeFormatted:0];
  v4 = [@"/tmp/powerlog/" stringByAppendingFormat:@"log-power-%@.session", v3];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:self->tmpFilePath];
  v25 = 0;
  [defaultManager moveItemAtPath:v6 toPath:v4 error:&v25];
  v7 = v25;

  v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  v9 = OSAMoveFileForSubmissions();

  if (!v9)
  {
    v16 = PLLogCommon(v10);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [PLMetricsFormatterJSON moveLogFile];
    }

    goto LABEL_11;
  }

  v11 = MEMORY[0x277CBEBC0];
  lastPathComponent = [v4 lastPathComponent];
  v13 = [@"/var/mobile/Library/Logs/CrashReporter/" stringByAppendingPathComponent:lastPathComponent];
  v14 = [v11 fileURLWithPath:v13];
  [PPSFileUtilities markAsPurgeable:v14 urgency:512 startDate:0];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v15 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__PLMetricsFormatterJSON_moveLogFile__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v15;
    if (moveLogFile_defaultOnce != -1)
    {
      dispatch_once(&moveLogFile_defaultOnce, block);
    }

    if (moveLogFile_classDebugEnabled == 1)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Power log: written to %@", v4];
      v17 = MEMORY[0x277D3F178];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLMetricsFormatterJSON.m"];
      lastPathComponent2 = [v18 lastPathComponent];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMetricsFormatterJSON moveLogFile]"];
      [v17 logMessage:v16 fromFile:lastPathComponent2 fromFunction:v20 fromLineNumber:824];

      v22 = PLLogCommon(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

LABEL_11:
    }
  }

  return v9;
}

void *__37__PLMetricsFormatterJSON_moveLogFile__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  moveLogFile_classDebugEnabled = result;
  return result;
}

- (void)addAppMetric:(id)metric
{
  allMetrics = self->allMetrics;
  metricCopy = metric;
  v5 = [(NSMutableDictionary *)allMetrics objectForKeyedSubscript:@"metrics"];
  [v5 addObject:metricCopy];
}

- (void)sendAppMetricToCoreAnalytics:(id)analytics
{
  v69 = *MEMORY[0x277D85DE8];
  analyticsCopy = analytics;
  v4 = [analyticsCopy objectForKeyedSubscript:@"power_metrics"];

  if (v4)
  {
    v6 = objc_opt_new();
    v7 = [analyticsCopy objectForKeyedSubscript:@"app_bundleid"];
    [v6 setObject:v7 forKeyedSubscript:@"app_bundleid"];

    v8 = [analyticsCopy objectForKeyedSubscript:@"power_metrics"];
    v9 = [v8 objectForKeyedSubscript:@"app_time"];
    if (v9)
    {
      v10 = v9;
      v11 = [analyticsCopy objectForKeyedSubscript:@"power_metrics"];
      v12 = [v11 objectForKeyedSubscript:@"app_time"];
      v13 = [v12 objectForKeyedSubscript:@"cellular_condition"];

      if (v13)
      {
        v14 = v6;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v15 = [analyticsCopy objectForKeyedSubscript:@"power_metrics"];
        v16 = [v15 objectForKeyedSubscript:@"app_time"];
        v17 = [v16 objectForKeyedSubscript:@"cellular_condition"];

        obj = v17;
        v18 = [v17 countByEnumeratingWithState:&v63 objects:v68 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v64;
          do
          {
            v21 = 0;
            do
            {
              if (*v64 != v20)
              {
                objc_enumerationMutation(obj);
              }

              v22 = *(*(&v63 + 1) + 8 * v21);
              [analyticsCopy objectForKeyedSubscript:@"power_metrics"];
              v24 = v23 = analyticsCopy;
              v25 = [v24 objectForKeyedSubscript:@"app_time"];
              v26 = [v25 objectForKeyedSubscript:@"cellular_condition"];
              v27 = [v26 objectForKeyedSubscript:v22];
              [v14 setObject:v27 forKeyedSubscript:v22];

              analyticsCopy = v23;
              ++v21;
            }

            while (v19 != v21);
            v19 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
          }

          while (v19);
        }

        v6 = v14;
      }
    }

    else
    {
    }

    v28 = [analyticsCopy objectForKeyedSubscript:@"power_metrics"];
    v29 = [v28 objectForKeyedSubscript:@"network_io"];

    if (v29)
    {
      v30 = [analyticsCopy objectForKeyedSubscript:@"power_metrics"];
      v31 = [v30 objectForKeyedSubscript:@"network_io"];
      v32 = v6;
      v33 = [v31 objectForKeyedSubscript:@"cellular"];
      [v33 objectForKeyedSubscript:@"totalDownload"];
      v34 = obja = analyticsCopy;
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", @"cellular", @"totalDownload"];
      [v6 setObject:v34 forKeyedSubscript:v35];

      v36 = [obja objectForKeyedSubscript:@"power_metrics"];
      v37 = [v36 objectForKeyedSubscript:@"network_io"];
      v38 = [v37 objectForKeyedSubscript:@"cellular"];
      v39 = [v38 objectForKeyedSubscript:@"totalUpload"];
      v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", @"cellular", @"totalUpload"];
      [v32 setObject:v39 forKeyedSubscript:v40];

      v41 = [obja objectForKeyedSubscript:@"power_metrics"];
      v42 = [v41 objectForKeyedSubscript:@"network_io"];
      v43 = [v42 objectForKeyedSubscript:@"wifi"];
      v44 = [v43 objectForKeyedSubscript:@"totalDownload"];
      v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", @"wifi", @"totalDownload"];
      [v32 setObject:v44 forKeyedSubscript:v45];

      analyticsCopy = obja;
      v46 = [obja objectForKeyedSubscript:@"power_metrics"];
      v47 = [v46 objectForKeyedSubscript:@"network_io"];
      v48 = [v47 objectForKeyedSubscript:@"wifi"];
      v49 = [v48 objectForKeyedSubscript:@"totalUpload"];
      v6 = v32;
      v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", @"wifi", @"totalUpload"];
      [v6 setObject:v49 forKeyedSubscript:v50];
    }

    v51 = [analyticsCopy objectForKeyedSubscript:@"power_metrics"];
    v52 = [v51 objectForKeyedSubscript:@"display_apl"];

    if (v52)
    {
      v54 = [analyticsCopy objectForKeyedSubscript:@"power_metrics"];
      v55 = [v54 objectForKeyedSubscript:@"display_apl"];
      v56 = [v55 objectForKeyedSubscript:@"averagePixelLuminance"];
      [v6 setObject:v56 forKeyedSubscript:@"averagePixelLuminance"];

      v57 = [analyticsCopy objectForKeyedSubscript:@"power_metrics"];
      v58 = [v57 objectForKeyedSubscript:@"display_apl"];
      v59 = [v58 objectForKeyedSubscript:@"totalFrameCount"];
      [v6 setObject:v59 forKeyedSubscript:@"totalFrameCount"];
    }

    v60 = PLLogAggregateSummarizationService(v53);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
    {
      [PLMetricsFormatterJSON sendAppMetricToCoreAnalytics:];
    }

    AnalyticsSendEvent();
  }

  else
  {
    v6 = PLLogAggregateSummarizationService(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, v6, OS_LOG_TYPE_INFO, "No power_metrics to report to Core Analytics", buf, 2u);
    }
  }
}

- (id)getCurrentTimeFormatted:(BOOL)formatted
{
  formattedCopy = formatted;
  logFileTimeStamp = [(PLMetricsFormatterJSON *)self logFileTimeStamp];

  if (!logFileTimeStamp)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(PLMetricsFormatterJSON *)self setLogFileTimeStamp:date];
  }

  logFileTimeStamp2 = [(PLMetricsFormatterJSON *)self logFileTimeStamp];
  v8 = objc_alloc_init(MEMORY[0x277CCA968]);
  v9 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v8 setLocale:v9];
  if (formattedCopy)
  {
    v10 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"UTC"];
    [v8 setTimeZone:v10];

    [v8 setDateFormat:@"yyyy-MM-dd'T'HH':'mm':'ssZZ"];
  }

  else
  {
    defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
    [v8 setTimeZone:defaultTimeZone];
    [v8 setDateFormat:@"yyyy-MM-dd-HHmmss"];
  }

  v12 = [v8 stringFromDate:logFileTimeStamp2];

  return v12;
}

- (id)getFileHandle
{
  v28 = *MEMORY[0x277D85DE8];
  if (!confstr(65537, __s, 0x400uLL))
  {
    goto LABEL_10;
  }

  strlen(__s);
  __strncat_chk();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__PLMetricsFormatterJSON_getFileHandle__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (getFileHandle_defaultOnce != -1)
    {
      dispatch_once(&getFileHandle_defaultOnce, block);
    }

    if (getFileHandle_classDebugEnabled == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n\n\n\n\n%s\n\n\n", __s];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLMetricsFormatterJSON.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMetricsFormatterJSON getFileHandle]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:926];

      v10 = PLLogCommon(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v11 = mkstemp(__s);
  if ((v11 + 1) >= 2 && (v14 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v11]) != 0)
  {
    v15 = v14;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v25 = *MEMORY[0x277CCA180];
    v26 = &unk_2871462A0;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:__s];
    v23 = 0;
    v19 = [defaultManager setAttributes:v17 ofItemAtPath:v18 error:&v23];
    v20 = v23;

    if ((v19 & 1) == 0)
    {
      v22 = PLLogCommon(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [PLMetricsFormatterJSON getFileHandle];
      }
    }

    strncpy(self->tmpFilePath, __s, 0x400uLL);
    v12 = v15;
  }

  else
  {
LABEL_10:
    v12 = 0;
  }

  return v12;
}

void *__39__PLMetricsFormatterJSON_getFileHandle__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getFileHandle_classDebugEnabled = result;
  return result;
}

- (void)test
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__PLMetricsFormatterJSON_test__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (test_defaultOnce != -1)
    {
      dispatch_once(&test_defaultOnce, block);
    }

    if (test_classDebugEnabled == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Object has been successfully created (PLMetricsFormatterJSON)."];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLMetricsFormatterJSON.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMetricsFormatterJSON test]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:955];

      v10 = PLLogCommon(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __30__PLMetricsFormatterJSON_test__block_invoke_430;
    v19[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v19[4] = v11;
    if (test_defaultOnce_428 != -1)
    {
      dispatch_once(&test_defaultOnce_428, v19);
    }

    if (test_classDebugEnabled_429 == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", self->allMetrics];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLMetricsFormatterJSON.m"];
      lastPathComponent2 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMetricsFormatterJSON test]"];
      [v13 logMessage:v12 fromFile:lastPathComponent2 fromFunction:v16 fromLineNumber:956];

      v18 = PLLogCommon(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

void *__30__PLMetricsFormatterJSON_test__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  test_classDebugEnabled = result;
  return result;
}

void *__30__PLMetricsFormatterJSON_test__block_invoke_430(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  test_classDebugEnabled_429 = result;
  return result;
}

- (id)metricsToStringAsJSON
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLMetricsFormatterJSON_metricsToStringAsJSON__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (metricsToStringAsJSON_defaultOnce != -1)
    {
      dispatch_once(&metricsToStringAsJSON_defaultOnce, block);
    }

    if (metricsToStringAsJSON_classDebugEnabled == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Printing each key."];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLMetricsFormatterJSON.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMetricsFormatterJSON metricsToStringAsJSON]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:961];

      v10 = PLLogCommon(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  allMetrics = self->allMetrics;
  v32 = 0;
  v12 = [MEMORY[0x277CCAAA0] dataWithJSONObject:allMetrics options:1 error:&v32];
  v13 = v32;
  if (v12)
  {
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v12 encoding:4];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v15 = objc_opt_class();
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __47__PLMetricsFormatterJSON_metricsToStringAsJSON__block_invoke_445;
      v30[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v30[4] = v15;
      if (metricsToStringAsJSON_defaultOnce_443 != -1)
      {
        dispatch_once(&metricsToStringAsJSON_defaultOnce_443, v30);
      }

      if (metricsToStringAsJSON_classDebugEnabled_444 == 1)
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n"];
        v17 = MEMORY[0x277D3F178];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLMetricsFormatterJSON.m"];
        lastPathComponent2 = [v18 lastPathComponent];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMetricsFormatterJSON metricsToStringAsJSON]"];
        [v17 logMessage:v16 fromFile:lastPathComponent2 fromFunction:v20 fromLineNumber:971];

        v22 = PLLogCommon(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

LABEL_22:
      }
    }
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v23 = objc_opt_class();
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __47__PLMetricsFormatterJSON_metricsToStringAsJSON__block_invoke_436;
      v31[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v31[4] = v23;
      if (metricsToStringAsJSON_defaultOnce_434 != -1)
      {
        dispatch_once(&metricsToStringAsJSON_defaultOnce_434, v31);
      }

      if (metricsToStringAsJSON_classDebugEnabled_435 == 1)
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got an error: %@", v13];
        v24 = MEMORY[0x277D3F178];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLMetricsFormatterJSON.m"];
        lastPathComponent3 = [v25 lastPathComponent];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMetricsFormatterJSON metricsToStringAsJSON]"];
        [v24 logMessage:v16 fromFile:lastPathComponent3 fromFunction:v27 fromLineNumber:967];

        v22 = PLLogCommon(v28);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        v14 = @"{}";
        goto LABEL_22;
      }
    }

    v14 = @"{}";
  }

  return v14;
}

void *__47__PLMetricsFormatterJSON_metricsToStringAsJSON__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  metricsToStringAsJSON_classDebugEnabled = result;
  return result;
}

void *__47__PLMetricsFormatterJSON_metricsToStringAsJSON__block_invoke_436(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  metricsToStringAsJSON_classDebugEnabled_435 = result;
  return result;
}

void *__47__PLMetricsFormatterJSON_metricsToStringAsJSON__block_invoke_445(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  metricsToStringAsJSON_classDebugEnabled_444 = result;
  return result;
}

- (void)printAllMetricsToConsole
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __50__PLMetricsFormatterJSON_printAllMetricsToConsole__block_invoke;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v3;
    if (printAllMetricsToConsole_defaultOnce != -1)
    {
      dispatch_once(&printAllMetricsToConsole_defaultOnce, &block);
    }

    if (printAllMetricsToConsole_classDebugEnabled == 1)
    {
      v4 = MEMORY[0x277CCACA8];
      metricsToStringAsJSON = [(PLMetricsFormatterJSON *)self metricsToStringAsJSON];
      v6 = [v4 stringWithFormat:@"%@", metricsToStringAsJSON, block, v14, v15, v16, v17];

      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLMetricsFormatterJSON.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMetricsFormatterJSON printAllMetricsToConsole]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:978];

      v12 = PLLogCommon(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

void *__50__PLMetricsFormatterJSON_printAllMetricsToConsole__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  printAllMetricsToConsole_classDebugEnabled = result;
  return result;
}

- (void)pruneJSONData
{
  if (![(PLMetricsFormatterJSON *)self testAllMetrics])
  {
    v3 = +[PLUtilities getSessionsAllowlist];
    if (v3)
    {
      allKeys = [(NSMutableDictionary *)self->allMetrics allKeys];
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __39__PLMetricsFormatterJSON_pruneJSONData__block_invoke;
      v5[3] = &unk_279A5D6D8;
      v6 = v3;
      selfCopy = self;
      [allKeys enumerateObjectsUsingBlock:v5];
    }
  }
}

void __39__PLMetricsFormatterJSON_pruneJSONData__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [v4 isEqualToString:@"metrics"];

    if (!v6)
    {
      return;
    }

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = *(*(a1 + 40) + 16);
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __39__PLMetricsFormatterJSON_pruneJSONData__block_invoke_2;
    v12 = &unk_279A5D6B0;
    v13 = *(a1 + 32);
    v14 = v7;
    v4 = v7;
    [v8 enumerateObjectsUsingBlock:&v9];
    [*(*(a1 + 40) + 8) setObject:v4 forKey:{@"metrics", v9, v10, v11, v12}];
  }

  else
  {
    [*(*(a1 + 40) + 8) removeObjectForKey:v4];
  }
}

void __39__PLMetricsFormatterJSON_pruneJSONData__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"metrics"];
  v5 = [PLMetricsFormatterJSON pruneDictionary:v3 withAllowlist:v4];

  [*(a1 + 40) addObject:v5];
}

+ (id)pruneDictionary:(id)dictionary withAllowlist:(id)allowlist
{
  dictionaryCopy = dictionary;
  allowlistCopy = allowlist;
  allKeys = [dictionaryCopy allKeys];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__PLMetricsFormatterJSON_pruneDictionary_withAllowlist___block_invoke;
  v14[3] = &unk_279A5D700;
  v15 = allowlistCopy;
  v9 = dictionaryCopy;
  v16 = v9;
  selfCopy = self;
  v10 = allowlistCopy;
  [allKeys enumerateObjectsUsingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __56__PLMetricsFormatterJSON_pruneDictionary_withAllowlist___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [*(a1 + 32) objectForKeyedSubscript:v15];

  v5 = *(a1 + 40);
  if (v4)
  {
    v6 = [v5 objectForKeyedSubscript:v15];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [*(a1 + 32) objectForKeyedSubscript:v15];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_9;
      }

      v9 = *(a1 + 48);
      v10 = [*(a1 + 40) objectForKeyedSubscript:v15];
      v11 = [v10 mutableCopy];
      v12 = [*(a1 + 32) objectForKeyedSubscript:v15];
      v6 = [v9 pruneDictionary:v11 withAllowlist:v12];

      v13 = [v6 count];
      v14 = *(a1 + 40);
      if (v13)
      {
        [v14 setObject:v6 forKey:v15];
      }

      else
      {
        [v14 removeObjectForKey:v15];
      }
    }
  }

  else
  {
    [v5 removeObjectForKey:v15];
  }

LABEL_9:
  objc_autoreleasePoolPop(v3);
}

- (BOOL)testAllMetrics
{
  if (testAllMetrics_defaultOnce != -1)
  {
    [PLMetricsFormatterJSON testAllMetrics];
  }

  return testAllMetrics_allowMetrics;
}

void __40__PLMetricsFormatterJSON_testAllMetrics__block_invoke()
{
  v0 = [MEMORY[0x277D3F180] objectForKey:@"TestAllMetricsJSON" forApplicationID:@"com.apple.powerlogd" synchronize:1];
  testAllMetrics_allowMetrics = [v0 BOOLValue];
}

- (void)moveLogFile
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_25EE51000, v0, OS_LOG_TYPE_ERROR, "Couldn't move tempSession from %@ using OSAMoveFileForSubmissions", v1, 0xCu);
}

- (void)getFileHandle
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_25EE51000, v1, OS_LOG_TYPE_ERROR, "Couldn't change the permissions of tempSession log at %s. Error: %@", v2, 0x16u);
}

@end