@interface DNDSModernAssertionSyncManager
- (BOOL)_maintainMetadataBackingStore;
- (BOOL)_saveMetadataToBackingStore;
- (BOOL)syncService:(id)service shouldAcceptIncomingMessage:(id)message withVersionNumber:(unint64_t)number messageType:(id)type fromDeviceIdentifier:(id)identifier;
- (DNDSAssertionSyncManagerDataSource)dataSource;
- (DNDSAssertionSyncManagerDelegate)delegate;
- (DNDSModernAssertionSyncManager)initWithClientDetailsProvider:(id)provider localSyncService:(id)service cloudSyncService:(id)syncService keybag:(id)keybag;
- (id)sysdiagnoseDataForDate:(id)date redacted:(BOOL)redacted;
- (void)_loadMetadataFromBackingStore;
- (void)_queue_handleDidSendRequestIdentifier:(id)identifier withSuccess:(BOOL)success error:(id)error;
- (void)_queue_handleMessage:(id)message withVersionNumber:(unint64_t)number fromDeviceIdentifier:(id)identifier;
- (void)_queue_sendStateSnapshotToPairedDevices:(id)devices force:(BOOL)force;
- (void)_queue_updateDevices;
- (void)_saveMetadataToBackingStore;
- (void)dealloc;
- (void)forceUpdateAllDevices;
- (void)keybagDidUnlockForTheFirstTime:(id)time;
- (void)resume;
- (void)syncService:(id)service didReceiveMessage:(id)message withVersionNumber:(unint64_t)number messageType:(id)type fromDeviceIdentifier:(id)identifier;
- (void)syncService:(id)service didSendWithRequestIdentifier:(id)identifier withSuccess:(BOOL)success error:(id)error;
- (void)updateDevices:(id)devices force:(BOOL)force shouldFuzz:(BOOL)fuzz;
- (void)updateForModeAssertionUpdateResult:(id)result;
- (void)updateForStateUpdate:(id)update;
@end

@implementation DNDSModernAssertionSyncManager

- (DNDSModernAssertionSyncManager)initWithClientDetailsProvider:(id)provider localSyncService:(id)service cloudSyncService:(id)syncService keybag:(id)keybag
{
  providerCopy = provider;
  serviceCopy = service;
  syncServiceCopy = syncService;
  keybagCopy = keybag;
  v30.receiver = self;
  v30.super_class = DNDSModernAssertionSyncManager;
  v15 = [(DNDSModernAssertionSyncManager *)&v30 init];
  if (v15)
  {
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.donotdisturb.server.ModernAssertionSyncManager", v16);
    v18 = *(v15 + 1);
    *(v15 + 1) = v17;

    v19 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v15 + 1));
    v20 = *(v15 + 2);
    *(v15 + 2) = v19;

    objc_storeStrong(v15 + 3, service);
    objc_storeStrong(v15 + 4, syncService);
    objc_storeStrong(v15 + 5, provider);
    v21 = [MEMORY[0x277CBEB58] set];
    v22 = *(v15 + 9);
    *(v15 + 9) = v21;

    *(v15 + 80) = 0;
    v23 = *(v15 + 12);
    *(v15 + 11) = 0;
    *(v15 + 12) = 0;

    *(v15 + 26) = 0;
    v24 = [DNDSJSONBackingStore alloc];
    v25 = objc_opt_class();
    dnds_assertionSyncMetadataFileURL = [MEMORY[0x277CBEBC0] dnds_assertionSyncMetadataFileURL];
    v27 = [(DNDSJSONBackingStore *)v24 initWithRecordClass:v25 fileURL:dnds_assertionSyncMetadataFileURL versionNumber:0];
    v28 = *(v15 + 7);
    *(v15 + 7) = v27;

    [v15 _loadMetadataFromBackingStore];
    if ([v15 _maintainMetadataBackingStore])
    {
      [v15 _saveMetadataToBackingStore];
    }

    if (([keybagCopy hasUnlockedSinceBoot] & 1) == 0)
    {
      objc_storeStrong(v15 + 8, keybag);
      [*(v15 + 8) addObserver:v15];
    }

    DNDSRegisterSysdiagnoseDataProvider(v15);
  }

  return v15;
}

- (void)dealloc
{
  DNDSUnregisterSysdiagnoseDataProvider(self);
  v3.receiver = self;
  v3.super_class = DNDSModernAssertionSyncManager;
  [(DNDSModernAssertionSyncManager *)&v3 dealloc];
}

- (void)resume
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__DNDSModernAssertionSyncManager_resume__block_invoke;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __40__DNDSModernAssertionSyncManager_resume__block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 24) delegate];

  if (!v2)
  {
    [*(*(a1 + 32) + 24) setDelegate:?];
    [*(*(a1 + 32) + 24) resume];
  }

  v3 = [*(*(a1 + 32) + 32) delegate];

  if (!v3)
  {
    [*(*(a1 + 32) + 32) setDelegate:?];
    [*(*(a1 + 32) + 32) resume];
  }

  objc_initWeak(&location, *(a1 + 32));
  v4 = *(*(a1 + 32) + 16);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __40__DNDSModernAssertionSyncManager_resume__block_invoke_2;
  handler[3] = &unk_278F8AC08;
  objc_copyWeak(&v18, &location);
  dispatch_source_set_event_handler(v4, handler);
  dispatch_source_set_timer(*(*(a1 + 32) + 16), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_resume(*(*(a1 + 32) + 16));
  v5 = [*(a1 + 32) dataSource];
  v6 = [v5 currentlyActivePairedDeviceForSyncManager:*(a1 + 32)];
  v7 = [v5 pairedDevicesForSyncManager:*(a1 + 32)];
  v8 = [v7 allObjects];

  v9 = DNDSLogModernAssertionSync;
  v10 = os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v10)
    {
      *v16 = 0;
      _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Sending forced update to local paired device on resume.", v16, 2u);
    }

    v11 = *(a1 + 32);
    v21[0] = v6;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [v11 updateDevices:v12 force:1 shouldFuzz:1];

    v20 = v6;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    v14 = [v8 bs_differenceWithArray:v13];

    v8 = v14;
  }

  else if (v10)
  {
    *v16 = 0;
    _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Skipping initial state sync on resume because there isn't a paired device.", v16, 2u);
  }

  if ([v8 count])
  {
    v15 = DNDSLogModernAssertionSync;
    if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_24912E000, v15, OS_LOG_TYPE_DEFAULT, "Sending update to cloud devices on resume.", v16, 2u);
    }

    [*(a1 + 32) updateDevices:v8 force:0 shouldFuzz:1];
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __40__DNDSModernAssertionSyncManager_resume__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_updateDevices];
}

