@interface PLBatteryUIResponseTypeRecentUsageInsight
- (BOOL)didUpgrade;
- (BOOL)shouldShowSuggestionThroughOverrides;
- (double)getfirstEntryTimestampFromDb;
- (id)result;
- (void)configure:(id)configure;
- (void)didUpgrade;
- (void)run;
@end

@implementation PLBatteryUIResponseTypeRecentUsageInsight

- (void)configure:(id)configure
{
  v4 = [configure objectForKeyedSubscript:@"end"];
  [v4 doubleValue];
  v6 = v5;

  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v6];
  [(PLBatteryUIResponseTypeRecentUsageInsight *)self setEnd:v7];

  [(PLBatteryUIResponseTypeRecentUsageInsight *)self getfirstEntryTimestampFromDb];
  [(PLBatteryUIResponseTypeRecentUsageInsight *)self setFirstEntryTimestamp:?];
  v8 = [MEMORY[0x277D3F180] objectForKey:@"LastUpgradeTimestamp" forApplicationID:@"com.apple.powerlogd" synchronize:1];
  [v8 doubleValue];
  [(PLBatteryUIResponseTypeRecentUsageInsight *)self setLastUpgradeTimestamp:?];

  +[PLUtilities containerPath];
  v9 = _CFPreferencesCopyValueWithContainer();
  v10 = v9;
  if (v9)
  {
    [v9 doubleValue];
    v12 = v11;
  }

  else
  {
    v12 = 864000.0;
  }

  [(PLBatteryUIResponseTypeRecentUsageInsight *)self setMaxTimeValBeforeUpgrade:v12];
  +[PLUtilities containerPath];
  v13 = _CFPreferencesCopyValueWithContainer();
  v14 = v13;
  if (v13)
  {
    [v13 doubleValue];
    v16 = v15;
  }

  else
  {
    v16 = 259200.0;
  }

  [(PLBatteryUIResponseTypeRecentUsageInsight *)self setMinTimeValBeforeUpgrade:v16];
  +[PLUtilities containerPath];
  v17 = _CFPreferencesCopyValueWithContainer();
  v18 = v17;
  if (v17)
  {
    [v17 doubleValue];
    v20 = v19;
  }

  else
  {
    v20 = 864000.0;
  }

  [(PLBatteryUIResponseTypeRecentUsageInsight *)self setMaxTimeValAfterUpgrade:v20];
  +[PLUtilities containerPath];
  v21 = _CFPreferencesCopyValueWithContainer();
  v22 = v21;
  if (v21)
  {
    [v21 doubleValue];
    v24 = v23;
  }

  else
  {
    v24 = 86400.0;
  }

  [(PLBatteryUIResponseTypeRecentUsageInsight *)self setMinTimeValAfterUpgrade:v24];
  +[PLUtilities containerPath];
  v25 = _CFPreferencesCopyValueWithContainer();
  v26 = v25;
  if (v25)
  {
    [v25 doubleValue];
    v28 = v27;
  }

  else
  {
    v28 = 0.3;
  }

  [(PLBatteryUIResponseTypeRecentUsageInsight *)self setMinDrainPercentBeforeUpgrade:v28];
  +[PLUtilities containerPath];
  v29 = _CFPreferencesCopyValueWithContainer();
  v30 = v29;
  v31 = 1.3;
  v32 = 1.3;
  if (v29)
  {
    [v29 doubleValue];
    v32 = v33;
  }

  [(PLBatteryUIResponseTypeRecentUsageInsight *)self setEnergyThresholdForUpgradeInsight:v32];
  +[PLUtilities containerPath];
  v34 = _CFPreferencesCopyValueWithContainer();
  v35 = v34;
  if (v34)
  {
    [v34 doubleValue];
    v31 = v36;
  }

  [(PLBatteryUIResponseTypeRecentUsageInsight *)self setForegroundTimeThresholdForUpgradeInsight:v31];
}

