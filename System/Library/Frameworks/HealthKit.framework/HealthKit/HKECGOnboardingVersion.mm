@interface HKECGOnboardingVersion
+ (unint64_t)newestAvailableVersion;
@end

@implementation HKECGOnboardingVersion

+ (unint64_t)newestAvailableVersion
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = +[_HKBehavior isAppleInternalInstall];
  if (v2)
  {
    hk_heartRhythmDefaults = [MEMORY[0x1E695E000] hk_heartRhythmDefaults];
    v5 = [hk_heartRhythmDefaults objectForKey:@"ECGOnboardingVersionOverrideKey"];

    unsignedIntegerValue = [v5 unsignedIntegerValue];
    if (unsignedIntegerValue)
    {
      _HKInitializeLogging(unsignedIntegerValue, v7);
      v8 = HKLogHeartRhythm;
      if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        v13 = 136446466;
        v14 = "+[HKECGOnboardingVersion newestAvailableVersion]";
        v15 = 1024;
        unsignedIntegerValue2 = [v5 unsignedIntegerValue];
        _os_log_impl(&dword_19197B000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}s] Apply override onboarding version: %i", &v13, 0x12u);
      }

      unsignedIntegerValue3 = [v5 unsignedIntegerValue];

      return unsignedIntegerValue3;
    }
  }

  _HKInitializeLogging(v2, v3);
  v11 = HKLogHeartRhythm;
  unsignedIntegerValue3 = 4;
  if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136446466;
    v14 = "+[HKECGOnboardingVersion newestAvailableVersion]";
    v15 = 1024;
    unsignedIntegerValue2 = 4;
    _os_log_impl(&dword_19197B000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}s] Newest available version: %i", &v13, 0x12u);
  }

  return unsignedIntegerValue3;
}

@end