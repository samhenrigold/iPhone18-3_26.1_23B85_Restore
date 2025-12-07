@interface ENDaemon
- (BOOL)_bluetoothMonitorShouldRun;
- (BOOL)_isNKDActive;
- (BOOL)_postExposureNotificationForClassification:(id)classification status:(int64_t)status region:(id)region;
- (BOOL)_writePreferenceActiveEntity:(id)entity;
- (BOOL)_writePreferenceRegionPendingOnboarding:(id)onboarding;
- (BOOL)isDeviceUnlocked;
- (BOOL)isOnboardingNeeded;
- (BOOL)isProxyEnabledForTestResultManager:(id)manager;
- (ENDaemon)init;
- (ENDaemonDelegate)delegate;
- (_BYTE)isOnboardingNeeded;
- (_DWORD)stateMetricVersion;
- (double)timeForAvailabilityAlertCycleReset;
- (id)_getBundleIDFromBundle:(__CFBundle *)bundle;
- (id)_getDelegateAndReturnError:(id *)error;
- (id)_getDiagnosedVaccineStatusForDifferentialPrivacyWithUserVaccinationStatus:(id)status;
- (id)_getDownloadEndpointsAndReturnError:(id *)error;
- (id)_getInfoDictFromAppProxy:(id)proxy;
- (id)_getInfoDictFromBundle:(__CFBundle *)bundle;
- (id)_getReportTypeForSession:(id)session;
- (id)_getReportTypeFromMetadata:(id)metadata;
- (id)_readPreferenceActiveEntity;
- (id)_readPreferenceRegionPendingOnboarding;
- (id)activeRegionForExposureDetectionManager:(id)manager;
- (id)advertisementDatabaseQuerySessionWithAttenuationThreshold:(unsigned __int8)threshold error:(id *)error;
- (id)descriptionWithLevel:(int)level;
- (id)getExposureDatabaseAndReturnError:(id *)error;
- (id)legacyHistoryPath;
- (id)loadHistorySinceTime:(double)time;
- (id)loadLegacyHistorySinceTime:(double)time;
- (id)regionForBundleInfo:(id)info;
- (id)temporaryExposureKeyManager:(id)manager retrieveTEKHistoryIncludingActive:(BOOL)active generateNewTEK:(BOOL)k;
- (id)xpcConnectionForBundleID:(id)d;
- (int64_t)getOverallStatus;
- (int64_t)tccAccessForBundleID:(id)d;
- (uint64_t)_tccChanged;
- (uint64_t)_updateOverallStatus;
- (uint64_t)bluetoothPowerStateChanged;
- (uint64_t)isOnboardingNeeded;
- (uint64_t)prefsChanged;
- (unsigned)_getAvailabilityAlertCountIncrement:(BOOL)increment reset:(BOOL)reset;
- (unsigned)_getLatestExposureForDifferentialPrivacy;
- (unsigned)appDequeueActivityFlagsWithBundleID:(id)d;
- (unsigned)stateMetricVersion;
- (void)_activate;
- (void)_bluetoothMonitorEnsureStarted;
- (void)_bluetoothMonitorEnsureStopped;
- (void)_bluetoothTracingEnsureStarted;
- (void)_bluetoothTracingEnsureStopped;
- (void)_bluetoothTracingStop;
- (void)_configurationManagerEnsureStarted;
- (void)_configurationManagerEnsureStopped;
- (void)_databasesEnsureClosed;
- (void)_databasesEnsureOpened;
- (void)_deferConsentForPendingRegion;
- (void)_differentialPrivacyEnsureStarted;
- (void)_differentialPrivacyEnsureStopped;
- (void)_enApplicationDidInstall:(id)install;
- (void)_enApplicationDidUninstall:(id)uninstall;
- (void)_enqueueScreenUnlockAction:(id)action withIdentifier:(id)identifier;
- (void)_exposureManagersEnsureStarted;
- (void)_exposureManagersEnsureStopped;
- (void)_exposureNotificationRegionConfigurationChanged:(id)changed;
- (void)_exposureNotificationRegionConfigurationRemoved:(id)removed;
- (void)_fetchPrefRegionConfig:(id)config oldCustomCountryCode:(id)code;
- (void)_handleTestVerificationErrors:(id)errors;
- (void)_invalidate;
- (void)_migrateLegacyHistoryIfNecessary;
- (void)_networkProxyStatusCheck;
- (void)_periodicPersistencePurge;
- (void)_postUserNotificationWithRequest:(id)request authorizationFailureHandler:(id)handler;
- (void)_readPreferenceActiveEntity;
- (void)_readPreferenceRegionPendingOnboarding;
- (void)_regionMonitorEnsureStarted;
- (void)_regionMonitorEnsureStopped;
- (void)_resetDataWithFlags:(unsigned int)flags;
- (void)_resetDeveloperSettings;
- (void)_schedulePeriodicPersistencePurge;
- (void)_scheduleUpdate;
- (void)_setActiveRegionForApp:(id)app infoDict:(id)dict;
- (void)_startPreauthorizedTestVerificationAction;
- (void)_tccChanged;
- (void)_turnOffEN;
- (void)_update;
- (void)_updateOverallStatus;
- (void)_updatePhase1ConfigurationIfNeeded:(id)needed;
- (void)_xpcConnectionAccept:(id)accept;
- (void)_xpcListenerEvent:(id)event;
- (void)activate;
- (void)appLaunchWithBundleID:(id)d activity:(unsigned int)activity shouldEnterForeground:(BOOL)foreground requiredRuntimeInSeconds:(int)seconds;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)bluetoothPowerStateChanged;
- (void)configurationManager:(id)manager didResolveCurrentRegion:(BOOL)region;
- (void)configurationManager:(id)manager errorDetected:(unsigned int)detected;
- (void)configurationManager:(id)manager exposureNotificationRegionConfigurationChanged:(id)changed;
- (void)configurationManager:(id)manager exposureNotificationRegionConfigurationRemovedForRegion:(id)region;
- (void)enqueuePreauthorizedTestVerificationUnlockAction;
- (void)enqueueScreenUnlockAction:(id)action withIdentifier:(id)identifier;
- (void)exposureDetectionManager:(id)manager errorDetected:(unsigned int)detected;
- (void)exposureDetectionManager:(id)manager finishedSessionWithResult:(id)result;
- (void)fetchServerConfigurationForAppBundleIdentifier:(id)identifier infoDictionary:(id)dictionary;
- (void)fetchServerConfigurationForRegion:(id)region completion:(id)completion;
- (void)init;
- (void)invalidate;
- (void)legacyHistoryPath;
- (void)monthlyTriggerActivateWithIntervalOverride:(unsigned int)override;
- (void)monthlyTriggerDeactivate;
- (void)notifyUserWithStatus:(int64_t)status;
- (void)onboardingManagerDidObserveDeviceUnlock:(id)unlock;
- (void)onboardingTriggerDeactivate;
- (void)onboardingTriggerResumeIfNeeded;
- (void)onboardingTriggerRetry:(unsigned int)retry;
- (void)pauseUpdate;
- (void)postAnalyticsOptInNotificationForRegion:(id)region;
- (void)postENOffNotification;
- (void)postExposureNotification:(id)notification;
- (void)postExposureSummaryAccessNotificationWithAppBundleIdentifier:(id)identifier string:(id)string;
- (void)postGeneralNotificationWithTitle:(id)title message:(id)message;
- (void)postMonthlySummaryNotificationForAppBundleIdentifier:(id)identifier;
- (void)postOnboardingNotificationForRegion:(id)region;
- (void)postPreAuthorizationNotificationForRegion:(id)region;
- (void)postTestVerificationReceivedNotification:(id)notification region:(id)region reportType:(unsigned int)type;
- (void)prefsChanged;
- (void)presentBuddyForRegion:(id)region errorHandler:(id)handler completionHandler:(id)completionHandler;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
- (void)setMonthlySummaryDisabled:(BOOL)disabled;
- (void)startAvailabilityAlertCycleWithBuddy:(BOOL)buddy;
- (void)startServerConfigurationFetchForRegion:(id)region;
- (void)tearDownAlertHandle;
- (void)textMessageManager:(id)manager errorDetected:(unsigned int)detected;
- (void)timeForAvailabilityAlertCycleReset;
- (void)updateExistingConsentForPhase1ActiveRegion:(int64_t)region;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)xpcConnectionInvalidated:(id)invalidated;
- (void)xpcPreAuthorizedDiagnosisKeysAvailable;
- (void)xpcReportStatus;
@end

@implementation ENDaemon

- (void)_scheduleUpdate
{
  if (!self->_updatePending)
  {
    self->_updatePending = 1;
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27__ENDaemon__scheduleUpdate__block_invoke;
    block[3] = &unk_278FD0F90;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)_update
{
  self->_updatePending = 0;
  if ([(ENDaemon *)self _bluetoothMonitorShouldRun])
  {
    [(ENDaemon *)self _bluetoothMonitorEnsureStarted];
  }

  else
  {
    [(ENDaemon *)self _bluetoothMonitorEnsureStopped];
  }

  if (self->_prefEnabled && !self->_prefPaused && [(CUSystemMonitor *)self->_systemMonitor firstUnlocked])
  {
    [(ENDaemon *)self _bluetoothTracingEnsureStarted];
  }

  else
  {
    [(ENDaemon *)self _bluetoothTracingEnsureStopped];
  }

  if (self->_prefEnabled)
  {
    [(ENDaemon *)self _databasesEnsureOpened];
  }

  else
  {
    [(ENDaemon *)self _databasesEnsureClosed];
  }

  if (self->_prefEnabled)
  {
    [(ENDaemon *)self _exposureManagersEnsureStarted];
  }

  else
  {
    [(ENDaemon *)self _exposureManagersEnsureStopped];
  }

  if (self->_prefConfigurationManagerEnabled)
  {
    [(ENDaemon *)self _configurationManagerEnsureStarted];
  }

  else
  {
    [(ENDaemon *)self _configurationManagerEnsureStopped];
  }

  if (self->_prefEnabled || !self->_availabilityAlertDisabled)
  {
    [(ENRegionMonitor *)self->_regionMonitor enableRegionMonitor];
    [(ENRegionMonitor *)self->_regionMonitor updateRegionHistoryFileStatus];
  }

  else
  {
    [(ENRegionMonitor *)self->_regionMonitor disableRegionMonitor];
  }

  if (self->_prefDifferentialPrivacyConsent == 2)
  {
    [(ENDaemon *)self _differentialPrivacyEnsureStarted];
  }

  else
  {
    [(ENDaemon *)self _differentialPrivacyEnsureStopped];
  }

  if (!self->_prefDeveloperServerConfiguration)
  {
    prefRegionIdentifierOverride = self->_prefRegionIdentifierOverride;
    if (!prefRegionIdentifierOverride || ![(NSString *)prefRegionIdentifierOverride length])
    {
      configurationStore = [(ENConfigurationManager *)self->_configurationManager configurationStore];
      [configurationStore clearTemporaryServerConfigurations];

      configurationStore2 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
      [configurationStore2 clearTemporaryCountrySubdivisionList];
    }
  }

  [(ENDaemon *)self _schedulePeriodicPersistencePurge];

  [(ENDaemon *)self _updateOverallStatus];
}

- (BOOL)_bluetoothMonitorShouldRun
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_xpcConnections;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        manager = [*(*(&v8 + 1) + 8 * i) manager];

        if (manager)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)_bluetoothMonitorEnsureStarted
{
  if (!self->_btMonitorStarted)
  {
    selfCopy = self;
    if (_MergedGlobals <= 30)
    {
      if (_MergedGlobals != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(ENDaemon *)self _bluetoothMonitorEnsureStarted];
      }
    }

    objc_initWeak(&location, selfCopy);
    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __42__ENDaemon__bluetoothMonitorEnsureStarted__block_invoke;
    v5[3] = &unk_278FD1738;
    objc_copyWeak(&v6, &location);
    [WeakRetained startPowerMonitoringWithStateChangeHandler:v5];

    selfCopy->_btMonitorStarted = 1;
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)_databasesEnsureClosed
{
  [(ENExposureDatabase *)self->_exposureDatabase close];
  exposureDatabase = self->_exposureDatabase;
  self->_exposureDatabase = 0;
}

- (void)_bluetoothTracingEnsureStopped
{
  if (self->_btTracingAppID)
  {
    selfCopy = self;
    if (_MergedGlobals <= 30)
    {
      if (_MergedGlobals != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(ENDaemon *)self _bluetoothTracingEnsureStopped];
      }
    }

    [(ENDaemon *)selfCopy _bluetoothTracingStop];
    btTracingAppID = selfCopy->_btTracingAppID;
    selfCopy->_btTracingAppID = 0;
  }
}

- (void)_exposureManagersEnsureStopped
{
  downloadManager = self->_downloadManager;
  if (downloadManager || self->_exposureDetectionManager || self->_testResultManager || self->_textMessageManager)
  {
    [(ENDownloadManager *)downloadManager invalidate];
    v4 = self->_downloadManager;
    self->_downloadManager = 0;

    [(ENExposureDetectionManager *)self->_exposureDetectionManager invalidate];
    exposureDetectionManager = self->_exposureDetectionManager;
    self->_exposureDetectionManager = 0;

    [(ENTestResultManager *)self->_testResultManager invalidate];
    testResultManager = self->_testResultManager;
    self->_testResultManager = 0;

    [(ENTextMessageManager *)self->_textMessageManager invalidate];
    textMessageManager = self->_textMessageManager;
    self->_textMessageManager = 0;
  }
}

- (void)_configurationManagerEnsureStopped
{
  if (self->_configurationManager)
  {
    selfCopy = self;
    if (_MergedGlobals <= 30)
    {
      if (_MergedGlobals != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(ENDaemon *)self _configurationManagerEnsureStopped];
      }
    }

    configurationManager = selfCopy->_configurationManager;
    selfCopy->_configurationManager = 0;
  }
}

- (void)_differentialPrivacyEnsureStopped
{
  if (self->_differentialPrivacyManager)
  {
    selfCopy = self;
    if (_MergedGlobals <= 50)
    {
      if (_MergedGlobals != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(ENDaemon *)self _differentialPrivacyEnsureStopped];
      }
    }

    differentialPrivacyManager = selfCopy->_differentialPrivacyManager;
    selfCopy->_differentialPrivacyManager = 0;
  }
}

- (void)_schedulePeriodicPersistencePurge
{
  identifier = [*self identifier];
  LogPrintF_safe(&_MergedGlobals, "[ENDaemon _schedulePeriodicPersistencePurge]", 50, "Scheduling %@ with interval %.1lf", identifier, *&a2);
}

- (void)_updateOverallStatus
{
  v14[1] = *MEMORY[0x277D85DE8];
  overallStatus = self->_overallStatus;
  getOverallStatus = [(ENDaemon *)self getOverallStatus];
  if (getOverallStatus != overallStatus)
  {
    v5 = getOverallStatus;
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [(ENDaemon *)overallStatus _updateOverallStatus];
    }

    self->_overallStatus = v5;
    if (overallStatus - 1 < 2)
    {
      if (overallStatus == 1 && v5 == 4)
      {
        [(ENDaemon *)self notifyUserWithStatus:4];
      }

      else if (v5 == 1)
      {
        userNotificationCenter = [(ENDaemon *)self userNotificationCenter];
        v14[0] = @"com.apple.ExposureNotification.UserNotification.off";
        v9 = [MEMORY[0x277CBEA68] arrayWithObjects:v14 count:1];
        [userNotificationCenter removeDeliveredNotificationsWithIdentifiers:v9];
      }

      *&self->_wasInRestrictedStatus = 0;
      CFPrefs_RemoveValue();
      goto LABEL_21;
    }

    if (overallStatus != 3)
    {
      if (overallStatus != 4)
      {
        goto LABEL_22;
      }

      if (v5 != 3)
      {
        if (v5 == 1)
        {
          selfCopy2 = self;
          v7 = 1;
LABEL_17:
          [(ENDaemon *)selfCopy2 notifyUserWithStatus:v7];
          goto LABEL_22;
        }

        goto LABEL_22;
      }

      self->_wasInRestrictedStatus = 1;
LABEL_21:
      CFPrefs_RemoveValue();
      goto LABEL_22;
    }

    if (v5 != 1)
    {
      if (v5 == 4)
      {
        selfCopy2 = self;
        v7 = 4;
        goto LABEL_17;
      }

LABEL_22:
      [(ENDaemon *)self monthlyTriggerActivateWithIntervalOverride:0];
      [(ENDaemon *)self xpcReportStatus];
      return;
    }

    wasInRestrictedStatus = self->_wasInRestrictedStatus;
    if (!wasInRestrictedStatus && !self->_wasInDifferentActiveRegion)
    {
      goto LABEL_22;
    }

    if (_MergedGlobals <= 30)
    {
      if (_MergedGlobals == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_32;
        }

        wasInRestrictedStatus = self->_wasInRestrictedStatus;
      }

      LogPrintF_safe(&_MergedGlobals, "[ENDaemon _updateOverallStatus]", 30, "NotifyStatusUpdate defer alert %i-%i", wasInRestrictedStatus, self->_wasInDifferentActiveRegion);
    }

LABEL_32:
    *&self->_wasInRestrictedStatus = 0;
    CFPrefs_RemoveValue();
    CFPrefs_RemoveValue();
    v11 = dispatch_time(0, 5000000000);
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__ENDaemon__updateOverallStatus__block_invoke;
    block[3] = &unk_278FD11C8;
    block[4] = self;
    block[5] = 1;
    dispatch_after(v11, dispatchQueue, block);
    goto LABEL_22;
  }
}

- (int64_t)getOverallStatus
{
  if (self->_prefServerForceDisable || self->_prefStoreDemoMode)
  {
    return 4;
  }

  if (!self->_prefEnabled)
  {
    return 2;
  }

  if (self->_prefPaused)
  {
    return 5;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  isBluetoothPoweredOn = [WeakRetained isBluetoothPoweredOn];

  if (isBluetoothPoweredOn)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

void __21__ENDaemon__activate__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) isDeviceUnlocked];
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __21__ENDaemon__activate__block_invoke_2_cold_1(v2, v1);
  }

  v3 = [*v1 screenUnlockPendingActions];
  v4 = ([v3 count] != 0) & v2;

  if (v4 == 1)
  {
    v5 = [*v1 screenUnlockPendingActions];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __21__ENDaemon__activate__block_invoke_3;
    v7[3] = &unk_278FD14B8;
    v7[4] = *v1;
    [v5 enumerateKeysAndObjectsUsingBlock:v7];

    v6 = [*v1 screenUnlockPendingActions];
    [v6 removeAllObjects];
  }
}

- (BOOL)isDeviceUnlocked
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = SBSGetScreenLockStatus();
  v7 = @"ExtendedDeviceLockState";
  v8[0] = MEMORY[0x277CBEC30];
  [MEMORY[0x277CBEAC8] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v3 = MKBGetDeviceLockState();
  return v3 != 6 && (v3 - 3) < 0xFFFFFFFE && v2 == 0;
}

- (ENDaemon)init
{
  if (objc_opt_class() && (v30.receiver = self, v30.super_class = ENDaemon, (self = [(ENDaemon *)&v30 init]) != 0))
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("ENDaemon", v3);
    dispatchQueue = self->_dispatchQueue;
    self->_dispatchQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("ENDetection", v6);
    dispatchExposureDetectionManagingQueue = self->_dispatchExposureDetectionManagingQueue;
    self->_dispatchExposureDetectionManagingQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("ENDownload", v9);
    dispatchDownloadManagingQueue = self->_dispatchDownloadManagingQueue;
    self->_dispatchDownloadManagingQueue = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("ENTestResult", v12);
    dispatchTestResultManagingQueue = self->_dispatchTestResultManagingQueue;
    self->_dispatchTestResultManagingQueue = v13;

    self->_tccChangedNotifyToken = -1;
    *&self->_prefsChangedNotifyToken = -1;
    *&self->_proxyStatusChangedNotifyToken = -1;
    self->_screenLockNotifyToken = -1;
    v15 = [objc_alloc(MEMORY[0x277CBEB48]) initWithCapacity:5];
    [(ENDaemon *)self setPreviouslyTrackedApps:v15];

    _CFPreferencesSetBackupDisabled();
    v16 = ENDataVaultURL();
    v17 = *MEMORY[0x277CBE870];
    v29 = 0;
    v18 = [v16 setResourceValue:MEMORY[0x277CBEC20] forKey:v17 error:&v29];
    v19 = v29;

    if ((v18 & 1) == 0 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [(ENDaemon *)v19 init];
    }

    v20 = [objc_alloc(MEMORY[0x277CE2030]) initWithBundleIdentifier:@"com.apple.ExposureNotification.UserNotification" queue:self->_dispatchQueue];
    [(ENDaemon *)self setUserNotificationCenter:v20];

    userNotificationCenter = [(ENDaemon *)self userNotificationCenter];
    [userNotificationCenter setDelegate:self];

    userNotificationCenter2 = [(ENDaemon *)self userNotificationCenter];
    [userNotificationCenter2 setWantsNotificationResponsesDelivered];

    [(ENTemporaryExposureKeyManager *)self->_temporaryExposureKeyManager resetClientState];
    v23 = objc_alloc_init(MEMORY[0x277CBEB30]);
    remoteUISessions = self->_remoteUISessions;
    self->_remoteUISessions = v23;

    v25 = objc_alloc_init(ENOnboardingManager);
    onboardingManager = self->_onboardingManager;
    self->_onboardingManager = v25;

    [(ENOnboardingManager *)self->_onboardingManager setDelegate:self];
    self = self;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)descriptionWithLevel:(int)level
{
  v167 = *MEMORY[0x277D85DE8];
  levelCopy = level;
  v159 = 0;
  v160 = &v159;
  v161 = 0x3032000000;
  v162 = __Block_byref_object_copy__3;
  v163 = __Block_byref_object_dispose__3;
  v164 = 0;
  obj = 0;
  NSAppendPrintF_safe(&obj, "\n");
  objc_storeStrong(&v164, obj);
  v3 = (v160 + 5);
  v157 = v160[5];
  mach_continuous_time();
  v4 = UpTicksToSeconds();
  mach_absolute_time();
  v5 = UpTicksToSeconds();
  getOverallStatus = [(ENDaemon *)self getOverallStatus];
  if (getOverallStatus > 6)
  {
    v7 = "?";
  }

  else
  {
    v7 = off_278FD20E0[getOverallStatus];
  }

  NSAppendPrintF(&v157, "Up %ll{dur}, Awake %ll{dur}, Status %s\n", v4, v5, v7);
  objc_storeStrong(v3, v157);
  v8 = (v160 + 5);
  v156 = v160[5];
  NSAppendPrintF_safe(&v156, "Active entity: %@\n", self->_activeEntity);
  objc_storeStrong(v8, v156);
  v109 = self->_configurationManager;
  configurationStore = [(ENConfigurationManager *)v109 configurationStore];
  entity = [(ENActiveEntity *)self->_activeEntity entity];
  region = [entity region];

  if (region)
  {
    v11 = [configurationStore configurationForRegion:region];
    v12 = [configurationStore serverConfigurationForRegion:region];
    userConsent = [v11 userConsent];
    v14 = (v160 + 5);
    v155 = v160[5];
    enEnabled = [v12 enEnabled];
    enVersion = [v11 enVersion];
    v17 = "disabled";
    if (enEnabled)
    {
      v17 = "enabled";
    }

    NSAppendPrintF_safe(&v155, "Config: EN %s, Vers %d\n", v17, enVersion);
    objc_storeStrong(v14, v155);
    v18 = (v160 + 5);
    v154 = v160[5];
    consent = [userConsent consent];
    if (consent > 4)
    {
      v20 = "?";
    }

    else
    {
      v20 = off_278FD2090[consent];
    }

    differentialPrivacyConsent = [userConsent differentialPrivacyConsent];
    if (differentialPrivacyConsent > 4)
    {
      v22 = "?";
    }

    else
    {
      v22 = off_278FD2090[differentialPrivacyConsent];
    }

    NSAppendPrintF_safe(&v154, "Consent: %s, DP %s\n", v20, v22);
    objc_storeStrong(v18, v154);
    v23 = (v160 + 5);
    v153 = v160[5];
    NSAppendPrintF_safe(&v153, "Server:  %@\n", v12);
    objc_storeStrong(v23, v153);
  }

  entity2 = [(ENActiveEntity *)self->_activeEntity entity];
  bundleIdentifier = [entity2 bundleIdentifier];

  if (bundleIdentifier)
  {
    v26 = [MEMORY[0x277CC1E68] applicationProxyForIdentifier:bundleIdentifier placeholder:0];
    v27 = (v160 + 5);
    v152 = v160[5];
    appState = [v26 appState];
    if ([appState isInstalled])
    {
      v29 = "yes";
    }

    else
    {
      v29 = "no";
    }

    appState2 = [v26 appState];
    isPlaceholder = [appState2 isPlaceholder];
    v32 = [(ENDaemon *)self tccAccessForBundleID:bundleIdentifier];
    if (isPlaceholder)
    {
      v33 = "yes";
    }

    else
    {
      v33 = "no";
    }

    if (v32 > 2)
    {
      v34 = "?";
    }

    else
    {
      v34 = off_278FD2078[v32];
    }

    NSAppendPrintF_safe(&v152, "App Installed: %s, Placeholder: %s, TCC: %s\n", v29, v33, v34);
    objc_storeStrong(v27, v152);
  }

  v35 = (v160 + 5);
  v151 = v160[5];
  if ([(ENConfigurationManager *)v109 isInGracePeriodTransition])
  {
    v36 = "yes";
  }

  else
  {
    v36 = "no";
  }

  NSAppendPrintF_safe(&v151, "Grace transition in-progress:  %s\n", v36);
  objc_storeStrong(v35, v151);
  if ([(NSMutableDictionary *)self->_appActivities count])
  {
    v37 = (v160 + 5);
    v150 = v160[5];
    NSAppendPrintF(&v150, "AppActivities: %##@\n", self->_appActivities);
    objc_storeStrong(v37, v150);
  }

  v38 = (v160 + 5);
  v149 = v160[5];
  v39 = "disabled";
  if (self->_automaticRegionSwitchEnabled)
  {
    v39 = "enabled";
  }

  NSAppendPrintF_safe(&v149, "Automatic region switch:\t%s\n", v39);
  objc_storeStrong(v38, v149);
  v40 = (v160 + 5);
  v148 = v160[5];
  v41 = "disabled";
  if (!self->_availabilityAlertDisabled)
  {
    v41 = "enabled";
  }

  NSAppendPrintF_safe(&v148, "Availability alert: %s\n", v41);
  objc_storeStrong(v40, v148);
  v42 = [(ENDaemon *)self _getAvailabilityAlertCountIncrement:0 reset:0];
  v43 = (v160 + 5);
  v147 = v160[5];
  NSAppendPrintF_safe(&v147, "Availability alert daily count: %d\n", v42);
  objc_storeStrong(v43, v147);
  v44 = (v160 + 5);
  v146 = v160[5];
  v45 = "disabled";
  if (self->_configurationManager)
  {
    v45 = "enabled";
  }

  NSAppendPrintF_safe(&v146, "Cloud: %s\n", v45);
  objc_storeStrong(v44, v146);
  v46 = (v160 + 5);
  v145 = v160[5];
  downloadManager = self->_downloadManager;
  if (!downloadManager)
  {
    downloadManager = @"disabled";
  }

  NSAppendPrintF_safe(&v145, "Download: %@\n", downloadManager);
  objc_storeStrong(v46, v145);
  v48 = (v160 + 5);
  v144 = v160[5];
  v49 = "disabled";
  if (self->_differentialPrivacyManager)
  {
    v49 = "enabled";
  }

  NSAppendPrintF_safe(&v144, "DP: %s\n", v49);
  objc_storeStrong(v48, v144);
  v50 = (v160 + 5);
  v143 = v160[5];
  if (self->_prefStoreDemoMode)
  {
    v51 = "yes";
  }

  else
  {
    v51 = "no";
  }

  NSAppendPrintF_safe(&v143, "StoreDemoMode: %s\n", v51);
  objc_storeStrong(v50, v143);
  if ([(NSMutableOrderedSet *)self->_previouslyTrackedApps count])
  {
    v52 = (v160 + 5);
    v142 = v160[5];
    NSAppendPrintF(&v142, "Previously tracked apps: %##@\n", self->_previouslyTrackedApps);
    objc_storeStrong(v52, v142);
  }

  Int64 = CFPrefs_GetInt64();
  v54 = (v160 + 5);
  v141 = v160[5];
  if (Int64)
  {
    v55 = "yes";
  }

  else
  {
    v55 = "no";
  }

  NSAppendPrintF_safe(&v141, "Onboarding retries expired: %s\n", v55);
  objc_storeStrong(v54, v141);
  v56 = (v160 + 5);
  v140 = v160[5];
  entity3 = [(ENActiveEntity *)self->_activeEntity entity];
  bundleIdentifier2 = [entity3 bundleIdentifier];
  NSAppendPrintF_safe(&v140, "TrackedApp: %@ (BT %@)\n", bundleIdentifier2, self->_btTracingAppID);
  objc_storeStrong(v56, v140);

  _getLegalConsentPageCount = [(ENDaemon *)self _getLegalConsentPageCount];
  v60 = (v160 + 5);
  v139 = v160[5];
  NSAppendPrintF_safe(&v139, "Legal consent page view daily count: %d\n", _getLegalConsentPageCount);
  objc_storeStrong(v60, v139);
  _getExposureMatchAttemptBool = [(ENDaemon *)self _getExposureMatchAttemptBool];
  v62 = (v160 + 5);
  v138 = v160[5];
  if (_getExposureMatchAttemptBool)
  {
    v63 = "yes";
  }

  else
  {
    v63 = "no";
  }

  NSAppendPrintF_safe(&v138, "Exposure match attempt completed: %s\n", v63);
  objc_storeStrong(v62, v138);
  v64 = (v160 + 5);
  v137 = v160[5];
  if (self->_monthlySummaryDisabled)
  {
    v65 = "yes";
  }

  else
  {
    v65 = "no";
  }

  NSAppendPrintF_safe(&v137, "Monthly Summary Disabled: %s\n", v65);
  objc_storeStrong(v64, v137);
  v66 = (v160 + 5);
  v136 = v160[5];
  serviceStatus = [(PrivacyProxyServiceStatus *)self->_networkProxyStatus serviceStatus];
  if ((self->_networkProxyTraffic & 0x800) != 0)
  {
    v68 = "yes";
  }

  else
  {
    v68 = "no";
  }

  NSAppendPrintF_safe(&v136, "Network Proxy: %lu, EN: %s\n", serviceStatus, v68);
  objc_storeStrong(v66, v136);
  entity4 = [(ENActiveEntity *)self->_activeEntity entity];
  region2 = [entity4 region];
  v71 = [configurationStore serverConfigurationForRegion:region2];

  if (v71)
  {
    v72 = (v160 + 5);
    v135 = v160[5];
    if ([v71 isChaffingEnabled])
    {
      v73 = "enabled";
    }

    else
    {
      v73 = "disabled";
    }

    if (self->_prefNetworkProxyEnabled)
    {
      [v71 chaffingSelectionPercentageAlternative];
    }

    else
    {
      [v71 chaffingSelectionPercentage];
    }

    NSAppendPrintF_safe(&v135, "Chaffing: %s, Percent: %f\n", v73, v74);
    objc_storeStrong(v72, v135);
  }

  v75 = (v160 + 5);
  v134 = v160[5];
  if (self->_userAlert)
  {
    v76 = "yes";
  }

  else
  {
    v76 = "no";
  }

  NSAppendPrintF_safe(&v134, "UserAlert:  %s\n", v76);
  objc_storeStrong(v75, v134);
  v77 = (v160 + 5);
  v133 = v160[5];
  NSAppendPrintF_safe(&v133, "Usage: UEna %u, UDis %u, Paused %u, Unpaused %u, AlrSh %u, AlrDS %u, AlrRs %u, AlrDR %u, MgrA %u, GetDK %u, RstA %u, ExAc %u, ExAK %u, ExFn %u, ExGIn %u ExGEW %u\n", self->_usageUserEnabled, self->_usageUserDisabled, self->_usageUserPaused, self->_usageUserUnpaused, self->_usageUserAlertShare, self->_usageUserAlertDontShare, self->_usageUserAlertReset, self->_usageUserAlertDontReset, self->_usageManagerActivate, self->_usageGetDiagnosisKeys, self->_usageResetAllData, self->_usageExposureDetectFileActivate, self->_usageExposureDetectFileAddKeys, self->_usageExposureDetectFileFinish, self->_usageExposureDetectFileGetExposures, self->_usageExposureDetectFileGetExposureWindows);
  objc_storeStrong(v77, v133);
  v78 = [(NSMutableSet *)self->_xpcConnections count];
  v79 = v78 != 0;
  if (v78)
  {
    v80 = (v160 + 5);
    v132 = v160[5];
    NSAppendPrintF_safe(&v132, "\n");
    objc_storeStrong(v80, v132);
    v81 = (v160 + 5);
    v131 = v160[5];
    NSAppendPrintF_safe(&v131, "XPC Cnx: %d\n", v78);
    objc_storeStrong(v81, v131);
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v82 = self->_xpcConnections;
    v83 = [(NSMutableSet *)v82 countByEnumeratingWithState:&v127 objects:v166 count:16];
    if (v83)
    {
      v84 = *v128;
      do
      {
        for (i = 0; i != v83; ++i)
        {
          if (*v128 != v84)
          {
            objc_enumerationMutation(v82);
          }

          v86 = (v160 + 5);
          v126 = v160[5];
          v87 = CUDescriptionWithLevel();
          NSAppendPrintF_safe(&v126, "    %@\n", v87);
          objc_storeStrong(v86, v126);
        }

        v83 = [(NSMutableSet *)v82 countByEnumeratingWithState:&v127 objects:v166 count:16];
      }

      while (v83);
    }

    v88 = (v160 + 5);
    v125 = v160[5];
    NSAppendPrintF_safe(&v125, "\n");
    objc_storeStrong(v88, v125);
  }

  if (levelCopy <= 0x13)
  {
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v89 = CFPrefs_CopyKeys();
    v90 = [v89 countByEnumeratingWithState:&v121 objects:v165 count:16];
    if (!v90)
    {
LABEL_91:

      goto LABEL_92;
    }

    v91 = 0;
    v92 = *v122;
    do
    {
      for (j = 0; j != v90; ++j)
      {
        if (*v122 != v92)
        {
          objc_enumerationMutation(v89);
        }

        v94 = *(*(&v121 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!v79)
          {
            v95 = (v160 + 5);
            v120 = v160[5];
            NSAppendPrintF_safe(&v120, "\n");
            objc_storeStrong(v95, v120);
          }

          v96 = CFPrefs_CopyTypedValue();
          v97 = (v160 + 5);
          v119 = v160[5];
          v98 = CUPrintNSObjectOneLine();
          NSAppendPrintF(&v119, "Pref: '%@' = '%@'\n", v94, v98);
          objc_storeStrong(v97, v119);

          ++v91;
          v79 = 1;
        }
      }

      v90 = [v89 countByEnumeratingWithState:&v121 objects:v165 count:16];
    }

    while (v90);

    if (v91 >= 1)
    {
      v99 = v160;
      v118 = v160[5];
      NSAppendPrintF_safe(&v118, "\n");
      v100 = v118;
      v89 = v99[5];
      v99[5] = v100;
      goto LABEL_91;
    }
  }

LABEL_92:
  v101 = (v160 + 5);
  v117 = v160[5];
  NSAppendPrintF_safe(&v117, "Configurations:\n");
  objc_storeStrong(v101, v117);
  _readPreferenceRegionPendingOnboarding = [(ENDaemon *)self _readPreferenceRegionPendingOnboarding];
  allRegionServerConfigurations = [configurationStore allRegionServerConfigurations];
  v104 = [allRegionServerConfigurations count] > 0xA;

  if (v104)
  {
    v114[0] = MEMORY[0x277D85DD0];
    v114[1] = 3221225472;
    v114[2] = __33__ENDaemon_descriptionWithLevel___block_invoke;
    v114[3] = &unk_278FD1440;
    v114[4] = configurationStore;
    v115 = _readPreferenceRegionPendingOnboarding;
    v116 = &v159;
    [configurationStore enumerateCachedRegionServerConfigurationsWithHandler:v114];
  }

  else
  {
    v113[0] = MEMORY[0x277D85DD0];
    v113[1] = 3221225472;
    v113[2] = __33__ENDaemon_descriptionWithLevel___block_invoke_2;
    v113[3] = &unk_278FD1468;
    v113[4] = configurationStore;
    v113[5] = &v159;
    [configurationStore enumerateCachedRegionServerConfigurationsWithHandler:v113];
  }

  v105 = (v160 + 5);
  v112 = v160[5];
  NSAppendPrintF_safe(&v112, "\n");
  objc_storeStrong(v105, v112);
  v106 = v160[5];

  _Block_object_dispose(&v159, 8);

  return v106;
}

void __33__ENDaemon_descriptionWithLevel___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 region];
  v6 = [v4 configurationForRegion:v5];

  v7 = [v6 userConsent];
  if ([v7 consent] || objc_msgSend(v6, "everStartedOnboarding"))
  {
  }

  else
  {
    v11 = a1[5];
    v12 = [v6 region];
    LODWORD(v11) = [v11 isEqual:v12];

    if (!v11)
    {
      goto LABEL_5;
    }
  }

  v8 = *(a1[6] + 8);
  obj = *(v8 + 40);
  NSAppendPrintF_safe(&obj, "%@\n", v6);
  objc_storeStrong((v8 + 40), obj);
  v9 = *(a1[6] + 8);
  v14 = *(v9 + 40);
  NSAppendPrintF_safe(&v14, "%@\n", v3);
  objc_storeStrong((v9 + 40), v14);
  v10 = *(a1[6] + 8);
  v13 = *(v10 + 40);
  NSAppendPrintF_safe(&v13, "\n");
  objc_storeStrong((v10 + 40), v13);
LABEL_5:
}

void __33__ENDaemon_descriptionWithLevel___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 8);
  obj = *(v4 + 40);
  v5 = a2;
  v6 = [v5 region];
  v7 = [v3 configurationForRegion:v6];
  NSAppendPrintF_safe(&obj, "%@\n", v7);
  objc_storeStrong((v4 + 40), obj);

  v8 = *(*(a1 + 40) + 8);
  v11 = *(v8 + 40);
  NSAppendPrintF_safe(&v11, "%@\n", v5);

  objc_storeStrong((v8 + 40), v11);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  NSAppendPrintF_safe(&v10, "\n");
  objc_storeStrong((v9 + 40), v10);
}

- (void)activate
{
  DeviceClass = GestaltGetDeviceClass();
  if (DeviceClass == 1)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __20__ENDaemon_activate__block_invoke;
    block[3] = &unk_278FD0F90;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }

  else if (_MergedGlobals <= 30)
  {
    if (_MergedGlobals != -1 || (DeviceClass = _LogCategory_Initialize(), DeviceClass))
    {
      [(ENDaemon *)DeviceClass activate];
    }
  }
}

