@interface PKImageWandOnboarding
+ (uint64_t)hasSeenOnboardingUI;
+ (void)setHasSeenOnboardingUI:(uint64_t)i;
@end

@implementation PKImageWandOnboarding

+ (void)setHasSeenOnboardingUI:(uint64_t)i
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  if (_os_feature_enabled_impl() && !PKIsDeviceLocked() && (([MEMORY[0x1E696AAE8] mainBundle], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "bundleIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", @"com.apple.mobilenotes"), v5, v4, v6) && !PKIsQuickNoteOnPhone() || (PKIsInternalTestApp() & 1) != 0))
  {
    if (+[(PKImageWandOnboarding *)v3]== a2)
    {
      return;
    }

    v7 = os_log_create("com.apple.pencilkit", "PKImageWandOnboarding");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = a2;
      _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Set hasSeenOnboardingUI to %{BOOL}d", v10, 8u);
    }

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults setBool:a2 forKey:@"PKHasSeenImageWandOnboardingUI"];

    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults2 synchronize];
  }

  else
  {
    standardUserDefaults2 = os_log_create("com.apple.pencilkit", "PKImageWandOnboarding");
    if (os_log_type_enabled(standardUserDefaults2, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10[0]) = 0;
    }
  }
}

+ (uint64_t)hasSeenOnboardingUI
{
  objc_opt_self();
  if (!_os_feature_enabled_impl() || PKIsDeviceLocked())
  {
    return 0;
  }

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.mobilenotes"];

  if ((!v3 || PKIsQuickNoteOnPhone()) && !PKIsInternalTestApp())
  {
    return 0;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [standardUserDefaults BOOLForKey:@"PKHasSeenImageWandOnboardingUI"];

  return v5;
}

@end