- (void)keybagDidUnlockForTheFirstTime:(id)time
{
  v7[1] = *MEMORY[0x277D85DE8];
  dataSource = [(DNDSModernAssertionSyncManager *)self dataSource];
  v5 = [dataSource currentlyActivePairedDeviceForSyncManager:self];

  if (v5)
  {
    v7[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    [(DNDSModernAssertionSyncManager *)self updateDevices:v6 force:1 shouldFuzz:0];
  }
}

- (void)updateForModeAssertionUpdateResult:(id)result
{
  v54[1] = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 1;
  dataSource = [(DNDSModernAssertionSyncManager *)self dataSource];
  assertions = [resultCopy assertions];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __69__DNDSModernAssertionSyncManager_updateForModeAssertionUpdateResult___block_invoke;
  v47[3] = &unk_278F8B010;
  v47[4] = &v48;
  v8 = [assertions bs_containsObjectPassingTest:v47];

  if ((v8 & 1) != 0 || ([resultCopy invalidations], v9 = objc_claimAutoreleasedReturnValue(), v46[0] = MEMORY[0x277D85DD0], v46[1] = 3221225472, v46[2] = __69__DNDSModernAssertionSyncManager_updateForModeAssertionUpdateResult___block_invoke_2, v46[3] = &unk_278F8B038, v46[4] = &v48, v10 = objc_msgSend(v9, "bs_containsObjectPassingTest:", v46), v9, v10))
  {
    v11 = [dataSource pairedDevicesForSyncManager:self];
    allObjects = [v11 allObjects];
    goto LABEL_4;
  }

  v14 = [dataSource currentlyActivePairedDeviceForSyncManager:self];
  v11 = v14;
  if (v14)
  {
    v15 = [v14 supportsKettle] ^ 1;
    v16 = [v11 isICloudEnabled] ^ 1;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  if (!v16)
  {
    allObjects = 0;
    goto LABEL_4;
  }

LABEL_15:
  deviceIdentifier = [v11 deviceIdentifier];
  assertions2 = [resultCopy assertions];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __69__DNDSModernAssertionSyncManager_updateForModeAssertionUpdateResult___block_invoke_3;
  v44[3] = &unk_278F8A0B0;
  v19 = deviceIdentifier;
  v45 = v19;
  v37 = [assertions2 bs_containsObjectPassingTest:v44];

  if (v37)
  {
    v20 = 1;
    if (!v15)
    {
      goto LABEL_21;
    }
  }

  else
  {
    invalidations = [resultCopy invalidations];
    v3 = v42;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __69__DNDSModernAssertionSyncManager_updateForModeAssertionUpdateResult___block_invoke_4;
    v42[3] = &unk_278F8A950;
    v43 = v19;
    v20 = [invalidations bs_containsObjectPassingTest:v42];

    v35 = &v43;
    if (!v15)
    {
      goto LABEL_21;
    }
  }

  invalidations2 = [resultCopy invalidations];
  v23 = [invalidations2 bs_containsObjectPassingTest:&__block_literal_global_17];

  if (v23)
  {
    v24 = 1;
    v25 = 1;
    v26 = 1;
    goto LABEL_24;
  }

LABEL_21:
  assertions3 = [resultCopy assertions];
  v3 = v40;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __69__DNDSModernAssertionSyncManager_updateForModeAssertionUpdateResult___block_invoke_6;
  v40[3] = &unk_278F8A0B0;
  v28 = v19;
  v41 = v28;
  v29 = [assertions3 bs_containsObjectPassingTest:v40];

  v36 = &v41;
  if (v29)
  {
    v26 = 0;
    v24 = 1;
    v25 = 1;
  }

  else
  {
    invalidations3 = [resultCopy invalidations];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __69__DNDSModernAssertionSyncManager_updateForModeAssertionUpdateResult___block_invoke_7;
    v38[3] = &unk_278F8A950;
    v39 = v28;
    v24 = [invalidations3 bs_containsObjectPassingTest:v38];

    v25 = 0;
    v26 = 0;
    v3 = &v39;
  }

LABEL_24:
  if ((v20 & v24) == 1)
  {
    v31 = [dataSource pairedDevicesForSyncManager:self];
    allObjects2 = [v31 allObjects];
  }

  else
  {
    if (!v20)
    {
      if (v24)
      {
        v54[0] = v11;
        allObjects = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:1];
      }

      else
      {
        allObjects = 0;
      }

      goto LABEL_29;
    }

    v33 = [dataSource pairedDevicesForSyncManager:self];
    v31 = [v33 mutableCopy];

    v34 = [MEMORY[0x277CBEB98] setWithObject:v11];
    [v31 minusSet:v34];

    allObjects2 = [v31 allObjects];
  }

  allObjects = allObjects2;

LABEL_29:
  if ((v25 & 1) == 0)
  {
  }

  if ((v26 & 1) == 0)
  {
  }

  if ((v37 & 1) == 0)
  {
  }

LABEL_4:
  if ([allObjects count])
  {
    [(DNDSModernAssertionSyncManager *)self updateDevices:allObjects force:0 shouldFuzz:*(v49 + 24)];
  }

  else
  {
    v13 = DNDSLogModernAssertionSync;
    if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v53 = resultCopy;
      _os_log_impl(&dword_24912E000, v13, OS_LOG_TYPE_DEFAULT, "Skipping update as it should not require sync: result=%{public}@", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v48, 8);
}

uint64_t __69__DNDSModernAssertionSyncManager_updateForModeAssertionUpdateResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 source];
  v5 = [v4 deviceIdentifier];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    if ([v3 isClientScheduled])
    {
      v7 = 1;
    }

    else
    {
      v7 = [v3 isUserInitiated] ^ 1;
    }

    *(*(*(a1 + 32) + 8) + 24) &= v7;
    v6 = [v3 isInternalScheduled] ^ 1;
  }

  return v6;
}

BOOL __69__DNDSModernAssertionSyncManager_updateForModeAssertionUpdateResult___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 source];
  v5 = [v4 deviceIdentifier];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) &= [v3 isUserInvalidated] ^ 1;
    v7 = [v3 assertion];
    if ([v7 isInternalScheduled])
    {
      v6 = [v3 reason] != 1;
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

uint64_t __69__DNDSModernAssertionSyncManager_updateForModeAssertionUpdateResult___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 source];
  v5 = [v4 deviceIdentifier];
  if ([v5 isEqual:*(a1 + 32)])
  {
    v6 = [v3 isInternalScheduled] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __69__DNDSModernAssertionSyncManager_updateForModeAssertionUpdateResult___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 reason] == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 source];
    v6 = [v5 deviceIdentifier];
    v4 = [v6 isEqual:*(a1 + 32)];
  }

  return v4;
}

BOOL __69__DNDSModernAssertionSyncManager_updateForModeAssertionUpdateResult___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 reason] == 1)
  {
    v3 = [v2 source];
    v4 = [v3 deviceIdentifier];
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __69__DNDSModernAssertionSyncManager_updateForModeAssertionUpdateResult___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 source];
  v5 = [v4 deviceIdentifier];
  if (v5)
  {
    v6 = [v3 source];
    v7 = [v6 deviceIdentifier];
    if ([v7 isEqual:*(a1 + 32)])
    {
      v8 = 0;
    }

    else
    {
      v8 = [v3 isInternalScheduled] ^ 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __69__DNDSModernAssertionSyncManager_updateForModeAssertionUpdateResult___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 reason] == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 source];
    v6 = [v5 deviceIdentifier];
    if (v6)
    {
      v7 = [v3 source];
      v8 = [v7 deviceIdentifier];
      v4 = [v8 isEqual:*(a1 + 32)] ^ 1;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)updateForStateUpdate:(id)update
{
  v7[1] = *MEMORY[0x277D85DE8];
  if ([update reason] == 3)
  {
    dataSource = [(DNDSModernAssertionSyncManager *)self dataSource];
    v5 = [dataSource currentlyActivePairedDeviceForSyncManager:self];

    if (v5)
    {
      if (([v5 supportsKettle] & 1) == 0)
      {
        v7[0] = v5;
        v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
        [(DNDSModernAssertionSyncManager *)self updateDevices:v6];
      }
    }
  }
}

