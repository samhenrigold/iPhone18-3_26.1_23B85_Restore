@interface PowerUIMLPhonePredictor
- (id)getInputFeatures:(double)features events:(id)events pluginBatteryLevel:(unint64_t)level timeFromPlugin:(double)plugin pluginDate:(id)date withLog:(id)log;
- (id)getMultiArrayForFeatureDict:(id)dict;
@end

@implementation PowerUIMLPhonePredictor

- (id)getInputFeatures:(double)features events:(id)events pluginBatteryLevel:(unint64_t)level timeFromPlugin:(double)plugin pluginDate:(id)date withLog:(id)log
{
  v163 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  logCopy = log;
  eventsCopy = events;
  v12 = [PowerUIPredictorHelper filterEventsSortedByStartDateAscending:eventsCopy startsBefore:dateCopy dynamicallyAroundDate:dateCopy withHourBinWidth:1];
  v13 = [PowerUIPredictorHelper filterEventsSortedByStartDateAscending:eventsCopy startsBefore:dateCopy dynamicallyAroundDate:dateCopy withHourBinWidth:2];
  v14 = [PowerUIPredictorHelper filterEventsSortedByStartDateAscending:eventsCopy startsBefore:dateCopy dynamicallyAroundDate:dateCopy withHourBinWidth:4];
  v15 = [PowerUIPredictorHelper filterEventsSortedByStartDateAscending:eventsCopy startsBefore:dateCopy dynamicallyAroundDate:dateCopy withHourBinWidth:8];
  v16 = [PowerUIPredictorHelper filterEventsSortedByStartDateAscending:eventsCopy startsBefore:dateCopy dynamicallyAroundDate:dateCopy withHourBinWidth:16];
  v17 = [PowerUIPredictorHelper filterEventsSortedByStartDateAscending:eventsCopy startsBefore:dateCopy dynamicallyAroundDate:dateCopy withHourBinWidth:24];

  v18 = [PowerUIPredictorHelper filterEvents:v12 startOnSameWeekdayAs:dateCopy];
  v143 = v13;
  v147 = [PowerUIPredictorHelper filterEvents:v13 startOnSameWeekdayAs:dateCopy];
  v19 = v14;
  v115 = v14;
  v20 = [PowerUIPredictorHelper filterEvents:v14 startOnSameWeekdayAs:dateCopy];
  v146 = [PowerUIPredictorHelper filterEvents:v15 startOnSameWeekdayAs:dateCopy];
  v127 = dateCopy;
  v145 = [PowerUIPredictorHelper filterEvents:v17 startOnSameWeekdayAs:dateCopy];
  v144 = v12;
  v21 = [PowerUIPredictorHelper getDurationsFromEvents:v12 withUnit:3600.0 cappedAt:0.0];
  v22 = [PowerUIPredictorHelper getDurationsFromEvents:v13 withUnit:3600.0 cappedAt:0.0];
  v23 = [PowerUIPredictorHelper getDurationsFromEvents:v19 withUnit:3600.0 cappedAt:0.0];
  v150 = v15;
  v24 = [PowerUIPredictorHelper getDurationsFromEvents:v15 withUnit:3600.0 cappedAt:0.0];
  v149 = v16;
  v25 = [PowerUIPredictorHelper getDurationsFromEvents:v16 withUnit:3600.0 cappedAt:0.0];
  v148 = v17;
  v26 = [PowerUIPredictorHelper getDurationsFromEvents:v17 withUnit:3600.0 cappedAt:0.0];
  v129 = v18;
  v142 = [PowerUIPredictorHelper getDurationsFromEvents:v18 withUnit:3600.0 cappedAt:0.0];
  v141 = [PowerUIPredictorHelper getDurationsFromEvents:v147 withUnit:3600.0 cappedAt:0.0];
  v128 = v20;
  v27 = [PowerUIPredictorHelper getDurationsFromEvents:v20 withUnit:3600.0 cappedAt:0.0];
  v28 = [PowerUIPredictorHelper getDurationsFromEvents:v146 withUnit:3600.0 cappedAt:0.0];
  v29 = [PowerUIPredictorHelper getDurationsFromEvents:v145 withUnit:3600.0 cappedAt:0.0];
  [PowerUIPredictorHelper standardDeviationOf:v21];
  v135 = v30;
  [PowerUIPredictorHelper standardDeviationOf:v22];
  v136 = v31;
  [PowerUIPredictorHelper standardDeviationOf:v23];
  v139 = v32;
  [PowerUIPredictorHelper standardDeviationOf:v24];
  v34 = v33;
  [PowerUIPredictorHelper standardDeviationOf:v25];
  v36 = v35;
  [PowerUIPredictorHelper standardDeviationOf:v26];
  v38 = v37;
  [PowerUIPredictorHelper standardDeviationOf:v27];
  v40 = v39;
  [PowerUIPredictorHelper medianOf:v21];
  v42 = v41;
  v125 = v22;
  [PowerUIPredictorHelper medianOf:v22];
  v130 = v43;
  v124 = v23;
  v44 = v23;
  v45 = v115;
  [PowerUIPredictorHelper medianOf:v44];
  v131 = v46;
  v123 = v24;
  [PowerUIPredictorHelper medianOf:v24];
  v132 = v47;
  v122 = v25;
  [PowerUIPredictorHelper medianOf:v25];
  v133 = v48;
  v121 = v26;
  [PowerUIPredictorHelper medianOf:v26];
  v134 = v49;
  [PowerUIPredictorHelper medianOf:v142];
  v138 = v50;
  [PowerUIPredictorHelper medianOf:v141];
  v140 = v51;
  v120 = v27;
  [PowerUIPredictorHelper medianOf:v27];
  v53 = v52;
  v119 = v28;
  [PowerUIPredictorHelper medianOf:v28];
  v55 = v54;
  v118 = v29;
  [PowerUIPredictorHelper medianOf:v29];
  v57 = v56;
  v58 = logCopy;
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:level];
    v60 = [MEMORY[0x277CCABB0] numberWithDouble:features];
    v61 = [MEMORY[0x277CCABB0] numberWithDouble:plugin];
    *buf = 138412802;
    v158 = *&v59;
    v159 = 2112;
    v160 = *&v60;
    v161 = 2112;
    v162 = *&v61;
    _os_log_impl(&dword_21B766000, v58, OS_LOG_TYPE_DEFAULT, "Model inputs: PluginBatteryLevel=%@, Hour=%@, TimeFromPlugin=%@", buf, 0x20u);

    v45 = v115;
  }

  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIMLPhonePredictor getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:];
  }

  v62 = v58;
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    v63 = [v144 count];
    *buf = 134218496;
    v158 = *&v63;
    v159 = 2048;
    v160 = v135;
    v161 = 2048;
    v162 = v42;
    _os_log_impl(&dword_21B766000, v62, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin1: count %lu, std_dur_1: %f, med_dur_1: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIMLPhonePredictor getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:];
  }

  v64 = v62;
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    v65 = [v143 count];
    *buf = 134218496;
    v158 = *&v65;
    v159 = 2048;
    v160 = v136;
    v161 = 2048;
    v162 = v130;
    _os_log_impl(&dword_21B766000, v64, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin2: count %lu, std_dur_2: %f, med_dur_2: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIMLPhonePredictor getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:];
  }

  v66 = v64;
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
  {
    v67 = [v45 count];
    *buf = 134218496;
    v158 = *&v67;
    v159 = 2048;
    v160 = v139;
    v161 = 2048;
    v162 = v131;
    _os_log_impl(&dword_21B766000, v66, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin4: count %lu, std_dur_4: %f, med_dur_4: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIMLPhonePredictor getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:];
  }

  v68 = v66;
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
  {
    v69 = [v150 count];
    *buf = 134218496;
    v158 = *&v69;
    v159 = 2048;
    v160 = v34;
    v161 = 2048;
    v162 = v132;
    _os_log_impl(&dword_21B766000, v68, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin8: count %lu, std_dur_8: %f, med_dur_8: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIMLPhonePredictor getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:];
  }

  v70 = v68;
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    v71 = [v149 count];
    *buf = 134218496;
    v158 = *&v71;
    v159 = 2048;
    v160 = v36;
    v161 = 2048;
    v162 = v133;
    _os_log_impl(&dword_21B766000, v70, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin16: count %lu, std_dur_16: %f, med_dur_16: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIMLPhonePredictor getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:];
  }

  v72 = v70;
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    v73 = [v148 count];
    *buf = 134218496;
    v158 = *&v73;
    v159 = 2048;
    v160 = v38;
    v161 = 2048;
    v162 = v134;
    _os_log_impl(&dword_21B766000, v72, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin24: count %lu, std_dur_24: %f, med_dur_24: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIMLPhonePredictor getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:];
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v158 = v138;
    _os_log_impl(&dword_21B766000, v72, OS_LOG_TYPE_DEFAULT, "Model inputs for weekday1: weekday_med_dur_1: %lf", buf, 0xCu);
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIMLPhonePredictor getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:];
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v158 = v140;
    _os_log_impl(&dword_21B766000, v72, OS_LOG_TYPE_DEFAULT, "Model inputs for weekday2: weekday_med_dur_2: %lf", buf, 0xCu);
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIMLPhonePredictor getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:];
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v158 = v53;
    v159 = 2048;
    v160 = v40;
    _os_log_impl(&dword_21B766000, v72, OS_LOG_TYPE_DEFAULT, "Model inputs for weekday4: weekday_med_dur_4: %lf, weekday_std_dur_4: %lf", buf, 0x16u);
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIMLPhonePredictor getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:];
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v158 = v55;
    _os_log_impl(&dword_21B766000, v72, OS_LOG_TYPE_DEFAULT, "Model inputs for weekday8: weekday_med_dur_8: %lf", buf, 0xCu);
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIMLPhonePredictor getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:];
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v158 = v57;
    _os_log_impl(&dword_21B766000, v72, OS_LOG_TYPE_DEFAULT, "Model inputs for weekday24: weekday_med_dur_24: %lf", buf, 0xCu);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v75 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:level];
  [dictionary setObject:v75 forKeyedSubscript:@"plugin_battery_level"];

  v76 = [MEMORY[0x277CCABB0] numberWithDouble:plugin];
  [dictionary setObject:v76 forKeyedSubscript:@"time_from_plugin"];

  v77 = [MEMORY[0x277CCABB0] numberWithDouble:v42];
  [dictionary setObject:v77 forKeyedSubscript:@"med_dur_1"];

  v78 = [MEMORY[0x277CCABB0] numberWithDouble:v130];
  [dictionary setObject:v78 forKeyedSubscript:@"med_dur_2"];

  v79 = [MEMORY[0x277CCABB0] numberWithDouble:v131];
  [dictionary setObject:v79 forKeyedSubscript:@"med_dur_4"];

  v80 = [MEMORY[0x277CCABB0] numberWithDouble:v132];
  [dictionary setObject:v80 forKeyedSubscript:@"med_dur_8"];

  v81 = [MEMORY[0x277CCABB0] numberWithDouble:v133];
  [dictionary setObject:v81 forKeyedSubscript:@"med_dur_16"];

  v82 = [MEMORY[0x277CCABB0] numberWithDouble:v134];
  [dictionary setObject:v82 forKeyedSubscript:@"med_dur_24"];

  v83 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v144, "count")}];
  [dictionary setObject:v83 forKeyedSubscript:@"cnt_dur_1"];

  v84 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v143, "count")}];
  [dictionary setObject:v84 forKeyedSubscript:@"cnt_dur_2"];

  v85 = v45;
  v86 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v45, "count")}];
  [dictionary setObject:v86 forKeyedSubscript:@"cnt_dur_4"];

  v87 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v150, "count")}];
  [dictionary setObject:v87 forKeyedSubscript:@"cnt_dur_8"];

  v88 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v149, "count")}];
  [dictionary setObject:v88 forKeyedSubscript:@"cnt_dur_16"];

  v89 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v148, "count")}];
  [dictionary setObject:v89 forKeyedSubscript:@"cnt_dur_24"];

  v90 = [MEMORY[0x277CCABB0] numberWithDouble:v135];
  [dictionary setObject:v90 forKeyedSubscript:@"std_dur_1"];

  v91 = [MEMORY[0x277CCABB0] numberWithDouble:v136];
  [dictionary setObject:v91 forKeyedSubscript:@"std_dur_2"];

  v92 = [MEMORY[0x277CCABB0] numberWithDouble:v139];
  [dictionary setObject:v92 forKeyedSubscript:@"std_dur_4"];

  v93 = [MEMORY[0x277CCABB0] numberWithDouble:v34];
  [dictionary setObject:v93 forKeyedSubscript:@"std_dur_8"];

  v94 = [MEMORY[0x277CCABB0] numberWithDouble:v36];
  [dictionary setObject:v94 forKeyedSubscript:@"std_dur_16"];

  v95 = [MEMORY[0x277CCABB0] numberWithDouble:v38];
  [dictionary setObject:v95 forKeyedSubscript:@"std_dur_24"];

  v96 = [MEMORY[0x277CCABB0] numberWithDouble:v138];
  [dictionary setObject:v96 forKeyedSubscript:@"weekday_med_dur_1"];

  v97 = [MEMORY[0x277CCABB0] numberWithDouble:v140];
  [dictionary setObject:v97 forKeyedSubscript:@"weekday_med_dur_2"];

  v98 = [MEMORY[0x277CCABB0] numberWithDouble:v53];
  [dictionary setObject:v98 forKeyedSubscript:@"weekday_med_dur_4"];

  v99 = [MEMORY[0x277CCABB0] numberWithDouble:v55];
  [dictionary setObject:v99 forKeyedSubscript:@"weekday_med_dur_8"];

  v100 = [MEMORY[0x277CCABB0] numberWithDouble:v57];
  [dictionary setObject:v100 forKeyedSubscript:@"weekday_med_dur_24"];

  v101 = [MEMORY[0x277CCABB0] numberWithDouble:v40];
  [dictionary setObject:v101 forKeyedSubscript:@"weekday_std_dur_4"];

  v102 = [objc_alloc(MEMORY[0x277CBFED0]) initWithDictionary:dictionary error:0];
  [v127 timeIntervalSince1970];
  v104 = floor(v103);
  v155[0] = @"pluginDateAsInterval";
  v105 = [MEMORY[0x277CCABB0] numberWithDouble:v104];
  v156[0] = v105;
  v156[1] = dictionary;
  v155[1] = @"features";
  v155[2] = @"dataVersion";
  v156[2] = &unk_282D4E140;
  v106 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v156 forKeys:v155 count:3];

  v107 = MEMORY[0x277CBEBC0];
  v154[0] = @"/var/mobile/Library/PowerUI";
  v154[1] = @"obc_features";
  v108 = [MEMORY[0x277CBEA60] arrayWithObjects:v154 count:2];
  v109 = [v107 fileURLWithPathComponents:v108];

  v153 = 0;
  [v106 writeToURL:v109 error:&v153];
  v110 = v153;
  if (v110)
  {
    v152.receiver = self;
    v152.super_class = PowerUIMLPhonePredictor;
    v111 = [(PowerUIMLTwoStageModelPredictor *)&v152 log];
    if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
    {
      [PowerUIMLPhonePredictor getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:];
    }
  }

  else
  {
    v151.receiver = self;
    v151.super_class = PowerUIMLPhonePredictor;
    v111 = [(PowerUIMLTwoStageModelPredictor *)&v151 log];
    if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
    {
      v112 = [MEMORY[0x277CCABB0] numberWithDouble:v104];
      *buf = 138412290;
      v158 = *&v112;
      _os_log_impl(&dword_21B766000, v111, OS_LOG_TYPE_DEFAULT, "Feature dict saved for plugin: %@", buf, 0xCu);
    }
  }

  return v102;
}

