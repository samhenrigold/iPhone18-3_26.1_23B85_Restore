@interface MSDKManagedDevice(PersistentStorage)
@end

@implementation MSDKManagedDevice(PersistentStorage)

- (void)getAppDataFolderPathWithReturnError:()PersistentStorage .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_259B7D000, a2, OS_LOG_TYPE_ERROR, "Failed to get document folder URL - Error:  %{public}@", &v4, 0xCu);
}

- (void)preserveAppDataToPersistentStorageWithReturnError:()PersistentStorage .cold.1(uint64_t a1, id *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [*a2 localizedDescription];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_259B7D000, a3, OS_LOG_TYPE_ERROR, "Failed to preserve app data from %{public}@ to persistent storage - Error:  %{public}@", &v6, 0x16u);
}

- (void)preserveAppDataToPersistentStorageWithReturnError:()PersistentStorage .cold.2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[MSDKManagedDevice(PersistentStorage) preserveAppDataToPersistentStorageWithReturnError:]";
  _os_log_error_impl(&dword_259B7D000, log, OS_LOG_TYPE_ERROR, "%s - Failed to setup XPC connection.", &v1, 0xCu);
}

@end