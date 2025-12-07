@interface PowerUIMLWatchPredictor
- (id)getInputFeatures:(double)features events:(id)events pluginBatteryLevel:(unint64_t)level timeFromPlugin:(double)plugin pluginDate:(id)date withLog:(id)log;
@end

@implementation PowerUIMLWatchPredictor

- (id)getInputFeatures:(double)features events:(id)events pluginBatteryLevel:(unint64_t)level timeFromPlugin:(double)plugin pluginDate:(id)date withLog:(id)log
{
  v140 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  dateCopy = date;
  logCopy = log;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v14 = [currentCalendar components:32 fromDate:dateCopy];

  v104 = v14;
  hour = [v14 hour];
  v15 = [PowerUIPredictorHelper events:eventsCopy forHourBin:1 date:dateCopy withMaxDuration:12.0];
  v16 = [PowerUIPredictorHelper events:eventsCopy forHourBin:2 date:dateCopy withMaxDuration:12.0];
  v17 = [PowerUIPredictorHelper events:eventsCopy forHourBin:4 date:dateCopy withMaxDuration:12.0];
  v18 = [PowerUIPredictorHelper events:eventsCopy forHourBin:8 date:dateCopy withMaxDuration:12.0];
  v19 = [PowerUIPredictorHelper events:eventsCopy forHourBin:16 date:dateCopy withMaxDuration:12.0];
  v107 = eventsCopy;
  v20 = [PowerUIPredictorHelper events:eventsCopy forHourBin:24 date:dateCopy withMaxDuration:12.0];
  [PowerUIPredictorHelper standardDeviationOf:v15];
  v22 = v21;
  [PowerUIPredictorHelper standardDeviationOf:v16];
  v24 = v23;
  [PowerUIPredictorHelper standardDeviationOf:v17];
  v26 = v25;
  [PowerUIPredictorHelper standardDeviationOf:v18];
  v28 = v27;
  [PowerUIPredictorHelper standardDeviationOf:v19];
  v30 = v29;
  [PowerUIPredictorHelper standardDeviationOf:v20];
  v32 = v31;
  [PowerUIPredictorHelper medianOf:v15];
  v108 = v33;
  [PowerUIPredictorHelper medianOf:v16];
  v110 = v34;
  [PowerUIPredictorHelper medianOf:v17];
  v112 = v35;
  [PowerUIPredictorHelper medianOf:v18];
  v114 = v36;
  v119 = v19;
  [PowerUIPredictorHelper medianOf:v19];
  v38 = v37;
  [PowerUIPredictorHelper medianOf:v20];
  v40 = v39;
  v41 = logCopy;
  v118 = v15;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = [MEMORY[0x277CCABB0] numberWithDouble:hour];
    [MEMORY[0x277CCABB0] numberWithUnsignedInteger:level];
    v43 = v16;
    v45 = v44 = v20;
    [MEMORY[0x277CCABB0] numberWithDouble:features];
    v47 = v46 = v17;
    [MEMORY[0x277CCABB0] numberWithDouble:plugin];
    v49 = v48 = v18;
    *buf = 138413058;
    v133 = v42;
    v134 = 2112;
    v135 = *&v45;
    v136 = 2112;
    v137 = *&v47;
    v138 = 2112;
    v139 = v49;
    _os_log_impl(&dword_21B766000, v41, OS_LOG_TYPE_DEFAULT, "Model inputs: PluginHour=%@, PluginBatteryLevel=%@, Hour=%@, TimeFromPlugin=%@", buf, 0x2Au);

    v18 = v48;
    v17 = v46;

    v20 = v44;
    v16 = v43;
    v15 = v118;
  }

  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIMLPhonePredictor getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:];
  }

  v50 = v41;
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v51 = [v15 count];
    *buf = 134218496;
    v133 = v51;
    v134 = 2048;
    v135 = v22;
    v136 = 2048;
    v137 = *&v108;
    _os_log_impl(&dword_21B766000, v50, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin1: count %lu, std_dur_1: %f, med_dur_1: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIMLPhonePredictor getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:];
  }

  v52 = v50;
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    v53 = [v16 count];
    *buf = 134218496;
    v133 = v53;
    v134 = 2048;
    v135 = v24;
    v136 = 2048;
    v137 = v110;
    _os_log_impl(&dword_21B766000, v52, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin2: count %lu, std_dur_2: %f, med_dur_2: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIMLPhonePredictor getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:];
  }

  v54 = v52;
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    v55 = [v17 count];
    *buf = 134218496;
    v133 = v55;
    v134 = 2048;
    v135 = v26;
    v136 = 2048;
    v137 = v112;
    _os_log_impl(&dword_21B766000, v54, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin4: count %lu, std_dur_4: %f, med_dur_4: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIMLPhonePredictor getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:];
  }

  v56 = v54;
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    v57 = [v18 count];
    *buf = 134218496;
    v133 = v57;
    v134 = 2048;
    v135 = v28;
    v136 = 2048;
    v137 = v114;
    _os_log_impl(&dword_21B766000, v56, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin8: count %lu, std_dur_8: %f, med_dur_8: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIMLPhonePredictor getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:];
  }

  v58 = v56;
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    v59 = [v119 count];
    *buf = 134218496;
    v133 = v59;
    v134 = 2048;
    v135 = v30;
    v136 = 2048;
    v137 = v38;
    _os_log_impl(&dword_21B766000, v58, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin16: count %lu, std_dur_16: %f, med_dur_16: %lf", buf, 0x20u);
  }

  v106 = dateCopy;

  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIMLPhonePredictor getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:];
  }

  v60 = v58;
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    v61 = [v20 count];
    *buf = 134218496;
    v133 = v61;
    v134 = 2048;
    v135 = v32;
    v136 = 2048;
    v137 = v40;
    _os_log_impl(&dword_21B766000, v60, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin24: count %lu, std_dur_24: %f, med_dur_24: %lf", buf, 0x20u);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v63 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:level];
  [dictionary setObject:v63 forKeyedSubscript:@"plugin_battery_level"];

  v64 = [MEMORY[0x277CCABB0] numberWithDouble:plugin];
  [dictionary setObject:v64 forKeyedSubscript:@"time_from_plugin"];

  v65 = [MEMORY[0x277CCABB0] numberWithDouble:hour];
  [dictionary setObject:v65 forKeyedSubscript:@"hour"];

  v66 = [MEMORY[0x277CCABB0] numberWithDouble:*&v108];
  [dictionary setObject:v66 forKeyedSubscript:@"med_dur_1"];

  v67 = [MEMORY[0x277CCABB0] numberWithDouble:v110];
  [dictionary setObject:v67 forKeyedSubscript:@"med_dur_2"];

  v68 = [MEMORY[0x277CCABB0] numberWithDouble:v112];
  [dictionary setObject:v68 forKeyedSubscript:@"med_dur_4"];

  v69 = [MEMORY[0x277CCABB0] numberWithDouble:v114];
  [dictionary setObject:v69 forKeyedSubscript:@"med_dur_8"];

  v70 = [MEMORY[0x277CCABB0] numberWithDouble:v38];
  [dictionary setObject:v70 forKeyedSubscript:@"med_dur_16"];

  v71 = [MEMORY[0x277CCABB0] numberWithDouble:v40];
  [dictionary setObject:v71 forKeyedSubscript:@"med_dur_24"];

  v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
  [dictionary setObject:v72 forKeyedSubscript:@"cnt_dur_1"];

  v117 = v16;
  v73 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];
  [dictionary setObject:v73 forKeyedSubscript:@"cnt_dur_2"];

  v115 = v17;
  v74 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "count")}];
  [dictionary setObject:v74 forKeyedSubscript:@"cnt_dur_4"];

  v113 = v18;
  v75 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v18, "count")}];
  [dictionary setObject:v75 forKeyedSubscript:@"cnt_dur_8"];

  v76 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v119, "count")}];
  [dictionary setObject:v76 forKeyedSubscript:@"cnt_dur_16"];

  v111 = v20;
  v77 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v20, "count")}];
  [dictionary setObject:v77 forKeyedSubscript:@"cnt_dur_24"];

  v78 = [MEMORY[0x277CCABB0] numberWithDouble:v22];
  [dictionary setObject:v78 forKeyedSubscript:@"std_dur_1"];

  v79 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
  [dictionary setObject:v79 forKeyedSubscript:@"std_dur_2"];

  v80 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
  [dictionary setObject:v80 forKeyedSubscript:@"std_dur_4"];

  v81 = [MEMORY[0x277CCABB0] numberWithDouble:v28];
  [dictionary setObject:v81 forKeyedSubscript:@"std_dur_8"];

  v82 = [MEMORY[0x277CCABB0] numberWithDouble:v30];
  [dictionary setObject:v82 forKeyedSubscript:@"std_dur_16"];

  v83 = [MEMORY[0x277CCABB0] numberWithDouble:v32];
  [dictionary setObject:v83 forKeyedSubscript:@"std_dur_24"];

  v109 = [objc_alloc(MEMORY[0x277CBFED0]) initWithDictionary:dictionary error:0];
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v122 = dictionary;
  allKeys = [dictionary allKeys];
  v85 = [allKeys countByEnumeratingWithState:&v124 objects:v131 count:16];
  if (v85)
  {
    v86 = v85;
    v87 = *v125;
    do
    {
      v88 = 0;
      do
      {
        if (*v125 != v87)
        {
          objc_enumerationMutation(allKeys);
        }

        v89 = *(*(&v124 + 1) + 8 * v88);
        v90 = v60;
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
        {
          v91 = [v122 objectForKeyedSubscript:v89];
          *buf = 138412546;
          v133 = v89;
          v134 = 2112;
          v135 = *&v91;
          _os_log_debug_impl(&dword_21B766000, v90, OS_LOG_TYPE_DEBUG, "input for feature '%@': %@", buf, 0x16u);
        }

        ++v88;
      }

      while (v86 != v88);
      v86 = [allKeys countByEnumeratingWithState:&v124 objects:v131 count:16];
    }

    while (v86);
  }

  [v106 timeIntervalSince1970];
  v93 = floor(v92);
  v129[0] = @"pluginDateAsInterval";
  v94 = [MEMORY[0x277CCABB0] numberWithDouble:v93];
  v130[0] = v94;
  v130[1] = v122;
  v129[1] = @"features";
  v129[2] = @"dataVersion";
  v130[2] = &unk_282D4E218;
  v95 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v130 forKeys:v129 count:3];

  v96 = MEMORY[0x277CBEBC0];
  v128[0] = @"/var/mobile/Library/PowerUI";
  v128[1] = @"obc_features";
  v97 = [MEMORY[0x277CBEA60] arrayWithObjects:v128 count:2];
  v98 = [v96 fileURLWithPathComponents:v97];

  v123 = 0;
  [v95 writeToURL:v98 error:&v123];
  v99 = v123;
  if (v99)
  {
    v100 = v117;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      [PowerUIMLPhonePredictor getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:];
    }
  }

  else
  {
    v101 = v60;
    v100 = v117;
    if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
    {
      v102 = [MEMORY[0x277CCABB0] numberWithDouble:v93];
      *buf = 138412290;
      v133 = v102;
      _os_log_impl(&dword_21B766000, v101, OS_LOG_TYPE_DEFAULT, "Feature dict saved for plugin: %@", buf, 0xCu);
    }
  }

  return v109;
}

@end