@interface TUUserConfiguration
+ (BOOL)isFilterAsNewCallersEnabledForFaceTime;
+ (BOOL)isFilterAsNewCallersEnabledForPhone;
+ (id)getBooleanFromUserDefaults:(id)defaults default:(id)default dataSource:(id)source;
+ (id)registeredDefaults;
+ (id)userDefaults;
- (BOOL)isBrandedCallingEnabled:(id)enabled;
- (BOOL)isBusinessConnectCallingEnabled;
- (BOOL)isCallHapticsEnabled;
- (BOOL)isCallRecordingEnabled;
- (BOOL)isCallScreeningEnabled;
- (BOOL)isEligibleForReceptionistOnboardingNotification;
- (BOOL)isFilterAsNewCallersEnabledForFaceTime;
- (BOOL)isFilterAsNewCallersEnabledForPhone;
- (BOOL)isHoldAssistDetectionEnabled;
- (BOOL)isReceptionistEnabled;
- (BOOL)isSilenceJunkCallingEnabled;
- (BOOL)isSilenceUnknownCallersEnabledForFaceTime;
- (BOOL)isSilenceUnknownCallersEnabledForPhone;
- (BOOL)isSpamFilterEnabledForFaceTime;
- (BOOL)isUplevelFTAEnabled;
- (TUUserConfiguration)init;
- (id)getBooleanFromUserDefaults:(id)defaults default:(id)default;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setBrandedCallingEnabled:(BOOL)enabled subscription:(id)subscription;
- (void)setBusinessConnectCallingEnabled:(BOOL)enabled;
- (void)setCallHapticsEnabled:(BOOL)enabled;
- (void)setCallRecordingEnabled:(BOOL)enabled;
- (void)setCallScreeningEnabled:(BOOL)enabled;
- (void)setEligibleForReceptionistOnboardingNotification:(BOOL)notification;
- (void)setFilterAsNewCallersEnabledForFaceTime:(BOOL)time;
- (void)setFilterAsNewCallersEnabledForPhone:(BOOL)phone;
- (void)setHoldAssistDetectionEnabled:(BOOL)enabled;
- (void)setReceptionistEnabled:(BOOL)enabled;
- (void)setSilenceJunkCallingEnabled:(BOOL)enabled;
- (void)setSilenceUnknownCallersEnabledForFaceTime:(BOOL)time;
- (void)setSilenceUnknownCallersEnabledForPhone:(BOOL)phone;
- (void)setSpamFilterEnabledForFaceTime:(BOOL)time;
- (void)setUplevelFTAEnabled:(BOOL)enabled;
- (void)setValueInUserDefaults:(id)defaults forKey:(id)key;
- (void)synchronize;
@end

@implementation TUUserConfiguration

- (TUUserConfiguration)init
{
  userDefaults = [objc_opt_class() userDefaults];
  v10.receiver = self;
  v10.super_class = TUUserConfiguration;
  v4 = [(TUConfiguration *)&v10 initWithDataSource:userDefaults];
  if (v4)
  {
    [userDefaults addObserver:v4 forKeyPath:@"announceCalls" options:0 context:&TUUserConfigurationKeyValueObserverContext];
    [userDefaults addObserver:v4 forKeyPath:@"conversationLinkBaseURL" options:0 context:&TUUserConfigurationKeyValueObserverContext];
    [userDefaults addObserver:v4 forKeyPath:@"simulateFatalPersistentStoreError" options:0 context:&TUUserConfigurationKeyValueObserverContext];
    [userDefaults addObserver:v4 forKeyPath:@"simulateInternationalCall" options:0 context:&TUUserConfigurationKeyValueObserverContext];
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v6 = dispatch_queue_create("TUConfigurationProviderQueue", v5);
    v7 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:v6];
    coreTelephonyClient = v4->_coreTelephonyClient;
    v4->_coreTelephonyClient = v7;
  }

  return v4;
}

