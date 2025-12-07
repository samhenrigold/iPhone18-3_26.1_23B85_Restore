@interface CellularDataDiagnosticsSuiteController
- (void)start;
@end

@implementation CellularDataDiagnosticsSuiteController

- (void)start
{
  result = [(DKDiagnosticController *)self result];
  [result setStatusCode:&unk_2856154B8];

  v4 = objc_alloc_init(SpeedTestConfig);
  cellularTestStartRef = self->cellularTestStartRef;
  self->cellularTestStartRef = v4;

  v6 = self->cellularTestStartRef;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__CellularDataDiagnosticsSuiteController_start__block_invoke;
  v7[3] = &unk_278DAE570;
  v7[4] = self;
  [(SpeedTestConfig *)v6 startDownloadTest:v7];
}

void *__47__CellularDataDiagnosticsSuiteController_start__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = DiagnosticsKitLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_24335C000, v2, OS_LOG_TYPE_INFO, "CellularThroughput: speed test passed", &v8, 2u);
  }

  v3 = [*(a1 + 32) result];
  [v3 setStatusCode:&unk_2856154D0];

  v4 = DiagnosticsKitLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) result];
    v6 = [v5 statusCode];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_24335C000, v4, OS_LOG_TYPE_INFO, "CellularThroughput: status code: %@", &v8, 0xCu);
  }

  result = [*(a1 + 32) isCancelled];
  if ((result & 1) == 0)
  {
    return [*(a1 + 32) setFinished:1];
  }

  return result;
}

@end