@interface DKMonitor
@end

@implementation DKMonitor

void __23___DKMonitor_saveState__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(*(a1 + 32) + 8))
  {
    v2 = [MEMORY[0x277CFE108] sharedInstance];
    v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:*(*v1 + 8) requiringSecureCoding:1 error:0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [v2 setData:v3 forKey:v5];

    v6 = [MEMORY[0x277CFE0C8] instrumentationChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __23___DKMonitor_saveState__block_invoke_cold_1(v1, v6);
    }
  }
}

void __23___DKMonitor_loadState__block_invoke(uint64_t a1)
{
  v31[2] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CFE108] sharedInstance];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 dataForKey:v5];

  if (v6)
  {
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v7 setWithObjects:{v8, v9, v10, v11, v12, objc_opt_class(), 0}];
    v14 = [*(a1 + 32) classesForSecureStateDecoding];
    v15 = [v13 setByAddingObjectsFromSet:v14];

    v29 = 0;
    v16 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v15 fromData:v6 error:&v29];
    v17 = v29;
    v18 = *(*(a1 + 40) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v16;

    if (v17)
    {
      v20 = [MEMORY[0x277CFE0C8] knowledgeChannel];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        __23___DKMonitor_loadState__block_invoke_cold_1(v17, v20);
      }
    }
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v21 = MEMORY[0x277CBEAC0];
    v22 = [MEMORY[0x277CBEB38] dictionary];
    v31[0] = v22;
    v23 = [MEMORY[0x277CBEB38] dictionary];
    v31[1] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    v30[0] = @"kInstantState";
    v30[1] = @"kHistoricalState";
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v26 = [v21 dictionaryWithObjects:v24 forKeys:v25];
    v27 = *(*(a1 + 40) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;
  }

  objc_autoreleasePoolPop(v2);
}

void *__43___DKMonitor_instantMonitorNeedsActivation__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _instantMonitorNeedsActivation];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void *__45___DKMonitor_instantMonitorNeedsDeactivation__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _instantMonitorNeedsDeactivation];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __51___DKMonitor_setCurrentEvent_inferHistoricalState___block_invoke(uint64_t a1)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a1 + 32;
  v5 = *(v3 + 136);
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __51___DKMonitor_setCurrentEvent_inferHistoricalState___block_invoke_2;
  v23 = &unk_27856F0B0;
  v24 = v3;
  v25 = v2;
  dispatch_sync(v5, &v20);
  if (!*(v4 + 8))
  {
    [*(*v4 + 72) removeObjectForKey:{@"kCurrentEvent", v20, v21, v22, v23, v24}];
LABEL_19:
    v17 = [*v4 instantHandler];

    if (v17)
    {
      v18 = [*v4 instantHandler];
      v19 = [*v4 currentEvent];
      (v18)[2](v18, v19);
    }

    goto LABEL_21;
  }

  if (*(a1 + 48) != 1)
  {
    v13 = 1;
    goto LABEL_16;
  }

  v6 = [*(*v4 + 72) objectForKeyedSubscript:{@"kCurrentEvent", v20, v21, v22, v23, v24}];
  if (!v6)
  {
    v11 = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __51___DKMonitor_setCurrentEvent_inferHistoricalState___block_invoke_cold_1(v4);
    }

    goto LABEL_12;
  }

  if (!(*(*(*(a1 + 32) + 88) + 16))())
  {
    v13 = 0;
    goto LABEL_15;
  }

  v7 = [*v4 filter];
  v8 = (v7)[2](v7, v6);

  if ((v8 & 1) == 0)
  {
    v9 = [*(a1 + 40) startDate];
    [v6 setEndDate:v9];

    v10 = [*(a1 + 32) historicalHandler];

    if (v10)
    {
      v11 = [*v4 historicalHandler];
      v26[0] = v6;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
      (*(v11 + 16))(v11, v12);

LABEL_12:
    }
  }

  v13 = 1;
LABEL_15:
  v14 = [MEMORY[0x277CBEAA8] date];
  v15 = *(*v4 + 56);
  *(*v4 + 56) = v14;

LABEL_16:
  v16 = [objc_opt_class() shouldMergeUnchangedEvents];
  if ((v13 & 1) != 0 || !v16)
  {
    [*(*v4 + 72) setObject:*(*v4 + 64) forKeyedSubscript:{@"kCurrentEvent", v20, v21, v22, v23, v24}];
    if (v13)
    {
      goto LABEL_19;
    }
  }

LABEL_21:
  [*v4 saveState];
}

void __35___DKMonitor_systemClockDidChange___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = mach_continuous_time();
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [*(a1 + 32) machTimeAtLastClockChange];
  v5 = (v2 - v4) * systemClockDidChange__timebaseInfo / *algn_28136A6F4 / 0x3B9ACA00;
  v6 = [*(a1 + 32) dateAtLastClockChange];
  [v3 timeIntervalSinceDate:v6];
  v8 = v7;

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v5];
  [v9 doubleValue];
  v11 = v8 - v10;

  v12 = [MEMORY[0x277CFE0C8] knowledgeChannel];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    v15 = 138412290;
    v16 = v13;
    _os_log_impl(&dword_22595A000, v12, OS_LOG_TYPE_INFO, "Time changed by %@ seconds.", &v15, 0xCu);
  }

  if (fabs(v11) > 60.0)
  {
    v14 = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __35___DKMonitor_systemClockDidChange___block_invoke_2_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  [*(a1 + 32) setMachTimeAtLastClockChange:v2];
  [*(a1 + 32) setDateAtLastClockChange:v3];
}

void __23___DKMonitor_loadState__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22595A000, a2, OS_LOG_TYPE_ERROR, "Error unarchiving state: %@", &v2, 0xCu);
}

void __23___DKMonitor_saveState__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 136446466;
  v5 = "[_DKMonitor saveState]_block_invoke";
  v6 = 2114;
  v7 = objc_opt_class();
  v3 = v7;
  _os_log_debug_impl(&dword_22595A000, a2, OS_LOG_TYPE_DEBUG, "%{public}s did _CDSharedMemoryKeyValueStore for %{public}@.", &v4, 0x16u);
}

void __51___DKMonitor_setCurrentEvent_inferHistoricalState___block_invoke_cold_1(void *a1)
{
  v1 = [objc_opt_class() eventStream];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_1(&dword_22595A000, v2, v3, "Requested the previousEvent from instantState in setCurrentEvent, but received nil in stream: %@.", v4, v5, v6, v7, v8, DWORD2(v8));
}

void __35___DKMonitor_systemClockDidChange___block_invoke_2_cold_1()
{
  v0 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  LODWORD(v7) = 138412290;
  *(&v7 + 4) = v0;
  OUTLINED_FUNCTION_0_1(&dword_22595A000, v1, v2, "Time changed by %@ seconds. Invalidating current event states.", v3, v4, v5, v6, v7, DWORD2(v7));
}

@end