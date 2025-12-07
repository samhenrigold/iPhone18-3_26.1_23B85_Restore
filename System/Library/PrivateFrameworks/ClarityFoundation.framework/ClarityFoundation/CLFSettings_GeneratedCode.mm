@interface CLFSettings_GeneratedCode
+ (CLFSettings)sharedInstance;
+ (id)allPreferenceSelectorsAsStrings;
- (CLFSettings_GeneratedCode)init;
- (NSArray)applicationBundleIdentifiers;
- (NSArray)overrideNonClarityApplicationBundleIdentifiers;
- (NSString)adminPasscodeRecoveryAppleID;
- (NSString)listLayout;
- (NSString)restartReason;
- (void)setAllowAccessibilityShortcut:(BOOL)shortcut;
- (void)setAllowSiri:(BOOL)siri;
- (void)setBatteryMonitoringEnabled:(BOOL)enabled;
- (void)setEmergencyKeypadEnabled:(BOOL)enabled;
- (void)setFullScreenCompatibilityMode:(BOOL)mode;
- (void)setHasMigratedFileProtections:(BOOL)protections;
- (void)setLockScreenClockEnabled:(BOOL)enabled;
- (void)setLockScreenDateEnabled:(BOOL)enabled;
- (void)setNotificationsEnabled:(BOOL)enabled;
- (void)setOneTapUnlock:(BOOL)unlock;
- (void)setRestrictPhoneCall:(BOOL)call;
- (void)setShouldShowTripleClickInstructions:(BOOL)instructions;
- (void)setShowTimeInStatusBar:(BOOL)bar;
- (void)setSilentModeToggleEnabled:(BOOL)enabled;
- (void)setVolumeButtonsEnabled:(BOOL)enabled;
@end

@implementation CLFSettings_GeneratedCode

+ (CLFSettings)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CLFSettings_GeneratedCode sharedInstance];
  }

  v3 = sharedInstance_SharedSettings;

  return v3;
}

- (CLFSettings_GeneratedCode)init
{
  v45.receiver = self;
  v45.super_class = CLFSettings_GeneratedCode;
  v2 = [(CLFBaseSettings *)&v45 init];
  v3 = v2;
  if (v2)
  {
    preferenceKeysBySelectorName = [(CLFBaseSettings *)v2 preferenceKeysBySelectorName];
    v5 = NSStringFromSelector(sel_adminPasscodeRecoveryAppleID);
    [preferenceKeysBySelectorName setObject:@"AdminPasscodeRecoveryAppleID" forKeyedSubscript:v5];

    preferenceKeysBySelectorName2 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v7 = NSStringFromSelector(sel_allowAccessibilityShortcut);
    [preferenceKeysBySelectorName2 setObject:@"AllowAccessibilityShortcut" forKeyedSubscript:v7];

    preferenceKeysBySelectorName3 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v9 = NSStringFromSelector(sel_allowSiri);
    [preferenceKeysBySelectorName3 setObject:@"AllowSiri" forKeyedSubscript:v9];

    preferenceKeysBySelectorName4 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v11 = NSStringFromSelector(sel_applicationBundleIdentifiers);
    [preferenceKeysBySelectorName4 setObject:@"ApplicationBundleIdentifiers" forKeyedSubscript:v11];

    preferenceKeysBySelectorName5 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v13 = NSStringFromSelector(sel_batteryMonitoringEnabled);
    [preferenceKeysBySelectorName5 setObject:@"BatteryMonitoringEnabled" forKeyedSubscript:v13];

    preferenceKeysBySelectorName6 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v15 = NSStringFromSelector(sel_emergencyKeypadEnabled);
    [preferenceKeysBySelectorName6 setObject:@"EmergencyKeypadEnabled" forKeyedSubscript:v15];

    preferenceKeysBySelectorName7 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v17 = NSStringFromSelector(sel_fullScreenCompatibilityMode);
    [preferenceKeysBySelectorName7 setObject:@"FullScreenCompatibilityMode" forKeyedSubscript:v17];

    preferenceKeysBySelectorName8 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v19 = NSStringFromSelector(sel_hasMigratedFileProtections);
    [preferenceKeysBySelectorName8 setObject:@"HasMigratedFileProtections" forKeyedSubscript:v19];

    preferenceKeysBySelectorName9 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v21 = NSStringFromSelector(sel_listLayout);
    [preferenceKeysBySelectorName9 setObject:@"ListLayout" forKeyedSubscript:v21];

    preferenceKeysBySelectorName10 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v23 = NSStringFromSelector(sel_lockScreenClockEnabled);
    [preferenceKeysBySelectorName10 setObject:@"LockScreenClockEnabled" forKeyedSubscript:v23];

    preferenceKeysBySelectorName11 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v25 = NSStringFromSelector(sel_lockScreenDateEnabled);
    [preferenceKeysBySelectorName11 setObject:@"LockScreenDateEnabled" forKeyedSubscript:v25];

    preferenceKeysBySelectorName12 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v27 = NSStringFromSelector(sel_notificationsEnabled);
    [preferenceKeysBySelectorName12 setObject:@"NotificationsEnabled" forKeyedSubscript:v27];

    preferenceKeysBySelectorName13 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v29 = NSStringFromSelector(sel_oneTapUnlock);
    [preferenceKeysBySelectorName13 setObject:@"OneTapUnlock" forKeyedSubscript:v29];

    preferenceKeysBySelectorName14 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v31 = NSStringFromSelector(sel_overrideNonClarityApplicationBundleIdentifiers);
    [preferenceKeysBySelectorName14 setObject:@"OverrideNonClarityApplicationBundleIdentifiers" forKeyedSubscript:v31];

    preferenceKeysBySelectorName15 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v33 = NSStringFromSelector(sel_restartReason);
    [preferenceKeysBySelectorName15 setObject:@"RestartReason" forKeyedSubscript:v33];

    preferenceKeysBySelectorName16 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v35 = NSStringFromSelector(sel_restrictPhoneCall);
    [preferenceKeysBySelectorName16 setObject:@"RestrictPhoneCall" forKeyedSubscript:v35];

    preferenceKeysBySelectorName17 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v37 = NSStringFromSelector(sel_shouldShowTripleClickInstructions);
    [preferenceKeysBySelectorName17 setObject:@"ShouldShowTripleClickInstructions" forKeyedSubscript:v37];

    preferenceKeysBySelectorName18 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v39 = NSStringFromSelector(sel_showTimeInStatusBar);
    [preferenceKeysBySelectorName18 setObject:@"ShowTimeInStatusBar" forKeyedSubscript:v39];

    preferenceKeysBySelectorName19 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v41 = NSStringFromSelector(sel_silentModeToggleEnabled);
    [preferenceKeysBySelectorName19 setObject:@"SilentModeToggleEnabled" forKeyedSubscript:v41];

    preferenceKeysBySelectorName20 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v43 = NSStringFromSelector(sel_volumeButtonsEnabled);
    [preferenceKeysBySelectorName20 setObject:@"VolumeButtonsEnabled" forKeyedSubscript:v43];
  }

  return v3;
}

