@interface DPReportFileManager
@end

@implementation DPReportFileManager

void __46___DPReportFileManager_reportsNotYetSubmitted__block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = +[_DPLog framework];
  v10 = v9;
  if (a2)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __46___DPReportFileManager_reportsNotYetSubmitted__block_invoke_cold_2(v7, v10);
    }

    v11 = *(*(a1 + 40) + 8);
    v12 = v7;
    v10 = *(v11 + 40);
    *(v11 + 40) = v12;
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __46___DPReportFileManager_reportsNotYetSubmitted__block_invoke_cold_1(a1);
  }
}

void __38___DPReportFileManager_retireReports___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = +[_DPLog framework];
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __38___DPReportFileManager_retireReports___block_invoke_cold_2(a1, v7);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __46___DPReportFileManager_reportsNotYetSubmitted__block_invoke_cold_1(a1);
  }
}

void __46___DPReportFileManager_reportsNotYetSubmitted__block_invoke_cold_1(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = *(a1 + 48);
  v4 = v2;
  v5 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_22622D000, v6, v7, "%@ : %@ : error %@", v8, v9, v10, v11);
}

void __46___DPReportFileManager_reportsNotYetSubmitted__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_22622D000, a2, OS_LOG_TYPE_DEBUG, "reportsNotYetSubmittedWithReply: %@", &v2, 0xCu);
}

void __38___DPReportFileManager_retireReports___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_22622D000, a2, OS_LOG_TYPE_DEBUG, "retireReports: %@", &v3, 0xCu);
}

@end