- (void)run
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)result
{
  [(PLBatteryUIResponseTypeRecentUsageInsight *)self setBatteryBreakdown_Last10Days:0];
  if (![(PLBatteryUIResponseTypeRecentUsageInsight *)self suggest])
  {
    return MEMORY[0x277CBEC10];
  }

  ADClientSetValueForScalarKey();
  v3 = objc_opt_new();
  [v3 setObject:@"insight" forKeyedSubscript:@"category"];
  [v3 setObject:@"upgradeUsage" forKeyedSubscript:@"type"];
  v6 = v3;
  v4 = v3;
  AnalyticsSendEventLazy();

  return &unk_28714AF48;
}

- (BOOL)didUpgrade
{
  v3 = [(PLBatteryUIResponseTypeRecentUsageInsight *)self end];
  [v3 timeIntervalSince1970];
  v5 = v4;
  [(PLBatteryUIResponseTypeRecentUsageInsight *)self lastUpgradeTimestamp];
  v7 = v6;

  lastUpgradeTimestamp = [(PLBatteryUIResponseTypeRecentUsageInsight *)self lastUpgradeTimestamp];
  if (v9 == 0.0)
  {
    v10 = PLLogCommon(lastUpgradeTimestamp);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeRecentUsageInsight didUpgrade];
    }
  }

  else
  {
    v11 = v5 - v7;
    minTimeValAfterUpgrade = [(PLBatteryUIResponseTypeRecentUsageInsight *)self minTimeValAfterUpgrade];
    if (v11 <= v13 || (minTimeValAfterUpgrade = [(PLBatteryUIResponseTypeRecentUsageInsight *)self maxTimeValAfterUpgrade], v11 >= v14))
    {
      v10 = PLLogCommon(minTimeValAfterUpgrade);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypeRecentUsageInsight didUpgrade];
      }
    }

    else
    {
      [(PLBatteryUIResponseTypeRecentUsageInsight *)self lastUpgradeTimestamp];
      v16 = v15;
      [(PLBatteryUIResponseTypeRecentUsageInsight *)self firstEntryTimestamp];
      v18 = v16 - v17;
      minTimeValBeforeUpgrade = [(PLBatteryUIResponseTypeRecentUsageInsight *)self minTimeValBeforeUpgrade];
      if (v18 > v20)
      {
        return 1;
      }

      v10 = PLLogCommon(minTimeValBeforeUpgrade);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypeRecentUsageInsight didUpgrade];
      }
    }
  }

  return 0;
}

- (double)getfirstEntryTimestampFromDb
{
  v3 = *MEMORY[0x277D3F5B8];
  v4 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"AppRunTime"];
  v5 = [MEMORY[0x277D3F128] entryKeyForType:v3 andName:*MEMORY[0x277D3F318]];
  v6 = [MEMORY[0x277D3F128] entryKeyForType:v3 andName:*MEMORY[0x277D3F2F0]];
  responderService = [(PLBatteryUIResponseTypeRecentUsageInsight *)self responderService];
  v8 = objc_msgSend_storage(responderService);
  v9 = [v8 entryForKey:v4 withID:1];

  responderService2 = [(PLBatteryUIResponseTypeRecentUsageInsight *)self responderService];
  v11 = objc_msgSend_storage(responderService2);
  v12 = [v11 entryForKey:v5 withID:1];

  responderService3 = [(PLBatteryUIResponseTypeRecentUsageInsight *)self responderService];
  v14 = objc_msgSend_storage(responderService3);
  v15 = [v14 entryForKey:v6 withID:1];

  v16 = 9.22337204e18;
  if (v9 && v12 && v15)
  {
    v17 = [v9 objectForKeyedSubscript:@"timestamp"];
    [v17 doubleValue];
    v19 = v18;
    v20 = [v12 objectForKeyedSubscript:@"timestamp"];
    [v20 doubleValue];
    v22 = fmax(v19, v21);
    v23 = [v15 objectForKeyedSubscript:@"timestamp"];
    [v23 doubleValue];
    v16 = fmax(v22, v24);
  }

  return v16;
}

- (BOOL)shouldShowSuggestionThroughOverrides
{
  v2 = +[PLUtilities inBUIDemoMode];
  if (v2)
  {
    v3 = [PLUtilities powerlogDefaultForKey:@"BUI_RECENTUSAGE_SUGGESTION_SHOW"];
    bOOLValue = [v3 BOOLValue];

    LOBYTE(v2) = bOOLValue;
  }

  return v2;
}

- (void)didUpgrade
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end