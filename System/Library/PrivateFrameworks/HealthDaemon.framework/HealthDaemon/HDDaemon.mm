@interface HDDaemon
- (HDContentProtectionManager)contentProtectionManager;
- (HDDaemon)init;
- (HDDaemon)initWithContainerDirectoryPath:(id)path;
- (HDDaemon)initWithHealthDirectoryPath:(id)path medicalIDDirectoryPath:(id)directoryPath;
- (HDDaemonTester)daemonTester;
- (HDPluginManager)pluginManager;
- (HDProcessStateManager)processStateManager;
- (HDProfileManager)profileManager;
- (NSObject)_setupSignal:(void *)signal handler:;
- (NSURL)localContentURL;
- (id)IDSServiceWithIdentifier:(id)identifier;
- (id)_newAnalyticsSubmissionCoordinator;
- (id)_newAutoBugCaptureReporter;
- (id)_newCloudSyncCoordinator;
- (id)_newConnectionManager;
- (id)_newDatabasePruningCoordinator;
- (id)_newMaintenanceWorkCoordinator;
- (id)_newNotificationInstructionSyncService;
- (id)_newOTAFeatureAvailabilityManager;
- (id)_newPluginManager;
- (id)_newPrimaryProfile;
- (id)_newProcessStateManager;
- (id)_newProfileManager;
- (id)_newTaskServerRegistry;
- (id)createApplicationStateMonitor;
- (id)createApplicationStateMonitorWithBundleIDs:(id)ds states:(unsigned int)states elevatedPriority:(BOOL)priority;
- (id)createRBSProcessStateProvider;
- (id)daemonExtensionsConformingToProtocol:(id)protocol;
- (id)diagnosticDescription;
- (id)healthDirectorySizeInBytes;
- (id)healthDomainAccessorWithPairedDevice:(id)device;
- (id)healthLiteUserDefaultsDomain;
- (id)protectedResourceStoreProviders;
- (id)taskServerClasses;
- (void)_resetPrivacySettings;
- (void)_terminationCleanup;
- (void)applicationStateDidChange:(id)change;
- (void)dealloc;
- (void)exitClean:(BOOL)clean reason:(id)reason;
- (void)invalidateAndWaitWithReason:(id)reason;
- (void)obliterateAndTerminateProfiles:(id)profiles options:(unint64_t)options reason:(id)reason completion:(id)completion;
- (void)obliterateAndTerminateWithOptions:(unint64_t)options reason:(id)reason completion:(id)completion;
- (void)performBlockWithPowerAssertionIdentifier:(id)identifier transactionName:(id)name powerAssertionInterval:(double)interval block:(id)block;
- (void)registerDaemonActivatedObserver:(id)observer queue:(id)queue;
- (void)registerDaemonReadyObserver:(id)observer queue:(id)queue;
- (void)registerForLaunchNotification:(const char *)notification;
- (void)registerProtectedResourceStoreProvider:(id)provider;
- (void)setDaemonTester:(id)tester;
- (void)start;
- (void)terminateClean:(BOOL)clean reason:(id)reason;
- (void)unregisterForLaunchNotification:(const char *)notification;
- (void)unregisterProtectedResourceStoreProvider:(id)provider;
@end

@implementation HDDaemon

- (HDProfileManager)profileManager
{
  profileManager = self->_profileManager;
  if (!profileManager)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDaemon.m" lineNumber:1098 description:{@"Invalid parameter not satisfying: %@", @"_profileManager != nil"}];

    profileManager = self->_profileManager;
  }

  return profileManager;
}

- (HDProcessStateManager)processStateManager
{
  processStateManager = self->_processStateManager;
  if (!processStateManager)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDaemon.m" lineNumber:1084 description:{@"Invalid parameter not satisfying: %@", @"_processStateManager != nil"}];

    processStateManager = self->_processStateManager;
  }

  return processStateManager;
}

- (HDPluginManager)pluginManager
{
  pluginManager = self->_pluginManager;
  if (!pluginManager)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDaemon.m" lineNumber:1089 description:{@"Invalid parameter not satisfying: %@", @"_pluginManager != nil"}];

    pluginManager = self->_pluginManager;
  }

  return pluginManager;
}

void __38__HDDaemon__setupMemoryWarningHandler__block_invoke(uint64_t a1, double *a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  if (Current >= *a2 + 1.0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = a3;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_INFO, "%s", &v7, 0xCu);
    }

    *a2 = Current;
  }
}

- (HDContentProtectionManager)contentProtectionManager
{
  contentProtectionManager = self->_contentProtectionManager;
  if (!contentProtectionManager)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDaemon.m" lineNumber:1071 description:{@"Invalid parameter not satisfying: %@", @"_contentProtectionManager != nil"}];

    contentProtectionManager = self->_contentProtectionManager;
  }

  return contentProtectionManager;
}

- (HDDaemonTester)daemonTester
{
  WeakRetained = objc_loadWeakRetained(&self->_daemonTester);

  return WeakRetained;
}

- (id)taskServerClasses
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v36 = objc_opt_class();
  v37 = objc_opt_class();
  v38 = objc_opt_class();
  v39 = objc_opt_class();
  v40 = objc_opt_class();
  v41 = objc_opt_class();
  v42 = objc_opt_class();
  v43 = objc_opt_class();
  v44 = objc_opt_class();
  v45 = objc_opt_class();
  v46 = objc_opt_class();
  v47 = objc_opt_class();
  v48 = objc_opt_class();
  v49 = objc_opt_class();
  v50 = objc_opt_class();
  v51 = objc_opt_class();
  v52 = objc_opt_class();
  v53 = objc_opt_class();
  v54 = objc_opt_class();
  v55 = objc_opt_class();
  v56 = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v6 count:51];
  v3 = [HDQueryServer builtInQueryServerClasses:v6];
  v4 = [v2 arrayByAddingObjectsFromArray:v3];

  return v4;
}

- (id)IDSServiceWithIdentifier:(id)identifier
{
  v3 = MEMORY[0x277D18778];
  identifierCopy = identifier;
  v5 = [[v3 alloc] initWithService:identifierCopy];

  return v5;
}

- (id)healthDomainAccessorWithPairedDevice:(id)device
{
  v3 = MEMORY[0x277D2BA58];
  deviceCopy = device;
  v5 = [[v3 alloc] initWithDomain:@"com.apple.healthd" pairedDevice:deviceCopy];

  return v5;
}

- (id)healthLiteUserDefaultsDomain
{
  v3 = [HDKeyValueDomain alloc];
  primaryProfile = [(HDDaemon *)self primaryProfile];
  v5 = [(HDKeyValueDomain *)v3 initWithCategory:105 domainName:@"HealthLite" profile:primaryProfile];

  return v5;
}

- (HDDaemon)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDDaemon)initWithContainerDirectoryPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy stringByAppendingPathComponent:@"Health"];
  v6 = [pathCopy stringByAppendingPathComponent:@"MedicalID"];

  v7 = [(HDDaemon *)self initWithHealthDirectoryPath:v5 medicalIDDirectoryPath:v6];
  return v7;
}

- (HDDaemon)initWithHealthDirectoryPath:(id)path medicalIDDirectoryPath:(id)directoryPath
{
  pathCopy = path;
  directoryPathCopy = directoryPath;
  v27.receiver = self;
  v27.super_class = HDDaemon;
  v8 = [(HDDaemon *)&v27 init];
  v9 = v8;
  if (v8)
  {
    v8->_isTerminating = 0;
    atomic_store(0, &v8->_hasCalledExit);
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    behavior = v9->_behavior;
    v9->_behavior = mEMORY[0x277CCDD30];

    v12 = HKCreateSerialDispatchQueue();
    queue = v9->_queue;
    v9->_queue = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    daemonReadyBlocks = v9->_daemonReadyBlocks;
    v9->_daemonReadyBlocks = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    daemonActivatedBlocks = v9->_daemonActivatedBlocks;
    v9->_daemonActivatedBlocks = v16;

    v18 = objc_msgSend_copy(pathCopy);
    healthDirectoryPath = v9->_healthDirectoryPath;
    v9->_healthDirectoryPath = v18;

    v20 = objc_msgSend_copy(directoryPathCopy);
    medicalIDDirectoryPath = v9->_medicalIDDirectoryPath;
    v9->_medicalIDDirectoryPath = v20;

    v9->_daemonReadyLock._os_unfair_lock_opaque = 0;
    v9->_protectedResourceStoreProvidersLock._os_unfair_lock_opaque = 0;
    _newConnectionManager = [(HDDaemon *)v9 _newConnectionManager];
    connectionManager = v9->_connectionManager;
    v9->_connectionManager = _newConnectionManager;

    v24 = objc_alloc_init(HDBackgroundObservationServerExtensionManager);
    extensionManager = v9->_extensionManager;
    v9->_extensionManager = v24;
  }

  return v9;
}

