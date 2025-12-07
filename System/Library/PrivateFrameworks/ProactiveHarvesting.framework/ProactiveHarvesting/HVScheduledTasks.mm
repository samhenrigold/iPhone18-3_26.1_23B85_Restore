@interface HVScheduledTasks
+ (id)sharedInstance;
+ (void)delayedBudgetedContentAvailable;
- (HVScheduledTasks)init;
- (void)_delayedBudgetedContentAvailable;
- (void)_registerHarvestTaskWithMinimumLevelOfService:(uint64_t)service;
@end

@implementation HVScheduledTasks

+ (void)delayedBudgetedContentAvailable
{
  v2 = +[HVScheduledTasks sharedInstance];
  [(HVScheduledTasks *)v2 _delayedBudgetedContentAvailable];
}

+ (id)sharedInstance
{
  v1 = objc_opt_self();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HVScheduledTasks_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v1;
  if (sharedInstance__pasOnceToken2 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2, block);
  }

  v2 = sharedInstance__pasExprOnceResult_2485;

  return v2;
}

- (void)_delayedBudgetedContentAvailable
{
  if (self)
  {
    v2 = hv_default_log_handle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2321EC000, v2, OS_LOG_TYPE_INFO, "HVScheduledTasks: periodicBudgetContentAvailable", buf, 2u);
    }

    if ((atomic_exchange((self + 8), 1u) & 1) == 0)
    {
      v3 = hv_default_log_handle();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&dword_2321EC000, v3, OS_LOG_TYPE_INFO, "HVScheduledTasks: periodicBudgetContentAvailable: Re-registering CTS job", v4, 2u);
      }

      [(HVScheduledTasks *)self _registerHarvestTaskWithMinimumLevelOfService:?];
    }
  }
}

- (HVScheduledTasks)init
{
  v7.receiver = self;
  v7.super_class = HVScheduledTasks;
  v2 = [(HVScheduledTasks *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(HVScheduledTasks *)v2 _registerHarvestTaskWithMinimumLevelOfService:?];
    v4 = *MEMORY[0x277D86238];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __40__HVScheduledTasks__registerCleanupTask__block_invoke;
    handler[3] = &unk_278969D58;
    handler[4] = v3;
    handler[5] = sel__registerCleanupTask;
    xpc_activity_register("com.apple.proactive.ProactiveHarvesting.Cleanup", v4, handler);
    v5 = hv_default_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2321EC000, v5, OS_LOG_TYPE_INFO, "HVScheduledTasks: registered task Cleanup", buf, 2u);
    }

    atomic_store(0, &v3->_delayedBudgetedTaskScheduled);
    [(HVScheduledTasks *)v3 _delayedBudgetedContentAvailable];
  }

  return v3;
}

- (void)_registerHarvestTaskWithMinimumLevelOfService:(uint64_t)service
{
  v2 = a2;
  v16 = *MEMORY[0x277D85DE8];
  if (a2 == 1)
  {
    v4 = *MEMORY[0x277D86238];
    v5 = @"Harvest.PeriodicBackground";
  }

  else
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86360], 0);
    xpc_dictionary_set_int64(v4, *MEMORY[0x277D86288], 0);
    xpc_dictionary_set_int64(v4, *MEMORY[0x277D86250], 0);
    xpc_dictionary_set_int64(v4, *MEMORY[0x277D86270], 900);
    xpc_dictionary_set_string(v4, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
    xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86230], 1);
    xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86248], 1);
    xpc_dictionary_set_string(v4, *MEMORY[0x277D86280], "com.apple.proactive.ProactiveHarvesting");
    xpc_dictionary_set_uint64(v4, *MEMORY[0x277D86278], 1uLL);
    v5 = @"Harvest.DelayedBudgeted";
  }

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.%@", @"com.apple.proactive.ProactiveHarvesting", v5];
  uTF8String = [v6 UTF8String];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __66__HVScheduledTasks__registerHarvestTaskWithMinimumLevelOfService___block_invoke;
  handler[3] = &unk_278969CE0;
  v13 = v2;
  serviceCopy = service;
  v12 = sel__registerHarvestTaskWithMinimumLevelOfService_;
  v10 = v5;
  xpc_activity_register(uTF8String, v4, handler);
  v8 = hv_default_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&dword_2321EC000, v8, OS_LOG_TYPE_INFO, "HVScheduledTasks: registered task %@", buf, 0xCu);
  }
}

