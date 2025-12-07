@interface HDPeriodicCountryMonitor
- (HDKeyValueDomain)_lastActivePairedBuildIdentifiersDomain;
- (HDPeriodicCountryMonitor)initWithProfile:(id)profile nanoSyncManager:(id)manager;
- (HDPeriodicCountryMonitor)initWithProfile:(id)profile nanoSyncManager:(id)manager countryCodeProvider:(id)provider userDefaults:(id)defaults;
- (_HDPeriodicCountryMonitorPairedBuildIdentifiers)_currentPairedBuildIdentifiers;
- (const)_lock_enterStateIfPossible:(const os_unfair_lock *)result;
- (id)diagnosticDescription;
- (void)_enqueueMaintenanceOperationIfNeeded;
- (void)_fetchCountryIfNeededWithCompletion:(uint64_t)completion;
- (void)_recordSuccessfulFetchForCurrentPairedBuilds;
- (void)enqueueMaintenanceFetch;
- (void)fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion:(id)completion;
- (void)nanoSyncManager:(id)manager pairedDevicesChanged:(id)changed;
@end

@implementation HDPeriodicCountryMonitor

- (HDPeriodicCountryMonitor)initWithProfile:(id)profile nanoSyncManager:(id)manager
{
  v6 = MEMORY[0x277CBEBD0];
  managerCopy = manager;
  profileCopy = profile;
  standardUserDefaults = [v6 standardUserDefaults];
  v10 = [(HDPeriodicCountryMonitor *)self initWithProfile:profileCopy nanoSyncManager:managerCopy countryCodeProvider:&__block_literal_global_12 userDefaults:standardUserDefaults];

  return v10;
}

- (HDPeriodicCountryMonitor)initWithProfile:(id)profile nanoSyncManager:(id)manager countryCodeProvider:(id)provider userDefaults:(id)defaults
{
  profileCopy = profile;
  managerCopy = manager;
  providerCopy = provider;
  defaultsCopy = defaults;
  v27.receiver = self;
  v27.super_class = HDPeriodicCountryMonitor;
  v14 = [(HDPeriodicCountryMonitor *)&v27 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_profile, profileCopy);
    objc_storeStrong(&v15->_nanoSyncManager, manager);
    v16 = _Block_copy(providerCopy);
    countryCodeProvider = v15->_countryCodeProvider;
    v15->_countryCodeProvider = v16;

    objc_storeStrong(&v15->_userDefaults, defaults);
    v18 = objc_alloc(MEMORY[0x277CCDA88]);
    v19 = [(HDPeriodicCountryMonitor *)v15 hk_classNameWithTag:@"observers"];
    v20 = HKLogInfrastructure();
    v21 = [v18 initWithName:v19 loggingCategory:v20];
    observers = v15->_observers;
    v15->_observers = v21;

    v15->_state = 0;
    v15->_lock_shouldBypassNextBuildVersionLimit = 0;
    v15->_lock._os_unfair_lock_opaque = 0;
    v23 = HKCreateSerialDispatchQueue();
    observerQueue = v15->_observerQueue;
    v15->_observerQueue = v23;

    [managerCopy addObserver:v15];
    mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [mEMORY[0x277D10AF8] addObject:v15];
  }

  return v15;
}

- (void)fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  _HKInitializeLogging();
  v5 = HKLogInfrastructure();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Client requesting immediate fetch", &v12, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  self->_lock_shouldBypassNextBuildVersionLimit = 1;
  v7 = [(HDPeriodicCountryMonitor *)self _lock_enterStateIfPossible:?];
  os_unfair_lock_unlock(&self->_lock);
  if (v7)
  {
    [(HDPeriodicCountryMonitor *)self _fetchCountryIfNeededWithCompletion:completionCopy];
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogInfrastructure();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v12 = 138543362;
      v13 = v10;
      v11 = v10;
      _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to enter fetching state. Returning error to client.", &v12, 0xCu);
    }

    v9 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"A fetch is already in progress"];
    (*(completionCopy + 2))(completionCopy, 0, 0, v9);
  }
}

