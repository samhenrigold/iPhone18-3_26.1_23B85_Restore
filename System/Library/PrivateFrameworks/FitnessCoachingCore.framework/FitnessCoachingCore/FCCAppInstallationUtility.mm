@interface FCCAppInstallationUtility
- (BOOL)fitnessAppInstalled;
- (void)fitnessAppInstalled;
@end

@implementation FCCAppInstallationUtility

- (BOOL)fitnessAppInstalled
{
  v10 = 0;
  v2 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:@"com.apple.Fitness" allowPlaceholder:0 error:&v10];
  v3 = v10;
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    applicationState = [v2 applicationState];
    isInstalled = [applicationState isInstalled];
  }

  else
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
    {
      [(FCCAppInstallationUtility *)v4 fitnessAppInstalled];
    }

    isInstalled = 0;
  }

  return isInstalled;
}

- (void)fitnessAppInstalled
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_24B53B000, a2, OS_LOG_TYPE_ERROR, "Error creating application record %@", &v2, 0xCu);
}

@end