- (void)start
{
  v151[13] = *MEMORY[0x277D85DE8];
  if (atomic_exchange(&self->_didStart._Value, 1u))
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDaemon.m" lineNumber:165 description:{@"Invalid parameter not satisfying: %@", @"alreadyStarted == false"}];
  }

  else
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    healthDirectoryPath = self->_healthDirectoryPath;
    v133 = 0;
    v5 = [defaultManager createDirectoryAtPath:healthDirectoryPath withIntermediateDirectories:1 attributes:0 error:&v133];
    v125 = v133;

    v6 = MEMORY[0x277CCC2B0];
    if ((v5 & 1) == 0)
    {
      _HKInitializeLogging();
      v7 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        v121 = self->_healthDirectoryPath;
        *buf = 138543618;
        *&buf[4] = v121;
        *&buf[12] = 2114;
        *&buf[14] = v125;
        _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "Failed to create %{public}@: %{public}@", buf, 0x16u);
      }
    }

    if (([(_HKBehavior *)self->_behavior isDeviceSupported]& 1) == 0)
    {
      _HKInitializeLogging();
      v8 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "Device is unsupported", buf, 2u);
      }
    }

    v9 = [[HDPostInstallUpdateManager alloc] initWithDaemon:self];
    postInstallUpdateManager = self->_postInstallUpdateManager;
    self->_postInstallUpdateManager = v9;

    if ([(_HKBehavior *)self->_behavior isDeviceSupported])
    {
      _newPluginManager = [(HDDaemon *)self _newPluginManager];
      pluginManager = self->_pluginManager;
      self->_pluginManager = _newPluginManager;

      _newCacheDeleteCoordinator = [(HDDaemon *)self _newCacheDeleteCoordinator];
      cacheDeleteCoordinator = self->_cacheDeleteCoordinator;
      self->_cacheDeleteCoordinator = _newCacheDeleteCoordinator;

      _newContentProtectionManager = [(HDDaemon *)self _newContentProtectionManager];
      contentProtectionManager = self->_contentProtectionManager;
      self->_contentProtectionManager = _newContentProtectionManager;

      _newProcessStateManager = [(HDDaemon *)self _newProcessStateManager];
      processStateManager = self->_processStateManager;
      self->_processStateManager = _newProcessStateManager;

      _newBackgroundSystemScheduler = [(HDDaemon *)self _newBackgroundSystemScheduler];
      systemScheduler = self->_systemScheduler;
      self->_systemScheduler = _newBackgroundSystemScheduler;

      _newNotificationInstructionSyncService = [(HDDaemon *)self _newNotificationInstructionSyncService];
      notificationInstructionSyncService = self->_notificationInstructionSyncService;
      self->_notificationInstructionSyncService = _newNotificationInstructionSyncService;

      if ([(_HKBehavior *)self->_behavior healthAppSupportedOnDevice])
      {
        _newHealthAppNewDeviceNotificationService = [(HDDaemon *)self _newHealthAppNewDeviceNotificationService];
        healthAppNewDeviceNotificationService = self->_healthAppNewDeviceNotificationService;
        self->_healthAppNewDeviceNotificationService = _newHealthAppNewDeviceNotificationService;
      }

      _newNanoRegistryDeviceCapabilityProvider = [(HDDaemon *)self _newNanoRegistryDeviceCapabilityProvider];
      nanoRegistryDeviceCapabilityProvider = self->_nanoRegistryDeviceCapabilityProvider;
      self->_nanoRegistryDeviceCapabilityProvider = _newNanoRegistryDeviceCapabilityProvider;

      _newOTAFeatureAvailabilityManager = [(HDDaemon *)self _newOTAFeatureAvailabilityManager];
      OTAFeatureAvailabilityManager = self->_OTAFeatureAvailabilityManager;
      self->_OTAFeatureAvailabilityManager = _newOTAFeatureAvailabilityManager;

      v29 = objc_alloc_init(MEMORY[0x277D10BD0]);
      alarmScheduler = self->_alarmScheduler;
      self->_alarmScheduler = v29;

      requirementSatisfactionOverridesDataSource = [MEMORY[0x277CCD418] requirementSatisfactionOverridesDataSource];
      featureAvailabilityRequirementSatisfactionOverridesDataSource = self->_featureAvailabilityRequirementSatisfactionOverridesDataSource;
      self->_featureAvailabilityRequirementSatisfactionOverridesDataSource = requirementSatisfactionOverridesDataSource;

      v33 = objc_alloc_init(MEMORY[0x277CCDBE0]);
      watchLowPowerModeDataSource = self->_watchLowPowerModeDataSource;
      self->_watchLowPowerModeDataSource = v33;

      v35 = objc_alloc_init(MEMORY[0x277CCDCF8]);
      wristDetectionSettingManager = self->_wristDetectionSettingManager;
      self->_wristDetectionSettingManager = v35;

      _newPrimaryProfile = [(HDDaemon *)self _newPrimaryProfile];
      primaryProfile = self->_primaryProfile;
      self->_primaryProfile = _newPrimaryProfile;

      [(HDDaemon *)self unitTest_didCreateProfile:self->_primaryProfile];
      _newProfileManager = [(HDDaemon *)self _newProfileManager];
      profileManager = self->_profileManager;
      self->_profileManager = _newProfileManager;

      [(HDProfileManager *)self->_profileManager addProfile:self->_primaryProfile];
      _newCloudSyncCoordinator = [(HDDaemon *)self _newCloudSyncCoordinator];
      cloudSyncCoordinator = self->_cloudSyncCoordinator;
      self->_cloudSyncCoordinator = _newCloudSyncCoordinator;

      _newDatabasePruningCoordinator = [(HDDaemon *)self _newDatabasePruningCoordinator];
      databasePruningCoordinator = self->_databasePruningCoordinator;
      self->_databasePruningCoordinator = _newDatabasePruningCoordinator;

      _newAnalyticsSubmissionCoordinator = [(HDDaemon *)self _newAnalyticsSubmissionCoordinator];
      analyticsSubmissionCoordinator = self->_analyticsSubmissionCoordinator;
      self->_analyticsSubmissionCoordinator = _newAnalyticsSubmissionCoordinator;

      _newMaintenanceWorkCoordinator = [(HDDaemon *)self _newMaintenanceWorkCoordinator];
      maintenanceWorkCoordinator = self->_maintenanceWorkCoordinator;
      self->_maintenanceWorkCoordinator = _newMaintenanceWorkCoordinator;

      _newAutoBugCaptureReporter = [(HDDaemon *)self _newAutoBugCaptureReporter];
      autoBugCaptureReporter = self->_autoBugCaptureReporter;
      self->_autoBugCaptureReporter = _newAutoBugCaptureReporter;

      if ([(_HKBehavior *)self->_behavior supportsOntology])
      {
        v51 = objc_alloc_init(HDOntologyConfigurationProvider);
        ontologyConfigurationProvider = self->_ontologyConfigurationProvider;
        self->_ontologyConfigurationProvider = v51;
      }

      _newDevicePowerMonitor = [(HDDaemon *)self _newDevicePowerMonitor];
      devicePowerMonitor = self->_devicePowerMonitor;
      self->_devicePowerMonitor = _newDevicePowerMonitor;

      v55 = [[HDQueryManager alloc] initWithDaemon:self];
      queryManager = self->_queryManager;
      self->_queryManager = v55;

      _newTaskServerRegistry = [(HDDaemon *)self _newTaskServerRegistry];
      taskServerRegistry = self->_taskServerRegistry;
      self->_taskServerRegistry = _newTaskServerRegistry;

      v59 = [HDUserDomainConceptEntityRegistry registryWithDaemon:self setSharedInstance:1];
      userDomainConceptEntityRegistry = self->_userDomainConceptEntityRegistry;
      self->_userDomainConceptEntityRegistry = v59;

      selfCopy = self;
      v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&selfCopy count:1];
      v124 = [(HDPluginManager *)self->_pluginManager pluginsConformingToProtocol:&unk_283CCAEA0];
      allValues = [v124 allValues];
      v63 = [v61 arrayByAddingObjectsFromArray:allValues];

      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v64 = v63;
      v65 = [v64 countByEnumeratingWithState:&v129 objects:v142 count:16];
      if (v65)
      {
        v66 = *v130;
        do
        {
          v67 = 0;
          do
          {
            if (*v130 != v66)
            {
              objc_enumerationMutation(v64);
            }

            v68 = *(*(&v129 + 1) + 8 * v67);
            v69 = self->_taskServerRegistry;
            v128 = 0;
            v70 = [(HDTaskServerRegistry *)v69 registerTaskServerClassesWithProvider:v68 error:&v128];
            v71 = v128;
            if (!v70)
            {
              _HKInitializeLogging();
              v72 = *v6;
              if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                *&buf[4] = v68;
                *&buf[12] = 2114;
                *&buf[14] = v71;
                _os_log_error_impl(&dword_228986000, v72, OS_LOG_TYPE_ERROR, "Failed to register task server classes from provider %{public}@: %{public}@", buf, 0x16u);
              }
            }

            ++v67;
          }

          while (v65 != v67);
          v65 = [v64 countByEnumeratingWithState:&v129 objects:v142 count:16];
        }

        while (v65);
      }

      v73 = [(HDPluginManager *)self->_pluginManager createExtensionsForDaemon:self];
      daemonExtensionsByIdentifier = self->_daemonExtensionsByIdentifier;
      self->_daemonExtensionsByIdentifier = v73;

      if (!_HDIsUnitTesting)
      {
        from = @"UserAssignedDeviceName";
        v75 = [MEMORY[0x277CBEA60] arrayWithObjects:&from count:1];
        objc_initWeak(location, self);
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __41__HDDaemon__registerForDeviceNameChanges__block_invoke;
        v150 = &unk_27861B4E0;
        objc_copyWeak(v151, location);
        self->_deviceNameChangesToken = MGRegisterForUpdates();
        objc_destroyWeak(v151);
        objc_destroyWeak(location);
      }
    }

    else
    {
      [HDCloudSyncPeriodicActivityScheduler registerDisabledPeriodicActivitiesForUnsupportedDaemon:self];
      [HDDatabasePruningCoordinator registerDisabledPeriodicActivitiesForUnsupportedDaemon:self];
      self->_healthdStateHandler = HDAddStateHandler(self->_queue, @"Sensitive Logging Status", &__block_literal_global_60);
    }

    v76 = objc_alloc_init(HDXPCEventManager);
    xpcEventManager = self->_xpcEventManager;
    self->_xpcEventManager = v76;

    objc_initWeak(location, self);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __32__HDDaemon__setUpSignalHandlers__block_invoke;
    v150 = &unk_278616F38;
    objc_copyWeak(v151, location);
    v78 = [(HDDaemon *)self _setupSignal:buf handler:?];
    v79 = _MergedGlobals_198;
    _MergedGlobals_198 = v78;

    v80 = [(HDDaemon *)self _setupSignal:&__block_literal_global_429 handler:?];
    v81 = qword_280D67B60;
    qword_280D67B60 = v80;

    from = MEMORY[0x277D85DD0];
    v145 = 3221225472;
    v146 = __32__HDDaemon__setUpSignalHandlers__block_invoke_3;
    v147 = &unk_278616F38;
    objc_copyWeak(v148, location);
    v82 = [(HDDaemon *)self _setupSignal:&from handler:?];
    v83 = qword_280D67B68;
    qword_280D67B68 = v82;

    objc_destroyWeak(v148);
    objc_destroyWeak(v151);
    objc_destroyWeak(location);
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    [defaultWorkspace addObserver:self];

    mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [mEMORY[0x277D10AF8] addObject:self];

    os_unfair_lock_lock(&self->_daemonReadyLock);
    self->_daemonReady = 1;
    WeakRetained = objc_loadWeakRetained(&self->_daemonTester);
    v87 = self->_daemonReadyBlocks;
    daemonReadyBlocks = self->_daemonReadyBlocks;
    self->_daemonReadyBlocks = 0;

    os_unfair_lock_unlock(&self->_daemonReadyLock);
    _HKInitializeLogging();
    v89 = HKLogDaemonInitialization();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      v90 = [(NSMutableArray *)v87 count];
      *buf = 134217984;
      *&buf[4] = v90;
      _os_log_impl(&dword_228986000, v89, OS_LOG_TYPE_DEFAULT, "Notifying %lu Daemon Ready Observers", buf, 0xCu);
    }

    _HKInitializeLogging();
    v91 = _HKLogPersistedSignposts();
    v92 = os_signpost_enabled(v91);

    if (v92)
    {
      v93 = _HKLogPersistedSignposts();
      if (os_signpost_enabled(v93))
      {
        v94 = [(NSMutableArray *)v87 count];
        *buf = 134217984;
        *&buf[4] = v94;
        _os_signpost_emit_with_name_impl(&dword_228986000, v93, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Notify Daemon Ready Observers", "count=%lu", buf, 0xCu);
      }
    }

    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v95 = v87;
    v96 = [(NSMutableArray *)v95 countByEnumeratingWithState:&v134 objects:&from count:16];
    if (v96)
    {
      v97 = *v135;
      do
      {
        for (i = 0; i != v96; ++i)
        {
          if (*v135 != v97)
          {
            objc_enumerationMutation(v95);
          }

          (*(*(*(&v134 + 1) + 8 * i) + 16))();
        }

        v96 = [(NSMutableArray *)v95 countByEnumeratingWithState:&v134 objects:&from count:16];
      }

      while (v96);
    }

    os_unfair_lock_lock(&self->_daemonReadyLock);
    v99 = self->_daemonActivatedBlocks;
    daemonActivatedBlocks = self->_daemonActivatedBlocks;
    self->_daemonActivatedBlocks = 0;

    os_unfair_lock_unlock(&self->_daemonReadyLock);
    _HKInitializeLogging();
    v101 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v102 = v101;
      v103 = [(NSMutableArray *)v99 count];
      *buf = 134217984;
      *&buf[4] = v103;
      _os_log_impl(&dword_228986000, v102, OS_LOG_TYPE_DEFAULT, "Notify (%lu) Daemon Activated Observers", buf, 0xCu);
    }

    v140 = 0u;
    v141 = 0u;
    *location = 0u;
    v139 = 0u;
    v104 = v99;
    v105 = [(NSMutableArray *)v104 countByEnumeratingWithState:location objects:buf count:16];
    if (v105)
    {
      v106 = *v139;
      do
      {
        for (j = 0; j != v105; ++j)
        {
          if (*v139 != v106)
          {
            objc_enumerationMutation(v104);
          }

          (*(*(location[1] + j) + 16))();
        }

        v105 = [(NSMutableArray *)v104 countByEnumeratingWithState:location objects:buf count:16];
      }

      while (v105);
    }

    _HKInitializeLogging();
    v108 = _HKLogPersistedSignposts();
    v109 = os_signpost_enabled(v108);

    if (v109)
    {
      v110 = _HKLogPersistedSignposts();
      if (os_signpost_enabled(v110))
      {
        v111 = [(NSMutableArray *)v95 count];
        *buf = 134217984;
        *&buf[4] = v111;
        _os_signpost_emit_with_name_impl(&dword_228986000, v110, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Notify Daemon Ready Observers", "count=%lu", buf, 0xCu);
      }
    }

    [(HDDaemon *)self _postDaemonLaunchDarwinNotification];
    [WeakRetained daemonReadyComplete:self];

    objc_initWeak(&from, self);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __48__HDDaemon__setUpDarwinNotificationEventHandler__block_invoke;
    v150 = &unk_27861B430;
    objc_copyWeak(v151, &from);
    hd_xpc_set_event_stream_handler();
    objc_destroyWeak(v151);
    objc_destroyWeak(&from);
    objc_initWeak(&from, self);
    v112 = MEMORY[0x277D85CD0];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __53__HDDaemon__setUpDistributedNotificationEventHandler__block_invoke;
    v150 = &unk_27861B430;
    objc_copyWeak(v151, &from);
    hd_xpc_set_event_stream_handler();

    objc_destroyWeak(v151);
    objc_destroyWeak(&from);
    if (!_HDIsUnitTesting)
    {
      v113 = dispatch_source_create(MEMORY[0x277D85D18], 0, 1uLL, MEMORY[0x277D85CD0]);
      v114 = qword_280D67B80;
      qword_280D67B80 = v113;

      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __38__HDDaemon__setupMemoryWarningHandler__block_invoke_465;
      v150 = &unk_278613658;
      v151[0] = &__block_literal_global_464_0;
      dispatch_source_set_event_handler(qword_280D67B80, buf);
      dispatch_activate(qword_280D67B80);
      v115 = dispatch_source_create(MEMORY[0x277D85D18], 0, 2uLL, MEMORY[0x277D85CD0]);
      v116 = qword_280D67B88;
      qword_280D67B88 = v115;

      from = MEMORY[0x277D85DD0];
      v145 = 3221225472;
      v146 = __38__HDDaemon__setupMemoryWarningHandler__block_invoke_2;
      v147 = &unk_278613658;
      v148[0] = &__block_literal_global_464_0;
      dispatch_source_set_event_handler(qword_280D67B88, &from);
      dispatch_activate(qword_280D67B88);
      v117 = dispatch_source_create(MEMORY[0x277D85D18], 0, 4uLL, MEMORY[0x277D85CD0]);
      v118 = qword_280D67B90;
      qword_280D67B90 = v117;

      location[0] = MEMORY[0x277D85DD0];
      location[1] = 3221225472;
      *&v139 = __38__HDDaemon__setupMemoryWarningHandler__block_invoke_3;
      *(&v139 + 1) = &unk_278613658;
      *&v140 = &__block_literal_global_464_0;
      dispatch_source_set_event_handler(qword_280D67B90, location);
      dispatch_activate(qword_280D67B90);
    }

    hd_xpc_set_event_stream_handler();
    [(HDPostInstallUpdateManager *)self->_postInstallUpdateManager start];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__localeOrLanguageChanged_ name:*MEMORY[0x277CBE620] object:0];

    objc_initWeak(buf, self);
    queue = self->_queue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __17__HDDaemon_start__block_invoke_2;
    handler[3] = &unk_278613BF0;
    objc_copyWeak(&v127, buf);
    notify_register_dispatch("com.apple.language.changed", &self->_languageChangeNotifyToken, queue, handler);
    [(HDCacheDeleteCoordinator *)self->_cacheDeleteCoordinator activate];
    [(HDDaemonConnectionManager *)self->_connectionManager resume];
    objc_destroyWeak(&v127);
    objc_destroyWeak(buf);
  }
}

