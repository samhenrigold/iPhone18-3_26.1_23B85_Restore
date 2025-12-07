@interface BBDataProviderSetClearedInfo
@end

@implementation BBDataProviderSetClearedInfo

void ___BBDataProviderSetClearedInfo_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = BBLogGeneral;
  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_241EFF000, v2, OS_LOG_TYPE_DEFAULT, "BBDataProvider: Set cleared info for section %{public}@ to %{public}@", &v6, 0x16u);
  }

  v5 = objc_autoreleasePoolPush();
  [__server _saveUpdatedClearedInfo:*(a1 + 40) forSectionID:*(a1 + 32)];
  objc_autoreleasePoolPop(v5);
}

@end