@interface SBSBuddyMultitaskingFlow
+ (id)sharedInstance;
- (BOOL)needsToShow;
- (SBSBuddyMultitaskingFlow)init;
- (int64_t)_initialMultitaskingOptionSelectedInViewController;
- (int64_t)_telemetryMultitaskingModeForOption:(int64_t)option;
- (int64_t)currentMultitaskingOption;
- (void)_emitBuddyWindowingPersonalizationTelemetry;
- (void)dealloc;
- (void)setCurrentMultitaskingOption:(int64_t)option;
@end

@implementation SBSBuddyMultitaskingFlow

+ (id)sharedInstance
{
  v2 = objc_alloc_init(SBSBuddyMultitaskingFlow);

  return v2;
}

- (SBSBuddyMultitaskingFlow)init
{
  selfCopy = self;
  if (__sharedInstance)
  {
    v3 = __sharedInstance;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBSBuddyMultitaskingFlow;
    v4 = [(SBSBuddyMultitaskingFlow *)&v11 init];
    if (v4)
    {
      v5 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.springboard"];
      sbDefaults = v4->_sbDefaults;
      v4->_sbDefaults = v5;

      v4->_hasShownMultitaskingBuddyPane = 0;
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      v8 = getBYSetupAssistantFinishedDarwinNotification();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, _SBSetupAssistantFinished, v8, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    objc_storeStrong(&__sharedInstance, v4);
    v3 = v4;
    selfCopy = v3;
  }

  v9 = v3;

  return v9;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = getBYSetupAssistantFinishedDarwinNotification();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v4, 0);

  v5.receiver = self;
  v5.super_class = SBSBuddyMultitaskingFlow;
  [(SBSBuddyMultitaskingFlow *)&v5 dealloc];
}

- (int64_t)currentMultitaskingOption
{
  v3 = [(NSUserDefaults *)self->_sbDefaults BOOLForKey:@"SBChamoisWindowingEnabled"];
  v4 = [(NSUserDefaults *)self->_sbDefaults objectForKey:@"SBMedusaMultitaskingEnabled"];
  if (v4)
  {
    v5 = v4;
    v6 = [(NSUserDefaults *)self->_sbDefaults BOOLForKey:@"SBMedusaMultitaskingEnabled"];

    v7 = v6;
  }

  else
  {
    v7 = 1;
  }

  if (v3)
  {
    return -1;
  }

  else
  {
    return v7;
  }
}

- (void)setCurrentMultitaskingOption:(int64_t)option
{
  [(NSUserDefaults *)self->_sbDefaults setBool:0 forKey:@"SBChamoisWindowingEnabled"];
  sbDefaults = self->_sbDefaults;

  [(NSUserDefaults *)sbDefaults setBool:option == 1 forKey:@"SBMedusaMultitaskingEnabled"];
}

- (BOOL)needsToShow
{
  v3 = _os_feature_enabled_impl();
  if (!v3 || ([MEMORY[0x1E698E730] sharedInstance], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "deviceClass"), v4, v5 != 2))
  {
    v10 = SBLogBuddy(v3);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = "Should not show multitasking buddy pane due to flexible windowing feature is disabled or current device is not an iPad.";
      v13 = buf;
      goto LABEL_10;
    }

LABEL_11:
    v14 = 0;
    v15 = 0;
    goto LABEL_12;
  }

  if ([(SBSBuddyMultitaskingFlow *)self currentMultitaskingOption]== -1)
  {
    v10 = SBLogBuddy(-1);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v19 = 0;
    v12 = "Should not show multitasking buddy pane due to upgrading from Stage Manager.";
    v13 = &v19;
    goto LABEL_10;
  }

  v6 = [(NSUserDefaults *)self->_sbDefaults BOOLForKey:@"SBHasEverUsedMultiAppConfiguration"];
  _currentDeviceMemorySizeInGigabytes = [(SBSBuddyMultitaskingFlow *)self _currentDeviceMemorySizeInGigabytes];
  v9 = v8;
  v10 = SBLogBuddy(_currentDeviceMemorySizeInGigabytes);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9 <= 3.0 && !v6)
  {
    if (v11)
    {
      v18 = 0;
      v12 = "Should not show multitasking buddy pane due to current device has memory size <= 3GB and user has never used multiple app configuration before.";
      v13 = &v18;
LABEL_10:
      _os_log_impl(&dword_19169D000, v10, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (v11)
  {
    *v17 = 0;
    _os_log_impl(&dword_19169D000, v10, OS_LOG_TYPE_DEFAULT, "Should show multitasking buddy pane", v17, 2u);
  }

  v14 = 1;
  v15 = 1;
LABEL_12:

  self->_hasShownMultitaskingBuddyPane = v14;
  return v15;
}

- (int64_t)_initialMultitaskingOptionSelectedInViewController
{
  v3 = [(NSUserDefaults *)self->_sbDefaults BOOLForKey:@"SBHasEverUsedMultiAppConfiguration"];
  [(SBSBuddyMultitaskingFlow *)self _currentDeviceMemorySizeInGigabytes];
  if (v4 >= 8.0 && v3)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (void)_emitBuddyWindowingPersonalizationTelemetry
{
  if (self->_hasShownMultitaskingBuddyPane)
  {
    v3 = [(SBSBuddyMultitaskingFlow *)self _telemetryMultitaskingModeForOption:[(SBSBuddyMultitaskingFlow *)self _initialMultitaskingOptionSelectedInViewController]];
    if (self->_hasShownMultitaskingBuddyPane)
    {
      v4 = [(SBSBuddyMultitaskingFlow *)self _telemetryMultitaskingModeForOption:[(SBSBuddyMultitaskingFlow *)self currentMultitaskingOption]];
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = 0;
LABEL_6:
  v5 = [[SBSBuddyWindowingTelemetryPersonalizationMetrics alloc] initWithPreviousMultitaskingMode:v3 currentMultitaskingMode:v4 hasShownMultitaskingBuddyPane:self->_hasShownMultitaskingBuddyPane];
  [(SBSAbstractWindowingTelemetryPersonalizationMetrics *)v5 emit];
}

- (int64_t)_telemetryMultitaskingModeForOption:(int64_t)option
{
  if (option == 1)
  {
    return 2;
  }

  else
  {
    return option == 0;
  }
}

@end