id __17__HDDaemon_start__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"Sensitive Logging";
  v0 = HKShowSensitiveLogItems();
  v1 = @"Disabled";
  if (v0)
  {
    v1 = @"Enabled";
  }

  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

void __17__HDDaemon_start__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _localeOrLanguageChanged:0];
}

- (void)dealloc
{
  if (self)
  {
    hd_xpc_remove_event_stream_handlers();
  }

  MGCancelNotifications();
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBE620] object:0];

  notify_cancel(self->_languageChangeNotifyToken);
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace removeObserver:self];

  if (self->_healthdStateHandler)
  {
    os_state_remove_handler();
  }

  v5.receiver = self;
  v5.super_class = HDDaemon;
  [(HDDaemon *)&v5 dealloc];
}

- (id)daemonExtensionsConformingToProtocol:(id)protocol
{
  protocolCopy = protocol;
  allValues = [(NSDictionary *)self->_daemonExtensionsByIdentifier allValues];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__HDDaemon_daemonExtensionsConformingToProtocol___block_invoke;
  v9[3] = &unk_27861B3E0;
  v10 = protocolCopy;
  v6 = protocolCopy;
  v7 = [allValues hk_filter:v9];

  return v7;
}

- (void)invalidateAndWaitWithReason:(id)reason
{
  v21 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  [(HDCloudSyncCoordinator *)self->_cloudSyncCoordinator invalidate];
  _HKInitializeLogging();
  v5 = HKLogInfrastructure();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v19 = 2114;
    v20 = reasonCopy;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Invalidating (%{public}@).", buf, 0x16u);
  }

  [(HDDaemonConnectionManager *)self->_connectionManager invalidate];
  [(HDMaintenanceWorkCoordinator *)self->_maintenanceWorkCoordinator cancelAllOperations];
  [(HDProfileManager *)self->_profileManager invalidateAndWaitWithReason:reasonCopy];
  allValues = [(NSDictionary *)self->_daemonExtensionsByIdentifier allValues];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 invalidateAndWait];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)obliterateAndTerminateWithOptions:(unint64_t)options reason:(id)reason completion:(id)completion
{
  completionCopy = completion;
  reasonCopy = reason;
  profileManager = [(HDDaemon *)self profileManager];
  allProfileIdentifiers = [profileManager allProfileIdentifiers];
  [(HDDaemon *)self obliterateAndTerminateProfiles:allProfileIdentifiers options:options reason:reasonCopy completion:completionCopy];
}