+ (id)allPreferenceSelectorsAsStrings
{
  v27[20] = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = &OBJC_METACLASS___CLFSettings_GeneratedCode;
  v2 = objc_msgSendSuper2(&v26, sel_allPreferenceSelectorsAsStrings);
  v25 = NSStringFromSelector(sel_adminPasscodeRecoveryAppleID);
  v27[0] = v25;
  v24 = NSStringFromSelector(sel_allowAccessibilityShortcut);
  v27[1] = v24;
  v23 = NSStringFromSelector(sel_allowSiri);
  v27[2] = v23;
  v22 = NSStringFromSelector(sel_applicationBundleIdentifiers);
  v27[3] = v22;
  v21 = NSStringFromSelector(sel_batteryMonitoringEnabled);
  v27[4] = v21;
  v20 = NSStringFromSelector(sel_emergencyKeypadEnabled);
  v27[5] = v20;
  v19 = NSStringFromSelector(sel_fullScreenCompatibilityMode);
  v27[6] = v19;
  v18 = NSStringFromSelector(sel_hasMigratedFileProtections);
  v27[7] = v18;
  v17 = NSStringFromSelector(sel_listLayout);
  v27[8] = v17;
  v16 = NSStringFromSelector(sel_lockScreenClockEnabled);
  v27[9] = v16;
  v15 = NSStringFromSelector(sel_lockScreenDateEnabled);
  v27[10] = v15;
  v14 = NSStringFromSelector(sel_notificationsEnabled);
  v27[11] = v14;
  v3 = NSStringFromSelector(sel_oneTapUnlock);
  v27[12] = v3;
  v4 = NSStringFromSelector(sel_overrideNonClarityApplicationBundleIdentifiers);
  v27[13] = v4;
  v5 = NSStringFromSelector(sel_restartReason);
  v27[14] = v5;
  v6 = NSStringFromSelector(sel_restrictPhoneCall);
  v27[15] = v6;
  v7 = NSStringFromSelector(sel_shouldShowTripleClickInstructions);
  v27[16] = v7;
  v8 = NSStringFromSelector(sel_showTimeInStatusBar);
  v27[17] = v8;
  v9 = NSStringFromSelector(sel_silentModeToggleEnabled);
  v27[18] = v9;
  v10 = NSStringFromSelector(sel_volumeButtonsEnabled);
  v27[19] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:20];
  v13 = [v2 arrayByAddingObjectsFromArray:v11];

  return v13;
}

