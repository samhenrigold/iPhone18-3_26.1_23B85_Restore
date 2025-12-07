@interface MSDKManagedDevice(ClearSafariHistory)
- (void)clearCurrentSafariHistory;
@end

@implementation MSDKManagedDevice(ClearSafariHistory)

- (void)clearCurrentSafariHistory
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[MSDKManagedDevice(ClearSafariHistory) clearCurrentSafariHistory]";
  _os_log_error_impl(&dword_259B7D000, log, OS_LOG_TYPE_ERROR, "%s - Failed to setup XPC connection.", &v1, 0xCu);
}

@end