void *__20__ENDaemon_activate__block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result[4];
  if ((*(v4 + 16) & 1) == 0)
  {
    v5 = result;
    *(v4 + 16) = 1;
    if (_MergedGlobals <= 30)
    {
      if (_MergedGlobals != -1 || (result = _LogCategory_Initialize(), result))
      {
        __20__ENDaemon_activate__block_invoke_cold_1(result, a2, a3);
      }
    }

    v6 = v5[4];

    return [v6 _activate];
  }

  return result;
}

- (id)_readPreferenceActiveEntity
{
  CFDataGetTypeID();
  v2 = CFPrefs_CopyTypedValue();
  if ([v2 length])
  {
    v7 = 0;
    v3 = [MEMORY[0x277CCAAC0] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v7];
    v4 = v7;
    if (v4)
    {
      [(ENDaemon *)v4 _readPreferenceActiveEntity];
      v5 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
  }

  v3 = v3;
  v5 = v3;
LABEL_6:

  return v5;
}

- (BOOL)_writePreferenceActiveEntity:(id)entity
{
  entityCopy = entity;
  if (entityCopy)
  {
    v16 = 0;
    v5 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:entityCopy requiringSecureCoding:1 error:&v16];
    v6 = v16;
    if (v6)
    {
      [(ENDaemon *)entityCopy _writePreferenceActiveEntity:v6, &v17];
      v14 = v17;
    }

    else if (v5)
    {
      CFPrefs_SetValue();
      configurationStore = [(ENConfigurationManager *)self->_configurationManager configurationStore];
      entity = [entityCopy entity];
      region = [entity region];
      v10 = [configurationStore serverConfigurationForRegion:region];

      if (v10)
      {
        v11 = MEMORY[0x277CCAAB8];
        entity2 = [entityCopy entity];
        v13 = [v11 archivedDataWithRootObject:entity2 requiringSecureCoding:1 error:0];

        if (v13)
        {
          CFPrefs_SetValue();
        }
      }

      v14 = 1;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    [ENDaemon _writePreferenceActiveEntity:?];
    v14 = v18;
  }

  return v14;
}

- (id)_readPreferenceRegionPendingOnboarding
{
  CFDataGetTypeID();
  v2 = CFPrefs_CopyTypedValue();
  if ([v2 length])
  {
    v7 = 0;
    v3 = [MEMORY[0x277CCAAC0] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v7];
    v4 = v7;
    if (v4)
    {
      [(ENDaemon *)v4 _readPreferenceRegionPendingOnboarding];
      v5 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
  }

  v3 = v3;
  v5 = v3;
LABEL_6:

  return v5;
}

- (BOOL)_writePreferenceRegionPendingOnboarding:(id)onboarding
{
  onboardingCopy = onboarding;
  if (onboardingCopy)
  {
    v8 = 0;
    v4 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:onboardingCopy requiringSecureCoding:1 error:&v8];
    v5 = v8;
    if (v5)
    {
      [(ENDaemon *)onboardingCopy _writePreferenceRegionPendingOnboarding:v5, &v9];
      v6 = v9;
    }

    else if (v4)
    {
      CFPrefs_SetValue();
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    [ENDaemon _writePreferenceRegionPendingOnboarding:?];
    v6 = v10;
  }

  return v6;
}

- (BOOL)_isNKDActive
{
  activeEntity = [(ENDaemon *)self activeEntity];
  v4 = [activeEntity activeStatus] == 3 && self->_prefEnableNKD;

  return v4;
}

- (void)_activate
{
  dictionary = [MEMORY[0x277CBEB30] dictionary];
  screenUnlockPendingActions = self->_screenUnlockPendingActions;
  self->_screenUnlockPendingActions = dictionary;

  self->_startTicks = mach_absolute_time();
  self->_startTicksFull = mach_continuous_time();
  CFStringGetTypeID();
  v5 = CFPrefs_CopyTypedValue();
  v6 = [MEMORY[0x277CC1E68] applicationProxyForIdentifier:v5];
  CFStringGetTypeID();
  v7 = CFPrefs_CopyTypedValue();
  if (v6)
  {
    appState = [v6 appState];
    isInstalled = [appState isInstalled];

    if (isInstalled)
    {
      if (v7)
      {
        if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&_MergedGlobals, "[ENDaemon _activate]", 30, "Attempting to Migrate Region %@ for AppID: %@", v7, v5);
        }

        v16 = [ENConfigurationManager staticRegionForBundleID:v5];
        if (v16)
        {
          v14 = [MEMORY[0x277CC5CA0] regionWithCode:v16];
        }

        else
        {
          v17 = [ENCoreTelephonyUtility countryCodeISOForMobileCountryCode:v7];
          if (v17)
          {
            v14 = [objc_alloc(MEMORY[0x277CC5CA0]) initWithCountryCode:v17];
          }

          else
          {
            if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&dword_281346508, "[ENDaemon _activate]", 90, "Invalid MCC -> region: %@ for AppID: %@", v7, v5);
            }

            v14 = 0;
          }
        }

        v18 = [ENActiveEntity alloc];
        v19 = [objc_alloc(MEMORY[0x277CC5C18]) initWithBundleID:v5 region:v14];
        v13 = [(ENActiveEntity *)v18 initWithEntity:v19 activeStatus:2];

        [(ENDaemon *)self _writePreferenceActiveEntity:v13];
        if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          [(ENDaemon *)v13 _activate];
        }

        goto LABEL_24;
      }
    }
  }

  _readPreferenceActiveEntity = [(ENDaemon *)self _readPreferenceActiveEntity];
  v13 = _readPreferenceActiveEntity;
  v14 = 0;
  v15 = 0;
  if (v7)
  {
LABEL_24:
    CFPrefs_RemoveValue();
    _readPreferenceActiveEntity = CFPrefs_RemoveValue();
    v15 = v14;
  }

  v51 = v15;
  if (v5)
  {
    if (_MergedGlobals <= 50)
    {
      if (_MergedGlobals != -1 || (_readPreferenceActiveEntity = _LogCategory_Initialize(), _readPreferenceActiveEntity))
      {
        [(ENDaemon *)_readPreferenceActiveEntity _activate];
      }
    }

    CFPrefs_RemoveValue();
    v20 = TCCAccessCopyInformation();
    v21 = [MEMORY[0x277CCAC28] predicateWithFormat:@"%K == %@", *MEMORY[0x277D6C0D8], *MEMORY[0x277CBED20]];
    v22 = [v20 filteredArrayUsingPredicate:v21];
    if ([v22 count])
    {
      [(ENDaemon *)self _disableAvailabilityAlertIfNeeded];
    }
  }

  v65[0] = 0;
  objc_storeStrong(&self->_activeEntity, v13);
  self->_prefTCCAllowWithoutApps = CFPrefs_GetInt64() != 0;
  self->_wasInRestrictedStatus = CFPrefs_GetInt64() != 0;
  self->_wasInDifferentActiveRegion = CFPrefs_GetInt64() != 0;
  Int64 = CFPrefs_GetInt64();
  if (v65[0])
  {
    v24 = CFPrefs_GetInt64() != 0;
  }

  else
  {
    v24 = Int64 == 0;
    CFPrefs_RemoveValue();
  }

  [(ENDaemon *)self setMonthlySummaryDisabled:v24];
  LogSetAppID();
  LogControl();
  if (!self->_xpcListener)
  {
    mach_service = xpc_connection_create_mach_service("com.apple.ExposureNotification", self->_dispatchQueue, 1uLL);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __21__ENDaemon__activate__block_invoke;
    handler[3] = &unk_278FD10A8;
    handler[4] = self;
    xpc_connection_set_event_handler(mach_service, handler);
    xpcListener = self->_xpcListener;
    self->_xpcListener = mach_service;
    v27 = mach_service;

    xpc_connection_activate(v27);
  }

  if (self->_screenLockNotifyToken == -1)
  {
    v28 = *MEMORY[0x277D67778];
    dispatchQueue = self->_dispatchQueue;
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __21__ENDaemon__activate__block_invoke_2;
    v63[3] = &unk_278FD14E0;
    v63[4] = self;
    notify_register_dispatch(v28, &self->_screenLockNotifyToken, dispatchQueue, v63);
  }

  if (self->_prefsChangedNotifyToken == -1)
  {
    v30 = self->_dispatchQueue;
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __21__ENDaemon__activate__block_invoke_5;
    v62[3] = &unk_278FD14E0;
    v62[4] = self;
    notify_register_dispatch("com.apple.ExposureNotification.prefsChanged", &self->_prefsChangedNotifyToken, v30, v62);
  }

  if (self->_profileChangedNotifyToken == -1)
  {
    v31 = self->_dispatchQueue;
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __21__ENDaemon__activate__block_invoke_6;
    v61[3] = &unk_278FD14E0;
    v61[4] = self;
    notify_register_dispatch("com.apple.MCX._managementStatusChangedForDomains", &self->_profileChangedNotifyToken, v31, v61);
  }

  if (self->_proxyConfigChangedNotifyToken == -1)
  {
    utf8ValueSafe = [@"com.apple.networkserviceproxy.privacy-proxy-configuration-changed" utf8ValueSafe];
    v33 = self->_dispatchQueue;
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __21__ENDaemon__activate__block_invoke_7;
    v60[3] = &unk_278FD14E0;
    v60[4] = self;
    notify_register_dispatch(utf8ValueSafe, &self->_proxyConfigChangedNotifyToken, v33, v60);
  }

  if (self->_proxyStatusChangedNotifyToken == -1)
  {
    utf8ValueSafe2 = [@"com.apple.networkserviceproxy.privacy-proxy-service-status-changed" utf8ValueSafe];
    v35 = self->_dispatchQueue;
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __21__ENDaemon__activate__block_invoke_8;
    v59[3] = &unk_278FD14E0;
    v59[4] = self;
    notify_register_dispatch(utf8ValueSafe2, &self->_proxyStatusChangedNotifyToken, v35, v59);
  }

  if (!self->_systemMonitor)
  {
    v36 = objc_alloc_init(MEMORY[0x277D02930]);
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = v36;
    v38 = v36;

    [(CUSystemMonitor *)v38 setDispatchQueue:self->_dispatchQueue];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __21__ENDaemon__activate__block_invoke_9;
    v58[3] = &unk_278FD0F90;
    v58[4] = self;
    [(CUSystemMonitor *)v38 setFirstUnlockHandler:v58];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __21__ENDaemon__activate__block_invoke_10;
    v57[3] = &unk_278FD0F90;
    v57[4] = self;
    [(CUSystemMonitor *)v38 setSystemLockStateChangedHandler:v57];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __21__ENDaemon__activate__block_invoke_11;
    v56[3] = &unk_278FD0F90;
    v56[4] = self;
    [(CUSystemMonitor *)v38 activateWithCompletion:v56];
  }

  if (self->_tccChangedNotifyToken == -1)
  {
    v39 = self->_dispatchQueue;
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __21__ENDaemon__activate__block_invoke_12;
    v55[3] = &unk_278FD14E0;
    v55[4] = self;
    notify_register_dispatch("com.apple.tcc.access.changed", &self->_tccChangedNotifyToken, v39, v55);
  }

  if (!self->_stateHandler)
  {
    location[1] = MEMORY[0x277D85DD0];
    location[2] = 3221225472;
    location[3] = __21__ENDaemon__activate__block_invoke_13;
    location[4] = &unk_278FD1508;
    location[5] = self;
    self->_stateHandler = os_state_add_handler();
  }

  if (!self->_temporaryExposureKeyManager)
  {
    v40 = [[ENTemporaryExposureKeyManager alloc] initWithQueue:self->_dispatchQueue];
    temporaryExposureKeyManager = self->_temporaryExposureKeyManager;
    self->_temporaryExposureKeyManager = v40;

    [(ENTemporaryExposureKeyManager *)self->_temporaryExposureKeyManager setDelegate:self];
  }

  objc_initWeak(location, self);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __21__ENDaemon__activate__block_invoke_14;
  v52[3] = &unk_278FD1530;
  v52[4] = self;
  objc_copyWeak(&v53, location);
  [WeakRetained registerStateMetricPullCallback:v52];

  [(ENDaemon *)self _regionMonitorEnsureStarted];
  [(ENDaemon *)self _configurationManagerEnsureStarted];
  _readPreferenceActiveEntity2 = [(ENDaemon *)self _readPreferenceActiveEntity];
  activeEntity = self->_activeEntity;
  self->_activeEntity = _readPreferenceActiveEntity2;

  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&_MergedGlobals, "[ENDaemon _activate]", 30, "Register application observer");
  }

  v45 = objc_opt_new();
  applicationObserver = self->_applicationObserver;
  self->_applicationObserver = v45;

  [(ApplicationObserver *)self->_applicationObserver setDelegate:self];
  _readPreferenceRegionPendingOnboarding = [(ENDaemon *)self _readPreferenceRegionPendingOnboarding];
  if (_readPreferenceRegionPendingOnboarding)
  {
    configurationManager = [(ENDaemon *)self configurationManager];
    configurationStore = [configurationManager configurationStore];
    v50 = [configurationStore serverConfigurationForRegion:_readPreferenceRegionPendingOnboarding];

    if (!v50)
    {
      [(ENDaemon *)self onboardingTriggerDeactivate];
    }
  }

  [(ENDaemon *)self onboardingTriggerResumeIfNeeded];
  [(ENDaemon *)self _tccChanged];
  [(ENDaemon *)self pauseUpdate];
  [(ENDaemon *)self prefsChanged];
  [(ENDaemon *)self _networkProxyStatusCheck];
  objc_destroyWeak(&v53);
  objc_destroyWeak(location);
}

void __21__ENDaemon__activate__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_time(0, 2500000000);
  v8 = *(*(a1 + 32) + 224);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __21__ENDaemon__activate__block_invoke_4;
  v11[3] = &unk_278FD1490;
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_after(v7, v8, v11);
}

uint64_t __21__ENDaemon__activate__block_invoke_4(uint64_t a1)
{
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __21__ENDaemon__activate__block_invoke_4_cold_1();
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __21__ENDaemon__activate__block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (_MergedGlobals <= 30)
  {
    if (_MergedGlobals != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __21__ENDaemon__activate__block_invoke_5_cold_1(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 prefsChanged];
}

uint64_t __21__ENDaemon__activate__block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (_MergedGlobals <= 30)
  {
    if (_MergedGlobals != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __21__ENDaemon__activate__block_invoke_6_cold_1(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 prefsChanged];
}

uint64_t __21__ENDaemon__activate__block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (_MergedGlobals <= 30)
  {
    if (_MergedGlobals != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __21__ENDaemon__activate__block_invoke_7_cold_1(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _networkProxyStatusCheck];
}

uint64_t __21__ENDaemon__activate__block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (_MergedGlobals <= 30)
  {
    if (_MergedGlobals != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __21__ENDaemon__activate__block_invoke_8_cold_1(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _networkProxyStatusCheck];
}

uint64_t __21__ENDaemon__activate__block_invoke_9(uint64_t a1)
{
  [*(a1 + 32) _tccChanged];
  v2 = *(a1 + 32);

  return [v2 _update];
}

uint64_t __21__ENDaemon__activate__block_invoke_12(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (_MergedGlobals <= 30)
  {
    if (_MergedGlobals != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __21__ENDaemon__activate__block_invoke_12_cold_1(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _tccChanged];
}

void __21__ENDaemon__activate__block_invoke_14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 224);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __21__ENDaemon__activate__block_invoke_15;
  v3[3] = &unk_278FD1530;
  v3[4] = v1;
  objc_copyWeak(&v4, (a1 + 40));
  dispatch_async(v2, v3);
  objc_destroyWeak(&v4);
}

void __21__ENDaemon__activate__block_invoke_15(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 232) entity];
  v3 = [v2 region];
  v4 = v3;
  if (v3)
  {
    v23 = v3;
  }

  else
  {
    v5 = [*(*(a1 + 32) + 368) getCurrentRegionVisitWithError:0];
    v23 = [v5 region];
  }

  if ([v23 validSubdivisionCode])
  {
    v6 = [v23 subdivisionCode];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 componentsSeparatedByString:@"-"];
  if ([v7 count] == 2)
  {
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = [v8 isEqualToString:@"US"];

    if (v9)
    {
      v10 = [v7 objectAtIndexedSubscript:1];
      [v10 utf8ValueSafe];
    }
  }

  v11 = [*(a1 + 32) _getAvailabilityAlertCountIncrement:0 reset:1];
  v12 = [*(a1 + 32) configurationManager];
  v13 = [v12 configurationStore];
  v14 = [v13 configurationForRegion:v23];

  v15 = [v14 diagnosisKeysPreAuthorization];
  v16 = [v15 userAuthorization];

  if (v16 == 1)
  {
    v17 = v11 | 0x80;
  }

  else
  {
    v17 = v11;
  }

  v18 = [*(a1 + 32) _getLegalConsentPageCount];
  CFPrefs_RemoveValue();
  if ([*(a1 + 32) _getExposureMatchAttemptBool])
  {
    v18 |= 0x40u;
    CFPrefs_SetValue();
  }

  if (CFPrefs_GetInt64())
  {
    v18 |= 0x80u;
    CFPrefs_RemoveValue();
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 216));
  v20 = objc_loadWeakRetained((a1 + 40));
  v21 = [v20 stateMetricVersion];
  if ([v23 validSubdivisionCode])
  {
    v22 = [v23 subdivisionCode];
    [WeakRetained sendStateMetricWithVersion:v21 subdivisionCode:v22 availabilityAlertCount:v17 legalConsentPageCount:v18];
  }

  else
  {
    [WeakRetained sendStateMetricWithVersion:v21 subdivisionCode:@"Unknown" availabilityAlertCount:v17 legalConsentPageCount:v18];
  }
}

- (unsigned)_getAvailabilityAlertCountIncrement:(BOOL)increment reset:(BOOL)reset
{
  resetCopy = reset;
  incrementCopy = increment;
  Int64 = CFPrefs_GetInt64();
  if (resetCopy)
  {
    CFPrefs_RemoveValue();
  }

  else if (incrementCopy)
  {
    ++Int64;
    CFPrefs_SetInt64();
  }

  return Int64;
}

- (id)_getBundleIDFromBundle:(__CFBundle *)bundle
{
  v3 = CFBundleCopyBundleURL(bundle);
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D0] bundleWithURL:v3];
    v5 = v4;
    if (v4)
    {
      bundleIdentifier = [v4 bundleIdentifier];
    }

    else
    {
      [ENDaemon _getBundleIDFromBundle:?];
      bundleIdentifier = v8;
    }
  }

  else
  {
    [ENDaemon _getBundleIDFromBundle:?];
    bundleIdentifier = v8;
  }

  return bundleIdentifier;
}

- (id)_getInfoDictFromBundle:(__CFBundle *)bundle
{
  v3 = CFBundleCopyBundleURL(bundle);
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D0] bundleWithURL:v3];
    v5 = v4;
    if (v4)
    {
      infoDictionary = [v4 infoDictionary];
    }

    else
    {
      [ENDaemon _getInfoDictFromBundle:?];
      infoDictionary = v8;
    }
  }

  else
  {
    [ENDaemon _getInfoDictFromBundle:?];
    infoDictionary = v8;
  }

  return infoDictionary;
}

- (id)_getInfoDictFromAppProxy:(id)proxy
{
  bundleURL = [proxy bundleURL];
  if (bundleURL)
  {
    v4 = [MEMORY[0x277CCA8D0] bundleWithURL:bundleURL];
    v5 = v4;
    if (v4)
    {
      infoDictionary = [v4 infoDictionary];
    }

    else
    {
      [ENDaemon _getInfoDictFromAppProxy:?];
      infoDictionary = v8;
    }
  }

  else
  {
    [ENDaemon _getInfoDictFromAppProxy:?];
    infoDictionary = v8;
  }

  return infoDictionary;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __22__ENDaemon_invalidate__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __22__ENDaemon_invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (_MergedGlobals <= 30)
  {
    if (_MergedGlobals != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __22__ENDaemon_invalidate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _invalidate];
}

- (void)_invalidate
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = self->_xpcConnections;
  xpcConnections = self->_xpcConnections;
  self->_xpcConnections = 0;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v3;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v23 + 1) + 8 * i) invalidate];
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  [(NSMutableSet *)v5 removeAllObjects];
  [(NSBackgroundActivityScheduler *)self->_persistencePurgeScheduler invalidate];
  persistencePurgeScheduler = self->_persistencePurgeScheduler;
  self->_persistencePurgeScheduler = 0;

  [(ENDaemon *)self _bluetoothMonitorEnsureStopped];
  [(ENDaemon *)self _bluetoothTracingEnsureStopped];
  [(ENDaemon *)self _configurationManagerEnsureStopped];
  [(ENDaemon *)self _databasesEnsureClosed];
  [(ENDaemon *)self _exposureManagersEnsureStopped];
  [(ENDaemon *)self _regionMonitorEnsureStopped];
  [(ENDaemon *)self setUserNotificationCenter:0];
  [(ENDaemon *)self setMonthlySummaryDisabled:1];
  pauseTimer = self->_pauseTimer;
  if (pauseTimer)
  {
    v12 = pauseTimer;
    dispatch_source_cancel(v12);
    v13 = self->_pauseTimer;
    self->_pauseTimer = 0;
  }

  prefsChangedNotifyToken = self->_prefsChangedNotifyToken;
  if (prefsChangedNotifyToken != -1)
  {
    notify_cancel(prefsChangedNotifyToken);
    self->_prefsChangedNotifyToken = -1;
  }

  profileChangedNotifyToken = self->_profileChangedNotifyToken;
  if (profileChangedNotifyToken != -1)
  {
    notify_cancel(profileChangedNotifyToken);
    self->_profileChangedNotifyToken = -1;
  }

  proxyStatusChangedNotifyToken = self->_proxyStatusChangedNotifyToken;
  if (proxyStatusChangedNotifyToken != -1)
  {
    notify_cancel(proxyStatusChangedNotifyToken);
    self->_proxyStatusChangedNotifyToken = -1;
  }

  proxyConfigChangedNotifyToken = self->_proxyConfigChangedNotifyToken;
  if (proxyConfigChangedNotifyToken != -1)
  {
    notify_cancel(proxyConfigChangedNotifyToken);
    self->_proxyConfigChangedNotifyToken = -1;
  }

  screenLockNotifyToken = self->_screenLockNotifyToken;
  if (screenLockNotifyToken != -1)
  {
    notify_cancel(screenLockNotifyToken);
    self->_screenLockNotifyToken = -1;
  }

  tccChangedNotifyToken = self->_tccChangedNotifyToken;
  if (tccChangedNotifyToken != -1)
  {
    notify_cancel(tccChangedNotifyToken);
    self->_tccChangedNotifyToken = -1;
  }

  if (self->_stateHandler)
  {
    os_state_remove_handler();
    self->_stateHandler = 0;
  }

  [(CUSystemMonitor *)self->_systemMonitor invalidate];
  xpcListener = self->_xpcListener;
  if (xpcListener)
  {
    v21 = xpcListener;
    xpc_connection_cancel(v21);
    v22 = self->_xpcListener;
    self->_xpcListener = 0;
  }

  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon _invalidate];
  }
}

- (id)_getDelegateAndReturnError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
  }

  else
  {
    [ENDaemon _getDelegateAndReturnError:error];
  }

  return v5;
}

- (void)notifyUserWithStatus:(int64_t)status
{
  if (status == 4)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon notifyUserWithStatus:?];
    }

    [(ENDaemon *)self postENOffNotification];
  }
}

- (void)pauseUpdate
{
  v2 = CUPrintDateCF();
  v3 = CUPrintDurationDouble();
  LogPrintF_safe(&_MergedGlobals, "[ENDaemon pauseUpdate]", 30, "Schedule unpause: %@, %@ from now", v2, v3);
}

void *__23__ENDaemon_pauseUpdate__block_invoke(void *result)
{
  v2 = result[4];
  v3 = *(result[5] + 32);
  if (v2 == v3)
  {
    v4 = result;
    if (v2)
    {
      v5 = v3;
      dispatch_source_cancel(v5);
      v6 = v4[5];
      v7 = *(v6 + 32);
      *(v6 + 32) = 0;
    }

    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __23__ENDaemon_pauseUpdate__block_invoke_cold_1(v4);
    }

    CFPrefs_SetValue();
    CFPrefs_RemoveValue();
    v8 = v4[5];

    return [v8 prefsChanged];
  }

  return result;
}

- (void)prefsChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v139 = 0;
  if (!CFPrefs_GetInt64())
  {
    [(ENDaemon *)self _resetDeveloperSettings];
  }

  v4 = CFPrefs_GetInt64() != 0;
  if (self->_prefStoreDemoMode != v4)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_prefStoreDemoMode = v4;
  }

  v5 = CFPrefs_GetInt64() != 0;
  if (self->_prefRegionMonitorTestMode != v5)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_prefRegionMonitorTestMode = v5;
  }

  _readPreferenceActiveEntity = [(ENDaemon *)self _readPreferenceActiveEntity];
  activeEntity = self->_activeEntity;
  location = &self->_activeEntity;
  v8 = _readPreferenceActiveEntity;
  v9 = activeEntity;
  v10 = v9;
  if (v8 == v9)
  {

    screenUnlockPendingActions = v8;
LABEL_24:

    goto LABEL_25;
  }

  if ((v8 != 0) == (v9 == 0))
  {

LABEL_19:
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&_MergedGlobals, "[ENDaemon prefsChanged]", 30, "ActiveEntity: %@ -> %@", *location, v8);
    }

    objc_storeStrong(location, _readPreferenceActiveEntity);
    [(ENConfigurationManager *)self->_configurationManager setActiveEntity:self->_activeEntity];
    [(ENTemporaryExposureKeyManager *)self->_temporaryExposureKeyManager resetClientState];
    notify_post("com.apple.ExposureNotification.trackedAppChanged");
    CFPrefs_RemoveValue();
    screenUnlockPendingActions = [(ENDaemon *)self screenUnlockPendingActions];
    [screenUnlockPendingActions removeAllObjects];
    goto LABEL_24;
  }

  v11 = [(ENActiveEntity *)v8 isEqual:v9];

  if (!v11)
  {
    goto LABEL_19;
  }

LABEL_25:
  v125 = v8;
  v126 = WeakRetained;
  configurationStore = [(ENConfigurationManager *)self->_configurationManager configurationStore];
  entity = [(ENActiveEntity *)self->_activeEntity entity];
  region = [entity region];
  v135 = configurationStore;
  v128 = [configurationStore serverConfigurationForRegion:region];

  CFStringGetTypeID();
  v16 = CFPrefs_CopyTypedValue();
  prefRegionIdentifierOverride = self->_prefRegionIdentifierOverride;
  v18 = v16;
  v19 = prefRegionIdentifierOverride;
  v20 = v19;
  if (v18 == v19)
  {

    v22 = v18;
LABEL_36:

    goto LABEL_37;
  }

  if ((v18 != 0) == (v19 == 0))
  {

LABEL_31:
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&_MergedGlobals, "[ENDaemon prefsChanged]", 30, "RegionIdentifierOverride: %@ -> %@", self->_prefRegionIdentifierOverride, v18);
    }

    v22 = self->_prefRegionIdentifierOverride;
    objc_storeStrong(&self->_prefRegionIdentifierOverride, v16);
    [(ENDaemon *)self _fetchPrefRegionConfig:self->_prefRegionIdentifierOverride oldCustomCountryCode:v22];
    goto LABEL_36;
  }

  v21 = [(NSString *)v18 isEqual:v19];

  if ((v21 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_37:
  v124 = v18;
  configurationStore2 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
  entity2 = [(ENActiveEntity *)self->_activeEntity entity];
  region2 = [entity2 region];
  v26 = [configurationStore2 agencyConfigurationForRegion:region2];

  agencyColor = [v26 agencyColor];
  agencyHeaderStyle = [v26 agencyHeaderStyle];
  agencyHeaderTextColor = [v26 agencyHeaderTextColor];
  agencyDisplayName = [v26 agencyDisplayName];
  localizedConfiguration = [v26 localizedConfiguration];
  regionName = [localizedConfiguration regionName];

  localizedConfiguration2 = [v26 localizedConfiguration];
  agencyTurndownMessage = [localizedConfiguration2 agencyTurndownMessage];

  v123 = v26;
  agencyImageURL = [v26 agencyImageURL];
  entity3 = [(ENActiveEntity *)self->_activeEntity entity];
  if (!entity3)
  {
    goto LABEL_48;
  }

  v31 = objc_alloc(MEMORY[0x277CC5C18]);
  bundleIdentifier = [entity3 bundleIdentifier];
  v33 = [MEMORY[0x277CCABA8] numberWithUnsignedInteger:agencyHeaderStyle];
  region3 = [entity3 region];
  v35 = [v31 initWithBundleID:bundleIdentifier agencyColor:agencyColor agencyHeaderStyle:v33 agencyHeaderTextColor:agencyHeaderTextColor localizedAgencyName:agencyDisplayName localizedAgencyImageURL:agencyImageURL localizedAgencyTurndownMessage:agencyTurndownMessage localizedRegionName:regionName region:region3];

  if (v128)
  {
    CFDataGetTypeID();
    v36 = CFPrefs_CopyTypedValue();
    if (!v36)
    {
LABEL_46:
      v42 = objc_alloc(MEMORY[0x277CC5C18]);
      bundleIdentifier2 = [entity3 bundleIdentifier];
      v44 = [MEMORY[0x277CCABA8] numberWithUnsignedInteger:agencyHeaderStyle];
      region4 = [entity3 region];
      v46 = [v42 initWithBundleID:bundleIdentifier2 agencyColor:agencyColor agencyHeaderStyle:v44 agencyHeaderTextColor:agencyHeaderTextColor localizedAgencyName:agencyDisplayName localizedAgencyImageURL:agencyImageURL localizedAgencyTurndownMessage:agencyTurndownMessage localizedRegionName:regionName region:region4];
      [(ENActiveEntity *)self->_activeEntity setEntity:v46];

      [(ENDaemon *)self _writePreferenceActiveEntity:self->_activeEntity];
      goto LABEL_47;
    }

    v37 = v36;
    v38 = v35;
    v39 = entity3;
    v40 = v39;
    if (v38 != v39)
    {
      if (v38)
      {
        v41 = [v38 isEqual:v39];

        if (v41)
        {
          goto LABEL_47;
        }
      }

      else
      {
      }

      goto LABEL_46;
    }
  }

LABEL_47:

LABEL_48:
  v47 = [(ENRegionMonitor *)self->_regionMonitor getCurrentRegionVisitWithError:0];
  region5 = [v47 region];

  v49 = CFPrefs_GetInt64() != 0;
  if (v139)
  {
    v50 = [v135 serverConfigurationForRegion:region5];
    v51 = v50;
    v52 = v126;
    p_activeEntity = &self->_activeEntity;
    if (!v50 || ([v50 enEnabled] & 1) != 0 || -[ENConfigurationManager isInGracePeriodTransition](self->_configurationManager, "isInGracePeriodTransition"))
    {
      v49 = 0;
    }

    else
    {
      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        [(ENDaemon *)region5 prefsChanged];
      }

      v49 = 1;
    }
  }

  else
  {
    v52 = v126;
    p_activeEntity = &self->_activeEntity;
  }

  if (self->_prefServerForceDisable != v49)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_prefServerForceDisable = v49;
  }

  v127 = region5;
  Int64 = CFPrefs_GetInt64();
  v55 = Int64 != 0;
  if (self->_prefAggressiveScanning != v55)
  {
    v56 = Int64;
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_prefAggressiveScanning = v55;
    [v52 setAggressiveScanningEnabled:v56 != 0];
  }

  v57 = CFPrefs_GetInt64() != 0;
  if (self->_automaticRegionSwitchEnabled != v57)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_automaticRegionSwitchEnabled = v57;
  }

  v58 = CFPrefs_GetInt64() != 0;
  if (self->_availabilityAlertDisabled != v58)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_availabilityAlertDisabled = v58;
  }

  entity4 = [(ENActiveEntity *)*p_activeEntity entity];
  region6 = [entity4 region];

  if (region6)
  {
    configurationStore3 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
    v62 = [configurationStore3 configurationForRegion:region6];

    v137[0] = MEMORY[0x277D85DD0];
    v137[1] = 3221225472;
    v137[2] = __24__ENDaemon_prefsChanged__block_invoke;
    v137[3] = &unk_278FD1120;
    v137[4] = v135;
    v63 = v62;
    v138 = v63;
    v64 = v137;
    if (prefsChanged_onceToken != -1)
    {
      dispatch_once(&prefsChanged_onceToken, v64);
    }

    p_activeEntity = &self->_activeEntity;
    if (v63)
    {
      region6 = [v63 travelerModeEnabled];
    }

    else
    {
      region6 = 0;
    }
  }

  else
  {

    v63 = 0;
  }

  travelStatus = self->_travelStatus;
  if (region6 != travelStatus)
  {
    if (_MergedGlobals <= 30)
    {
      if (_MergedGlobals != -1)
      {
LABEL_85:
        if (travelStatus > 2)
        {
          v66 = "?";
        }

        else
        {
          v66 = off_278FD2238[travelStatus];
        }

        if (region6 > 2)
        {
          v67 = "?";
        }

        else
        {
          v67 = off_278FD2238[region6];
        }

        LogPrintF_safe(&_MergedGlobals, "[ENDaemon prefsChanged]", 30, "Travel Status : %s -> %s", v66, v67);
        goto LABEL_98;
      }

      if (_LogCategory_Initialize())
      {
        travelStatus = self->_travelStatus;
        goto LABEL_85;
      }
    }

LABEL_98:
    self->_travelStatus = region6;
  }

  v68 = CFPrefs_GetInt64() != 0;
  if (v139)
  {
    v68 = !self->_disableExposureNotification;
  }

  v69 = v68;
  if (self->_prefConfigurationManagerEnabled != v68)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_prefConfigurationManagerEnabled = v69;
  }

  CFPrefs_GetDouble();
  if (v139)
  {
    v71 = 0.0;
  }

  else
  {
    v71 = v70;
  }

  prefDatabasePurgeInterval = self->_prefDatabasePurgeInterval;
  if (v71 != prefDatabasePurgeInterval)
  {
    if (_MergedGlobals <= 30)
    {
      if (_MergedGlobals == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_114;
        }

        prefDatabasePurgeInterval = self->_prefDatabasePurgeInterval;
      }

      LogPrintF_safe(&_MergedGlobals, "[ENDaemon prefsChanged]", 30, "DatabasePurgeInterval: %.1f -> %.1f", prefDatabasePurgeInterval, v71);
    }

LABEL_114:
    self->_prefDatabasePurgeInterval = v71;
  }

  v73 = CFPrefs_GetInt64() != 0;
  if (self->_prefDeveloperServerConfiguration != v73)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_prefDeveloperServerConfiguration = v73;
    configurationStore4 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
    [configurationStore4 prefsChanged];
  }

  v75 = CFPrefs_GetInt64();
  if (v139 || (differentialPrivacyConsent = v75, v75 >= 5))
  {
    entity5 = [(ENActiveEntity *)self->_activeEntity entity];
    region7 = [entity5 region];

    configurationStore5 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
    v80 = [configurationStore5 configurationForRegion:region7];
    userConsent = [v80 userConsent];
    differentialPrivacyConsent = [userConsent differentialPrivacyConsent];

    p_activeEntity = &self->_activeEntity;
  }

  prefDifferentialPrivacyConsent = self->_prefDifferentialPrivacyConsent;
  if (differentialPrivacyConsent != prefDifferentialPrivacyConsent)
  {
    if (_MergedGlobals <= 30)
    {
      if (_MergedGlobals != -1)
      {
LABEL_126:
        if (prefDifferentialPrivacyConsent > 4)
        {
          v83 = "?";
        }

        else
        {
          v83 = off_278FD2090[prefDifferentialPrivacyConsent];
        }

        if (differentialPrivacyConsent > 4)
        {
          v84 = "?";
        }

        else
        {
          v84 = off_278FD2090[differentialPrivacyConsent];
        }

        LogPrintF_safe(&_MergedGlobals, "[ENDaemon prefsChanged]", 30, "DifferentialPrivacyConsent: %s -> %s", v83, v84);
        goto LABEL_135;
      }

      if (_LogCategory_Initialize())
      {
        prefDifferentialPrivacyConsent = self->_prefDifferentialPrivacyConsent;
        goto LABEL_126;
      }
    }

LABEL_135:
    self->_prefDifferentialPrivacyConsent = differentialPrivacyConsent;
  }

  v85 = CFPrefs_GetInt64();
  if (v139)
  {
    v86 = 0;
  }

  else
  {
    v86 = v85 == 0;
  }

  v87 = !v86;
  if (self->_prefEnableNKD != v87)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_prefEnableNKD = v87;
  }

  v88 = !self->_prefServerForceDisable && !self->_prefStoreDemoMode && CFPrefs_GetInt64() != 0;
  entity6 = [(ENActiveEntity *)*p_activeEntity entity];
  bundleIdentifier3 = [entity6 bundleIdentifier];
  if (!bundleIdentifier3)
  {
    v100 = 0;
    goto LABEL_169;
  }

  v91 = bundleIdentifier3;
  activeStatus = [(ENActiveEntity *)*p_activeEntity activeStatus];

  if (activeStatus == 2)
  {
    entity7 = [(ENActiveEntity *)*p_activeEntity entity];
    entity6 = [entity7 bundleIdentifier];

    v94 = [MEMORY[0x277CC1E68] applicationProxyForIdentifier:entity6 placeholder:0];
    appState = [v94 appState];
    if ([appState isInstalled])
    {
      appState2 = [v94 appState];
      isPlaceholder = [appState2 isPlaceholder];

      if ((isPlaceholder & 1) == 0 && [(ENDaemon *)self tccAccessForBundleID:entity6]== 1)
      {
        appBundleID = [v128 appBundleID];
        v99 = [appBundleID length];

        if (v99)
        {
          v100 = 0;
          goto LABEL_167;
        }
      }
    }

    else
    {
    }

    if (_MergedGlobals <= 30)
    {
      p_activeEntity = &self->_activeEntity;
      if (_MergedGlobals != -1 || _LogCategory_Initialize())
      {
        [(ENDaemon *)entity6 prefsChanged];
      }

      v100 = 1;
      goto LABEL_168;
    }

    v100 = 1;
LABEL_167:
    p_activeEntity = &self->_activeEntity;
LABEL_168:

LABEL_169:
    if (v88)
    {
      goto LABEL_170;
    }

LABEL_160:
    v101 = 0;
    goto LABEL_174;
  }

  v100 = 0;
  if (!v88)
  {
    goto LABEL_160;
  }

LABEL_170:
  v101 = *p_activeEntity && (([(ENActiveEntity *)*p_activeEntity activeStatus]> 1) & ~v100) != 0 || self->_prefTCCAllowWithoutApps;
LABEL_174:
  v102 = v101;
  if (self->_prefEnabled == v101)
  {
    if (!self->_prefEnabled)
    {
      goto LABEL_182;
    }

LABEL_181:
    CFPrefs_RemoveValue();
    goto LABEL_182;
  }

  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon prefsChanged];
  }

  self->_prefEnabled = v102;
  if (v102)
  {
    goto LABEL_181;
  }

