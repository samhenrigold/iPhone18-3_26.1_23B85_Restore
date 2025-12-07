@interface HKHearingFeatures
+ (BOOL)_BOOLForPreferenceKey:(id)key defaultValue:(BOOL)value fromValues:(id)values;
+ (BOOL)_isHeadphoneExposureDataTransient;
+ (BOOL)_isHeadphoneExposureDataTransientOnActiveWatchWithError:(id *)error;
+ (BOOL)_isMeasureOtherHeadphonesEnabled;
+ (BOOL)_isMeasureOtherHeadphonesEnabledOnActiveWatchWithError:(id *)error;
+ (BOOL)_setBoolForPhonePreferenceKey:(id)key newValue:(BOOL)value error:(id *)error;
+ (BOOL)_setBoolForPreferenceKey:(id)key newValue:(BOOL)value error:(id *)error;
+ (BOOL)_setBoolForWatchPreferenceKey:(id)key newValue:(BOOL)value error:(id *)error;
+ (BOOL)_setHeadphoneExposureMeasureLevelsEnabled:(BOOL)enabled error:(id *)error;
+ (BOOL)_setHeadphoneExposureMeasureLevelsEnabledOnActiveWatch:(BOOL)watch error:(id *)error;
+ (BOOL)_setHeadphoneExposureNotificationsEnabled:(BOOL)enabled error:(id *)error;
+ (BOOL)_setHeadphoneExposureNotificationsEnabledOnActiveWatch:(BOOL)watch error:(id *)error;
+ (BOOL)areHeadphoneExposureNotificationsMandatory;
+ (BOOL)areHeadphoneExposureNotificationsMandatoryOnActiveWatchWithError:(id *)error;
+ (BOOL)hasActivePairedDevice;
+ (BOOL)isHeadphoneExposureMeasureLevelsEnabled;
+ (BOOL)isHeadphoneExposureMeasureLevelsEnabledOnActiveWatchWithError:(id *)error;
+ (BOOL)isHeadphoneExposureNotificationsEnabled;
+ (BOOL)isHeadphoneExposureNotificationsEnabledOnActiveWatchWithError:(id *)error;
+ (BOOL)isHeadphoneExposureNotificationsSupportedOnActiveWatch;
+ (BOOL)setBoolForPreferenceKey:(id)key newValue:(BOOL)value forPairedWatch:(BOOL)watch error:(id *)error;
+ (id)_numbersForPhonePreferenceKeys:(id)keys;
+ (id)_numbersForPreferenceKeys:(id)keys error:(id *)error;
+ (id)_numbersForPreferenceKeys:(id)keys fromActiveWatch:(BOOL)watch;
+ (id)_numbersForWatchPreferenceKeys:(id)keys;
+ (id)_sharedAudioDataAnalysisManager;
+ (id)activePairedDevice;
+ (id)sharedInstance;
+ (void)unitTesting_overrideIsHeadphoneExposureNotificationsEnabled:(id)enabled;
- (HKHearingFeatures)init;
- (void)_adasPreferenceDidChange:(id)change;
- (void)_startObservingForChanges;
- (void)_startObservingForChangesOnActiveWatch;
- (void)_stopObservingForChanges;
- (void)dealloc;
@end

@implementation HKHearingFeatures

+ (BOOL)isHeadphoneExposureNotificationsEnabled
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = _unitTesting_overrideIsHeadphoneExposureNotificationsEnabled;
  if (_unitTesting_overrideIsHeadphoneExposureNotificationsEnabled)
  {

    return [v3 BOOLValue];
  }

  else
  {
    v5 = *MEMORY[0x277CEFAF8];
    v6 = *MEMORY[0x277CEFAF0];
    v16[0] = *MEMORY[0x277CEFAF8];
    v16[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v13 = 0;
    v8 = [self _numbersForPreferenceKeys:v7 error:&v13];
    v9 = v13;
    if (v8)
    {
      v10 = [self _BOOLForPreferenceKey:v6 defaultValue:objc_msgSend(self fromValues:{"_BOOLForPreferenceKey:defaultValue:fromValues:", v5, 0, v8), v8}];
    }

    else
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC2C8];
      v12 = *MEMORY[0x277CCC2C8];
      if (v9)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          +[HKHearingFeatures isHeadphoneExposureNotificationsEnabled];
        }
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v15 = v7;
        _os_log_impl(&dword_25175B000, v11, OS_LOG_TYPE_INFO, "Unable to read preferences %{public}@", buf, 0xCu);
      }

      v10 = 0;
    }

    return v10;
  }
}

