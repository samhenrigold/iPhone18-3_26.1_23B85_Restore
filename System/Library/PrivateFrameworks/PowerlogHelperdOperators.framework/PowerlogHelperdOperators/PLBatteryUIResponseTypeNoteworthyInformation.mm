@interface PLBatteryUIResponseTypeNoteworthyInformation
- (BOOL)getBUIVisitDefaultValue;
- (BOOL)hasNoterworthyInformationThroughOverrides;
- (BOOL)hasRelevantSuggestion;
- (double)getDailyPercentDrainThresholdValue;
- (id)getResultFromCacheForSuggestionResponseType:(int64_t)type;
- (id)getResultFromCacheForUISOCDrainResponseType;
- (id)result;
- (unint64_t)getNumDaysAboveDrainThreshold:(double)threshold;
- (unint64_t)getNumDaysAboveDrainThresholdValue;
- (unint64_t)getNumDaysBelowUISOCLevel:(double)level forLastNDays:(unint64_t)days;
- (unint64_t)getNumDaysBelowUISOCLevelThresholdValue;
- (unint64_t)getUISOCLevelPercentThresholdValue;
- (void)getBUIVisitDefaultValue;
- (void)run;
@end

@implementation PLBatteryUIResponseTypeNoteworthyInformation

- (void)run
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(PLBatteryUIResponseTypeNoteworthyInformation *)self hasNoterworthyInformationThroughOverrides])
  {

    [(PLBatteryUIResponseTypeNoteworthyInformation *)self setHasNoteworthyInformation:1];
  }

  else
  {
    getUISOCLevelPercentThresholdValue = [(PLBatteryUIResponseTypeNoteworthyInformation *)self getUISOCLevelPercentThresholdValue];
    getNumDaysBelowUISOCLevelThresholdValue = [(PLBatteryUIResponseTypeNoteworthyInformation *)self getNumDaysBelowUISOCLevelThresholdValue];
    v5 = [(PLBatteryUIResponseTypeNoteworthyInformation *)self getNumDaysBelowUISOCLevel:7 forLastNDays:getUISOCLevelPercentThresholdValue];
    hasRelevantSuggestion = [(PLBatteryUIResponseTypeNoteworthyInformation *)self hasRelevantSuggestion];
    getBUIVisitDefaultValue = [(PLBatteryUIResponseTypeNoteworthyInformation *)self getBUIVisitDefaultValue];
    v8 = getBUIVisitDefaultValue;
    v9 = PLLogCommon(getBUIVisitDefaultValue);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = 134219008;
      v12 = getUISOCLevelPercentThresholdValue;
      v13 = 2048;
      v14 = getNumDaysBelowUISOCLevelThresholdValue;
      v15 = 2048;
      v16 = v5;
      v17 = 1024;
      v18 = hasRelevantSuggestion;
      v19 = 1024;
      v20 = v8;
      _os_log_debug_impl(&dword_25EE51000, v9, OS_LOG_TYPE_DEBUG, "UISOCLevelPercentThresholdValue=%f, numDaysBelowUISOCLevelThresholdValue=%zu, numDaysBelowUISOCLevel=%zu, doesHaveRelevantSuggestion=%d, userHasVisitedBUI=%d", &v11, 0x2Cu);
    }

    if (v5 >= getNumDaysBelowUISOCLevelThresholdValue)
    {
      v10 = hasRelevantSuggestion & (v8 ^ 1u);
    }

    else
    {
      v10 = 0;
    }

    [(PLBatteryUIResponseTypeNoteworthyInformation *)self setHasNoteworthyInformation:v10];
  }
}

- (id)result
{
  v9[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D85DD0];
  AnalyticsSendEventLazy();
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[PLBatteryUIResponseTypeNoteworthyInformation hasNoteworthyInformation](self, "hasNoteworthyInformation", v6, 3221225472, __54__PLBatteryUIResponseTypeNoteworthyInformation_result__block_invoke, &unk_279A5BF38, self, @"hasNoteworthyInformation"}];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v4;
}

id __54__PLBatteryUIResponseTypeNoteworthyInformation_result__block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"result";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "hasNoteworthyInformation")}];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (unint64_t)getNumDaysAboveDrainThreshold:(double)threshold
{
  v22 = *MEMORY[0x277D85DE8];
  getResultFromCacheForUISOCDrainResponseType = [(PLBatteryUIResponseTypeNoteworthyInformation *)self getResultFromCacheForUISOCDrainResponseType];
  v5 = PLLogCommon(getResultFromCacheForUISOCDrainResponseType);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(PLBatteryUIResponseTypeNoteworthyInformation *)getResultFromCacheForUISOCDrainResponseType getNumDaysAboveDrainThreshold:v5];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = getResultFromCacheForUISOCDrainResponseType;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v17 + 1) + 8 * i) objectForKeyedSubscript:{@"PLBatteryUIEnergyKey", v17}];
        [v12 doubleValue];
        v14 = v13;

        if (v14 > threshold)
        {
          ++v9;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
    v15 = v9;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (unint64_t)getNumDaysBelowUISOCLevel:(double)level forLastNDays:(unint64_t)days
{
  v13 = *MEMORY[0x277D85DE8];
  days = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT datetime(timestamp, 'unixepoch', 'localtime', 'start of day'), COUNT(*) FROM PLBatteryAgent_EventBackward_BatteryUI WHERE level <= %f AND timestamp >((SELECT MAX(timestamp) FROM PLBatteryAgent_EventBackward_Battery)-%zu*86400) GROUP BY datetime(timestamp, 'unixepoch', 'localtime', 'start of day')", *&level, days];;
  mEMORY[0x277D3F210] = [MEMORY[0x277D3F210] sharedSQLiteConnection];
  v6 = [mEMORY[0x277D3F210] performQuery:days];

  v8 = PLLogCommon(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&dword_25EE51000, v8, OS_LOG_TYPE_DEFAULT, "queryResult=%@", buf, 0xCu);
  }

  v9 = [v6 count];
  return v9;
}

