@interface CRSessionSilentModeStatus
- (BOOL)isDeviceSilentModeOn;
- (unint64_t)getCarPlaySilentModePreference;
- (void)setCarPlaySilentModePreference:(unint64_t)preference;
- (void)setDeviceSilentMode:(BOOL)mode reason:(id)reason;
@end

@implementation CRSessionSilentModeStatus

- (unint64_t)getCarPlaySilentModePreference
{
  v2 = CFPreferencesCopyAppValue(@"CRCarPlaySilentModePref", @"com.apple.CarPlayApp");
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

- (void)setCarPlaySilentModePreference:(unint64_t)preference
{
  v10 = *MEMORY[0x1E69E9840];
  getCarPlaySilentModePreference = [(CRSessionSilentModeStatus *)self getCarPlaySilentModePreference];
  if (getCarPlaySilentModePreference != preference)
  {
    v5 = CarSilentModeLogging(getCarPlaySilentModePreference);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"Unmuted";
      if (preference == 1)
      {
        v6 = @"Muted";
      }

      if (!preference)
      {
        v6 = @"Mirror iPhone";
      }

      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_DEFAULT, "CarPlay Silent Mode Preference changed: %{public}@", &v8, 0xCu);
    }

    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:preference];
    CFPreferencesSetAppValue(@"CRCarPlaySilentModePref", v7, @"com.apple.CarPlayApp");
  }
}

- (BOOL)isDeviceSilentModeOn
{
  mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedInstance];
  getSilentMode = [mEMORY[0x1E69AED10] getSilentMode];

  return getSilentMode;
}

- (void)setDeviceSilentMode:(BOOL)mode reason:(id)reason
{
  modeCopy = mode;
  v21 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69AED10];
  reasonCopy = reason;
  sharedInstance = [v6 sharedInstance];
  [sharedInstance setSilentMode:modeCopy untilTime:0 reason:reasonCopy clientType:8];

  isDeviceSilentModeOn = [(CRSessionSilentModeStatus *)self isDeviceSilentModeOn];
  v10 = isDeviceSilentModeOn;
  v11 = CarSilentModeLogging(isDeviceSilentModeOn);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"Unmuted";
    if (modeCopy)
    {
      v13 = @"Muted";
    }

    else
    {
      v13 = @"Unmuted";
    }

    if (v10)
    {
      v12 = @"Muted";
    }

    v15 = 138543874;
    v16 = v13;
    v17 = 2114;
    v18 = v12;
    if (v10 != modeCopy)
    {
      v14 = @"NO";
    }

    else
    {
      v14 = @"YES";
    }

    v19 = 2114;
    v20 = v14;
    _os_log_impl(&dword_1C81FC000, v11, OS_LOG_TYPE_DEFAULT, "Should have %{public}@ device. Device is %{public}@. Success: %{public}@", &v15, 0x20u);
  }
}

@end