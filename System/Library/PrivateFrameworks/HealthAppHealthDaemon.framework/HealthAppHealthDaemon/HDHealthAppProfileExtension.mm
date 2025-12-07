@interface HDHealthAppProfileExtension
- (HDHealthAppProfileExtension)initWithProfile:(id)profile;
- (HDProfile)profile;
- (void)_handleDismissInstruction;
- (void)_handleHoldInstruction;
- (void)_handleSendInstruction;
- (void)_healthAppWasUninstalled:(id)uninstalled;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)daemonReady:(id)ready;
- (void)dealloc;
- (void)notificationSyncClient:(id)client didReceiveInstructionWithAction:(int64_t)action;
- (void)profileDidBecomeReady:(id)ready;
@end

@implementation HDHealthAppProfileExtension

- (HDHealthAppProfileExtension)initWithProfile:(id)profile
{
  profileCopy = profile;
  v51.receiver = self;
  v51.super_class = HDHealthAppProfileExtension;
  v5 = [(HDHealthAppProfileExtension *)&v51 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = [HDHealthAppDataObserver alloc];
    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    v9 = [(HDHealthAppDataObserver *)v7 initWithProfile:WeakRetained];
    dataObserver = v6->_dataObserver;
    v6->_dataObserver = v9;

    v11 = [HDHealthAppSharingEntryObserver alloc];
    v12 = objc_loadWeakRetained(&v6->_profile);
    v13 = [(HDHealthAppSharingEntryObserver *)v11 initWithProfile:v12];
    sharingEntryObserver = v6->_sharingEntryObserver;
    v6->_sharingEntryObserver = v13;

    v15 = [HDHealthAppLabConceptObserver alloc];
    v16 = objc_loadWeakRetained(&v6->_profile);
    v17 = [(HDHealthAppLabConceptObserver *)v15 initWithProfile:v16];
    labConceptObserver = v6->_labConceptObserver;
    v6->_labConceptObserver = v17;

    v19 = [HDHAHealthAppApplicationInstallationManager alloc];
    v20 = objc_loadWeakRetained(&v6->_profile);
    v21 = [(HDHAHealthAppApplicationInstallationManager *)v19 initWithProfile:v20];
    appInstallationManager = v6->_appInstallationManager;
    v6->_appInstallationManager = v21;

    v23 = [HDHealthAppEmergencySOSManager alloc];
    v24 = objc_loadWeakRetained(&v6->_profile);
    v25 = [(HDHealthAppEmergencySOSManager *)v23 initWithProfile:v24];
    emergencySOSManager = v6->_emergencySOSManager;
    v6->_emergencySOSManager = v25;

    _HKInitializeLogging();
    v27 = HKLogWellnessDashboard();
    v28 = objc_alloc(MEMORY[0x277CCCFE8]);
    v29 = objc_loadWeakRetained(&v6->_profile);
    v30 = [v28 initWithLoggingCategory:v27 healthDataSource:v29];

    v31 = objc_alloc(MEMORY[0x277D105B0]);
    v32 = objc_loadWeakRetained(&v6->_profile);
    v33 = [v31 initWithProfile:v32 eventSubmissionManager:v30 logCategory:v27 eventConstructor:&__block_literal_global];
    dailyAnalyticsManager = v6->_dailyAnalyticsManager;
    v6->_dailyAnalyticsManager = v33;

    v35 = objc_alloc(MEMORY[0x277D107B8]);
    v36 = *MEMORY[0x277CCC1D0];
    v37 = HKCreateSerialDispatchQueue();
    v38 = [v35 initWithProfile:profileCopy clientIdentifier:v36 queue:v37];
    healthSharingNotificationSyncClient = v6->_healthSharingNotificationSyncClient;
    v6->_healthSharingNotificationSyncClient = v38;

    [(HDNotificationSyncClient *)v6->_healthSharingNotificationSyncClient setDelegate:v6];
    v40 = objc_alloc(MEMORY[0x277D107B8]);
    v41 = objc_loadWeakRetained(&v6->_profile);
    v42 = HKCreateSerialDispatchQueue();
    v43 = [v40 initWithProfile:v41 clientIdentifier:@"NewDeviceSetup" queue:v42];
    healthAppNewDeviceNotificationSyncClient = v6->_healthAppNewDeviceNotificationSyncClient;
    v6->_healthAppNewDeviceNotificationSyncClient = v43;

    [(HDNotificationSyncClient *)v6->_healthAppNewDeviceNotificationSyncClient setDelegate:v6];
    v45 = [[HDAppAnalyticsUpdateManager alloc] initWithProfile:profileCopy];
    appAnalyticsUpdateManager = v6->_appAnalyticsUpdateManager;
    v6->_appAnalyticsUpdateManager = v45;

    v47 = objc_loadWeakRetained(&v6->_profile);
    healthDaemon = [v47 healthDaemon];
    [healthDaemon registerDaemonReadyObserver:v6 queue:0];

    v49 = objc_loadWeakRetained(&v6->_profile);
    [v49 registerProfileReadyObserver:v6 queue:0];
  }

  return v6;
}