void __40__HVScheduledTasks__registerCleanupTask__block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (xpc_activity_get_state(v3))
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __40__HVScheduledTasks__registerCleanupTask__block_invoke_2;
    v26[3] = &unk_278969D08;
    v28 = &v29;
    v4 = v3;
    v27 = v4;
    v5 = MEMORY[0x238381E60](v26);
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __40__HVScheduledTasks__registerCleanupTask__block_invoke_39;
    v23 = &unk_278969D30;
    v6 = v5;
    v24 = v6;
    v25 = &v29;
    v7 = MEMORY[0x238381E60](&v20);
    v8 = objc_opt_self();
    [(HVNotifications *)v8 _postNotificationWithName:?];
    v9 = hv_scheduled_task_signpost_handle();
    v10 = os_signpost_id_generate(v9);

    v11 = hv_scheduled_task_signpost_handle();
    v12 = v11;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2321EC000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "Cleanup", &unk_232239BED, buf, 2u);
    }

    v7[2](v7);
    v13 = hv_scheduled_task_signpost_handle();
    v14 = v13;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      v15 = *(v30 + 24);
      *buf = 67109120;
      v34 = v15;
      _os_signpost_emit_with_name_impl(&dword_2321EC000, v14, OS_SIGNPOST_INTERVAL_END, v10, "Cleanup", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
    }

    if (*(v30 + 24) == 1)
    {
      v16 = objc_opt_self();
      v17 = "com.apple.proactive.ProactiveHarvesting.scheduledTask.deferred";
    }

    else
    {
      v16 = objc_opt_self();
      v17 = "com.apple.proactive.ProactiveHarvesting.scheduledTask.completed";
    }

    [(HVNotifications *)v16 _postNotificationWithName:v17];
    if (*(v30 + 24) == 1)
    {
      if (!xpc_activity_set_state(v4, 3))
      {
        v19 = [MEMORY[0x277CCA890] currentHandler];
        [v19 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"HVScheduledTasks.m" lineNumber:232 description:@"HVScheduledTasks unexpected failure of deferral"];
      }

      v18 = hv_default_log_handle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2321EC000, v18, OS_LOG_TYPE_DEFAULT, "HVScheduledTasks: Cleanup: deferred", buf, 2u);
      }
    }

    _Block_object_dispose(&v29, 8);
  }
}

uint64_t __40__HVScheduledTasks__registerCleanupTask__block_invoke_2(uint64_t a1)
{
  v2 = hv_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_2321EC000, v2, OS_LOG_TYPE_DEBUG, "HVScheduledTasks: Cleanup: deferral check", v5, 2u);
  }

  v3 = *(*(a1 + 40) + 8);
  if (*(v3 + 24))
  {
    goto LABEL_6;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v3 = *(*(a1 + 40) + 8);
LABEL_6:
    result = 0;
    *(v3 + 24) = 1;
    return result;
  }

  return 1;
}

void __40__HVScheduledTasks__registerCleanupTask__block_invoke_39(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = +[HVQueues defaultQueues];
  v8 = 0;
  v3 = [v2 cleanupWithError:&v8 shouldContinueBlock:*(a1 + 32)];
  v4 = v8;

  LODWORD(v2) = *(*(*(a1 + 40) + 8) + 24);
  v5 = hv_default_log_handle();
  v6 = v5;
  if (v2 == 1)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "HVScheduledTasks: Cleanup: deferring";
LABEL_7:
      _os_log_impl(&dword_2321EC000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
    }
  }

  else if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "HVScheduledTasks: Cleanup: completed successfully";
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_error_impl(&dword_2321EC000, v6, OS_LOG_TYPE_ERROR, "HVScheduledTasks: Cleanup: failed: %@", buf, 0xCu);
  }
}