void __35__TUUserConfiguration_userDefaults__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.TelephonyUtilities"];

  if (v4)
  {
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.TelephonyUtilities"];
  }

  v6 = userDefaults_sUserDefaults;
  userDefaults_sUserDefaults = v5;

  v7 = userDefaults_sUserDefaults;
  v8 = [*(a1 + 32) registeredDefaults];
  [v7 registerDefaults:v8];
}

+ (id)registeredDefaults
{
  if (registeredDefaults_onceToken != -1)
  {
    +[TUUserConfiguration registeredDefaults];
  }

  v3 = registeredDefaults_sRegisteredDefaults;

  return v3;
}

void __41__TUUserConfiguration_registeredDefaults__block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v2[0] = @"announceCalls";
  v2[1] = @"simulateFatalPersistentStoreError";
  v3[0] = &unk_1F09C5FC8;
  v3[1] = MEMORY[0x1E695E110];
  v2[2] = @"simulateInternationalCall";
  v3[2] = MEMORY[0x1E695E110];
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = registeredDefaults_sRegisteredDefaults;
  registeredDefaults_sRegisteredDefaults = v0;
}

+ (id)userDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__TUUserConfiguration_userDefaults__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (userDefaults_onceToken != -1)
  {
    dispatch_once(&userDefaults_onceToken, block);
  }

  v2 = userDefaults_sUserDefaults;

  return v2;
}

- (BOOL)isFilterAsNewCallersEnabledForFaceTime
{
  v2 = objc_opt_class();

  return [v2 isFilterAsNewCallersEnabledForFaceTime];
}

- (void)dealloc
{
  dataSource = [(TUConfiguration *)self dataSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [dataSource removeObserver:self forKeyPath:@"announceCalls" context:&TUUserConfigurationKeyValueObserverContext];
    [dataSource removeObserver:self forKeyPath:@"conversationLinkBaseURL" context:&TUUserConfigurationKeyValueObserverContext];
    [dataSource removeObserver:self forKeyPath:@"simulateFatalPersistentStoreError" context:&TUUserConfigurationKeyValueObserverContext];
    [dataSource removeObserver:self forKeyPath:@"simulateInternationalCall" context:&TUUserConfigurationKeyValueObserverContext];
  }

  v4.receiver = self;
  v4.super_class = TUUserConfiguration;
  [(TUUserConfiguration *)&v4 dealloc];
}

- (BOOL)isFilterAsNewCallersEnabledForPhone
{
  v2 = objc_opt_class();

  return [v2 isFilterAsNewCallersEnabledForPhone];
}

- (void)synchronize
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{@"announceCalls", @"filterUnknownCallersAsNewCallers", @"filterUnknownFaceTimeCallersAsNewCallers", @"ReceptionistDisabled", 0}];
  v3 = TUDefaultLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = @"com.apple.TelephonyUtilities";
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Synchronizing user configuration for %@ to Apple Watch", &buf, 0xCu);
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v4 = getNPSManagerClass_softClass;
  v10 = getNPSManagerClass_softClass;
  if (!getNPSManagerClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v12 = __getNPSManagerClass_block_invoke;
    v13 = &unk_1E7424CD8;
    v14 = &v7;
    __getNPSManagerClass_block_invoke(&buf);
    v4 = v8[3];
  }

  v5 = v4;
  _Block_object_dispose(&v7, 8);
  v6 = objc_alloc_init(v4);
  [v6 synchronizeUserDefaultsDomain:@"com.apple.TelephonyUtilities" keys:v2];
}

- (id)getBooleanFromUserDefaults:(id)defaults default:(id)default
{
  defaultCopy = default;
  defaultsCopy = defaults;
  v8 = objc_opt_class();
  dataSource = [(TUConfiguration *)self dataSource];
  v10 = [v8 getBooleanFromUserDefaults:defaultsCopy default:defaultCopy dataSource:dataSource];

  return v10;
}

