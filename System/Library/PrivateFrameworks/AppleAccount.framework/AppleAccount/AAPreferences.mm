@interface AAPreferences
+ (BOOL)disableADPStateHealing;
+ (BOOL)isCustomHealthCheckIntervalEnabled;
+ (BOOL)isCustomMaintenanceIntervalEnabled;
+ (BOOL)isExperimentalModeEnabled;
+ (BOOL)isHealthCheckTTREnabled;
+ (BOOL)isLCInviteAcceptanceEnabled;
+ (BOOL)isMomentsDataclassEnabled;
+ (BOOL)isMultipleFullAccountsEnabled;
+ (BOOL)isRunningInStoreDemoMode;
+ (BOOL)isSimulateUnhealthyCustodianEnabled;
+ (BOOL)shouldSkipIdMSFinalizeCustodian;
+ (BOOL)shouldSkipIdMSKeyUpdate;
+ (BOOL)shouldSkipRecoveryInfoRecordStorage;
+ (BOOL)simulate2FAFA;
+ (id)getCustodianInfo;
+ (void)isMultipleFullAccountsEnabled;
+ (void)setCustodianInfo:(id)info;
+ (void)setCustomHealthCheckIntervalEnabled:(BOOL)enabled;
+ (void)setCustomHealthCheckIntervalMinutes:(int64_t)minutes;
+ (void)setCustomHealthCheckVersion:(int64_t)version;
+ (void)setCustomHealthFailureReachabilityIntervalMinutes:(int64_t)minutes;
+ (void)setCustomMaintenanceIntervalEnabled:(BOOL)enabled;
+ (void)setCustomMaintenanceIntervalMinutes:(int64_t)minutes;
+ (void)setDisableADPStateHealing:(BOOL)healing;
+ (void)setExperimentalModeEnabled:(BOOL)enabled;
+ (void)setHealthCheckTTREnabled:(BOOL)enabled;
+ (void)setLCInviteAcceptanceEnabled:(BOOL)enabled;
+ (void)setMultipleFullAccountsEnabled:(BOOL)enabled;
+ (void)setNeverSkipCustodianCheckEnabled:(BOOL)enabled;
+ (void)setShouldShowAccountContacts:(BOOL)contacts;
+ (void)setShouldUseUnifiedLoginEndpoint:(BOOL)endpoint;
+ (void)setSimulateUnhealthyCustodianEnabled:(BOOL)enabled;
@end

@implementation AAPreferences

+ (BOOL)isMultipleFullAccountsEnabled
{
  AppBooleanValue = [MEMORY[0x1E6985E20] isInternalBuild];
  if (AppBooleanValue)
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AAMultipleFullAccounts", @"com.apple.appleaccount", 0);
    v3 = AppBooleanValue != 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = _AALogSystem(AppBooleanValue);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[(AAPreferences *)v3];
  }

  return v3;
}

+ (void)setMultipleFullAccountsEnabled:(BOOL)enabled
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:enabled];

  CFPreferencesSetAppValue(@"AAMultipleFullAccounts", v3, @"com.apple.appleaccount");
}

+ (void)setShouldUseUnifiedLoginEndpoint:(BOOL)endpoint
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:!endpoint];

  CFPreferencesSetAppValue(@"AAUseLegacyLoginEndpoint", v3, @"com.apple.appleaccount");
}

+ (void)setShouldShowAccountContacts:(BOOL)contacts
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:contacts];

  CFPreferencesSetAppValue(@"AAShowAccountContacts", v3, @"com.apple.appleaccount");
}

+ (BOOL)isRunningInStoreDemoMode
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"com.apple.demo-settings", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

+ (BOOL)isExperimentalModeEnabled
{
  isInternalBuild = [MEMORY[0x1E6985E20] isInternalBuild];
  if (isInternalBuild)
  {
    LOBYTE(isInternalBuild) = CFPreferencesGetAppBooleanValue(@"AAExperimentalMode", @"com.apple.appleaccount", 0) != 0;
  }

  return isInternalBuild;
}