- (const)_lock_enterStateIfPossible:(const os_unfair_lock *)result
{
  v22 = *MEMORY[0x277D85DE8];
  if (!result)
  {
    return result;
  }

  v3 = result;
  os_unfair_lock_assert_owner(result + 12);
  v4 = *&v3[14]._os_unfair_lock_opaque;
  v5 = v4 - 1;
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1 || (a2 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }

    if (((a2 - 1) & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      goto LABEL_15;
    }

LABEL_11:
    _HKInitializeLogging();
    v6 = HKLogInfrastructure();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      if (v5 > 3)
      {
        v8 = @"WaitingForPairingChanges";
      }

      else
      {
        v8 = off_278614E98[v5];
      }

      if ((a2 - 1) > 3)
      {
        v10 = @"WaitingForPairingChanges";
      }

      else
      {
        v10 = off_278614E98[a2 - 1];
      }

      v16 = 138543874;
      v17 = v7;
      v18 = 2114;
      v19 = v8;
      v20 = 2114;
      v21 = v10;
      v11 = v7;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] State will change from %{public}@ to %{public}@", &v16, 0x20u);
    }

    *&v3[14]._os_unfair_lock_opaque = a2;
    return 1;
  }

  if (v4 == 2 || v4 == 3)
  {
    if ((a2 & 0xFFFFFFFFFFFFFFFBLL) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (v4 != 4 || !a2)
  {
    goto LABEL_11;
  }

LABEL_15:
  _HKInitializeLogging();
  v9 = HKLogInfrastructure();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v12 = objc_opt_class();
    if (v5 > 3)
    {
      v13 = @"WaitingForPairingChanges";
    }

    else
    {
      v13 = off_278614E98[v5];
    }

    if ((a2 - 1) > 3)
    {
      v14 = @"WaitingForPairingChanges";
    }

    else
    {
      v14 = off_278614E98[a2 - 1];
    }

    v16 = 138543874;
    v17 = v12;
    v18 = 2114;
    v19 = v13;
    v20 = 2114;
    v21 = v14;
    v15 = v12;
    _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Invalid attempt to change state from %{public}@ to %{public}@", &v16, 0x20u);
  }

  return 0;
}

- (void)_fetchCountryIfNeededWithCompletion:(uint64_t)completion
{
  v3 = a2;
  v4 = v3;
  if (completion)
  {
    v5 = *(completion + 80);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __64__HDPeriodicCountryMonitor__fetchCountryIfNeededWithCompletion___block_invoke;
    v6[3] = &unk_278614E28;
    v6[4] = completion;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)enqueueMaintenanceFetch
{
  v7 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = HKLogInfrastructure();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = objc_opt_class();
    v4 = v6;
    _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Client requesting maintenance fetch", &v5, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  self->_lock_shouldBypassNextBuildVersionLimit = 1;
  os_unfair_lock_unlock(&self->_lock);
  [(HDPeriodicCountryMonitor *)self _enqueueMaintenanceOperationIfNeeded];
}

- (void)_enqueueMaintenanceOperationIfNeeded
{
  v12 = *MEMORY[0x277D85DE8];
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    v2 = [(HDPeriodicCountryMonitor *)self _lock_enterStateIfPossible:?];
    os_unfair_lock_unlock((self + 48));
    if (v2)
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __64__HDPeriodicCountryMonitor__enqueueMaintenanceOperationIfNeeded__block_invoke;
      v9[3] = &unk_278614DB0;
      v9[4] = self;
      v5 = [HDMaintenanceOperation maintenanceOperationWithName:v4 asynchronousBlock:v9];

      WeakRetained = objc_loadWeakRetained((self + 8));
      daemon = [WeakRetained daemon];
      maintenanceWorkCoordinator = [daemon maintenanceWorkCoordinator];
      [maintenanceWorkCoordinator enqueueMaintenanceOperation:v5];
    }

    else
    {
      _HKInitializeLogging();
      v5 = HKLogInfrastructure();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      *buf = 138543362;
      v11 = objc_opt_class();
      WeakRetained = v11;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to enter maintenance operation state", buf, 0xCu);
    }

LABEL_6:
  }
}

- (HDKeyValueDomain)_lastActivePairedBuildIdentifiersDomain
{
  v2 = [HDKeyValueDomain alloc];
  WeakRetained = objc_loadWeakRetained((self + 8));
  v4 = [(HDKeyValueDomain *)v2 initWithCategory:0 domainName:@"HDPeriodicCountryMonitor_ActivePairedBuildIdentifiers" profile:WeakRetained];

  return v4;
}

