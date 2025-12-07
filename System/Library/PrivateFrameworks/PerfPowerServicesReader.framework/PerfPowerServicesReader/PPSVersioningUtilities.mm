@interface PPSVersioningUtilities
+ (id)_groupMetricsByBuild:(id)build withFilepath:(id)filepath;
+ (id)buildEventsWithFilepath:(id)filepath;
+ (id)timelineWithFilepath:(id)filepath andMetrics:(id)metrics;
@end

@implementation PPSVersioningUtilities

+ (id)buildEventsWithFilepath:(id)filepath
{
  filepathCopy = filepath;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__PPSVersioningUtilities_buildEventsWithFilepath___block_invoke;
  block[3] = &unk_279A11428;
  v10 = filepathCopy;
  v4 = buildEventsWithFilepath__onceToken;
  v5 = filepathCopy;
  if (v4 != -1)
  {
    dispatch_once(&buildEventsWithFilepath__onceToken, block);
  }

  v6 = buildEventsWithFilepath__result;
  v7 = buildEventsWithFilepath__result;

  return v6;
}

void __50__PPSVersioningUtilities_buildEventsWithFilepath___block_invoke(uint64_t a1)
{
  v2 = PPSReaderLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __50__PPSVersioningUtilities_buildEventsWithFilepath___block_invoke_cold_1();
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = @"Build";
    v5 = [PPSOffDeviceIngesterUtilities metricDefinitionForFilepath:*(a1 + 32) subsystem:@"ConfigMetrics" category:@"DeviceConfig" metricName:@"Build"];
    if (v5)
    {
LABEL_11:
      v7 = v5;
      v8 = *(a1 + 32);
      goto LABEL_14;
    }
  }

  else
  {
    v4 = @"Build";
    v5 = [PPSOnDeviceIngesterUtilities metricDefinitionForSubsystem:@"ConfigMetrics" category:@"DeviceConfig" metricName:@"Build"];
    if (v5)
    {
      goto LABEL_13;
    }
  }

  v6 = PPSReaderLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __50__PPSVersioningUtilities_buildEventsWithFilepath___block_invoke_cold_2();
  }

  if (v3)
  {
    v4 = @"build";
    v5 = [PPSOffDeviceIngesterUtilities metricDefinitionForFilepath:*(a1 + 32) subsystem:@"PPTStorageOperator" category:@"Config" metricName:@"build"];
    goto LABEL_11;
  }

  v4 = @"build";
  v5 = [PPSOnDeviceIngesterUtilities metricDefinitionForSubsystem:@"PPTStorageOperator" category:@"Config" metricName:@"build"];
LABEL_13:
  v7 = v5;
  v8 = [PPSOnDeviceIngesterUtilities filepathForMetricDefinition:v5];
LABEL_14:
  v9 = v8;
  v10 = [PPSDataIngesterCommonUtilities dataSourceForMetricDefinition:v7];
  if (v7)
  {
LABEL_20:
    v15 = [PPSDataIngesterRegistry dataIngesterForFilepath:v9 requestType:0];
    v16 = [MEMORY[0x277CBEB98] setWithObject:v4];
    v17 = [[PPSTimeSeriesRequest alloc] initWithMetrics:v16 predicate:0 timeFilter:0 limitCount:0 offsetCount:0 readDirection:1];
    v24 = 0;
    v18 = [v15 parseDataForRequest:v17 outError:&v24];
    v19 = v24;
    v20 = buildEventsWithFilepath__result;
    buildEventsWithFilepath__result = v18;

    v22 = PPSReaderLog(v21);
    v23 = v22;
    if (v19)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        __50__PPSVersioningUtilities_buildEventsWithFilepath___block_invoke_cold_3();
      }
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      __50__PPSVersioningUtilities_buildEventsWithFilepath___block_invoke_cold_4(v23);
    }

    goto LABEL_26;
  }

  v11 = [PPSDataIngesterCommonUtilities fileTypeForFilepath:v9];
  if (v11 == 2)
  {
    v12 = @"PPTStorageOperator";
    v13 = @"Config_1095_1";
    goto LABEL_19;
  }

  if (v11 == 1)
  {
    v12 = @"PLConfigAgent";
    v13 = @"EventNone_Config";
LABEL_19:
    v14 = [PPSOffDeviceIngesterUtilities dataSourceForFilepath:v9 subsystem:v12 category:v13];

    v10 = v14;
    goto LABEL_20;
  }

  v15 = PPSReaderLog(v11);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    __50__PPSVersioningUtilities_buildEventsWithFilepath___block_invoke_cold_5();
  }

LABEL_26:
}

+ (id)timelineWithFilepath:(id)filepath andMetrics:(id)metrics
{
  v40 = *MEMORY[0x277D85DE8];
  filepathCopy = filepath;
  metricsCopy = metrics;
  v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (self)
  {
    v30 = metricsCopy;
    v33 = [PPSVersioningUtilities _groupMetricsByBuild:metricsCopy withFilepath:filepathCopy];
    allKeys = [v33 allKeys];
    v9 = [allKeys sortedArrayUsingSelector:sel_compare_];

    v31 = filepathCopy;
    v10 = [PPSTimestampConverterRegistry converterForFilepath:filepathCopy];
    v11 = MEMORY[0x277CCABB0];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v28 = v10;
    [v10 monotonicTimeFromEpochTime:?];
    v13 = [v11 numberWithDouble:?];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v29 = v9;
    obj = [v9 reverseObjectEnumerator];
    v14 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v36;
      do
      {
        v17 = 0;
        v18 = v13;
        do
        {
          if (*v36 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v35 + 1) + 8 * v17);
          v20 = [v33 objectForKeyedSubscript:v19];
          v21 = objc_alloc(MEMORY[0x277CCA970]);
          v22 = MEMORY[0x277CBEAA8];
          [v19 doubleValue];
          v23 = [v22 dateWithTimeIntervalSince1970:?];
          v24 = MEMORY[0x277CBEAA8];
          [v18 doubleValue];
          v25 = [v24 dateWithTimeIntervalSince1970:?];
          v26 = [v21 initWithStartDate:v23 endDate:v25];

          [v34 setObject:v20 forKeyedSubscript:v26];
          v13 = v19;

          ++v17;
          v18 = v13;
        }

        while (v15 != v17);
        v15 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v15);
    }

    metricsCopy = v30;
    filepathCopy = v31;
  }

  return v34;
}