+ (void)setExperimentalModeEnabled:(BOOL)enabled
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:enabled];

  CFPreferencesSetAppValue(@"AAExperimentalMode", v3, @"com.apple.appleaccount");
}

+ (BOOL)isHealthCheckTTREnabled
{
  if (CFPreferencesGetAppBooleanValue(@"AADisableHealthCheckTTR", @"com.apple.appleaccount", 0))
  {
    return 0;
  }

  v3 = MEMORY[0x1E6985E20];

  return [v3 isInternalBuild];
}

+ (void)setHealthCheckTTREnabled:(BOOL)enabled
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:!enabled];

  CFPreferencesSetAppValue(@"AADisableHealthCheckTTR", v3, @"com.apple.appleaccount");
}

+ (BOOL)isSimulateUnhealthyCustodianEnabled
{
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AASimulateUnhealthyCustodian", @"com.apple.appleaccount", 0);
  if (AppBooleanValue)
  {
    v3 = MEMORY[0x1E6985E20];

    LOBYTE(AppBooleanValue) = [v3 isInternalBuild];
  }

  return AppBooleanValue;
}

+ (void)setSimulateUnhealthyCustodianEnabled:(BOOL)enabled
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:enabled];

  CFPreferencesSetAppValue(@"AASimulateUnhealthyCustodian", v3, @"com.apple.appleaccount");
}

+ (BOOL)isCustomHealthCheckIntervalEnabled
{
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AACustomHealthCheckIntervalEnabled", @"com.apple.appleaccount", 0);
  if (AppBooleanValue)
  {
    v3 = MEMORY[0x1E6985E20];

    LOBYTE(AppBooleanValue) = [v3 isInternalBuild];
  }

  return AppBooleanValue;
}

+ (void)setCustomHealthCheckIntervalEnabled:(BOOL)enabled
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:enabled];

  CFPreferencesSetAppValue(@"AACustomHealthCheckIntervalEnabled", v3, @"com.apple.appleaccount");
}

+ (void)setNeverSkipCustodianCheckEnabled:(BOOL)enabled
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:enabled];

  CFPreferencesSetAppValue(@"AANeverSkipCustodianCheck", v3, @"com.apple.appleaccount");
}

+ (void)setCustomHealthCheckIntervalMinutes:(int64_t)minutes
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:minutes];

  CFPreferencesSetAppValue(@"AACustomHealthCheckIntervalMinutes", v3, @"com.apple.appleaccount");
}

+ (void)setCustomHealthFailureReachabilityIntervalMinutes:(int64_t)minutes
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:minutes];

  CFPreferencesSetAppValue(@"AACustomHealthCheckReachabilityIntervalMinutes", v3, @"com.apple.appleaccount");
}

+ (void)setCustomHealthCheckVersion:(int64_t)version
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:version];

  CFPreferencesSetAppValue(@"AACustomHealthCheckversion", v3, @"com.apple.appleaccount");
}

+ (BOOL)isCustomMaintenanceIntervalEnabled
{
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AACustomMaintenanceIntervalEnabled", @"com.apple.appleaccount", 0);
  if (AppBooleanValue)
  {
    v3 = MEMORY[0x1E6985E20];

    LOBYTE(AppBooleanValue) = [v3 isInternalBuild];
  }

  return AppBooleanValue;
}

+ (void)setCustomMaintenanceIntervalEnabled:(BOOL)enabled
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:enabled];

  CFPreferencesSetAppValue(@"AACustomMaintenanceIntervalEnabled", v3, @"com.apple.appleaccount");
}

+ (void)setCustomMaintenanceIntervalMinutes:(int64_t)minutes
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:minutes];

  CFPreferencesSetAppValue(@"AACustomMaintenanceIntervalMinutes", v3, @"com.apple.appleaccount");
}

+ (BOOL)isLCInviteAcceptanceEnabled
{
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AALCInviteAcceptance", @"com.apple.appleaccount", 0);
  if (AppBooleanValue)
  {
    v3 = MEMORY[0x1E6985E20];

    LOBYTE(AppBooleanValue) = [v3 isInternalBuild];
  }

  return AppBooleanValue;
}

