@interface KSTaskScheduler
@end

@implementation KSTaskScheduler

void __34___KSTaskScheduler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_opt_new();
  v2 = sharedInstance__sharedManager;
  sharedInstance__sharedManager = v1;
}

void __33___KSTaskScheduler_registerTask___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state)
  {
    if (state == 2)
    {
      *v23 = 0;
      *&v23[8] = v23;
      *&v23[16] = 0x2020000000;
      v5 = xpc_activity_set_state(v3, 4);
      v24 = v5;
      v6 = KSCategory(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [*(a1 + 32) name];
        v8 = *(*&v23[8] + 24);
        *buf = 136315650;
        v18 = "[_KSTaskScheduler registerTask:]_block_invoke";
        v19 = 2112;
        v20 = v7;
        v21 = 1024;
        v22 = v8;
        _os_log_impl(&dword_2557E2000, v6, OS_LOG_TYPE_INFO, "%s  Running activity %@, extended=%d", buf, 0x1Cu);
      }

      v9 = [*(a1 + 32) queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __33___KSTaskScheduler_registerTask___block_invoke_70;
      block[3] = &unk_2797F6338;
      v14 = v3;
      v15 = *(a1 + 32);
      v16 = v23;
      dispatch_async(v9, block);

      _Block_object_dispose(v23, 8);
    }
  }

  else
  {
    v10 = KSCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [*(a1 + 32) name];
      *v23 = 136315394;
      *&v23[4] = "[_KSTaskScheduler registerTask:]_block_invoke";
      *&v23[12] = 2112;
      *&v23[14] = v11;
      _os_log_impl(&dword_2557E2000, v10, OS_LOG_TYPE_INFO, "%s  Checking-in activity %@", v23, 0x16u);
    }

    v12 = [*(a1 + 32) executionCriteria];
    xpc_activity_set_criteria(v3, v12);
  }
}

void __33___KSTaskScheduler_registerTask___block_invoke_70(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  getpid();
  proc_set_cpumon_params();
  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v2 = xpc_activity_set_state(*(a1 + 32), 3);
    v3 = KSCategory(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [*(a1 + 40) name];
      *buf = 136315394;
      v20 = "[_KSTaskScheduler registerTask:]_block_invoke";
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_2557E2000, v3, OS_LOG_TYPE_INFO, "%s  xpc activity should be deffered, deffering %@", buf, 0x16u);
    }
  }

  else
  {
    v5 = dispatch_semaphore_create(0);
    v6 = os_transaction_create();
    v7 = objc_autoreleasePoolPush();
    v8 = [*(a1 + 40) handler];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __33___KSTaskScheduler_registerTask___block_invoke_72;
    v17[3] = &unk_2797F6310;
    v3 = v5;
    v18 = v3;
    (v8)[2](v8, v17);

    [*(a1 + 40) maxRunTime];
    v10 = dispatch_time(0, (v9 * 1000000000.0));
    v11 = dispatch_semaphore_wait(v3, v10);
    if (v11)
    {
      v12 = KSCategory(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __33___KSTaskScheduler_registerTask___block_invoke_70_cold_1(v12);
      }
    }

    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v13 = xpc_activity_set_state(*(a1 + 32), 5);
      v14 = KSCategory(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [*(a1 + 40) name];
        v16 = *(*(*(a1 + 48) + 8) + 24);
        *buf = 136315650;
        v20 = "[_KSTaskScheduler registerTask:]_block_invoke";
        v21 = 2112;
        v22 = v15;
        v23 = 1024;
        v24 = v16;
        _os_log_impl(&dword_2557E2000, v14, OS_LOG_TYPE_INFO, "%s  Done running activity %@, extended=%d", buf, 0x1Cu);
      }
    }

    objc_autoreleasePoolPop(v7);
    getpid();
    proc_set_cpumon_defaults();
  }
}

void __33___KSTaskScheduler_registerTask___block_invoke_70_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[_KSTaskScheduler registerTask:]_block_invoke_2";
  _os_log_error_impl(&dword_2557E2000, log, OS_LOG_TYPE_ERROR, "%s  Scheduled sync task timed out", &v1, 0xCu);
}

@end