- (BOOL)hasRelevantSuggestion
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(PLBatteryUIResponseTypeNoteworthyInformation *)self getResultFromCacheForSuggestionResponseType:9];
  v4 = [(PLBatteryUIResponseTypeNoteworthyInformation *)self getResultFromCacheForSuggestionResponseType:10];
  v5 = [(PLBatteryUIResponseTypeNoteworthyInformation *)self getResultFromCacheForSuggestionResponseType:11];
  v6 = PLLogCommon(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_25EE51000, v6, OS_LOG_TYPE_DEFAULT, "resultAutolockSuggestion=%@, resultAutoBrightnessSuggestion=%@, resultReduceBrightnessSuggestion=%@", &v10, 0x20u);
  }

  v7 = [v3 count];
  v8 = [v4 count] + v7;
  LOBYTE(v8) = v8 + [v5 count] != 0;

  return v8;
}

- (id)getResultFromCacheForUISOCDrainResponseType
{
  v3 = PLBatteryUsageUIKeyFromConfiguration();
  responderService = [(PLBatteryUIResponseTypeNoteworthyInformation *)self responderService];
  responseCache = [responderService responseCache];
  v6 = [responseCache objectForKeyedSubscript:&unk_287145E08];
  v7 = [v6 objectForKeyedSubscript:v3];
  v8 = [v7 objectForKeyedSubscript:@"result"];

  return v8;
}

- (id)getResultFromCacheForSuggestionResponseType:(int64_t)type
{
  v5 = PLBatteryUsageUIKeyFromConfiguration();
  responderService = [(PLBatteryUIResponseTypeNoteworthyInformation *)self responderService];
  responseCache = [responderService responseCache];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v9 = [responseCache objectForKeyedSubscript:v8];
  v10 = [v9 objectForKeyedSubscript:v5];
  v11 = [v10 objectForKeyedSubscript:@"result"];

  return v11;
}

- (double)getDailyPercentDrainThresholdValue
{
  if (!+[PLUtilities inBUIDemoMode])
  {
    return 100.0;
  }

  v2 = [PLUtilities powerlogDefaultForKey:@"BUI_NOTEWORTHY_INFORMATION_DAILY_PERCENT_DRAIN_THRESHOLD"];
  v3 = v2;
  if (v2 && ([v2 doubleValue], v4 > 0.0))
  {
    [v3 doubleValue];
    v6 = v5;
  }

  else
  {
    v6 = 100.0;
  }

  return v6;
}

- (unint64_t)getNumDaysAboveDrainThresholdValue
{
  if (!+[PLUtilities inBUIDemoMode])
  {
    return 7;
  }

  v2 = [PLUtilities powerlogDefaultForKey:@"BUI_NOTEWORTHY_INFORMATION_NUM_DAYS_ABOVE_DRAIN_THRESHOLD"];
  v3 = v2;
  if (v2 && [v2 unsignedIntValue])
  {
    unsignedIntValue = [v3 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 7;
  }

  return unsignedIntValue;
}

- (unint64_t)getUISOCLevelPercentThresholdValue
{
  if (!+[PLUtilities inBUIDemoMode])
  {
    return 10;
  }

  v2 = [PLUtilities powerlogDefaultForKey:@"BUI_NOTEWORTHY_INFORMATION_UISOC_LEVEL_THRESHOLD"];
  v3 = v2;
  if (v2 && ([v2 doubleValue], v4 > 0.0))
  {
    [v3 doubleValue];
    v6 = v5;
  }

  else
  {
    v6 = 10;
  }

  return v6;
}

- (unint64_t)getNumDaysBelowUISOCLevelThresholdValue
{
  if (!+[PLUtilities inBUIDemoMode])
  {
    return 5;
  }

  v2 = [PLUtilities powerlogDefaultForKey:@"BUI_NOTEWORTHY_INFORMATION_NUM_DAYS_BELOW_UISOC_LEVEL_THRESHOLD"];
  v3 = v2;
  if (v2 && [v2 unsignedIntValue])
  {
    unsignedIntValue = [v3 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 5;
  }

  return unsignedIntValue;
}

- (BOOL)getBUIVisitDefaultValue
{
  v2 = [MEMORY[0x277D3F180] objectForKey:@"BUIVisitDefaultKey" forApplicationID:@"com.apple.powerlogd" synchronize:1];
  bOOLValue = [v2 BOOLValue];

  v5 = PLLogCommon(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(PLBatteryUIResponseTypeNoteworthyInformation *)bOOLValue getBUIVisitDefaultValue];
  }

  return bOOLValue;
}

- (BOOL)hasNoterworthyInformationThroughOverrides
{
  v2 = +[PLUtilities inBUIDemoMode];
  if (v2)
  {
    v3 = [PLUtilities powerlogDefaultForKey:@"BUI_HAS_NOTEWORTHY_INFORMATION"];
    bOOLValue = [v3 BOOLValue];

    LOBYTE(v2) = bOOLValue;
  }

  return v2;
}

- (void)getNumDaysAboveDrainThreshold:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_25EE51000, a2, OS_LOG_TYPE_DEBUG, "UISOCDrainResult=%@", &v2, 0xCu);
}

- (void)getBUIVisitDefaultValue
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = self & 1;
  _os_log_debug_impl(&dword_25EE51000, a2, OS_LOG_TYPE_DEBUG, "BUIVisitDefaultValue=%d", v2, 8u);
}

@end