- (id)getMultiArrayForFeatureDict:(id)dict
{
  v31 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  array = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [&unk_282D4EA10 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (!v5)
  {
    goto LABEL_15;
  }

  v7 = v5;
  v8 = array;
  v20 = 0;
  v9 = *v25;
  *&v6 = 138412290;
  v19 = v6;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v25 != v9)
      {
        objc_enumerationMutation(&unk_282D4EA10);
      }

      v11 = *(*(&v24 + 1) + 8 * i);
      v12 = MEMORY[0x277CCABB0];
      v13 = [dictCopy objectForKeyedSubscript:{v11, v19}];
      [v13 doubleValue];
      v14 = [v12 numberWithDouble:?];

      if (v14)
      {
        [v8 addObject:v14];
      }

      else
      {
        v23.receiver = self;
        v23.super_class = PowerUIMLPhonePredictor;
        v15 = [(PowerUIMLTwoStageModelPredictor *)&v23 log];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = v19;
          v29 = v11;
          _os_log_error_impl(&dword_21B766000, v15, OS_LOG_TYPE_ERROR, "Error: feature value for key '%@' is nil", buf, 0xCu);
        }

        v20 = 1;
      }
    }

    v7 = [&unk_282D4EA10 countByEnumeratingWithState:&v24 objects:v30 count:16];
  }

  while (v7);
  array = v8;
  if (v20)
  {
    v16 = 0;
  }

  else
  {
LABEL_15:
    v17 = [MEMORY[0x277CBEA60] arrayWithArray:array];
    v22.receiver = self;
    v22.super_class = PowerUIMLPhonePredictor;
    v16 = [(PowerUIMLTwoStageModelPredictor *)&v22 arrayWithShape:&unk_282D4EA28 values:v17 type:65568];
  }

  return v16;
}

- (void)getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:.cold.12()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_21B766000, v0, OS_LOG_TYPE_ERROR, "Error saving latest features: %@", v1, 0xCu);
}

@end