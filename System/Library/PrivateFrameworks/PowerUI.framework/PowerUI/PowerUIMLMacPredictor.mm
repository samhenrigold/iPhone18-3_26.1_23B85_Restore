@interface PowerUIMLMacPredictor
- (id)getInputFeatures:(double)features events:(id)events pluginBatteryLevel:(unint64_t)level timeFromPlugin:(double)plugin pluginDate:(id)date withLog:(id)log;
@end

@implementation PowerUIMLMacPredictor

- (id)getInputFeatures:(double)features events:(id)events pluginBatteryLevel:(unint64_t)level timeFromPlugin:(double)plugin pluginDate:(id)date withLog:(id)log
{
  v125 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  dateCopy = date;
  logCopy = log;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v110 = [currentCalendar components:96 fromDate:dateCopy];

  hour = [v110 hour];
  v16 = 0.0;
  v17 = [PowerUIPredictorHelper events:eventsCopy forHourBin:1 date:dateCopy withMaxDuration:0.0];
  v18 = [PowerUIPredictorHelper events:eventsCopy forHourBin:2 date:dateCopy withMaxDuration:0.0];
  v19 = [PowerUIPredictorHelper events:eventsCopy forHourBin:4 date:dateCopy withMaxDuration:0.0];
  v20 = [PowerUIPredictorHelper events:eventsCopy forHourBin:8 date:dateCopy withMaxDuration:0.0];
  v21 = [PowerUIPredictorHelper events:eventsCopy forHourBin:16 date:dateCopy withMaxDuration:0.0];
  v22 = [PowerUIPredictorHelper events:eventsCopy forHourBin:24 date:dateCopy withMaxDuration:0.0];
  [PowerUIPredictorHelper standardDeviationOf:v17];
  v94 = v23;
  [PowerUIPredictorHelper standardDeviationOf:v18];
  v95 = v24;
  [PowerUIPredictorHelper standardDeviationOf:v19];
  v96 = v25;
  [PowerUIPredictorHelper standardDeviationOf:v20];
  v97 = v26;
  [PowerUIPredictorHelper standardDeviationOf:v21];
  v98 = v27;
  [PowerUIPredictorHelper standardDeviationOf:v22];
  v111 = v28;
  v104 = v17;
  [PowerUIPredictorHelper medianOf:v17];
  v30 = v29;
  v109 = v18;
  [PowerUIPredictorHelper medianOf:v18];
  v32 = v31;
  v103 = v19;
  [PowerUIPredictorHelper medianOf:v19];
  v34 = v33;
  v102 = v20;
  [PowerUIPredictorHelper medianOf:v20];
  v36 = v35;
  v101 = v21;
  [PowerUIPredictorHelper medianOf:v21];
  v38 = v37;
  v108 = v22;
  [PowerUIPredictorHelper medianOf:v22];
  v93 = v39;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:level];
  [dictionary setObject:v41 forKeyedSubscript:@"plugin_battery_level"];

  v42 = [MEMORY[0x277CCABB0] numberWithDouble:hour];
  [dictionary setObject:v42 forKeyedSubscript:@"hour"];

  v43 = MEMORY[0x277CCABB0];
  lastObject = [eventsCopy lastObject];
  endDate = [lastObject endDate];
  lastObject2 = [eventsCopy lastObject];
  startDate = [lastObject2 startDate];
  [endDate timeIntervalSinceDate:startDate];
  v49 = [v43 numberWithDouble:v48 / 3600.0];
  [dictionary setObject:v49 forKeyedSubscript:@"prev_charge_duration_1"];

  v105 = dateCopy;
  v107 = eventsCopy;
  v50 = [PowerUIPredictorHelper getUsageBucketsForEvents:eventsCopy forDate:dateCopy withLog:logCopy];
  +[PowerUIPredictorHelper hoursUntilUseFromBucketedUsage:withCurrentHour:withComponentsMinutes:](PowerUIPredictorHelper, "hoursUntilUseFromBucketedUsage:withCurrentHour:withComponentsMinutes:", v50, features, [v110 minute]);
  v51 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [dictionary setObject:v51 forKeyedSubscript:@"hours_until_use"];

  v52 = 0;
  do
  {
    v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"hour_plus_%d", v52];
    v54 = (v16 + features);
    if (v54 > 23)
    {
      v54 -= 24;
    }

    v55 = MEMORY[0x277CCABB0];
    v56 = [v50 objectAtIndexedSubscript:v54];
    [v56 doubleValue];
    v57 = [v55 numberWithDouble:?];
    [dictionary setObject:v57 forKeyedSubscript:v53];

    v16 = v16 + 1.0;
    v52 = (v52 + 1);
  }

  while (v52 != 6);
  v100 = v50;
  v58 = [MEMORY[0x277CCABB0] numberWithDouble:v30];
  [dictionary setObject:v58 forKeyedSubscript:@"med_dur_1"];

  v59 = [MEMORY[0x277CCABB0] numberWithDouble:v32];
  [dictionary setObject:v59 forKeyedSubscript:@"med_dur_2"];

  v60 = [MEMORY[0x277CCABB0] numberWithDouble:v34];
  [dictionary setObject:v60 forKeyedSubscript:@"med_dur_4"];

  v61 = [MEMORY[0x277CCABB0] numberWithDouble:v36];
  [dictionary setObject:v61 forKeyedSubscript:@"med_dur_8"];

  v62 = [MEMORY[0x277CCABB0] numberWithDouble:v38];
  [dictionary setObject:v62 forKeyedSubscript:@"med_dur_16"];

  v63 = [MEMORY[0x277CCABB0] numberWithDouble:v93];
  [dictionary setObject:v63 forKeyedSubscript:@"med_dur_24"];

  v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v109, "count")}];
  [dictionary setObject:v64 forKeyedSubscript:@"cnt_dur_2"];

  v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v108, "count")}];
  [dictionary setObject:v65 forKeyedSubscript:@"cnt_dur_24"];

  v66 = [MEMORY[0x277CCABB0] numberWithDouble:v94];
  [dictionary setObject:v66 forKeyedSubscript:@"std_dur_1"];

  v67 = [MEMORY[0x277CCABB0] numberWithDouble:v95];
  [dictionary setObject:v67 forKeyedSubscript:@"std_dur_2"];

  v68 = [MEMORY[0x277CCABB0] numberWithDouble:v96];
  [dictionary setObject:v68 forKeyedSubscript:@"std_dur_4"];

  v69 = [MEMORY[0x277CCABB0] numberWithDouble:v97];
  [dictionary setObject:v69 forKeyedSubscript:@"std_dur_8"];

  v70 = [MEMORY[0x277CCABB0] numberWithDouble:*&v98];
  [dictionary setObject:v70 forKeyedSubscript:@"std_dur_16"];

  v71 = [MEMORY[0x277CCABB0] numberWithDouble:v111];
  [dictionary setObject:v71 forKeyedSubscript:@"std_dur_24"];

  v99 = [objc_alloc(MEMORY[0x277CBFED0]) initWithDictionary:dictionary error:0];
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v72 = dictionary;
  allKeys = [dictionary allKeys];
  v74 = [allKeys countByEnumeratingWithState:&v113 objects:v124 count:16];
  if (v74)
  {
    v75 = v74;
    v76 = *v114;
    do
    {
      v77 = 0;
      do
      {
        if (*v114 != v76)
        {
          objc_enumerationMutation(allKeys);
        }

        v78 = *(*(&v113 + 1) + 8 * v77);
        v79 = logCopy;
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
        {
          v80 = [v72 objectForKeyedSubscript:v78];
          *buf = 138412546;
          v121 = v78;
          v122 = 2112;
          v123 = v80;
          _os_log_debug_impl(&dword_21B766000, v79, OS_LOG_TYPE_DEBUG, "input for feature '%@': %@", buf, 0x16u);
        }

        ++v77;
      }

      while (v75 != v77);
      v75 = [allKeys countByEnumeratingWithState:&v113 objects:v124 count:16];
    }

    while (v75);
  }

  [v105 timeIntervalSince1970];
  v82 = floor(v81);
  v118[0] = @"pluginDateAsInterval";
  v83 = [MEMORY[0x277CCABB0] numberWithDouble:v82];
  v119[0] = v83;
  v119[1] = v72;
  v84 = v72;
  v118[1] = @"features";
  v118[2] = @"dataVersion";
  v119[2] = &unk_282D4E188;
  v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v119 forKeys:v118 count:3];

  v86 = MEMORY[0x277CBEBC0];
  v117[0] = @"/var/mobile/Library/PowerUI";
  v117[1] = @"obc_features";
  v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v117 count:2];
  v88 = [v86 fileURLWithPathComponents:v87];

  v112 = 0;
  [v85 writeToURL:v88 error:&v112];
  v89 = v112;
  if (v89)
  {
    if (os_log_type_enabled(logCopy, OS_LOG_TYPE_ERROR))
    {
      [PowerUIMLMacPredictor getInputFeatures:v89 events:logCopy pluginBatteryLevel:? timeFromPlugin:? pluginDate:? withLog:?];
    }
  }

  else
  {
    v90 = logCopy;
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      v91 = [MEMORY[0x277CCABB0] numberWithDouble:v82];
      *buf = 138412290;
      v121 = v91;
      _os_log_impl(&dword_21B766000, v90, OS_LOG_TYPE_DEFAULT, "Feature dict saved for plugin: %@", buf, 0xCu);
    }
  }

  return v99;
}

- (void)getInputFeatures:(uint64_t)a1 events:(NSObject *)a2 pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21B766000, a2, OS_LOG_TYPE_ERROR, "Error saving latest features: %@", &v2, 0xCu);
}

@end