- (void)forceUpdateAllDevices
{
  dataSource = [(DNDSModernAssertionSyncManager *)self dataSource];
  v4 = [dataSource pairedDevicesForSyncManager:self];
  allObjects = [v4 allObjects];

  [(DNDSModernAssertionSyncManager *)self updateDevices:allObjects force:1 shouldFuzz:1];
}

- (void)updateDevices:(id)devices force:(BOOL)force shouldFuzz:(BOOL)fuzz
{
  fuzzCopy = fuzz;
  forceCopy = force;
  v31 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  os_unfair_lock_lock(&self->_timerLock);
  if (forceCopy)
  {
    self->_timerQueuedForceUpdate = 1;
  }

  [(NSMutableSet *)self->_timerQueuedDevices addObjectsFromArray:devicesCopy];

  if (!self->_timerQueuedTransaction)
  {
    v9 = os_transaction_create();
    timerQueuedTransaction = self->_timerQueuedTransaction;
    self->_timerQueuedTransaction = v9;
  }

  if (fuzzCopy)
  {
    v11 = +[DNDSIDSServerBagValues resolvedScheduledActivityUpdateFuzzMilliseconds];
    v12 = DNDSLogModernAssertionSync;
    if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT))
    {
      v13 = MEMORY[0x277CCABB0];
      v14 = v12;
      v15 = [v13 numberWithUnsignedLongLong:v11];
      [v15 floatValue];
      v17 = [v13 numberWithDouble:v16 / 1000.0];
      *buf = 138412290;
      v30 = v17;
      _os_log_impl(&dword_24912E000, v14, OS_LOG_TYPE_DEFAULT, "Delaying sync of fuzzable change by %@ seconds.", buf, 0xCu);
    }

    fuzzTimer = self->_fuzzTimer;
    v19 = dispatch_walltime(0, 1000000 * v11);
    dispatch_source_set_timer(fuzzTimer, v19, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  }

  else
  {
    v20 = +[DNDSIDSServerBagValues resolvedActivityUpdateCoalescingSeconds];
    self->_timerCurrentDelay += v20;
    v21 = DNDSLogModernAssertionSync;
    if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_INFO))
    {
      v22 = MEMORY[0x277CCABB0];
      v23 = v21;
      v24 = [v22 numberWithUnsignedLongLong:v20];
      *buf = 138412290;
      v30 = v24;
      _os_log_impl(&dword_24912E000, v23, OS_LOG_TYPE_INFO, "Delaying sync for %@ seconds to coalesce update.", buf, 0xCu);
    }

    v25 = self->_fuzzTimer;
    v26 = dispatch_walltime(0, 1000000000 * v20);
    dispatch_source_set_timer(v25, v26, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
    timerCurrentDelay = self->_timerCurrentDelay;
    if (timerCurrentDelay > 60 * v20)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__DNDSModernAssertionSyncManager_updateDevices_force_shouldFuzz___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = timerCurrentDelay;
      if (updateDevices_force_shouldFuzz__onceToken != -1)
      {
        dispatch_once(&updateDevices_force_shouldFuzz__onceToken, block);
      }
    }
  }

  os_unfair_lock_unlock(&self->_timerLock);
}

void __65__DNDSModernAssertionSyncManager_updateDevices_force_shouldFuzz___block_invoke(uint64_t a1)
{
  v2 = DNDSLogModernAssertionSync;
  if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_ERROR))
  {
    __65__DNDSModernAssertionSyncManager_updateDevices_force_shouldFuzz___block_invoke_cold_1(a1, v2);
  }

  _DNDSRequestRadar(@"Focus detected excessive change rate.", 0, 1, @"/Library/Caches/com.apple.xbs/Sources/DoNotDisturbServer/DoNotDisturbServer/DNDSModernAssertionSyncManager.m", 471);
}

- (void)_queue_updateDevices
{
  dispatch_assert_queue_V2(self->_queue);
  dispatch_suspend(self->_fuzzTimer);
  os_unfair_lock_lock(&self->_timerLock);
  allObjects = [(NSMutableSet *)self->_timerQueuedDevices allObjects];
  v4 = [MEMORY[0x277CBEB58] set];
  timerQueuedDevices = self->_timerQueuedDevices;
  self->_timerQueuedDevices = v4;

  timerQueuedForceUpdate = self->_timerQueuedForceUpdate;
  self->_timerQueuedForceUpdate = 0;
  timerQueuedTransaction = self->_timerQueuedTransaction;
  self->_timerQueuedTransaction = 0;

  self->_timerCurrentDelay = 0;
  os_unfair_lock_unlock(&self->_timerLock);
  if (+[DNDSIDSServerBagValues resolvedActivityUpdateDisabled])
  {
    if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_ERROR))
    {
      [DNDSModernAssertionSyncManager _queue_updateDevices];
    }
  }

  else
  {
    [(DNDSModernAssertionSyncManager *)self _queue_sendStateSnapshotToPairedDevices:allObjects force:timerQueuedForceUpdate];
  }

  dispatch_resume(self->_fuzzTimer);
}

- (BOOL)syncService:(id)service shouldAcceptIncomingMessage:(id)message withVersionNumber:(unint64_t)number messageType:(id)type fromDeviceIdentifier:(id)identifier
{
  serviceCopy = service;
  typeCopy = type;
  identifierCopy = identifier;
  dataSource = [(DNDSModernAssertionSyncManager *)self dataSource];
  v15 = dataSource;
  if (self->_cloudSyncService != serviceCopy || ![dataSource isCloudSyncDisabledForSyncManager:self])
  {
    if (typeCopy)
    {
      if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_ERROR))
      {
        [DNDSModernAssertionSyncManager syncService:shouldAcceptIncomingMessage:withVersionNumber:messageType:fromDeviceIdentifier:];
      }

      goto LABEL_8;
    }

    if (self->_cloudSyncService == serviceCopy)
    {
      v17 = 1;
      goto LABEL_20;
    }

    v18 = [v15 currentlyActivePairedDeviceForSyncManager:self];
    deviceIdentifier = [v18 deviceIdentifier];
    v20 = [deviceIdentifier isEqualToString:identifierCopy];

    assertionSyncProtocolVersion = [v18 assertionSyncProtocolVersion];
    if (v20)
    {
      if (assertionSyncProtocolVersion == number)
      {
        v17 = 1;
LABEL_19:

        goto LABEL_20;
      }

      if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_ERROR))
      {
        [DNDSModernAssertionSyncManager syncService:shouldAcceptIncomingMessage:withVersionNumber:messageType:fromDeviceIdentifier:];
      }
    }

    else if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_ERROR))
    {
      [DNDSModernAssertionSyncManager syncService:shouldAcceptIncomingMessage:withVersionNumber:messageType:fromDeviceIdentifier:];
    }

    v17 = 0;
    goto LABEL_19;
  }

  v16 = DNDSLogModernAssertionSync;
  if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&dword_24912E000, v16, OS_LOG_TYPE_DEFAULT, "Rejecting message because cloud sync is disabled.", v23, 2u);
  }

