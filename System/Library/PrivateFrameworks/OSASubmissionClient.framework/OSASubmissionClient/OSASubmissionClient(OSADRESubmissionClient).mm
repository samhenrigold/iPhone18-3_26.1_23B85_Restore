@interface OSASubmissionClient(OSADRESubmissionClient)
- (void)overrideMountPath;
@end

@implementation OSASubmissionClient(OSADRESubmissionClient)

- (void)overrideMountPath
{
  *buf = 136315394;
  *(buf + 4) = "com.apple.osanalytics.osanalyticshelper";
  *(buf + 6) = 2080;
  *(buf + 14) = self;
  _os_log_error_impl(&dword_25D125000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Connection error to %s: %s", buf, 0x16u);
}

- (void)submitDRETelemetryAndDiagnostics:()OSADRESubmissionClient .cold.2(void *a1)
{
  v6 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

@end