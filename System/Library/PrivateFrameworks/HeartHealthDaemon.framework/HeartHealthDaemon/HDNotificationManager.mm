@interface HDNotificationManager
@end

@implementation HDNotificationManager

void __124__HDNotificationManager_BloodPressureJournal__getBloodPressureJournalDeliveredNotificationIdentifiersWithCompletionHandler___block_invoke(void *a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    v22 = a1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        _HKInitializeLogging();
        v9 = HKLogBloodPressureJournal();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v6;
          v11 = a1[4];
          v25 = [v8 request];
          v12 = [v25 identifier];
          v13 = [v8 request];
          v14 = [v13 content];
          v15 = [v14 categoryIdentifier];
          *buf = 138543874;
          v31 = v11;
          v6 = v10;
          v32 = 2114;
          v33 = v12;
          v34 = 2114;
          v35 = v15;
          _os_log_impl(&dword_229486000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] *** notification: %{public}@ categoryIdentifier  %{public}@", buf, 0x20u);

          a1 = v22;
        }

        v16 = a1[5];
        v17 = [v8 request];
        v18 = [v17 content];
        v19 = [v18 categoryIdentifier];
        LODWORD(v16) = [v16 containsObject:v19];

        if (v16)
        {
          v20 = [v8 request];
          v21 = [v20 identifier];
          [v23 addObject:v21];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v5);
  }

  (*(a1[6] + 16))();
}

@end