LABEL_182:
  v103 = CFPrefs_GetInt64() != 0;
  prefLoggingRPI = self->_prefLoggingRPI;
  if (prefLoggingRPI != v103)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_prefLoggingRPI = v103;
  }

  v105 = CFPrefs_GetInt64() != 0;
  if (self->_prefLoggingSensitive != v105)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_prefLoggingSensitive = v105;
    v106 = v128;
    goto LABEL_195;
  }

  v86 = prefLoggingRPI == v103;
  v106 = v128;
  if (!v86)
  {
LABEL_195:
    v107 = +[ENLoggingPrefs sharedENLoggingPrefs];
    [v107 loadLoggingPrefs];

    [v52 setLoggingParams:self->_prefLoggingRPI loggingSensitive:self->_prefLoggingSensitive];
  }

  v108 = CFPrefs_GetInt64() != 0;
  if (self->_prefPaused != v108)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_prefPaused = v108;
  }

  v109 = CFPrefs_GetInt64() != 0;
  if (v139)
  {
    if (([v106 supportsFeatures:32] & 1) == 0 && (networkProxyStatus = self->_networkProxyStatus) != 0 && -[PrivacyProxyServiceStatus serviceStatus](networkProxyStatus, "serviceStatus") == 1)
    {
      v109 = (BYTE1(self->_networkProxyTraffic) >> 3) & 1;
    }

    else
    {
      v109 = 0;
    }
  }

  if (self->_prefNetworkProxyEnabled != v109)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_prefNetworkProxyEnabled = v109;
  }

  v111 = CFPrefs_GetInt64();
  if (v139 || (v112 = v111, v111 >= 0x3E9))
  {
    dailyDetectExposureLimit = [v106 dailyDetectExposureLimit];
    if (dailyDetectExposureLimit - 1001 >= 0xFFFFFC18)
    {
      v112 = dailyDetectExposureLimit;
    }

    else
    {
      v112 = 15;
    }
  }

  prefRateLimitMaxAPICount = self->_prefRateLimitMaxAPICount;
  if (v112 != prefRateLimitMaxAPICount)
  {
    if (_MergedGlobals <= 30)
    {
      if (_MergedGlobals == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_222;
        }

        LODWORD(prefRateLimitMaxAPICount) = self->_prefRateLimitMaxAPICount;
      }

      LogPrintF_safe(&_MergedGlobals, "[ENDaemon prefsChanged]", 30, "RateLimitAPIMaxCount: %u -> %lld", prefRateLimitMaxAPICount, v112);
    }

LABEL_222:
    self->_prefRateLimitMaxAPICount = v112;
  }

  v115 = CFPrefs_GetInt64();
  if (v139 || (v116 = v115, v115 >= 0x3E9))
  {
    detectExposureNKDLimit = [v106 detectExposureNKDLimit];
    if (detectExposureNKDLimit - 1001 >= 0xFFFFFC18)
    {
      v116 = detectExposureNKDLimit;
    }

    else
    {
      v116 = 6;
    }
  }

  prefRateLimitMaxAPICountV2 = self->_prefRateLimitMaxAPICountV2;
  if (v116 != prefRateLimitMaxAPICountV2)
  {
    if (_MergedGlobals <= 30)
    {
      if (_MergedGlobals == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_233;
        }

        LODWORD(prefRateLimitMaxAPICountV2) = self->_prefRateLimitMaxAPICountV2;
      }

      LogPrintF_safe(&_MergedGlobals, "[ENDaemon prefsChanged]", 30, "RateLimitAPIMaxCountV2: %u -> %lld", prefRateLimitMaxAPICountV2, v116);
    }

LABEL_233:
    self->_prefRateLimitMaxAPICountV2 = v116;
  }

  v119 = CFPrefs_GetInt64() != 0;
  if (self->_prefSkipExposureWindowShuffling != v119)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_prefSkipExposureWindowShuffling = v119;
  }

  v120 = CFPrefs_GetInt64() != 0;
  if (self->_prefSkipFileSigning != v120)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_prefSkipFileSigning = v120;
  }

  v121 = CFPrefs_GetInt64() != 0;
  if (self->_prefTCCAllowWithoutApps != v121)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_prefTCCAllowWithoutApps = v121;
  }

  v122 = CFPrefs_GetInt64();
  if ((v122 != 0) != [(ENDaemon *)self monthlySummaryDisabled])
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    [(ENDaemon *)self setMonthlySummaryDisabled:v122 != 0];
  }

  [(ENConfigurationManager *)self->_configurationManager prefsChanged];
  [(ENDaemon *)self _scheduleUpdate];
}

- (void)_resetDataWithFlags:(unsigned int)flags
{
  v3 = *&flags;
  delegate = [(ENDaemon *)self delegate];
  v8 = delegate;
  if ((~v3 & 0xFFF) != 0)
  {
    if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _resetDataWithFlags:v3];
    }
  }

  else
  {
    if (_MergedGlobals <= 50)
    {
      if (_MergedGlobals != -1 || (delegate = _LogCategory_Initialize(), delegate))
      {
        [(ENDaemon *)delegate _resetDataWithFlags:v6, v7];
      }
    }

    [(ENDaemon *)self setUsageResetAllData:[(ENDaemon *)self usageResetAllData]+ 1];
  }

  v24 = 0;
  v9 = [(ENDaemon *)self getExposureDatabaseAndReturnError:&v24];
  v10 = v24;
  if ((v3 & 0x40) != 0)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _resetDataWithFlags:];
    }

    [v8 resetTEKHistory];
    temporaryExposureKeyManager = [(ENDaemon *)self temporaryExposureKeyManager];
    [temporaryExposureKeyManager resetClientState];

    if ((v3 & 1) == 0)
    {
LABEL_11:
      if ((v3 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }
  }

  else if ((v3 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon _resetDataWithFlags:];
  }

  [v8 purgeAdvertisementDatabase];
  if ((v3 & 4) == 0)
  {
LABEL_12:
    v11 = v10;
    if ((v3 & 8) != 0)
    {
      goto LABEL_40;
    }

LABEL_30:
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_44;
    }

LABEL_31:
    if ((v3 & 0x20) != 0)
    {
      goto LABEL_48;
    }

LABEL_32:
    v14 = v11;
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_56;
  }

LABEL_22:
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon _resetDataWithFlags:];
  }

  v23 = v10;
  v13 = [v9 deleteExposureDetectionHistoryWithError:&v23];
  v11 = v23;

  if ((v13 & 1) != 0 || dword_281346508 > 90 || dword_281346508 == -1 && !_LogCategory_Initialize())
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    [ENDaemon _resetDataWithFlags:v11];
    if ((v3 & 8) == 0)
    {
      goto LABEL_30;
    }
  }

LABEL_40:
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon _resetDataWithFlags:];
  }

  downloadManager = [(ENDaemon *)self downloadManager];
  [downloadManager purgeAllDownloads];

  if ((v3 & 0x10) == 0)
  {
    goto LABEL_31;
  }

LABEL_44:
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon _resetDataWithFlags:];
  }

  [v9 purgeAllAndCloseWithReason:@"ResetData"];
  if ((v3 & 0x20) == 0)
  {
    goto LABEL_32;
  }

LABEL_48:
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon _resetDataWithFlags:];
  }

  configurationManager = [(ENDaemon *)self configurationManager];
  [configurationManager resetConfigurationCache];

  regionMonitor = [(ENDaemon *)self regionMonitor];
  v22 = v11;
  v18 = [regionMonitor purgeAllRegionHistoryWithError:&v22];
  v14 = v22;

  if ((v18 & 1) == 0 && dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon _resetDataWithFlags:v14];
  }

  regionMonitor2 = [(ENDaemon *)self regionMonitor];
  [regionMonitor2 resetRegionMonitor];

  if ((v3 & 0x80) != 0)
  {
LABEL_56:
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _resetDataWithFlags:];
    }

    textMessageManager = [(ENDaemon *)self textMessageManager];
    [textMessageManager purgeAllHashes];
  }

LABEL_60:
  if ((v3 & 2) != 0)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _resetDataWithFlags:];
    }

    CFPrefs_RemoveValue();
    CFPrefs_RemoveValue();
    CFPrefs_RemoveValue();
    CFPrefs_RemoveValue();
    CFPrefs_RemoveValue();
    CFPrefs_RemoveValue();
    CFPrefs_RemoveValue();
    CFPrefs_RemoveValue();
    CFPrefs_RemoveValue();
    CFPrefs_SetValue();
    userNotificationCenter = [(ENDaemon *)self userNotificationCenter];
    [userNotificationCenter removeAllDeliveredNotifications];

    [(ENDaemon *)self onboardingTriggerDeactivate];
    TCCAccessReset();
    TCCAccessReset();
    if ((v3 & 0x100) != 0)
    {
      goto LABEL_62;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
LABEL_62:
    CFPrefs_RemoveValue();
  }

  [(ENDaemon *)self setOnboardingTrigger:0];
  [(ENDaemon *)self setOnboardingRegionTrigger:0];
  [(ENDaemon *)self setOnboardingFirstTime:0];
  [(ENDaemon *)self setOnboardingLegalConsentLastViewCount:0];
  [(ENDaemon *)self prefsChanged];
}

- (void)_fetchPrefRegionConfig:(id)config oldCustomCountryCode:(id)code
{
  configCopy = config;
  codeCopy = code;
  configurationStore = [(ENConfigurationManager *)self->_configurationManager configurationStore];
  [configurationStore prefsChanged];

  v9 = configCopy;
  v12 = v9;
  if (v9)
  {
    v9 = [v9 length];
    if (v9)
    {
      countryCode = [objc_alloc(MEMORY[0x277CC5CA0]) initWithCountryCode:v12];
      configurationManager = self->_configurationManager;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __56__ENDaemon__fetchPrefRegionConfig_oldCustomCountryCode___block_invoke;
      v23[3] = &unk_278FD11F0;
      v15 = v24;
      v24[0] = v12;
      v24[1] = self;
      [(ENConfigurationManager *)configurationManager fetchServerConfigurationsForRegion:countryCode userInitiated:0 withCompletion:v23];
LABEL_10:

      goto LABEL_11;
    }
  }

  if (_MergedGlobals <= 30)
  {
    if (_MergedGlobals != -1 || (v9 = _LogCategory_Initialize(), v9))
    {
      [(ENDaemon *)v9 _fetchPrefRegionConfig:v10 oldCustomCountryCode:v11];
    }
  }

  configurationStore2 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
  [configurationStore2 clearTemporaryServerConfigurations];

  configurationStore3 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
  [configurationStore3 clearTemporaryCountrySubdivisionList];

  entity = [(ENActiveEntity *)self->_activeEntity entity];
  region = [entity region];
  countryCode = [region countryCode];

  if (countryCode && [codeCopy isEqualToString:countryCode])
  {
    dispatchQueue = self->_dispatchQueue;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __56__ENDaemon__fetchPrefRegionConfig_oldCustomCountryCode___block_invoke_3;
    v21[3] = &unk_278FD1120;
    v15 = v22;
    v22[0] = codeCopy;
    v22[1] = self;
    dispatch_async(dispatchQueue, v21);
    goto LABEL_10;
  }

LABEL_11:
}

void __56__ENDaemon__fetchPrefRegionConfig_oldCustomCountryCode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      __56__ENDaemon__fetchPrefRegionConfig_oldCustomCountryCode___block_invoke_cold_1(a1, v6);
    }

LABEL_19:
    v8 = 0;
    goto LABEL_20;
  }

  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&_MergedGlobals, "[ENDaemon _fetchPrefRegionConfig:oldCustomCountryCode:]_block_invoke", 30, "fetched server configuration for %@ : %@", *(a1 + 32), v5);
  }

  v7 = [*(*(a1 + 40) + 264) configurationStore];
  v12 = 0;
  [v7 saveTemporaryServerConfigurations:v5 error:&v12];
  v8 = v12;

  if (!v8)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __56__ENDaemon__fetchPrefRegionConfig_oldCustomCountryCode___block_invoke_cold_3();
    }

    v9 = *(a1 + 40);
    v10 = *(v9 + 224);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__ENDaemon__fetchPrefRegionConfig_oldCustomCountryCode___block_invoke_2;
    block[3] = &unk_278FD0F90;
    block[4] = v9;
    dispatch_async(v10, block);
    goto LABEL_19;
  }

  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    __56__ENDaemon__fetchPrefRegionConfig_oldCustomCountryCode___block_invoke_cold_2(a1, v8);
  }

LABEL_20:
}

uint64_t __56__ENDaemon__fetchPrefRegionConfig_oldCustomCountryCode___block_invoke_3(uint64_t a1)
{
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __56__ENDaemon__fetchPrefRegionConfig_oldCustomCountryCode___block_invoke_3_cold_1();
  }

  v2 = *(a1 + 40);

  return [v2 _turnOffEN];
}

- (void)_tccChanged
{
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2(&_MergedGlobals, "[ENDaemon _tccChanged]", a3, "Skipping _tccChanged because system has not done first unlock");
  }
}

id *__23__ENDaemon__tccChanged__block_invoke(id *result)
{
  if (result[4])
  {
    return [result[5] startServerConfigurationFetchForRegion:?];
  }

  return result;
}

- (void)_turnOffEN
{
  CFPrefs_RemoveValue();
  CFPrefs_RemoveValue();
  CFPrefs_RemoveValue();
  TCCAccessReset();
  self->_monthlySummaryDisabled = 0;
  [(ENDaemon *)self monthlyTriggerDeactivate];
  [(ENDaemon *)self onboardingTriggerDeactivate];
  if (!self->_prefTCCAllowWithoutApps)
  {
    CFPrefs_SetValue();
  }

  date = [MEMORY[0x277CBEAA0] date];
  [date timeIntervalSince1970];
  CFPrefs_SetDouble();

  [(ENDaemon *)self prefsChanged];
}

- (void)setMonthlySummaryDisabled:(BOOL)disabled
{
  self->_monthlySummaryDisabled = disabled;
  if (disabled)
  {

    [(ENDaemon *)self monthlyTriggerDeactivate];
  }

  else
  {
    CFPrefs_RemoveValue();

    [(ENDaemon *)self monthlyTriggerActivateWithIntervalOverride:0];
  }
}

- (void)monthlyTriggerActivateWithIntervalOverride:(unsigned int)override
{
  v3 = *&override;
  if ([(ENDaemon *)self _shouldDisableMonthlySummary])
  {
LABEL_2:
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [(ENDaemon *)a2 monthlyTriggerActivateWithIntervalOverride:v3];
    }

    return;
  }

  if (v3)
  {
    v31 = 0;
    v6 = v3;
  }

  else
  {
    monthlyNotificationTimer = [(ENDaemon *)self monthlyNotificationTimer];

    if (monthlyNotificationTimer)
    {
      goto LABEL_2;
    }

    v31 = 0;
    CFPrefs_GetDouble();
    v6 = v17;
  }

  if (v6 == 0.0)
  {
    date = [MEMORY[0x277CBEAA0] date];
    currentCalendar = [MEMORY[0x277CBEA88] currentCalendar];
    v9 = [currentCalendar nextDateAfterDate:date matchingUnit:16 value:objc_msgSend(currentCalendar options:{"component:fromDate:", 16, date), 1024}];
    v10 = [currentCalendar dateBySettingUnit:32 value:10 ofDate:v9 options:0];
    [v10 timeIntervalSinceDate:date];
    v6 = v11;
    CFPrefs_SetDouble();
  }

  if (_MergedGlobals <= 30)
  {
    if (_MergedGlobals != -1 || _LogCategory_Initialize())
    {
      [ENDaemon monthlyTriggerActivateWithIntervalOverride:];
    }

    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      v12 = NSStringFromSelector(a2);
      if (self->_monthlySummaryDisabled)
      {
        v13 = "yes";
      }

      else
      {
        v13 = "no";
      }

      overallStatus = self->_overallStatus;
      if (overallStatus > 6)
      {
        v15 = "?";
      }

      else
      {
        v15 = off_278FD20E0[overallStatus];
      }

      if (v3)
      {
        v18 = "overridden";
      }

      else
      {
        v18 = "";
      }

      v19 = CUPrintDuration32();
      LogPrintF_safe(&_MergedGlobals, "[ENDaemon monthlyTriggerActivateWithIntervalOverride:]", 30, "%@, monthlySummaryDisabled: %s, overall status: %s, %s interval: %@", v12, v13, v15, v18, v19);
    }
  }

  if (IsAppleInternalBuild())
  {
    v20 = v3 != 0;
    Int64 = CFPrefs_GetInt64();
    v22 = v31 != 0;
    v23 = !v20 || !v22;
    v24 = 7200.0;
    v25 = 10.0;
    if (v20 && v22)
    {
      v24 = 10.0;
    }

    v26 = 60;
    if (v23)
    {
      v26 = 2592000;
    }

    if ((Int64 - 60) >= 0x278CC5)
    {
      v25 = v24;
      v27 = v26;
    }

    else
    {
      v27 = Int64;
      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        [(ENDaemon *)v27 monthlyTriggerActivateWithIntervalOverride:v6];
      }
    }
  }

  else
  {
    v25 = 7200.0;
    v27 = 2592000;
  }

  v28 = [ENXPCTimer alloc];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __55__ENDaemon_monthlyTriggerActivateWithIntervalOverride___block_invoke;
  v30[3] = &unk_278FD1580;
  v30[4] = self;
  v29 = [(ENXPCTimer *)v28 initWithName:@"com.apple.exposurenotification.weeklynotification" delay:v27 gracePeriod:1 cadence:8739 priority:v30 options:v6 block:v25];
  [(ENDaemon *)self setMonthlyNotificationTimer:v29];
}

void __55__ENDaemon_monthlyTriggerActivateWithIntervalOverride___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = v3;
  if (_MergedGlobals <= 30)
  {
    if (_MergedGlobals != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      __55__ENDaemon_monthlyTriggerActivateWithIntervalOverride___block_invoke_cold_1(v3, v4, v5);
    }
  }

  v6 = [*(a1 + 32) _shouldDisableMonthlySummary];
  if (v6)
  {
    if (_MergedGlobals <= 30)
    {
      if (_MergedGlobals != -1 || (v6 = _LogCategory_Initialize(), v6))
      {
        __55__ENDaemon_monthlyTriggerActivateWithIntervalOverride___block_invoke_cold_2(v6, v7, v8);
      }
    }

    [*(a1 + 32) monthlyTriggerDeactivate];
  }

  else
  {
    v9 = [*(*(a1 + 32) + 232) entity];
    v10 = [v9 bundleIdentifier];
    if ([v10 length])
    {
      v11 = [*(*(a1 + 32) + 232) entity];
      v12 = [v11 bundleIdentifier];
    }

    else
    {
      v12 = 0;
    }

    [*(a1 + 32) postMonthlySummaryNotificationForAppBundleIdentifier:v12];
  }
}

- (void)monthlyTriggerDeactivate
{
  monthlyNotificationTimer = [(ENDaemon *)self monthlyNotificationTimer];
  [monthlyNotificationTimer invalidate];

  [(ENDaemon *)self setMonthlyNotificationTimer:0];
  CFPrefs_SetValue();
  CFPrefs_RemoveValue();

  CFPrefs_RemoveValue();
}

- (void)_setActiveRegionForApp:(id)app infoDict:(id)dict
{
  appCopy = app;
  dictCopy = dict;
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon _setActiveRegionForApp:appCopy infoDict:?];
  }

  configurationManager = [(ENDaemon *)self configurationManager];
  configurationStore = [configurationManager configurationStore];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__ENDaemon__setActiveRegionForApp_infoDict___block_invoke;
  v12[3] = &unk_278FD15A8;
  v13 = appCopy;
  selfCopy = self;
  v15 = dictCopy;
  v10 = dictCopy;
  v11 = appCopy;
  [configurationStore allRegionServerConfigurationsWithCompletion:v12];
}

void __44__ENDaemon__setActiveRegionForApp_infoDict___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v19 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v18 + 1) + 8 * v7);
      v9 = [v8 appBundleID];
      v10 = [v9 isEqualToString:*(a1 + 32)];

      if (v10)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __44__ENDaemon__setActiveRegionForApp_infoDict___block_invoke_cold_1();
    }

    v11 = v8;

    if (v11)
    {
      v12 = [ENActiveEntity alloc];
      v13 = objc_alloc(MEMORY[0x277CC5C18]);
      v14 = *(a1 + 32);
      v15 = [v11 region];
      v16 = [v13 initWithBundleID:v14 region:v15];
      v17 = [(ENActiveEntity *)v12 initWithEntity:v16 activeStatus:2];

      [*(a1 + 40) _writePreferenceActiveEntity:v17];
      goto LABEL_16;
    }
  }

  else
  {
LABEL_9:
  }

  [*(a1 + 40) fetchServerConfigurationForAppBundleIdentifier:*(a1 + 32) infoDictionary:{*(a1 + 48), v18}];
LABEL_16:
}

- (void)updateExistingConsentForPhase1ActiveRegion:(int64_t)region
{
  p_activeEntity = &self->_activeEntity;
  activeEntity = self->_activeEntity;
  if (activeEntity && [(ENActiveEntity *)activeEntity activeStatus]== 2)
  {
    entity = [(ENActiveEntity *)*p_activeEntity entity];
    region = [entity region];

    if (region)
    {
      configurationManager = [(ENDaemon *)self configurationManager];
      configurationStore = [configurationManager configurationStore];
      v11 = [configurationStore configurationForRegion:region];

      userConsent = [v11 userConsent];
      consent = [userConsent consent];

      if (consent)
      {
        if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          [(ENDaemon *)p_activeEntity updateExistingConsentForPhase1ActiveRegion:region];
        }

        userConsent2 = [v11 userConsent];
        [userConsent2 setConsent:region];

        configurationManager2 = [(ENDaemon *)self configurationManager];
        configurationStore2 = [configurationManager2 configurationStore];
        v19 = 0;
        v17 = [configurationStore2 saveRegionConfiguration:v11 error:&v19];
        v18 = v19;

        if ((v17 & 1) == 0 && dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          [ENDaemon updateExistingConsentForPhase1ActiveRegion:v18];
        }
      }
    }
  }

  else
  {
    [ENDaemon updateExistingConsentForPhase1ActiveRegion:];
  }
}

- (unsigned)appDequeueActivityFlagsWithBundleID:(id)d
{
  appActivities = self->_appActivities;
  dCopy = d;
  v6 = [(NSMutableDictionary *)appActivities objectForKeyedSubscript:dCopy];
  unsignedIntValue = [v6 unsignedIntValue];

  [(NSMutableDictionary *)self->_appActivities setObject:0 forKeyedSubscript:dCopy];
  return unsignedIntValue;
}

- (id)xpcConnectionForBundleID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_xpcConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        client = [v9 client];
        signingIdentity = [client signingIdentity];
        v12 = [signingIdentity isEqualToString:dCopy];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)appLaunchWithBundleID:(id)d activity:(unsigned int)activity shouldEnterForeground:(BOOL)foreground requiredRuntimeInSeconds:(int)seconds
{
  v6 = *&seconds;
  foregroundCopy = foreground;
  v8 = *&activity;
  dCopy = d;
  v11 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v11 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon appLaunchWithBundleID:v8 activity:foregroundCopy shouldEnterForeground:dCopy requiredRuntimeInSeconds:v6];
  }

  v13 = [(NSMutableDictionary *)self->_appActivities objectForKeyedSubscript:dCopy];
  if (!self->_appActivities)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB30]);
    appActivities = self->_appActivities;
    self->_appActivities = v14;
  }

  v16 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{objc_msgSend(v13, "unsignedIntValue") | v8}];
  [(NSMutableDictionary *)self->_appActivities setObject:v16 forKeyedSubscript:dCopy];

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __90__ENDaemon_appLaunchWithBundleID_activity_shouldEnterForeground_requiredRuntimeInSeconds___block_invoke;
  v32[3] = &unk_278FD1120;
  v32[4] = self;
  v17 = dCopy;
  v33 = v17;
  v18 = MEMORY[0x24C214430](v32);
  v19 = objc_alloc_init(MEMORY[0x277CBEB30]);
  v20 = v19;
  if (foregroundCopy)
  {
    [v19 setObject:&unk_285D6E3F0 forKeyedSubscript:*MEMORY[0x277D0AC50]];
    v21 = MEMORY[0x277D0AC68];
  }

  else
  {
    v21 = MEMORY[0x277D0ABE8];
  }

  [v20 setObject:&unk_285D6E3F0 forKeyedSubscript:*v21];
  v22 = [MEMORY[0x277D0AD68] optionsWithDictionary:v20];
  serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD70] serviceWithDefaultShellEndpoint];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __90__ENDaemon_appLaunchWithBundleID_activity_shouldEnterForeground_requiredRuntimeInSeconds___block_invoke_540;
  v25[3] = &unk_278FD15D0;
  v31 = foregroundCopy;
  selfCopy = self;
  v28 = v18;
  v29 = v8;
  v30 = v6;
  v26 = v17;
  v24 = v17;
  [serviceWithDefaultShellEndpoint openApplication:v24 withOptions:v22 completion:v25];
}

void __90__ENDaemon_appLaunchWithBundleID_activity_shouldEnterForeground_requiredRuntimeInSeconds___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnectionForBundleID:*(a1 + 40)];
  if (v2)
  {
    v4 = v2;
    v3 = [*(a1 + 32) appDequeueActivityFlagsWithBundleID:*(a1 + 40)];
    v2 = v4;
    if (v3)
    {
      [v4 xpcReportActivityFlags:?];
      v2 = v4;
    }
  }
}

void __90__ENDaemon_appLaunchWithBundleID_activity_shouldEnterForeground_requiredRuntimeInSeconds___block_invoke_540(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v11 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v12 = [v11 isSensitiveLoggingAllowed];

    if (v12 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __90__ENDaemon_appLaunchWithBundleID_activity_shouldEnterForeground_requiredRuntimeInSeconds___block_invoke_540_cold_3(a1, v7);
    }
  }

  else
  {
    v8 = [v5 pid];
    v9 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v10 = [v9 isSensitiveLoggingAllowed];

    if (v10 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __90__ENDaemon_appLaunchWithBundleID_activity_shouldEnterForeground_requiredRuntimeInSeconds___block_invoke_540_cold_1(a1, v8);
    }

    if (*(a1 + 64) == 1)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x277CEEEA0]) initWithPID:v8 flags:1 reason:5 name:*(a1 + 32)];
      if ([v13 acquire])
      {
        (*(*(a1 + 48) + 16))();
        v14 = dispatch_time(0, 1000000000 * *(a1 + 60));
        v15 = *(*(a1 + 40) + 224);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __90__ENDaemon_appLaunchWithBundleID_activity_shouldEnterForeground_requiredRuntimeInSeconds___block_invoke_2;
        block[3] = &unk_278FD1558;
        v16 = *(a1 + 32);
        v22 = *(a1 + 56);
        v23 = v8;
        v20 = v16;
        v21 = v13;
        dispatch_after(v14, v15, block);
      }

      else
      {
        v17 = +[ENLoggingPrefs sharedENLoggingPrefs];
        v18 = [v17 isSensitiveLoggingAllowed];

        if (v18 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          __90__ENDaemon_appLaunchWithBundleID_activity_shouldEnterForeground_requiredRuntimeInSeconds___block_invoke_540_cold_2((a1 + 32), a1, v8);
        }

        [v13 invalidate];
      }
    }
  }
}

uint64_t __90__ENDaemon_appLaunchWithBundleID_activity_shouldEnterForeground_requiredRuntimeInSeconds___block_invoke_2(uint64_t a1)
{
  v2 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v3 = [v2 isSensitiveLoggingAllowed];

  if (v3 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __90__ENDaemon_appLaunchWithBundleID_activity_shouldEnterForeground_requiredRuntimeInSeconds___block_invoke_2_cold_1(a1);
  }

  v4 = *(a1 + 40);

  return [v4 invalidate];
}

- (void)postAnalyticsOptInNotificationForRegion:(id)region
{
  v30[1] = *MEMORY[0x277D85DE8];
  regionCopy = region;
  v7 = regionCopy;
  if (_MergedGlobals <= 30)
  {
    if (_MergedGlobals != -1 || (regionCopy = _LogCategory_Initialize(), regionCopy))
    {
      regionCopy = [ENDaemon postAnalyticsOptInNotificationForRegion:v7];
      if (v7)
      {
        goto LABEL_5;
      }

LABEL_12:
      [(ENDaemon *)regionCopy postAnalyticsOptInNotificationForRegion:v5, v6];
      goto LABEL_10;
    }
  }

  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_5:
  configurationStore = [(ENConfigurationManager *)self->_configurationManager configurationStore];
  v9 = [configurationStore serverConfigurationForRegion:v7];

  if (v9)
  {
    if ([v9 telemetryAuthorization])
    {
      if ([v9 enVersion] <= 1)
      {
        [ENDaemon postAnalyticsOptInNotificationForRegion:];
      }

      else
      {
        configurationStore2 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
        v11 = [configurationStore2 agencyConfigurationForRegion:v7];

        agencyDisplayName = [v11 agencyDisplayName];
        localizedConfiguration = [v11 localizedConfiguration];
        regionName = [localizedConfiguration regionName];

        v14 = MEMORY[0x277CCACA0];
        regionCode = [v7 regionCode];
        v16 = [v14 stringWithFormat:@"prefs:root=EXPOSURE_NOTIFICATION&path=ANALYTICS-CONSENT/%@", regionCode];

        v17 = objc_alloc_init(MEMORY[0x277CE1F58]);
        [v17 setTitle:regionName];
        v18 = MEMORY[0x277CCACA0];
        v30[0] = agencyDisplayName;
        v19 = [MEMORY[0x277CBEA68] arrayWithObjects:v30 count:1];
        v20 = [v18 localizedUserNotificationStringForKey:@"EN_ANALYTICS_CONSENT_SUBTITLE" arguments:v19];
        [v17 setSubtitle:v20];

        v21 = [MEMORY[0x277CCACA0] localizedUserNotificationStringForKey:@"EN_ANALYTICS_CONSENT_BODY" arguments:0];
        [v17 setBody:v21];

        defaultSound = [MEMORY[0x277CE1FD8] defaultSound];
        [v17 setSound:defaultSound];

        [v17 setThreadIdentifier:@"com.apple.ExposureNotification.UserNotification.endaemon"];
        [v17 setCategoryIdentifier:@"com.apple.ExposureNotification.UserNotification.analyticsConsent"];
        v23 = [MEMORY[0x277CBEBC8] URLWithString:v16];
        [v17 setDefaultActionURL:v23];

        v28 = @"regionCode";
        regionCode2 = [v7 regionCode];
        v29 = regionCode2;
        v25 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        [v17 setUserInfo:v25];

        [v17 setShouldBackgroundDefaultAction:1];
        [v17 setShouldAuthenticateDefaultAction:1];
        v26 = [MEMORY[0x277CE1FB8] requestWithIdentifier:@"com.apple.ExposureNotification.UserNotification" content:v17 trigger:0 destinations:7];
        [(ENDaemon *)self _postUserNotificationWithRequest:v26 authorizationFailureHandler:0];
      }
    }

    else
    {
      [ENDaemon postAnalyticsOptInNotificationForRegion:];
    }
  }

  else
  {
    [ENDaemon postAnalyticsOptInNotificationForRegion:];
  }

LABEL_10:
}

- (void)postExposureSummaryAccessNotificationWithAppBundleIdentifier:(id)identifier string:(id)string
{
  v30[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  stringCopy = string;
  v10 = stringCopy;
  if (identifierCopy)
  {
    v11 = [MEMORY[0x277CC1E68] applicationProxyForIdentifier:identifierCopy placeholder:0];
    localizedName = [v11 localizedName];

    v13 = objc_alloc_init(MEMORY[0x277CE1F58]);
    [v13 setTitle:localizedName];
    v14 = [v10 length];
    v15 = MEMORY[0x277CCACA0];
    if (v14)
    {
      v16 = [MEMORY[0x277CCACA0] localizedUserNotificationStringForKey:@"EN_COBRANDED_SUBTITLE" arguments:0];
      [v13 setSubtitle:v16];

      v15 = MEMORY[0x277CCACA0];
      v30[0] = v10;
      v17 = [MEMORY[0x277CBEA68] arrayWithObjects:v30 count:1];
      v18 = @"EN_COBRANDED_BODY";
    }

    else
    {
      v29 = v10;
      v17 = [MEMORY[0x277CBEA68] arrayWithObjects:&v29 count:1];
      v18 = @"EN_COBRANDED_BODY_STANDALONE";
    }

    v19 = [v15 localizedUserNotificationStringForKey:v18 arguments:v17];
    [v13 setBody:v19];

    v20 = [MEMORY[0x277CE1FA8] iconForApplicationIdentifier:identifierCopy];
    [v13 setIcon:v20];

    defaultSound = [MEMORY[0x277CE1FD8] defaultSound];
    [v13 setSound:defaultSound];

    [v13 setThreadIdentifier:@"com.apple.ExposureNotification.UserNotification.cobranded"];
    [v13 setCategoryIdentifier:@"com.apple.ExposureNotification.UserNotification.summary"];
    [v13 setShouldBackgroundDefaultAction:1];
    entity = [(ENActiveEntity *)self->_activeEntity entity];
    region = [entity region];
    regionCode = [region regionCode];

    if (regionCode)
    {
      v27 = @"regionCode";
      v28 = regionCode;
      v25 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      [v13 setUserInfo:v25];
    }

    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon postExposureSummaryAccessNotificationWithAppBundleIdentifier:string:];
    }

    v26 = [MEMORY[0x277CE1FB8] requestWithIdentifier:@"com.apple.ExposureNotification.summary" content:v13 trigger:0 destinations:7];
    [(ENDaemon *)self _postUserNotificationWithRequest:v26 authorizationFailureHandler:0];
  }

  else
  {
    [(ENDaemon *)stringCopy postExposureSummaryAccessNotificationWithAppBundleIdentifier:v8 string:v9];
  }
}

- (void)postGeneralNotificationWithTitle:(id)title message:(id)message
{
  titleCopy = title;
  messageCopy = message;
  v9 = messageCopy;
  if (_MergedGlobals <= 30)
  {
    if (_MergedGlobals != -1 || (messageCopy = _LogCategory_Initialize(), messageCopy))
    {
      [(ENDaemon *)messageCopy postGeneralNotificationWithTitle:v7 message:v8];
    }
  }

  if (titleCopy && v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CE1F58]);
    [v10 setTitle:&stru_285D62BB0];
    v11 = [MEMORY[0x277CCACA0] localizedUserNotificationStringForKey:titleCopy arguments:0];
    [v10 setSubtitle:v11];

    v12 = [MEMORY[0x277CCACA0] localizedUserNotificationStringForKey:v9 arguments:0];
    [v10 setBody:v12];

    defaultSound = [MEMORY[0x277CE1FD8] defaultSound];
    [v10 setSound:defaultSound];

    [v10 setThreadIdentifier:@"com.apple.ExposureNotification.UserNotification.endaemon"];
    [v10 setCategoryIdentifier:@"com.apple.ExposureNotification.UserNotification.preArm"];
    [v10 setShouldBackgroundDefaultAction:1];
    [v10 setShouldAuthenticateDefaultAction:1];
    v14 = [MEMORY[0x277CE1FB8] requestWithIdentifier:@"com.apple.ExposureNotification.preArm" content:v10 trigger:0 destinations:7];
    [(ENDaemon *)self _postUserNotificationWithRequest:v14 authorizationFailureHandler:0];
  }

  else
  {
    [(ENDaemon *)titleCopy postGeneralNotificationWithTitle:v7 message:v8];
  }
}

- (void)postMonthlySummaryNotificationForAppBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (identifierCopy)
  {
    v8 = identifierCopy;
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon postMonthlySummaryNotificationForAppBundleIdentifier:v8];
    }

    v9 = objc_alloc_init(MEMORY[0x277CE1F58]);
    v10 = [MEMORY[0x277CE1FA8] iconForApplicationIdentifier:@"com.apple.Preferences"];
    [v9 setIcon:v10];

    [v9 setTitle:&stru_285D62BB0];
    v11 = [MEMORY[0x277CCACA0] localizedUserNotificationStringForKey:@"EN_MONTHLY_SUBTITLE" arguments:0];
    [v9 setSubtitle:v11];

    defaultSound = [MEMORY[0x277CE1FD8] defaultSound];
    [v9 setSound:defaultSound];

    [v9 setThreadIdentifier:@"com.apple.ExposureNotification.UserNotification.weeklyupdatenotification"];
    [v9 setCategoryIdentifier:@"com.apple.ExposureNotification.UserNotification.weekly"];
    v13 = [MEMORY[0x277CBEBC8] URLWithString:@"prefs:root=EXPOSURE_NOTIFICATION"];
    [v9 setDefaultActionURL:v13];

    v14 = [MEMORY[0x277CCACA0] localizedUserNotificationStringForKey:@"EN_MONTHLY_ZERO_COUNT_BODY" arguments:0];
    [v9 setBody:v14];

    v15 = [MEMORY[0x277CE1FB8] requestWithIdentifier:@"com.apple.ExposureNotification.weekly" content:v9 trigger:0 destinations:7];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __65__ENDaemon_postMonthlySummaryNotificationForAppBundleIdentifier___block_invoke;
    v16[3] = &unk_278FD0F90;
    v16[4] = self;
    [(ENDaemon *)self _postUserNotificationWithRequest:v15 authorizationFailureHandler:v16];
  }

  else
  {
    [(ENDaemon *)0 postMonthlySummaryNotificationForAppBundleIdentifier:v5, v6];
  }
}

- (void)postOnboardingNotificationForRegion:(id)region
{
  v27[1] = *MEMORY[0x277D85DE8];
  regionCopy = region;
  v7 = regionCopy;
  if (_MergedGlobals > 30 || _MergedGlobals == -1 && (regionCopy = _LogCategory_Initialize(), !regionCopy))
  {
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_16:
    [(ENDaemon *)regionCopy postOnboardingNotificationForRegion:v5, v6];
    goto LABEL_14;
  }

  regionCopy = [(ENDaemon *)regionCopy postOnboardingNotificationForRegion:v5, v6];
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_5:
  v8 = [(ENDaemon *)self _getAvailabilityAlertCountIncrement:1 reset:0];
  if (_MergedGlobals <= 30)
  {
    v9 = v8;
    if (_MergedGlobals != -1 || _LogCategory_Initialize())
    {
      [ENDaemon postOnboardingNotificationForRegion:v9];
    }
  }

  configurationStore = [(ENConfigurationManager *)self->_configurationManager configurationStore];
  v11 = [configurationStore agencyConfigurationForRegion:v7];

  agencyDisplayName = [v11 agencyDisplayName];
  v13 = agencyDisplayName;
  if (v11 && agencyDisplayName)
  {
    configurationStore2 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
    v15 = [configurationStore2 serverConfigurationForRegion:v7];

    if ([v15 enVersion] <= 1)
    {
      [ENDaemon postOnboardingNotificationForRegion:];
    }

    else
    {
      v16 = objc_alloc_init(MEMORY[0x277CE1F58]);
      [v16 setTitle:&stru_285D62BB0];
      v17 = [MEMORY[0x277CCACA0] localizedUserNotificationStringForKey:@"EN_AVAILABLE_SUBTITLE" arguments:0];
      [v16 setSubtitle:v17];

      v18 = MEMORY[0x277CCACA0];
      v27[0] = v13;
      v19 = [MEMORY[0x277CBEA68] arrayWithObjects:v27 count:1];
      v20 = [v18 localizedUserNotificationStringForKey:@"EN_AVAILABLE_BODY_PHA" arguments:v19];
      [v16 setBody:v20];

      defaultSound = [MEMORY[0x277CE1FD8] defaultSound];
      [v16 setSound:defaultSound];

      [v16 setThreadIdentifier:@"com.apple.ExposureNotification.UserNotification.endaemon"];
      [v16 setCategoryIdentifier:@"com.apple.ExposureNotification.UserNotification.onboarding"];
      regionCode = [v7 regionCode];
      v26 = regionCode;
      v23 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      [v16 setUserInfo:v23];

      [v16 setShouldBackgroundDefaultAction:1];
      [v16 setShouldAuthenticateDefaultAction:1];
      v24 = [MEMORY[0x277CE1FB8] requestWithIdentifier:@"com.apple.ExposureNotification.onboarding" content:v16 trigger:0 destinations:7];
      [(ENDaemon *)self _postUserNotificationWithRequest:v24 authorizationFailureHandler:0];
    }
  }

  else
  {
    [ENDaemon postOnboardingNotificationForRegion:];
  }

LABEL_14:
}