+ (id)getBooleanFromUserDefaults:(id)defaults default:(id)default dataSource:(id)source
{
  defaultCopy = default;
  v8 = [source objectForKey:defaults];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = defaultCopy;
  }

  v11 = v10;

  return v10;
}

- (void)setValueInUserDefaults:(id)defaults forKey:(id)key
{
  keyCopy = key;
  defaultsCopy = defaults;
  dataSource = [(TUConfiguration *)self dataSource];
  [dataSource setObject:defaultsCopy forKey:keyCopy];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v18 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  objectCopy = object;
  v11 = TUDefaultLog(objectCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = pathCopy;
    v16 = 2112;
    v17 = objectCopy;
    _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "Received a key-value observing notification for key path (%@) object (%@).", buf, 0x16u);
  }

  if (context == &TUUserConfigurationKeyValueObserverContext)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (([pathCopy isEqualToString:@"announceCalls"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"conversationLinkBaseURL") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"simulateFatalPersistentStoreError") & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"simulateInternationalCall")))
    {
      delegateController = [(TUConfiguration *)self delegateController];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __70__TUUserConfiguration_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v13[3] = &unk_1E7426418;
      v13[4] = self;
      [delegateController enumerateDelegatesUsingBlock:v13];
    }
  }
}

void __70__TUUserConfiguration_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 conformsToProtocol:&unk_1F0A0A0A0])
  {
    v7 = v5;
    if (objc_opt_respondsToSelector())
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __70__TUUserConfiguration_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
      v10[3] = &unk_1E7424898;
      v8 = v7;
      v9 = *(a1 + 32);
      v11 = v8;
      v12 = v9;
      dispatch_async(v6, v10);
    }
  }
}

- (BOOL)isCallScreeningEnabled
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = objc_opt_class();
    v4 = v9;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "%@ isCallScreeningEnabled called", &v8, 0xCu);
  }

  v5 = [(TUUserConfiguration *)self getBooleanFromUserDefaults:@"CallScreeningDisabled" default:&unk_1F09C5FE0];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue ^ 1;
}

- (void)setCallScreeningEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v12 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 1024;
    v11 = enabledCopy;
    v6 = v9;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "%@ setCallScreeningEnabled called %d", &v8, 0x12u);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:!enabledCopy];
  [(TUUserConfiguration *)self setValueInUserDefaults:v7 forKey:@"CallScreeningDisabled"];

  [(TUUserConfiguration *)self synchronize];
}

- (BOOL)isHoldAssistDetectionEnabled
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = objc_opt_class();
    v4 = v9;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "%@ isHoldAssistDetectionEnabled called", &v8, 0xCu);
  }

  v5 = [(TUUserConfiguration *)self getBooleanFromUserDefaults:@"HoldAssistDetectionEnabled" default:&unk_1F09C5FF8];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)setHoldAssistDetectionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v12 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 1024;
    v11 = enabledCopy;
    v6 = v9;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "%@ setHoldAssistDetectionEnabled called %d", &v8, 0x12u);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  [(TUUserConfiguration *)self setValueInUserDefaults:v7 forKey:@"HoldAssistDetectionEnabled"];
}

- (BOOL)isReceptionistEnabled
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = objc_opt_class();
    v4 = v9;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "%@ isReceptionistEnabled called", &v8, 0xCu);
  }

  v5 = [(TUUserConfiguration *)self getBooleanFromUserDefaults:@"ReceptionistDisabled" default:&unk_1F09C5FF8];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue ^ 1;
}

- (void)setReceptionistEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v12 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 1024;
    v11 = enabledCopy;
    v6 = v9;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "%@ setReceptionistEnabled called %d", &v8, 0x12u);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:!enabledCopy];
  [(TUUserConfiguration *)self setValueInUserDefaults:v7 forKey:@"ReceptionistDisabled"];

  [(TUUserConfiguration *)self synchronize];
}