LABEL_8:
  v17 = 0;
LABEL_20:

  return v17;
}

- (void)syncService:(id)service didReceiveMessage:(id)message withVersionNumber:(unint64_t)number messageType:(id)type fromDeviceIdentifier:(id)identifier
{
  v30 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  messageCopy = message;
  identifierCopy = identifier;
  v14 = DNDSLogModernAssertionSync;
  if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_INFO))
  {
    *buf = 134218754;
    v23 = serviceCopy;
    v24 = 2114;
    v25 = messageCopy;
    v26 = 2048;
    numberCopy = number;
    v28 = 2114;
    v29 = identifierCopy;
    _os_log_impl(&dword_24912E000, v14, OS_LOG_TYPE_INFO, "Received message from sync service; syncService=%p, message=%{public}@, versionNumber=%lu, deviceIdentifier=%{public}@", buf, 0x2Au);
  }

  queue = self->_queue;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __115__DNDSModernAssertionSyncManager_syncService_didReceiveMessage_withVersionNumber_messageType_fromDeviceIdentifier___block_invoke;
  v18[3] = &unk_278F8AA28;
  v18[4] = self;
  v19 = messageCopy;
  v20 = identifierCopy;
  numberCopy2 = number;
  v16 = identifierCopy;
  v17 = messageCopy;
  dispatch_sync(queue, v18);
}

- (void)syncService:(id)service didSendWithRequestIdentifier:(id)identifier withSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v32 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  identifierCopy = identifier;
  errorCopy = error;
  v13 = DNDSLogModernAssertionSync;
  if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_INFO))
  {
    v14 = MEMORY[0x277CCABB0];
    v15 = v13;
    v16 = [v14 numberWithBool:successCopy];
    *buf = 134218754;
    v25 = serviceCopy;
    v26 = 2114;
    v27 = identifierCopy;
    v28 = 2112;
    v29 = v16;
    v30 = 2114;
    v31 = errorCopy;
    _os_log_impl(&dword_24912E000, v15, OS_LOG_TYPE_INFO, "Sent message from sync service; syncService=%p, requestIdentifier=%{public}@, success=%@, error=%{public}@", buf, 0x2Au);
  }

  queue = self->_queue;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __93__DNDSModernAssertionSyncManager_syncService_didSendWithRequestIdentifier_withSuccess_error___block_invoke;
  v20[3] = &unk_278F89F20;
  v20[4] = self;
  v21 = identifierCopy;
  v23 = successCopy;
  v22 = errorCopy;
  v18 = errorCopy;
  v19 = identifierCopy;
  dispatch_sync(queue, v20);
}

- (void)_queue_handleMessage:(id)message withVersionNumber:(unint64_t)number fromDeviceIdentifier:(id)identifier
{
  v53 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  dataSource = [(DNDSModernAssertionSyncManager *)self dataSource];
  v11 = [dataSource syncManager:self deviceForDeviceIdentifier:identifierCopy];

  if (v11)
  {
    if ((number & 0xFFFFFFFFFFFFFFFCLL) == 8)
    {
      v12 = [DNDSModeAssertionStore newWithSyncDictionaryRepresentation:messageCopy];
      v13 = [v12 mutableCopy];

      v14 = [DNDSModeAssertionStore messageDateForSyncDictionaryRepresentation:messageCopy];
      if (v13)
      {
        lastReceivedStoreDate = [(DNDSModernAssertionSyncMetadataStore *)self->_metadata lastReceivedStoreDate];
        deviceIdentifier = [v11 deviceIdentifier];
        v17 = [lastReceivedStoreDate objectForKeyedSubscript:deviceIdentifier];
        v18 = v17;
        if (v17)
        {
          distantPast = v17;
        }

        else
        {
          distantPast = [MEMORY[0x277CBEAA8] distantPast];
        }

        v20 = distantPast;

        if ([v20 compare:v14] != -1)
        {
          v21 = DNDSLogModernAssertionSync;
          if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            v48 = identifierCopy;
            v49 = 2114;
            v50 = v14;
            v51 = 2114;
            v52 = v20;
            _os_log_impl(&dword_24912E000, v21, OS_LOG_TYPE_DEFAULT, "Received store from %{public}@ is older (%{public}@) than the last received store (%{public}@).", buf, 0x20u);
          }
        }

        v41 = v20;
        lastReceivedStoreDate2 = [(DNDSModernAssertionSyncMetadataStore *)self->_metadata lastReceivedStoreDate];
        deviceIdentifier2 = [v11 deviceIdentifier];
        [lastReceivedStoreDate2 setObject:v14 forKeyedSubscript:deviceIdentifier2];

        date = [MEMORY[0x277CBEAA8] date];
        [v13 sanitizeDatesForThreshold:date];

        [v13 resolveSourcesForSyncFromPairedDevice:v11];
        lastSentStoreDate = [(DNDSModernAssertionSyncMetadataStore *)self->_metadata lastSentStoreDate];
        deviceIdentifier3 = [v11 deviceIdentifier];
        v27 = [lastSentStoreDate objectForKeyedSubscript:deviceIdentifier3];
        v28 = v27;
        if (v27)
        {
          distantPast2 = v27;
        }

        else
        {
          distantPast2 = [MEMORY[0x277CBEAA8] distantPast];
        }

        v30 = distantPast2;

        lastUpdateDate = [v13 lastUpdateDate];
        v32 = [lastUpdateDate compare:v30];

        delegate = [(DNDSModernAssertionSyncManager *)self delegate];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __94__DNDSModernAssertionSyncManager__queue_handleMessage_withVersionNumber_fromDeviceIdentifier___block_invoke;
        v42[3] = &unk_278F8B080;
        v34 = v13;
        v43 = v34;
        v35 = v11;
        v44 = v35;
        v14 = v14;
        v45 = v14;
        [delegate syncManager:self performModeAssertionUpdatesWithHandler:v42];

        if (v32 == -1)
        {
          v36 = DNDSLogModernAssertionSync;
          if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT))
          {
            log = v36;
            deviceIdentifier4 = [v35 deviceIdentifier];
            lastUpdateDate2 = [v34 lastUpdateDate];
            *buf = 138543874;
            v48 = deviceIdentifier4;
            v49 = 2114;
            v50 = lastUpdateDate2;
            v51 = 2114;
            v52 = v30;
            _os_log_impl(&dword_24912E000, log, OS_LOG_TYPE_DEFAULT, "Incoming store from %{public}@ was older (%{public}@) than the store it replaced (%{public}@). Will re-send...", buf, 0x20u);
          }

          v46 = v35;
          v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
          [(DNDSModernAssertionSyncManager *)self updateDevices:v38 force:1 shouldFuzz:1];
        }

LABEL_25:
        goto LABEL_26;
      }
    }

    else
    {
      if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_ERROR))
      {
        [DNDSModernAssertionSyncManager _queue_handleMessage:withVersionNumber:fromDeviceIdentifier:];
      }

      v14 = 0;
    }

    if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_ERROR))
    {
      [DNDSModernAssertionSyncManager _queue_handleMessage:withVersionNumber:fromDeviceIdentifier:];
    }

    goto LABEL_25;
  }

  if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_ERROR))
  {
    [DNDSModernAssertionSyncManager _queue_handleMessage:withVersionNumber:fromDeviceIdentifier:];
  }

