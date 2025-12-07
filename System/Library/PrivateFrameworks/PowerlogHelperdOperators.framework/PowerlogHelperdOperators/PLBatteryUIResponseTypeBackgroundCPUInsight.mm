@interface PLBatteryUIResponseTypeBackgroundCPUInsight
- (id)result;
- (void)run;
@end

@implementation PLBatteryUIResponseTypeBackgroundCPUInsight

- (void)run
{
  selfCopy = self;
  v101 = *MEMORY[0x277D85DE8];
  batteryBreakdown_Last10Days = [(PLBatteryUIResponseTypeBackgroundCPUInsight *)self batteryBreakdown_Last10Days];

  if (batteryBreakdown_Last10Days)
  {
LABEL_4:
    batteryBreakdown_Last10Days2 = [(PLBatteryUIResponseTypeBackgroundCPUInsight *)selfCopy batteryBreakdown_Last10Days];

    v15 = PLLogCommon(v14);
    perAppUsage6 = v15;
    if (batteryBreakdown_Last10Days2)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [(PLBatteryUIResponseTypeBackgroundCPUInsight *)perAppUsage6 run];
      }

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [(PLBatteryUIResponseTypeBackgroundCPUInsight *)selfCopy setPerAppUsage:dictionary];

      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      obj = [(PLBatteryUIResponseTypeBackgroundCPUInsight *)selfCopy batteryBreakdown_Last10Days];
      v17 = [obj countByEnumeratingWithState:&v90 objects:v100 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v91;
        v76 = *v91;
        do
        {
          v20 = 0;
          v77 = v18;
          do
          {
            if (*v91 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v90 + 1) + 8 * v20);
            v22 = [v21 objectForKeyedSubscript:{@"PLBatteryUITotalEnergyKey", v76}];
            [v22 doubleValue];
            v24 = v23;

            if (v24 != 0.0)
            {
              v88 = 0u;
              v89 = 0u;
              v86 = 0u;
              v87 = 0u;
              v25 = [v21 objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
              v26 = [v25 countByEnumeratingWithState:&v86 objects:v99 count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v87;
                v79 = *v87;
                v80 = v25;
                do
                {
                  for (i = 0; i != v27; ++i)
                  {
                    if (*v87 != v28)
                    {
                      objc_enumerationMutation(v25);
                    }

                    v30 = *(*(&v86 + 1) + 8 * i);
                    v31 = [v30 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
                    [v31 doubleValue];
                    v33 = v32;

                    if (v33 <= 0.0)
                    {
                      v34 = [v30 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                      v35 = [v30 objectForKeyedSubscript:@"PLBatteryUIAppEnergyUsedKey"];
                      [v35 doubleValue];
                      v37 = v36;

                      if (v37 > 500.0)
                      {
                        perAppUsage = [(PLBatteryUIResponseTypeBackgroundCPUInsight *)selfCopy perAppUsage];
                        v39 = [v30 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                        v40 = [perAppUsage objectForKeyedSubscript:v39];
                        [v40 objectForKeyedSubscript:@"PLBatteryUISuggestionEnergyKey"];
                        v42 = v41 = selfCopy;
                        [v42 doubleValue];
                        v44 = v43;

                        v45 = [v30 objectForKeyedSubscript:@"PLBatteryUIAppEnergyUsedKey"];
                        [v45 doubleValue];
                        v47 = v46;

                        v48 = v44 + v47;
                        dictionary2 = [MEMORY[0x277CBEB38] dictionary];
                        v50 = [v30 objectForKeyedSubscript:@"PLBatteryUIAppNameKey"];
                        [dictionary2 setObject:v50 forKeyedSubscript:@"PLBatteryUIInsightAppNameKey"];

                        [dictionary2 setObject:v34 forKeyedSubscript:@"PLBatteryUIInsightBundleIDKey"];
                        v51 = [MEMORY[0x277CCABB0] numberWithDouble:v48];
                        [dictionary2 setObject:v51 forKeyedSubscript:@"PLBatteryUISuggestionEnergyKey"];

                        v53 = PLLogCommon(v52);
                        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
                        {
                          v56 = [v30 objectForKeyedSubscript:@"PLBatteryUIAppNameKey"];
                          *buf = 138412546;
                          v96 = v56;
                          v97 = 2048;
                          v98 = v48;
                          _os_log_debug_impl(&dword_25EE51000, v53, OS_LOG_TYPE_DEBUG, "Background CPU Insight: %@ has %f energy", buf, 0x16u);
                        }

                        perAppUsage2 = [(PLBatteryUIResponseTypeBackgroundCPUInsight *)v41 perAppUsage];
                        v55 = [v30 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                        [perAppUsage2 setObject:dictionary2 forKeyedSubscript:v55];

                        selfCopy = v41;
                        v28 = v79;
                        v25 = v80;
                      }
                    }
                  }

                  v27 = [v25 countByEnumeratingWithState:&v86 objects:v99 count:16];
                }

                while (v27);
              }

              v19 = v76;
              v18 = v77;
            }

            ++v20;
          }

          while (v20 != v18);
          v18 = [obj countByEnumeratingWithState:&v90 objects:v100 count:16];
        }

        while (v18);
      }

      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      perAppUsage3 = [(PLBatteryUIResponseTypeBackgroundCPUInsight *)selfCopy perAppUsage];
      v57 = [perAppUsage3 countByEnumeratingWithState:&v82 objects:v94 count:16];
      if (v57)
      {
        v58 = v57;
        v59 = *v83;
        do
        {
          for (j = 0; j != v58; ++j)
          {
            if (*v83 != v59)
            {
              objc_enumerationMutation(perAppUsage3);
            }

            v61 = *(*(&v82 + 1) + 8 * j);
            perAppUsage4 = [(PLBatteryUIResponseTypeBackgroundCPUInsight *)selfCopy perAppUsage];
            v63 = [perAppUsage4 objectForKeyedSubscript:v61];
            [v63 objectForKeyedSubscript:@"PLBatteryUISuggestionEnergyKey"];
            v65 = v64 = selfCopy;
            [v65 doubleValue];
            v67 = v66 * 100.0;
            +[PLUtilities defaultBatteryEnergyCapacity];
            v69 = v67 / v68;

            v70 = MEMORY[0x277CCABB0];
            batteryBreakdown_Last10Days3 = [(PLBatteryUIResponseTypeBackgroundCPUInsight *)v64 batteryBreakdown_Last10Days];
            v72 = [v70 numberWithDouble:{v69 / objc_msgSend(batteryBreakdown_Last10Days3, "count")}];
            perAppUsage5 = [(PLBatteryUIResponseTypeBackgroundCPUInsight *)v64 perAppUsage];
            v74 = [perAppUsage5 objectForKeyedSubscript:v61];
            [v74 setObject:v72 forKeyedSubscript:@"PLBatteryUISuggestionPercentKey"];

            selfCopy = v64;
          }

          v58 = [perAppUsage3 countByEnumeratingWithState:&v82 objects:v94 count:16];
        }

        while (v58);
      }

      perAppUsage6 = [(PLBatteryUIResponseTypeBackgroundCPUInsight *)selfCopy perAppUsage];
      [(PLBatteryUIResponseTypeBackgroundCPUInsight *)selfCopy setSuggest:[perAppUsage6 count]!= 0];
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(PLBatteryUIResponseTypeBackgroundCPUInsight *)perAppUsage6 run];
    }

    goto LABEL_42;
  }

  perAppUsage6 = PLBatteryUsageUIKeyFromConfiguration();
  responderService = [(PLBatteryUIResponseTypeBackgroundCPUInsight *)selfCopy responderService];
  responseCache = [responderService responseCache];
  v7 = [responseCache objectForKeyedSubscript:&unk_287146C48];
  v8 = [v7 objectForKeyedSubscript:perAppUsage6];
  [v8 objectForKeyedSubscript:@"result"];
  v10 = v9 = selfCopy;
  v11 = [v10 objectForKeyedSubscript:@"PLBatteryUIBreakdownKey"];

  if (v11)
  {
    [(PLBatteryUIResponseTypeBackgroundCPUInsight *)v9 setBatteryBreakdown_Last10Days:v11];

    selfCopy = v9;
    goto LABEL_4;
  }

  v75 = PLLogCommon(v12);
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
  {
    [(PLBatteryUIResponseTypeBackgroundCPUInsight *)v75 run];
  }

LABEL_42:
}

- (id)result
{
  v7[2] = *MEMORY[0x277D85DE8];
  [(PLBatteryUIResponseTypeBackgroundCPUInsight *)self setBatteryBreakdown_Last10Days:0];
  if ([(PLBatteryUIResponseTypeBackgroundCPUInsight *)self suggest])
  {
    v6[0] = @"PLBatteryUISuggestionTypeKey";
    v6[1] = @"PLBatteryUIPerAppUsageKey";
    v7[0] = &unk_287146C60;
    perAppUsage = [(PLBatteryUIResponseTypeBackgroundCPUInsight *)self perAppUsage];
    v7[1] = perAppUsage;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  return v4;
}

@end