- (BOOL)isEligibleForReceptionistOnboardingNotification
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = objc_opt_class();
    v4 = v9;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "%@ isEligibleForReceptionistOnboardingNotification called", &v8, 0xCu);
  }

  v5 = [(TUUserConfiguration *)self getBooleanFromUserDefaults:@"EligibleForReceptionistOnboardingNotification" default:&unk_1F09C5FF8];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)setEligibleForReceptionistOnboardingNotification:(BOOL)notification
{
  notificationCopy = notification;
  v12 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 1024;
    v11 = notificationCopy;
    v6 = v9;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "%@ setEligibleForReceptionistOnboardingNotification called %d", &v8, 0x12u);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:notificationCopy];
  [(TUUserConfiguration *)self setValueInUserDefaults:v7 forKey:@"EligibleForReceptionistOnboardingNotification"];
}

- (BOOL)isSilenceUnknownCallersEnabledForFaceTime
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:TUSilenceUnknownFaceTimeCallersDefaultValue()];
  v4 = [(TUUserConfiguration *)self getBooleanFromUserDefaults:@"silenceUnknownFaceTimeCallers" default:v3];
  bOOLValue = [v4 BOOLValue];

  v7 = TUDefaultLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = objc_opt_class();
    v12 = 1024;
    v13 = bOOLValue;
    v8 = v11;
    _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "%@ isSilenceUnknownCallersEnabledForFaceTime called, returning %d", &v10, 0x12u);
  }

  return bOOLValue;
}

- (BOOL)isSilenceUnknownCallersEnabledForPhone
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [(TUUserConfiguration *)self getBooleanFromUserDefaults:@"allowContactsOnly" default:&unk_1F09C5FE0];
  bOOLValue = [v2 BOOLValue];

  v5 = TUDefaultLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 1024;
    v11 = bOOLValue;
    v6 = v9;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "%@ isSilenceUnknownCallersEnabledForPhone called, returning %d", &v8, 0x12u);
  }

  return bOOLValue;
}

- (void)setSilenceUnknownCallersEnabledForFaceTime:(BOOL)time
{
  timeCopy = time;
  v12 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 1024;
    v11 = timeCopy;
    v6 = v9;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "%@ setSilenceUnknownCallersEnabledForFaceTime called, set to %d", &v8, 0x12u);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:timeCopy];
  [(TUUserConfiguration *)self setValueInUserDefaults:v7 forKey:@"silenceUnknownFaceTimeCallers"];
}

- (void)setSilenceUnknownCallersEnabledForPhone:(BOOL)phone
{
  phoneCopy = phone;
  v12 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 1024;
    v11 = phoneCopy;
    v6 = v9;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "%@ setSilenceUnknownCallersEnabledForPhone called, set to %d", &v8, 0x12u);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:phoneCopy];
  [(TUUserConfiguration *)self setValueInUserDefaults:v7 forKey:@"allowContactsOnly"];
}

+ (BOOL)isFilterAsNewCallersEnabledForFaceTime
{
  userDefaults = [objc_opt_class() userDefaults];
  v4 = [self getBooleanFromUserDefaults:@"filterUnknownFaceTimeCallersAsNewCallers" default:&unk_1F09C5FE0 dataSource:userDefaults];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

+ (BOOL)isFilterAsNewCallersEnabledForPhone
{
  userDefaults = [objc_opt_class() userDefaults];
  v4 = [self getBooleanFromUserDefaults:@"filterUnknownCallersAsNewCallers" default:&unk_1F09C5FE0 dataSource:userDefaults];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (void)setFilterAsNewCallersEnabledForFaceTime:(BOOL)time
{
  timeCopy = time;
  v12 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 1024;
    v11 = timeCopy;
    v6 = v9;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "%@ setFilterAsNewCallersEnabledForFaceTime called, set to %d", &v8, 0x12u);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:timeCopy];
  [(TUUserConfiguration *)self setValueInUserDefaults:v7 forKey:@"filterUnknownFaceTimeCallersAsNewCallers"];

  [(TUUserConfiguration *)self synchronize];
}