LABEL_26:
}

uint64_t __94__DNDSModernAssertionSyncManager__queue_handleMessage_withVersionNumber_fromDeviceIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v49 = a1;
  v4 = [*(a1 + 32) invalidations];
  v5 = [v4 countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v59;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v59 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v58 + 1) + 8 * i) assertion];
        v10 = [v9 UUID];
        v11 = [v9 details];
        v12 = [v9 source];
        v13 = [v9 startDate];
        v14 = [v3 takeAssertionWithUUID:v10 details:v11 source:v12 startDate:v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v58 objects:v68 count:16];
    }

    while (v6);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v15 = [*(v49 + 32) invalidationRequests];
  v16 = [v15 countByEnumeratingWithState:&v54 objects:v67 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v55;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v55 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [v3 invalidateAssertionsForRequest:*(*(&v54 + 1) + 8 * j)];
      }

      v17 = [v15 countByEnumeratingWithState:&v54 objects:v67 count:16];
    }

    while (v17);
  }

  v21 = MEMORY[0x277D05938];
  v22 = [*(v49 + 40) deviceIdentifier];
  v23 = [v21 predicateForModeAssertionsWithDeviceIdentifier:v22];

  v48 = v23;
  v47 = [v3 modeAssertionsMatchingPredicate:v23];
  v46 = [v47 bs_mapNoNulls:&__block_literal_global_57];
  v24 = [v46 mutableCopy];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v25 = [*(v49 + 32) assertions];
  v26 = [v25 countByEnumeratingWithState:&v50 objects:v66 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v51;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v51 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v50 + 1) + 8 * k);
        v31 = [v30 UUID];
        v32 = [v30 details];
        v33 = [v30 source];
        v34 = [v30 startDate];
        v35 = [v3 takeAssertionWithUUID:v31 details:v32 source:v33 startDate:v34];

        [v24 removeObject:v31];
      }

      v27 = [v25 countByEnumeratingWithState:&v50 objects:v66 count:16];
    }

    while (v27);
  }

  v36 = [v24 count];
  if (v36)
  {
    v37 = v36;
    v38 = DNDSLogModernAssertionSync;
    if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v63 = v37;
      v64 = 2114;
      v65 = v24;
      _os_log_impl(&dword_24912E000, v38, OS_LOG_TYPE_DEFAULT, "%lu assertion(s) were abandoned by the remote device, will invalidate: UUIDs=%{public}@", buf, 0x16u);
    }

    v39 = [DNDSModeAssertionInvalidationPredicate predicateForAssertionUUIDs:v24];
    v40 = objc_alloc(MEMORY[0x277D05988]);
    v41 = [*(v49 + 40) deviceIdentifier];
    v42 = [v40 initWithClientIdentifier:@"com.apple.donotdisturb.sync" deviceIdentifier:v41];

    v43 = [DNDSModeAssertionInvalidationRequest requestWithPredicate:v39 requestDate:*(v49 + 48) details:0 source:v42 reason:0 reasonOverride:0];
    v44 = [v3 invalidateAssertionsForRequest:v43];
  }

  return 1;
}

- (void)_queue_sendStateSnapshotToPairedDevices:(id)devices force:(BOOL)force
{
  forceCopy = force;
  v63 = *MEMORY[0x277D85DE8];
  queue = self->_queue;
  devicesCopy = devices;
  dispatch_assert_queue_V2(queue);
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v8 = [WeakRetained pairedDevicesForSyncManager:self];

  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __80__DNDSModernAssertionSyncManager__queue_sendStateSnapshotToPairedDevices_force___block_invoke;
  v54[3] = &unk_278F8B0A8;
  v36 = v8;
  v55 = v36;
  v9 = [devicesCopy bs_filter:v54];

  delegate = [(DNDSModernAssertionSyncManager *)self delegate];
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__9;
  v52 = __Block_byref_object_dispose__9;
  v53 = 0;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __80__DNDSModernAssertionSyncManager__queue_sendStateSnapshotToPairedDevices_force___block_invoke_66;
  v47[3] = &unk_278F8B0D0;
  v47[4] = &v48;
  [delegate syncManager:self performModeAssertionUpdatesWithHandler:v47];
  v10 = DNDSLogModernAssertionSync;
  v11 = os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT);
  if (forceCopy)
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v57 = v9;
    v12 = "Sending forced update to devices: %@";
  }

  else
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v57 = v9;
    v12 = "Sending update to devices: %@";
  }

  _os_log_impl(&dword_24912E000, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
LABEL_7:
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v9;
  v13 = [obj countByEnumeratingWithState:&v43 objects:v62 count:16];
  if (v13)
  {
    v40 = *v44;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v44 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v43 + 1) + 8 * i);
        v16 = [v49[5] mutableCopy];
        v17 = DNDSLogModernAssertionSync;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          deviceIdentifier = [v15 deviceIdentifier];
          *buf = 138412546;
          v57 = deviceIdentifier;
          v58 = 2112;
          v59 = v16;
          _os_log_impl(&dword_24912E000, v17, OS_LOG_TYPE_INFO, "Generating message for sync to %@: %@", buf, 0x16u);
        }

        [v16 filterForSyncToPairedDevice:v15 clientDetailsProvider:self->_clientDetailsProvider];
        [v16 unresolveSourcesForSyncToPairedDevice:v15];
        dataSource = [(DNDSModernAssertionSyncManager *)self dataSource];
        [v16 downgradeAssertionsIfNeededForSyncToPairedDevice:v15 dataSource:dataSource syncManager:self];

        lastSentStoreDate = [(DNDSModernAssertionSyncMetadataStore *)self->_metadata lastSentStoreDate];
        deviceIdentifier2 = [v15 deviceIdentifier];
        v22 = [lastSentStoreDate objectForKeyedSubscript:deviceIdentifier2];
        v23 = v22;
        if (v22)
        {
          distantPast = v22;
        }

        else
        {
          distantPast = [MEMORY[0x277CBEAA8] distantPast];
        }

        v25 = distantPast;

        lastUpdateDate = [v16 lastUpdateDate];
        if ([v25 compare:lastUpdateDate] == -1 || forceCopy)
        {
          v28 = -[_DNDSSyncMessageGroup initWithServiceType:protocolVersion:store:]([_DNDSSyncMessageGroup alloc], "initWithServiceType:protocolVersion:store:", [v15 syncServiceType], objc_msgSend(v15, "assertionSyncProtocolVersion"), v16);
          v29 = [dictionary objectForKeyedSubscript:v28];
          v30 = v29 == 0;

          if (v30)
          {
            v31 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
            [dictionary setObject:v31 forKeyedSubscript:v28];
          }

          v32 = [dictionary objectForKeyedSubscript:v28];
          [v32 addObject:v15];
        }

        else
        {
          v27 = DNDSLogModernAssertionSync;
          if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v57 = v15;
            v58 = 2114;
            v59 = lastUpdateDate;
            v60 = 2114;
            v61 = v25;
            _os_log_impl(&dword_24912E000, v27, OS_LOG_TYPE_DEFAULT, "Skipping sending store to %@ as it is the same as or earlier than the previous (current: %{public}@; previous: %{public}@)", buf, 0x20u);
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v43 objects:v62 count:16];
    }

    while (v13);
  }

  if ([dictionary count])
  {
    allValues = [dictionary allValues];
    bs_flatten = [allValues bs_flatten];

    v35 = DNDSLogModernAssertionSync;
    if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v57 = bs_flatten;
      _os_log_impl(&dword_24912E000, v35, OS_LOG_TYPE_DEFAULT, "Preparing to sync to %@", buf, 0xCu);
    }

    [delegate syncManager:self prepareForSyncToDevices:bs_flatten];
  }

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __80__DNDSModernAssertionSyncManager__queue_sendStateSnapshotToPairedDevices_force___block_invoke_70;
  v42[3] = &unk_278F8B168;
  v42[4] = self;
  [dictionary enumerateKeysAndObjectsUsingBlock:v42];
  if ([dictionary count])
  {
    [(DNDSModernAssertionSyncManager *)self _saveMetadataToBackingStore];
  }

  _Block_object_dispose(&v48, 8);
}

