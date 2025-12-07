@interface BCSHousekeeper
- (BCSHousekeeper)initWithUserDefaults:(id)defaults currentVersion:(int64_t)version;
- (void)cleanupDataAtOldPathsIfNeeded;
@end

@implementation BCSHousekeeper

- (BCSHousekeeper)initWithUserDefaults:(id)defaults currentVersion:(int64_t)version
{
  defaultsCopy = defaults;
  v11.receiver = self;
  v11.super_class = BCSHousekeeper;
  v8 = [(BCSHousekeeper *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_userDefaults, defaults);
    v9->_currentVersion = version;
  }

  return v9;
}

- (void)cleanupDataAtOldPathsIfNeeded
{
  v11 = *MEMORY[0x277D85DE8];
  userDefaults = [(BCSHousekeeper *)self userDefaults];
  v4 = [userDefaults integerForKey:@"BCSHousekeepingCurrentVersion"];

  if (v4 >= [(BCSHousekeeper *)self currentVersion])
  {
    v5 = ABSLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v8 = "[BCSHousekeeper cleanupDataAtOldPathsIfNeeded]";
      v9 = 2048;
      v10 = v4;
      _os_log_impl(&dword_242072000, v5, OS_LOG_TYPE_DEFAULT, "%s Cleanup not needed. Last completed cleanup task number: %ld", buf, 0x16u);
    }
  }

  else
  {
    userDefaults2 = [(BCSHousekeeper *)self userDefaults];
    [userDefaults2 setInteger:-[BCSHousekeeper currentVersion](self forKey:{"currentVersion"), @"BCSHousekeepingCurrentVersion"}];
  }
}

@end