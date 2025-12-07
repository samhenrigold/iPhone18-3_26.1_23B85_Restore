@interface MTRPluginPBMDeviceNodeDownloadDiagnosticLog(Helpers)
@end

@implementation MTRPluginPBMDeviceNodeDownloadDiagnosticLog(Helpers)

+ (void)urlFromResponsePayload:()Helpers error:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6[0] = 67109634;
  v6[1] = getuid();
  v7 = 2114;
  v8 = a2;
  v9 = 2114;
  v10 = a3;
  _os_log_error_impl(&dword_25830F000, v5, OS_LOG_TYPE_ERROR, "Failed to create daemon cache directory for user %d at %{public}@: %{public}@", v6, 0x1Cu);
}

+ (void)urlFromResponsePayload:()Helpers error:.cold.4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_25830F000, a2, OS_LOG_TYPE_ERROR, "%@ Failed to create diagnostic log directory", &v2, 0xCu);
}

+ (void)urlFromResponsePayload:()Helpers error:.cold.5(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_25830F000, a2, OS_LOG_TYPE_ERROR, "%@ Failed to convert response payload into data format", &v2, 0xCu);
}

@end