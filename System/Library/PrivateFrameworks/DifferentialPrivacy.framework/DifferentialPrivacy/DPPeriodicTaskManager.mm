@interface DPPeriodicTaskManager
@end

@implementation DPPeriodicTaskManager

void __39___DPPeriodicTaskManager_registerTask___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state)
  {
    if (state == 2)
    {
      *&v32 = 0;
      *(&v32 + 1) = &v32;
      v33 = 0x2020000000;
      v34 = xpc_activity_set_state(v3, 4);
      v5 = +[_DPLog framework];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [*(a1 + 32) name];
        v7 = *(*(&v32 + 1) + 24);
        *buf = 138412546;
        v29 = v6;
        v30 = 1024;
        v31 = v7;
        _os_log_impl(&dword_22622D000, v5, OS_LOG_TYPE_INFO, "Running activity %@, extended=%d", buf, 0x12u);
      }

      v8 = +[_DPCoreAnalyticsCollector sharedInstance];
      v27[0] = &unk_283976048;
      v26[0] = @"duration";
      v26[1] = @"activityName";
      v9 = [*(a1 + 32) name];
      v26[2] = @"activityState";
      v27[1] = v9;
      v27[2] = &unk_283976060;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
      [v8 reportMetricsForEvent:@"com.apple.DifferentialPrivacy.MaintenanceActivity" withMetrics:v10];

      v11 = [MEMORY[0x277CCAC38] processInfo];
      [v11 systemUptime];
      v13 = v12;

      v14 = [*(a1 + 32) queue];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __39___DPPeriodicTaskManager_registerTask___block_invoke_50;
      v21[3] = &unk_27858AE58;
      v22 = *(a1 + 32);
      v23 = v3;
      v24 = &v32;
      v25 = v13;
      dispatch_async(v14, v21);

      _Block_object_dispose(&v32, 8);
    }
  }

  else
  {
    v15 = +[_DPLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [*(a1 + 32) name];
      LODWORD(v32) = 138412290;
      *(&v32 + 4) = v16;
      _os_log_impl(&dword_22622D000, v15, OS_LOG_TYPE_INFO, "Checking-in activity %@", &v32, 0xCu);
    }

    v17 = xpc_activity_copy_criteria(v3);
    if (!v17 || ([*(a1 + 32) executionCriteria], v18 = objc_claimAutoreleasedReturnValue(), v19 = xpc_equal(v17, v18), v18, !v19))
    {
      v20 = [*(a1 + 32) executionCriteria];
      xpc_activity_set_criteria(v3, v20);
    }
  }
}

void __39___DPPeriodicTaskManager_registerTask___block_invoke_50(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  getpid();
  proc_set_cpumon_params();
  v2 = [*(a1 + 32) name];
  [v2 UTF8String];
  v3 = os_transaction_create();

  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) handler];
  v5[2](v5, *(a1 + 40));

  objc_autoreleasePoolPop(v4);
  getpid();
  proc_set_cpumon_defaults();
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    xpc_activity_set_state(*(a1 + 40), 5);
    v6 = +[_DPLog framework];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) name];
      v8 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 138412546;
      v19 = v7;
      v20 = 1024;
      v21 = v8;
      _os_log_impl(&dword_22622D000, v6, OS_LOG_TYPE_INFO, "Done running activity %@, extended=%d", buf, 0x12u);
    }

    v9 = [MEMORY[0x277CCAC38] processInfo];
    [v9 systemUptime];
    v11 = v10;

    v12 = +[_DPCoreAnalyticsCollector sharedInstance];
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:{v11 - *(a1 + 56), @"duration"}];
    v17[0] = v13;
    v16[1] = @"activityName";
    v14 = [*(a1 + 32) name];
    v16[2] = @"activityState";
    v17[1] = v14;
    v17[2] = &unk_283976078;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
    [v12 reportMetricsForEvent:@"com.apple.DifferentialPrivacy.MaintenanceActivity" withMetrics:v15];
  }
}

@end