HDHealthAppDailyAnalyticsEvent *__47__HDHealthAppProfileExtension_initWithProfile___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDHealthAppDailyAnalyticsEvent alloc] initWithProfile:v2];

  return v3;
}

- (void)dealloc
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace removeObserver:self];

  v4.receiver = self;
  v4.super_class = HDHealthAppProfileExtension;
  [(HDHealthAppProfileExtension *)&v4 dealloc];
}

- (void)daemonReady:(id)ready
{
  _HKInitializeLogging();
  v4 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22939E000, v4, OS_LOG_TYPE_DEFAULT, "Health app profile extension reported daemon ready, starting observing for alert sample types", v6, 2u);
  }

  dataObserver = [(HDHealthAppProfileExtension *)self dataObserver];
  [dataObserver start];
}

- (void)profileDidBecomeReady:(id)ready
{
  readyCopy = ready;
  _HKInitializeLogging();
  v5 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_22939E000, v5, OS_LOG_TYPE_DEFAULT, "Health app profile extension reported profile ready, starting observing for Health app install status, and pausing sharing if necessary", buf, 2u);
  }

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace addObserver:self];

  objc_initWeak(buf, self);
  objc_copyWeak(&v7, buf);
  MobileInstallationWaitForSystemAppMigrationWithCompletion();
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __53__HDHealthAppProfileExtension_profileDidBecomeReady___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    _HKInitializeLogging();
    v4 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __53__HDHealthAppProfileExtension_profileDidBecomeReady___block_invoke_cold_1(v3, v4);
    }
  }

  else
  {
    v5 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v6 = [v5 applicationIsInstalled:*MEMORY[0x277CCE3A8]];

    if (v6)
    {
      goto LABEL_5;
    }

    _HKInitializeLogging();
    v7 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22939E000, v7, OS_LOG_TYPE_DEFAULT, "Health App is not installed on this device. Updating pause state for sharing entries.", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v9 = [WeakRetained profile];
    v10 = [v9 sharingEntryManager];
    v13 = 0;
    v11 = [v10 pauseActiveEntriesWithError:&v13];
    v4 = v13;

    if ((v11 & 1) == 0)
    {
      _HKInitializeLogging();
      v12 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v15 = v4;
        _os_log_impl(&dword_22939E000, v12, OS_LOG_TYPE_DEFAULT, "Failed to update pause state for sharing entries %{public}@", buf, 0xCu);
      }
    }
  }