- (NSString)adminPasscodeRecoveryAppleID
{
  v3 = objc_opt_class();

  return [(AXBaseSettings *)self objectValueForPreferenceKey:@"AdminPasscodeRecoveryAppleID" ofClass:v3 defaultValue:0];
}

- (void)setAllowAccessibilityShortcut:(BOOL)shortcut
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:shortcut];
  [(AXBaseSettings *)self setValue:v4 forPreferenceKey:@"AllowAccessibilityShortcut"];
}

- (void)setAllowSiri:(BOOL)siri
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:siri];
  [(AXBaseSettings *)self setValue:v4 forPreferenceKey:@"AllowSiri"];
}

- (NSArray)applicationBundleIdentifiers
{
  v3 = objc_opt_class();
  v4 = MEMORY[0x1E695E0F0];

  return [(AXBaseSettings *)self objectValueForPreferenceKey:@"ApplicationBundleIdentifiers" ofClass:v3 defaultValue:v4];
}

- (void)setBatteryMonitoringEnabled:(BOOL)enabled
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:enabled];
  [(AXBaseSettings *)self setValue:v4 forPreferenceKey:@"BatteryMonitoringEnabled"];
}

- (void)setEmergencyKeypadEnabled:(BOOL)enabled
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:enabled];
  [(AXBaseSettings *)self setValue:v4 forPreferenceKey:@"EmergencyKeypadEnabled"];
}

- (void)setFullScreenCompatibilityMode:(BOOL)mode
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:mode];
  [(AXBaseSettings *)self setValue:v4 forPreferenceKey:@"FullScreenCompatibilityMode"];
}

- (void)setHasMigratedFileProtections:(BOOL)protections
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:protections];
  [(AXBaseSettings *)self setValue:v4 forPreferenceKey:@"HasMigratedFileProtections"];
}

- (NSString)listLayout
{
  v3 = objc_opt_class();

  return [(AXBaseSettings *)self objectValueForPreferenceKey:@"ListLayout" ofClass:v3 defaultValue:@"grid"];
}

- (void)setLockScreenClockEnabled:(BOOL)enabled
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:enabled];
  [(AXBaseSettings *)self setValue:v4 forPreferenceKey:@"LockScreenClockEnabled"];
}

- (void)setLockScreenDateEnabled:(BOOL)enabled
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:enabled];
  [(AXBaseSettings *)self setValue:v4 forPreferenceKey:@"LockScreenDateEnabled"];
}

- (void)setNotificationsEnabled:(BOOL)enabled
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:enabled];
  [(AXBaseSettings *)self setValue:v4 forPreferenceKey:@"NotificationsEnabled"];
}

- (void)setOneTapUnlock:(BOOL)unlock
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:unlock];
  [(AXBaseSettings *)self setValue:v4 forPreferenceKey:@"OneTapUnlock"];
}

- (NSArray)overrideNonClarityApplicationBundleIdentifiers
{
  v3 = objc_opt_class();
  v4 = MEMORY[0x1E695E0F0];

  return [(AXBaseSettings *)self objectValueForPreferenceKey:@"OverrideNonClarityApplicationBundleIdentifiers" ofClass:v3 defaultValue:v4];
}

- (NSString)restartReason
{
  v3 = objc_opt_class();

  return [(AXBaseSettings *)self objectValueForPreferenceKey:@"RestartReason" ofClass:v3 defaultValue:@"unknown"];
}

- (void)setRestrictPhoneCall:(BOOL)call
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:call];
  [(AXBaseSettings *)self setValue:v4 forPreferenceKey:@"RestrictPhoneCall"];
}

- (void)setShouldShowTripleClickInstructions:(BOOL)instructions
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:instructions];
  [(AXBaseSettings *)self setValue:v4 forPreferenceKey:@"ShouldShowTripleClickInstructions"];
}

- (void)setShowTimeInStatusBar:(BOOL)bar
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:bar];
  [(AXBaseSettings *)self setValue:v4 forPreferenceKey:@"ShowTimeInStatusBar"];
}

- (void)setSilentModeToggleEnabled:(BOOL)enabled
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:enabled];
  [(AXBaseSettings *)self setValue:v4 forPreferenceKey:@"SilentModeToggleEnabled"];
}

- (void)setVolumeButtonsEnabled:(BOOL)enabled
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:enabled];
  [(AXBaseSettings *)self setValue:v4 forPreferenceKey:@"VolumeButtonsEnabled"];
}

@end