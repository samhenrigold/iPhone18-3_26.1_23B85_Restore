@interface PLBatteryUIResponseTypeAutoLockSuggestion
- (BOOL)shouldShowSuggestionThroughOverrides;
- (id)result;
- (void)configure:(id)configure;
- (void)run;
@end

@implementation PLBatteryUIResponseTypeAutoLockSuggestion

- (void)configure:(id)configure
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [mEMORY[0x277D262A0] effectiveValueForSetting:*MEMORY[0x277D25D78]];
  [(PLBatteryUIResponseTypeAutoLockSuggestion *)self setAutoLockTime:v4];
}

- (void)run
{
  v53 = *MEMORY[0x277D85DE8];
  if ([(PLBatteryUIResponseTypeAutoLockSuggestion *)self shouldShowSuggestionThroughOverrides])
  {

    [(PLBatteryUIResponseTypeAutoLockSuggestion *)self setSuggest:1];
  }

  else
  {
    autoLockTime = [(PLBatteryUIResponseTypeAutoLockSuggestion *)self autoLockTime];
    intValue = [autoLockTime intValue];

    if (intValue == 0x7FFFFFFF)
    {
      batteryBreakdown_Last24hrs = [(PLBatteryUIResponseTypeAutoLockSuggestion *)self batteryBreakdown_Last24hrs];

      if (!batteryBreakdown_Last24hrs)
      {
        v7 = PLBatteryUsageUIKeyFromConfiguration();
        responderService = [(PLBatteryUIResponseTypeAutoLockSuggestion *)self responderService];
        responseCache = [responderService responseCache];
        v10 = [responseCache objectForKeyedSubscript:&unk_287146F00];
        v11 = [v10 objectForKeyedSubscript:v7];
        v12 = [v11 objectForKeyedSubscript:@"result"];
        v13 = [v12 objectForKeyedSubscript:@"PLBatteryUIBreakdownKey"];
        firstObject = [v13 firstObject];
        [(PLBatteryUIResponseTypeAutoLockSuggestion *)self setBatteryBreakdown_Last24hrs:firstObject];
      }

      batteryBreakdown_Last24hrs2 = [(PLBatteryUIResponseTypeAutoLockSuggestion *)self batteryBreakdown_Last24hrs];

      if (!batteryBreakdown_Last24hrs2)
      {
        v17 = PLLogCommon(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25EE51000, v17, OS_LOG_TYPE_DEFAULT, "Auto Lock Suggestion: 24h breakdown cache unavailable, retry with 15 days", buf, 2u);
        }

        responderService2 = [(PLBatteryUIResponseTypeAutoLockSuggestion *)self responderService];
        v19 = [responderService2 getBreakdownForLength:86400 fromCachedLength:1296000 forBucketSize:86400];
        [(PLBatteryUIResponseTypeAutoLockSuggestion *)self setBatteryBreakdown_Last24hrs:v19];
      }

      batteryBreakdown_Last24hrs3 = [(PLBatteryUIResponseTypeAutoLockSuggestion *)self batteryBreakdown_Last24hrs];

      v22 = PLLogCommon(v21);
      v23 = v22;
      if (batteryBreakdown_Last24hrs3)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [(PLBatteryUIResponseTypeAutoLockSuggestion *)v23 run];
        }

        v24 = MEMORY[0x277CCACA8];
        v25 = [&unk_28714DBE0 objectAtIndexedSubscript:9];
        v26 = [&unk_28714DBF8 objectAtIndexedSubscript:10];
        v23 = [v24 stringWithFormat:@"%@-%@", v25, v26];

        v27 = MEMORY[0x277CCACA8];
        v28 = [&unk_28714DC10 objectAtIndexedSubscript:9];
        v29 = [&unk_28714DC28 objectAtIndexedSubscript:56];
        v30 = [v27 stringWithFormat:@"%@-%@", v28, v29];

        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        batteryBreakdown_Last24hrs4 = [(PLBatteryUIResponseTypeAutoLockSuggestion *)self batteryBreakdown_Last24hrs];
        v32 = [batteryBreakdown_Last24hrs4 objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];

        v33 = [v32 countByEnumeratingWithState:&v47 objects:v52 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v48;
          v36 = 0.0;
          do
          {
            for (i = 0; i != v34; ++i)
            {
              if (*v48 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v38 = *(*(&v47 + 1) + 8 * i);
              v39 = [v38 objectForKeyedSubscript:v23];
              [v39 doubleValue];
              v41 = v40;
              v42 = [v38 objectForKeyedSubscript:v30];
              [v42 doubleValue];
              v36 = v36 + v41 + v43;
            }

            v34 = [v32 countByEnumeratingWithState:&v47 objects:v52 count:16];
          }

          while (v34);
        }

        else
        {
          v36 = 0.0;
        }

        +[PLUtilities defaultBatteryEnergyCapacity];
        [(PLBatteryUIResponseTypeAutoLockSuggestion *)self setEnergyPercent:v36 * 100.0 / v45];
        +[PLUtilities defaultBatteryEnergyCapacity];
        [(PLBatteryUIResponseTypeAutoLockSuggestion *)self setSuggest:v36 > v46 * 0.01];
      }

      else if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(PLBatteryUIResponseTypeAutoLockSuggestion *)v23 run];
      }
    }

    else
    {
      v44 = PLLogCommon(v5);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        [(PLBatteryUIResponseTypeAutoLockSuggestion *)v44 run];
      }
    }
  }
}

- (id)result
{
  v12[2] = *MEMORY[0x277D85DE8];
  [(PLBatteryUIResponseTypeAutoLockSuggestion *)self setBatteryBreakdown_Last24hrs:0];
  if ([(PLBatteryUIResponseTypeAutoLockSuggestion *)self suggest])
  {
    ADClientSetValueForScalarKey();
    v3 = objc_opt_new();
    [v3 setObject:@"suggestion" forKeyedSubscript:@"category"];
    [v3 setObject:@"autoLock" forKeyedSubscript:@"type"];
    v9 = MEMORY[0x277D85DD0];
    v10 = v3;
    v4 = v3;
    AnalyticsSendEventLazy();
    v11[0] = @"PLBatteryUISuggestionTypeKey";
    v11[1] = @"PLBatteryUISuggestionEnergyPercentKey";
    v12[0] = &unk_287146F18;
    v5 = MEMORY[0x277CCABB0];
    [(PLBatteryUIResponseTypeAutoLockSuggestion *)self energyPercent:v9];
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
    v3 = [PLUtilities powerlogDefaultForKey:@"BUI_AUTOLOCK_SUGGESTION_SHOW"];
    bOOLValue = [v3 BOOLValue];

    LOBYTE(v2) = bOOLValue;
  }

  return v2;
}

@end