- (void)obliterateAndTerminateProfiles:(id)profiles options:(unint64_t)options reason:(id)reason completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  profilesCopy = profiles;
  reasonCopy = reason;
  completionCopy = completion;
  v13 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:self activityName:@"Obliteration"];
  self->_isTerminating = 1;
  _HKInitializeLogging();
  v14 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
  {
    v20 = v14;
    v21 = [profilesCopy componentsJoinedByString:{@", "}];
    *buf = 138543874;
    v26 = v21;
    v27 = 2114;
    v28 = reasonCopy;
    v29 = 2048;
    optionsCopy = options;
    _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "*** OBLITERATING HEALTH DATA (%{public}@): %{public}@ (%ld)", buf, 0x20u);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __69__HDDaemon_obliterateAndTerminateProfiles_options_reason_completion___block_invoke;
  v24[3] = &unk_27861B408;
  v24[4] = self;
  v15 = [profilesCopy hk_map:v24];
  v23 = completionCopy;
  v22 = reasonCopy;
  v16 = v13;
  v17 = completionCopy;
  v18 = reasonCopy;
  v19 = v15;
  HKDispatchAsyncOnGlobalConcurrentQueue();
}

id __69__HDDaemon_obliterateAndTerminateProfiles_options_reason_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 104) profileForIdentifier:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v3;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "Failed to find profile %{public}@ during obliteration", &v9, 0xCu);
    }
  }

  return v5;
}