- (void)postPreAuthorizationNotificationForRegion:(id)region
{
  v30[1] = *MEMORY[0x277D85DE8];
  regionCopy = region;
  v7 = regionCopy;
  if (_MergedGlobals <= 30)
  {
    if (_MergedGlobals != -1 || (regionCopy = _LogCategory_Initialize(), regionCopy))
    {
      regionCopy = [(ENDaemon *)regionCopy postPreAuthorizationNotificationForRegion:v5, v6];
      if (v7)
      {
        goto LABEL_5;
      }

LABEL_22:
      [(ENDaemon *)regionCopy postPreAuthorizationNotificationForRegion:v5, v6];
      goto LABEL_20;
    }
  }

  if (!v7)
  {
    goto LABEL_22;
  }

LABEL_5:
  configurationStore = [(ENConfigurationManager *)self->_configurationManager configurationStore];
  v9 = [configurationStore agencyConfigurationForRegion:v7];

  agencyDisplayName = [v9 agencyDisplayName];
  v11 = agencyDisplayName;
  if (!v9 || !agencyDisplayName)
  {
    [ENDaemon postPreAuthorizationNotificationForRegion:];
    goto LABEL_19;
  }

  configurationStore2 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
  v13 = [configurationStore2 serverConfigurationForRegion:v7];

  if (![(ENDaemon *)self _isNKDActive])
  {
    appBundleID = [v13 appBundleID];
    v15 = appBundleID;
    if (!v13 || !appBundleID || ![appBundleID length])
    {
      [(ENDaemon *)v15 postPreAuthorizationNotificationForRegion:v7];
      goto LABEL_18;
    }

LABEL_14:
    v16 = objc_alloc_init(MEMORY[0x277CE1F58]);
    [v16 setTitle:v11];
    if ([(ENDaemon *)self _isNKDActive])
    {
      v17 = [MEMORY[0x277CCACA0] localizedUserNotificationStringForKey:@"EN_PREARM_SUBTITLE_ENX" arguments:0];
      [v16 setSubtitle:v17];

      v18 = MEMORY[0x277CCACA0];
      v30[0] = v11;
      v19 = [MEMORY[0x277CBEA68] arrayWithObjects:v30 count:1];
      v20 = @"EN_PREARM_BODY_ENX";
    }

    else
    {
      v21 = [MEMORY[0x277CCACA0] localizedUserNotificationStringForKey:@"EN_PREARM_SUBTITLE" arguments:0];
      [v16 setSubtitle:v21];

      v18 = MEMORY[0x277CCACA0];
      v29 = v11;
      v19 = [MEMORY[0x277CBEA68] arrayWithObjects:&v29 count:1];
      v20 = @"EN_PREARM_BODY";
    }

    v22 = [v18 localizedUserNotificationStringForKey:v20 arguments:v19];
    [v16 setBody:v22];

    defaultSound = [MEMORY[0x277CE1FD8] defaultSound];
    [v16 setSound:defaultSound];

    [v16 setThreadIdentifier:@"com.apple.ExposureNotification.UserNotification.endaemon"];
    [v16 setCategoryIdentifier:@"com.apple.ExposureNotification.UserNotification.preArm"];
    v27[0] = @"regionCode";
    regionCode = [v7 regionCode];
    v27[1] = @"isKeyReleased";
    v28[0] = regionCode;
    v28[1] = MEMORY[0x277CBEC30];
    v25 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:v28 forKeys:v27 count:2];
    [v16 setUserInfo:v25];

    [v16 setShouldBackgroundDefaultAction:1];
    [v16 setShouldAuthenticateDefaultAction:1];
    [v16 setInterruptionLevel:2];
    v26 = [MEMORY[0x277CE1FB8] requestWithIdentifier:@"com.apple.ExposureNotification.preArm" content:v16 trigger:0 destinations:5];
    [(ENDaemon *)self _postUserNotificationWithRequest:v26 authorizationFailureHandler:0];

    goto LABEL_18;
  }

  if (v13)
  {
    goto LABEL_14;
  }

  [ENDaemon postPreAuthorizationNotificationForRegion:];
LABEL_18:

LABEL_19:
LABEL_20:
}

- (void)postTestVerificationReceivedNotification:(id)notification region:(id)region reportType:(unsigned int)type
{
  v48[1] = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  regionCopy = region;
  v11 = regionCopy;
  if (_MergedGlobals <= 30)
  {
    if (_MergedGlobals != -1 || (regionCopy = _LogCategory_Initialize(), regionCopy))
    {
      regionCopy = [ENDaemon postTestVerificationReceivedNotification:regionCopy region:v9 reportType:v10];
    }
  }

  if (!notificationCopy)
  {
    [ENDaemon postTestVerificationReceivedNotification:regionCopy region:v9 reportType:v10];
    goto LABEL_24;
  }

  if (!v11)
  {
    [ENDaemon postTestVerificationReceivedNotification:regionCopy region:v9 reportType:v10];
    goto LABEL_24;
  }

  ensTestVerificationURL = [notificationCopy ensTestVerificationURL];
  absoluteString = [ensTestVerificationURL absoluteString];

  v42 = absoluteString;
  if (!absoluteString)
  {
    [ENDaemon postTestVerificationReceivedNotification:v14 region:v15 reportType:v16];
    goto LABEL_23;
  }

  v43 = [MEMORY[0x277CCAB60] stringWithString:absoluteString];
  configurationStore = [(ENConfigurationManager *)self->_configurationManager configurationStore];
  v18 = [configurationStore agencyConfigurationForRegion:v11];

  agencyDisplayName = [v18 agencyDisplayName];
  v20 = agencyDisplayName;
  if (!v18 || !agencyDisplayName)
  {
    [ENDaemon postTestVerificationReceivedNotification:region:reportType:];
    goto LABEL_22;
  }

  if (type != 3)
  {
    localizedConfiguration = [v18 localizedConfiguration];
    testVerificationNotificationBody = [localizedConfiguration testVerificationNotificationBody];

    if ([testVerificationNotificationBody length])
    {
      v29 = [MEMORY[0x277CCACA0] localizedUserNotificationStringForKey:@"EN_SMS_SUBTITLE_TOUCH_ID" arguments:0];
      if (+[ENDaemon deviceSupportsFaceID])
      {
        v31 = [MEMORY[0x277CCACA0] localizedUserNotificationStringForKey:@"EN_SMS_SUBTITLE_FACE_ID" arguments:0];

        v29 = v31;
      }

      goto LABEL_16;
    }

    [ENDaemon postTestVerificationReceivedNotification:v11 region:testVerificationNotificationBody reportType:&v45];
    goto LABEL_35;
  }

  if (![(ENConfigurationManager *)self->_configurationManager regionSupportsFeatures:v11 featureFlags:2])
  {
    [ENDaemon postTestVerificationReceivedNotification:v11 region:&v45 reportType:?];
LABEL_35:
    testVerificationNotificationBody = v45;
    goto LABEL_21;
  }

  localizedConfiguration2 = [v18 localizedConfiguration];
  selfReportNotificationBody = [localizedConfiguration2 selfReportNotificationBody];

  if ([selfReportNotificationBody length])
  {
    v23 = MEMORY[0x277CCACA0];
    v48[0] = selfReportNotificationBody;
    [MEMORY[0x277CBEA68] arrayWithObjects:v48 count:1];
    selfCopy = self;
    v26 = v25 = v20;
    v27 = [v23 localizedUserNotificationStringForKey:@"EN_SELF_REPORT_BODY_%@" arguments:v26];

    v20 = v25;
    self = selfCopy;
    testVerificationNotificationBody = v27;
    v29 = [MEMORY[0x277CCACA0] localizedUserNotificationStringForKey:@"EN_SELF_REPORT_SUBTITLE" arguments:0];

    type = 3;
LABEL_16:
    type = [MEMORY[0x277CCACA0] stringWithFormat:@"&t=%lu", type];
    [v43 appendString:?];
    configurationStore2 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
    v33 = [configurationStore2 serverConfigurationForRegion:v11];

    if (v33)
    {
      if ([v33 enVersion] <= 1)
      {
        [ENDaemon postTestVerificationReceivedNotification:region:reportType:];
      }

      else if ([(ENDaemon *)self _isNKDActive])
      {
        v34 = objc_alloc_init(MEMORY[0x277CE1F58]);
        [v34 setTitle:v20];
        [v34 setSubtitle:v29];
        [v34 setBody:testVerificationNotificationBody];
        [MEMORY[0x277CE1FD8] defaultSound];
        v35 = v40 = self;
        [v34 setSound:v35];

        [v34 setThreadIdentifier:@"com.apple.ExposureNotification.UserNotification.endaemon"];
        [v34 setCategoryIdentifier:@"com.apple.ExposureNotification.UserNotification.exposure"];
        [v34 setInterruptionLevel:2];
        v46[0] = @"regionCode";
        regionCode = [v11 regionCode];
        v46[1] = @"isTextMessageVerificationURL";
        v47[0] = regionCode;
        v47[1] = v43;
        [MEMORY[0x277CBEAC8] dictionaryWithObjects:v47 forKeys:v46 count:2];
        v38 = v37 = testVerificationNotificationBody;
        [v34 setUserInfo:v38];

        testVerificationNotificationBody = v37;
        [v34 setShouldBackgroundDefaultAction:1];
        [v34 setShouldAuthenticateDefaultAction:1];
        v39 = [MEMORY[0x277CE1FB8] requestWithIdentifier:@"com.apple.ExposureNotification.textMessage" content:v34 trigger:0 destinations:7];
        [(ENDaemon *)v40 _postUserNotificationWithRequest:v39 authorizationFailureHandler:0];
      }

      else
      {
        [ENDaemon postTestVerificationReceivedNotification:region:reportType:];
      }
    }

    else
    {
      [ENDaemon postTestVerificationReceivedNotification:region:reportType:];
    }

    goto LABEL_21;
  }

  [ENDaemon postTestVerificationReceivedNotification:selfReportNotificationBody region:v11 reportType:?];
  testVerificationNotificationBody = 0;
LABEL_21:

LABEL_22:
LABEL_23:

LABEL_24:
}

- (void)presentBuddyForRegion:(id)region errorHandler:(id)handler completionHandler:(id)completionHandler
{
  regionCopy = region;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  buddyAlertHandle = [(ENDaemon *)self buddyAlertHandle];
  isValid = [buddyAlertHandle isValid];

  if (isValid)
  {
    if (_MergedGlobals <= 40)
    {
      if (_MergedGlobals != -1 || (v13 = _LogCategory_Initialize(), v13))
      {
        [ENDaemon presentBuddyForRegion:v13 errorHandler:v14 completionHandler:v15];
      }
    }

    v16 = ENErrorF(1, "Not showing HealthENBuddy because it is already showing.");
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v16);
    }
  }

  else
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __65__ENDaemon_presentBuddyForRegion_errorHandler_completionHandler___block_invoke;
    v26[3] = &unk_278FD15F8;
    v26[4] = self;
    v17 = handlerCopy;
    v28 = v17;
    v27 = regionCopy;
    v29 = completionHandlerCopy;
    v18 = MEMORY[0x24C214430](v26);
    sharingClient = [(ENDaemon *)self sharingClient];

    if (sharingClient)
    {
      sharingClient2 = [(ENDaemon *)self sharingClient];
      [sharingClient2 invalidate];

      [(ENDaemon *)self setSharingClient:0];
    }

    v21 = objc_alloc_init(MEMORY[0x277D54C28]);
    [(ENDaemon *)self setSharingClient:v21];

    sharingClient3 = [(ENDaemon *)self sharingClient];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __65__ENDaemon_presentBuddyForRegion_errorHandler_completionHandler___block_invoke_2;
    v23[3] = &unk_278FD1648;
    v23[4] = self;
    v24 = v17;
    v25 = v18;
    [sharingClient3 startProxCardTransactionWithOptions:0 completion:v23];
  }
}

void __65__ENDaemon_presentBuddyForRegion_errorHandler_completionHandler___block_invoke(uint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) buddyAlertHandle];
  v3 = [v2 isValid];

  if (v3)
  {
    if (_MergedGlobals <= 40)
    {
      if (_MergedGlobals != -1 || (v4 = _LogCategory_Initialize(), v4))
      {
        __65__ENDaemon_presentBuddyForRegion_errorHandler_completionHandler___block_invoke_cold_3(v4, v5, v6);
      }
    }

    v7 = ENErrorF(1, "Not showing HealthENBuddy because it is already showing.");
    v8 = *(a1 + 48);
    if (v8)
    {
      v20 = v7;
      (*(v8 + 16))();
      v7 = v20;
    }
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277D66BE0]) initWithServiceName:@"com.apple.HealthENBuddy" viewControllerClassName:@"HealthENBuddy.HealthENBuddyContainer"];
    v10 = objc_alloc_init(MEMORY[0x277D66BC8]);
    v21 = @"regionCountryCode";
    v11 = [*(a1 + 40) countryCode];
    v22[0] = v11;
    v12 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v13 = [v12 mutableCopy];

    v14 = [*(a1 + 40) subdivisionCode];

    if (v14)
    {
      v15 = [*(a1 + 40) subdivisionCode];
      [v13 setObject:v15 forKeyedSubscript:@"regionSubdivisionCode"];
    }

    [v10 setUserInfo:v13];
    v16 = [MEMORY[0x277D66BE8] newHandleWithDefinition:v9 configurationContext:v10];
    [*(a1 + 32) setBuddyAlertHandle:v16];

    v17 = *(a1 + 56);
    if (v17 && ((*(v17 + 16))() & 1) == 0)
    {
      if (_MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        __65__ENDaemon_presentBuddyForRegion_errorHandler_completionHandler___block_invoke_cold_1();
      }

      [*(a1 + 32) tearDownAlertHandle];
    }

    else
    {
      if (_MergedGlobals <= 40 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        __65__ENDaemon_presentBuddyForRegion_errorHandler_completionHandler___block_invoke_cold_2();
      }

      v18 = [*(a1 + 32) buddyAlertHandle];
      [v18 addObserver:*(a1 + 32)];

      v19 = [*(a1 + 32) buddyAlertHandle];
      [v19 activateWithContext:0];
    }
  }
}

void __65__ENDaemon_presentBuddyForRegion_errorHandler_completionHandler___block_invoke_2(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v18[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (_MergedGlobals <= 40)
    {
      if (_MergedGlobals != -1 || (a1 = _LogCategory_Initialize(), a1))
      {
        __65__ENDaemon_presentBuddyForRegion_errorHandler_completionHandler___block_invoke_2_cold_2(a1, a2, a3);
      }
    }

    v4 = [MEMORY[0x277D0AD70] serviceWithDefaultShellEndpoint];
    v5 = MEMORY[0x277D0AD68];
    v17 = *MEMORY[0x277D0ABE8];
    v18[0] = MEMORY[0x277CBEC30];
    v6 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v7 = [v5 optionsWithDictionary:v6];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __65__ENDaemon_presentBuddyForRegion_errorHandler_completionHandler___block_invoke_3;
    v14[3] = &unk_278FD1620;
    v8 = v3[5];
    v14[4] = v3[4];
    v9 = v8;
    v10 = v3[6];
    v15 = v9;
    v16 = v10;
    [v4 openApplication:@"com.apple.HealthENBuddy" withOptions:v7 completion:v14];
  }

  else
  {
    if (_MergedGlobals <= 90)
    {
      if (_MergedGlobals != -1 || (a1 = _LogCategory_Initialize(), a1))
      {
        __65__ENDaemon_presentBuddyForRegion_errorHandler_completionHandler___block_invoke_2_cold_1(a1, a2, a3);
      }
    }

    v11 = ENErrorF(1, "Not showing HealthENBuddy because of a sharing prox card.");
    v12 = v3[5];
    if (v12)
    {
      v13 = v11;
      (*(v12 + 16))();
      v11 = v13;
    }
  }
}

void __65__ENDaemon_presentBuddyForRegion_errorHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v8 = v5;
  if (v5)
  {
    if (_MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __65__ENDaemon_presentBuddyForRegion_errorHandler_completionHandler___block_invoke_3_cold_1(v8);
    }

    [*(a1 + 32) tearDownAlertHandle];
    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, v8);
    }
  }

  else
  {
    if (_MergedGlobals <= 40)
    {
      if (_MergedGlobals != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        __65__ENDaemon_presentBuddyForRegion_errorHandler_completionHandler___block_invoke_3_cold_2(v5, v6, v7);
      }
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)tearDownAlertHandle
{
  buddyAlertHandle = [(ENDaemon *)self buddyAlertHandle];
  [buddyAlertHandle removeObserver:self];

  buddyAlertHandle2 = [(ENDaemon *)self buddyAlertHandle];
  [buddyAlertHandle2 invalidate];

  [(ENDaemon *)self setBuddyAlertHandle:0];
  sharingClient = [(ENDaemon *)self sharingClient];
  [sharingClient invalidate];

  [(ENDaemon *)self setSharingClient:0];
}

- (void)postENOffNotification
{
  selfCopy = self;
  if (_MergedGlobals <= 30)
  {
    if (_MergedGlobals != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(ENDaemon *)self postENOffNotification];
    }
  }

  v9 = objc_alloc_init(MEMORY[0x277CE1F58]);
  v4 = [MEMORY[0x277CCACA0] localizedUserNotificationStringForKey:@"EN_OFF_TITLE" arguments:0];
  [v9 setTitle:v4];

  v5 = [MEMORY[0x277CCACA0] localizedUserNotificationStringForKey:@"EN_OFF_BODY" arguments:0];
  [v9 setBody:v5];

  defaultSound = [MEMORY[0x277CE1FD8] defaultSound];
  [v9 setSound:defaultSound];

  [v9 setThreadIdentifier:@"com.apple.ExposureNotification.UserNotification.endaemon"];
  [v9 setCategoryIdentifier:@"com.apple.ExposureNotification.UserNotification.off"];
  v7 = [MEMORY[0x277CBEBC8] URLWithString:@"prefs:root=EXPOSURE_NOTIFICATION"];
  [v9 setDefaultActionURL:v7];

  v8 = [MEMORY[0x277CE1FB8] requestWithIdentifier:@"com.apple.ExposureNotification.off" content:v9 trigger:0 destinations:7];
  [(ENDaemon *)selfCopy _postUserNotificationWithRequest:v8 authorizationFailureHandler:0];
}

- (void)postExposureNotification:(id)notification
{
  v25[1] = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  region = [notificationCopy region];
  if (region)
  {
    configurationStore = [(ENConfigurationManager *)self->_configurationManager configurationStore];
    v9 = [configurationStore agencyConfigurationForRegion:region];

    agencyDisplayName = [v9 agencyDisplayName];
    v11 = MEMORY[0x277CCACA0];
    regionCode = [region regionCode];
    v13 = [v11 stringWithFormat:@"prefs:root=EXPOSURE_NOTIFICATION&path=EXPOSURE/LATEST/%@", regionCode];

    v14 = objc_alloc_init(MEMORY[0x277CE1F58]);
    classification = [notificationCopy classification];
    v16 = classification;
    if (classification)
    {
      v24 = @"classificationIndex";
      v17 = [MEMORY[0x277CCABA8] numberWithUnsignedChar:{objc_msgSend(classification, "index")}];
      v25[0] = v17;
      v18 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      [v14 setUserInfo:v18];
    }

    [v14 setTitle:agencyDisplayName];
    localizedSubjectText = [notificationCopy localizedSubjectText];
    [v14 setSubtitle:localizedSubjectText];

    localizedBodyText = [notificationCopy localizedBodyText];
    [v14 setBody:localizedBodyText];

    defaultSound = [MEMORY[0x277CE1FD8] defaultSound];
    [v14 setSound:defaultSound];

    [v14 setThreadIdentifier:@"com.apple.ExposureNotification.UserNotification.cobranded"];
    [v14 setCategoryIdentifier:@"com.apple.ExposureNotification.UserNotification.exposure"];
    v22 = [MEMORY[0x277CBEBC8] URLWithString:v13];
    [v14 setDefaultActionURL:v22];

    [v14 setShouldBackgroundDefaultAction:1];
    [v14 setInterruptionLevel:2];
    v23 = [MEMORY[0x277CE1FB8] requestWithIdentifier:@"com.apple.ExposureNotification.exposure" content:v14 trigger:0 destinations:7];
    [(ENDaemon *)self _postUserNotificationWithRequest:v23 authorizationFailureHandler:0];
  }

  else
  {
    [(ENDaemon *)0 postExposureNotification:v5, v6];
  }
}

- (void)_postUserNotificationWithRequest:(id)request authorizationFailureHandler:(id)handler
{
  v43 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  userNotificationCenter = [(ENDaemon *)self userNotificationCenter];
  content = [requestCopy content];
  categoryIdentifier = [content categoryIdentifier];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  deliveredNotifications = [userNotificationCenter deliveredNotifications];
  v11 = [deliveredNotifications countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v11;
  v28 = handlerCopy;
  v29 = requestCopy;
  selfCopy = self;
  v31 = userNotificationCenter;
  v33 = 0;
  v13 = *v38;
  v14 = 1;
  v15 = @"com.apple.ExposureNotification.UserNotification";
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v38 != v13)
      {
        objc_enumerationMutation(deliveredNotifications);
      }

      request = [*(*(&v37 + 1) + 8 * i) request];
      identifier = [request identifier];
      v19 = [identifier isEqualToString:v15];

      if (v19)
      {
        content2 = [request content];
        categoryIdentifier2 = [content2 categoryIdentifier];
        v22 = v15;
        v23 = deliveredNotifications;
        v24 = [categoryIdentifier2 isEqualToString:categoryIdentifier];

        v14 &= v24;
        v33 |= v24;
        deliveredNotifications = v23;
        v15 = v22;
      }
    }

    v12 = [deliveredNotifications countByEnumeratingWithState:&v37 objects:v42 count:16];
  }

  while (v12);

  v25 = v33 & v14;
  self = selfCopy;
  userNotificationCenter = v31;
  handlerCopy = v28;
  requestCopy = v29;
  if (v25)
  {
    v41 = v15;
    deliveredNotifications = [MEMORY[0x277CBEA68] arrayWithObjects:&v41 count:1];
    [v31 removeDeliveredNotificationsWithIdentifiers:deliveredNotifications];
LABEL_12:
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __73__ENDaemon__postUserNotificationWithRequest_authorizationFailureHandler___block_invoke;
  v34[3] = &unk_278FD16C0;
  v34[4] = self;
  v34[5] = userNotificationCenter;
  v35 = requestCopy;
  v36 = handlerCopy;
  v26 = requestCopy;
  v27 = handlerCopy;
  [userNotificationCenter requestAuthorizationWithOptions:18 completionHandler:v34];
}

void __73__ENDaemon__postUserNotificationWithRequest_authorizationFailureHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 224);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__ENDaemon__postUserNotificationWithRequest_authorizationFailureHandler___block_invoke_2;
  block[3] = &unk_278FD1698;
  v16 = a2;
  v12 = v5;
  v7 = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v15 = v7;
  v13 = v8;
  v14 = v9;
  v10 = v5;
  dispatch_async(v6, block);
}

void __73__ENDaemon__postUserNotificationWithRequest_authorizationFailureHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v3 = *(a1 + 40);
    v2 = *(a1 + 48);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __73__ENDaemon__postUserNotificationWithRequest_authorizationFailureHandler___block_invoke_3;
    v6[3] = &unk_278FD1670;
    v7 = v2;
    [v3 addNotificationRequest:v7 withCompletionHandler:v6];
  }

  else
  {
    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      __73__ENDaemon__postUserNotificationWithRequest_authorizationFailureHandler___block_invoke_2_cold_1();
    }

    v4 = *(a1 + 56);
    if (v4)
    {
      v5 = *(v4 + 16);

      v5();
    }
  }
}

void __73__ENDaemon__postUserNotificationWithRequest_authorizationFailureHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (dword_281346508 <= 90)
    {
      v6 = v3;
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
      {
        __73__ENDaemon__postUserNotificationWithRequest_authorizationFailureHandler___block_invoke_3_cold_1(a1, v6);
        v4 = v6;
      }
    }
  }
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v68[2] = *MEMORY[0x277D85DE8];
  centerCopy = center;
  responseCopy = response;
  handlerCopy = handler;
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __88__ENDaemon_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke;
  v65[3] = &unk_278FD16E8;
  v58 = handlerCopy;
  v66 = v58;
  v10 = MEMORY[0x24C214430](v65);
  notification = [responseCopy notification];
  request = [notification request];
  content = [request content];
  categoryIdentifier = [content categoryIdentifier];

  notification2 = [responseCopy notification];
  request2 = [notification2 request];
  content2 = [request2 content];
  userInfo = [content2 userInfo];

  actionIdentifier = [responseCopy actionIdentifier];
  v19 = [actionIdentifier isEqualToString:*MEMORY[0x277CE20E0]];

  defaultWorkspace = [MEMORY[0x277CC1E78] defaultWorkspace];
  v20 = *MEMORY[0x277D0AC68];
  v67[0] = *MEMORY[0x277D0AC50];
  v67[1] = v20;
  v68[0] = MEMORY[0x277CBEC30];
  v68[1] = MEMORY[0x277CBEC30];
  v59 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:v68 forKeys:v67 count:2];
  if ([categoryIdentifier isEqualToString:@"com.apple.ExposureNotification.UserNotification.summary"])
  {
    CFStringGetTypeID();
    _readPreferenceRegionPendingOnboarding2 = CFDictionaryGetTypedValue();
    activeEntity = self->_activeEntity;
    if (activeEntity)
    {
      entity = [(ENActiveEntity *)activeEntity entity];
      bundleIdentifier = [entity bundleIdentifier];

      Int64 = CFDictionaryGetInt64();
      entity2 = [(ENActiveEntity *)self->_activeEntity entity];
      region = [entity2 region];
      regionCode = [region regionCode];

      if (([(__CFString *)_readPreferenceRegionPendingOnboarding2 isEqualToString:regionCode]& 1) == 0)
      {
        if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_281346508, "[ENDaemon userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]", 90, "This is a stale notification. It was intended for region %@, but current active region is %@", _readPreferenceRegionPendingOnboarding2, regionCode);
        }

        goto LABEL_105;
      }

      if (Int64)
      {
        if (!v19)
        {
LABEL_105:

          goto LABEL_106;
        }

        if (bundleIdentifier && [bundleIdentifier length])
        {
          [(ENDaemon *)self appLaunchWithBundleID:bundleIdentifier activity:8 shouldEnterForeground:1 requiredRuntimeInSeconds:0];
          goto LABEL_105;
        }

        v34 = [MEMORY[0x277CCACA0] stringWithFormat:@"prefs:root=EXPOSURE_NOTIFICATION&path=KEY-RELEASED"];
        v38 = [MEMORY[0x277CBEBC8] URLWithString:v34];
        if (v38)
        {
          v39 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isSensitiveLoggingAllowed = [v39 isSensitiveLoggingAllowed];

          if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&_MergedGlobals, "[ENDaemon userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]", 30, "Launch Settings url %@", v34);
          }

          [defaultWorkspace openSensitiveURL:v38 withOptions:v59];
        }

        else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_281346508, "[ENDaemon userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]", 90, "Invalid key released view URL");
        }
      }

      else
      {
        v34 = objc_alloc_init(MEMORY[0x277CC1F08]);
        [v34 setFrontBoardOptions:v59];
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __88__ENDaemon_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_2;
        v64[3] = &unk_278FD1710;
        v64[4] = bundleIdentifier;
        [defaultWorkspace openApplicationWithBundleIdentifier:bundleIdentifier configuration:v34 completionHandler:v64];
      }

      goto LABEL_104;
    }

    if (dword_281346508 > 90 || dword_281346508 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_107;
    }

    goto LABEL_22;
  }

  if ([categoryIdentifier isEqualToString:@"com.apple.ExposureNotification.UserNotification.preArm"])
  {
    if (v19)
    {
      CFStringGetTypeID();
      _readPreferenceRegionPendingOnboarding2 = CFDictionaryGetTypedValue();
      if (!self->_activeEntity)
      {
        if (dword_281346508 > 90 || dword_281346508 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_107;
        }

LABEL_22:
        LogPrintF_safe(&dword_281346508, "[ENDaemon userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]", 90, "This is a stale notification. It was intended for region %@, but current EN is currently not onboarded with any region", _readPreferenceRegionPendingOnboarding2);
        goto LABEL_107;
      }

      v28 = CFDictionaryGetInt64();
      entity3 = [(ENActiveEntity *)self->_activeEntity entity];
      bundleIdentifier = [entity3 bundleIdentifier];

      if (!bundleIdentifier || ![bundleIdentifier length])
      {
        if (v28)
        {
          regionCode = [MEMORY[0x277CCACA0] stringWithFormat:@"prefs:root=EXPOSURE_NOTIFICATION&path=KEY-RELEASED"];
          v34 = [MEMORY[0x277CBEBC8] URLWithString:regionCode];
          if (!v34)
          {
            if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&dword_281346508, "[ENDaemon userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]", 90, "Invalid key released view URL");
            }

            goto LABEL_104;
          }

          v35 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isSensitiveLoggingAllowed2 = [v35 isSensitiveLoggingAllowed];

          if (isSensitiveLoggingAllowed2 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&_MergedGlobals, "[ENDaemon userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]", 30, "Launch Settings url %@", regionCode);
          }
        }

        else
        {
          regionCode = [MEMORY[0x277CCACA0] stringWithFormat:@"prefs:root=EXPOSURE_NOTIFICATION"];
          v34 = [MEMORY[0x277CBEBC8] URLWithString:regionCode];
          if (!v34)
          {
            if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&dword_281346508, "[ENDaemon userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]", 90, "Invalid en settings URL");
            }

            goto LABEL_104;
          }

          v41 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isSensitiveLoggingAllowed3 = [v41 isSensitiveLoggingAllowed];

          if (isSensitiveLoggingAllowed3 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&_MergedGlobals, "[ENDaemon userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]", 30, "Launch Settings url %@", v34);
          }
        }

        [defaultWorkspace openSensitiveURL:v34 withOptions:v59];
LABEL_104:

        goto LABEL_105;
      }

      [(ENDaemon *)self appLaunchWithBundleID:bundleIdentifier activity:8 shouldEnterForeground:1 requiredRuntimeInSeconds:0];
LABEL_106:

      goto LABEL_107;
    }
  }

  else if ([categoryIdentifier isEqualToString:@"com.apple.ExposureNotification.UserNotification.onboarding"])
  {
    if (v19)
    {
      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&_MergedGlobals, "[ENDaemon userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]", 30, "Onboarding notification tapped");
      }

      CFStringGetTypeID();
      _readPreferenceRegionPendingOnboarding2 = CFDictionaryGetTypedValue();
      if (_readPreferenceRegionPendingOnboarding2)
      {
        onboardingManager = [(ENDaemon *)self onboardingManager];
        [onboardingManager setPendingBuddyOnboarding:0];

        bundleIdentifier = [MEMORY[0x277CCACA0] stringWithFormat:@"prefs:root=EXPOSURE_NOTIFICATION&path=ONBOARDING/%@", _readPreferenceRegionPendingOnboarding2];
        regionCode = [MEMORY[0x277CBEBC8] URLWithString:bundleIdentifier];
        if (regionCode)
        {
          v44 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isSensitiveLoggingAllowed4 = [v44 isSensitiveLoggingAllowed];

          if (isSensitiveLoggingAllowed4 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&_MergedGlobals, "[ENDaemon userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]", 30, "Launch Settings url %@", bundleIdentifier);
          }

          [defaultWorkspace openSensitiveURL:regionCode withOptions:v59];
          CFPrefs_SetValue();
        }

        else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_281346508, "[ENDaemon userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]", 90, "Invalid region settings URL");
        }

        goto LABEL_105;
      }

      if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_281346508, "[ENDaemon userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]", 90, "Invalid region ID");
      }
    }

    else
    {
      _readPreferenceRegionPendingOnboarding = [(ENDaemon *)self _readPreferenceRegionPendingOnboarding];

      if (_readPreferenceRegionPendingOnboarding)
      {
        if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&_MergedGlobals, "[ENDaemon userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]", 30, "Turn off onboarding retry since user explicitly dismissed notification, also setting the region consent to deferred");
        }

        _readPreferenceRegionPendingOnboarding2 = [(ENDaemon *)self _readPreferenceRegionPendingOnboarding];
        if (_readPreferenceRegionPendingOnboarding2)
        {
          configurationStore = [(ENConfigurationManager *)self->_configurationManager configurationStore];
          bundleIdentifier = [configurationStore configurationForRegion:_readPreferenceRegionPendingOnboarding2];

          if (!bundleIdentifier)
          {
            if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&dword_281346508, "[ENDaemon userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]", 90, "Nil region configuration");
            }

            goto LABEL_106;
          }

          userConsent = [bundleIdentifier userConsent];
          v48 = [userConsent consent] == 2;

          if (!v48)
          {
            userConsent2 = [bundleIdentifier userConsent];
            [userConsent2 setConsent:3];

            configurationStore2 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
            v63 = 0;
            v51 = [configurationStore2 saveRegionConfiguration:bundleIdentifier error:&v63];
            regionCode = v63;

            if (v51)
            {
              activeEntity = [(ENDaemon *)self activeEntity];
              entity4 = [activeEntity entity];
              region2 = [entity4 region];
              v56 = [(__CFString *)_readPreferenceRegionPendingOnboarding2 isEqual:region2];

              if (v56)
              {
                if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF_safe(&_MergedGlobals, "[ENDaemon userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]", 50, "Active region deferred. Turn off EN");
                }

                [(ENDaemon *)self _turnOffEN];
              }

              [(ENDaemon *)self onboardingTriggerDeactivate];
            }

            else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&dword_281346508, "[ENDaemon userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]", 90, "Failed to save region config with error: %@", regionCode);
            }

            goto LABEL_105;
          }

          goto LABEL_106;
        }
      }
    }
  }

  else
  {
    if ([categoryIdentifier isEqualToString:@"com.apple.ExposureNotification.UserNotification.exposure"])
    {
      CFStringGetTypeID();
      _readPreferenceRegionPendingOnboarding2 = CFDictionaryGetTypedValue();
      v30 = +[ENLoggingPrefs sharedENLoggingPrefs];
      isSensitiveLoggingAllowed5 = [v30 isSensitiveLoggingAllowed];

      if (isSensitiveLoggingAllowed5 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        v32 = &stru_285D62BB0;
        if (_readPreferenceRegionPendingOnboarding2)
        {
          v32 = _readPreferenceRegionPendingOnboarding2;
        }

        v33 = "dismissed";
        if (v19)
        {
          v33 = "tapped";
        }

        LogPrintF_safe(&_MergedGlobals, "[ENDaemon userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]", 30, "Exposure notification %@:%s", v32, v33);
      }

      if (!_readPreferenceRegionPendingOnboarding2)
      {
        v55 = NSDictionaryGetNSNumber();
        bundleIdentifier = v55;
        if (v55)
        {
          -[ENDifferentialPrivacyManager reportUserExposureNotificationTapped:classificationIndex:](self->_differentialPrivacyManager, "reportUserExposureNotificationTapped:classificationIndex:", v19, [v55 unsignedCharValue]);
        }

        goto LABEL_106;
      }

      if (v19)
      {
        bundleIdentifier = [MEMORY[0x277CBEBC8] URLWithString:@"prefs:root=EXPOSURE_NOTIFICATION"];
        [defaultWorkspace openSensitiveURL:bundleIdentifier withOptions:v59];
        regionCode = [MEMORY[0x277CBEBC8] URLWithString:_readPreferenceRegionPendingOnboarding2];
        [defaultWorkspace openURL:regionCode withOptions:v59];
        goto LABEL_105;
      }

LABEL_107:

      goto LABEL_108;
    }

    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_281346508, "[ENDaemon userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]", 90, "Ignore notification category identifier %@", categoryIdentifier);
    }
  }

LABEL_108:

  v10[2](v10);
}

void __88__ENDaemon_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (_MergedGlobals <= 30)
  {
    v9 = v5;
    if (_MergedGlobals != -1 || (v8 = _LogCategory_Initialize(), v6 = v9, v8))
    {
      v7 = "no";
      if (a2)
      {
        v7 = "yes";
      }

      LogPrintF_safe(&_MergedGlobals, "[ENDaemon userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]_block_invoke_2", 30, "Opening 3rd party app %@ complete (result %s, error %@)", *(a1 + 32), v7, v6);
      v6 = v9;
    }
  }
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
  v5 = activateCopy;
  if (_MergedGlobals <= 40)
  {
    v6 = activateCopy;
    if (_MergedGlobals != -1 || (activateCopy = _LogCategory_Initialize(), v5 = v6, activateCopy))
    {
      [(ENDaemon *)activateCopy remoteAlertHandleDidActivate:v5, v4];
      v5 = v6;
    }
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  v7 = deactivateCopy;
  if (_MergedGlobals <= 40)
  {
    if (_MergedGlobals != -1 || (deactivateCopy = _LogCategory_Initialize(), deactivateCopy))
    {
      [(ENDaemon *)deactivateCopy remoteAlertHandleDidDeactivate:v5, v6];
    }
  }

  [(ENDaemon *)self _deferConsentForPendingRegion];
  [(ENDaemon *)self tearDownAlertHandle];
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v6 = [domain isEqualToString:*MEMORY[0x277D67168]];

  if (!v6)
  {
    if (_MergedGlobals > 90 || _MergedGlobals == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_14;
    }

LABEL_10:
    [ENDaemon remoteAlertHandle:errorCopy didInvalidateWithError:?];
    goto LABEL_14;
  }

  if (([errorCopy code] & 0xFFFFFFFFFFFFFFFELL) != 4)
  {
    if (_MergedGlobals > 90 || _MergedGlobals == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (_MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon remoteAlertHandle:errorCopy didInvalidateWithError:?];
  }

LABEL_14:
  [(ENDaemon *)self _deferConsentForPendingRegion];
  [(ENDaemon *)self tearDownAlertHandle];
}

- (void)_enApplicationDidInstall:(id)install
{
  installCopy = install;
  bundleIdentifier = [installCopy bundleIdentifier];
  if (bundleIdentifier)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _enApplicationDidInstall:bundleIdentifier];
    }

    bundleURL = [installCopy bundleURL];
    if (bundleURL)
    {
      v6 = [MEMORY[0x277CCA8D0] bundleWithURL:bundleURL];
      v7 = v6;
      if (v6 && ([v6 infoDictionary], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
      {
        infoDictionary = [v7 infoDictionary];
        [(ENDaemon *)self fetchServerConfigurationForAppBundleIdentifier:bundleIdentifier infoDictionary:infoDictionary];
      }

      else
      {
        [ENDaemon _enApplicationDidInstall:];
      }
    }

    else
    {
      [ENDaemon _enApplicationDidInstall:];
    }
  }

  else
  {
    [ENDaemon _enApplicationDidInstall:];
  }
}

