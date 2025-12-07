@interface ATXPeopleDiscovery
- (ATXPeopleDiscovery)init;
- (id)fetchPeopleWithProximityFromStartDate:(id)date toEndDate:(id)endDate;
@end

@implementation ATXPeopleDiscovery

- (ATXPeopleDiscovery)init
{
  v6.receiver = self;
  v6.super_class = ATXPeopleDiscovery;
  v2 = [(ATXPeopleDiscovery *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    routineManager = v2->_routineManager;
    v2->_routineManager = v3;
  }

  return v2;
}

- (id)fetchPeopleWithProximityFromStartDate:(id)date toEndDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__92;
  v34 = __Block_byref_object_dispose__92;
  v35 = objc_opt_new();
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__92;
  v28 = __Block_byref_object_dispose__92;
  v29 = 0;
  v8 = dispatch_semaphore_create(0);
  routineManager = self->_routineManager;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __70__ATXPeopleDiscovery_fetchPeopleWithProximityFromStartDate_toEndDate___block_invoke;
  v20[3] = &unk_27859E3B0;
  v22 = &v24;
  v23 = &v30;
  v10 = v8;
  v21 = v10;
  v11 = [(RTRoutineManager *)routineManager fetchProximityHistoryFromStartDate:dateCopy endDate:endDateCopy completionHandler:v20];
  if (v25[5])
  {
    v12 = __atxlog_handle_usage_insights(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ATXPeopleDiscovery fetchPeopleWithProximityFromStartDate:v12 toEndDate:?];
    }
  }

  v13 = v10;
  v14 = dispatch_time(0, 5000000000);
  v15 = dispatch_semaphore_wait(v13, v14);

  if (v15)
  {
    v17 = __atxlog_handle_usage_insights(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ATXPeopleDiscovery fetchPeopleWithProximityFromStartDate:v17 toEndDate:?];
    }

    bpsPublisher = 0;
  }

  else
  {
    bpsPublisher = [v31[5] bpsPublisher];
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return bpsPublisher;
}

void __70__ATXPeopleDiscovery_fetchPeopleWithProximityFromStartDate_toEndDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)fetchPeopleWithProximityFromStartDate:(os_log_t)log toEndDate:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[ATXPeopleDiscovery fetchPeopleWithProximityFromStartDate:toEndDate:]";
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "%s: Error fetching nearby people", &v1, 0xCu);
}

- (void)fetchPeopleWithProximityFromStartDate:(os_log_t)log toEndDate:.cold.2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[ATXPeopleDiscovery fetchPeopleWithProximityFromStartDate:toEndDate:]";
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "%s: Timed out waiting for proximity history semaphore", &v1, 0xCu);
}

@end