+ (BOOL)isHeadphoneExposureMeasureLevelsEnabled
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEFAF8];
  v4 = *MEMORY[0x277CEFAB8];
  v11[0] = *MEMORY[0x277CEFAF8];
  v11[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v10 = 0;
  v6 = [self _numbersForPreferenceKeys:v5 error:&v10];
  v7 = v10;
  if (v6)
  {
    if ([self _BOOLForPreferenceKey:v3 defaultValue:0 fromValues:v6])
    {
      v8 = 1;
    }

    else
    {
      v8 = [self _BOOLForPreferenceKey:v4 defaultValue:0 fromValues:v6];
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
    {
      +[HKHearingFeatures isHeadphoneExposureNotificationsEnabled];
    }

    v8 = 0;
  }

  return v8;
}

+ (BOOL)areHeadphoneExposureNotificationsMandatory
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEFAF8];
  v10[0] = *MEMORY[0x277CEFAF8];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v9 = 0;
  v5 = [self _numbersForPreferenceKeys:v4 error:&v9];
  v6 = v9;
  if (v5)
  {
    v7 = [self _BOOLForPreferenceKey:v3 defaultValue:0 fromValues:v5];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
    {
      +[HKHearingFeatures isHeadphoneExposureNotificationsEnabled];
    }

    v7 = 0;
  }

  return v7;
}

+ (BOOL)isHeadphoneExposureNotificationsSupportedOnActiveWatch
{
  activePairedDevice = [self activePairedDevice];
  if (activePairedDevice)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"FFF1DEA3-3FB3-43F8-B986-EAFC838148EA"];
    v4 = [activePairedDevice supportsCapability:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isHeadphoneExposureNotificationsEnabledOnActiveWatchWithError:(id *)error
{
  v11[2] = *MEMORY[0x277D85DE8];
  if ([self hasActivePairedDevice])
  {
    v5 = *MEMORY[0x277CEFAF8];
    v6 = *MEMORY[0x277CEFAF0];
    v11[0] = *MEMORY[0x277CEFAF8];
    v11[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    v8 = [self _numbersForWatchPreferenceKeys:v7];
    if (v8)
    {
      v9 = [self _BOOLForPreferenceKey:v6 defaultValue:objc_msgSend(self fromValues:{"_BOOLForPreferenceKey:defaultValue:fromValues:", v5, 0, v8), v8}];
    }

    else
    {
      if ([self isHeadphoneExposureNotificationsSupportedOnActiveWatch])
      {
        [MEMORY[0x277CCA9B8] hk_assignError:error code:11 format:{@"Unable to read preferences %@.", v7}];
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:error code:110 format:{@"Unable to read preferences %@. Feature not supported.", v7}];
      }

      v9 = 0;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:110 description:@"Unable to read preferences. No active watch."];
    return 0;
  }

  return v9;
}

+ (BOOL)isHeadphoneExposureMeasureLevelsEnabledOnActiveWatchWithError:(id *)error
{
  v11[2] = *MEMORY[0x277D85DE8];
  if ([self hasActivePairedDevice])
  {
    v5 = *MEMORY[0x277CEFAF8];
    v6 = *MEMORY[0x277CEFAB8];
    v11[0] = *MEMORY[0x277CEFAF8];
    v11[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    v8 = [self _numbersForWatchPreferenceKeys:v7];
    if (v8)
    {
      if ([self _BOOLForPreferenceKey:v5 defaultValue:0 fromValues:v8])
      {
        v9 = 1;
      }

      else
      {
        v9 = [self _BOOLForPreferenceKey:v6 defaultValue:0 fromValues:v8];
      }
    }

    else
    {
      if ([self isHeadphoneExposureNotificationsSupportedOnActiveWatch])
      {
        [MEMORY[0x277CCA9B8] hk_assignError:error code:11 format:{@"Unable to read preferences %@.", v7}];
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:error code:110 format:{@"Unable to read preferences %@. Feature not supported.", v7}];
      }

      v9 = 0;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:110 description:@"Unable to read preferences. No active watch."];
    return 0;
  }

  return v9;
}

+ (BOOL)areHeadphoneExposureNotificationsMandatoryOnActiveWatchWithError:(id *)error
{
  v10[1] = *MEMORY[0x277D85DE8];
  if ([self hasActivePairedDevice])
  {
    v5 = *MEMORY[0x277CEFAF8];
    v10[0] = *MEMORY[0x277CEFAF8];
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    v7 = [self _numbersForWatchPreferenceKeys:v6];
    if (v7)
    {
      v8 = [self _BOOLForPreferenceKey:v5 defaultValue:0 fromValues:v7];
    }

    else
    {
      if ([self isHeadphoneExposureNotificationsSupportedOnActiveWatch])
      {
        [MEMORY[0x277CCA9B8] hk_assignError:error code:11 format:{@"Unable to read preferences %@.", v6}];
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:error code:110 format:{@"Unable to read preferences %@. Feature not supported.", v6}];
      }

      v8 = 0;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:110 description:@"Unable to read preferences. No active watch."];
    return 0;
  }

  return v8;
}