- (void)applicationsDidInstall:(id)install
{
  installCopy = install;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__ENDaemon_applicationsDidInstall___block_invoke;
  v7[3] = &unk_278FD1120;
  v8 = installCopy;
  selfCopy = self;
  v6 = installCopy;
  dispatch_async(dispatchQueue, v7);
}

void __35__ENDaemon_applicationsDidInstall___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 appState];
        v9 = [v8 isPlaceholder];

        if ((v9 & 1) == 0)
        {
          v10 = [v7 entitlementValueForKey:@"com.apple.developer.exposure-notification" ofClass:objc_opt_class()];
          v11 = [v10 BOOLValueSafe];

          if (v11)
          {
            [*(a1 + 40) _enApplicationDidInstall:v7];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

- (void)_enApplicationDidUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  bundleIdentifier = [uninstallCopy bundleIdentifier];
  if (bundleIdentifier)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _enApplicationDidUninstall:bundleIdentifier];
    }

    entity = [(ENActiveEntity *)self->_activeEntity entity];
    bundleIdentifier2 = [entity bundleIdentifier];
    if ([bundleIdentifier2 length])
    {
      entity2 = [(ENActiveEntity *)self->_activeEntity entity];
      bundleIdentifier3 = [entity2 bundleIdentifier];
    }

    else
    {
      bundleIdentifier3 = 0;
    }

    if ([bundleIdentifier3 length])
    {
      if ([bundleIdentifier length])
      {
        v9 = [bundleIdentifier isEqualToString:bundleIdentifier3];
        if (v9)
        {
          if (_MergedGlobals <= 30)
          {
            if (_MergedGlobals != -1 || (v9 = _LogCategory_Initialize(), v9))
            {
              [(ENDaemon *)v9 _enApplicationDidUninstall:v10, v11];
            }
          }

          [(ENDaemon *)self updateExistingConsentForPhase1ActiveRegion:0];
          [(ENDaemon *)self _turnOffEN];
          [(ENDaemon *)self postENOffNotification];
        }
      }
    }
  }

  else
  {
    [ENDaemon _enApplicationDidUninstall:];
  }
}

- (void)applicationsDidUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__ENDaemon_applicationsDidUninstall___block_invoke;
  v7[3] = &unk_278FD1120;
  v8 = uninstallCopy;
  selfCopy = self;
  v6 = uninstallCopy;
  dispatch_async(dispatchQueue, v7);
}

void __37__ENDaemon_applicationsDidUninstall___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [v7 entitlementValueForKey:@"com.apple.developer.exposure-notification" ofClass:{objc_opt_class(), v10}];
        v9 = [v8 BOOLValueSafe];

        if (v9)
        {
          [*(a1 + 40) _enApplicationDidUninstall:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void __42__ENDaemon__bluetoothMonitorEnsureStarted__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained bluetoothPowerStateChanged];
}

- (void)_bluetoothMonitorEnsureStopped
{
  if (self->_btMonitorStarted)
  {
    selfCopy = self;
    if (_MergedGlobals <= 30)
    {
      if (_MergedGlobals != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(ENDaemon *)self _bluetoothMonitorEnsureStopped];
      }
    }

    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    [WeakRetained stopPowerMonitoring];

    selfCopy->_btMonitorStarted = 0;
  }
}

- (void)bluetoothPowerStateChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  isBluetoothPoweredOn = [WeakRetained isBluetoothPoweredOn];

  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [(ENDaemon *)isBluetoothPoweredOn bluetoothPowerStateChanged];
  }

  [(ENDaemon *)self _scheduleUpdate];
}

- (void)_bluetoothTracingEnsureStarted
{
  entity = [(ENActiveEntity *)self->_activeEntity entity];
  bundleIdentifier = [entity bundleIdentifier];

  v5 = self->_btTracingAppID;
  if (bundleIdentifier)
  {
    v6 = bundleIdentifier;
  }

  else
  {
    v6 = @"com.apple.ENDaemon";
  }

  v7 = v6;

  v8 = v7;
  v16 = v8;
  if (v5)
  {
    if (v8 == v5 || ([(NSString *)v8 isEqual:v5]& 1) != 0)
    {
      goto LABEL_24;
    }

    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&_MergedGlobals, "[ENDaemon _bluetoothTracingEnsureStarted]", 30, "Bluetooth tracing stop for restart: '%@' -> '%@'", v5, v16);
    }

    [(ENDaemon *)self _bluetoothTracingStop];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  entity2 = [(ENActiveEntity *)self->_activeEntity entity];
  region = [entity2 region];

  configurationStore = [(ENConfigurationManager *)self->_configurationManager configurationStore];
  v13 = [configurationStore serverConfigurationForRegion:region];

  if (v13)
  {
    [WeakRetained setRegionServerConfiguration:v13];
  }

  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [(ENDaemon *)v16 _bluetoothTracingEnsureStarted];
  }

  v14 = [WeakRetained startTracingWithAppBundleIdentifier:v16];
  if (v14)
  {
    if (dword_281346508 <= 90)
    {
      v15 = v14;
      if (dword_281346508 != -1 || _LogCategory_Initialize())
      {
        [(ENDaemon *)v15 _bluetoothTracingEnsureStarted];
      }
    }
  }

  else
  {
    objc_storeStrong(&self->_btTracingAppID, v6);
  }

  v5 = 0;
LABEL_24:
}

- (void)_bluetoothTracingStop
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  stopTracing = [WeakRetained stopTracing];

  if (stopTracing && dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    [(ENDaemon *)stopTracing _bluetoothTracingStop];
  }
}

- (void)_configurationManagerEnsureStarted
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2(&dword_281346508, "[ENDaemon _configurationManagerEnsureStarted]", a3, "EN is disabled for fetch");
  }
}

- (id)regionForBundleInfo:(id)info
{
  infoCopy = info;
  v4 = [infoCopy objectForKey:@"ENDeveloperRegion"];
  if (!v4)
  {
    v5 = *MEMORY[0x277CBED40];
    v6 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277CBED40]];

    v4 = [ENConfigurationManager staticRegionForBundleID:v6];
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&_MergedGlobals, "[ENDaemon regionForBundleInfo:]", 30, "Static map's bundle ID's region: %@ -> %@", v6, v4);
    }

    if (!v4)
    {
      goto LABEL_20;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 length])
  {
    v7 = [MEMORY[0x277CC5CA0] regionWithCode:v4];
  }

  else
  {
LABEL_20:
    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon regionForBundleInfo:];
    }

    v7 = 0;
  }

  return v7;
}

- (void)fetchServerConfigurationForAppBundleIdentifier:(id)identifier infoDictionary:(id)dictionary
{
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon fetchServerConfigurationForAppBundleIdentifier:identifierCopy infoDictionary:?];
  }

  v7 = [(ENDaemon *)self regionForBundleInfo:dictionaryCopy];
  if (v7)
  {
    [(ENDaemon *)self startServerConfigurationFetchForRegion:v7];
  }

  else
  {
    [ENDaemon fetchServerConfigurationForAppBundleIdentifier:infoDictionary:];
  }
}

- (void)startServerConfigurationFetchForRegion:(id)region
{
  regionCopy = region;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__ENDaemon_startServerConfigurationFetchForRegion___block_invoke;
  v6[3] = &unk_278FD1760;
  v6[4] = self;
  v7 = regionCopy;
  v5 = regionCopy;
  [(ENDaemon *)self fetchServerConfigurationForRegion:v5 completion:v6];
}

void __51__ENDaemon_startServerConfigurationFetchForRegion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [*(a1 + 32) configurationManager];
  v5 = [v4 configurationStore];
  v6 = [v5 configurationForRegion:*(a1 + 40)];

  if (v6)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __51__ENDaemon_startServerConfigurationFetchForRegion___block_invoke_cold_1();
    }

    [*(a1 + 32) _exposureNotificationRegionConfigurationChanged:v6];
  }

  else
  {
    __51__ENDaemon_startServerConfigurationFetchForRegion___block_invoke_cold_2(a1 + 40, v7);
  }
}

- (void)fetchServerConfigurationForRegion:(id)region completion:(id)completion
{
  regionCopy = region;
  completionCopy = completion;
  configurationStore = [(ENConfigurationManager *)self->_configurationManager configurationStore];
  v9 = [configurationStore serverConfigurationForRegion:regionCopy];

  if (v9)
  {
    v10 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed = [v10 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon fetchServerConfigurationForRegion:v9 completion:regionCopy];
    }

    completionCopy[2](completionCopy, v9, 0);
  }

  else
  {
    configurationManager = self->_configurationManager;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__ENDaemon_fetchServerConfigurationForRegion_completion___block_invoke;
    v13[3] = &unk_278FD17B0;
    v13[4] = self;
    v14 = regionCopy;
    v15 = completionCopy;
    [(ENConfigurationManager *)configurationManager fetchServerConfigurationsForRegion:v14 userInitiated:0 withCompletion:v13];
  }
}

void __57__ENDaemon_fetchServerConfigurationForRegion_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 224);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__ENDaemon_fetchServerConfigurationForRegion_completion___block_invoke_2;
  v9[3] = &unk_278FD1788;
  v10 = v4;
  v11 = v6;
  v12 = v5;
  v13 = *(a1 + 48);
  v8 = v4;
  dispatch_async(v7, v9);
}

void __57__ENDaemon_fetchServerConfigurationForRegion_completion___block_invoke_2(uint64_t a1)
{
  v9 = *(a1 + 32);
  v2 = [*(*(a1 + 40) + 264) configurationStore];
  v3 = (a1 + 48);
  v4 = [v2 serverConfigurationForRegion:*(a1 + 48)];

  if (v4)
  {
    v5 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v6 = [v5 isSensitiveLoggingAllowed];

    if (v6 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __57__ENDaemon_fetchServerConfigurationForRegion_completion___block_invoke_2_cold_1((a1 + 48), v4);
    }
  }

  else
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      if (dword_281346508 > 90)
      {
        goto LABEL_16;
      }

      if (dword_281346508 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 32);
      }

      LogPrintF_safe(&dword_281346508, "[ENDaemon fetchServerConfigurationForRegion:completion:]_block_invoke_2", 90, "Error locating configuration for %@ with error - %@", *v3, v7);
      goto LABEL_16;
    }

    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      __57__ENDaemon_fetchServerConfigurationForRegion_completion___block_invoke_2_cold_2();
    }

    v8 = NSErrorF(@"ENConfigurationManagerErrorDomain", 5, "Configuration not found for %@", *v3);

    v9 = v8;
  }

LABEL_16:
  (*(*(a1 + 56) + 16))();
}

- (void)configurationManager:(id)manager exposureNotificationRegionConfigurationChanged:(id)changed
{
  changedCopy = changed;
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__ENDaemon_configurationManager_exposureNotificationRegionConfigurationChanged___block_invoke;
  v8[3] = &unk_278FD1120;
  v8[4] = self;
  v9 = changedCopy;
  v7 = changedCopy;
  dispatch_async(dispatchQueue, v8);
}

- (void)configurationManager:(id)manager errorDetected:(unsigned int)detected
{
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__ENDaemon_configurationManager_errorDetected___block_invoke;
  v5[3] = &unk_278FD17D8;
  v5[4] = self;
  detectedCopy = detected;
  dispatch_async(dispatchQueue, v5);
}

void __47__ENDaemon_configurationManager_errorDetected___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 216));
  [WeakRetained sendErrorMetricWithType:*(a1 + 40)];
}

- (void)_exposureNotificationRegionConfigurationChanged:(id)changed
{
  changedCopy = changed;
  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __60__ENDaemon__exposureNotificationRegionConfigurationChanged___block_invoke;
  v93[3] = &unk_278FD0F90;
  v93[4] = self;
  v6 = MEMORY[0x24C214430](v93);
  activeEntity = [(ENDaemon *)self activeEntity];
  configurationManager = [(ENDaemon *)self configurationManager];
  configurationStore = [configurationManager configurationStore];

  region = [changedCopy region];
  v10 = [configurationStore serverConfigurationForRegion:region];

  v89 = v10;
  enEnabled = [v10 enEnabled];
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    v12 = NSStringFromSelector(a2);
    LogPrintF_safe(&_MergedGlobals, "[ENDaemon _exposureNotificationRegionConfigurationChanged:]", 30, "%@, ActiveEntity, %@, enEnabled: %i, configuration, %@", v12, activeEntity, enEnabled, changedCopy);
  }

  if (enEnabled)
  {
    region2 = [changedCopy region];
    [(ENDaemon *)self _updatePhase1ConfigurationIfNeeded:changedCopy];
    if ([changedCopy enVersion] != 2)
    {
LABEL_108:
      v24 = region2;
      goto LABEL_109;
    }

    userConsent = [changedCopy userConsent];
    consent = [userConsent consent];

    userConsent2 = [changedCopy userConsent];
    differentialPrivacyConsent = [userConsent2 differentialPrivacyConsent];

    v17 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed = [v17 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      if (consent > 4)
      {
        v19 = "?";
      }

      else
      {
        v19 = off_278FD2090[consent];
      }

      if (differentialPrivacyConsent > 4)
      {
        v25 = "?";
      }

      else
      {
        v25 = off_278FD2090[differentialPrivacyConsent];
      }

      LogPrintF_safe(&_MergedGlobals, "[ENDaemon _exposureNotificationRegionConfigurationChanged:]", 30, "Region consent : %s, analytics consent: %s", v19, v25);
    }

    if (consent == 2)
    {
      v26 = MEMORY[0x277CBEAA0];
      [changedCopy creationDateTimeInterval];
      v85 = [v26 dateWithTimeIntervalSince1970:?];
      CFPrefs_GetDouble();
      if (v27 <= 0.0)
      {
        v28 = 2592000.0;
      }

      else
      {
        v28 = v27;
      }

      userConsent3 = [changedCopy userConsent];
      differentialPrivacyConsent2 = [userConsent3 differentialPrivacyConsent];

      if ([v89 telemetryAuthorization])
      {
        entity = [activeEntity entity];
        region3 = [entity region];
        v33 = [region3 isEqual:region2];

        if ((v33 & 1) == 0)
        {
          goto LABEL_107;
        }

        date = [MEMORY[0x277CBEAA0] date];
        [date timeIntervalSinceDate:v85];
        v36 = v35;

        if (v36 <= v28 || (differentialPrivacyConsent2 & 0xFFFFFFFFFFFFFFFBLL) != 0)
        {
          goto LABEL_107;
        }

        v37 = +[ENLoggingPrefs sharedENLoggingPrefs];
        isSensitiveLoggingAllowed2 = [v37 isSensitiveLoggingAllowed];

        if (isSensitiveLoggingAllowed2 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&_MergedGlobals, "[ENDaemon _exposureNotificationRegionConfigurationChanged:]", 30, "Attempting to post Analytics Consent");
        }

        userConsent4 = [changedCopy userConsent];
        [userConsent4 setDifferentialPrivacyConsent:3];

        if ([configurationStore saveRegionConfiguration:changedCopy error:0])
        {
          [(ENDaemon *)self postAnalyticsOptInNotificationForRegion:region2];
        }
      }

      else
      {
        userConsent5 = [changedCopy userConsent];
        [userConsent5 setDifferentialPrivacyConsent:4];

        v92 = 0;
        v50 = [configurationStore saveRegionConfiguration:changedCopy error:&v92];
        v51 = v92;
        if ((v50 & 1) == 0 && dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_281346508, "[ENDaemon _exposureNotificationRegionConfigurationChanged:]", 90, "Unable to restrict analytics consent for region update with error - %@", v51);
        }
      }

      if (!activeEntity)
      {
LABEL_107:

        goto LABEL_108;
      }

      entity2 = [activeEntity entity];
      region4 = [entity2 region];
      v58 = [configurationStore agencyConfigurationForRegion:region4];

      agencyColor = [v58 agencyColor];
      agencyHeaderStyle = [v58 agencyHeaderStyle];
      agencyHeaderTextColor = [v58 agencyHeaderTextColor];
      agencyDisplayName = [v58 agencyDisplayName];
      agencyImageURL = [v58 agencyImageURL];
      region6 = v58;
      localizedConfiguration = [v58 localizedConfiguration];
      regionName = [localizedConfiguration regionName];
      v81 = agencyColor;

      localizedConfiguration2 = [v58 localizedConfiguration];
      agencyTurndownMessage = [localizedConfiguration2 agencyTurndownMessage];

      v63 = objc_alloc(MEMORY[0x277CC5C18]);
      entity3 = [activeEntity entity];
      bundleIdentifier = [entity3 bundleIdentifier];
      v66 = [MEMORY[0x277CCABA8] numberWithUnsignedInteger:agencyHeaderStyle];
      entity4 = [activeEntity entity];
      region5 = [entity4 region];
      v69 = [v63 initWithBundleID:bundleIdentifier agencyColor:v81 agencyHeaderStyle:v66 agencyHeaderTextColor:agencyHeaderTextColor localizedAgencyName:agencyDisplayName localizedAgencyImageURL:agencyImageURL localizedAgencyTurndownMessage:agencyTurndownMessage localizedRegionName:regionName region:region5];

      entity5 = [activeEntity entity];
      v71 = v69;
      v72 = entity5;
      v73 = v72;
      if (v71 == v72)
      {
      }

      else
      {
        if ((v71 != 0) != (v72 == 0))
        {
          v74 = [v71 isEqual:v72];

          if (v74)
          {
            goto LABEL_67;
          }
        }

        else
        {
        }

        [(ENActiveEntity *)self->_activeEntity setEntity:v71];
        [(ENDaemon *)self _writePreferenceActiveEntity:self->_activeEntity];
      }

LABEL_67:

      appBundleID = v81;
LABEL_68:

      goto LABEL_104;
    }

    regionMonitor = self->_regionMonitor;
    v91 = 0;
    v40 = [(ENRegionMonitor *)regionMonitor getCurrentRegionVisitWithError:&v91];
    v85 = v91;
    region6 = [v40 region];

    if (!region6)
    {
      if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_281346508, "[ENDaemon _exposureNotificationRegionConfigurationChanged:]", 90, "Invalid region being onboarded: %@", v85);
      }

      goto LABEL_106;
    }

    if (([region6 isEqual:region2] & 1) == 0)
    {
      if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_281346508, "[ENDaemon _exposureNotificationRegionConfigurationChanged:]", 90, "Updated configuration's region (%@) is not current region (%@) for onboarding", region2, region6);
      }

      goto LABEL_106;
    }

    v41 = [configurationStore serverConfigurationForRegion:region2];
    appBundleID = [v41 appBundleID];

    if (appBundleID && [appBundleID length])
    {
      agencyHeaderTextColor = [MEMORY[0x277CC1E68] applicationProxyForIdentifier:appBundleID placeholder:0];
      appState = [agencyHeaderTextColor appState];
      if ([appState isInstalled])
      {

        goto LABEL_38;
      }

      appState2 = [agencyHeaderTextColor appState];
      isPlaceholder = [appState2 isPlaceholder];

      if (isPlaceholder)
      {
LABEL_38:
        if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_281346508, "[ENDaemon _exposureNotificationRegionConfigurationChanged:]", 90, "Cannot onboard ENX region since %@ is installed", appBundleID);
        }

        goto LABEL_104;
      }

      if ([(ENActiveEntity *)self->_activeEntity activeStatus]== 2)
      {
        entity6 = [(ENActiveEntity *)self->_activeEntity entity];
        region7 = [entity6 region];
        v54 = [region6 isEqual:region7];

        if (v54)
        {
          if (dword_281346508 > 90 || dword_281346508 == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_104;
          }

          agencyDisplayName = [(ENActiveEntity *)self->_activeEntity entity];
          agencyImageURL = [agencyDisplayName bundleIdentifier];
          LogPrintF_safe(&dword_281346508, "[ENDaemon _exposureNotificationRegionConfigurationChanged:]", 90, "%@ active for Phase 1 App: %@", region2, agencyImageURL);
          goto LABEL_68;
        }
      }
    }

    else if ([(ENActiveEntity *)self->_activeEntity activeStatus]>= 1 && [(ENActiveEntity *)self->_activeEntity activeStatus]<= 2)
    {
      entity7 = [(ENActiveEntity *)self->_activeEntity entity];
      region8 = [entity7 region];
      v48 = [region8 isEqual:region6];

      if (v48)
      {
        [(ENDaemon *)self updateExistingConsentForPhase1ActiveRegion:0];
        CFPrefs_RemoveValue();
        self->_availabilityAlertDisabled = 0;
        if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&_MergedGlobals, "[ENDaemon _exposureNotificationRegionConfigurationChanged:]", 30, "Region removed app, alert user to onboard ENX");
        }

        consent = 0;
      }
    }

    if (self->_availabilityAlertDisabled)
    {
      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&_MergedGlobals, "[ENDaemon _exposureNotificationRegionConfigurationChanged:]", 30, "Availability alert is not enabled. Ignore onboarding");
      }

      goto LABEL_105;
    }

    agencyHeaderTextColor = [(ENDaemon *)self _readPreferenceRegionPendingOnboarding];
    v75 = [agencyHeaderTextColor isEqual:region2];
    if (consent == 1)
    {
      v76 = 1;
    }

    else
    {
      v76 = v75;
    }

    if (v76 == 1)
    {
      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        if (consent > 4)
        {
          v77 = "?";
        }

        else
        {
          v77 = off_278FD20B8[consent];
        }

        LogPrintF_safe(&_MergedGlobals, "[ENDaemon _exposureNotificationRegionConfigurationChanged:]", 30, "Region %@ is either already pending onboarding, or its consent is declined, checking in the config if we want to reset its AA cycle, consent: %s", region2, v77);
      }

      v78 = +[ENLoggingPrefs sharedENLoggingPrefs];
      isSensitiveLoggingAllowed3 = [v78 isSensitiveLoggingAllowed];

      if (isSensitiveLoggingAllowed3 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&_MergedGlobals, "[ENDaemon _exposureNotificationRegionConfigurationChanged:]", 30, "Update region pending onboarding : %@", region6);
      }

      [(ENDaemon *)self _writePreferenceRegionPendingOnboarding:region6];
      [(ENDaemon *)self onboardingTriggerRetry:0];
    }

    else if (consent == 3)
    {
      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&_MergedGlobals, "[ENDaemon _exposureNotificationRegionConfigurationChanged:]", 30, "Region %@ is not already pending, but its consent is deferred, updating the pending region to this region so that future Availability Alert is for the correct region", region2);
      }

      [(ENDaemon *)self _writePreferenceRegionPendingOnboarding:region6];
    }

    else if (!consent)
    {
      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&_MergedGlobals, "[ENDaemon _exposureNotificationRegionConfigurationChanged:]", 30, "Region %@ consent is unknown and it's not already pending onboarding, we should freshly start an AA cycle for it with ENBuddy on the first day", region2);
      }

      [(ENDaemon *)self startAvailabilityAlertCycleWithBuddy:1];
    }

LABEL_104:

LABEL_105:
LABEL_106:

    goto LABEL_107;
  }

  v20 = [ENActiveEntity alloc];
  v21 = objc_alloc(MEMORY[0x277CC5C18]);
  region9 = [changedCopy region];
  v23 = [v21 initWithBundleID:0 region:region9];
  v24 = [(ENActiveEntity *)v20 initWithEntity:v23 activeStatus:1];

  [(ENDaemon *)self _writePreferenceActiveEntity:v24];
LABEL_109:

  v6[2](v6);
}

- (void)_updatePhase1ConfigurationIfNeeded:(id)needed
{
  p_activeEntity = &self->_activeEntity;
  v6 = self->_activeEntity;
  neededCopy = needed;
  configurationManager = [(ENDaemon *)self configurationManager];
  configurationStore = [configurationManager configurationStore];

  region = [neededCopy region];
  v11 = [configurationStore serverConfigurationForRegion:region];
  appBundleID = [v11 appBundleID];

  enVersion = [neededCopy enVersion];
  if ((enVersion == 1 || -[ENActiveEntity activeStatus](v6, "activeStatus") == 2) && [appBundleID length])
  {
    entity = [(ENActiveEntity *)*p_activeEntity entity];
    bundleIdentifier = [entity bundleIdentifier];

    if (![bundleIdentifier length] || !objc_msgSend(bundleIdentifier, "isEqualToString:", appBundleID))
    {
      goto LABEL_24;
    }

    entity2 = [(ENActiveEntity *)*p_activeEntity entity];
    region2 = [entity2 region];
    if ([region2 isEqual:region])
    {
      activeStatus = [(ENActiveEntity *)*p_activeEntity activeStatus];

      if (activeStatus != 1)
      {
        goto LABEL_24;
      }
    }

    else
    {
    }

    v19 = [MEMORY[0x277CC1E68] applicationProxyForIdentifier:appBundleID placeholder:0];
    if (!v19)
    {
      [(ENDaemon *)0 _updatePhase1ConfigurationIfNeeded:v20, v21];
      goto LABEL_24;
    }

    v22 = v19;
    bundleIdentifier2 = [v19 bundleIdentifier];
    if (bundleIdentifier2)
    {
      if ([(ENDaemon *)self tccAccessForBundleID:bundleIdentifier2]== 1)
      {
        v26 = [(ENDaemon *)self _getInfoDictFromAppProxy:v22];
        if (!v26)
        {
          [(ENDaemon *)bundleIdentifier2 _updatePhase1ConfigurationIfNeeded:v22];
          goto LABEL_24;
        }

        v27 = v26;
        CFStringGetTypeID();
        CFDictionaryGetTypedValue();
        v33 = bundleIdentifier2;
        if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          [(ENDaemon *)p_activeEntity _updatePhase1ConfigurationIfNeeded:bundleIdentifier, region];
        }

        v28 = +[ENLoggingPrefs sharedENLoggingPrefs];
        isSensitiveLoggingAllowed = [v28 isSensitiveLoggingAllowed];

        if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&_MergedGlobals, "[ENDaemon _updatePhase1ConfigurationIfNeeded:]", 30, "Set active region for %@ to %@", bundleIdentifier, region, v33);
        }

        v30 = [ENActiveEntity alloc];
        v31 = [objc_alloc(MEMORY[0x277CC5C18]) initWithBundleID:appBundleID region:region];
        v32 = [(ENActiveEntity *)v30 initWithEntity:v31 activeStatus:2];

        [(ENDaemon *)self _writePreferenceActiveEntity:v32];
        goto LABEL_23;
      }

      [ENDaemon _updatePhase1ConfigurationIfNeeded:];
    }

    else
    {
      [(ENDaemon *)0 _updatePhase1ConfigurationIfNeeded:v23, v24];
    }

LABEL_23:
LABEL_24:
  }
}

- (int64_t)tccAccessForBundleID:(id)d
{
  v3 = TCCAccessCopyInformationForBundleId();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Count = CFArrayGetCount(v3);
  if (Count < 1)
  {
    goto LABEL_12;
  }

  v6 = Count;
  v7 = 0;
  v8 = MEMORY[0x277D6C0F0];
  v9 = MEMORY[0x277D6C150];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
    Value = CFDictionaryGetValue(ValueAtIndex, *v8);
    if (CFEqual(Value, *v9))
    {
      break;
    }

    if (v6 == ++v7)
    {
      goto LABEL_12;
    }
  }

  v13 = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x277D6C0D8]);
  if (v13)
  {
    if (CFBooleanGetValue(v13))
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }
  }

  else
  {
LABEL_12:
    v12 = 0;
  }

  CFRelease(v4);
  return v12;
}

- (void)configurationManager:(id)manager exposureNotificationRegionConfigurationRemovedForRegion:(id)region
{
  regionCopy = region;
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __89__ENDaemon_configurationManager_exposureNotificationRegionConfigurationRemovedForRegion___block_invoke;
  v8[3] = &unk_278FD1120;
  v8[4] = self;
  v9 = regionCopy;
  v7 = regionCopy;
  dispatch_async(dispatchQueue, v8);
}

- (void)_exposureNotificationRegionConfigurationRemoved:(id)removed
{
  removedCopy = removed;
  activeEntity = [(ENDaemon *)self activeEntity];
  if (activeEntity)
  {
    configurationManager = [(ENDaemon *)self configurationManager];
    configurationStore = [configurationManager configurationStore];

    overallStatus = self->_overallStatus;
    entity = [activeEntity entity];
    region = [entity region];
    v11 = [region isEqual:removedCopy];

    v12 = [configurationStore configurationForRegion:removedCopy];
    v13 = v12;
    v15 = overallStatus != 4 && v12 == 0;
    v38 = v15;
    entity2 = [activeEntity entity];
    bundleIdentifier = [entity2 bundleIdentifier];
    v18 = [bundleIdentifier length];

    if (v18)
    {
      v37 = a2;
      v19 = v11;
      v20 = configurationStore;
      entity3 = [activeEntity entity];
      bundleIdentifier2 = [entity3 bundleIdentifier];

      v23 = [MEMORY[0x277CC1E68] applicationProxyForIdentifier:bundleIdentifier2 placeholder:0];
      v24 = [v23 entitlementValueForKey:@"com.apple.developer.exposure-notification-test" ofClass:objc_opt_class()];
      bOOLValueSafe = [v24 BOOLValueSafe];

      v26 = overallStatus == 4;
      if (v26 && v13)
      {
        userConsent = [v13 userConsent];
        v26 = [userConsent consent] == 2;
      }

      configurationStore = v20;
      v11 = v19;
      a2 = v37;
    }

    else
    {
      if (!v13)
      {
        bOOLValueSafe = 0;
        v26 = v11;
        goto LABEL_17;
      }

      bundleIdentifier2 = [v13 userConsent];
      bOOLValueSafe = 0;
      v26 = ([bundleIdentifier2 consent] == 2) & v11;
    }

LABEL_17:
    v28 = v38 & v11;
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      v29 = NSStringFromSelector(a2);
      v30 = v29;
      v31 = self->_overallStatus;
      if (v31 > 6)
      {
        v32 = "?";
      }

      else
      {
        v32 = off_278FD20E0[v31];
      }

      v33 = "no";
      if (v26)
      {
        v34 = "yes";
      }

      else
      {
        v34 = "no";
      }

      if (v28)
      {
        v35 = "yes";
      }

      else
      {
        v35 = "no";
      }

      if (bOOLValueSafe)
      {
        v33 = "yes";
      }

      LogPrintF_safe(&_MergedGlobals, "[ENDaemon _exposureNotificationRegionConfigurationRemoved:]", 30, "%@, ActiveEntity, %@, overallStatus: %s, configuration, %@, region, %@,\t\t\t\t\tshouldResetEntity: %s, regionRemovedFromCloud: %s, isBundleTestEntitled: %s", v29, self->_activeEntity, v32, v13, removedCopy, v34, v35, v33);

      if (v26)
      {
        goto LABEL_23;
      }
    }

    else if (v26)
    {
LABEL_23:
      [(ENDaemon *)self updateExistingConsentForPhase1ActiveRegion:0];
      [(ENDaemon *)self _turnOffEN];
LABEL_24:
      [(ENDaemon *)self postENOffNotification];
LABEL_25:

      goto LABEL_26;
    }

    if (bOOLValueSafe & 1 | ((v28 & 1) == 0))
    {
      goto LABEL_25;
    }

    if ((v11 ^ 1))
    {
      goto LABEL_25;
    }

    CFPrefs_RemoveValue();
    activeStatus = [activeEntity activeStatus];
    [activeEntity setActiveStatus:1];
    [(ENDaemon *)self _writePreferenceActiveEntity:activeEntity];
    [(ENDaemon *)self prefsChanged];
    if (activeStatus < 2)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  [ENDaemon _exposureNotificationRegionConfigurationRemoved:];
LABEL_26:
}

- (void)configurationManager:(id)manager didResolveCurrentRegion:(BOOL)region
{
  regionCopy = region;
  managerCopy = manager;
  if (regionCopy)
  {
    v9 = managerCopy;
    if (_MergedGlobals <= 30)
    {
      if (_MergedGlobals != -1 || (managerCopy = _LogCategory_Initialize(), managerCopy))
      {
        [(ENDaemon *)managerCopy configurationManager:v7 didResolveCurrentRegion:v8];
      }
    }

    [(ENDaemon *)self onboardingTriggerRetry:0];
    managerCopy = v9;
  }
}

- (id)getExposureDatabaseAndReturnError:(id *)error
{
  exposureDatabase = self->_exposureDatabase;
  if (!exposureDatabase)
  {
    CFStringGetTypeID();
    v6 = CFPrefs_CopyTypedValue();
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = ENDataVaultPath();
      v8 = [v9 stringByAppendingPathComponent:@"Exposure"];
    }

    v10 = [ENExposureDatabase alloc];
    v11 = [MEMORY[0x277CBEBC8] fileURLWithPath:v8];
    v12 = [(ENExposureDatabase *)v10 initWithDirectoryURL:v11];
    v13 = self->_exposureDatabase;
    self->_exposureDatabase = v12;

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __46__ENDaemon_getExposureDatabaseAndReturnError___block_invoke;
    v20[3] = &unk_278FD1800;
    v20[4] = self;
    [(ENExposureDatabase *)self->_exposureDatabase setErrorMetricReporter:v20];

    exposureDatabase = self->_exposureDatabase;
  }

  if ([(ENExposureDatabase *)exposureDatabase isOpen])
  {
    goto LABEL_9;
  }

  v14 = self->_exposureDatabase;
  v19 = 0;
  v15 = [(ENExposureDatabase *)v14 openWithError:&v19];
  v16 = v19;
  if (v15)
  {

LABEL_9:
    v17 = self->_exposureDatabase;
    goto LABEL_10;
  }

  [(ENDaemon *)error getExposureDatabaseAndReturnError:v16];
  v17 = 0;
LABEL_10:

  return v17;
}

void __46__ENDaemon_getExposureDatabaseAndReturnError___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 216));
  [WeakRetained sendErrorMetricWithType:a2];
}

void __45__ENDaemon__schedulePeriodicPersistencePurge__block_invoke(uint64_t a1, void *a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ENDaemon__schedulePeriodicPersistencePurge__block_invoke_2;
  block[3] = &unk_278FD0F90;
  v2 = *(a1 + 32);
  block[4] = *(a1 + 40);
  v3 = a2;
  dispatch_sync(v2, block);
  v3[2](v3, 1);
}

- (void)_differentialPrivacyEnsureStarted
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2(&dword_281346508, "[ENDaemon _differentialPrivacyEnsureStarted]", a3, "### _differentialPrivacyEnsureStarted with no active region");
  }
}

- (unsigned)_getLatestExposureForDifferentialPrivacy
{
  v20 = 0;
  v2 = [(ENDaemon *)self getExposureDatabaseAndReturnError:&v20];
  v3 = v20;
  v4 = v3;
  if (v2)
  {
    v19 = 0;
    v18 = v3;
    v5 = [v2 getValue:&v19 forKey:@"LastExposureNotification" ofClass:objc_opt_class() error:&v18];
    v6 = v19;
    v7 = v18;

    if (v5)
    {
      if (v6)
      {
        classification = [v6 classification];
        index = [classification index];

        v10 = +[ENLoggingPrefs sharedENLoggingPrefs];
        isSensitiveLoggingAllowed = [v10 isSensitiveLoggingAllowed];

        if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          [(ENDaemon *)index _getLatestExposureForDifferentialPrivacy];
        }

        v12 = index + 1;
      }

      else
      {
        v16 = +[ENLoggingPrefs sharedENLoggingPrefs];
        isSensitiveLoggingAllowed2 = [v16 isSensitiveLoggingAllowed];

        if (isSensitiveLoggingAllowed2 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          [ENDaemon _getLatestExposureForDifferentialPrivacy];
        }

        v6 = 0;
        v12 = 1;
      }

      goto LABEL_18;
    }

    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      [(ENDaemon *)v7 _getLatestExposureForDifferentialPrivacy];
    }
  }

  else
  {
    v6 = 0;
    v7 = v3;
  }

  v13 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed3 = [v13 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed3 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon _getLatestExposureForDifferentialPrivacy];
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (id)_getDiagnosedVaccineStatusForDifferentialPrivacyWithUserVaccinationStatus:(id)status
{
  bOOLValue = [status BOOLValue];
  v23 = 0;
  v6 = [(ENDaemon *)self getExposureDatabaseAndReturnError:&v23];
  v7 = v23;
  v8 = v7;
  if (!v6)
  {
    v16 = 0;
    v11 = v7;
    goto LABEL_12;
  }

  v22 = 0;
  v21 = v7;
  v9 = [v6 getValue:&v22 forKey:@"LastExposureNotification" ofClass:objc_opt_class() error:&v21];
  v10 = v22;
  v11 = v21;

  if ((v9 & 1) == 0 && dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon _getDiagnosedVaccineStatusForDifferentialPrivacyWithUserVaccinationStatus:v11];
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_10:
    v16 = 0;
    goto LABEL_11;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_7:
  classification = [v10 classification];
  date = [classification date];
  v14 = ENDefaultExpirationDate();

  date2 = [MEMORY[0x277CBEAA0] date];
  v16 = [date2 compare:v14] == -1;

LABEL_11:
LABEL_12:
  v17 = malloc_type_calloc(0xFuLL, 1uLL, 0x100004077774924uLL);
  if (v17)
  {
    *v17 = 1;
    if (status)
    {
      if (bOOLValue)
      {
        v17[1] = 1;
        if (v16)
        {
          v17[6] = 1;
          v18 = 7;
        }

        else
        {
          v17[3] = 1;
          v18 = 4;
        }
      }

      else
      {
        v17[2] = 1;
        if (v16)
        {
          v17[6] = 1;
          v18 = 8;
        }

        else
        {
          v17[3] = 1;
          v18 = 5;
        }
      }
    }

    else
    {
      v18 = 3;
      if (v16)
      {
        v18 = 6;
      }
    }

    v17[v18] = 1;
    v19 = [MEMORY[0x277CBEA98] dataWithBytesNoCopy:? length:?];
  }

  else
  {
    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _getDiagnosedVaccineStatusForDifferentialPrivacyWithUserVaccinationStatus:];
    }

    v19 = 0;
  }

  return v19;
}