+ (void)setLCInviteAcceptanceEnabled:(BOOL)enabled
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:enabled];

  CFPreferencesSetAppValue(@"AALCInviteAcceptance", v3, @"com.apple.appleaccount");
}

+ (BOOL)isMomentsDataclassEnabled
{
  if (![MEMORY[0x1E6985DD8] deviceIsiPad])
  {
    return 1;
  }

  return +[AAPreferences _os_feature_enabled_Journal_iPadOS];
}

+ (BOOL)shouldSkipIdMSKeyUpdate
{
  isInternalBuild = [MEMORY[0x1E6985E20] isInternalBuild];
  if (isInternalBuild)
  {
    LOBYTE(isInternalBuild) = CFPreferencesGetAppBooleanValue(@"AASkipIdMSKeyUpdate", @"com.apple.appleaccount", 0) != 0;
  }

  return isInternalBuild;
}

+ (BOOL)shouldSkipIdMSFinalizeCustodian
{
  isInternalBuild = [MEMORY[0x1E6985E20] isInternalBuild];
  if (isInternalBuild)
  {
    LOBYTE(isInternalBuild) = CFPreferencesGetAppBooleanValue(@"AASkipIdMSFinalizeCustodian", @"com.apple.appleaccount", 0) != 0;
  }

  return isInternalBuild;
}

+ (BOOL)shouldSkipRecoveryInfoRecordStorage
{
  isInternalBuild = [MEMORY[0x1E6985E20] isInternalBuild];
  if (isInternalBuild)
  {
    LOBYTE(isInternalBuild) = CFPreferencesGetAppBooleanValue(@"AASkipRecoveryInfoRecordStorage", @"com.apple.appleaccount", 0) != 0;
  }

  return isInternalBuild;
}

+ (void)setCustodianInfo:(id)info
{
  CFPreferencesSetAppValue(@"AACustodianInfo", info, @"com.apple.appleaccount");
  v3 = *MEMORY[0x1E695E8B8];
  v4 = *MEMORY[0x1E695E898];

  CFPreferencesSynchronize(@"com.apple.appleaccount", v3, v4);
}

+ (id)getCustodianInfo
{
  v2 = *MEMORY[0x1E695E8B8];
  v3 = *MEMORY[0x1E695E898];
  CFPreferencesSynchronize(@"com.apple.appleaccount", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v4 = CFPreferencesCopyValue(@"AACustodianInfo", @"com.apple.appleaccount", v2, v3);

  return v4;
}

+ (BOOL)simulate2FAFA
{
  isInternalBuild = [MEMORY[0x1E6985E20] isInternalBuild];
  if (isInternalBuild)
  {
    LOBYTE(isInternalBuild) = CFPreferencesGetAppBooleanValue(@"AASimulate2FAFA", @"com.apple.appleaccount", 0) != 0;
  }

  return isInternalBuild;
}

+ (BOOL)disableADPStateHealing
{
  v2 = +[AADeviceInfo isInternalBuild];
  if (v2)
  {
    LOBYTE(v2) = CFPreferencesGetAppBooleanValue(@"disableWalrusStatusMismatchDetectionEnabled", @"com.apple.appleaccount", 0) != 0;
  }

  return v2;
}

+ (void)setDisableADPStateHealing:(BOOL)healing
{
  healingCopy = healing;
  if (+[AADeviceInfo isInternalBuild])
  {
    CFPreferencesSetAppValue(@"disableWalrusStatusMismatchDetectionEnabled", [MEMORY[0x1E696AD98] numberWithBool:healingCopy], @"com.apple.appleaccount");
    v4 = *MEMORY[0x1E695E8B8];
    v5 = *MEMORY[0x1E695E898];

    CFPreferencesSynchronize(@"com.apple.appleaccount", v4, v5);
  }
}

+ (void)isMultipleFullAccountsEnabled
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = @"NO";
  if (self)
  {
    v2 = @"YES";
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_DEBUG, "AAPreferences: Multiple full accounts are enabled on this platform: %@", &v3, 0xCu);
}

@end