+ (BOOL)_setHeadphoneExposureNotificationsEnabled:(BOOL)enabled error:(id *)error
{
  enabledCopy = enabled;
  v6 = *MEMORY[0x277CEFAF0];
  v10 = 0;
  [self setBoolForPreferenceKey:v6 newValue:enabledCopy forPairedWatch:0 error:&v10];
  v7 = v10;
  if (v7)
  {
    if (error)
    {
      v8 = v7;
      *error = v7;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v7 == 0;
}

+ (BOOL)_setHeadphoneExposureMeasureLevelsEnabled:(BOOL)enabled error:(id *)error
{
  enabledCopy = enabled;
  v6 = *MEMORY[0x277CEFAB8];
  v10 = 0;
  [self setBoolForPreferenceKey:v6 newValue:enabledCopy forPairedWatch:0 error:&v10];
  v7 = v10;
  if (v7)
  {
    if (error)
    {
      v8 = v7;
      *error = v7;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v7 == 0;
}

+ (BOOL)_setHeadphoneExposureNotificationsEnabledOnActiveWatch:(BOOL)watch error:(id *)error
{
  watchCopy = watch;
  v6 = *MEMORY[0x277CEFAF0];
  v10 = 0;
  [self setBoolForPreferenceKey:v6 newValue:watchCopy forPairedWatch:1 error:&v10];
  v7 = v10;
  if (v7)
  {
    if (error)
    {
      v8 = v7;
      *error = v7;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v7 == 0;
}

+ (BOOL)_setHeadphoneExposureMeasureLevelsEnabledOnActiveWatch:(BOOL)watch error:(id *)error
{
  watchCopy = watch;
  v6 = *MEMORY[0x277CEFAB8];
  v10 = 0;
  [self setBoolForPreferenceKey:v6 newValue:watchCopy forPairedWatch:1 error:&v10];
  v7 = v10;
  if (v7)
  {
    if (error)
    {
      v8 = v7;
      *error = v7;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v7 == 0;
}

+ (BOOL)_isHeadphoneExposureDataTransient
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEFAF8];
  v4 = *MEMORY[0x277CEFB10];
  v11[0] = *MEMORY[0x277CEFAF8];
  v11[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v10 = 0;
  v6 = [self _numbersForPreferenceKeys:v5 error:&v10];
  v7 = v10;
  if (!v6)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
    {
      +[HKHearingFeatures isHeadphoneExposureNotificationsEnabled];
    }

    goto LABEL_6;
  }

  if (![self _BOOLForPreferenceKey:v3 defaultValue:0 fromValues:v6])
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v8 = [self _BOOLForPreferenceKey:v4 defaultValue:0 fromValues:v6];
LABEL_7:

  return v8;
}

+ (BOOL)_isMeasureOtherHeadphonesEnabled
{
  v12[3] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEFAF8];
  v4 = *MEMORY[0x277CEFAB8];
  v12[0] = *MEMORY[0x277CEFAF8];
  v12[1] = v4;
  v5 = *MEMORY[0x277CEFAC0];
  v12[2] = *MEMORY[0x277CEFAC0];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
  v11 = 0;
  v7 = [self _numbersForPreferenceKeys:v6 error:&v11];
  v8 = v11;
  if (!v7)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
    {
      +[HKHearingFeatures isHeadphoneExposureNotificationsEnabled];
    }

    goto LABEL_8;
  }

  if (([self _BOOLForPreferenceKey:v3 defaultValue:0 fromValues:v7] & 1) == 0)
  {
    if ([self _BOOLForPreferenceKey:v4 defaultValue:0 fromValues:v7])
    {
      v9 = [self _BOOLForPreferenceKey:v5 defaultValue:0 fromValues:v7];
      goto LABEL_9;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v9 = 1;
LABEL_9:

  return v9;
}

+ (BOOL)_isHeadphoneExposureDataTransientOnActiveWatchWithError:(id *)error
{
  v11[2] = *MEMORY[0x277D85DE8];
  if ([self hasActivePairedDevice])
  {
    v5 = *MEMORY[0x277CEFAF8];
    v6 = *MEMORY[0x277CEFB10];
    v11[0] = *MEMORY[0x277CEFAF8];
    v11[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    v8 = [self _numbersForWatchPreferenceKeys:v7];
    if (v8)
    {
      v9 = 0;
      if ([self _BOOLForPreferenceKey:v5 defaultValue:0 fromValues:v8])
      {
        v9 = [self _BOOLForPreferenceKey:v6 defaultValue:0 fromValues:v8];
      }
    }

    else
    {
      if ([self isHeadphoneExposureNotificationsSupportedOnActiveWatch])
      {
        [MEMORY[0x277CCA9B8] hk_assignError:error code:11 format:{@"Unable to read preferences %@.", v7}];
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:error code:110 format:{@"Unable to read preferences %@. Feature not supported.", v7}];
      }

      v9 = 0;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:110 description:@"Unable to read preferences. No active watch."];
    return 0;
  }

  return v9;
}

+ (BOOL)_isMeasureOtherHeadphonesEnabledOnActiveWatchWithError:(id *)error
{
  v12[3] = *MEMORY[0x277D85DE8];
  if ([self hasActivePairedDevice])
  {
    v5 = *MEMORY[0x277CEFAF8];
    v6 = *MEMORY[0x277CEFAB8];
    v12[0] = *MEMORY[0x277CEFAF8];
    v12[1] = v6;
    v7 = *MEMORY[0x277CEFAC0];
    v12[2] = *MEMORY[0x277CEFAC0];
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
    v9 = [self _numbersForWatchPreferenceKeys:v8];
    if (v9)
    {
      if ([self _BOOLForPreferenceKey:v5 defaultValue:0 fromValues:v9])
      {
        v10 = 1;
      }

      else
      {
        v10 = 0;
        if ([self _BOOLForPreferenceKey:v6 defaultValue:0 fromValues:v9])
        {
          v10 = [self _BOOLForPreferenceKey:v7 defaultValue:0 fromValues:v9];
        }
      }
    }

    else
    {
      if ([self isHeadphoneExposureNotificationsSupportedOnActiveWatch])
      {
        [MEMORY[0x277CCA9B8] hk_assignError:error code:11 format:{@"Unable to read preferences %@.", v8}];
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:error code:110 format:{@"Unable to read preferences %@. Feature not supported.", v8}];
      }

      v10 = 0;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:110 description:@"Unable to read preferences. No active watch."];
    return 0;
  }

  return v10;
}

+ (void)unitTesting_overrideIsHeadphoneExposureNotificationsEnabled:(id)enabled
{
  enabledCopy = enabled;
  v6 = _unitTesting_overrideIsHeadphoneExposureNotificationsEnabled != 0;
  objc_storeStrong(&_unitTesting_overrideIsHeadphoneExposureNotificationsEnabled, enabled);
  if (((v6 ^ (_unitTesting_overrideIsHeadphoneExposureNotificationsEnabled == 0)) & 1) == 0)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v7 = getHAENDefaultsClass_softClass;
    v15 = getHAENDefaultsClass_softClass;
    if (!getHAENDefaultsClass_softClass)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __getHAENDefaultsClass_block_invoke;
      v11[3] = &unk_2796C56D8;
      v11[4] = &v12;
      __getHAENDefaultsClass_block_invoke(v11);
      v7 = v13[3];
    }

    v8 = v7;
    _Block_object_dispose(&v12, 8);
    InstanceMethod = class_getInstanceMethod(v7, sel_isHAENFeatureEnabled);
    v10 = class_getInstanceMethod(self, sel_swizzled_isHAENFeatureEnabled);
    method_exchangeImplementations(InstanceMethod, v10);
  }
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HKHearingFeatures_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

uint64_t __35__HKHearingFeatures_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_instance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (HKHearingFeatures)init
{
  v6.receiver = self;
  v6.super_class = HKHearingFeatures;
  v2 = [(HKHearingFeatures *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(HKHearingFeatures *)v2 _startObservingForChanges];
    [(HKHearingFeatures *)v3 _startObservingForChangesOnActiveWatch];
    v4 = v3;
  }

  return v3;
}

- (void)dealloc
{
  [(HKHearingFeatures *)self _stopObservingForChanges];
  v3.receiver = self;
  v3.super_class = HKHearingFeatures;
  [(HKHearingFeatures *)&v3 dealloc];
}

- (void)_startObservingForChanges
{
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25175B000, v3, OS_LOG_TYPE_DEFAULT, "Starting observation for HKHearingFeatures changes to current device.", v5, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _adasPreferenceDidChange, *MEMORY[0x277CEFA68], 0, CFNotificationSuspensionBehaviorCoalesce);
}

- (void)_startObservingForChangesOnActiveWatch
{
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25175B000, v3, OS_LOG_TYPE_DEFAULT, "Starting observation for HKHearingFeatures changes to active watch.", v5, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _adasPreferenceDidChange, *MEMORY[0x277CEFA80], 0, CFNotificationSuspensionBehaviorCoalesce);
}

- (void)_stopObservingForChanges
{
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25175B000, v3, OS_LOG_TYPE_DEFAULT, "Unregistering for HKHearingFeatures changes.", v5, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
}

- (void)_adasPreferenceDidChange:(id)change
{
  v4 = MEMORY[0x277CCAB98];
  changeCopy = change;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter postNotificationName:@"HKHearingFeatureHeadphoneExposureNotificationsEnabledDidChange" object:self userInfo:changeCopy];
}

+ (id)_numbersForPreferenceKeys:(id)keys fromActiveWatch:(BOOL)watch
{
  if (watch)
  {
    [self _numbersForWatchPreferenceKeys:keys];
  }

  else
  {
    [self _numbersForPhonePreferenceKeys:keys];
  }
  v4 = ;

  return v4;
}

+ (id)_numbersForPreferenceKeys:(id)keys error:(id *)error
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  keysCopy = keys;
  HKWithUnfairLock();
  v4 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v4;
}