- (void)setFilterAsNewCallersEnabledForPhone:(BOOL)phone
{
  phoneCopy = phone;
  v12 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 1024;
    v11 = phoneCopy;
    v6 = v9;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "%@ setFilterAsNewCallersEnabledForPhone called, set to %d", &v8, 0x12u);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:phoneCopy];
  [(TUUserConfiguration *)self setValueInUserDefaults:v7 forKey:@"filterUnknownCallersAsNewCallers"];

  [(TUUserConfiguration *)self synchronize];
}

- (BOOL)isBrandedCallingEnabled:(id)enabled
{
  v20 = *MEMORY[0x1E69E9840];
  enabledCopy = enabled;
  v15 = 0;
  coreTelephonyClient = self->_coreTelephonyClient;
  v6 = *MEMORY[0x1E6965158];
  v14 = 0;
  v7 = [(CoreTelephonyClient *)coreTelephonyClient context:enabledCopy getCapability:v6 status:&v15 with:&v14];
  v8 = v14;
  v9 = TUDefaultLog(v8);
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(TUUserConfiguration *)enabledCopy isBrandedCallingEnabled:v10];
    }

    v11 = 0;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"Off";
      if (v15)
      {
        v12 = @"On";
      }

      *buf = 138412546;
      v17 = enabledCopy;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Fetched state of branded calling for context: %@, state: %@", buf, 0x16u);
    }

    v11 = v15;
  }

  return v11 & 1;
}

- (void)setBrandedCallingEnabled:(BOOL)enabled subscription:(id)subscription
{
  enabledCopy = enabled;
  v15 = *MEMORY[0x1E69E9840];
  subscriptionCopy = subscription;
  v7 = [(CoreTelephonyClient *)self->_coreTelephonyClient context:subscriptionCopy setCapability:*MEMORY[0x1E6965158] enabled:enabledCopy with:0];
  v8 = TUDefaultLog(v7);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [TUUserConfiguration setBrandedCallingEnabled:subscriptionCopy subscription:v9];
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"Off";
    if (enabledCopy)
    {
      v10 = @"On";
    }

    v11 = 138412546;
    v12 = subscriptionCopy;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "Set state of branded calling for context: %@, state: %@", &v11, 0x16u);
  }
}

- (BOOL)isSilenceJunkCallingEnabled
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 138412290;
    *&v10[4] = objc_opt_class();
    v4 = *&v10[4];
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "%@ getSilenceJunkCallingEnabled called", v10, 0xCu);
  }

  integerValue = +[TUCall acceptableJunkConfidence];
  dataSource = [(TUConfiguration *)self dataSource];
  v7 = [dataSource objectForKey:@"maxJunkLevel"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v7 integerValue];
  }

  v8 = [TUCall isJunkConfidenceLevelJunk:integerValue, *v10, *&v10[8]];

  return !v8;
}

- (void)setSilenceJunkCallingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v10 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 138412546;
    *&v9[4] = objc_opt_class();
    *&v9[12] = 1024;
    *&v9[14] = enabledCopy;
    v6 = *&v9[4];
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "%@ setSilenceJunkCallingEnabled called %d", v9, 0x12u);
  }

  v7 = +[TUCall maxJunkConfidence];
  if (enabledCopy)
  {
    v7 = +[TUCall acceptableJunkConfidence];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{v7, *v9, *&v9[8], v10}];
  [(TUUserConfiguration *)self setValueInUserDefaults:v8 forKey:@"maxJunkLevel"];
}

- (BOOL)isBusinessConnectCallingEnabled
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = objc_opt_class();
    v4 = v9;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "%@ getBusinessConnectCallingEnabled called", &v8, 0xCu);
  }

  v5 = [(TUUserConfiguration *)self getBooleanFromUserDefaults:@"BusinessConnectCallingDisabled" default:&unk_1F09C5FE0];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue ^ 1;
}

