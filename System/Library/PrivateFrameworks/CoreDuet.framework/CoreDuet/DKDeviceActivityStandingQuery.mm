@interface DKDeviceActivityStandingQuery
@end

@implementation DKDeviceActivityStandingQuery

void __67___DKDeviceActivityStandingQuery_executeWithStorage_referenceDate___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[_CDLogging knowledgeChannel];
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __67___DKDeviceActivityStandingQuery_executeWithStorage_referenceDate___block_invoke_cold_2(a1, v7);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __67___DKDeviceActivityStandingQuery_executeWithStorage_referenceDate___block_invoke_cold_1(a1, v5, v7);
  }
}

void __67___DKDeviceActivityStandingQuery_executeWithStorage_referenceDate___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_191750000, log, OS_LOG_TYPE_ERROR, "Failed to update histogram for dayOfWeek %@, with error %@", &v4, 0x16u);
}

void __67___DKDeviceActivityStandingQuery_executeWithStorage_referenceDate___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_191750000, a2, OS_LOG_TYPE_DEBUG, "Succesfully updated histogram for dayOfWeek %@", &v3, 0xCu);
}

@end