- (_HDPeriodicCountryMonitorPairedBuildIdentifiers)_currentPairedBuildIdentifiers
{
  if (self)
  {
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    currentOSBuild = [mEMORY[0x277CCDD30] currentOSBuild];

    pairedDevicesSnapshot = [*(self + 16) pairedDevicesSnapshot];
    activeDeviceInfo = [pairedDevicesSnapshot activeDeviceInfo];

    if (activeDeviceInfo)
    {
      sourceBundleIdentifier = [activeDeviceInfo sourceBundleIdentifier];
      v7 = MEMORY[0x277CCACA8];
      systemBuildVersion = [activeDeviceInfo systemBuildVersion];
      v9 = [v7 stringWithFormat:@"%@_%@", currentOSBuild, systemBuildVersion];

      currentOSBuild = v9;
    }

    else
    {
      sourceBundleIdentifier = @"NO_ACTIVE_PAIRED_DEVICE";
    }

    v10 = [[_HDPeriodicCountryMonitorPairedBuildIdentifiers alloc] initWithPairingIdentifier:sourceBundleIdentifier buildIdentifier:currentOSBuild];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_recordSuccessfulFetchForCurrentPairedBuilds
{
  v19 = *MEMORY[0x277D85DE8];
  _currentPairedBuildIdentifiers = [(HDPeriodicCountryMonitor *)self _currentPairedBuildIdentifiers];
  buildIdentifier = [_currentPairedBuildIdentifiers buildIdentifier];
  pairingIdentifier = [_currentPairedBuildIdentifiers pairingIdentifier];
  v6 = pairingIdentifier;
  v16 = 0;
  if (self)
  {
    v7 = pairingIdentifier;
    v8 = buildIdentifier;
    _lastActivePairedBuildIdentifiersDomain = [(HDPeriodicCountryMonitor *)self _lastActivePairedBuildIdentifiersDomain];
    v10 = [_lastActivePairedBuildIdentifiersDomain setString:v8 forKey:v7 error:&v16];

    v11 = v16;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = v11;

  if ((v10 & 1) == 0)
  {
    _HKInitializeLogging();
    v13 = HKLogInfrastructure();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      *buf = 138543362;
      v18 = v14;
      v15 = v14;
      _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "[%{public}@] Error recording successful fetch for current paired builds", buf, 0xCu);
    }
  }
}

- (void)nanoSyncManager:(id)manager pairedDevicesChanged:(id)changed
{
  v12 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  _HKInitializeLogging();
  v6 = HKLogInfrastructure();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2112;
    v11 = changedCopy;
    v7 = v9;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Observed paired devices snapshot change: %@", &v8, 0x16u);
  }

  [(HDPeriodicCountryMonitor *)self _enqueueMaintenanceOperationIfNeeded];
}

void __64__HDPeriodicCountryMonitor__enqueueMaintenanceOperationIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  if (v2)
  {
    os_unfair_lock_lock(&v2[12]);
    v4 = [(HDPeriodicCountryMonitor *)v2 _lock_enterStateIfPossible:?];
    os_unfair_lock_unlock(&v2[12]);
    if (v4)
    {
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __67__HDPeriodicCountryMonitor__runMaintenanceOperationWithCompletion___block_invoke;
      v5[3] = &unk_278614DD8;
      v6 = v3;
      [(HDPeriodicCountryMonitor *)v2 _fetchCountryIfNeededWithCompletion:v5];
    }

    else
    {
      v3[2](v3);
    }
  }
}

