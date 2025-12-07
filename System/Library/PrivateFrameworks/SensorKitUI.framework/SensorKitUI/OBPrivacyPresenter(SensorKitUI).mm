@interface OBPrivacyPresenter(SensorKitUI)
+ (void)srui_presenterForPrivacySplash;
@end

@implementation OBPrivacyPresenter(SensorKitUI)

+ (void)srui_presenterForPrivacySplash
{
  v6 = *MEMORY[0x277D85DE8];
  result = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.sensorusage"];
  if (!result)
  {
    if (qword_28001A2F8 != -1)
    {
      dispatch_once(&qword_28001A2F8, &__block_literal_global_3);
    }

    v1 = _MergedGlobals_8;
    if (os_log_type_enabled(_MergedGlobals_8, OS_LOG_TYPE_FAULT))
    {
      v2 = 138543618;
      v3 = @"com.apple.onboarding.sensorusage";
      v4 = 2114;
      v5 = 0;
      _os_log_fault_impl(&dword_265602000, v1, OS_LOG_TYPE_FAULT, "Failed to find privacy splash %{public}@ because %{public}@", &v2, 0x16u);
    }

    return 0;
  }

  return result;
}

@end