+ (id)_groupMetricsByBuild:(id)build withFilepath:(id)filepath
{
  v69 = *MEMORY[0x277D85DE8];
  buildCopy = build;
  filepathCopy = filepath;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = buildCopy;
  v48 = [obj countByEnumeratingWithState:&v57 objects:v68 count:16];
  if (v48)
  {
    v47 = *v58;
    v50 = filepathCopy;
    do
    {
      v9 = 0;
      do
      {
        if (*v58 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v49 = v9;
        v10 = *(*(&v57 + 1) + 8 * v9);
        subsystem = [v10 subsystem];
        category = [v10 category];
        name = [v10 name];
        if (filepathCopy)
        {
          [PPSOffDeviceIngesterUtilities metricDefinitionHistoryForFilepath:filepathCopy subsystem:subsystem category:category metricName:name];
        }

        else
        {
          [PPSOnDeviceIngesterUtilities metricDefinitionHistoryForSubsystem:subsystem category:category metricName:name];
        }
        v14 = ;

        v16 = v14;
        if (v14)
        {
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v51 = v14;
          v17 = [v51 countByEnumeratingWithState:&v53 objects:v63 count:16];
          if (v17)
          {
            v18 = v17;
            v46 = v14;
            v52 = *v54;
            while (1)
            {
              v19 = 0;
              do
              {
                if (*v54 != v52)
                {
                  objc_enumerationMutation(v51);
                }

                v20 = *(*(&v53 + 1) + 8 * v19);
                build = [v20 build];
                v22 = [dictionary2 objectForKeyedSubscript:build];

                if (v22)
                {
                  goto LABEL_20;
                }

                v23 = MEMORY[0x277CCAC30];
                build2 = [v20 build];
                build3 = [v20 build];
                v26 = [v23 predicateWithFormat:@"(build == %@ OR Build == %@)", build2, build3];

                v27 = [PPSVersioningUtilities buildEventsWithFilepath:v50];
                v28 = [v27 filteredTimeSeriesUsingPredicate:v26];

                v29 = MEMORY[0x277CCABB0];
                firstObject = [v28 firstObject];
                [firstObject monotonicTimestamp];
                name2 = [v29 numberWithDouble:?];

                v33 = PPSReaderLog(v32);
                v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG);
                if (name2)
                {
                  if (v34)
                  {
                    build4 = [v20 build];
                    *buf = 138412546;
                    v65 = build4;
                    v66 = 2112;
                    v67 = name2;
                    _os_log_debug_impl(&dword_25E225000, v33, OS_LOG_TYPE_DEBUG, "Found build timestamp for build '%@': '%@'", buf, 0x16u);
                  }

                  build5 = [v20 build];
                  [dictionary2 setObject:name2 forKey:build5];

LABEL_20:
                  build6 = [v20 build];
                  v26 = [dictionary2 objectForKeyedSubscript:build6];

                  v37 = [dictionary objectForKeyedSubscript:v26];

                  if (!v37)
                  {
                    v38 = objc_opt_new();
                    [dictionary setObject:v38 forKeyedSubscript:v26];
                  }

                  v28 = [dictionary objectForKeyedSubscript:v26];
                  name2 = [v20 name];
                  [v28 setObject:v20 forKeyedSubscript:name2];
                  goto LABEL_23;
                }

                if (v34)
                {
                  [(PPSVersioningUtilities *)v61 _groupMetricsByBuild:v20 withFilepath:&v62, v33];
                }

LABEL_23:
                ++v19;
              }

              while (v18 != v19);
              v40 = [v51 countByEnumeratingWithState:&v53 objects:v63 count:16];
              v18 = v40;
              if (!v40)
              {
                filepathCopy = v50;
                v16 = v46;
                goto LABEL_33;
              }
            }
          }

          filepathCopy = v50;
        }

        else
        {
          v51 = PPSReaderLog(v15);
          filepathCopy = v50;
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            subsystem2 = [v10 subsystem];
            category2 = [v10 category];
            *buf = 138412546;
            v65 = subsystem2;
            v66 = 2112;
            v67 = category2;
            _os_log_error_impl(&dword_25E225000, v51, OS_LOG_TYPE_ERROR, "No metric history found for '%@::%@'", buf, 0x16u);
          }
        }

LABEL_33:

        v9 = v49 + 1;
      }

      while (v49 + 1 != v48);
      v48 = [obj countByEnumeratingWithState:&v57 objects:v68 count:16];
    }

    while (v48);
  }

  v43 = [dictionary copy];

  return v43;
}

void __50__PPSVersioningUtilities_buildEventsWithFilepath___block_invoke_cold_4(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = buildEventsWithFilepath__result;
  _os_log_debug_impl(&dword_25E225000, log, OS_LOG_TYPE_DEBUG, "Successfully read build events = %@", &v1, 0xCu);
}

+ (void)_groupMetricsByBuild:(void *)a3 withFilepath:(NSObject *)a4 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 build];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_25E225000, a4, OS_LOG_TYPE_DEBUG, "Failed to find timestamp for build '%@', skipping...", a1, 0xCu);
}

@end