void __66__HVScheduledTasks__registerHarvestTaskWithMinimumLevelOfService___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (xpc_activity_get_state(v3))
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __66__HVScheduledTasks__registerHarvestTaskWithMinimumLevelOfService___block_invoke_2;
    v26[3] = &unk_278969C90;
    v27 = *(a1 + 32);
    v29 = &v30;
    v4 = v3;
    v28 = v4;
    v5 = MEMORY[0x238381E60](v26);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __66__HVScheduledTasks__registerHarvestTaskWithMinimumLevelOfService___block_invoke_29;
    v21[3] = &unk_278969CB8;
    v25 = *(a1 + 56);
    v6 = v5;
    v23 = v6;
    v24 = &v30;
    v22 = *(a1 + 32);
    v7 = MEMORY[0x238381E60](v21);
    v8 = objc_opt_self();
    [(HVNotifications *)v8 _postNotificationWithName:?];
    v9 = hv_scheduled_task_signpost_handle();
    v10 = os_signpost_id_generate(v9);

    v11 = hv_scheduled_task_signpost_handle();
    v12 = v11;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2321EC000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "Harvest", &unk_232239BED, buf, 2u);
    }

    v7[2](v7);
    v13 = hv_scheduled_task_signpost_handle();
    v14 = v13;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      v15 = *(v31 + 24);
      *buf = 67109120;
      LODWORD(v35) = v15;
      _os_signpost_emit_with_name_impl(&dword_2321EC000, v14, OS_SIGNPOST_INTERVAL_END, v10, "Harvest", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
    }

    if (*(v31 + 24) == 1)
    {
      v16 = objc_opt_self();
      v17 = "com.apple.proactive.ProactiveHarvesting.scheduledTask.deferred";
    }

    else
    {
      v16 = objc_opt_self();
      v17 = "com.apple.proactive.ProactiveHarvesting.scheduledTask.completed";
    }

    [(HVNotifications *)v16 _postNotificationWithName:v17];
    if (*(v31 + 24) == 1)
    {
      if (!xpc_activity_set_state(v4, 3))
      {
        v20 = [MEMORY[0x277CCA890] currentHandler];
        [v20 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"HVScheduledTasks.m" lineNumber:188 description:@"HVScheduledTasks unexpected failure of deferral"];
      }

      v18 = hv_default_log_handle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 32);
        *buf = 138412290;
        v35 = v19;
        _os_log_impl(&dword_2321EC000, v18, OS_LOG_TYPE_DEFAULT, "HVScheduledTasks: %@: deferred", buf, 0xCu);
      }
    }

    else
    {
      atomic_store(0, (*(a1 + 40) + 8));
    }

    _Block_object_dispose(&v30, 8);
  }
}

uint64_t __66__HVScheduledTasks__registerHarvestTaskWithMinimumLevelOfService___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = hv_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = 138412290;
    v7 = v5;
    _os_log_debug_impl(&dword_2321EC000, v2, OS_LOG_TYPE_DEBUG, "HVScheduledTasks: %@: deferral check", &v6, 0xCu);
  }

  v3 = *(*(a1 + 48) + 8);
  if (*(v3 + 24))
  {
    goto LABEL_6;
  }

  if (xpc_activity_should_defer(*(a1 + 40)))
  {
    v3 = *(*(a1 + 48) + 8);
LABEL_6:
    result = 0;
    *(v3 + 24) = 1;
    return result;
  }

  return 1;
}

void __66__HVScheduledTasks__registerHarvestTaskWithMinimumLevelOfService___block_invoke_29(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = +[HVConsumerCoordinator defaultCoordinator];
  v3 = *(a1 + 56);
  v13 = 0;
  v4 = [v2 harvestContentWithMinimumLevelOfService:v3 ignoringDiscretionaryPowerBudget:0 error:&v13 shouldContinueBlock:*(a1 + 40)];
  v5 = v13;

  v6 = *(*(*(a1 + 48) + 8) + 24);
  v7 = hv_default_log_handle();
  v8 = v7;
  if (v6 == 1)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138412290;
      v15 = v9;
      v10 = "HVScheduledTasks: %@: deferring";
LABEL_7:
      _os_log_impl(&dword_2321EC000, v8, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
    }
  }

  else if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138412290;
      v15 = v11;
      v10 = "HVScheduledTasks: %@: completed successfully";
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    *buf = 138412546;
    v15 = v12;
    v16 = 2112;
    v17 = v5;
    _os_log_error_impl(&dword_2321EC000, v8, OS_LOG_TYPE_ERROR, "HVScheduledTasks: %@: failed: %@", buf, 0x16u);
  }
}

void __34__HVScheduledTasks_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = objc_opt_new();
  v3 = sharedInstance__pasExprOnceResult_2485;
  sharedInstance__pasExprOnceResult_2485 = v2;

  objc_autoreleasePoolPop(v1);
}

@end