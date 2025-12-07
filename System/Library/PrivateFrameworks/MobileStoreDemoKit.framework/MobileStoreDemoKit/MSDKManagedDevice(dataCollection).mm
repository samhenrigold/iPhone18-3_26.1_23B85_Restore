@interface MSDKManagedDevice(dataCollection)
- (void)getCurrentAppUsageSessionUUID;
@end

@implementation MSDKManagedDevice(dataCollection)

- (void)getCurrentAppUsageSessionUUID
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[MSDKManagedDevice(dataCollection) getCurrentAppUsageSessionUUID]";
  _os_log_error_impl(&dword_259B7D000, log, OS_LOG_TYPE_ERROR, "%s: Failed to setup XPC connection.", &v1, 0xCu);
}

- (void)collectAppUsageWithSessionStart:()dataCollection andEnd:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[MSDKManagedDevice(dataCollection) collectAppUsageWithSessionStart:andEnd:]";
  _os_log_error_impl(&dword_259B7D000, log, OS_LOG_TYPE_ERROR, "%s: Failed to setup XPC connection.", &v1, 0xCu);
}

@end