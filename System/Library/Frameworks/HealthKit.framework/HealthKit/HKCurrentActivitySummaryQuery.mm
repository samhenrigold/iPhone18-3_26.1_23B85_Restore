@interface HKCurrentActivitySummaryQuery
@end

@implementation HKCurrentActivitySummaryQuery

void __76___HKCurrentActivitySummaryQuery_client_deliverActivitySummaries_queryUUID___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 152));
  v3 = [*(a1 + 40) lastObject];
  v5 = v3;
  if (v2)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __76___HKCurrentActivitySummaryQuery_client_deliverActivitySummaries_queryUUID___block_invoke_2;
    v10[3] = &unk_1E7378458;
    v11 = v3;
    v8 = v2;
    v12 = *(a1 + 32);
    v13 = v8;
    [v6 queue_dispatchToClientForUUID:v7 shouldDeactivate:0 block:v10];
  }

  else
  {
    _HKInitializeLogging(v3, v4);
    v9 = HKLogQuery;
    if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_DEBUG))
    {
      __76___HKCurrentActivitySummaryQuery_client_deliverActivitySummaries_queryUUID___block_invoke_cold_1(v5, v9);
    }
  }
}

uint64_t __76___HKCurrentActivitySummaryQuery_client_deliverActivitySummaries_queryUUID___block_invoke_2(uint64_t a1, uint64_t a2)
{
  _HKInitializeLogging(a1, a2);
  v3 = HKLogQuery;
  if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_DEBUG))
  {
    __76___HKCurrentActivitySummaryQuery_client_deliverActivitySummaries_queryUUID___block_invoke_2_cold_1(a1, v3);
  }

  return (*(*(a1 + 48) + 16))();
}

void __76___HKCurrentActivitySummaryQuery_client_deliverActivitySummaries_queryUUID___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_19197B000, a2, OS_LOG_TYPE_DEBUG, "No update handler set. newActivitySummary: %@", &v2, 0xCu);
}

void __76___HKCurrentActivitySummaryQuery_client_deliverActivitySummaries_queryUUID___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_19197B000, a2, OS_LOG_TYPE_DEBUG, "Calling update handler with activitySummary: %@", &v3, 0xCu);
}

@end