void __53__HKHearingFeatures__numbersForPreferenceKeys_error___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 48) _sharedAudioDataAnalysisManager];
  v2 = [v5 getPreferencesFor:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)_numbersForPhonePreferenceKeys:(id)keys
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  keysCopy = keys;
  HKWithUnfairLock();
  v3 = v7[5];

  _Block_object_dispose(&v6, 8);

  return v3;
}

void __52__HKHearingFeatures__numbersForPhonePreferenceKeys___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 48) _sharedAudioDataAnalysisManager];
  v2 = [v5 getPreferencesFor:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)_numbersForWatchPreferenceKeys:(id)keys
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  keysCopy = keys;
  HKWithUnfairLock();
  v3 = v7[5];

  _Block_object_dispose(&v6, 8);

  return v3;
}

void __52__HKHearingFeatures__numbersForWatchPreferenceKeys___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 48) _sharedAudioDataAnalysisManager];
  v2 = [v5 getNanoPreferencesFor:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (BOOL)_BOOLForPreferenceKey:(id)key defaultValue:(BOOL)value fromValues:(id)values
{
  v22 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v8 = [values objectForKeyedSubscript:keyCopy];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC2C8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
      {
        v12 = v9;
        v13 = HKStringFromBool();
        v14 = 138544130;
        v15 = keyCopy;
        v16 = 2114;
        v17 = v13;
        v18 = 2112;
        v19 = objc_opt_class();
        v20 = 2112;
        v21 = objc_opt_class();
        _os_log_fault_impl(&dword_25175B000, v12, OS_LOG_TYPE_FAULT, "Error reading %{public}@ using defaultValue %{public}@: Unexpected class (expected %@, found %@)", &v14, 0x2Au);
      }
    }

    value = [v8 BOOLValue];
  }

  else
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2C8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_ERROR))
    {
      [HKHearingFeatures _BOOLForPreferenceKey:keyCopy defaultValue:v10 fromValues:value];
    }
  }

  return value;
}

