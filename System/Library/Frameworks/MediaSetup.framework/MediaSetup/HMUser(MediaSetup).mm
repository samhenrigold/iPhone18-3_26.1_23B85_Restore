@interface HMUser(MediaSetup)
- (uint64_t)_settingForKeyPath:()MediaSetup home:;
@end

@implementation HMUser(MediaSetup)

- (uint64_t)_settingForKeyPath:()MediaSetup home:
{
  v6 = a3;
  bOOLValue = 0;
  if (v6 && a4)
  {
    v8 = [self userSettingsForHome:a4];
    settings = [v8 settings];
    v10 = settings;
    if (settings)
    {
      rootGroup = [settings rootGroup];
      v12 = findSettingWithKeyPath(v6, rootGroup);
      value = [v12 value];
      bOOLValue = [value BOOLValue];
    }

    else
    {
      v14 = _MSLogingFacility(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [HMUser(MediaSetup) _settingForKeyPath:v8 home:v14];
      }

      bOOLValue = 0;
    }
  }

  return bOOLValue;
}

- (void)_settingForKeyPath:()MediaSetup home:.cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138412546;
  v3 = a1;
  v4 = 2112;
  v5 = 0;
  _os_log_error_impl(&dword_23986C000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch HomeKit settings objects. settingsContainer: %@, settings: %@", &v2, 0x16u);
}

@end