LABEL_5:
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  uninstallCopy = uninstall;
  v5 = [uninstallCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    v8 = *MEMORY[0x277CCE3A8];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(uninstallCopy);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        bundleIdentifier = [v10 bundleIdentifier];
        v12 = bundleIdentifier;
        if (bundleIdentifier == v8)
        {

LABEL_15:
          _HKInitializeLogging();
          v15 = HKLogWellnessDashboard();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *v16 = 0;
            _os_log_impl(&dword_22939E000, v15, OS_LOG_TYPE_DEFAULT, "Health App has been uninstalled", v16, 2u);
          }

          [(HDHealthAppProfileExtension *)self _healthAppWasUninstalled:v10];
          goto LABEL_18;
        }

        if (v8)
        {
          bundleIdentifier2 = [v10 bundleIdentifier];
          v14 = [bundleIdentifier2 isEqualToString:v8];

          if (v14)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v6 = [uninstallCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:
}

- (void)_healthAppWasUninstalled:(id)uninstalled
{
  v12 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CCDD30] resetBuddy];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  sharingEntryManager = [WeakRetained sharingEntryManager];
  v9 = 0;
  v6 = [sharingEntryManager pauseActiveEntriesWithError:&v9];
  v7 = v9;

  if ((v6 & 1) == 0)
  {
    _HKInitializeLogging();
    v8 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = v7;
      _os_log_impl(&dword_22939E000, v8, OS_LOG_TYPE_DEFAULT, "Failed to update pause state for sharing entries %{public}@", buf, 0xCu);
    }
  }
}

- (void)notificationSyncClient:(id)client didReceiveInstructionWithAction:(int64_t)action
{
  v17 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC300];
  if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = objc_opt_class();
    v9 = v8;
    v10 = NSStringFromHKNotificationInstructionAction();
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_22939E000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received instruction with action: %@", &v13, 0x16u);
  }

  switch(action)
  {
    case 1:
      [(HDHealthAppProfileExtension *)self _handleDismissInstruction];
      break;
    case 2:
      [(HDHealthAppProfileExtension *)self _handleHoldInstruction];
      break;
    case 3:
      [(HDHealthAppProfileExtension *)self _handleSendInstruction];
      break;
    default:
      _HKInitializeLogging();
      v11 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(HDHealthAppProfileExtension *)self notificationSyncClient:action didReceiveInstructionWithAction:v11];
      }

      break;
  }

  unitTest_didProcessNotificationInstruction = self->_unitTest_didProcessNotificationInstruction;
  if (unitTest_didProcessNotificationInstruction)
  {
    unitTest_didProcessNotificationInstruction[2]();
  }
}

- (void)_handleSendInstruction
{
  OUTLINED_FUNCTION_2();
  v1 = v0;
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  OUTLINED_FUNCTION_3(&dword_22939E000, v4, v5, "[%{public}@] Error retrieving send instructions: %{public}@", v6, v7, v8, v9);
}

void __53__HDHealthAppProfileExtension__handleSendInstruction__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC300];
  v5 = *MEMORY[0x277CCC300];
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __53__HDHealthAppProfileExtension__handleSendInstruction__block_invoke_cold_1(a1, v4);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v4;
    v8 = 138543362;
    v9 = objc_opt_class();
    v7 = v9;
    _os_log_impl(&dword_22939E000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Posted AAAccountNotification", &v8, 0xCu);
  }
}

- (void)_handleHoldInstruction
{
  OUTLINED_FUNCTION_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  v1 = v0;
  OUTLINED_FUNCTION_1_0(&dword_22939E000, v2, v3, "[%{public}@] notification hold instructions returned nil with error = [%{public}@]", v4, v5, v6, v7);
}

- (void)_handleDismissInstruction
{
  OUTLINED_FUNCTION_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  v1 = v0;
  OUTLINED_FUNCTION_1_0(&dword_22939E000, v2, v3, "[%{public}@] Pending notification dismiss instructions returned nil with error = [%{public}@]", v4, v5, v6, v7);
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

void __53__HDHealthAppProfileExtension_profileDidBecomeReady___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_22939E000, a2, OS_LOG_TYPE_ERROR, "Error migrating system applications %{public}@", &v2, 0xCu);
}

- (void)notificationSyncClient:(os_log_t)log didReceiveInstructionWithAction:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_22939E000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Unexpected notification instruction received: %ld", &v3, 0x16u);
}

void __53__HDHealthAppProfileExtension__handleSendInstruction__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  OUTLINED_FUNCTION_3(&dword_22939E000, v5, v6, "[%{public}@] Failed to post notifications %{public}@", v7, v8, v9, v10);
}

@end