void __69__HDDaemon_obliterateAndTerminateProfiles_options_reason_completion___block_invoke_364(uint64_t a1)
{
  v92 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    v4 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.ActivityMonitorApp", @"com.apple.DeepBreathing", @"com.apple.Fitness", @"com.apple.Health", @"com.apple.HeartRate", *MEMORY[0x277CCE528], @"com.apple.NanoHeartRhythm", @"com.apple.NanoMenstrualCycles", @"com.apple.NanoSleep.watchkitapp", @"com.apple.NanoOxygenSaturation.watchkitapp", @"com.apple.NanoHealthBalance", 0}];
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v5 = [*(v2 + 328) clientProcesses];
    v6 = [v5 countByEnumeratingWithState:&v83 objects:buf count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v84;
      do
      {
        v9 = 0;
        do
        {
          if (*v84 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v83 + 1) + 8 * v9) bundleIdentifier];
          v11 = v10;
          if (v10 && (![v10 hasPrefix:@"com.apple."] || objc_msgSend(v4, "containsObject:", v11)))
          {
            [v3 addObject:v11];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v83 objects:buf count:16];
      }

      while (v7);
    }
  }

  else
  {
    v3 = 0;
  }

  _HKInitializeLogging();
  v12 = MEMORY[0x277CCC2B0];
  v13 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "*** PREPARING FOR OBLITERATION ***", buf, 2u);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v14 = *(a1 + 40);
  v15 = [v14 countByEnumeratingWithState:&v79 objects:v90 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v80;
    do
    {
      v18 = 0;
      do
      {
        if (*v80 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v79 + 1) + 8 * v18++) prepareForObliterationWithReason:*(a1 + 48)];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v79 objects:v90 count:16];
    }

    while (v16);
  }

  _HKInitializeLogging();
  v19 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "*** INVALIDATING PROFILES", buf, 2u);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v20 = *(a1 + 40);
  v21 = [v20 countByEnumeratingWithState:&v75 objects:v89 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v76;
    do
    {
      v24 = 0;
      do
      {
        if (*v76 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v75 + 1) + 8 * v24++) invalidateAndWaitWithReason:@"OBLITERATION"];
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v75 objects:v89 count:16];
    }

    while (v22);
  }

  _HKInitializeLogging();
  v25 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_228986000, v25, OS_LOG_TYPE_ERROR, "*** INVALIDATING DAEMON EXTENSIONS", buf, 2u);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v26 = [*(*(a1 + 32) + 200) allValues];
  v27 = [v26 countByEnumeratingWithState:&v71 objects:v88 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v72;
    do
    {
      v30 = 0;
      do
      {
        if (*v72 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v71 + 1) + 8 * v30);
        if (objc_opt_respondsToSelector())
        {
          [v31 prepareForObliteration];
        }

        ++v30;
      }

      while (v28 != v30);
      v28 = [v26 countByEnumeratingWithState:&v71 objects:v88 count:16];
    }

    while (v28);
  }

  _HKInitializeLogging();
  v32 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_228986000, v32, OS_LOG_TYPE_ERROR, "*** OBLITERATING PROFILES", buf, 2u);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v33 = *(a1 + 40);
  v34 = [v33 countByEnumeratingWithState:&v67 objects:v87 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v68;
    do
    {
      v37 = 0;
      do
      {
        if (*v68 != v36)
        {
          objc_enumerationMutation(v33);
        }

        [*(*(&v67 + 1) + 8 * v37++) obliterateWithOptions:*(a1 + 72) reason:*(a1 + 48)];
      }

      while (v35 != v37);
      v35 = [v33 countByEnumeratingWithState:&v67 objects:v87 count:16];
    }

    while (v35);
  }

  _HKInitializeLogging();
  v38 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "*** OBLITERATING DAEMON OWNED DATA", buf, 2u);
  }

  v39 = *(a1 + 32);
  if (v39)
  {
    v40 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v41 = [v39 localContentURL];
    *&v83 = 0;
    v42 = [v40 removeItemAtURL:v41 error:&v83];
    v43 = v83;

    if ((v42 & 1) == 0)
    {
      _HKInitializeLogging();
      v44 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v43;
        _os_log_error_impl(&dword_228986000, v44, OS_LOG_TYPE_ERROR, "Failed to remove local content during obliteration: %{public}@", buf, 0xCu);
      }
    }
  }

  _HKInitializeLogging();
  v45 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_228986000, v45, OS_LOG_TYPE_ERROR, "*** KILLING CLIENTS", buf, 2u);
  }

  v46 = *(a1 + 32);
  v47 = v3;
  v48 = v47;
  if (v46 && [v47 count])
  {
    _HKInitializeLogging();
    v49 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      v50 = v49;
      v51 = [v48 count];
      *buf = 134217984;
      *&buf[4] = v51;
      _os_log_impl(&dword_228986000, v50, OS_LOG_TYPE_DEFAULT, "Terminating %lu clients in response to obliteration", buf, 0xCu);
    }

    v52 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifiers:v48];
    v53 = [objc_alloc(MEMORY[0x277D47010]) initWithExplanation:@"Health database obliterated"];
    v54 = [objc_alloc(MEMORY[0x277D47018]) initWithPredicate:v52 context:v53];
    *&v83 = 0;
    v55 = [v54 execute:&v83];
    v56 = v83;
    _HKInitializeLogging();
    v57 = *v12;
    v58 = *v12;
    if (v55)
    {
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v48;
        _os_log_impl(&dword_228986000, v57, OS_LOG_TYPE_DEFAULT, "Did terminate clients (%{public}@) in response to obliteration", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = v56;
      *&buf[12] = 2114;
      *&buf[14] = v48;
      _os_log_error_impl(&dword_228986000, v57, OS_LOG_TYPE_ERROR, "Failed to terminate clients in response to obliteration: %{public}@ (%{public}@)", buf, 0x16u);
    }
  }

  _HKInitializeLogging();
  v59 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_228986000, v59, OS_LOG_TYPE_ERROR, "*** CLEARING USER DEFAULTS DOMAINS", buf, 2u);
  }

  if (*(a1 + 32))
  {
    v60 = MEMORY[0x277CBEBD0];
    v61 = *MEMORY[0x277CCE500];
    *buf = *MEMORY[0x277CCE228];
    *&buf[8] = v61;
    v62 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:2];
    [v60 hk_deleteDomainsNamed:v62];
  }

  _HKInitializeLogging();
  v63 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_228986000, v63, OS_LOG_TYPE_ERROR, "*** NOTIFYING PLUGINS", buf, 2u);
  }

  v64 = [*(a1 + 32) pluginManager];
  [v64 notifyPluginsOfDatabaseObliteration];

  v65 = *(a1 + 64);
  if (v65)
  {
    (*(v65 + 16))();
  }

  _HKInitializeLogging();
  v66 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_228986000, v66, OS_LOG_TYPE_ERROR, "*** EXITING", buf, 2u);
  }

  [*(a1 + 32) terminateClean:0 reason:@"obliterating"];
  [*(a1 + 56) invalidate];
}

- (void)terminateClean:(BOOL)clean reason:(id)reason
{
  cleanCopy = clean;
  self->_isTerminating = 1;
  reasonCopy = reason;
  [(HDDaemon *)self _terminationCleanup];
  v6 = "";
  if (cleanCopy)
  {
    v6 = " clean";
  }

  reasonCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Terminating%s: %@", v6, reasonCopy];
  [(HDDaemon *)self invalidateAndWaitWithReason:reasonCopy];

  [(HDDaemon *)self exitClean:cleanCopy reason:reasonCopy];
}

- (void)_terminationCleanup
{
  if (self)
  {
    [*(self + 120) terminationCleanup];
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults synchronize];
  }
}

- (void)exitClean:(BOOL)clean reason:(id)reason
{
  cleanCopy = clean;
  v14 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = "";
    if (cleanCopy)
    {
      v8 = " clean";
    }

    *buf = 136315394;
    v11 = v8;
    v12 = 2114;
    v13 = reasonCopy;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "Exiting%s: %{public}@", buf, 0x16u);
  }

  if (cleanCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__HDDaemon_exitClean_reason___block_invoke;
    block[3] = &unk_278613968;
    block[4] = self;
    if (exitClean_reason__onceToken != -1)
    {
      dispatch_once(&exitClean_reason__onceToken, block);
    }

    xpc_transaction_exit_clean();
  }

  else if ((atomic_exchange(&self->_hasCalledExit, 1u) & 1) == 0)
  {
    exit(0);
  }
}

void __29__HDDaemon_exitClean_reason___block_invoke(uint64_t a1)
{
  v2 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, 0);
  v3 = exitClean_reason__timerSource;
  exitClean_reason__timerSource = v2;

  v4 = exitClean_reason__timerSource;
  v5 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __29__HDDaemon_exitClean_reason___block_invoke_2;
  handler[3] = &unk_278613968;
  handler[4] = *(a1 + 32);
  dispatch_source_set_event_handler(exitClean_reason__timerSource, handler);
  dispatch_resume(exitClean_reason__timerSource);
}

uint64_t __29__HDDaemon_exitClean_reason___block_invoke_2(uint64_t a1)
{
  xpc_transaction_try_exit_clean();
  v2 = *(a1 + 32);

  return [v2 exitClean:0 reason:@"forcing as xpc failed to quiesce"];
}

void __32__HDDaemon__setUpSignalHandlers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(HDDaemon *)WeakRetained _terminationCleanup];
    [v2 exitClean:0 reason:@"received SIGTERM"];
    WeakRetained = v2;
  }
}