+ (BOOL)_setBoolForPreferenceKey:(id)key newValue:(BOOL)value error:(id *)error
{
  v9 = 0;
  [self _setBoolForPhonePreferenceKey:key newValue:value error:&v9];
  v6 = v9;
  if (v6)
  {
    if (error)
    {
      v7 = v6;
      *error = v6;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v6 == 0;
}

+ (BOOL)_setBoolForPhonePreferenceKey:(id)key newValue:(BOOL)value error:(id *)error
{
  valueCopy = value;
  keyCopy = key;
  v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:valueCopy];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v9 = keyCopy;
  v10 = v8;
  HKWithUnfairLock();
  v11 = v16[5];
  v12 = v11;
  if (v11)
  {
    if (error)
    {
      v13 = v11;
      *error = v12;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  _Block_object_dispose(&v15, 8);
  return v12 == 0;
}

void __66__HKHearingFeatures__setBoolForPhonePreferenceKey_newValue_error___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 56) _sharedAudioDataAnalysisManager];
  v2 = [v5 setPreferenceFor:*(a1 + 32) value:*(a1 + 40) notify:1];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (BOOL)_setBoolForWatchPreferenceKey:(id)key newValue:(BOOL)value error:(id *)error
{
  valueCopy = value;
  keyCopy = key;
  v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:valueCopy];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v9 = keyCopy;
  v10 = v8;
  HKWithUnfairLock();
  v11 = v16[5];
  v12 = v11;
  if (v11)
  {
    if (error)
    {
      v13 = v11;
      *error = v12;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  _Block_object_dispose(&v15, 8);
  return v12 == 0;
}

void __66__HKHearingFeatures__setBoolForWatchPreferenceKey_newValue_error___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 56) _sharedAudioDataAnalysisManager];
  v2 = [v5 setNanoPreferenceFor:*(a1 + 32) value:*(a1 + 40) notify:1];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)_sharedAudioDataAnalysisManager
{
  if (_sharedAudioDataAnalysisManager_onceToken != -1)
  {
    +[HKHearingFeatures _sharedAudioDataAnalysisManager];
  }

  v3 = _sharedAudioDataAnalysisManager_manager;

  return v3;
}