- (void)setBusinessConnectCallingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v12 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 1024;
    v11 = enabledCopy;
    v6 = v9;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "%@ setBusinessConnectCallingEnabled called %d", &v8, 0x12u);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:!enabledCopy];
  [(TUUserConfiguration *)self setValueInUserDefaults:v7 forKey:@"BusinessConnectCallingDisabled"];
}

- (BOOL)isUplevelFTAEnabled
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = objc_opt_class();
    v4 = v11;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "%@ isUplevelFTAEnabled called", &v10, 0xCu);
  }

  mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
  if ([mEMORY[0x1E699BE70] deviceType] == 2)
  {
    v6 = &unk_1F09C5FE0;
  }

  else
  {
    v6 = &unk_1F09C5FF8;
  }

  v7 = [(TUUserConfiguration *)self getBooleanFromUserDefaults:@"TUFTAUplevelKey" default:v6];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

- (void)setUplevelFTAEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v12 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 1024;
    v11 = enabledCopy;
    v6 = v9;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "%@ setUplevelFTAEnabled called %d", &v8, 0x12u);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  [(TUUserConfiguration *)self setValueInUserDefaults:v7 forKey:@"TUFTAUplevelKey"];
}

- (BOOL)isCallRecordingEnabled
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = objc_opt_class();
    v4 = v9;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "%@ isCallRecordingEnabled called", &v8, 0xCu);
  }

  v5 = [(TUUserConfiguration *)self getBooleanFromUserDefaults:@"CallRecordingDisabled" default:&unk_1F09C5FE0];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue ^ 1;
}

- (void)setCallRecordingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v12 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 1024;
    v11 = enabledCopy;
    v6 = v9;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "%@ setCallRecordingEnabled called %d", &v8, 0x12u);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:!enabledCopy];
  [(TUUserConfiguration *)self setValueInUserDefaults:v7 forKey:@"CallRecordingDisabled"];
}

- (BOOL)isSpamFilterEnabledForFaceTime
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = objc_opt_class();
    v4 = v9;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "%@ isSpamFilterEnabledForFaceTime called", &v8, 0xCu);
  }

  v5 = [(TUUserConfiguration *)self getBooleanFromUserDefaults:@"spamFilterFaceTimeDisabled" default:&unk_1F09C5FE0];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue ^ 1;
}

- (void)setSpamFilterEnabledForFaceTime:(BOOL)time
{
  timeCopy = time;
  v12 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 1024;
    v11 = timeCopy;
    v6 = v9;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "%@ setSpamFilterEnabledForFaceTime called %d", &v8, 0x12u);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:!timeCopy];
  [(TUUserConfiguration *)self setValueInUserDefaults:v7 forKey:@"spamFilterFaceTimeDisabled"];
}

- (BOOL)isCallHapticsEnabled
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = objc_opt_class();
    v4 = v9;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "%@ isCallHapticsEnabled called", &v8, 0xCu);
  }

  v5 = [(TUUserConfiguration *)self getBooleanFromUserDefaults:@"TUCallHapticsEnabled" default:&unk_1F09C5FF8];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)setCallHapticsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v12 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 1024;
    v11 = enabledCopy;
    v6 = v9;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "%@ setCallHapticsEnabled called %d", &v8, 0x12u);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  [(TUUserConfiguration *)self setValueInUserDefaults:v7 forKey:@"TUCallHapticsEnabled"];
}

- (void)isBrandedCallingEnabled:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1956FD000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch state of branded calling for context: %@", &v2, 0xCu);
}

- (void)setBrandedCallingEnabled:(uint64_t)a1 subscription:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1956FD000, a2, OS_LOG_TYPE_ERROR, "Failed to set state of branded calling for context: %@", &v2, 0xCu);
}

@end