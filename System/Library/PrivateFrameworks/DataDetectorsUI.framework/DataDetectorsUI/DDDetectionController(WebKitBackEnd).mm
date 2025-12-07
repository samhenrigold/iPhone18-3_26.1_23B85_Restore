@interface DDDetectionController(WebKitBackEnd)
@end

@implementation DDDetectionController(WebKitBackEnd)

- (void)resetResultsForFrame:()WebKitBackEnd .cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[DDDetectionController(WebKitBackEnd) resetResultsForFrame:]"];
  [v1 handleFailureInFunction:v0 file:@"DDDetectionController+WebKit.m" lineNumber:77 description:@"Main thread violation"];
}

- (void)_resultForAnchor:()WebKitBackEnd forFrame:context:.cold.1(void *a1)
{
  v1 = [a1 scheme];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)_resultForURL:()WebKitBackEnd withResults:context:.cold.1(void *a1)
{
  v1 = [a1 scheme];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_resultForURL:()WebKitBackEnd withResults:context:.cold.2(void *a1)
{
  v1 = [a1 scheme];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end