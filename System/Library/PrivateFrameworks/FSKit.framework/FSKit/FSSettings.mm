@interface FSSettings
+ (id)defaultSettings;
- (NSURL)enabledModulesArray;
- (NSURL)probeOrderArray;
- (NSURL)settingsContainer;
@end

@implementation FSSettings

+ (id)defaultSettings
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__FSSettings_defaultSettings__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultSettings_onceToken != -1)
  {
    dispatch_once(&defaultSettings_onceToken, block);
  }

  v2 = defaultSettings_def;

  return v2;
}

uint64_t __29__FSSettings_defaultSettings__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = defaultSettings_def;
  defaultSettings_def = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (NSURL)settingsContainer
{
  if (settingsContainer_onceToken != -1)
  {
    [FSSettings settingsContainer];
  }

  v3 = settingsContainer_containerURL;

  return v3;
}

void __31__FSSettings_settingsContainer__block_invoke()
{
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = [v0 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.fskit.settings"];
  v2 = settingsContainer_containerURL;
  settingsContainer_containerURL = v1;

  if (settingsContainer_containerURL)
  {
    v10 = 0;
    v3 = [settingsContainer_containerURL path];
    v4 = [v0 fileExistsAtPath:v3 isDirectory:&v10];

    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v9 = 0;
      v6 = [v0 createDirectoryAtURL:settingsContainer_containerURL withIntermediateDirectories:1 attributes:0 error:&v9];
      v7 = v9;
      v5 = v7;
      if ((v6 & 1) == 0)
      {
        v8 = fskit_std_log(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __31__FSSettings_settingsContainer__block_invoke_cold_1(v5, v8);
        }
      }
    }
  }
}

- (NSURL)probeOrderArray
{
  settingsContainer = [(FSSettings *)self settingsContainer];
  v3 = [settingsContainer URLByAppendingPathComponent:@"probeOrder.plist" isDirectory:0];

  return v3;
}

- (NSURL)enabledModulesArray
{
  settingsContainer = [(FSSettings *)self settingsContainer];
  v3 = [settingsContainer URLByAppendingPathComponent:@"enabledModules.plist" isDirectory:0];

  return v3;
}

void __31__FSSettings_settingsContainer__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24A929000, a2, OS_LOG_TYPE_ERROR, "Error creating container: %@", &v2, 0xCu);
}

@end