uint64_t __52__HKHearingFeatures__sharedAudioDataAnalysisManager__block_invoke()
{
  _sharedAudioDataAnalysisManager_manager = objc_alloc_init(MEMORY[0x277CEFB38]);

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)setBoolForPreferenceKey:(id)key newValue:(BOOL)value forPairedWatch:(BOOL)watch error:(id *)error
{
  watchCopy = watch;
  valueCopy = value;
  v28[2] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v12 = *MEMORY[0x277CEFAB8];
  v28[0] = *MEMORY[0x277CEFAF0];
  v11 = v28[0];
  v28[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v27 = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  if (([v13 containsObject:keyCopy] & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:{@"Preference key not supported %@", keyCopy}];
LABEL_21:
    v21 = 0;
    goto LABEL_22;
  }

  if (watchCopy)
  {
    v26 = 0;
    v15 = [self areHeadphoneExposureNotificationsMandatoryOnActiveWatchWithError:&v26];
    v16 = v26;
    if (v16)
    {
      v17 = v16;
      if (error)
      {
        v18 = v16;
        *error = v17;
      }

      else
      {
        _HKLogDroppedError();
      }

      goto LABEL_21;
    }

    if (!v15 || ([v14 containsObject:keyCopy] & 1) != 0)
    {
      v25 = 0;
      v19 = &v25;
      [self _setBoolForWatchPreferenceKey:keyCopy newValue:valueCopy error:&v25];
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  if (([self areHeadphoneExposureNotificationsMandatory] & 1) != 0 && (objc_msgSend(v14, "containsObject:", keyCopy) & 1) == 0)
  {
LABEL_16:
    [MEMORY[0x277CCA9B8] hk_assignError:error code:110 description:@"Property can not be set when feature is mandatory."];
    goto LABEL_21;
  }

  v24 = 0;
  v19 = &v24;
  [self _setBoolForPreferenceKey:keyCopy newValue:valueCopy error:&v24];
LABEL_13:
  v20 = *v19;
  v21 = v20 == 0;
  if (v20)
  {
    if (error)
    {
      v22 = v20;
      *error = v20;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

LABEL_22:
  return v21;
}

+ (id)activePairedDevice
{
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];

  return getActivePairedDevice;
}

+ (BOOL)hasActivePairedDevice
{
  activePairedDevice = [self activePairedDevice];
  v3 = activePairedDevice != 0;

  return v3;
}

+ (void)_BOOLForPreferenceKey:(uint64_t)a1 defaultValue:(void *)a2 fromValues:(char)a3 .cold.1(uint64_t a1, void *a2, char a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = HKStringFromBool();
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_25175B000, v4, OS_LOG_TYPE_ERROR, "Missing preference for %{public}@, using defaultValue %{public}@.", &v6, 0x16u);
}

@end