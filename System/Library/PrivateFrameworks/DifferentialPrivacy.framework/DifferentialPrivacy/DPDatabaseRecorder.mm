@interface DPDatabaseRecorder
@end

@implementation DPDatabaseRecorder

void __46___DPDatabaseRecorder_recordNumbers_metadata___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = +[_DPLog framework];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __46___DPDatabaseRecorder_recordNumbers_metadata___block_invoke_cold_1();
    }

    [*(a1 + 32) credit:*(a1 + 40) amount:*(a1 + 56)];
  }
}

void __53___DPDatabaseRecorder_recordNumbersVectors_metadata___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = +[_DPLog framework];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __46___DPDatabaseRecorder_recordNumbers_metadata___block_invoke_cold_1();
    }

    [*(a1 + 32) credit:*(a1 + 40) amount:*(a1 + 56)];
  }
}

void __48___DPDatabaseRecorder_recordBitValues_metadata___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = +[_DPLog framework];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __46___DPDatabaseRecorder_recordNumbers_metadata___block_invoke_cold_1();
    }

    [*(a1 + 32) credit:*(a1 + 40) amount:*(a1 + 56)];
  }
}

void __49___DPDatabaseRecorder_recordBitVectors_metadata___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = +[_DPLog framework];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __46___DPDatabaseRecorder_recordNumbers_metadata___block_invoke_cold_1();
    }

    [*(a1 + 32) credit:*(a1 + 40) amount:*(a1 + 56)];
  }
}

void __51___DPDatabaseRecorder_recordFloatVectors_metadata___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = +[_DPLog framework];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __46___DPDatabaseRecorder_recordNumbers_metadata___block_invoke_cold_1();
    }

    [*(a1 + 32) credit:*(a1 + 40) amount:*(a1 + 56)];
  }
}

uint64_t __46___DPDatabaseRecorder_recordStrings_metadata___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) blacklistSet];
  v5 = [v4 containsObject:v3];

  if (v5)
  {
    v6 = +[_DPLog daemon];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __46___DPDatabaseRecorder_recordStrings_metadata___block_invoke_cold_1();
    }
  }

  return v5;
}

void __46___DPDatabaseRecorder_recordStrings_metadata___block_invoke_33(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = +[_DPLog framework];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __46___DPDatabaseRecorder_recordNumbers_metadata___block_invoke_cold_1();
    }

    [*(a1 + 32) credit:*(a1 + 40) amount:*(a1 + 56)];
  }
}

void __46___DPDatabaseRecorder_recordNumbers_metadata___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = OUTLINED_FUNCTION_7(v0);
  v2 = NSStringFromSelector(v1);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __46___DPDatabaseRecorder_recordStrings_metadata___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_22622D000, v0, OS_LOG_TYPE_DEBUG, "%@ : was in the do-not-send list : not recording in DB", v1, 0xCu);
}

@end