- (NSObject)_setupSignal:(void *)signal handler:
{
  v13 = *MEMORY[0x277D85DE8];
  signalCopy = signal;
  v6 = dispatch_source_create(MEMORY[0x277D85D30], a2, 0, *(self + 32));
  if (v6)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __33__HDDaemon__setupSignal_handler___block_invoke;
    handler[3] = &unk_278613658;
    v10 = signalCopy;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_resume(v6);
    signal(a2, 1);
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v12 = a2;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "Could not set up signal handler for %d", buf, 8u);
    }
  }

  return v6;
}

void __32__HDDaemon__setUpSignalHandlers__block_invoke_2()
{
  v0 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
  [v0 logAllDiagnostics];
}

void __32__HDDaemon__setUpSignalHandlers__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    [v2 postNotificationName:@"HDUSR2SignalNotification" object:v3];

    WeakRetained = v3;
  }
}

void __48__HDDaemon__setUpDarwinNotificationEventHandler__block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = v3;
  if (WeakRetained)
  {
    if (MEMORY[0x22AAC9AB0](v4) == MEMORY[0x277D86468])
    {
      string = xpc_dictionary_get_string(v4, *MEMORY[0x277D86430]);
      if (string)
      {
        v6 = string;
        _HKInitializeLogging();
        v7 = *MEMORY[0x277CCC2B0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v25 = v6;
          _os_log_debug_impl(&dword_228986000, v7, OS_LOG_TYPE_DEBUG, "Received notifyd notification %s", buf, 0xCu);
        }

        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v8 = [WeakRetained[25] allValues];
        v9 = [v8 countByEnumeratingWithState:&v18 objects:buf count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v19;
LABEL_8:
          v12 = 0;
          while (1)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v18 + 1) + 8 * v12);
            if (objc_opt_respondsToSelector() & 1) != 0 && ([v13 daemonDidReceiveNotification:v6])
            {
              goto LABEL_19;
            }

            if (v10 == ++v12)
            {
              v10 = [v8 countByEnumeratingWithState:&v18 objects:buf count:16];
              if (v10)
              {
                goto LABEL_8;
              }

              break;
            }
          }
        }

        if (!strcasecmp("com.apple.Preferences.ResetPrivacyWarningsNotification", v6))
        {
          [WeakRetained _resetPrivacySettings];
        }

        if (!strcasecmp("com.apple.springboard.homescreenunlocked", v6))
        {
          v14 = xpc_dictionary_get_uint64(v4, "_State") != 0;
          v22 = @"HDDaemonHomescreenUnlockedAtHomescreenKey";
          v15 = [MEMORY[0x277CCABB0] numberWithBool:v14];
          v23 = v15;
          v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];

          v16 = [MEMORY[0x277CCAB98] defaultCenter];
          [v16 postNotificationName:@"HDDaemonHomescreenUnlockedNotification" object:WeakRetained userInfo:v8];

LABEL_19:
        }
      }
    }
  }
}

void __53__HDDaemon__setUpDistributedNotificationEventHandler__block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = v3;
  if (WeakRetained)
  {
    if (MEMORY[0x22AAC9AB0](v4) == MEMORY[0x277D86468])
    {
      string = xpc_dictionary_get_string(v4, *MEMORY[0x277D86430]);
      if (string)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
        _HKInitializeLogging();
        v7 = *MEMORY[0x277CCC2B0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v6;
          _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "Received distnoted notification %@", &buf, 0xCu);
        }

        if ([v6 hasPrefix:{@"com.apple.LaunchServices", WeakRetained}])
        {
          v8 = v4;
          v9 = v6;
          v10 = [v9 isEqualToString:@"com.apple.LaunchServices.applicationRegistered"];
          v11 = [v9 isEqualToString:@"com.apple.LaunchServices.applicationUnregistered"];
          if ((v10 & 1) != 0 || v11)
          {
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __44__HDDaemon__handleLaunchServicesEvent_name___block_invoke;
            block[3] = &unk_278613968;
            block[4] = WeakRetained;
            if (qword_280D67B78 != -1)
            {
              dispatch_once(&qword_280D67B78, block);
            }

            v12 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:WeakRetained activityName:@"AppInstallation"];
            v13 = qword_280D67B70;
            *&buf = MEMORY[0x277D85DD0];
            *(&buf + 1) = 3221225472;
            v19 = __44__HDDaemon__handleLaunchServicesEvent_name___block_invoke_2;
            v20 = &unk_278617B08;
            v14 = v8;
            v25 = v10;
            v21 = v14;
            v22 = WeakRetained;
            v23 = v9;
            v24 = v12;
            v15 = v12;
            dispatch_async(v13, &buf);
          }
        }
      }
    }
  }
}

uint64_t __44__HDDaemon__handleLaunchServicesEvent_name___block_invoke(uint64_t a1)
{
  v1 = HKCreateSerialDispatchQueueWithQOSClass();
  v2 = qword_280D67B70;
  qword_280D67B70 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

void __44__HDDaemon__handleLaunchServicesEvent_name___block_invoke_2(uint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEAC0];
  v3 = xpc_dictionary_get_value(*(a1 + 32), "UserInfo");
  v4 = [v2 hd_dictionaryFromXPCObject:v3];

  v5 = [v4 objectForKeyedSubscript:@"bundleIDs"];
  v6 = [v4 objectForKeyedSubscript:@"isPlaceholder"];
  v7 = [v6 BOOLValue];

  if (v5)
  {
    if (v7)
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC2B0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "Ignoring LaunchServices notification for placeholder", &v19, 2u);
      }
    }

    else
    {
      if (*(a1 + 64))
      {
        v11 = &HDHealthDaemonApplicationsInstalledNotification;
      }

      else
      {
        v11 = &HDHealthDaemonApplicationsUninstalledNotification;
      }

      v12 = *v11;
      if (*(a1 + 64))
      {
        v13 = &HDHealthDaemonApplicationsInstalledBundleIdentifiersKey;
      }

      else
      {
        v13 = &HDHealthDaemonApplicationsUninstalledBundleIdentifiersKey;
      }

      v21 = *v13;
      v22[0] = v5;
      v14 = MEMORY[0x277CBEAC0];
      v15 = v21;
      v16 = v12;
      v17 = [v14 dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v18 = [MEMORY[0x277CCAB98] defaultCenter];
      [v18 postNotificationName:v16 object:*(a1 + 40) userInfo:v17];
    }
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 48);
      v19 = 138412290;
      v20 = v10;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "%@ notification missing bundle identifiers", &v19, 0xCu);
    }
  }

  [*(a1 + 56) invalidate];
}

void __37__HDDaemon__setupRapportEventHandler__block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  if (MEMORY[0x22AAC9AB0]() == MEMORY[0x277D86468] && xpc_dictionary_get_string(xdict, *MEMORY[0x277D86430]) && xpc_dictionary_get_BOOL(xdict, "replyRequired"))
  {
    reply = xpc_dictionary_create_reply(xdict);
    if (reply)
    {
      xpc_dictionary_send_reply();
    }
  }
}

- (void)registerDaemonReadyObserver:(id)observer queue:(id)queue
{
  observerCopy = observer;
  queueCopy = queue;
  objc_initWeak(&location, self);
  queue = queueCopy;
  if (!queueCopy)
  {
    queue = self->_queue;
  }

  queueCopy2 = queue;

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__HDDaemon_registerDaemonReadyObserver_queue___block_invoke;
  aBlock[3] = &unk_27861B498;
  aBlock[4] = self;
  v10 = observerCopy;
  v16 = v10;
  v11 = queueCopy2;
  v17 = v11;
  objc_copyWeak(&v18, &location);
  v12 = _Block_copy(aBlock);
  os_unfair_lock_lock(&self->_daemonReadyLock);
  if (self->_daemonReady)
  {
    ++self->_numberOfDaemonReadyObserversAfterReady;
    os_unfair_lock_unlock(&self->_daemonReadyLock);
    v12[2](v12);
  }

  else
  {
    daemonReadyBlocks = self->_daemonReadyBlocks;
    ++self->_numberOfDaemonReadyObserversBeforeReady;
    v14 = _Block_copy(v12);
    [(NSMutableArray *)daemonReadyBlocks addObject:v14];

    os_unfair_lock_unlock(&self->_daemonReadyLock);
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __46__HDDaemon_registerDaemonReadyObserver_queue___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKLogDaemonInitialization();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);

  if (v3)
  {
    v4 = HKLogDaemonInitialization();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      label = dispatch_queue_get_label(*(a1 + 48));
      *buf = 138543874;
      v13 = v5;
      v14 = 2114;
      v15 = v6;
      v16 = 2080;
      v17 = label;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_INFO, "%{public}@: notify daemon ready for observer %{public}@ on queue %s", buf, 0x20u);
    }
  }

  v8 = *(a1 + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__HDDaemon_registerDaemonReadyObserver_queue___block_invoke_476;
  v9[3] = &unk_278617620;
  objc_copyWeak(&v11, (a1 + 56));
  v10 = *(a1 + 40);
  dispatch_async(v8, v9);

  objc_destroyWeak(&v11);
}

