@interface ViewfinderErrorReporter
+ (void)_logError:(id)error;
+ (void)report:(int64_t)report status:(int)status;
@end

@implementation ViewfinderErrorReporter

+ (void)report:(int64_t)report status:(int)status
{
  v4 = *&status;
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = [ViewfinderErrorReport alloc];
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = [(ViewfinderErrorReport *)v7 initWithCode:report status:v4 date:v8];

  [self _logError:v9];
  v10 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ViewfinderErrorReporter_report_status___block_invoke;
  block[3] = &__block_descriptor_44_e5_v8__0l;
  block[4] = report;
  v14 = v4;
  dispatch_async(v10, block);

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v15 = @"ErrorReport";
  v16[0] = v9;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [defaultCenter postNotificationName:@"ViewfinderErrorReporterDidReportErrorNotification" object:0 userInfo:v12];
}

id __41__ViewfinderErrorReporter_report_status___block_invoke_2(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"code";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v6[1] = @"status";
  v7[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (void)_logError:(id)error
{
  errorCopy = error;
  if (_logError__onceToken != -1)
  {
    +[ViewfinderErrorReporter _logError:];
  }

  v4 = _logError__log;
  if (os_log_type_enabled(_logError__log, OS_LOG_TYPE_ERROR))
  {
    [(ViewfinderErrorReporter *)v4 _logError:errorCopy];
  }
}

uint64_t __37__ViewfinderErrorReporter__logError___block_invoke()
{
  _logError__log = os_log_create("com.apple.NanoCamera", "ViewfinderErrorReporter");

  return MEMORY[0x2821F96F8]();
}

+ (void)_logError:(void *)a1 .cold.2(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 loggingDescription];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_243CBC000, v3, OS_LOG_TYPE_ERROR, "Reporting error %@", &v5, 0xCu);
}

@end