uint64_t __80__DNDSModernAssertionSyncManager__queue_sendStateSnapshotToPairedDevices_force___block_invoke_66(uint64_t a1, void *a2)
{
  v3 = [a2 store];
  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 0;
}

void __80__DNDSModernAssertionSyncManager__queue_sendStateSnapshotToPairedDevices_force___block_invoke_70(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CBEB98];
  v8 = [v6 bs_compactMap:&__block_literal_global_73];
  v9 = [v7 setWithArray:v8];

  v10 = [v5 store];
  v11 = [v10 mutableCopy];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 112));
  [v11 updateConfigurationModificationDatesWithDataSource:WeakRetained syncManager:*(a1 + 32)];

  v13 = [MEMORY[0x277CBEAA8] date];
  v14 = [MEMORY[0x277CCAD78] UUID];
  v15 = [v11 syncDictionaryRepresentationWithDate:v13 messageUUID:v14];

  v16 = DNDSLogModernAssertionSync;
  if (v15)
  {
    if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = DNDSStringFromSyncServiceType([v5 serviceType]);
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "protocolVersion")}];
      *buf = 138543874;
      v30 = v18;
      v31 = 2112;
      v32 = v19;
      v33 = 2112;
      v34 = v15;
      _os_log_impl(&dword_24912E000, v17, OS_LOG_TYPE_DEFAULT, "Syncing on %{public}@ version %@: %@", buf, 0x20u);
    }

    v20 = [v5 serviceType];
    if (v20 == 1)
    {
      v21 = 24;
    }

    else
    {
      if (v20 != 2)
      {
        v22 = 0;
        goto LABEL_12;
      }

      v21 = 32;
    }

    v22 = *(*(a1 + 32) + v21);
LABEL_12:
    objc_initWeak(buf, *(a1 + 32));
    v23 = [v5 protocolVersion];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __80__DNDSModernAssertionSyncManager__queue_sendStateSnapshotToPairedDevices_force___block_invoke_75;
    v24[3] = &unk_278F8B140;
    v25 = v5;
    v26 = v9;
    objc_copyWeak(&v28, buf);
    v27 = v11;
    [v22 sendMessage:v15 withVersionNumber:v23 messageType:0 toDestinations:v26 identifyingCompletionHandler:v24];

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);

    goto LABEL_13;
  }

  if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_ERROR))
  {
    __80__DNDSModernAssertionSyncManager__queue_sendStateSnapshotToPairedDevices_force___block_invoke_70_cold_1();
  }

LABEL_13:
}

void __80__DNDSModernAssertionSyncManager__queue_sendStateSnapshotToPairedDevices_force___block_invoke_75(id *a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 7);
    if (WeakRetained)
    {
      v10 = WeakRetained;
      v11 = WeakRetained[1];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __80__DNDSModernAssertionSyncManager__queue_sendStateSnapshotToPairedDevices_force___block_invoke_76;
      block[3] = &unk_278F8B118;
      v14 = a1[4];
      v15 = v7;
      v16 = v10;
      v17 = a1[6];
      v18 = a1[5];
      dispatch_sync(v11, block);
    }
  }

  else
  {
    v12 = DNDSLogModernAssertionSync;
    if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_ERROR))
    {
      __80__DNDSModernAssertionSyncManager__queue_sendStateSnapshotToPairedDevices_force___block_invoke_75_cold_1(a1, v12, v8);
    }
  }
}

void __80__DNDSModernAssertionSyncManager__queue_sendStateSnapshotToPairedDevices_force___block_invoke_76(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = DNDSLogModernAssertionSync;
  if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = DNDSStringFromSyncServiceType([v3 serviceType]);
    v6 = *(a1 + 40);
    v11 = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_INFO, "Sending %{public}@ assertions pending with identifier %{public}@", &v11, 0x16u);
  }

  v7 = [_DNDSPendingMessageRecipients alloc];
  v8 = [*(a1 + 56) lastUpdateDate];
  v9 = [(_DNDSPendingMessageRecipients *)v7 initWithLastUpdateDate:v8 deviceIdentifiers:*(a1 + 64)];
  v10 = [*(*(a1 + 48) + 48) pendingLastSentStoreDate];
  [v10 setObject:v9 forKeyedSubscript:*(a1 + 40)];
}

