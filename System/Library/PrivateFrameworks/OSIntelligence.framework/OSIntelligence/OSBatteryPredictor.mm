@interface OSBatteryPredictor
@end

@implementation OSBatteryPredictor

void __27___OSBatteryPredictor_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && os_log_type_enabled(WeakRetained[1], OS_LOG_TYPE_ERROR))
  {
    __27___OSBatteryPredictor_init__block_invoke_cold_1();
  }
}

void __27___OSBatteryPredictor_init__block_invoke_73(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && os_log_type_enabled(WeakRetained[1], OS_LOG_TYPE_ERROR))
  {
    __27___OSBatteryPredictor_init__block_invoke_73_cold_1();
  }

  v3 = [(os_log_t *)v2 connection];
  [v3 invalidate];
}

void __94___OSBatteryPredictor_typicalBatteryLevelWithReferenceDays_aggregatedOverTimeWidth_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __94___OSBatteryPredictor_typicalBatteryLevelWithReferenceDays_aggregatedOverTimeWidth_withError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __94___OSBatteryPredictor_typicalBatteryLevelWithReferenceDays_aggregatedOverTimeWidth_withError___block_invoke_84(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __94___OSBatteryPredictor_typicalBatteryLevelWithReferenceDays_aggregatedOverTimeWidth_withError___block_invoke_84_cold_1();
    }
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
}

void __62___OSBatteryPredictor_highDayDrainAroundCurrentDateWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __94___OSBatteryPredictor_typicalBatteryLevelWithReferenceDays_aggregatedOverTimeWidth_withError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __62___OSBatteryPredictor_highDayDrainAroundCurrentDateWithError___block_invoke_86(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __94___OSBatteryPredictor_typicalBatteryLevelWithReferenceDays_aggregatedOverTimeWidth_withError___block_invoke_84_cold_1();
    }
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
}

void __54___OSBatteryPredictor_batteryLifeMitigationWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __94___OSBatteryPredictor_typicalBatteryLevelWithReferenceDays_aggregatedOverTimeWidth_withError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __54___OSBatteryPredictor_batteryLifeMitigationWithError___block_invoke_88(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __94___OSBatteryPredictor_typicalBatteryLevelWithReferenceDays_aggregatedOverTimeWidth_withError___block_invoke_84_cold_1();
    }
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
}

void __46___OSBatteryPredictor_overrideAllMitigations___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __94___OSBatteryPredictor_typicalBatteryLevelWithReferenceDays_aggregatedOverTimeWidth_withError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __46___OSBatteryPredictor_overrideAllMitigations___block_invoke_90(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __46___OSBatteryPredictor_overrideAllMitigations___block_invoke_90_cold_1();
    }
  }
}

void __47___OSBatteryPredictor_overrideCLPCMitigations___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __94___OSBatteryPredictor_typicalBatteryLevelWithReferenceDays_aggregatedOverTimeWidth_withError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __47___OSBatteryPredictor_overrideCLPCMitigations___block_invoke_91(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __46___OSBatteryPredictor_overrideAllMitigations___block_invoke_90_cold_1();
    }
  }
}

void __43___OSBatteryPredictor_client_setIBLMState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __94___OSBatteryPredictor_typicalBatteryLevelWithReferenceDays_aggregatedOverTimeWidth_withError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __43___OSBatteryPredictor_client_setIBLMState___block_invoke_92(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = [*(a1 + 32) log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __46___OSBatteryPredictor_overrideAllMitigations___block_invoke_90_cold_1();
    }
  }

  if ((a2 & 1) == 0)
  {
    v7 = [*(a1 + 32) log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __43___OSBatteryPredictor_client_setIBLMState___block_invoke_92_cold_2();
    }
  }
}

void __56___OSBatteryPredictor_client_setIBLMNotificationsState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __94___OSBatteryPredictor_typicalBatteryLevelWithReferenceDays_aggregatedOverTimeWidth_withError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __56___OSBatteryPredictor_client_setIBLMNotificationsState___block_invoke_94(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = [*(a1 + 32) log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __46___OSBatteryPredictor_overrideAllMitigations___block_invoke_90_cold_1();
    }
  }

  if ((a2 & 1) == 0)
  {
    v7 = [*(a1 + 32) log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __43___OSBatteryPredictor_client_setIBLMState___block_invoke_92_cold_2();
    }
  }
}

void __50___OSBatteryPredictor_recommendsAutoLPMWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __94___OSBatteryPredictor_typicalBatteryLevelWithReferenceDays_aggregatedOverTimeWidth_withError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __50___OSBatteryPredictor_recommendsAutoLPMWithError___block_invoke_95(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = [*(a1 + 32) log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __94___OSBatteryPredictor_typicalBatteryLevelWithReferenceDays_aggregatedOverTimeWidth_withError___block_invoke_84_cold_1();
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
}

void __34___OSBatteryPredictor_timeToEmpty__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __34___OSBatteryPredictor_timeToEmpty__block_invoke_cold_1();
  }
}

void __34___OSBatteryPredictor_timeToEmpty__block_invoke_96(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_25D171000, v7, OS_LOG_TYPE_DEFAULT, "TTE XPC call object: %@", &v11, 0xCu);
  }

  [v5 predictedDischargeTime];
  *(*(*(a1 + 40) + 8) + 24) = v8;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __94___OSBatteryPredictor_typicalBatteryLevelWithReferenceDays_aggregatedOverTimeWidth_withError___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_4_0(v1);
  NSStringFromSelector(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_2_0() debugDescription];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_25D171000, v4, v5, "Error executing %@: %@", v6, v7, v8, v9);
}

void __94___OSBatteryPredictor_typicalBatteryLevelWithReferenceDays_aggregatedOverTimeWidth_withError___block_invoke_84_cold_1()
{
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_7(v1);
  NSStringFromSelector(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_2_0() debugDescription];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_25D171000, v4, v5, "Server error executing %@: %@", v6, v7, v8, v9);
}

void __46___OSBatteryPredictor_overrideAllMitigations___block_invoke_90_cold_1()
{
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_6(v1);
  NSStringFromSelector(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_2_0() debugDescription];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_25D171000, v4, v5, "Server error executing %@: %@", v6, v7, v8, v9);
}

@end