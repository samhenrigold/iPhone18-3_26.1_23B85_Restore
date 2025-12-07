@interface PSMediaAnalysisProcessingTask
@end

@implementation PSMediaAnalysisProcessingTask

void __67___PSMediaAnalysisProcessingTask_executeTaskWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_PSLogging mediaAnalysisChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __67___PSMediaAnalysisProcessingTask_executeTaskWithCompletionHandler___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

void __67___PSMediaAnalysisProcessingTask_executeTaskWithCompletionHandler___block_invoke_239(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = +[_PSLogging mediaAnalysisChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) uuid];
    v6[0] = 67109378;
    v6[1] = a2;
    v7 = 2112;
    v8 = v5;
    _os_log_impl(&dword_1B5ED1000, v4, OS_LOG_TYPE_INFO, "%{BOOL}d, updated interaction %@ for media analysis", v6, 0x12u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
}

void __67___PSMediaAnalysisProcessingTask_executeTaskWithCompletionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_2(&dword_1B5ED1000, a2, a3, "XPC Error: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end