- (unsigned)stateMetricVersion
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = self->_activeEntity;
  prefEnabled = self->_prefEnabled;
  prefServerForceDisable = self->_prefServerForceDisable;
  if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    v6 = "no";
    if (prefEnabled)
    {
      v7 = "yes";
    }

    else
    {
      v7 = "no";
    }

    if (prefServerForceDisable)
    {
      v6 = "yes";
    }

    LogPrintF_safe(&_MergedGlobals, "[ENDaemon stateMetricVersion]", 50, "stateMetric: activeEntity '%@', enabledPref %s, serverForceDisable %s", v3, v7, v6);
  }

  if (!prefServerForceDisable)
  {
LABEL_28:
    if (prefEnabled && !prefServerForceDisable && v3)
    {
      activeStatus = [(ENActiveEntity *)v3 activeStatus];
      if (activeStatus == 3)
      {
        v15 = 4;
        goto LABEL_76;
      }

      if (activeStatus == 2)
      {
        entity = [(ENActiveEntity *)v3 entity];
        bundleIdentifier = [entity bundleIdentifier];

        if (bundleIdentifier)
        {
          v19 = [MEMORY[0x277CC1E68] applicationProxyForIdentifier:bundleIdentifier placeholder:0];
          v20 = v19;
          if (v19)
          {
            bundleURL = [v19 bundleURL];
            if (bundleURL)
            {
              v22 = [MEMORY[0x277CCA8D0] bundleWithURL:bundleURL];
              v23 = v22;
              if (v22)
              {
                infoDictionary = [v22 infoDictionary];
                if (infoDictionary)
                {
                  v53 = 0;
                  Int64Ranged = CFDictionaryGetInt64Ranged();
                  if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF_safe(&_MergedGlobals, "[ENDaemon stateMetricVersion]", 50, "stateMetric: apiVersion %d err %d", Int64Ranged, v53);
                  }

                  if (Int64Ranged < 2)
                  {
                    v15 = 2;
                  }

                  else
                  {
                    v15 = 3;
                  }
                }

                else
                {
                  [(ENDaemon *)&v53 stateMetricVersion];
                  v15 = v53;
                }
              }

              else
              {
                [(ENDaemon *)&v53 stateMetricVersion];
                v15 = v53;
              }
            }

            else
            {
              [(ENDaemon *)&v53 stateMetricVersion];
              v15 = v53;
            }
          }

          else
          {
            [(ENDaemon *)&v53 stateMetricVersion];
            v15 = v53;
          }
        }

        else
        {
          [(ENDaemon *)&v53 stateMetricVersion];
          v15 = v53;
        }

        goto LABEL_76;
      }

LABEL_66:
      v15 = 1;
      goto LABEL_76;
    }

    v26 = [(ENRegionMonitor *)self->_regionMonitor getCurrentRegionVisitWithError:0];
    region = [v26 region];

    if (region)
    {
      configurationStore = [(ENConfigurationManager *)self->_configurationManager configurationStore];
      v29 = [configurationStore configurationForRegion:region];

      userConsent = [v29 userConsent];
      consent = [userConsent consent];

      if (consent)
      {
        userConsent2 = [v29 userConsent];

        if (userConsent2)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }
    }

LABEL_48:
    v33 = objc_autoreleasePoolPush();
    configurationStore2 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
    allRegionConfigurations = [configurationStore2 allRegionConfigurations];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v36 = allRegionConfigurations;
    userConsent2 = [v36 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (userConsent2)
    {
      v37 = *v46;
      while (2)
      {
        for (i = 0; i != userConsent2; i = i + 1)
        {
          if (*v46 != v37)
          {
            objc_enumerationMutation(v36);
          }

          v39 = *(*(&v45 + 1) + 8 * i);
          userConsent3 = [v39 userConsent];
          consent2 = [userConsent3 consent];

          if (consent2)
          {
            userConsent2 = [v39 userConsent];
            goto LABEL_58;
          }
        }

        userConsent2 = [v36 countByEnumeratingWithState:&v45 objects:v54 count:16];
        if (userConsent2)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:

    objc_autoreleasePoolPop(v33);
    if (!userConsent2)
    {
      goto LABEL_66;
    }

LABEL_59:
    consent3 = [userConsent2 consent];
    if (consent3 == 3)
    {
      v43 = 7;
    }

    else
    {
      v43 = 1;
    }

    if (consent3 == 1)
    {
      v15 = 8;
    }

    else
    {
      v15 = v43;
    }

    goto LABEL_76;
  }

  configurationStore3 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
  allRegionServerConfigurations = [configurationStore3 allRegionServerConfigurations];

  if (allRegionServerConfigurations)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v10 = allRegionServerConfigurations;
    v11 = [v10 countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v50;
      while (2)
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v50 != v13)
          {
            objc_enumerationMutation(v10);
          }

          if (([*(*(&v49 + 1) + 8 * j) enEnabled] & 1) == 0)
          {
            if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              [ENDaemon stateMetricVersion];
            }

            goto LABEL_28;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v49 objects:v55 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon stateMetricVersion];
    }

    v15 = 6;
  }

  else
  {
    [(ENDaemon *)&v53 stateMetricVersion];
    v15 = v53;
  }

LABEL_76:

  return v15;
}

- (void)_exposureManagersEnsureStarted
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_281346508, "[ENDaemon _exposureManagersEnsureStarted]", 90, "Nil configuration store, download manager, or exposure database", v0, v1);
  }
}

void __42__ENDaemon__exposureManagersEnsureStarted__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 216));
  [WeakRetained sendErrorMetricWithType:a2];
}

- (void)exposureDetectionManager:(id)manager errorDetected:(unsigned int)detected
{
  v4 = *&detected;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sendErrorMetricWithType:v4];
}

- (void)exposureDetectionManager:(id)manager finishedSessionWithResult:(id)result
{
  resultCopy = result;
  differentialPrivacyManager = self->_differentialPrivacyManager;
  summary = [resultCopy summary];
  [(ENDifferentialPrivacyManager *)differentialPrivacyManager reportUserRiskScoreWithSummary:summary];

  v7 = self->_differentialPrivacyManager;
  differentialPrivacyRiskParameters = [resultCopy differentialPrivacyRiskParameters];
  [(ENDifferentialPrivacyManager *)v7 reportUserRiskParameters:differentialPrivacyRiskParameters];

  v9 = self->_differentialPrivacyManager;
  differentialPrivacyBeaconCount = [resultCopy differentialPrivacyBeaconCount];
  [(ENDifferentialPrivacyManager *)v9 reportUserBeaconCount:differentialPrivacyBeaconCount];

  exposureClassificationStatus = [resultCopy exposureClassificationStatus];
  exposureClassification = [resultCopy exposureClassification];
  v13 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v13 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed && _MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon exposureDetectionManager:exposureClassification finishedSessionWithResult:exposureClassificationStatus];
  }

  if (exposureClassificationStatus >= 2)
  {
    region = [resultCopy region];
    if (region)
    {
      [(ENDaemon *)self _postExposureNotificationForClassification:exposureClassification status:exposureClassificationStatus region:region];
    }

    else
    {
      [ENDaemon exposureDetectionManager:finishedSessionWithResult:];
    }
  }
}

- (id)activeRegionForExposureDetectionManager:(id)manager
{
  entity = [(ENActiveEntity *)self->_activeEntity entity];
  region = [entity region];

  return region;
}

- (BOOL)_postExposureNotificationForClassification:(id)classification status:(int64_t)status region:(id)region
{
  classificationCopy = classification;
  regionCopy = region;
  configurationStore = [(ENConfigurationManager *)self->_configurationManager configurationStore];
  v11 = [configurationStore configurationForRegion:regionCopy];
  if ([v11 enVersion] <= 1)
  {
    [ENDaemon _postExposureNotificationForClassification:v11 status:&v49 region:?];
    v41 = v49;
    goto LABEL_31;
  }

  v12 = [configurationStore agencyConfigurationForRegion:regionCopy];
  if (!v12)
  {
    [ENDaemon _postExposureNotificationForClassification:? status:? region:?];
    v41 = v49;
    goto LABEL_30;
  }

  v44 = v11;
  v13 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v13 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed && _MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon _postExposureNotificationForClassification:classificationCopy status:status region:regionCopy];
  }

  v46 = v12;
  localizedConfiguration = [v12 localizedConfiguration];
  v15 = objc_alloc_init(MEMORY[0x277CC5C68]);
  [v15 setClassification:classificationCopy];
  uUID = [MEMORY[0x277CCAD70] UUID];
  [v15 setIdentifier:uUID];

  date = [MEMORY[0x277CBEAA0] date];
  [v15 setNotificationDate:date];

  [v15 setRegion:regionCopy];
  date2 = [classificationCopy date];
  [date2 timeIntervalSinceNow];
  v20 = v19;

  v21 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed2 = [v21 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed2 && _MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&_MergedGlobals, "[ENDaemon _postExposureNotificationForClassification:status:region:]", 50, "Delay since exposure:  %f seconds,  %d days", -v20, (v20 / -86400.0));
  }

  -[ENDifferentialPrivacyManager reportUserExposureNotificationWithClassificationIndex:daysDelay:](self->_differentialPrivacyManager, "reportUserExposureNotificationWithClassificationIndex:daysDelay:", [classificationCopy index], (v20 / -86400.0));
  if (status == 3)
  {
    v23 = localizedConfiguration;
    revokedNotificationBody = [localizedConfiguration revokedNotificationBody];
    if (!revokedNotificationBody)
    {
      [ENDaemon _postExposureNotificationForClassification:? status:? region:?];
      v41 = v49;
LABEL_42:
      v12 = v46;
      goto LABEL_29;
    }

    v25 = revokedNotificationBody;
    revokedNotificationSubject = [localizedConfiguration revokedNotificationSubject];
    if (revokedNotificationSubject)
    {
      v27 = revokedNotificationSubject;
      v43 = configurationStore;
      revokedClassificationURL = [v46 revokedClassificationURL];
      [v15 setLearnMoreURL:revokedClassificationURL];

      [v15 setLocalizedBodyText:v25];
      [v15 setLocalizedSubjectText:v27];
      [v15 setRevoked:1];
LABEL_20:

      v48 = 0;
      v35 = [(ENDaemon *)self getExposureDatabaseAndReturnError:&v48];
      v36 = v48;
      notificationDate = [v15 notificationDate];
      v38 = ENDefaultExpirationDate();
      v47 = v36;
      v39 = [v35 setValue:v15 forKey:@"LastExposureNotification" expiryDate:v38 error:&v47];
      v40 = v47;

      if ((v39 & 1) == 0 && dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        [ENDaemon _postExposureNotificationForClassification:v40 status:? region:?];
      }

      [(ENDaemon *)self postExposureNotification:v15];

      v41 = 1;
      configurationStore = v43;
      v23 = localizedConfiguration;
      v12 = v46;
      goto LABEL_29;
    }

    [ENDaemon _postExposureNotificationForClassification:v25 status:? region:?];
LABEL_41:
    v41 = 0;
    goto LABEL_42;
  }

  v23 = localizedConfiguration;
  v12 = v46;
  if (status != 2)
  {
    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _postExposureNotificationForClassification:status status:? region:?];
    }

    v41 = 0;
    goto LABEL_29;
  }

  name = [classificationCopy name];
  if (name)
  {
    v25 = name;
    v26 = [localizedConfiguration notificationConfigurationForName:name];
    if (v26)
    {
      v27 = v26;
      v43 = configurationStore;
      classificationURL = [v26 classificationURL];
      [v15 setLearnMoreURL:classificationURL];

      localizedNotificationBody = [v27 localizedNotificationBody];
      [v15 setLocalizedBodyText:localizedNotificationBody];

      localizedNotificationSubject = [v27 localizedNotificationSubject];
      [v15 setLocalizedSubjectText:localizedNotificationSubject];

      localizedExposureDetailBody = [v27 localizedExposureDetailBody];
      [v15 setLocalizedDetailBodyText:localizedExposureDetailBody];

      goto LABEL_20;
    }

    [ENDaemon _postExposureNotificationForClassification:v25 status:classificationCopy region:?];
    goto LABEL_41;
  }

  [ENDaemon _postExposureNotificationForClassification:? status:? region:?];
  v41 = v49;
LABEL_29:

  v11 = v44;
LABEL_30:

LABEL_31:
  return v41;
}

- (void)onboardingManagerDidObserveDeviceUnlock:(id)unlock
{
  _readPreferenceRegionPendingOnboarding = [(ENDaemon *)self _readPreferenceRegionPendingOnboarding];
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [(ENDaemon *)self onboardingManagerDidObserveDeviceUnlock:_readPreferenceRegionPendingOnboarding];
  }

  onboardingManager = [(ENDaemon *)self onboardingManager];
  if ([onboardingManager isDeviceUnlocked] && _readPreferenceRegionPendingOnboarding)
  {
    onboardingManager2 = [(ENDaemon *)self onboardingManager];
    pendingBuddyOnboarding = [onboardingManager2 pendingBuddyOnboarding];

    if (pendingBuddyOnboarding)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __52__ENDaemon_onboardingManagerDidObserveDeviceUnlock___block_invoke_2;
      v8[3] = &unk_278FD1898;
      v8[4] = self;
      [(ENDaemon *)self presentBuddyForRegion:_readPreferenceRegionPendingOnboarding errorHandler:&__block_literal_global_3 completionHandler:v8];
    }
  }

  else
  {
  }
}

uint64_t __52__ENDaemon_onboardingManagerDidObserveDeviceUnlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) onboardingManager];
  v3 = [v2 isIdealTimeForBuddy];

  v4 = [*(a1 + 32) onboardingManager];
  [v4 setShouldObserveDeviceUnlocks:v3 ^ 1];

  v5 = [*(a1 + 32) onboardingManager];
  [v5 setPendingBuddyOnboarding:v3 ^ 1];

  return v3;
}

- (void)textMessageManager:(id)manager errorDetected:(unsigned int)detected
{
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__ENDaemon_textMessageManager_errorDetected___block_invoke;
  v5[3] = &unk_278FD17D8;
  v5[4] = self;
  detectedCopy = detected;
  dispatch_async(dispatchQueue, v5);
}

void __45__ENDaemon_textMessageManager_errorDetected___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 216));
  [WeakRetained sendErrorMetricWithType:*(a1 + 40)];
}

- (id)legacyHistoryPath
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  bluetoothSystemContainerURL = [WeakRetained bluetoothSystemContainerURL];

  if (bluetoothSystemContainerURL)
  {
    v4 = [bluetoothSystemContainerURL URLByAppendingPathComponent:@"Library/ExposureNotification"];
    v5 = [v4 URLByAppendingPathComponent:@"DetectionHistory.plist"];
    path = [v5 path];
  }

  else
  {
    [(ENDaemon *)&v8 legacyHistoryPath];
    path = v8;
  }

  return path;
}

- (id)loadLegacyHistorySinceTime:(double)time
{
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__3;
  v53 = __Block_byref_object_dispose__3;
  v54 = 0;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __39__ENDaemon_loadLegacyHistorySinceTime___block_invoke;
  v48[3] = &unk_278FD10F8;
  v48[4] = &v49;
  v5 = MEMORY[0x24C214430](v48, a2);
  legacyHistoryPath = [(ENDaemon *)self legacyHistoryPath];
  v45 = legacyHistoryPath;
  if (!legacyHistoryPath)
  {
    goto LABEL_64;
  }

  defaultManager = [MEMORY[0x277CCAA08] defaultManager];
  v8 = [defaultManager fileExistsAtPath:legacyHistoryPath];

  if (!v8)
  {
    goto LABEL_64;
  }

  v9 = open_dprotected_np([legacyHistoryPath fileSystemRepresentation], 0, 2, 0, 384);
  v10 = v9;
  if (v9 < 0)
  {
    if (!*__error() || *__error())
    {
      if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        v20 = CUPrintErrorCode();
        LogPrintF_safe(&dword_281346508, "[ENDaemon loadLegacyHistorySinceTime:]", 90, "### Open legacy history path failed: %@", v20);
      }

      goto LABEL_64;
    }

    v18 = ENErrorF(11, "No history FD");
    goto LABEL_20;
  }

  v44 = v5;
  if (lseek(v9, 0, 0))
  {
    v37 = __error();
    v18 = ENErrorF(1, "Seek history failed: %#m", *v37);
LABEL_20:
    v19 = v50[5];
    v50[5] = v18;

    goto LABEL_64;
  }

  memset(&v47, 0, sizeof(v47));
  if (fstat(v10, &v47))
  {
    v38 = __error();
    v39 = ENErrorF(1, "fstat history failed: %#m", *v38);
LABEL_72:
    v24 = 0;
    v43 = v50[5];
    v50[5] = v39;

    goto LABEL_65;
  }

  st_size = v47.st_size;
  if (v47.st_size > 0x8000)
  {
    v39 = ENErrorF(1, "History too big");
    goto LABEL_72;
  }

  if (v47.st_size < 1)
  {
LABEL_64:
    v24 = 0;
    goto LABEL_65;
  }

  v12 = [objc_alloc(MEMORY[0x277CBEB20]) initWithLength:v47.st_size];
  mutableBytes = [v12 mutableBytes];
  v14 = &mutableBytes[st_size];
  v42 = v12;
  do
  {
    v15 = read(v10, mutableBytes, v14 - mutableBytes);
    if (!v15)
    {
      break;
    }

    if (v15 <= 0)
    {
      v35 = __error();
      v36 = ENErrorF(1, "History read failed: %#m", *v35);
      v24 = 0;
      v41 = v50[5];
      v50[5] = v36;
      goto LABEL_60;
    }

    mutableBytes += v15;
  }

  while (mutableBytes < v14);
  v16 = v50;
  obj = 0;
  v17 = [MEMORY[0x277CCAC50] propertyListWithData:v12 options:0 format:0 error:&obj];
  objc_storeStrong(v16 + 5, obj);
  v41 = v17;
  if (!v17)
  {
    v40 = ENNestedErrorF(v50[5], 1, "Decode history plist failed");
LABEL_75:
    v24 = 0;
    v33 = v50[5];
    v50[5] = v40;
    goto LABEL_58;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v40 = ENErrorF(1, "History non-array");
    goto LABEL_75;
  }

  if (_MergedGlobals <= 30)
  {
    if (_MergedGlobals != -1 || _LogCategory_Initialize())
    {
      LogPrintF_safe(&_MergedGlobals, "-[ENDaemon loadLegacyHistorySinceTime:]", 30, "History loaded: entries %d", [v17 count]);
    }

    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&_MergedGlobals, "[ENDaemon loadLegacyHistorySinceTime:]", 30, "Pruning history: target time %f", time);
    }
  }

  v21 = [v17 mutableCopy];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = objc_alloc_init(MEMORY[0x277CBEB10]);
  }

  v24 = v23;

  v25 = [v24 count];
  v26 = v25;
  if (v25 >= 0x65)
  {
    do
    {
      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        v27 = [v24 objectAtIndexedSubscript:0];
        v28 = CUPrintNSObjectOneLine();
        LogPrintF_safe(&_MergedGlobals, "[ENDaemon loadLegacyHistorySinceTime:]", 30, "Removing excessive detection event: %@", v28, v41, v42);
      }

      [v24 removeObjectAtIndex:0];
      --v26;
    }

    while (v26 > 0x64);
    v26 = 100;
    goto LABEL_40;
  }

  if (v25)
  {
LABEL_40:
    v29 = 0;
    do
    {
      v30 = [v24 objectAtIndexedSubscript:v29];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && (CFDictionaryGetDouble(), v31 >= time))
      {
        ++v29;
      }

      else
      {
        if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          v32 = CUPrintNSObjectOneLine();
          LogPrintF_safe(&_MergedGlobals, "[ENDaemon loadLegacyHistorySinceTime:]", 30, "Removing old detection event: %@", v32);
        }

        [v24 removeObjectAtIndex:v29];
        --v26;
      }
    }

    while (v29 < v26);
  }

  if (_MergedGlobals < 31 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&_MergedGlobals, "-[ENDaemon loadLegacyHistorySinceTime:]", 30, "History pruned: entries %d", [v24 count]);
  }

  if (close(v10))
  {
    v5 = v44;
    if (dword_281346508 > 90)
    {
      goto LABEL_61;
    }

    if (dword_281346508 != -1 || _LogCategory_Initialize())
    {
      __error();
      v33 = CUPrintErrorCode();
      LogPrintF_safe(&dword_281346508, "[ENDaemon loadLegacyHistorySinceTime:]", 90, "### History close failed: %@", v33, v41, v42);
LABEL_58:
    }
  }

LABEL_60:
  v5 = v44;
LABEL_61:

LABEL_65:
  v5[2](v5);

  _Block_object_dispose(&v49, 8);

  return v24;
}

void __39__ENDaemon_loadLegacyHistorySinceTime___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40) && dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    v1 = CUPrintNSError();
    LogPrintF_safe(&dword_281346508, "[ENDaemon loadLegacyHistorySinceTime:]_block_invoke", 90, "### Legacy history load failed: %@", v1);
  }
}

- (id)loadHistorySinceTime:(double)time
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__3;
  v20 = __Block_byref_object_dispose__3;
  v21 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __33__ENDaemon_loadHistorySinceTime___block_invoke;
  v15[3] = &unk_278FD10F8;
  v15[4] = &v16;
  v5 = MEMORY[0x24C214430](v15, a2);
  v6 = v17;
  obj = v17[5];
  v7 = [(ENDaemon *)self getExposureDatabaseAndReturnError:&obj];
  objc_storeStrong(v6 + 5, obj);
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB10]);
    v9 = v17;
    v13 = v17[5];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __33__ENDaemon_loadHistorySinceTime___block_invoke_2;
    v12[3] = &unk_278FD18E8;
    *&v12[7] = time;
    v12[5] = v8;
    v12[6] = &v16;
    v12[4] = v7;
    [v7 enumerateExposureDetectionHistorySessionsWithError:&v13 handler:v12];
    objc_storeStrong(v9 + 5, v13);
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v5[2](v5);
  _Block_object_dispose(&v16, 8);

  return v10;
}

void __33__ENDaemon_loadHistorySinceTime___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40) && dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    v1 = CUPrintNSError();
    LogPrintF_safe(&dword_281346508, "[ENDaemon loadHistorySinceTime:]_block_invoke", 90, "### History load failed: %@", v1);
  }
}

void __33__ENDaemon_loadHistorySinceTime___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB30];
  v4 = a2;
  v14 = objc_alloc_init(v3);
  v5 = [v4 sourceAppBundleIdentifier];
  [v14 setObject:v5 forKeyedSubscript:@"bundleID"];

  v6 = [v4 fileHash];
  [v14 setObject:v6 forKeyedSubscript:@"hash"];

  v7 = [v4 keyCount];
  [v14 setObject:v7 forKeyedSubscript:@"keyCount"];

  v8 = [v4 matchCount];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &unk_285D6E408;
  }

  [v14 setObject:v10 forKeyedSubscript:@"matchCount"];

  v11 = MEMORY[0x277CCABA8];
  v12 = [v4 processDate];

  [v12 timeIntervalSinceReferenceDate];
  v13 = [v11 numberWithDouble:?];
  [v14 setObject:v13 forKeyedSubscript:@"time"];

  [*(a1 + 32) insertObject:v14 atIndex:0];
}

- (void)startAvailabilityAlertCycleWithBuddy:(BOOL)buddy
{
  buddyCopy = buddy;
  [(ENDaemon *)self onboardingTriggerDeactivate];
  regionMonitor = [(ENDaemon *)self regionMonitor];
  v18 = 0;
  v6 = [regionMonitor getCurrentRegionVisitWithError:&v18];
  v7 = v18;
  region = [v6 region];

  if (region)
  {
    v9 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed = [v9 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      v11 = "no";
      if (buddyCopy)
      {
        v11 = "yes";
      }

      LogPrintF_safe(&_MergedGlobals, "[ENDaemon startAvailabilityAlertCycleWithBuddy:]", 30, "Starting availability alert cycle for region %@, shouldPresentBuddy: %s", region, v11);
    }

    [(ENDaemon *)self _writePreferenceRegionPendingOnboarding:region];
    [(ENDaemon *)self postOnboardingNotificationForRegion:region];
    Int64 = CFPrefs_GetInt64();
    if (buddyCopy && !Int64)
    {
      activeEntity = self->_activeEntity;
      if (!activeEntity || [(ENActiveEntity *)activeEntity activeStatus]<= 2)
      {
        if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          [ENDaemon startAvailabilityAlertCycleWithBuddy:];
        }

        onboardingManager = [(ENDaemon *)self onboardingManager];
        [onboardingManager setShouldObserveDeviceUnlocks:1];

        onboardingManager2 = [(ENDaemon *)self onboardingManager];
        isDeviceUnlocked = [onboardingManager2 isDeviceUnlocked];

        if ((isDeviceUnlocked & 1) == 0)
        {
          onboardingManager3 = [(ENDaemon *)self onboardingManager];
          [onboardingManager3 setPendingBuddyOnboarding:1];
        }
      }
    }

    if (!CFPrefs_GetInt64())
    {
      [(ENDaemon *)self onboardingTriggerRetry:2];
    }
  }

  else
  {
    [ENDaemon startAvailabilityAlertCycleWithBuddy:];
  }
}

- (void)onboardingTriggerRetry:(unsigned int)retry
{
  if (retry)
  {
    CFPrefs_GetDouble();
    if (v5 == 0.0)
    {
      date = [MEMORY[0x277CBEAA0] date];
      currentCalendar = [MEMORY[0x277CBEA88] currentCalendar];
      v8 = objc_alloc_init(MEMORY[0x277CBEAB0]);
      [v8 setDay:retry];
      v9 = [currentCalendar dateByAddingComponents:v8 toDate:date options:2];
      v10 = [currentCalendar dateBySettingUnit:32 value:10 ofDate:v9 options:0];
    }

    else
    {
      v10 = [MEMORY[0x277CBEAA0] dateWithTimeIntervalSince1970:?];
    }

    onboardingTimer = [(ENDaemon *)self onboardingTimer];
    [onboardingTimer invalidate];

    [(ENDaemon *)self setOnboardingTimer:0];
  }

  else
  {
    [(ENDaemon *)self timeForAvailabilityAlertCycleReset];
    if (v11 == 0.0)
    {
      CFPrefs_RemoveValue();
      v10 = 0;
      goto LABEL_28;
    }

    v20 = v11;
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon onboardingTriggerRetry:];
    }

    v10 = [MEMORY[0x277CBEAA0] dateWithTimeIntervalSince1970:v20];
    [(ENDaemon *)self onboardingTriggerDeactivate];
    regionMonitor = [(ENDaemon *)self regionMonitor];
    v26 = 0;
    v22 = [regionMonitor getCurrentRegionVisitWithError:&v26];
    v23 = v26;
    region = [v22 region];

    if (!region)
    {
      [ENDaemon onboardingTriggerRetry:v23];
      goto LABEL_28;
    }

    [(ENDaemon *)self _writePreferenceRegionPendingOnboarding:region];
  }

  if ([(ENDaemon *)self isOnboardingNeeded])
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon onboardingTriggerRetry:];
    }

    if (retry == 2 || retry == 5)
    {
      CFPrefs_SetInt64();
      [v10 timeIntervalSince1970];
      CFPrefs_SetDouble();
    }

    if (_MergedGlobals <= 30)
    {
      if (_MergedGlobals != -1 || _LogCategory_Initialize())
      {
        [ENDaemon onboardingTriggerRetry:];
      }

      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        [ENDaemon onboardingTriggerRetry:v10];
      }
    }

    [v10 timeIntervalSinceNow];
    v14 = v13;
    v15 = 7200.0;
    if (IsAppleInternalBuild())
    {
      CFPrefs_GetDouble();
      if (retry)
      {
        if (v16 > 0.0)
        {
          CFPrefs_GetDouble();
          v14 = v17;
          v15 = 30.0;
          if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            [ENDaemon onboardingTriggerRetry:v14];
          }
        }
      }
    }

    v18 = [ENXPCTimer alloc];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __35__ENDaemon_onboardingTriggerRetry___block_invoke;
    v25[3] = &unk_278FD1580;
    v25[4] = self;
    v19 = [(ENXPCTimer *)v18 initWithName:@"com.apple.exposurenotification.onboarding.retry" delay:1 gracePeriod:577 priority:v25 options:v14 block:v15];
    [(ENDaemon *)self setOnboardingTimer:v19];
  }

  else
  {
    [(ENDaemon *)v10 onboardingTriggerRetry:?];
    v10 = v27;
  }

LABEL_28:
}

void __35__ENDaemon_onboardingTriggerRetry___block_invoke(uint64_t a1, void *a2)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = v3;
  if (_MergedGlobals <= 30)
  {
    if (_MergedGlobals != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      __35__ENDaemon_onboardingTriggerRetry___block_invoke_cold_1(v3, v4, v5);
    }
  }

  v8 = *(a1 + 32);
  v7 = (a1 + 32);
  v9 = [v8 onboardingManager];
  [v9 setShouldObserveDeviceUnlocks:0];

  v10 = [*v7 onboardingManager];
  [v10 setPendingBuddyOnboarding:0];

  v11 = [*v7 regionMonitor];
  v12 = [v11 getCurrentRegionVisitWithError:0];
  v13 = [v12 region];

  v14 = [*v7 _readPreferenceRegionPendingOnboarding];
  v15 = [v14 isEqual:v13];
  if ((v15 & 1) == 0)
  {
    __35__ENDaemon_onboardingTriggerRetry___block_invoke_cold_2(v15, v16, v17);
    goto LABEL_21;
  }

  if (([*v7 isOnboardingNeeded] & 1) == 0)
  {
    __35__ENDaemon_onboardingTriggerRetry___block_invoke_cold_3(v7);
    goto LABEL_21;
  }

  v18 = [*v7 userNotificationCenter];
  v22[0] = @"com.apple.ExposureNotification.onboarding";
  v19 = [MEMORY[0x277CBEA68] arrayWithObjects:v22 count:1];
  [v18 removeDeliveredNotificationsWithIdentifiers:v19];

  [*v7 postOnboardingNotificationForRegion:v14];
  Int64 = CFPrefs_GetInt64();
  v21 = CFPrefs_GetInt64();
  CFPrefs_RemoveValue();
  CFPrefs_RemoveValue();
  switch(v21)
  {
    case 2:
      if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        __35__ENDaemon_onboardingTriggerRetry___block_invoke_cold_4();
      }

      goto LABEL_20;
    case 1:
      if (Int64)
      {
        break;
      }

      [*v7 onboardingTriggerRetry:5];
      if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        __35__ENDaemon_onboardingTriggerRetry___block_invoke_cold_5();
      }

LABEL_20:
      CFPrefs_SetValue();
      break;
    case 0:
      if (!Int64)
      {
        [*v7 onboardingTriggerRetry:2];
      }

      CFPrefs_RemoveValue();
      break;
  }

LABEL_21:
}

- (void)onboardingTriggerResumeIfNeeded
{
  v0 = [MEMORY[0x277CBEAA0] dateWithTimeIntervalSince1970:?];
  LogPrintF_safe(&_MergedGlobals, "[ENDaemon onboardingTriggerResumeIfNeeded]", 30, "rescheduling the 3rd day retry at %@", v0);
}

- (void)onboardingTriggerDeactivate
{
  selfCopy = self;
  if (_MergedGlobals <= 50)
  {
    if (_MergedGlobals != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(ENDaemon *)self onboardingTriggerDeactivate];
    }
  }

  onboardingManager = [(ENDaemon *)selfCopy onboardingManager];
  [onboardingManager setShouldObserveDeviceUnlocks:0];

  onboardingManager2 = [(ENDaemon *)selfCopy onboardingManager];
  [onboardingManager2 setPendingBuddyOnboarding:0];

  onboardingTimer = [(ENDaemon *)selfCopy onboardingTimer];
  [onboardingTimer invalidate];

  [(ENDaemon *)selfCopy setOnboardingTimer:0];
  CFPrefs_RemoveValue();
  CFPrefs_RemoveValue();
  CFPrefs_RemoveValue();
  CFPrefs_RemoveValue();

  CFPrefs_RemoveValue();
}

- (double)timeForAvailabilityAlertCycleReset
{
  if ([(ENDaemon *)self isOnboardingNeeded])
  {
    regionMonitor = self->_regionMonitor;
    v28 = 0;
    v4 = [(ENRegionMonitor *)regionMonitor getCurrentRegionVisitWithError:&v28];
    v5 = v28;
    region = [v4 region];

    if (!region)
    {
      [(ENDaemon *)v5 timeForAvailabilityAlertCycleReset];
      v26 = v29;
      goto LABEL_31;
    }

    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [(ENDaemon *)region timeForAvailabilityAlertCycleReset];
    }

    configurationStore = [(ENConfigurationManager *)self->_configurationManager configurationStore];
    v8 = [configurationStore configurationForRegion:region];

    if ([v8 enVersion] <= 1)
    {
      [(ENDaemon *)v8 timeForAvailabilityAlertCycleReset];
    }

    else
    {
      userConsent = [v8 userConsent];
      consent = [userConsent consent];

      if (consent != 2)
      {
        configurationStore2 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
        v12 = [configurationStore2 serverConfigurationForRegion:region];

        if (v12)
        {
          [v12 timeToResetAvailabilityAlert];
          v14 = v13;
          v15 = [MEMORY[0x277CBEAA0] now];
          [v15 timeIntervalSince1970];
          v17 = v16;

          CFPrefs_GetDouble();
          if (v18 > 0.0)
          {
            v19 = v18;
            if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              [(ENDaemon *)v19 timeForAvailabilityAlertCycleReset];
            }

            v14 = v17 + v19;
          }

          if (v14 > v17)
          {
            onboardingTimer = [(ENDaemon *)self onboardingTimer];

            if (onboardingTimer)
            {
              Int64 = CFPrefs_GetInt64();
              onboardingTimer2 = [(ENDaemon *)self onboardingTimer];
              date = [onboardingTimer2 date];
              [date timeIntervalSince1970];
              v25 = v24;

              if (Int64 < 1)
              {
                if (v25 == v14)
                {
                  v26 = 0.0;
                  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                  {
                    [ENDaemon timeForAvailabilityAlertCycleReset];
                  }

                  goto LABEL_29;
                }
              }

              else if (v25 < v14)
              {
                v26 = 0.0;
                if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                {
                  [(ENDaemon *)self timeForAvailabilityAlertCycleReset];
                }

                goto LABEL_29;
              }
            }

            v26 = v14;
LABEL_29:

LABEL_30:
LABEL_31:

            return v26;
          }

          [(ENDaemon *)region timeForAvailabilityAlertCycleReset];
        }

        else
        {
          [(ENDaemon *)region timeForAvailabilityAlertCycleReset];
        }

        v26 = v29;
        goto LABEL_29;
      }

      [(ENDaemon *)region timeForAvailabilityAlertCycleReset];
    }

    v26 = v29;
    goto LABEL_30;
  }

  [(ENDaemon *)self onboardingTriggerDeactivate];
  CFPrefs_RemoveValue();
  return 0.0;
}

- (BOOL)isOnboardingNeeded
{
  if (self->_availabilityAlertDisabled)
  {
    [(ENDaemon *)&v19 isOnboardingNeeded];
    return v19;
  }

  else
  {
    _readPreferenceRegionPendingOnboarding = [(ENDaemon *)self _readPreferenceRegionPendingOnboarding];
    if (_readPreferenceRegionPendingOnboarding)
    {
      configurationManager = [(ENDaemon *)self configurationManager];
      configurationStore = [configurationManager configurationStore];
      v6 = [configurationStore configurationForRegion:_readPreferenceRegionPendingOnboarding];

      if (v6)
      {
        configurationManager2 = [(ENDaemon *)self configurationManager];
        configurationStore2 = [configurationManager2 configurationStore];
        v9 = [configurationStore2 serverConfigurationForRegion:_readPreferenceRegionPendingOnboarding];

        resetAvailabilityAlertForDeclinedUsers = [v9 resetAvailabilityAlertForDeclinedUsers];
        userConsent = [v6 userConsent];
        consent = [userConsent consent];

        if (consent == 2 || consent == 1 && (resetAvailabilityAlertForDeclinedUsers & 1) == 0)
        {
          v14 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isSensitiveLoggingAllowed = [v14 isSensitiveLoggingAllowed];

          if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            [(ENDaemon *)consent isOnboardingNeeded];
          }

          [(ENDaemon *)self onboardingTriggerDeactivate];
          v13 = 0;
        }

        else
        {
          v13 = 1;
        }
      }

      else
      {
        [(ENDaemon *)&v17 isOnboardingNeeded];
        v13 = v17;
      }
    }

    else
    {
      [(ENDaemon *)&v18 isOnboardingNeeded];
      v13 = v18;
    }
  }

  return v13;
}

- (void)_regionMonitorEnsureStarted
{
  v3 = [*self getCurrentRegionVisitWithError:0];
  LogPrintF_safe(&_MergedGlobals, "[ENDaemon _regionMonitorEnsureStarted]", 30, "Region Monitor started: %@ with current region: %@", a2, v3);
}

- (void)_regionMonitorEnsureStopped
{
  if (self->_regionMonitor)
  {
    selfCopy = self;
    if (_MergedGlobals <= 30)
    {
      if (_MergedGlobals != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(ENDaemon *)self _regionMonitorEnsureStopped];
      }
    }

    regionMonitor = selfCopy->_regionMonitor;
    selfCopy->_regionMonitor = 0;
  }
}

- (void)_networkProxyStatusCheck
{
  dispatchQueue = self->_dispatchQueue;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __36__ENDaemon__networkProxyStatusCheck__block_invoke;
  v3[3] = &unk_278FD1938;
  v3[4] = self;
  [MEMORY[0x277D2CA70] getServiceStatus:dispatchQueue completionHandler:v3];
}

void __36__ENDaemon__networkProxyStatusCheck__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      __36__ENDaemon__networkProxyStatusCheck__block_invoke_cold_1(v7);
    }
  }

  else
  {
    if (_MergedGlobals <= 40 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __36__ENDaemon__networkProxyStatusCheck__block_invoke_cold_2(v6);
    }

    objc_storeStrong((*(a1 + 32) + 504), a2);
    v8 = *(a1 + 32);
    v9 = *(v8 + 224);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __36__ENDaemon__networkProxyStatusCheck__block_invoke_2;
    v10[3] = &unk_278FD1910;
    v10[4] = v8;
    [MEMORY[0x277D2CA70] getTrafficState:v9 completionandler:v10];
  }
}

void __36__ENDaemon__networkProxyStatusCheck__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    v10 = 0;
    if (_MergedGlobals <= 40 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __36__ENDaemon__networkProxyStatusCheck__block_invoke_2_cold_2(a2);
    }

    *(*(a1 + 32) + 512) = a2;
    if ((a2 & 0x800) != 0)
    {
      if (_MergedGlobals > 40 || _MergedGlobals == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_17;
      }

      v9 = "EN traffic enabled";
    }

    else
    {
      if (_MergedGlobals > 40 || _MergedGlobals == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_17;
      }

      v9 = "EN traffic disabled";
    }

    __36__ENDaemon__networkProxyStatusCheck__block_invoke_2_cold_3(v9, v7, v6);
LABEL_17:
    [*(a1 + 32) prefsChanged];
    goto LABEL_18;
  }

  if (dword_281346508 <= 90)
  {
    v10 = v5;
    if (dword_281346508 != -1 || (v8 = _LogCategory_Initialize(), v7 = v10, v8))
    {
      __36__ENDaemon__networkProxyStatusCheck__block_invoke_2_cold_1(v7);
LABEL_18:
      v7 = v10;
    }
  }
}