void __64__HDPeriodicCountryMonitor__fetchCountryIfNeededWithCompletion___block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBEAA8] date];
  if (v2)
  {
    [*(v2 + 24) setObject:v3 forKey:*MEMORY[0x277CCC658]];
  }

  v4 = [*(*(a1 + 32) + 40) allObservers];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __64__HDPeriodicCountryMonitor__fetchCountryIfNeededWithCompletion___block_invoke_2;
  v68[3] = &unk_278614E00;
  v68[4] = *(a1 + 32);
  v5 = [v4 hk_containsObjectPassingTest:v68];

  os_unfair_lock_lock((*(a1 + 32) + 48));
  if ((v5 & 1) == 0)
  {
    _HKInitializeLogging();
    v18 = HKLogInfrastructure();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      *buf = 138543362;
      *&buf[4] = v19;
      v20 = v19;
      _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping fetch as we have no observers", buf, 0xCu);
    }

    [(HDPeriodicCountryMonitor *)*(a1 + 32) _lock_enterStateIfPossible:?];
    os_unfair_lock_unlock((*(a1 + 32) + 48));
    v21 = *(a1 + 40);
    v22 = MEMORY[0x277CCA9B8];
    v23 = @"Skipped fetch due to no observers";
    v24 = 11;
    goto LABEL_31;
  }

  v6 = *(a1 + 32);
  if (!v6)
  {
    goto LABEL_28;
  }

  os_unfair_lock_assert_owner((v6 + 48));
  if (*(v6 + 64) == 1)
  {
    *(v6 + 64) = 0;
    goto LABEL_7;
  }

  v25 = [(HDPeriodicCountryMonitor *)v6 _currentPairedBuildIdentifiers];
  v26 = [v25 buildIdentifier];
  v27 = [v25 pairingIdentifier];
  v28 = v26;
  v69 = 0;
  v29 = v27;
  v30 = [(HDPeriodicCountryMonitor *)v6 _lastActivePairedBuildIdentifiersDomain];
  v31 = [v30 stringForKey:v29 error:&v69];

  v32 = v69;
  v33 = v32;
  if (!v31 && v32)
  {
    _HKInitializeLogging();
    v34 = HKLogInfrastructure();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v57 = objc_opt_class();
      *buf = 138543618;
      *&buf[4] = v57;
      *&buf[12] = 2114;
      *&buf[14] = v33;
      v58 = v57;
      _os_log_error_impl(&dword_228986000, v34, OS_LOG_TYPE_ERROR, "[%{public}@] Error attempting to read last active paired build identifier: %{public}@", buf, 0x16u);
    }

    goto LABEL_28;
  }

  if (v31)
  {
    v35 = [v31 isEqualToString:v28];

    if (v35)
    {
LABEL_28:
      _HKInitializeLogging();
      v36 = HKLogInfrastructure();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = objc_opt_class();
        *buf = 138543362;
        *&buf[4] = v37;
        v38 = v37;
        _os_log_impl(&dword_228986000, v36, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping fetch as we've already fetched for this paired build configuration", buf, 0xCu);
      }

      [(HDPeriodicCountryMonitor *)*(a1 + 32) _lock_enterStateIfPossible:?];
      os_unfair_lock_unlock((*(a1 + 32) + 48));
      v21 = *(a1 + 40);
      v22 = MEMORY[0x277CCA9B8];
      v23 = @"Background check already performed on this build configuration";
      v24 = 130;
      goto LABEL_31;
    }
  }

  else
  {
  }

LABEL_7:
  v7 = [(HDPeriodicCountryMonitor *)*(a1 + 32) _lock_enterStateIfPossible:?];
  _HKInitializeLogging();
  v8 = HKLogInfrastructure();
  v9 = v8;
  if (!v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v55 = objc_opt_class();
      *buf = 138543362;
      *&buf[4] = v55;
      v56 = v55;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to enter fetching state", buf, 0xCu);
    }

    os_unfair_lock_unlock((*(a1 + 32) + 48));
    v21 = *(a1 + 40);
    v22 = MEMORY[0x277CCA9B8];
    v23 = @"A fetch is already in progress";
    v24 = 100;
