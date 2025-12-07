@interface ATXAlarmsDataSource
- (ATXAlarmsDataSource)initWithDevice:(id)device;
- (void)alarmsFromDate:(id)date toDate:(id)toDate completionHandler:(id)handler;
@end

@implementation ATXAlarmsDataSource

- (ATXAlarmsDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = ATXAlarmsDataSource;
  v6 = [(ATXAlarmsDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (void)alarmsFromDate:(id)date toDate:(id)toDate completionHandler:(id)handler
{
  dateCopy = date;
  toDateCopy = toDate;
  handlerCopy = handler;
  if ((ATXHeuristicCanLearnFromApp(&unk_2850BA2F0) & 1) == 0)
  {
    v20 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v20, OS_LOG_TYPE_DEFAULT, "Learn from Clock is disabled. Can't fetch alarms", buf, 2u);
    }

    goto LABEL_7;
  }

  [dateCopy timeIntervalSinceReferenceDate];
  v11 = v10;
  [toDateCopy timeIntervalSinceReferenceDate];
  if (v11 > v12)
  {
LABEL_7:
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEBF8], 0);
    goto LABEL_8;
  }

  v13 = +[ATXHeuristicDevice sharedAlarmManager];
  v14 = dispatch_semaphore_create(0);
  *buf = 0;
  v30 = buf;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__8;
  v33 = __Block_byref_object_dispose__8;
  v34 = 0;
  v15 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:dateCopy endDate:toDateCopy];
  v16 = [v13 nextAlarmsInRange:v15 maxCount:100 includeSleepAlarm:1];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __63__ATXAlarmsDataSource_alarmsFromDate_toDate_completionHandler___block_invoke;
  v26[3] = &unk_278C3D180;
  v28 = buf;
  v17 = v14;
  v27 = v17;
  v18 = [v16 addCompletionBlock:v26];

  v19 = MEMORY[0x277D425A0];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __63__ATXAlarmsDataSource_alarmsFromDate_toDate_completionHandler___block_invoke_16;
  v23[3] = &unk_278C3D1A8;
  v24 = handlerCopy;
  v25 = buf;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __63__ATXAlarmsDataSource_alarmsFromDate_toDate_completionHandler___block_invoke_2;
  v21[3] = &unk_278C3D1D0;
  v22 = v24;
  [v19 waitForSemaphore:v17 timeoutSeconds:v23 onAcquire:v21 onTimeout:5.0];

  _Block_object_dispose(buf, 8);
LABEL_8:
}

void __63__ATXAlarmsDataSource_alarmsFromDate_toDate_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __63__ATXAlarmsDataSource_alarmsFromDate_toDate_completionHandler___block_invoke_cold_1(v6, v7);
    }
  }

  else
  {
    v22 = 0;
    v23 = a1;
    v24 = v5;
    v8 = v5;
    v27 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v8;
    v28 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v28)
    {
      v26 = *v35;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v35 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v34 + 1) + 8 * i);
          v39[0] = v10;
          v38[0] = @"MTAlarm";
          v38[1] = @"alarmID";
          v33 = [v10 alarmID];
          v32 = [v33 UUIDString];
          v39[1] = v32;
          v38[2] = @"displayTitle";
          v31 = [v10 displayTitle];
          v39[2] = v31;
          v38[3] = @"lastModifiedTS";
          v11 = MEMORY[0x277CCABB0];
          v30 = [v10 lastModifiedDate];
          [v30 timeIntervalSinceReferenceDate];
          v29 = [v11 numberWithDouble:?];
          v39[3] = v29;
          v38[4] = @"hour";
          v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "hour")}];
          v39[4] = v12;
          v38[5] = @"minute";
          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "minute")}];
          v39[5] = v13;
          v38[6] = @"isEnabled";
          v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "isEnabled")}];
          v39[6] = v14;
          v38[7] = @"isRepeating";
          v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "repeats")}];
          v39[7] = v15;
          v39[8] = MEMORY[0x277CBEC38];
          v38[8] = @"playsOnThisDevice";
          v38[9] = @"isSleepAlarm";
          v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "isSleepAlarm")}];
          v39[9] = v16;
          v38[10] = @"bedtimeHour";
          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "bedtimeHour")}];
          v39[10] = v17;
          v38[11] = @"bedtimeMinute";
          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "bedtimeMinute")}];
          v39[11] = v18;
          v38[12] = @"bedtimeReminderMinutes";
          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "bedtimeReminderMinutes")}];
          v39[12] = v19;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:13];
          [v27 addObject:v20];
        }

        v28 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v28);
    }

    a1 = v23;
    v5 = v24;
    v21 = *(*(v23 + 40) + 8);
    v7 = *(v21 + 40);
    *(v21 + 40) = v27;
    v6 = v22;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __63__ATXAlarmsDataSource_alarmsFromDate_toDate_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __63__ATXAlarmsDataSource_alarmsFromDate_toDate_completionHandler___block_invoke_2_cold_1(v2);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:1 userInfo:MEMORY[0x277CBEC10]];
  (*(v3 + 16))(v3, 0, v4);
}

void __63__ATXAlarmsDataSource_alarmsFromDate_toDate_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_ERROR, "Fetching alarms failed: %@", &v2, 0xCu);
}

@end