- (id)temporaryExposureKeyManager:(id)manager retrieveTEKHistoryIncludingActive:(BOOL)active generateNewTEK:(BOOL)k
{
  kCopy = k;
  activeCopy = active;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [WeakRetained retrieveTEKHistoryIncludingActive:activeCopy generateNewTEK:kCopy];

  return v8;
}

- (BOOL)isProxyEnabledForTestResultManager:(id)manager
{
  networkProxyStatus = self->_networkProxyStatus;
  if (networkProxyStatus)
  {
    LOBYTE(networkProxyStatus) = self->_prefNetworkProxyEnabled;
  }

  return networkProxyStatus & 1;
}

- (void)enqueuePreauthorizedTestVerificationUnlockAction
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__3;
  v34 = __Block_byref_object_dispose__3;
  v35 = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __60__ENDaemon_enqueuePreauthorizedTestVerificationUnlockAction__block_invoke;
  v29[3] = &unk_278FD10F8;
  v29[4] = &v30;
  v3 = MEMORY[0x24C214430](v29, a2);
  screenUnlockPendingActions = [(ENDaemon *)self screenUnlockPendingActions];
  v5 = [screenUnlockPendingActions objectForKey:@"PreArmUnlockActionIdentifier"];

  if (v5)
  {
    v20 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed = [v20 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&_MergedGlobals, "[ENDaemon enqueuePreauthorizedTestVerificationUnlockAction]", 30, "Pre-authorization key release queued already");
    }
  }

  else if ([(ENDaemon *)self getOverallStatus]== 1 && [(ENDaemon *)self _isNKDActive])
  {
    activeEntity = [(ENDaemon *)self activeEntity];
    entity = [activeEntity entity];
    region = [entity region];

    if (!region)
    {
      v22 = ENErrorF(5, "Active region not available");
      configurationStore = v31[5];
      v31[5] = v22;
      goto LABEL_17;
    }

    configurationStore = [(ENConfigurationManager *)self->_configurationManager configurationStore];
    v10 = [configurationStore configurationForRegion:region];
    v11 = v10;
    if (v10)
    {
      diagnosisKeysPreAuthorization = [v10 diagnosisKeysPreAuthorization];

      if (!diagnosisKeysPreAuthorization)
      {
LABEL_16:

LABEL_17:
        goto LABEL_18;
      }

      diagnosisKeysPreAuthorization2 = [v11 diagnosisKeysPreAuthorization];
      verificationCode = [diagnosisKeysPreAuthorization2 verificationCode];

      if (verificationCode)
      {
        diagnosisKeysPreAuthorization3 = [v11 diagnosisKeysPreAuthorization];
        reportType = [diagnosisKeysPreAuthorization3 reportType];

        if (reportType == 3)
        {
          v26 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isSensitiveLoggingAllowed2 = [v26 isSensitiveLoggingAllowed];

          if (isSensitiveLoggingAllowed2 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&_MergedGlobals, "[ENDaemon enqueuePreauthorizedTestVerificationUnlockAction]", 30, "No pre-authorization for self report to release keys");
          }
        }

        else
        {
          v17 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isSensitiveLoggingAllowed3 = [v17 isSensitiveLoggingAllowed];

          if (isSensitiveLoggingAllowed3 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&_MergedGlobals, "[ENDaemon enqueuePreauthorizedTestVerificationUnlockAction]", 30, "## EnqueuePreauthorizedTestVerificationUnlockAction");
          }

          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __60__ENDaemon_enqueuePreauthorizedTestVerificationUnlockAction__block_invoke_2;
          v28[3] = &unk_278FD0F90;
          v28[4] = self;
          v19 = MEMORY[0x24C214430](v28);
          [(ENDaemon *)self _enqueueScreenUnlockAction:v19 withIdentifier:@"PreArmUnlockActionIdentifier"];
        }
      }

      else
      {
        v24 = +[ENLoggingPrefs sharedENLoggingPrefs];
        isSensitiveLoggingAllowed4 = [v24 isSensitiveLoggingAllowed];

        if (isSensitiveLoggingAllowed4 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&_MergedGlobals, "[ENDaemon enqueuePreauthorizedTestVerificationUnlockAction]", 30, "No pre-authorization verification code to restart releasing keys");
        }
      }
    }

    else
    {
      v23 = ENErrorF(11, "Configuration unavailable for %@", region);
      verificationCode = v31[5];
      v31[5] = v23;
    }

    goto LABEL_16;
  }

LABEL_18:
  v3[2](v3);

  _Block_object_dispose(&v30, 8);
}

void __60__ENDaemon_enqueuePreauthorizedTestVerificationUnlockAction__block_invoke(uint64_t a1)
{
  v1 = a1 + 32;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v2 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v3 = [v2 isSensitiveLoggingAllowed];

    if (v3)
    {
      if (_MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        __60__ENDaemon_enqueuePreauthorizedTestVerificationUnlockAction__block_invoke_cold_1(v1);
      }
    }
  }
}

- (id)_getReportTypeForSession:(id)session
{
  sessionCopy = session;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __37__ENDaemon__getReportTypeForSession___block_invoke;
  v12[3] = &unk_278FD10F8;
  v12[4] = &v13;
  v5 = MEMORY[0x24C214430](v12);
  v6 = self->_testResultManager;
  v7 = (v14 + 5);
  obj = v14[5];
  v8 = [(ENTestResultManager *)v6 metadataForSessionWithUUID:sessionCopy error:&obj];
  objc_storeStrong(v7, obj);
  v9 = [(ENDaemon *)self _getReportTypeFromMetadata:v8];

  v5[2](v5);
  _Block_object_dispose(&v13, 8);

  return v9;
}

void __37__ENDaemon__getReportTypeForSession___block_invoke(uint64_t a1)
{
  v1 = a1 + 32;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v2 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v3 = [v2 isSensitiveLoggingAllowed];

    if (v3)
    {
      if (_MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        __37__ENDaemon__getReportTypeForSession___block_invoke_cold_1(v1);
      }
    }
  }
}

- (id)_getReportTypeFromMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = metadataCopy;
  if (!metadataCopy)
  {
    v8 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed = [v8 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed)
    {
      if (_MergedGlobals <= 90)
      {
        if (_MergedGlobals != -1 || (v10 = _LogCategory_Initialize(), v10))
        {
          [(ENDaemon *)v10 _getReportTypeFromMetadata:v11, v12];
        }
      }
    }

    goto LABEL_16;
  }

  v5 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x277CC5B88]];
  v6 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed2 = [v6 isSensitiveLoggingAllowed];

  if (!v5)
  {
    if (isSensitiveLoggingAllowed2 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _getReportTypeFromMetadata:v4];
    }

LABEL_16:
    v5 = &unk_285D6E420;
    goto LABEL_17;
  }

  if (isSensitiveLoggingAllowed2 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&_MergedGlobals, "[ENDaemon _getReportTypeFromMetadata:]", 30, "getReportTypeFromMetadata %@, metadata %@", v5, v4);
  }

LABEL_17:

  return v5;
}

- (void)_startPreauthorizedTestVerificationAction
{
  v3 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v3 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed)
  {
    if (_MergedGlobals <= 30)
    {
      if (_MergedGlobals != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        [(ENDaemon *)v5 _startPreauthorizedTestVerificationAction];
      }
    }
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__3;
  v37 = __Block_byref_object_dispose__3;
  v38 = 0;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke;
  v32[3] = &unk_278FD10F8;
  v32[4] = &v33;
  v8 = MEMORY[0x24C214430](v32);
  if ([(ENDaemon *)self getOverallStatus]!= 1)
  {
    v22 = ENErrorF(9, "Exposure notification is not active");
LABEL_21:
    region = v34[5];
    v34[5] = v22;
    goto LABEL_17;
  }

  if (![(ENDaemon *)self _isNKDActive])
  {
    v22 = ENErrorF(5, "Test verification unsupported");
    goto LABEL_21;
  }

  activeEntity = [(ENDaemon *)self activeEntity];
  entity = [activeEntity entity];
  region = [entity region];

  if (!region)
  {
    v23 = ENErrorF(5, "Active region not available");
    v12 = v34[5];
    v34[5] = v23;
    goto LABEL_16;
  }

  v12 = self->_testResultManager;
  if (!v12)
  {
    v24 = ENErrorF(11, "Test result manager unavailable");
    configurationStore = v34[5];
    v34[5] = v24;
    goto LABEL_15;
  }

  configurationStore = [(ENConfigurationManager *)self->_configurationManager configurationStore];
  v14 = [configurationStore configurationForRegion:region];
  v15 = v14;
  if (v14)
  {
    diagnosisKeysPreAuthorization = [v14 diagnosisKeysPreAuthorization];

    if (!diagnosisKeysPreAuthorization)
    {
      v26 = +[ENLoggingPrefs sharedENLoggingPrefs];
      isSensitiveLoggingAllowed2 = [v26 isSensitiveLoggingAllowed];

      if (isSensitiveLoggingAllowed2 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&_MergedGlobals, "[ENDaemon _startPreauthorizedTestVerificationAction]", 90, "No pre-authorization to start releasing keys");
      }

      goto LABEL_14;
    }

    diagnosisKeysPreAuthorization2 = [v15 diagnosisKeysPreAuthorization];
    verificationCode = [diagnosisKeysPreAuthorization2 verificationCode];

    if (verificationCode)
    {
      prefNetworkProxyEnabled = self->_prefNetworkProxyEnabled;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_2;
      v31[3] = &unk_278FD19B0;
      v31[4] = self;
      v31[5] = v15;
      v31[6] = region;
      v31[7] = v12;
      v31[8] = configurationStore;
      v31[9] = &v33;
      [(ENTestResultManager *)v12 startTestVerficationSessionWithCode:verificationCode proxyEnabled:prefNetworkProxyEnabled region:region completionHandler:v31];
      diagnosisKeysPreAuthorization3 = [v15 diagnosisKeysPreAuthorization];
      [diagnosisKeysPreAuthorization3 setVerificationCode:0];

      v21 = (v34 + 5);
      obj = v34[5];
      [configurationStore saveRegionConfiguration:v15 error:&obj];
      objc_storeStrong(v21, obj);
    }

    else
    {
      v28 = +[ENLoggingPrefs sharedENLoggingPrefs];
      isSensitiveLoggingAllowed3 = [v28 isSensitiveLoggingAllowed];

      if (isSensitiveLoggingAllowed3 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&_MergedGlobals, "[ENDaemon _startPreauthorizedTestVerificationAction]", 90, "No pre-authorization verification code to restart releasing keys");
      }
    }
  }

  else
  {
    v25 = ENErrorF(11, "Configuration unavailable for %@", region);
    verificationCode = v34[5];
    v34[5] = v25;
  }

LABEL_14:
LABEL_15:

LABEL_16:
LABEL_17:

  v8[2](v8);
  _Block_object_dispose(&v33, 8);
}

void __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke(uint64_t a1)
{
  v1 = a1 + 32;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v2 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v3 = [v2 isSensitiveLoggingAllowed];

    if (v3)
    {
      if (_MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_cold_1(v1);
      }
    }
  }
}

void __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 224);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v8 = *(a1 + 48);
  v15 = *(a1 + 32);
  v13[2] = __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_3;
  v13[3] = &unk_278FD1988;
  v14 = v5;
  v16 = v8;
  v10 = *(a1 + 64);
  v9 = *(a1 + 72);
  v18 = v6;
  v19 = v9;
  v17 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(v7, v13);
}

void __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [*(a1 + 40) _getReportTypeForSession:v2];
    v4 = [*(a1 + 40) differentialPrivacyManager];

    if (v4)
    {
      v5 = [*(a1 + 40) _getLatestExposureForDifferentialPrivacy];
      v6 = +[ENLoggingPrefs sharedENLoggingPrefs];
      v7 = [v6 isSensitiveLoggingAllowed];

      if (v7 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&_MergedGlobals, "[ENDaemon _startPreauthorizedTestVerificationAction]_block_invoke_3", 90, "CodeVerified, notification info %d, report type %@", v5, v3);
      }

      v14 = [*(a1 + 40) differentialPrivacyManager];
      [v14 reportUserCodeVerified:v5 reportType:{objc_msgSend(v3, "unsignedIntValue")}];
    }

    v15 = [*(a1 + 48) diagnosisKeysPreAuthorization];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 expirationStatus];
      v18 = [MEMORY[0x277CBEB30] dictionaryWithCapacity:2];
      v19 = [v16 symptomOnsetDate];
      if (v19)
      {
        [v18 setObject:v19 forKey:*MEMORY[0x277CC5BB0]];
      }

      v20 = [v16 didUserTravel];
      if (v20)
      {
        [v18 setObject:v20 forKey:*MEMORY[0x277CC5BC8]];
      }

      if ([*(*(a1 + 40) + 264) regionSupportsFeatures:*(a1 + 56) featureFlags:1])
      {
        v21 = [v16 isUserVaccinated];
        if (v21)
        {
          [v18 setObject:v21 forKey:*MEMORY[0x277CC5BA0]];
        }
      }

      v22 = +[ENLoggingPrefs sharedENLoggingPrefs];
      v23 = [v22 isSensitiveLoggingAllowed];

      if (v23 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_3_cold_1(v16);
      }

      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_4;
      v29[3] = &unk_278FD1960;
      v24 = *(a1 + 40);
      v34 = *(a1 + 88);
      v25 = *(a1 + 56);
      v26 = *(a1 + 64);
      v29[4] = v24;
      v29[5] = v25;
      v35 = v17 == 2;
      v30 = v3;
      v31 = v16;
      v27 = *(a1 + 72);
      v32 = *(a1 + 48);
      v33 = v27;
      [v26 finishSessionWithUUID:v2 userDidConsent:v17 == 2 metadata:v18 completionHandler:v29];
    }

    else
    {
      __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_3_cold_2();
    }
  }

  else
  {
    v8 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v9 = [v8 isSensitiveLoggingAllowed];

    if (v9 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_3_cold_3(a1);
    }

    if (*(a1 + 80))
    {
      [*(a1 + 40) _handleTestVerificationErrors:*(*(*(a1 + 88) + 8) + 40)];
    }

    [*(a1 + 48) setDiagnosisKeysPreAuthorization:0];
    v10 = *(a1 + 72);
    v11 = *(a1 + 48);
    v12 = *(*(a1 + 88) + 8);
    v28 = *(v12 + 40);
    [v10 saveRegionConfiguration:v11 error:&v28];
    v13 = v28;
    v3 = *(v12 + 40);
    *(v12 + 40) = v13;
  }
}

void __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v7 = [v6 isSensitiveLoggingAllowed];

  if ((a2 & 1) == 0)
  {
    if (v7 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_4_cold_1(v5);
      if (!v5)
      {
        goto LABEL_25;
      }
    }

    else if (!v5)
    {
      goto LABEL_25;
    }

    [*(a1 + 32) _handleTestVerificationErrors:*(*(*(a1 + 80) + 8) + 40)];
    goto LABEL_25;
  }

  if (v7)
  {
    if (_MergedGlobals <= 30)
    {
      if (_MergedGlobals != -1 || (v8 = _LogCategory_Initialize(), v8))
      {
        __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_4_cold_2(v8, v9, v10);
      }
    }
  }

  [*(a1 + 32) postPreAuthorizationNotificationForRegion:*(a1 + 40)];
  v11 = [*(a1 + 32) differentialPrivacyManager];
  if (v11)
  {
    v12 = *(a1 + 88);

    if (v12)
    {
      v13 = [*(a1 + 32) _getLatestExposureForDifferentialPrivacy];
      v14 = +[ENLoggingPrefs sharedENLoggingPrefs];
      v15 = [v14 isSensitiveLoggingAllowed];

      if (v15 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_4_cold_3(v13, a1);
      }

      v16 = [*(a1 + 32) differentialPrivacyManager];
      [v16 reportUserKeysUploaded:v13 reportType:{objc_msgSend(*(a1 + 48), "unsignedIntValue")}];

      v17 = [*(a1 + 56) isUserVaccinated];
      v18 = [*(a1 + 32) _getDiagnosedVaccineStatusForDifferentialPrivacyWithUserVaccinationStatus:v17];
      if (v18)
      {
        v19 = [*(a1 + 32) differentialPrivacyManager];
        [v19 reportUserDiagnosedVaccineStatus:v18];
      }

      else
      {
        v20 = +[ENLoggingPrefs sharedENLoggingPrefs];
        v21 = [v20 isSensitiveLoggingAllowed];

        if (v21)
        {
          if (_MergedGlobals <= 90)
          {
            if (_MergedGlobals != -1 || (v22 = _LogCategory_Initialize(), v22))
            {
              __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_4_cold_4(v22, v23, v24);
            }
          }
        }
      }
    }
  }

LABEL_25:
  [*(a1 + 64) setDiagnosisKeysPreAuthorization:0];
  v26 = *(a1 + 64);
  v25 = *(a1 + 72);
  v27 = *(*(a1 + 80) + 8);
  obj = *(v27 + 40);
  [v25 saveRegionConfiguration:v26 error:&obj];
  objc_storeStrong((v27 + 40), obj);
}

- (void)_handleTestVerificationErrors:(id)errors
{
  v4 = [errors code] - 2;
  if (v4 > 0xB)
  {
    v6 = @"VERIFICATION_FAILED_GENERIC_ERROR_MESSAGE";
    v5 = @"VERIFICATION_FAILED_GENERIC_ERROR_TITLE";
  }

  else
  {
    v5 = *(&off_278FD2118 + v4);
    v6 = *(&off_278FD2178 + v4);
  }

  [(ENDaemon *)self postGeneralNotificationWithTitle:v5 message:v6];
}

- (void)enqueueScreenUnlockAction:(id)action withIdentifier:(id)identifier
{
  actionCopy = action;
  identifierCopy = identifier;
  if (actionCopy)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__ENDaemon_enqueueScreenUnlockAction_withIdentifier___block_invoke;
    block[3] = &unk_278FD19D8;
    block[4] = self;
    v11 = actionCopy;
    v10 = identifierCopy;
    dispatch_async(dispatchQueue, block);
  }

  else
  {
    [ENDaemon enqueueScreenUnlockAction:withIdentifier:];
  }
}

- (void)_enqueueScreenUnlockAction:(id)action withIdentifier:(id)identifier
{
  actionCopy = action;
  identifierCopy = identifier;
  if ([(ENDaemon *)self isDeviceUnlocked])
  {
    actionCopy[2]();
  }

  else
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _enqueueScreenUnlockAction:identifierCopy withIdentifier:?];
    }

    screenUnlockPendingActions = [(ENDaemon *)self screenUnlockPendingActions];
    v8 = MEMORY[0x24C214430](actionCopy);
    [screenUnlockPendingActions setObject:v8 forKey:identifierCopy];
  }
}

- (void)_xpcListenerEvent:(id)event
{
  eventCopy = event;
  v4 = MEMORY[0x24C214BB0]();
  if (v4 == MEMORY[0x277D86450])
  {
    [(ENDaemon *)self _xpcConnectionAccept:eventCopy];
    goto LABEL_8;
  }

  v6 = eventCopy;
  if (eventCopy == MEMORY[0x277D863F8])
  {
    if (_MergedGlobals <= 30)
    {
      if (_MergedGlobals != -1 || (v4 = _LogCategory_Initialize(), v6 = eventCopy, v4))
      {
        [(ENDaemon *)v4 _xpcListenerEvent:v6, v5];
        goto LABEL_8;
      }
    }
  }

  else if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (v7 = _LogCategory_Initialize(), v6 = eventCopy, v7))
    {
      [ENDaemon _xpcListenerEvent:];
LABEL_8:
      v6 = eventCopy;
    }
  }
}

- (void)_xpcConnectionAccept:(id)accept
{
  acceptCopy = accept;
  pid = xpc_connection_get_pid(acceptCopy);
  xpc_connection_get_audit_token();
  memset(v14, 0, sizeof(v14));
  v6 = [ENXPCClient clientWithAuditToken:v14 pid:pid];
  if ([v6 entitledForLogging])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained setENAppHasLoggingEntitlement:1];

    v8 = +[ENLoggingPrefs sharedENLoggingPrefs];
    [v8 setLoggingEntitledApp:1];
  }

  if (_MergedGlobals <= 20 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [(ENDaemon *)pid _xpcConnectionAccept:v6];
  }

  v9 = objc_alloc_init(ENXPCConnection);
  [(ENXPCConnection *)v9 setClient:v6];
  [(ENXPCConnection *)v9 setDaemon:self];
  [(ENXPCConnection *)v9 setDispatchQueue:self->_dispatchQueue];
  [(ENXPCConnection *)v9 setXpcCnx:acceptCopy];
  if (([v6 entitledToSkipFileSigningVerification] & 1) != 0 || -[ENDaemon prefSkipFileSigning](self, "prefSkipFileSigning"))
  {
    [(ENXPCConnection *)v9 setSkipFileSigningVerification:1];
    if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _xpcConnectionAccept:?];
    }
  }

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __33__ENDaemon__xpcConnectionAccept___block_invoke;
  handler[3] = &unk_278FD10A8;
  handler[4] = v9;
  xpc_connection_set_event_handler(acceptCopy, handler);
  xpc_connection_set_target_queue(acceptCopy, self->_dispatchQueue);
  xpc_connection_activate(acceptCopy);
  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB50]);
    v12 = self->_xpcConnections;
    self->_xpcConnections = v11;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v9];
  [(ENXPCConnection *)v9 activate];
}

- (void)xpcConnectionInvalidated:(id)invalidated
{
  [(NSMutableSet *)self->_xpcConnections removeObject:invalidated];

  [(ENDaemon *)self _scheduleUpdate];
}

- (void)xpcPreAuthorizedDiagnosisKeysAvailable
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_xpcConnections;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) xpcPreAuthorizedDiagnosisKeysAvailable];
      }

      while (v4 != v6);
      v4 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)xpcReportStatus
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_xpcConnections;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) xpcStatusChanged];
      }

      while (v4 != v6);
      v4 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (ENDaemonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_resetDeveloperSettings
{
  if (!IsAppleInternalBuild())
  {
    CFPrefs_RemoveValue();
    configurationStore = [(ENConfigurationManager *)self->_configurationManager configurationStore];
    [configurationStore clearTemporaryCountrySubdivisionList];
    [configurationStore clearTemporaryServerConfigurations];
    CFPrefs_RemoveValue();
  }
}

- (void)_deferConsentForPendingRegion
{
  v21[1] = *MEMORY[0x277D85DE8];
  _readPreferenceRegionPendingOnboarding = [(ENDaemon *)self _readPreferenceRegionPendingOnboarding];
  if (_readPreferenceRegionPendingOnboarding)
  {
    configurationStore = [(ENConfigurationManager *)self->_configurationManager configurationStore];
    v5 = [configurationStore configurationForRegion:_readPreferenceRegionPendingOnboarding];

    if (v5)
    {
      userConsent = [v5 userConsent];
      consent = [userConsent consent];

      if (!consent)
      {
        if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&_MergedGlobals, "[ENDaemon _deferConsentForPendingRegion]", 50, "ENBuddy could not complete. Defer consent for pendingRegion");
        }

        userConsent2 = [v5 userConsent];
        [userConsent2 setConsent:3];

        configurationStore2 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
        v20 = 0;
        v10 = [configurationStore2 saveRegionConfiguration:v5 error:&v20];
        v11 = v20;

        if (v10)
        {
          activeEntity = [(ENDaemon *)self activeEntity];
          entity = [activeEntity entity];
          region = [entity region];
          v15 = [_readPreferenceRegionPendingOnboarding isEqual:region];

          if (v15)
          {
            if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&_MergedGlobals, "[ENDaemon _deferConsentForPendingRegion]", 50, "Active region deferred. Turn off EN");
            }

            [(ENDaemon *)self _turnOffEN];
          }

          userNotificationCenter = [(ENDaemon *)self userNotificationCenter];
          v21[0] = @"com.apple.ExposureNotification.onboarding";
          v17 = [MEMORY[0x277CBEA68] arrayWithObjects:v21 count:1];
          [userNotificationCenter removeDeliveredNotificationsWithIdentifiers:v17];

          onboardingManager = [(ENDaemon *)self onboardingManager];
          [onboardingManager setShouldObserveDeviceUnlocks:0];

          onboardingManager2 = [(ENDaemon *)self onboardingManager];
          [onboardingManager2 setPendingBuddyOnboarding:0];
        }

        else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_281346508, "[ENDaemon _deferConsentForPendingRegion]", 90, "Failed to save region config with error: %@", v11);
        }
      }
    }

    else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_281346508, "[ENDaemon _deferConsentForPendingRegion]", 90, "Nil region configuration");
    }
  }
}

- (void)_databasesEnsureOpened
{
  v7 = 0;
  v3 = [(ENDaemon *)self getExposureDatabaseAndReturnError:&v7];
  v4 = v7;
  if (!v3 && dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    v5 = CUPrintNSError();
    LogPrintF_safe(&dword_281346508, "[ENDaemon _databasesEnsureOpened]", 90, "Unable to open exposure database: %@", v5);
  }

  if ([(CUSystemMonitor *)self->_systemMonitor systemLockState]!= 3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained switchToCentralAdvertisementStoreAsync];
  }
}

- (void)_periodicPersistencePurge
{
  if (self->_persistencePurgeScheduler)
  {
    [(ENDaemon *)self _databasesEnsureOpened];
    CFPrefs_GetDouble();
    v4 = v3;
    v5 = IsAppleInternalBuild();
    if (v4 <= 0.0 || v5 == 0)
    {
      v4 = 1209600.0;
    }

    date = [MEMORY[0x277CBEAA0] date];
    v8 = [date dateByAddingTimeInterval:-v4];
    CFPrefs_GetDouble();
    v10 = v9;
    if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      identifier = [(NSBackgroundActivityScheduler *)self->_persistencePurgeScheduler identifier];
      LogPrintF_safe(&_MergedGlobals, "[ENDaemon _periodicPersistencePurge]", 50, "Performing %@: purging records older than %@", identifier, v8);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained performPeriodicAdvertisementDatabasePurgeWithDate:v8];

    v29 = 0;
    v13 = [(ENDaemon *)self getExposureDatabaseAndReturnError:&v29];
    v14 = v29;
    v15 = v14;
    if (!v13 || (v28 = v14, v16 = [v13 purgeRecordsWithInterval:date nowDate:&v28 error:v4], v17 = v28, v15, v15 = v17, (v16 & 1) == 0))
    {
      if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        v18 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENDaemon _periodicPersistencePurge]", 90, "Failed purge keys from exposure database: %@", v18);
      }
    }

    regionMonitor = self->_regionMonitor;
    v27 = v15;
    v20 = [(ENRegionMonitor *)regionMonitor purgeRegionsOlderThanDate:v8 error:&v27];
    v21 = v27;

    if (!v20 && dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      v22 = CUPrintNSError();
      LogPrintF_safe(&dword_281346508, "[ENDaemon _periodicPersistencePurge]", 90, "Failed purge regions from regionsCache: %@", v22);
    }

    [(ENDownloadManager *)self->_downloadManager purgeExpiredDownloadsWithDate:v8];
    [(ENTextMessageManager *)self->_textMessageManager purgeOldHashes];
    activeEntity = self->_activeEntity;
    if ((!activeEntity || [(ENActiveEntity *)activeEntity activeStatus]== 1) && v10 > 0.0)
    {
      [date timeIntervalSince1970];
      if (v24 - v10 > v4)
      {
        if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&_MergedGlobals, "[ENDaemon _periodicPersistencePurge]", 50, "System has been off for more than 14 days, reset...");
        }

        CFDataGetTypeID();
        v25 = CFPrefs_CopyTypedValue();
        if (v25)
        {
          v26 = 3839;
        }

        else
        {
          v26 = 4095;
        }

        [(ENDaemon *)self _resetDataWithFlags:v26];
      }
    }

    [(ENDaemon *)self _scheduleUpdate];
  }
}

- (id)advertisementDatabaseQuerySessionWithAttenuationThreshold:(unsigned __int8)threshold error:(id *)error
{
  thresholdCopy = threshold;
  v6 = [(ENDaemon *)self _getDelegateAndReturnError:error];
  v7 = v6;
  if (v6)
  {
    v16 = 0;
    v8 = [v6 createAdvertisementQuerySessionWithThreshold:thresholdCopy error:&v16];
    v9 = v16;
    v10 = v9;
    if (!error || v8)
    {
      goto LABEL_10;
    }

    domain = [v9 domain];
    if ([domain isEqualToString:@"ENAdvertisementStoreErrorDomain"])
    {
      code = [v10 code];

      if (code == 6)
      {
        v13 = ENErrorF(16, "Database inaccessible");
LABEL_9:
        v14 = v13;
        *error = v14;

LABEL_10:
        goto LABEL_11;
      }
    }

    else
    {
    }

    v13 = ENNestedErrorF(v10, 11, "Create query session failed");
    goto LABEL_9;
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (id)_getDownloadEndpointsAndReturnError:(id *)error
{
  v69 = *MEMORY[0x277D85DE8];
  entity = [(ENActiveEntity *)self->_activeEntity entity];
  region = [entity region];

  _isNKDActive = [(ENDaemon *)self _isNKDActive];
  v7 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v7 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed && _MergedGlobals <= 10 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    v9 = @"<>";
    if (region)
    {
      v9 = region;
    }

    v10 = "no";
    if (_isNKDActive)
    {
      v10 = "yes";
    }

    LogPrintF_safe(&_MergedGlobals, "[ENDaemon _getDownloadEndpointsAndReturnError:]", 10, "Getting download endpoints with %@ region active, native download enabled %s", v9, v10);
  }

  if (region)
  {
    v11 = _isNKDActive;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = self->_regionMonitor;
    if (!v12)
    {
      if (error)
      {
        ENErrorF(11, "Nil region monitor");
        *error = v30 = 0;
      }

      else
      {
        v30 = 0;
      }

      goto LABEL_65;
    }

    configurationStore = [(ENConfigurationManager *)self->_configurationManager configurationStore];
    v14 = configurationStore;
    if (!configurationStore)
    {
      if (error)
      {
        ENErrorF(11, "Nil config store");
        *error = v30 = 0;
      }

      else
      {
        v30 = 0;
      }

      goto LABEL_64;
    }

    v52 = v12;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    allCachedRegions = [configurationStore allCachedRegions];
    v16 = [allCachedRegions countByEnumeratingWithState:&v63 objects:v68 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v64;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v64 != v19)
          {
            objc_enumerationMutation(allCachedRegions);
          }

          v21 = [v14 configurationForRegion:*(*(&v63 + 1) + 8 * i)];
          userConsent = [v21 userConsent];
          v18 |= [userConsent consent] == 2;
        }

        v17 = [allCachedRegions countByEnumeratingWithState:&v63 objects:v68 count:16];
      }

      while (v17);

      if (v18)
      {
        regionMonitor = self->_regionMonitor;
        v62 = 0;
        v24 = [(ENRegionMonitor *)regionMonitor getAllRegionsWithError:&v62];
        v25 = v62;
        v26 = v25;
        if (v24)
        {
LABEL_45:
          v51 = v26;
          v50 = v24;
          v31 = [objc_alloc(MEMORY[0x277CBEB50]) initWithSet:v24];
          [v31 addObject:region];
          v32 = objc_alloc_init(MEMORY[0x277CBEB30]);
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v33 = v31;
          v34 = [v33 countByEnumeratingWithState:&v58 objects:v67 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v59;
            do
            {
              for (j = 0; j != v35; ++j)
              {
                if (*v59 != v36)
                {
                  objc_enumerationMutation(v33);
                }

                v38 = *(*(&v58 + 1) + 8 * j);
                v39 = [v14 downloadConfigurationForRegion:v38];
                v40 = v39;
                if (v39)
                {
                  tekLocalDownloadBaseURL = [v39 tekLocalDownloadBaseURL];
                  v42 = [v32 objectForKeyedSubscript:tekLocalDownloadBaseURL];
                  if (!v42 || [v38 isEqual:region])
                  {
                    [v32 setObject:v40 forKeyedSubscript:tekLocalDownloadBaseURL];
                  }
                }

                else
                {
                  v43 = +[ENLoggingPrefs sharedENLoggingPrefs];
                  isSensitiveLoggingAllowed2 = [v43 isSensitiveLoggingAllowed];

                  if (isSensitiveLoggingAllowed2 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF_safe(&_MergedGlobals, "[ENDaemon _getDownloadEndpointsAndReturnError:]", 30, "Missing download configuration for %@", v38);
                  }
                }
              }

              v35 = [v33 countByEnumeratingWithState:&v58 objects:v67 count:16];
            }

            while (v35);
          }

          v45 = [v32 count] > 1;
          v46 = objc_alloc_init(MEMORY[0x277CBEB10]);
          v54[0] = MEMORY[0x277D85DD0];
          v54[1] = 3221225472;
          v54[2] = __48__ENDaemon__getDownloadEndpointsAndReturnError___block_invoke;
          v54[3] = &unk_278FD1850;
          v54[4] = v14;
          v55 = v46;
          v56 = region;
          v57 = v45;
          v47 = v46;
          [v32 enumerateKeysAndObjectsUsingBlock:v54];
          v30 = [v47 copy];

LABEL_63:
          v12 = v52;
LABEL_64:

LABEL_65:
          goto LABEL_66;
        }

        v27 = v25;
        domain = [v27 domain];
        if ([domain isEqualToString:*MEMORY[0x277CC5BD0]])
        {
          code = [v27 code];

          if (code == 4)
          {
            if (_MergedGlobals <= 10 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&_MergedGlobals, "[ENDaemon _getDownloadEndpointsAndReturnError:]", 10, "Region history unavailable for download endpoints", v49);
            }

LABEL_44:
            v24 = [MEMORY[0x277CBEB90] set];
            goto LABEL_45;
          }
        }

        else
        {
        }

        if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_281346508, "[ENDaemon _getDownloadEndpointsAndReturnError:]", 90, "Error getting region history for download endpoints: %@", v27);
        }

        goto LABEL_44;
      }
    }

    else
    {
    }

    if (_MergedGlobals <= 10)
    {
      v12 = v52;
      if (_MergedGlobals != -1 || _LogCategory_Initialize())
      {
        LogPrintF_safe(&_MergedGlobals, "[ENDaemon _getDownloadEndpointsAndReturnError:]", 10, "No regions consented, disabling download");
      }

      v30 = MEMORY[0x277CBEBF0];
      goto LABEL_64;
    }

    v30 = MEMORY[0x277CBEBF0];
    goto LABEL_63;
  }

  v30 = MEMORY[0x277CBEBF0];
LABEL_66:

  return v30;
}

void __48__ENDaemon__getDownloadEndpointsAndReturnError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 region];
  v8 = [*(a1 + 32) configurationForRegion:v7];
  if ([v8 enVersion] >= 2)
  {
    v9 = [ENDownloadEndpoint alloc];
    v10 = [v6 tekLocalDownloadIndexURL];
    [v6 tekPublishInterval];
    v12 = v11;
    v13 = [v6 region];
    v14 = [(ENDownloadEndpoint *)v9 initWithBaseURL:v5 indexURL:v10 interval:1 enabled:v13 region:v12];

    [*(a1 + 40) addObject:v14];
    v15 = [v6 region];
    LODWORD(v13) = [v15 isEqual:*(a1 + 48)];

    if (v13)
    {
      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        if (*(a1 + 56))
        {
          v16 = "yes";
        }

        else
        {
          v16 = "no";
        }

        v17 = [v6 travelerDownloadConfigurations];
        LogPrintF_safe(&_MergedGlobals, "-[ENDaemon _getDownloadEndpointsAndReturnError:]_block_invoke", 30, "User Traveled [%s], count [%lu]", v16, [v17 count]);
      }

      v18 = [v6 travelerDownloadConfigurations];
      v19 = [v18 count];

      if (v19 && *(a1 + 56))
      {
        v33 = v14;
        v34 = v8;
        v35 = v7;
        v36 = v5;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v20 = [v6 travelerDownloadConfigurations];
        v21 = [v20 countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v38;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v38 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v37 + 1) + 8 * i);
              v26 = [ENDownloadEndpoint alloc];
              v27 = [v25 tekTravelerDownloadBaseURL];
              v28 = [v25 tekTravelerDownloadIndexURL];
              [v6 tekPublishInterval];
              v30 = v29;
              v31 = [v6 region];
              v32 = [(ENDownloadEndpoint *)v26 initWithBaseURL:v27 indexURL:v28 interval:1 enabled:v31 region:v30];

              [*(a1 + 40) addObject:v32];
            }

            v22 = [v20 countByEnumeratingWithState:&v37 objects:v41 count:16];
          }

          while (v22);
        }

        v7 = v35;
        v5 = v36;
        v14 = v33;
        v8 = v34;
      }
    }
  }
}

- (void)_migrateLegacyHistoryIfNecessary
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = [(ENDaemon *)self loadLegacyHistorySinceTime:1209600.0];
  if (v3)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&_MergedGlobals, "-[ENDaemon _migrateLegacyHistoryIfNecessary]", 30, "Migrating %d legacy history entries", [v3 count]);
    }

    v43 = 0;
    v4 = [(ENDaemon *)self getExposureDatabaseAndReturnError:&v43];
    v5 = v43;
    v28 = v4;
    if (v4)
    {
      v42 = 0;
      v6 = [v4 openWithError:&v42];
      v7 = v42;
      if (v6)
      {
        selfCopy = self;
        v26 = v5;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v27 = v3;
        obj = v3;
        v33 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
        if (!v33)
        {
          goto LABEL_37;
        }

        v32 = *v39;
        v8 = v28;
        while (1)
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v39 != v32)
            {
              objc_enumerationMutation(obj);
            }

            CFStringGetTypeID();
            v10 = CFDictionaryGetTypedValue();
            v11 = NSDictionaryGetNSNumber();
            CFDataGetTypeID();
            v12 = CFDictionaryGetTypedValue();
            v34 = NSDictionaryGetNSNumber();
            v13 = NSDictionaryGetNSNumber();
            if (v10 && v12)
            {
              v14 = objc_alloc(MEMORY[0x277CBEAA0]);
              v30 = v11;
              [v11 doubleValue];
              v15 = [v14 initWithTimeIntervalSinceReferenceDate:?];
              v16 = objc_alloc_init(MEMORY[0x277CC5C48]);
              [v16 setAppBundleIdentifier:v10];
              [v16 setDate:v15];
              [v16 setFileCount:1];
              [v16 setMatchCount:{objc_msgSend(v13, "unsignedLongLongValue")}];
              v37 = v7;
              v17 = [v8 upsertExposureDetectionHistorySession:v16 error:&v37];
              v18 = v37;

              v31 = v15;
              if (v17)
              {
                v19 = objc_alloc_init(MEMORY[0x277CC5C40]);
                [v19 setFileHash:v12];
                [v19 setProcessDate:v15];
                [v19 setKeyCount:v34];
                [v19 setMatchCount:v13];
                [v19 setSourceAppBundleIdentifier:v10];
                v36 = v18;
                v20 = [v8 insertExposureDetectionFile:v19 session:v16 error:&v36];
                v7 = v36;

                if ((v20 & 1) == 0 && dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF_safe(&dword_281346508, "[ENDaemon _migrateLegacyHistoryIfNecessary]", 90, "### Failed insert migrated legacy history file: %@", v7);
                }

                v8 = v28;
LABEL_33:
                v11 = v30;
              }

              else
              {
                if (dword_281346508 > 90)
                {
                  v7 = v18;
                  goto LABEL_33;
                }

                v11 = v30;
                if (dword_281346508 != -1 || _LogCategory_Initialize())
                {
                  LogPrintF_safe(&dword_281346508, "[ENDaemon _migrateLegacyHistoryIfNecessary]", 90, "### Failed insert migrated legacy history session: %@", v18);
                }

                v7 = v18;
              }

              goto LABEL_35;
            }

            if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&dword_281346508, "[ENDaemon _migrateLegacyHistoryIfNecessary]", 90, "### Invalid legacy history entry: App %@, Time %@, Hash %@", v10, v11, v12);
            }