- (void)_queue_handleDidSendRequestIdentifier:(id)identifier withSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v55 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  pendingLastSentStoreDate = [(DNDSModernAssertionSyncMetadataStore *)self->_metadata pendingLastSentStoreDate];
  v11 = [pendingLastSentStoreDate objectForKeyedSubscript:identifierCopy];

  if (v11)
  {
    pendingLastSentStoreDate2 = [(DNDSModernAssertionSyncMetadataStore *)self->_metadata pendingLastSentStoreDate];
    [pendingLastSentStoreDate2 setObject:0 forKeyedSubscript:identifierCopy];

    if (successCopy)
    {
      v39 = errorCopy;
      v40 = identifierCopy;
      lastUpdateDate = [v11 lastUpdateDate];
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      obj = [v11 deviceIdentifiers];
      v14 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
      if (!v14)
      {
        goto LABEL_23;
      }

      v15 = v14;
      v16 = *v43;
      while (1)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v43 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v42 + 1) + 8 * i);
          lastSentStoreDate = [(DNDSModernAssertionSyncMetadataStore *)self->_metadata lastSentStoreDate];
          v20 = [lastSentStoreDate objectForKeyedSubscript:v18];
          v21 = v20;
          if (v20)
          {
            distantPast = v20;
          }

          else
          {
            distantPast = [MEMORY[0x277CBEAA8] distantPast];
          }

          v23 = distantPast;

          v24 = [v23 compare:lastUpdateDate];
          switch(v24)
          {
            case 1:
              goto LABEL_18;
            case 0:
              v29 = DNDSLogModernAssertionSync;
              if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_INFO))
              {
                *buf = 138544130;
                v47 = v18;
                v48 = 2114;
                v49 = v40;
                v50 = 2114;
                v51 = lastUpdateDate;
                v52 = 2114;
                v53 = v23;
                _os_log_impl(&dword_24912E000, v29, OS_LOG_TYPE_INFO, "Leaving lastUpdateDate unchanged for %{public}@ (%{public}@). Got %{public}@ and already have %{public}@", buf, 0x2Au);
              }

LABEL_18:
              v30 = DNDSLogModernAssertionSync;
              if (!os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_INFO))
              {
                break;
              }

              *buf = 138544130;
              v47 = v18;
              v48 = 2114;
              v49 = v40;
              v50 = 2114;
              v51 = lastUpdateDate;
              v52 = 2114;
              v53 = v23;
              v26 = v30;
              v27 = "Rewinding lastUpdateDate for %{public}@ (%{public}@). Got %{public}@ but already have %{public}@";
              v28 = 42;
LABEL_20:
              _os_log_impl(&dword_24912E000, v26, OS_LOG_TYPE_INFO, v27, buf, v28);
              break;
            case -1:
              v25 = DNDSLogModernAssertionSync;
              if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_INFO))
              {
                *buf = 138543874;
                v47 = v18;
                v48 = 2114;
                v49 = v23;
                v50 = 2114;
                v51 = lastUpdateDate;
                v26 = v25;
                v27 = "Bumping lastUpdateDate for %{public}@ from %{public}@ to %{public}@";
                v28 = 32;
                goto LABEL_20;
              }

              break;
          }

          lastSentStoreDate2 = [(DNDSModernAssertionSyncMetadataStore *)self->_metadata lastSentStoreDate];
          [lastSentStoreDate2 setObject:lastUpdateDate forKeyedSubscript:v18];
        }

        v15 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
        if (!v15)
        {
LABEL_23:

          [(DNDSModernAssertionSyncManager *)self _saveMetadataToBackingStore];
          identifierCopy = v40;
          errorCopy = v39;
          goto LABEL_28;
        }
      }
    }

    v36 = DNDSLogModernAssertionSync;
    if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_ERROR))
    {
      v37 = v36;
      deviceIdentifiers = [v11 deviceIdentifiers];
      *buf = 138543874;
      v47 = identifierCopy;
      v48 = 2114;
      v49 = errorCopy;
      v50 = 2114;
      v51 = deviceIdentifiers;
      _os_log_error_impl(&dword_24912E000, v37, OS_LOG_TYPE_ERROR, "Send request %{public}@ failed with error %{public}@. Recipients: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v32 = DNDSLogModernAssertionSync;
    if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT))
    {
      v33 = MEMORY[0x277CCABB0];
      v34 = v32;
      v35 = [v33 numberWithBool:successCopy];
      *buf = 138543874;
      v47 = identifierCopy;
      v48 = 2112;
      v49 = v35;
      v50 = 2114;
      v51 = errorCopy;
      _os_log_impl(&dword_24912E000, v34, OS_LOG_TYPE_DEFAULT, "Got send results from unrecognized identifier %{public}@. success: %@, error: %{public}@", buf, 0x20u);
    }
  }

LABEL_28:
}

- (void)_loadMetadataFromBackingStore
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (BOOL)_maintainMetadataBackingStore
{
  v49 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  array = [MEMORY[0x277CBEB18] array];
  lastReceivedStoreDate = [(DNDSModernAssertionSyncMetadataStore *)self->_metadata lastReceivedStoreDate];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __63__DNDSModernAssertionSyncManager__maintainMetadataBackingStore__block_invoke;
  v43[3] = &unk_278F8B190;
  v6 = date;
  v44 = v6;
  v7 = array;
  v45 = v7;
  [lastReceivedStoreDate bs_each:v43];

  v8 = [v7 count];
  v34 = v8 != 0;
  if (v8)
  {
    v9 = DNDSLogModernAssertionSync;
    if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v48 = v7;
      _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Retiring device(s) from last seen metadata: %@", buf, 0xCu);
    }

    lastReceivedStoreDate2 = [(DNDSModernAssertionSyncMetadataStore *)self->_metadata lastReceivedStoreDate];
    [lastReceivedStoreDate2 removeObjectsForKeys:v7];
  }

  array2 = [MEMORY[0x277CBEB18] array];

  lastSentStoreDate = [(DNDSModernAssertionSyncMetadataStore *)self->_metadata lastSentStoreDate];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __63__DNDSModernAssertionSyncManager__maintainMetadataBackingStore__block_invoke_84;
  v40[3] = &unk_278F8B190;
  v35 = v6;
  v41 = v35;
  v13 = array2;
  v42 = v13;
  [lastSentStoreDate bs_each:v40];

  v33 = v13;
  if ([v13 count])
  {
    v14 = DNDSLogModernAssertionSync;
    if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v48 = v13;
      _os_log_impl(&dword_24912E000, v14, OS_LOG_TYPE_DEFAULT, "Retiring device(s) from last sent metadata: %@", buf, 0xCu);
    }

    lastSentStoreDate2 = [(DNDSModernAssertionSyncMetadataStore *)self->_metadata lastSentStoreDate];
    [lastSentStoreDate2 removeObjectsForKeys:v13];

    v34 = 1;
  }

  array3 = [MEMORY[0x277CBEB18] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  pendingLastSentStoreDate = [(DNDSModernAssertionSyncMetadataStore *)self->_metadata pendingLastSentStoreDate];
  v18 = [pendingLastSentStoreDate countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v37;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(pendingLastSentStoreDate);
        }

        v22 = *(*(&v36 + 1) + 8 * i);
        selfCopy = self;
        pendingLastSentStoreDate2 = [(DNDSModernAssertionSyncMetadataStore *)self->_metadata pendingLastSentStoreDate];
        v25 = [pendingLastSentStoreDate2 objectForKeyedSubscript:v22];
        lastUpdateDate = [v25 lastUpdateDate];
        [v35 timeIntervalSinceDate:lastUpdateDate];
        v28 = v27;

        if (v28 > 86400.0)
        {
          [array3 addObject:v22];
        }

        self = selfCopy;
      }

      v19 = [pendingLastSentStoreDate countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v19);
  }

  v29 = v34;
  if ([array3 count])
  {
    v30 = DNDSLogModernAssertionSync;
    if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v48 = array3;
      _os_log_impl(&dword_24912E000, v30, OS_LOG_TYPE_DEFAULT, "Retiring pending message(s) from metadata: %@", buf, 0xCu);
    }

    pendingLastSentStoreDate3 = [(DNDSModernAssertionSyncMetadataStore *)self->_metadata pendingLastSentStoreDate];
    [pendingLastSentStoreDate3 removeObjectsForKeys:array3];

    v29 = 1;
  }

  return v29;
}