uint64_t __46__HDDaemon_registerDaemonReadyObserver_queue___block_invoke_476(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    WeakRetained = [*(a1 + 32) daemonReady:WeakRetained];
    v3 = v5;
  }

  return MEMORY[0x2821F96F8](WeakRetained, v3);
}

- (void)registerDaemonActivatedObserver:(id)observer queue:(id)queue
{
  observerCopy = observer;
  selfCopy = self;
  v8 = selfCopy;
  if (!queue)
  {
    queue = selfCopy->_queue;
  }

  v9 = queue;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __50__HDDaemon_registerDaemonActivatedObserver_queue___block_invoke;
  v19 = &unk_278616D68;
  v20 = v8;
  v10 = observerCopy;
  v21 = v10;
  v11 = v9;
  v22 = v11;
  v12 = v8;
  v23 = v12;
  v13 = _Block_copy(&v16);
  os_unfair_lock_lock(v12 + 34);
  if (v12[42]._os_unfair_lock_opaque)
  {
    os_unfair_lock_unlock(v12 + 34);
    v13[2](v13);
  }

  else
  {
    v14 = *&v12[44]._os_unfair_lock_opaque;
    v15 = _Block_copy(v13);
    [v14 addObject:{v15, v16, v17, v18, v19, v20, v21, v22}];

    os_unfair_lock_unlock(v12 + 34);
  }
}

void __50__HDDaemon_registerDaemonActivatedObserver_queue___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKLogInfrastructure();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);

  if (v3)
  {
    v4 = HKLogInfrastructure();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      label = dispatch_queue_get_label(*(a1 + 48));
      *buf = 138543874;
      v13 = v5;
      v14 = 2114;
      v15 = v6;
      v16 = 2080;
      v17 = label;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_INFO, "%{public}@: notify daemon activated for observer %{public}@ on queue %s", buf, 0x20u);
    }
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__HDDaemon_registerDaemonActivatedObserver_queue___block_invoke_477;
  v9[3] = &unk_278613920;
  v8 = *(a1 + 48);
  v10 = *(a1 + 40);
  v11 = *(a1 + 56);
  dispatch_async(v8, v9);
}

- (void)registerProtectedResourceStoreProvider:(id)provider
{
  providerCopy = provider;
  os_unfair_lock_lock(&self->_protectedResourceStoreProvidersLock);
  protectedResourceStoreProviders = self->_protectedResourceStoreProviders;
  if (!protectedResourceStoreProviders)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v6 = self->_protectedResourceStoreProviders;
    self->_protectedResourceStoreProviders = weakObjectsHashTable;

    protectedResourceStoreProviders = self->_protectedResourceStoreProviders;
  }

  [(NSHashTable *)protectedResourceStoreProviders addObject:providerCopy];
  os_unfair_lock_unlock(&self->_protectedResourceStoreProvidersLock);
}

- (void)unregisterProtectedResourceStoreProvider:(id)provider
{
  providerCopy = provider;
  os_unfair_lock_lock(&self->_protectedResourceStoreProvidersLock);
  [(NSHashTable *)self->_protectedResourceStoreProviders removeObject:providerCopy];

  os_unfair_lock_unlock(&self->_protectedResourceStoreProvidersLock);
}

- (id)protectedResourceStoreProviders
{
  os_unfair_lock_lock(&self->_protectedResourceStoreProvidersLock);
  protectedResourceStoreProviders = self->_protectedResourceStoreProviders;
  if (protectedResourceStoreProviders)
  {
    allObjects = [(NSHashTable *)protectedResourceStoreProviders allObjects];
  }

  else
  {
    allObjects = MEMORY[0x277CBEBF8];
  }

  os_unfair_lock_unlock(&self->_protectedResourceStoreProvidersLock);

  return allObjects;
}

- (void)setDaemonTester:(id)tester
{
  obj = tester;
  os_unfair_lock_lock(&self->_daemonReadyLock);
  objc_storeWeak(&self->_daemonTester, obj);
  daemonReady = self->_daemonReady;
  os_unfair_lock_unlock(&self->_daemonReadyLock);
  if (daemonReady)
  {
    [obj daemonReadyComplete:self];
  }
}

- (void)performBlockWithPowerAssertionIdentifier:(id)identifier transactionName:(id)name powerAssertionInterval:(double)interval block:(id)block
{
  identifierCopy = identifier;
  nameCopy = name;
  blockCopy = block;
  if (identifierCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDaemon.m" lineNumber:937 description:{@"Invalid parameter not satisfying: %@", @"transactionName != nil"}];

    if (blockCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDDaemon.m" lineNumber:936 description:{@"Invalid parameter not satisfying: %@", @"powerAssertionIdentifier != nil"}];

  if (!nameCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (blockCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"HDDaemon.m" lineNumber:938 description:{@"Invalid parameter not satisfying: %@", @"block != NULL"}];

LABEL_4:
  v13 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:self activityName:nameCopy];
  v14 = [HDPowerAssertion powerAssertionWithIdentifier:identifierCopy timeout:0 timeoutHandler:interval];
  blockCopy[2](blockCopy);
  [v14 invalidate];
  [v13 invalidate];
}

- (void)unregisterForLaunchNotification:(const char *)notification
{
  if (self)
  {
    xpc_set_event();
  }
}

- (void)registerForLaunchNotification:(const char *)notification
{
  if (self)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v4, "Notification", notification);
    xpc_set_event();
  }
}

- (id)healthDirectorySizeInBytes
{
  v34[1] = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  healthDirectoryURL = [(HDDaemon *)self healthDirectoryURL];
  v5 = *MEMORY[0x277CBE908];
  v34[0] = *MEMORY[0x277CBE908];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  v7 = [defaultManager enumeratorAtURL:healthDirectoryURL includingPropertiesForKeys:v6 options:0 errorHandler:&__block_literal_global_491];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = 0;
    v13 = *v26;
    *&v10 = 138543618;
    v22 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        v23 = 0;
        v24 = 0;
        v16 = [v15 getResourceValue:&v24 forKey:v5 error:{&v23, v22}];
        v17 = v24;
        v18 = v23;
        if (v16)
        {
          v12 += [v17 unsignedLongLongValue];
        }

        else
        {
          _HKInitializeLogging();
          v19 = *MEMORY[0x277CCC2B0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
          {
            *buf = v22;
            v30 = v15;
            v31 = 2114;
            v32 = v18;
            _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "Unable to determine file size for %{public}@: %{public}@", buf, 0x16u);
          }
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v12];

  return v20;
}

uint64_t __38__HDDaemon_healthDirectorySizeInBytes__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
  {
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "Unable to enumerate %{public}@: %{public}@", &v8, 0x16u);
  }

  return 1;
}

void __41__HDDaemon__registerForDeviceNameChanges__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v1 = [WeakRetained profileManager];
    v2 = [v1 allProfileIdentifiers];

    v3 = [v2 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v3)
    {
      v5 = v3;
      v6 = 0;
      v7 = *v20;
      *&v4 = 138543618;
      v16 = v4;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v2);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          v10 = [WeakRetained profileManager];
          v11 = [v10 profileForIdentifier:v9];

          if (v11)
          {
            v12 = [v11 sourceManager];
            v18 = v6;
            v13 = [v12 updateCurrentDeviceNameWithError:&v18];
            v14 = v18;

            if ((v13 & 1) == 0)
            {
              _HKInitializeLogging();
              v15 = *MEMORY[0x277CCC2B0];
              if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
              {
                *buf = v16;
                v24 = v9;
                v25 = 2114;
                v26 = v14;
                _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "Current device source name update failed for profile with identifier %{public}@: %{public}@", buf, 0x16u);
              }
            }

            v6 = v14;
          }
        }

        v5 = [v2 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }
  }
}

