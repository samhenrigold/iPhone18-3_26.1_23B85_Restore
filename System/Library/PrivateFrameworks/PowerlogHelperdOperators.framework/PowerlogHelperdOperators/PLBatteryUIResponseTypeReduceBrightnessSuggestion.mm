@interface PLBatteryUIResponseTypeReduceBrightnessSuggestion
- (BOOL)shouldShowSuggestionThroughOverrides;
- (id)result;
- (void)configure:(id)configure;
- (void)run;
@end

@implementation PLBatteryUIResponseTypeReduceBrightnessSuggestion

- (void)configure:(id)configure
{
  v4 = +[PLUtilities isALSCurveHigherThanDefault];

  [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self setIsALSCurveHigherThanDefault:v4];
}

- (void)run
{
  v42 = *MEMORY[0x277D85DE8];
  if ([(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self shouldShowSuggestionThroughOverrides])
  {

    [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self setSuggest:1];
  }

  else
  {
    isALSCurveHigherThanDefault = [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self isALSCurveHigherThanDefault];
    if (isALSCurveHigherThanDefault)
    {
      batteryBreakdown_Last24hrs = [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self batteryBreakdown_Last24hrs];

      if (!batteryBreakdown_Last24hrs)
      {
        v5 = PLBatteryUsageUIKeyFromConfiguration();
        responderService = [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self responderService];
        responseCache = [responderService responseCache];
        v8 = [responseCache objectForKeyedSubscript:&unk_287146048];
        v9 = [v8 objectForKeyedSubscript:v5];
        v10 = [v9 objectForKeyedSubscript:@"result"];
        v11 = [v10 objectForKeyedSubscript:@"PLBatteryUIBreakdownKey"];
        firstObject = [v11 firstObject];
        [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self setBatteryBreakdown_Last24hrs:firstObject];
      }

      batteryBreakdown_Last24hrs2 = [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self batteryBreakdown_Last24hrs];

      if (!batteryBreakdown_Last24hrs2)
      {
        v15 = PLLogCommon(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25EE51000, v15, OS_LOG_TYPE_DEFAULT, "Reduce Brightness Suggestion: 24h breakdown cache unavailable, retry with 15 days", buf, 2u);
        }

        responderService2 = [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self responderService];
        v17 = [responderService2 getBreakdownForLength:86400 fromCachedLength:1296000 forBucketSize:86400];
        [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self setBatteryBreakdown_Last24hrs:v17];
      }

      batteryBreakdown_Last24hrs3 = [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self batteryBreakdown_Last24hrs];

      v20 = PLLogCommon(v19);
      v21 = v20;
      if (batteryBreakdown_Last24hrs3)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)v21 run];
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        batteryBreakdown_Last24hrs4 = [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self batteryBreakdown_Last24hrs];
        v23 = [batteryBreakdown_Last24hrs4 objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];

        v24 = [v23 countByEnumeratingWithState:&v36 objects:v41 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v37;
          v27 = 0.0;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v37 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v29 = *(*(&v36 + 1) + 8 * i);
              v30 = [&unk_28714CA88 objectAtIndexedSubscript:6];
              v31 = [v29 objectForKeyedSubscript:v30];
              [v31 doubleValue];
              v27 = v27 + v32;
            }

            v25 = [v23 countByEnumeratingWithState:&v36 objects:v41 count:16];
          }

          while (v25);
        }

        else
        {
          v27 = 0.0;
        }

        +[PLUtilities defaultBatteryEnergyCapacity];
        [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self setEnergyPercent:v27 * 100.0 / v34];
        +[PLUtilities defaultBatteryEnergyCapacity];
        [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self setSuggest:v27 > v35 * 0.05];
      }

      else
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)v21 run];
        }
      }
    }

    else
    {
      v33 = PLLogCommon(isALSCurveHigherThanDefault);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)v33 run];
      }
    }
  }
}

- (id)result
{
  v12[2] = *MEMORY[0x277D85DE8];
  [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self setBatteryBreakdown_Last24hrs:0];
  if ([(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self suggest])
  {
    ADClientSetValueForScalarKey();
    v3 = objc_opt_new();
    [v3 setObject:@"suggestion" forKeyedSubscript:@"category"];
    [v3 setObject:@"reduceBrightness" forKeyedSubscript:@"type"];
    v9 = MEMORY[0x277D85DD0];
    v10 = v3;
    v4 = v3;
    AnalyticsSendEventLazy();
    v11[0] = @"PLBatteryUISuggestionTypeKey";
    v11[1] = @"PLBatteryUISuggestionEnergyPercentKey";
    v12[0] = &unk_287146060;
    v5 = MEMORY[0x277CCABB0];
    [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self energyPercent:v9];
    v6 = [v5 numberWithDouble:?];
    v12[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  return v7;
}

- (BOOL)shouldShowSuggestionThroughOverrides
{
  v2 = +[PLUtilities inBUIDemoMode];
  if (v2)
  {
    v3 = [PLUtilities powerlogDefaultForKey:@"BUI_REDUCEBRIGHTNESS_SUGGESTION_SHOW"];
    bOOLValue = [v3 BOOLValue];

    LOBYTE(v2) = bOOLValue;
  }

  return v2;
}

@end