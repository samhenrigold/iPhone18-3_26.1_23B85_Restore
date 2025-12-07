@interface PTTraceConfig(ControlCenter)
+ (void)globalSettingsAreLocked;
@end

@implementation PTTraceConfig(ControlCenter)

+ (void)globalSettingsAreLocked
{
  v8 = *MEMORY[0x277D85DE8];
  localizedDescription = [self localizedDescription];
  v4 = localizedDescription;
  v5 = @"Unknown";
  if (localizedDescription)
  {
    v5 = localizedDescription;
  }

  v6 = 138543362;
  v7 = v5;
  _os_log_error_impl(&dword_25E3D3000, a2, OS_LOG_TYPE_ERROR, "Failed to get global settings, so defaulting to unlocked. Passive config error: %{public}@", &v6, 0xCu);
}

@end