- (void)_resetPrivacySettings
{
  v30[2] = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = HKLogAuthorization();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_228986000, v3, OS_LOG_TYPE_ERROR, "Resetting privacy settings", buf, 2u);
  }

  primaryProfile = [(HDDaemon *)self primaryProfile];
  authorizationManager = [primaryProfile authorizationManager];
  [authorizationManager resetAllAuthorizationRecordsWithCompletion:0];

  v6 = objc_alloc(MEMORY[0x277D2BA58]);
  v7 = *MEMORY[0x277CCE500];
  v8 = [v6 initWithDomain:*MEMORY[0x277CCE500]];
  v9 = MEMORY[0x277CBEB98];
  v10 = *MEMORY[0x277CCE510];
  v30[0] = *MEMORY[0x277CCE518];
  v30[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v12 = [v9 setWithArray:v11];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [v8 removeObjectForKey:{*(*(&v21 + 1) + 8 * i), v21}];
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  synchronize = [v8 synchronize];
  if (synchronize)
  {
    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v26 = v8;
      v27 = 2114;
      v28 = synchronize;
      _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "Failed to synchronize %{public}@: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v20 = objc_alloc_init(MEMORY[0x277D2BA60]);
    [v20 synchronizeNanoDomain:v7 keys:v13];
  }
}

- (NSURL)localContentURL
{
  healthDirectoryURL = [(HDDaemon *)self healthDirectoryURL];
  v3 = [healthDirectoryURL URLByAppendingPathComponent:@"Local" isDirectory:1];

  return v3;
}

- (id)createApplicationStateMonitor
{
  v2 = objc_alloc_init(MEMORY[0x277CEEE90]);

  return v2;
}

- (id)createApplicationStateMonitorWithBundleIDs:(id)ds states:(unsigned int)states elevatedPriority:(BOOL)priority
{
  priorityCopy = priority;
  v6 = *&states;
  v7 = MEMORY[0x277CEEE90];
  dsCopy = ds;
  v9 = [[v7 alloc] initWithBundleIDs:dsCopy states:v6 elevatedPriority:priorityCopy];

  return v9;
}

- (id)createRBSProcessStateProvider
{
  v2 = objc_alloc_init(HDRBSProcessStateProvider);

  return v2;
}

- (id)diagnosticDescription
{
  os_unfair_lock_lock(&self->_daemonReadyLock);
  numberOfDaemonReadyObserversBeforeReady = self->_numberOfDaemonReadyObserversBeforeReady;
  numberOfDaemonReadyObserversAfterReady = self->_numberOfDaemonReadyObserversAfterReady;
  os_unfair_lock_unlock(&self->_daemonReadyLock);
  return [MEMORY[0x277CCACA8] stringWithFormat:@"DaemonReadyObservers: %ld (%ld before ready, %ld after ready)", numberOfDaemonReadyObserversAfterReady + numberOfDaemonReadyObserversBeforeReady, numberOfDaemonReadyObserversBeforeReady, numberOfDaemonReadyObserversAfterReady];
}

- (id)_newConnectionManager
{
  v3 = [HDDaemonConnectionManager alloc];
  v4 = *MEMORY[0x277CCC1D8];

  return [(HDDaemonConnectionManager *)v3 initWithMachServiceName:v4 daemon:self];
}

- (id)_newDatabasePruningCoordinator
{
  v3 = [HDDatabasePruningCoordinator alloc];

  return [(HDDatabasePruningCoordinator *)v3 initWithDaemon:self];
}

- (id)_newCloudSyncCoordinator
{
  v3 = [HDCloudSyncCoordinator alloc];

  return [(HDCloudSyncCoordinator *)v3 initWithDaemon:self];
}

- (id)_newAnalyticsSubmissionCoordinator
{
  if (!self->_primaryProfile)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDaemon.m" lineNumber:1169 description:{@"Invalid parameter not satisfying: %@", @"_primaryProfile"}];
  }

  v3 = [HDAnalyticsSubmissionCoordinator alloc];
  primaryProfile = self->_primaryProfile;

  return [(HDAnalyticsSubmissionCoordinator *)v3 initWithProfile:primaryProfile];
}

- (id)_newAutoBugCaptureReporter
{
  v3 = [HDAutoBugCaptureReporter alloc];

  return [(HDAutoBugCaptureReporter *)v3 initWithDaemon:self];
}

- (id)_newNotificationInstructionSyncService
{
  v3 = [HDNotificationInstructionSyncService alloc];

  return [(HDNotificationInstructionSyncService *)v3 initWithDaemon:self];
}

- (id)_newOTAFeatureAvailabilityManager
{
  v3 = [HDOTAFeatureAvailabilityManager alloc];

  return [(HDOTAFeatureAvailabilityManager *)v3 initWithDaemon:self];
}

- (id)_newPrimaryProfile
{
  if (!self->_healthDirectoryPath)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDaemon.m" lineNumber:1194 description:{@"Invalid parameter not satisfying: %@", @"_healthDirectoryPath"}];
  }

  v3 = [HDPrimaryProfile alloc];
  healthDirectoryPath = self->_healthDirectoryPath;
  medicalIDDirectoryPath = self->_medicalIDDirectoryPath;

  return [(HDPrimaryProfile *)v3 initWithDirectoryPath:healthDirectoryPath medicalIDDirectoryPath:medicalIDDirectoryPath daemon:self];
}

- (id)_newProcessStateManager
{
  v3 = [HDProcessStateManager alloc];

  return [(HDProcessStateManager *)v3 initWithApplicationStateMonitorProvider:self];
}

- (id)_newPluginManager
{
  v3 = [HDPluginManager alloc];

  return [(HDPluginManager *)v3 initWithDaemon:self];
}

- (id)_newProfileManager
{
  v3 = [HDProfileManager alloc];

  return [(HDProfileManager *)v3 initWithDaemon:self];
}

- (id)_newMaintenanceWorkCoordinator
{
  v3 = [HDMaintenanceWorkCoordinator alloc];
  analyticsSubmissionCoordinator = self->_analyticsSubmissionCoordinator;
  contentProtectionManager = self->_contentProtectionManager;

  return [(HDMaintenanceWorkCoordinator *)v3 initWithAnalyticsCoordinator:analyticsSubmissionCoordinator contentProtectionManager:contentProtectionManager];
}

- (id)_newTaskServerRegistry
{
  v3 = [HDTaskServerRegistry alloc];

  return [(HDTaskServerRegistry *)v3 initWithDaemon:self];
}

- (void)applicationStateDidChange:(id)change
{
  v29[3] = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = MEMORY[0x277CBEB98];
  v6 = *MEMORY[0x277CCE340];
  v29[0] = @"com.apple.ActivityMonitorApp";
  v29[1] = v6;
  v29[2] = *MEMORY[0x277CCE528];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  v8 = [v5 setWithArray:v7];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __38__HDDaemon_applicationStateDidChange___block_invoke;
  v26[3] = &unk_27861B508;
  v9 = v8;
  v27 = v9;
  v10 = [changeCopy hk_filter:v26];
  if ([v10 count])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      selfCopy = self;
      v14 = *v23;
      v15 = &HDHealthDaemonFitnessAppsRestrictedNotification;
LABEL_4:
      v16 = 0;
      while (1)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        appState = [*(*(&v22 + 1) + 8 * v16) appState];
        isRestricted = [appState isRestricted];

        if (isRestricted)
        {
          break;
        }

        if (v13 == ++v16)
        {
          v13 = [v11 countByEnumeratingWithState:&v22 objects:v28 count:16];
          if (v13)
          {
            goto LABEL_4;
          }

          v15 = &HDHealthDaemonFitnessAppsAllowedNotification;
          break;
        }
      }

      self = selfCopy;
    }

    else
    {
      v15 = &HDHealthDaemonFitnessAppsAllowedNotification;
    }

    v19 = *v15;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:v19 object:self];
  }
}

uint64_t __38__HDDaemon_applicationStateDidChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 bundleIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

@end