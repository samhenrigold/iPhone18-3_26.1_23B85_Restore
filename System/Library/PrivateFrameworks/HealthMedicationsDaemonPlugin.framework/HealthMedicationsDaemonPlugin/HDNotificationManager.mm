@interface HDNotificationManager
@end

@implementation HDNotificationManager

void __93__HDNotificationManager_Medications__removeDeliveredNotificationsForScheduleItemIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogMedication();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
    *buf = 138543874;
    v32 = v5;
    v33 = 2112;
    v34 = v6;
    v35 = 2112;
    v36 = v3;
    _os_log_impl(&dword_25181C000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Currently delivered (%@) notifications: %@", buf, 0x20u);
  }

  v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v24 addObjectsFromArray:*(a1 + 40)];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v3;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    v10 = *MEMORY[0x277D11478];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = [v12 request];
        v14 = [v13 content];
        v15 = [v14 userInfo];
        v16 = [v15 objectForKeyedSubscript:v10];

        if ([*(a1 + 40) containsObject:v16])
        {
          v17 = [v12 request];
          v18 = [v17 identifier];
          [v24 addObject:v18];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  _HKInitializeLogging();
  v19 = HKLogMedication();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 32);
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v24, "count")}];
    *buf = 138543874;
    v32 = v20;
    v33 = 2112;
    v34 = v21;
    v35 = 2112;
    v36 = v24;
    _os_log_impl(&dword_25181C000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing (%@) notifications: %@", buf, 0x20u);
  }

  v22 = *(a1 + 32);
  v23 = [v24 allObjects];
  [v22 removeDeliveredNotificationsWithIdentifiers:v23];
}

@end