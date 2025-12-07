@interface HUAccessoryHearingSettings
+ (id)sharedInstance;
- (BOOL)activeHearingProtectionAvailableForAddress:(id)address;
- (BOOL)activeHearingProtectionEnabledForAddress:(id)address;
- (NSDictionary)activeHearingProtectionAvailable;
- (NSDictionary)activeHearingProtectionEnabled;
- (void)logMessage:(id)message;
- (void)setActiveHearingProtectionAvailable:(BOOL)available forAddress:(id)address;
- (void)setActiveHearingProtectionEnabled:(BOOL)enabled forAddress:(id)address;
@end

@implementation HUAccessoryHearingSettings

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[HUAccessoryHearingSettings sharedInstance];
  }

  v3 = sharedInstance_Settings_0;

  return v3;
}

uint64_t __44__HUAccessoryHearingSettings_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(HUAccessoryHearingSettings);
  v1 = sharedInstance_Settings_0;
  sharedInstance_Settings_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (NSDictionary)activeHearingProtectionEnabled
{
  v3 = objc_opt_class();

  return [(HCSettings *)self objectValueForKey:@"activeHearingProtectionEnabled" withClass:v3 andDefaultValue:0];
}

- (void)logMessage:(id)message
{
  v7 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v4 = HCLogHearingProtection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = messageCopy;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "%@", &v5, 0xCu);
  }
}

- (NSDictionary)activeHearingProtectionAvailable
{
  v3 = objc_opt_class();

  return [(HCSettings *)self objectValueForKey:@"activeHearingProtectionAvailable" withClass:v3 andDefaultValue:0];
}

- (BOOL)activeHearingProtectionEnabledForAddress:(id)address
{
  addressCopy = address;
  if ([addressCopy length])
  {
    activeHearingProtectionEnabled = [(HUAccessoryHearingSettings *)self activeHearingProtectionEnabled];
    v6 = [activeHearingProtectionEnabled valueForKey:addressCopy];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      bOOLValue = [v6 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setActiveHearingProtectionEnabled:(BOOL)enabled forAddress:(id)address
{
  enabledCopy = enabled;
  addressCopy = address;
  if ([addressCopy length])
  {
    v6 = MEMORY[0x1E695DF90];
    activeHearingProtectionEnabled = [(HUAccessoryHearingSettings *)self activeHearingProtectionEnabled];
    v8 = [v6 dictionaryWithDictionary:activeHearingProtectionEnabled];

    v9 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
    [v8 setValue:v9 forKey:addressCopy];

    additionalInfoForPrefenceUpdate = [MEMORY[0x1E69A4558] additionalInfoForPrefenceUpdate];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", addressCopy, @"_UpdateInfo"];
    [v8 setValue:additionalInfoForPrefenceUpdate forKey:v11];

    [(HUAccessoryHearingSettings *)self setActiveHearingProtectionEnabled:v8];
  }
}

- (BOOL)activeHearingProtectionAvailableForAddress:(id)address
{
  v14 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  if ([addressCopy length])
  {
    activeHearingProtectionAvailable = [(HUAccessoryHearingSettings *)self activeHearingProtectionAvailable];
    v6 = HCLogHearingProtection();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = addressCopy;
      v12 = 2112;
      v13 = activeHearingProtectionAvailable;
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "Checking available for %@ = %@", &v10, 0x16u);
    }

    v7 = [activeHearingProtectionAvailable valueForKey:addressCopy];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      bOOLValue = [v7 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setActiveHearingProtectionAvailable:(BOOL)available forAddress:(id)address
{
  availableCopy = available;
  addressCopy = address;
  if ([addressCopy length])
  {
    v6 = MEMORY[0x1E695DF90];
    activeHearingProtectionAvailable = [(HUAccessoryHearingSettings *)self activeHearingProtectionAvailable];
    v8 = [v6 dictionaryWithDictionary:activeHearingProtectionAvailable];

    v9 = [MEMORY[0x1E696AD98] numberWithBool:availableCopy];
    [v8 setValue:v9 forKey:addressCopy];

    [(HUAccessoryHearingSettings *)self setActiveHearingProtectionAvailable:v8];
  }
}

@end