LABEL_31:
    v39 = [v22 hk_error:v24 description:v23];
    (*(v21 + 16))(v21, 0, 0, v39);
    goto LABEL_32;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    *buf = 138543362;
    *&buf[4] = v10;
    v11 = v10;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Fetching country code during maintenance operation", buf, 0xCu);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 48));
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v65 = __64__HDPeriodicCountryMonitor__fetchCountryIfNeededWithCompletion___block_invoke_332;
  v66 = &unk_278614DD8;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v67 = v13;
  if (v12)
  {
    v14 = v64;
    os_unfair_lock_lock((v12 + 48));
    if (*(v12 + 56) != 4)
    {
      v61 = [MEMORY[0x277CCA890] currentHandler];
      [v61 handleFailureInMethod:sel__fetchCountryCodeWithCompletion_ object:v12 file:@"HDPeriodicCountryMonitor.m" lineNumber:461 description:@"Must be in the fetching state"];
    }

    v15 = (*(*(v12 + 32) + 16))();
    v16 = *(v12 + 72);
    *(v12 + 72) = v15;

    os_unfair_lock_unlock((v12 + 48));
    v17 = [*(v12 + 72) currentEstimate];
    if (v17)
    {
      v63 = 0;
    }

    else
    {
      _HKInitializeLogging();
      v40 = HKLogInfrastructure();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v59 = objc_opt_class();
        *buf = 138543618;
        *&buf[4] = v59;
        *&buf[12] = 2114;
        *&buf[14] = 0;
        v60 = v59;
        _os_log_error_impl(&dword_228986000, v40, OS_LOG_TYPE_ERROR, "[%{public}@] Error fetching mobile country code: %{public}@", buf, 0x16u);
      }

      v63 = [MEMORY[0x277CCA9B8] hk_error:109 description:@"Unexpectedly did not receive a countryCode"];
    }

    v41 = v17;
    os_unfair_lock_lock((v12 + 48));
    if (*(v12 + 56) != 4)
    {
      v62 = [MEMORY[0x277CCA890] currentHandler];
      [v62 handleFailureInMethod:sel__processCountryCodeResult_ object:v12 file:@"HDPeriodicCountryMonitor.m" lineNumber:482 description:@"Must be in the fetching state"];
    }

    v42 = *(v12 + 72);
    *(v12 + 72) = 0;

    os_unfair_lock_unlock((v12 + 48));
    if (v17)
    {
      v43 = [v41 provenance];
      v44 = *(v12 + 80);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __54__HDPeriodicCountryMonitor__processCountryCodeResult___block_invoke;
      v71 = &unk_278614E78;
      v72 = v12;
      v73 = v41;
      v74 = v43;
      dispatch_async(v44, buf);
      [v12 _recordSuccessfulFetchForCurrentPairedBuilds];
    }

    v45 = *(v12 + 88);
    if (v45)
    {
      v46 = v45;
    }

    else
    {
      v46 = [MEMORY[0x277CBEAA8] date];
    }

    v47 = v46;
    os_unfair_lock_lock((v12 + 48));
    [*(v12 + 24) setObject:v47 forKey:@"HDPeriodicCountryMonitor_LastFetchAttemptDate"];

    v48 = *(v12 + 24);
    WeakRetained = objc_loadWeakRetained((v12 + 8));
    v50 = [WeakRetained healthDaemon];
    v51 = [v50 behavior];
    v52 = [v51 currentOSBuild];
    [v48 setObject:v52 forKey:@"HDPeriodicCountryMonitor_LastFetchAttemptBuild"];

    os_unfair_lock_unlock((v12 + 48));
    os_unfair_lock_lock((v12 + 48));
    [(HDPeriodicCountryMonitor *)v12 _lock_enterStateIfPossible:?];
    os_unfair_lock_unlock((v12 + 48));

    v53 = [v41 ISOCode];
    v54 = [v41 provenance];
    (v65)(v14, v53, v54, v63);

    v39 = v67;
  }

  else
  {
    v39 = v13;
  }

LABEL_32:
}

void __54__HDPeriodicCountryMonitor__processCountryCodeResult___block_invoke(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKLogInfrastructure();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = a1[5];
    *buf = 138543618;
    v15 = v3;
    v16 = 2112;
    v17 = v4;
    v5 = v3;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying observers of country code: %@", buf, 0x16u);
  }

  v7 = a1[4];
  v6 = a1[5];
  v8 = *(v7 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__HDPeriodicCountryMonitor__processCountryCodeResult___block_invoke_348;
  v11[3] = &unk_278614E50;
  v11[4] = v7;
  v9 = v6;
  v10 = a1[6];
  v12 = v9;
  v13 = v10;
  [v8 notifyObservers:v11];
}

void __54__HDPeriodicCountryMonitor__processCountryCodeResult___block_invoke_348(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 ISOCode];
  [v5 periodicCountryMonitor:v3 didFetchISOCountryCode:v6 countryCodeProvenance:a1[6]];
}

- (id)diagnosticDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = v3;
  v5 = self->_state - 1;
  if (v5 > 3)
  {
    v6 = @"WaitingForPairingChanges";
  }

  else
  {
    v6 = off_278614E98[v5];
  }

  [v3 appendFormat:@"Current State: %@\n", v6];
  lastCheckAttemptDate = [(HDPeriodicCountryMonitor *)self lastCheckAttemptDate];
  [v4 appendFormat:@"Last Ran: %@\n", lastCheckAttemptDate];

  lastFetchAttemptDate = [(HDPeriodicCountryMonitor *)self lastFetchAttemptDate];
  [v4 appendFormat:@"Last Fetched: %@\n", lastFetchAttemptDate];

  lastFetchAttemptBuild = [(HDPeriodicCountryMonitor *)self lastFetchAttemptBuild];
  [v4 appendFormat:@"Last Build: %@\n", lastFetchAttemptBuild];

  v10 = objc_msgSend_copy(v4);

  return v10;
}

@end