LABEL_35:
          }

          v33 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
          if (!v33)
          {
LABEL_37:

            legacyHistoryPath = [(ENDaemon *)selfCopy legacyHistoryPath];
            if (legacyHistoryPath)
            {
              defaultManager = [MEMORY[0x277CCAA08] defaultManager];
              v35 = 0;
              v23 = [defaultManager removeItemAtPath:legacyHistoryPath error:&v35];
              v24 = v35;

              if ((v23 & 1) == 0 && dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF_safe(&dword_281346508, "[ENDaemon _migrateLegacyHistoryIfNecessary]", 90, "### Failed to remove legacy history: %@", v24);
              }
            }

            v5 = v26;
            v3 = v27;
            goto LABEL_45;
          }
        }
      }

      if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_281346508, "[ENDaemon _migrateLegacyHistoryIfNecessary]", 90, "### History migration failed to open database: %@", v7);
      }

LABEL_45:
    }

    else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_281346508, "[ENDaemon _migrateLegacyHistoryIfNecessary]", 90, "### History migration failed to open database: %@", v5);
    }
  }
}

void __33__ENDaemon_loadHistorySinceTime___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 date];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;
  v9 = *(a1 + 56);

  if (v8 >= v9)
  {
    v10 = [v5 appBundleIdentifier];

    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = [v5 UUID];
      v13 = *(*(a1 + 48) + 8);
      v14 = *(v13 + 40);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __33__ENDaemon_loadHistorySinceTime___block_invoke_3;
      v15[3] = &unk_278FD18C0;
      v15[4] = *(a1 + 40);
      obj = v14;
      [v11 enumerateExposureDetectionHistoryFilesForSessionUUID:v12 error:&obj handler:v15];
      objc_storeStrong((v13 + 40), obj);
    }
  }

  else
  {
    *a3 = 1;
  }
}

- (void)init
{
  v2 = ENDataVaultURL();
  LogPrintF_safe(&_MergedGlobals, "[ENDaemon init]", 90, "Failed to include %@ from backup with error - %@", v2, self);
}

- (void)_readPreferenceActiveEntity
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_281346508, "[ENDaemon _readPreferenceActiveEntity]", 90, "### Failed to unarchive activeEntity, error, %@", self);
  }
}

- (void)_writePreferenceActiveEntity:(_BYTE *)a3 .cold.1(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_7();
    if (!v6 || _LogCategory_Initialize())
    {
      LogPrintF_safe(&dword_281346508, "[ENDaemon _writePreferenceActiveEntity:]", 90, "### Failed to archive activeEntity, %@, error, %@", v3, a2);
    }
  }

  *a3 = 0;
}

- (_BYTE)_writePreferenceActiveEntity:(_BYTE *)result .cold.2(_BYTE *result)
{
  v1 = result;
  if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe(&dword_281346508, "[ENDaemon _writePreferenceActiveEntity:]", 90, "### Requires activeEntity to write to preferences");
    }
  }

  *v1 = 0;
  return result;
}

- (void)_readPreferenceRegionPendingOnboarding
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_281346508, "[ENDaemon _readPreferenceRegionPendingOnboarding]", 90, "### Failed to unarchive region, error, %@", self);
  }
}

- (void)_writePreferenceRegionPendingOnboarding:(_BYTE *)a3 .cold.1(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_7();
    if (!v6 || _LogCategory_Initialize())
    {
      LogPrintF_safe(&dword_281346508, "[ENDaemon _writePreferenceRegionPendingOnboarding:]", 90, "### Failed to archive region, %@, error, %@", v3, a2);
    }
  }

  *a3 = 0;
}

- (_BYTE)_writePreferenceRegionPendingOnboarding:(_BYTE *)result .cold.2(_BYTE *result)
{
  v1 = result;
  if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe(&dword_281346508, "[ENDaemon _writePreferenceRegionPendingOnboarding:]", 90, "### Requires region to be onboarded to write to preferences");
    }
  }

  *v1 = 0;
  return result;
}

void __21__ENDaemon__activate__block_invoke_2_cold_1(char a1, id *a2)
{
  if (a1)
  {
    v2 = "yes";
  }

  else
  {
    v2 = "no";
  }

  v3 = [*a2 screenUnlockPendingActions];
  LogPrintF_safe(&_MergedGlobals, "-[ENDaemon _activate]_block_invoke_2", 30, "Screen lock changed: %s, actions: %lu", v2, [v3 count]);
}

- (void)_getBundleIDFromBundle:(void *)result .cold.1(void *result)
{
  v1 = result;
  if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe(&dword_281346508, "[ENDaemon _getBundleIDFromBundle:]", 90, "Failed to fetch app bundle");
    }
  }

  *v1 = 0;
  return result;
}

- (void)_getBundleIDFromBundle:(void *)result .cold.2(void *result)
{
  v1 = result;
  if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe(&dword_281346508, "[ENDaemon _getBundleIDFromBundle:]", 90, "Failed to fetch url for bundle");
    }
  }

  *v1 = 0;
  return result;
}

- (void)_getInfoDictFromBundle:(void *)result .cold.1(void *result)
{
  v1 = result;
  if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe(&dword_281346508, "[ENDaemon _getInfoDictFromBundle:]", 90, "Failed to fetch app bundle");
    }
  }

  *v1 = 0;
  return result;
}

- (void)_getInfoDictFromBundle:(void *)result .cold.2(void *result)
{
  v1 = result;
  if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe(&dword_281346508, "[ENDaemon _getInfoDictFromBundle:]", 90, "Failed to fetch url for bundle");
    }
  }

  *v1 = 0;
  return result;
}

- (void)_getInfoDictFromAppProxy:(void *)result .cold.1(void *result)
{
  v1 = result;
  if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe(&dword_281346508, "[ENDaemon _getInfoDictFromAppProxy:]", 90, "### No bundle for bundleURL");
    }
  }

  *v1 = 0;
  return result;
}

- (void)_getInfoDictFromAppProxy:(void *)result .cold.2(void *result)
{
  v1 = result;
  if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe(&dword_281346508, "[ENDaemon _getInfoDictFromAppProxy:]", 90, "### No bundleURL for proxy");
    }
  }

  *v1 = 0;
  return result;
}

- (void)_getDelegateAndReturnError:(void *)result .cold.1(void *result)
{
  if (result)
  {
    v1 = result;
    result = ENErrorF(11, "Nil daemon delegate");
    *v1 = result;
  }

  return result;
}

- (uint64_t)_updateOverallStatus
{
  if (self > 6)
  {
    v2 = "?";
  }

  else
  {
    v2 = off_278FD20E0[self];
  }

  if (a2 > 6)
  {
    v3 = "?";
  }

  else
  {
    v3 = off_278FD20E0[a2];
  }

  return LogPrintF_safe(&_MergedGlobals, "[ENDaemon _updateOverallStatus]", 30, "Overall status changed: %s -> %s", v2, v3);
}

- (uint64_t)notifyUserWithStatus:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 overallStatus];
  if (v1 > 6)
  {
    v2 = "?";
  }

  else
  {
    v2 = off_278FD20E0[v1];
  }

  return LogPrintF_safe(&_MergedGlobals, "[ENDaemon notifyUserWithStatus:]", 30, "NotifyStatusUpdate alert user new status: %s", v2);
}

void __23__ENDaemon_pauseUpdate__block_invoke_cold_1(uint64_t a1)
{
  v1 = CUPrintDateCF();
  LogPrintF_safe(&_MergedGlobals, "[ENDaemon pauseUpdate]_block_invoke", 30, "Unpause timer fired: %@", v1);
}

- (uint64_t)prefsChanged
{
  OUTLINED_FUNCTION_6();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF_safe(&_MergedGlobals, "[ENDaemon prefsChanged]", 30, "Monthly Summary Disabled: %s -> %s", v2, v0);
}

- (void)_resetDataWithFlags:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = CUPrintFlags32();
  LogPrintF_safe(&_MergedGlobals, "[ENDaemon _resetDataWithFlags:]", 50, "ResetData %@", v1);
}

- (void)_resetDataWithFlags:(uint64_t)a1 .cold.10(uint64_t a1)
{
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8();
  LogPrintF_safe(&dword_281346508, "[ENDaemon _resetDataWithFlags:]", 90, "Error resetting region history: %@");
}

void __56__ENDaemon__fetchPrefRegionConfig_oldCustomCountryCode___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = CUPrintNSError();
  LogPrintF_safe(&dword_281346508, "[ENDaemon _fetchPrefRegionConfig:oldCustomCountryCode:]_block_invoke", 90, "server configuration fetch failed for %@ : %@", v2, v3);
}

void __56__ENDaemon__fetchPrefRegionConfig_oldCustomCountryCode___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = CUPrintNSError();
  LogPrintF_safe(&dword_281346508, "[ENDaemon _fetchPrefRegionConfig:oldCustomCountryCode:]_block_invoke", 90, "failed to save temp server config for %@ : %@", v2, v3);
}

- (uint64_t)_tccChanged
{
  v2 = "yes";
  if (!self)
  {
    v2 = "no";
  }

  return LogPrintF_safe(&_MergedGlobals, "[ENDaemon _tccChanged]", 50, "TCC successfully reset for %@ ? - %s", a2, v2);
}

- (void)monthlyTriggerActivateWithIntervalOverride:(uint64_t)a1 .cold.2(uint64_t a1, double a2)
{
  switch(a1)
  {
    case 60:
      v2 = "1 Minute";
      break;
    case 300:
      v2 = "5 Minutes";
      break;
    case 900:
      v2 = "15 Minutes";
      break;
    case 1800:
      v2 = "30 Minutes";
      break;
    case 3600:
      v2 = "1 Hour";
      break;
    case 14400:
      v2 = "4 Hours";
      break;
    case 28800:
      v2 = "8 Hours";
      break;
    case 86400:
      v2 = "1 Day";
      break;
    case 604800:
      v2 = "7 Days";
      break;
    case 2592000:
      v2 = "1 Month";
      break;
    default:
      v2 = "Custom";
      break;
  }

  v3 = CUPrintDurationDouble();
  LogPrintF_safe(&_MergedGlobals, "[ENDaemon monthlyTriggerActivateWithIntervalOverride:]", 30, "Test trigger with %s cadence %@ seconds delay and 10s grace period", v2, v3);
}

- (void)monthlyTriggerActivateWithIntervalOverride:(uint64_t)a3 .cold.3(const char *a1, uint64_t a2, uint64_t a3)
{
  v9 = NSStringFromSelector(a1);
  if (*(a2 + 118))
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  v5 = *(a2 + 344);
  if (v5 > 6)
  {
    v6 = "?";
  }

  else
  {
    v6 = off_278FD20E0[v5];
  }

  v7 = CUPrintDuration32();
  v8 = [a2 monthlyNotificationTimer];
  LogPrintF_safe(&_MergedGlobals, "[ENDaemon monthlyTriggerActivateWithIntervalOverride:]", 30, "%@, exit early, monthlySummaryDisabled: %s, overall status: %s, interval: %@, monthlyNotificationTimer: %@", v9, v4, v6, v7, v8);
}

- (uint64_t)updateExistingConsentForPhase1ActiveRegion:(void *)a1 .cold.1(void *a1, unint64_t a2)
{
  if (a2 > 4)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_278FD2090[a2];
  }

  return LogPrintF_safe(&_MergedGlobals, "[ENDaemon updateExistingConsentForPhase1ActiveRegion:]", 30, "Updating region consent for %@ to %s", *a1, v4, v2, v3);
}

- (void)updateExistingConsentForPhase1ActiveRegion:.cold.3()
{
  if (_MergedGlobals <= 10 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {

    LogPrintF_safe(&_MergedGlobals, "[ENDaemon updateExistingConsentForPhase1ActiveRegion:]", 10, "Current Active Entity is not Phase 1");
  }
}

- (void)appLaunchWithBundleID:(uint64_t)a1 activity:(char)a2 shouldEnterForeground:(uint64_t)a3 requiredRuntimeInSeconds:(uint64_t)a4 .cold.1(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = CUPrintFlags32();
  v9 = v7;
  v8 = "no";
  if (a2)
  {
    v8 = "yes";
  }

  LogPrintF_safe(&_MergedGlobals, "[ENDaemon appLaunchWithBundleID:activity:shouldEnterForeground:requiredRuntimeInSeconds:]", 30, "LaunchApp start: bundleID %@, activity %@, shouldEnterForeground: %s, requiredRuntimeInSeconds: %d", a3, v7, v8, a4);
}

void __90__ENDaemon_appLaunchWithBundleID_activity_shouldEnterForeground_requiredRuntimeInSeconds___block_invoke_540_cold_1(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = CUPrintFlags32();
  LogPrintF_safe(&_MergedGlobals, "[ENDaemon appLaunchWithBundleID:activity:shouldEnterForeground:requiredRuntimeInSeconds:]_block_invoke", 30, "LaunchApp completed: bundleID %@, activity %@, PID %d", v3, v4, a2);
}

void __90__ENDaemon_appLaunchWithBundleID_activity_shouldEnterForeground_requiredRuntimeInSeconds___block_invoke_540_cold_2(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = CUPrintFlags32();
  LogPrintF_safe(&_MergedGlobals, "[ENDaemon appLaunchWithBundleID:activity:shouldEnterForeground:requiredRuntimeInSeconds:]_block_invoke", 90, "### LaunchApp assertion failed: bundleID %@, activity %@, PID %d", v4, v5, a3);
}

void __90__ENDaemon_appLaunchWithBundleID_activity_shouldEnterForeground_requiredRuntimeInSeconds___block_invoke_540_cold_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = CUPrintFlags32();
  v3 = CUPrintNSError();
  LogPrintF_safe(&_MergedGlobals, "[ENDaemon appLaunchWithBundleID:activity:shouldEnterForeground:requiredRuntimeInSeconds:]_block_invoke", 90, "### LaunchApp failed: bundleID %@, activity %@, %@", v2, v4, v3);
}

void __90__ENDaemon_appLaunchWithBundleID_activity_shouldEnterForeground_requiredRuntimeInSeconds___block_invoke_2_cold_1(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = CUPrintFlags32();
  LogPrintF_safe(&_MergedGlobals, "[ENDaemon appLaunchWithBundleID:activity:shouldEnterForeground:requiredRuntimeInSeconds:]_block_invoke_2", 30, "LaunchApp assertion end: bundleID %@, activity %@, PID %d", v2, v3, *(a1 + 52));
}

- (void)postAnalyticsOptInNotificationForRegion:.cold.2()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF_safe(&dword_281346508, "[ENDaemon postAnalyticsOptInNotificationForRegion:]", 90, "Configuration for %@'s not authorized for analytics consent", v0);
    }
  }
}

- (void)postAnalyticsOptInNotificationForRegion:.cold.3()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF_safe(&dword_281346508, "[ENDaemon postAnalyticsOptInNotificationForRegion:]", 90, "Invalid version for %@ configuration for analytics consent", v0);
    }
  }
}

- (void)postAnalyticsOptInNotificationForRegion:.cold.4()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF_safe(&dword_281346508, "[ENDaemon postAnalyticsOptInNotificationForRegion:]", 90, "No configuration available for %@'s analytics consent", v0);
    }
  }
}

- (void)postAnalyticsOptInNotificationForRegion:(uint64_t)a3 .cold.5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2(&dword_281346508, "[ENDaemon postAnalyticsOptInNotificationForRegion:]", a3, "postAnalyticsOptInNotificationForRegion, Nil region");
  }
}

- (void)postExposureSummaryAccessNotificationWithAppBundleIdentifier:(uint64_t)a3 string:.cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2(&dword_281346508, "[ENDaemon postExposureSummaryAccessNotificationWithAppBundleIdentifier:string:]", a3, "### Invalid app bundle ID. Cannot trigger notification");
  }
}

- (void)postGeneralNotificationWithTitle:(uint64_t)a3 message:.cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2(&dword_281346508, "[ENDaemon postGeneralNotificationWithTitle:message:]", a3, "Nil title or message");
  }
}

- (void)postMonthlySummaryNotificationForAppBundleIdentifier:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2(&dword_281346508, "[ENDaemon postMonthlySummaryNotificationForAppBundleIdentifier:]", a3, "### Invalid app bundle ID. Cannot trigger monthly notification");
  }
}

- (void)postOnboardingNotificationForRegion:.cold.3()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF_safe(&dword_281346508, "[ENDaemon postOnboardingNotificationForRegion:]", 90, "Invalid version for %@ configuration during onboarding", v0);
    }
  }
}

- (void)postOnboardingNotificationForRegion:.cold.4()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF_safe(&dword_281346508, "[ENDaemon postOnboardingNotificationForRegion:]", 90, "No configuration available for %@'s onboarding", v0);
    }
  }
}

- (void)postOnboardingNotificationForRegion:(uint64_t)a3 .cold.5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2(&dword_281346508, "[ENDaemon postOnboardingNotificationForRegion:]", a3, "Nil region");
  }
}

- (void)postPreAuthorizationNotificationForRegion:(void *)a1 .cold.2(void *a1, uint64_t a2)
{
  v3 = a1;
  if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (v4 = _LogCategory_Initialize(), v3 = a1, v4))
    {
      LogPrintF_safe(&dword_281346508, "[ENDaemon postPreAuthorizationNotificationForRegion:]", 90, "No server configuration available for %@'s pre-authrization", a2);
      v3 = a1;
    }
  }
}

- (void)postPreAuthorizationNotificationForRegion:.cold.3()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF_safe(&dword_281346508, "[ENDaemon postPreAuthorizationNotificationForRegion:]", 90, "No server configuration available for %@'s pre-authrization", v0);
    }
  }
}

- (void)postPreAuthorizationNotificationForRegion:.cold.4()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF_safe(&dword_281346508, "[ENDaemon postPreAuthorizationNotificationForRegion:]", 90, "No agency configuration available for %@'s pre-authrization", v0);
    }
  }
}

- (void)postPreAuthorizationNotificationForRegion:(uint64_t)a3 .cold.5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2(&dword_281346508, "[ENDaemon postPreAuthorizationNotificationForRegion:]", a3, "Nil region");
  }
}

- (uint64_t)postTestVerificationReceivedNotification:(uint64_t)result region:(uint64_t)a2 reportType:(void *)a3 .cold.2(uint64_t result, uint64_t a2, void *a3)
{
  if (dword_281346508 <= 90)
  {
    v5 = result;
    if (dword_281346508 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe(&dword_281346508, "[ENDaemon postTestVerificationReceivedNotification:region:reportType:]", 90, "No testVerificationNotificationBody for %@'s text message", v5);
    }
  }

  *a3 = a2;
  return result;
}

- (void)postTestVerificationReceivedNotification:(uint64_t)a1 region:(void *)a2 reportType:.cold.3(uint64_t a1, void *a2)
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_7();
    if (!v4 || _LogCategory_Initialize())
    {
      LogPrintF_safe(&dword_281346508, "[ENDaemon postTestVerificationReceivedNotification:region:reportType:]", 90, "Region %@ doesn't support self-reported test verification", v2);
    }
  }

  *a2 = 0;
}

- (void)postTestVerificationReceivedNotification:region:reportType:.cold.4()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_281346508, "[ENDaemon postTestVerificationReceivedNotification:region:reportType:]", 90, "User is not on ENX", v0, v1);
  }
}

- (void)postTestVerificationReceivedNotification:region:reportType:.cold.5()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF_safe(&dword_281346508, "[ENDaemon postTestVerificationReceivedNotification:region:reportType:]", 90, "Invalid version for %@ configuration during test verification", v0);
    }
  }
}

- (void)postTestVerificationReceivedNotification:region:reportType:.cold.6()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF_safe(&dword_281346508, "[ENDaemon postTestVerificationReceivedNotification:region:reportType:]", 90, "No server configuration available for %@'s text message", v0);
    }
  }
}

- (void)postTestVerificationReceivedNotification:(void *)a1 region:(uint64_t)a2 reportType:.cold.7(void *a1, uint64_t a2)
{
  v3 = a1;
  if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (v4 = _LogCategory_Initialize(), v3 = a1, v4))
    {
      LogPrintF_safe(&dword_281346508, "[ENDaemon postTestVerificationReceivedNotification:region:reportType:]", 90, "No selfReportNotificationBody for %@'s text message", a2);
      v3 = a1;
    }
  }
}

- (void)postTestVerificationReceivedNotification:region:reportType:.cold.8()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF_safe(&dword_281346508, "[ENDaemon postTestVerificationReceivedNotification:region:reportType:]", 90, "No agency configuration available for %@'s text message", v0);
    }
  }
}

- (void)postTestVerificationReceivedNotification:(uint64_t)a1 region:(uint64_t)a2 reportType:(uint64_t)a3 .cold.9(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2(&dword_281346508, "[ENDaemon postTestVerificationReceivedNotification:region:reportType:]", a3, "Invalid test verification URL in message");
  }
}

- (void)postTestVerificationReceivedNotification:(uint64_t)a1 region:(uint64_t)a2 reportType:(uint64_t)a3 .cold.10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2(&dword_281346508, "[ENDaemon postTestVerificationReceivedNotification:region:reportType:]", a3, "Nil region for text message");
  }
}

- (void)postTestVerificationReceivedNotification:(uint64_t)a1 region:(uint64_t)a2 reportType:(uint64_t)a3 .cold.11(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2(&dword_281346508, "[ENDaemon postTestVerificationReceivedNotification:region:reportType:]", a3, "Nil text message");
  }
}

- (void)postExposureNotification:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2(&dword_281346508, "[ENDaemon postExposureNotification:]", a3, "Nil region");
  }
}

void __73__ENDaemon__postUserNotificationWithRequest_authorizationFailureHandler___block_invoke_3_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) content];
  v3 = [v4 threadIdentifier];
  LogPrintF_safe(&dword_281346508, "[ENDaemon _postUserNotificationWithRequest:authorizationFailureHandler:]_block_invoke_3", 90, "### addNotificationRequest failed for %@: %@", v3, a2);
}

- (void)remoteAlertHandle:(void *)a1 didInvalidateWithError:.cold.3(void *a1)
{
  v1 = [MEMORY[0x277CCABA8] numberWithInteger:{objc_msgSend(a1, "code")}];
  LogPrintF_safe(&_MergedGlobals, "[ENDaemon remoteAlertHandle:didInvalidateWithError:]", 90, "HealthENBuddy alert handle invalidated with code %@", v1);
}

- (void)_enApplicationDidInstall:.cold.2()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF_safe(&dword_281346508, "[ENDaemon _enApplicationDidInstall:]", 90, "no bundle for %@", v0);
    }
  }
}

- (void)_enApplicationDidInstall:.cold.4()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF_safe(&dword_281346508, "[ENDaemon _enApplicationDidInstall:]", 90, "no bundleURL for %@", v0);
    }
  }
}

- (void)_enApplicationDidInstall:.cold.5()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF_safe(&dword_281346508, "[ENDaemon _enApplicationDidInstall:]", 90, "no bundle ID for installed app %@", v0);
    }
  }
}

- (void)_enApplicationDidUninstall:.cold.3()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF_safe(&dword_281346508, "[ENDaemon _enApplicationDidUninstall:]", 90, "no bundle ID for uninstalled app %@", v0);
    }
  }
}

- (uint64_t)bluetoothPowerStateChanged
{
  v1 = "off";
  if (self)
  {
    v1 = "on";
  }

  return LogPrintF_safe(&_MergedGlobals, "[ENDaemon bluetoothPowerStateChanged]", 30, "Bluetooth power state changed: %s", v1);
}

- (void)fetchServerConfigurationForAppBundleIdentifier:infoDictionary:.cold.2()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF_safe(&dword_281346508, "[ENDaemon fetchServerConfigurationForAppBundleIdentifier:infoDictionary:]", 90, "failed to create region for %@", v0);
    }
  }
}

void __51__ENDaemon_startServerConfigurationFetchForRegion___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_7();
    if (!v4 || _LogCategory_Initialize())
    {
      LogPrintF_safe(&dword_281346508, "[ENDaemon startServerConfigurationFetchForRegion:]_block_invoke", 90, "Invalid region config for %@, error - %@", *v2, a2);
    }
  }
}

- (uint64_t)fetchServerConfigurationForRegion:(void *)a1 completion:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  v4 = [a1 enVersion];
  v5 = [a1 enEnabled];
  v6 = "no";
  if (v5)
  {
    v6 = "yes";
  }

  return LogPrintF_safe(&_MergedGlobals, "[ENDaemon fetchServerConfigurationForRegion:completion:]", 30, "Pre-Downloaded Server Configuration for %@, Version: %lu, Server Enabled: %s", a2, v4, v6);
}

uint64_t __57__ENDaemon_fetchServerConfigurationForRegion_completion___block_invoke_2_cold_1(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = [a2 enVersion];
  v5 = [a2 enEnabled];
  v6 = "no";
  if (v5)
  {
    v6 = "yes";
  }

  return LogPrintF_safe(&_MergedGlobals, "[ENDaemon fetchServerConfigurationForRegion:completion:]_block_invoke_2", 30, "Fetched Server Configuration for %@, Version: %lu, Server Enabled: %s", v3, v4, v6);
}

- (void)_updatePhase1ConfigurationIfNeeded:.cold.1()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF_safe(&dword_281346508, "[ENDaemon _updatePhase1ConfigurationIfNeeded:]", 90, "### Bundle ID %@ does not have TCC access ", v0);
    }
  }
}

- (void)_updatePhase1ConfigurationIfNeeded:(uint64_t)a3 .cold.3(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = [*a1 entity];
  v6 = [v5 region];
  v7 = v6;
  v8 = @"<>";
  if (v6)
  {
    v8 = v6;
  }

  LogPrintF_safe(&dword_281346508, "[ENDaemon _updatePhase1ConfigurationIfNeeded:]", 90, "Active region not yet set for %@, config region:%@, active region: %@", a2, a3, v8);
}

- (void)_updatePhase1ConfigurationIfNeeded:(void *)a1 .cold.4(void *a1, void *a2)
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_281346508, "[ENDaemon _updatePhase1ConfigurationIfNeeded:]", 90, "### No infoDict for trackedApp");
  }
}

- (void)_updatePhase1ConfigurationIfNeeded:(uint64_t)a3 .cold.5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2(&dword_281346508, "[ENDaemon _updatePhase1ConfigurationIfNeeded:]", a3, "### No Bundle ID for trackedApp");
  }
}

- (void)_updatePhase1ConfigurationIfNeeded:(uint64_t)a3 .cold.6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2(&dword_281346508, "[ENDaemon _updatePhase1ConfigurationIfNeeded:]", a3, "### No proxy for trackedApp");
  }
}

- (void)_exposureNotificationRegionConfigurationRemoved:.cold.1()
{
  if (_MergedGlobals <= 30)
  {
    OUTLINED_FUNCTION_5();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF_safe(&_MergedGlobals, "[ENDaemon _exposureNotificationRegionConfigurationRemoved:]", 30, "No active entity to remove for region %@", v0);
    }
  }
}

- (void)getExposureDatabaseAndReturnError:(void *)a1 .cold.1(void *a1, id a2)
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    v4 = CUPrintNSError();
    LogPrintF_safe(&dword_281346508, "[ENDaemon getExposureDatabaseAndReturnError:]", 90, "Failed to open exposure database: %@", v4);
  }

  if (a1)
  {
    v5 = a2;
    *a1 = a2;
  }
}

- (_DWORD)stateMetricVersion
{
  v1 = result;
  if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe(&dword_281346508, "[ENDaemon stateMetricVersion]", 90, "### No server configs available");
    }
  }

  *v1 = 6;
  return result;
}

- (void)exposureDetectionManager:(void *)a1 finishedSessionWithResult:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  v3 = [a1 name];
  v5 = v3;
  v4 = @"<none>";
  if (v3)
  {
    v4 = v3;
  }

  LogPrintF_safe(&_MergedGlobals, "[ENDaemon exposureDetectionManager:finishedSessionWithResult:]", 50, "Exposure detection result: %@ (%ld)", v4, a2);
}

- (void)exposureDetectionManager:finishedSessionWithResult:.cold.2()
{
  v0 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v1 = [v0 isSensitiveLoggingAllowed];

  if (v1 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {

    LogPrintF_safe(&_MergedGlobals, "[ENDaemon exposureDetectionManager:finishedSessionWithResult:]", 90, "Missing region for exposure detection result");
  }
}

- (void)_postExposureNotificationForClassification:(void *)a1 status:(uint64_t)a2 region:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 name];
  v7 = v5;
  v6 = @"<none>";
  if (v5)
  {
    v6 = v5;
  }

  LogPrintF_safe(&_MergedGlobals, "[ENDaemon _postExposureNotificationForClassification:status:region:]", 50, "Posting notification for exposure detection result: %@ (%ld) %@", v6, a2, a3);
}

- (void)_postExposureNotificationForClassification:(void *)a1 status:region:.cold.2(void *a1)
{
  v1 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v2 = [v1 isSensitiveLoggingAllowed];

  if (v2 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&_MergedGlobals, "[ENDaemon _postExposureNotificationForClassification:status:region:]", 90, "Notification configuration not found for revokedNotificationSubject");
  }
}

- (void)_postExposureNotificationForClassification:(_BYTE *)a1 status:region:.cold.3(_BYTE *a1)
{
  v2 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v3 = [v2 isSensitiveLoggingAllowed];

  if (v3 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&_MergedGlobals, "[ENDaemon _postExposureNotificationForClassification:status:region:]", 90, "Notification configuration not found for revokedNotificationBody");
  }

  *a1 = 0;
}

- (void)_postExposureNotificationForClassification:(uint64_t)a1 status:region:.cold.4(uint64_t a1)
{
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8();
  LogPrintF_safe(&dword_281346508, "[ENDaemon _postExposureNotificationForClassification:status:region:]", 90, "Failed to persist exposure notification: %@");
}

- (void)_postExposureNotificationForClassification:(void *)a1 status:(void *)a2 region:.cold.5(void *a1, void *a2)
{
  v3 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v4 = [v3 isSensitiveLoggingAllowed];

  if (v4 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [a2 name];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_8();
    LogPrintF_safe(&_MergedGlobals, "[ENDaemon _postExposureNotificationForClassification:status:region:]", 90, "Notification configuration not found for %@");
  }
}

- (void)_postExposureNotificationForClassification:(_BYTE *)a1 status:region:.cold.6(_BYTE *a1)
{
  v2 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v3 = [v2 isSensitiveLoggingAllowed];

  if (v3 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&_MergedGlobals, "[ENDaemon _postExposureNotificationForClassification:status:region:]", 90, "Missing classification name for exposure notification");
  }

  *a1 = 0;
}

- (_BYTE)_postExposureNotificationForClassification:(_BYTE *)result status:region:.cold.8(_BYTE *result)
{
  v1 = result;
  if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe(&dword_281346508, "[ENDaemon _postExposureNotificationForClassification:status:region:]", 90, "Nil agency configuration for region");
    }
  }

  *v1 = 0;
  return result;
}

- (void)_postExposureNotificationForClassification:(uint64_t)a1 status:(_BYTE *)a2 region:.cold.9(uint64_t a1, _BYTE *a2)
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_7();
    if (!v4 || _LogCategory_Initialize())
    {
      LogPrintF_safe(&dword_281346508, "-[ENDaemon _postExposureNotificationForClassification:status:region:]", 90, "Unsupported Exposure Notification Phase: %lu", [v2 enVersion]);
    }
  }

  *a2 = 0;
}

- (void)onboardingManagerDidObserveDeviceUnlock:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v6 = [a1 onboardingManager];
  v3 = [v6 pendingBuddyOnboarding];
  v4 = "no";
  if (v3)
  {
    v5 = "yes";
  }

  else
  {
    v5 = "no";
  }

  if (a2)
  {
    v4 = "yes";
  }

  LogPrintF_safe(&_MergedGlobals, "[ENDaemon onboardingManagerDidObserveDeviceUnlock:]", 30, "Device unlocked. Try to present buddy, pendingOnboarding: %s, validPendingRegion: %s", v5, v4);
}

- (void)legacyHistoryPath
{
  v1 = result;
  if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe(&dword_281346508, "[ENDaemon legacyHistoryPath]", 90, "### Bad system container URL for legacy history");
    }
  }

  *v1 = 0;
  return result;
}

- (void)startAvailabilityAlertCycleWithBuddy:.cold.2()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF_safe(&dword_281346508, "[ENDaemon startAvailabilityAlertCycleWithBuddy:]", 90, "nil current region with error: %@", v0);
    }
  }
}

- (void)onboardingTriggerRetry:.cold.1()
{
  v0 = [MEMORY[0x277CBEAA0] dateWithTimeIntervalSince1970:?];
  LogPrintF_safe(&_MergedGlobals, "[ENDaemon onboardingTriggerRetry:]", 30, "Scheduling an AA reset at %@", v0);
}

- (uint64_t)onboardingTriggerRetry:(uint64_t)result .cold.2(uint64_t result, uint64_t *a2)
{
  v3 = result;
  if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe(&dword_281346508, "[ENDaemon onboardingTriggerRetry:]", 90, "Onboarding no longer required.");
    }
  }

  *a2 = v3;
  return result;
}

- (void)onboardingTriggerRetry:.cold.4()
{
  [MEMORY[0x277CBEAA0] date];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8();
  LogPrintF_safe(&_MergedGlobals, "[ENDaemon onboardingTriggerRetry:]", 30, "Onboarding Retry Timer: Current date (UTC): %@");
}

- (void)onboardingTriggerRetry:(void *)a1 .cold.7(void *a1)
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_281346508, "[ENDaemon onboardingTriggerRetry:]", 90, "nil current region with error: %@", a1);
  }
}

void __35__ENDaemon_onboardingTriggerRetry___block_invoke_cold_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2(&dword_281346508, "[ENDaemon onboardingTriggerRetry:]_block_invoke", a3, "Pending and current region don't match. Ignore onboarding.");
  }
}

uint64_t __35__ENDaemon_onboardingTriggerRetry___block_invoke_cold_3(void **a1)
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_281346508, "[ENDaemon onboardingTriggerRetry:]_block_invoke", 90, "Onboarding no longer required.");
  }

  v2 = *a1;

  return [v2 onboardingTriggerDeactivate];
}

- (void)timeForAvailabilityAlertCycleReset
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_7();
    if (!v4 || _LogCategory_Initialize())
    {
      LogPrintF_safe(&dword_281346508, "[ENDaemon timeForAvailabilityAlertCycleReset]", 90, "nil current region with error: %@", v2);
    }
  }

  *a2 = 0;
}

- (uint64_t)isOnboardingNeeded
{
  v2 = "NotAuthorized";
  if (self == 2)
  {
    v2 = "Authorized";
  }

  return LogPrintF_safe(&_MergedGlobals, "[ENDaemon isOnboardingNeeded]", 30, "Turn off Onboarding retry logic and AA reset for %@ with consent %s", a2, v2);
}

- (_BYTE)isOnboardingNeeded
{
  v1 = result;
  if (_MergedGlobals <= 30)
  {
    if (_MergedGlobals != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe(&_MergedGlobals, "[ENDaemon isOnboardingNeeded]", 30, "Availability alert disabled. Ignore onboarding");
    }
  }

  *v1 = 0;
  return result;
}

void __36__ENDaemon__networkProxyStatusCheck__block_invoke_cold_1(uint64_t a1)
{
  v1 = CUPrintNSError();
  LogPrintF_safe(&dword_281346508, "[ENDaemon _networkProxyStatusCheck]_block_invoke", 90, "Error fetching proxy status: %@", v1);
}

void __36__ENDaemon__networkProxyStatusCheck__block_invoke_2_cold_1(uint64_t a1)
{
  v1 = CUPrintNSError();
  LogPrintF_safe(&dword_281346508, "[ENDaemon _networkProxyStatusCheck]_block_invoke_2", 90, "Error fetching traffic status: %@", v1);
}

void __60__ENDaemon_enqueuePreauthorizedTestVerificationUnlockAction__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  v1 = CUPrintNSError();
  LogPrintF_safe(&_MergedGlobals, "[ENDaemon enqueuePreauthorizedTestVerificationUnlockAction]_block_invoke", 90, "### StartPreauthorizedTestVerificationSession failed: %@", v1);
}

void __37__ENDaemon__getReportTypeForSession___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  v1 = CUPrintNSError();
  LogPrintF_safe(&_MergedGlobals, "[ENDaemon _getReportTypeForSession:]_block_invoke", 90, "### _getReportTypeForSession, getting server metadata  failed: %@", v1);
}

void __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  v1 = CUPrintNSError();
  LogPrintF_safe(&_MergedGlobals, "[ENDaemon _startPreauthorizedTestVerificationAction]_block_invoke", 90, "### PreauthorizedTestVerificationSession on unlock failed: %@", v1);
}

void __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_3_cold_2()
{
  v0 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v1 = [v0 isSensitiveLoggingAllowed];

  if (v1 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {

    LogPrintF_safe(&_MergedGlobals, "[ENDaemon _startPreauthorizedTestVerificationAction]_block_invoke_3", 90, "Nil pre-authorization cannot release keys");
  }
}

- (void)enqueueScreenUnlockAction:withIdentifier:.cold.1()
{
  if (_MergedGlobals <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF_safe(&_MergedGlobals, "[ENDaemon enqueueScreenUnlockAction:withIdentifier:]", 90, "### No EnqueueScreenUnlockAction for %@", v0);
    }
  }
}

- (void)_xpcListenerEvent:.cold.1()
{
  v0 = CUPrintXPC();
  LogPrintF_safe(&dword_281346508, "[ENDaemon _xpcListenerEvent:]", 90, "### XPC listener error: %@", v0);
}

- (void)_xpcConnectionAccept:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v3 = CUPrintPID();
  v4 = [a2 signingIdentity];
  LogPrintF_safe(&_MergedGlobals, "[ENDaemon _xpcConnectionAccept:]", 20, "XPC connection start: %@, %@", v3, v4);
}

- (uint64_t)_xpcConnectionAccept:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 prefSkipFileSigning];
  v2 = "entitlement";
  if (v1)
  {
    v2 = "development mode pref";
  }

  return LogPrintF_safe(&_MergedGlobals, "[ENDaemon _xpcConnectionAccept:]", 50, "Skipping Signing Checks with %s", v2);
}

@end