void __63__DNDSModernAssertionSyncManager__maintainMetadataBackingStore__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  [*(a1 + 32) timeIntervalSinceDate:a3];
  if (v5 > 3024000.0)
  {
    [*(a1 + 40) addObject:v6];
  }
}

void __63__DNDSModernAssertionSyncManager__maintainMetadataBackingStore__block_invoke_84(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  [*(a1 + 32) timeIntervalSinceDate:a3];
  if (v5 > 3024000.0)
  {
    [*(a1 + 40) addObject:v6];
  }
}

- (BOOL)_saveMetadataToBackingStore
{
  v15 = *MEMORY[0x277D85DE8];
  metadata = self->_metadata;
  metadataBackingStore = self->_metadataBackingStore;
  v12 = 0;
  v4 = [(DNDSBackingStore *)metadataBackingStore writeRecord:metadata error:&v12];
  v5 = v12;
  if (v4)
  {
    if (v4 == 1)
    {
      v10 = DNDSLogModernAssertionSync;
      if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v14 = v5;
        v7 = "Failed to write assertion sync metadata store, but error can be ignored; error=%{public}@";
        v8 = v10;
        v9 = 12;
        goto LABEL_8;
      }
    }

    else if (v4 == 2)
    {
      v6 = DNDSLogModernAssertionSync;
      if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v7 = "Wrote out assertion sync metadata store.";
        v8 = v6;
        v9 = 2;
LABEL_8:
        _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_ERROR))
    {
      [DNDSModernAssertionSyncManager _saveMetadataToBackingStore];
    }

    _DNDSRequestRadar(@"Failed to write sync metadata", v5, 0, @"/Library/Caches/com.apple.xbs/Sources/DoNotDisturbServer/DoNotDisturbServer/DNDSModernAssertionSyncManager.m", 885);
  }

  return v4 == 2;
}

- (id)sysdiagnoseDataForDate:(id)date redacted:(BOOL)redacted
{
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{3, redacted}];
  queue = self->_queue;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __66__DNDSModernAssertionSyncManager_sysdiagnoseDataForDate_redacted___block_invoke;
  v13 = &unk_278F89F48;
  selfCopy = self;
  v15 = v5;
  v7 = v5;
  dispatch_sync(queue, &v10);
  v8 = [v7 copy];

  return v8;
}

void __66__DNDSModernAssertionSyncManager_sysdiagnoseDataForDate_redacted___block_invoke(uint64_t a1)
{
  v1 = a1;
  v58 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 48) lastReceivedStoreDate];
  v42 = v1;
  if ([v2 count])
  {
    v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v2, "count")}];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v52;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v52 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v51 + 1) + 8 * i);
          v10 = MEMORY[0x277CCA968];
          v11 = [v4 objectForKeyedSubscript:v9];
          v12 = [v10 localizedStringFromDate:v11 dateStyle:1 timeStyle:1];
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"device %@", v9];
          [v3 setObject:v12 forKeyedSubscript:v13];
        }

        v6 = [v4 countByEnumeratingWithState:&v51 objects:v57 count:16];
      }

      while (v6);
    }

    v14 = [v3 copy];
    v1 = v42;
    [*(v42 + 40) setObject:v14 forKeyedSubscript:@"last-received-dates"];
  }

  v15 = [*(*(v1 + 32) + 48) lastSentStoreDate];

  if ([v15 count])
  {
    v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v15, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v40 = v15;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v48;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v48 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v47 + 1) + 8 * j);
          v23 = MEMORY[0x277CCA968];
          v24 = [v17 objectForKeyedSubscript:v22];
          v25 = [v23 localizedStringFromDate:v24 dateStyle:1 timeStyle:1];
          v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"device %@", v22];
          [v16 setObject:v25 forKeyedSubscript:v26];
        }

        v19 = [v17 countByEnumeratingWithState:&v47 objects:v56 count:16];
      }

      while (v19);
    }

    v27 = [v16 copy];
    v1 = v42;
    [*(v42 + 40) setObject:v27 forKeyedSubscript:@"last-sent-dates"];

    v15 = v40;
  }

  v28 = [*(*(v1 + 32) + 48) pendingLastSentStoreDate];

  if ([v28 count])
  {
    v29 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v28, "count")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v41 = v28;
    v30 = v28;
    v31 = [v30 countByEnumeratingWithState:&v43 objects:v55 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v44;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v44 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v43 + 1) + 8 * k);
          v36 = [v30 objectForKeyedSubscript:v35];
          v37 = [v36 description];
          v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"message %@", v35];
          [v29 setObject:v37 forKeyedSubscript:v38];
        }

        v32 = [v30 countByEnumeratingWithState:&v43 objects:v55 count:16];
      }

      while (v32);
    }

    v39 = [v29 copy];
    [*(v42 + 40) setObject:v39 forKeyedSubscript:@"pending-messages"];

    v28 = v41;
  }
}

- (DNDSAssertionSyncManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (DNDSAssertionSyncManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __65__DNDSModernAssertionSyncManager_updateDevices_force_shouldFuzz___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 numberWithUnsignedLongLong:v3];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_24912E000, v4, OS_LOG_TYPE_ERROR, "Coalescing timer has delayed sync for %@ seconds. This may indicate a rogue trigger.", v6, 0xCu);
}

- (void)syncService:shouldAcceptIncomingMessage:withVersionNumber:messageType:fromDeviceIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)syncService:shouldAcceptIncomingMessage:withVersionNumber:messageType:fromDeviceIdentifier:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_24912E000, v1, OS_LOG_TYPE_ERROR, "Rejecting incoming message as it is not from the active device: deviceIdentifier=%{public}@, pairedDevice=%{public}@", v2, 0x16u);
}

- (void)syncService:shouldAcceptIncomingMessage:withVersionNumber:messageType:fromDeviceIdentifier:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_queue_handleMessage:withVersionNumber:fromDeviceIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_queue_handleMessage:withVersionNumber:fromDeviceIdentifier:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __80__DNDSModernAssertionSyncManager__queue_sendStateSnapshotToPairedDevices_force___block_invoke_70_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __80__DNDSModernAssertionSyncManager__queue_sendStateSnapshotToPairedDevices_force___block_invoke_75_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = DNDSStringFromSyncServiceType([v4 serviceType]);
  OUTLINED_FUNCTION_4();
  v9 = 2112;
  v10 = v7;
  v11 = 2114;
  v12 = a3;
  _os_log_error_impl(&dword_24912E000, v5, OS_LOG_TYPE_ERROR, "Error sending %{public}@ assertions to %@: error=%{public}@", v8, 0x20u);
}

- (void)_saveMetadataToBackingStore
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end