@interface SCSharingReminderMaintenanceTask
@end

@implementation SCSharingReminderMaintenanceTask

void __56__SCSharingReminderMaintenanceTask_repeatingTaskHandler__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__SCSharingReminderMaintenanceTask_repeatingTaskHandler__block_invoke_2;
  v15[3] = &unk_279B398A0;
  v15[4] = &v16;
  v3 = [v2 setExpirationHandler:v15];
  if (*(v17 + 24) == 1)
  {
    v14 = 0;
    v4 = [v2 setTaskExpiredWithRetryAfter:&v14 error:300.0];
    v5 = v14;
    v6 = v5;
    if ((v4 & 1) == 0)
    {
      v7 = SCLogger(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v8 = [v2 identifier];
        __56__SCSharingReminderDeliveryTask_nonRepeatingTaskHandler__block_invoke_cold_1(v8, v6, v22, v7);
      }

      [v2 setTaskCompleted];
    }
  }

  v9 = SCLogger(v3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = v2;
    _os_log_impl(&dword_262556000, v9, OS_LOG_TYPE_INFO, "SCSharingReminderMaintenanceTask handling underlying task: %@", buf, 0xCu);
  }

  v10 = objc_alloc_init(SCSharingReminderManager);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__SCSharingReminderMaintenanceTask_repeatingTaskHandler__block_invoke_3;
  v12[3] = &unk_279B39588;
  v11 = v2;
  v13 = v11;
  [(SCSharingReminderManager *)v10 validateCacheWithCompletion:v12];

  _Block_object_dispose(&v16, 8);
}

void __56__SCSharingReminderMaintenanceTask_repeatingTaskHandler__block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5 || (a2 & 1) == 0)
  {
    v7 = SCLogger(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = @"Unknown";
      if (v6)
      {
        v9 = v6;
      }

      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_error_impl(&dword_262556000, v7, OS_LOG_TYPE_ERROR, "Error handling task %@, error: %@", &v10, 0x16u);
    }
  }

  [*(a1 + 32) setTaskCompleted];
}

@end