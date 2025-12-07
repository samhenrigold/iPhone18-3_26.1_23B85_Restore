@interface WBSCloudTabStore
- (BOOL)_closeTabs:(id)tabs onDevice:(id)device;
- (BOOL)_writeCloseRequestForTab:(id)tab onDevice:(id)device;
- (BOOL)closeAllTabsOnDevice:(id)device;
- (BOOL)closeTab:(id)tab onDevice:(id)device;
- (NSArray)syncedCloudTabDevices;
- (NSError)lastFetchError;
- (WBSCloudTabStore)init;
- (WBSCloudTabStoreDelegate)wbsDelegate;
- (id)_deviceWithTabsWithOutstandingCloseRequestsRemoved:(id)removed closeRequestsForDevice:(id)device;
- (id)_devicesByFilteringAndSortingDevices:(id)devices;
- (id)syncedRemoteCloudTabDevicesForProfileWithIdentifier:(id)identifier;
- (int64_t)uniqueDeviceMultiplicity;
- (unint64_t)_indexOfDeviceInSyncedCloudTabDevicesFromCloudKit:(id)kit;
- (void)_addCloseRequestDictionary:(id)dictionary toDeviceUUIDsToCloseRequestsDictionary:(id)requestsDictionary requestUUID:(id)d;
- (void)_didFetchDeviceDictionariesFromCloudKit:(id)kit fetchedCloseRequests:(id)requests fetchedDevicesBySyncing:(BOOL)syncing error:(id)error;
- (void)_syncAgentProxyConnectionWasInvalidated:(id)invalidated;
- (void)_tabWasClosed:(id)closed onDevice:(id)device;
- (void)_tabsWereClosed:(id)closed onDevice:(id)device;
- (void)clearTabsForFirstDuplicateDeviceInCloudKitWithName:(id)name passingTest:(id)test;
- (void)deleteAllDevicesFromCloudKit;
- (void)fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit;
- (void)handleCloseTabRequestsFromCloudKit;
- (void)notifyObserversOfSyncedCloudTabDevicesChanged;
- (void)pruneExpiredDevicesFromCloudKit;
- (void)resetSyncedCloudTabDevicesAndCloseRequestsFromCloudKit;
- (void)saveCurrentCloudTabDeviceDictionaryToCloudKit:(id)kit completionHandler:(id)handler;
@end

@implementation WBSCloudTabStore

- (WBSCloudTabStore)init
{
  v10.receiver = self;
  v10.super_class = WBSCloudTabStore;
  v2 = [(WBSCloudTabStore *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.SafariShared.WBSCloudTabStore", 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v3;

    v2->_syncAgentIsAvailable = 1;
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__syncAgentProxyConnectionWasInvalidated_ name:*MEMORY[0x1E69C8D18] object:0];

    v8 = v2;
  }

  return v2;
}

- (void)fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit
{
  if (self->_syncAgentIsAvailable)
  {
    inited = objc_initWeak(location, self);
    v5 = WBS_LOG_CHANNEL_PREFIXCloudTabs(inited, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_DEFAULT, "Fetching data from CloudKit", buf, 2u);
    }

    if (self->_hasAttemptedToFetchDevicesAtLeastOnce)
    {
      v6 = 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_wbsDelegate);
      v6 = objc_opt_respondsToSelector();
    }

    self->_hasAttemptedToFetchDevicesAtLeastOnce = 1;
    mEMORY[0x1E69C8A08] = [MEMORY[0x1E69C8A08] sharedProxy];
    v12 = mEMORY[0x1E69C8A08];
    if (v6)
    {
      v13 = WBS_LOG_CHANNEL_PREFIXCloudTabs(mEMORY[0x1E69C8A08], v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BB6F3000, v13, OS_LOG_TYPE_DEFAULT, "Getting cached CloudTab devices from the sync agent", buf, 2u);
      }

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __74__WBSCloudTabStore_fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit__block_invoke;
      v16[3] = &unk_1E7FB88B0;
      objc_copyWeak(&v17, location);
      [v12 getCloudTabDevicesWithCompletionHandler:v16];
      objc_destroyWeak(&v17);
    }

    self->_isFetchingDataFromCloudKit = 1;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __74__WBSCloudTabStore_fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit__block_invoke_19;
    v14[3] = &unk_1E7FB8900;
    objc_copyWeak(&v15, location);
    [v12 fetchSyncedCloudTabDevicesAndCloseRequestsWithCompletionHandler:v14];
    objc_destroyWeak(&v15);

    objc_destroyWeak(location);
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXCloudTabs(self, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_1BB6F3000, v7, OS_LOG_TYPE_DEFAULT, "Bypassing fetching data from CloudKit because CloudKit syncing of iCloud Tabs is not available", location, 2u);
    }

    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4099 userInfo:0];
    [(WBSCloudTabStore *)self _didFetchDeviceDictionariesFromCloudKit:0 fetchedCloseRequests:0 error:v8];
  }
}

void __74__WBSCloudTabStore_fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__WBSCloudTabStore_fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit__block_invoke_2;
  v5[3] = &unk_1E7FB8888;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __74__WBSCloudTabStore_fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit__block_invoke_19(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__WBSCloudTabStore_fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit__block_invoke_2_20;
  v13[3] = &unk_1E7FB88D8;
  objc_copyWeak(&v17, (a1 + 32));
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  v12 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v13);

  objc_destroyWeak(&v17);
}

- (NSArray)syncedCloudTabDevices
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  internalQueue = self->_internalQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__WBSCloudTabStore_syncedCloudTabDevices__block_invoke;
  v6[3] = &unk_1E7FB8798;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);
  v3 = v8[5];
  if (!v3)
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)syncedRemoteCloudTabDevicesForProfileWithIdentifier:(id)identifier
{
  syncedCloudTabDevices = [(WBSCloudTabStore *)self syncedCloudTabDevices];

  return syncedCloudTabDevices;
}

- (BOOL)closeTab:(id)tab onDevice:(id)device
{
  v31 = *MEMORY[0x1E69E9840];
  tabCopy = tab;
  deviceCopy = device;
  v9 = WBS_LOG_CHANNEL_PREFIXCloudTabs(deviceCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    uuidString = [tabCopy uuidString];
    uuid = [deviceCopy uuid];
    *buf = 138543618;
    v28 = uuidString;
    v29 = 2114;
    v30 = uuid;
    _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_DEFAULT, "Closing single tab with UUID %{public}@ on device with UUID %{public}@", buf, 0x16u);
  }

  v14 = WBS_LOG_CHANNEL_PREFIXCloudTabs(v12, v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [tabCopy description];
    objc_claimAutoreleasedReturnValue();
    [deviceCopy name];
    objc_claimAutoreleasedReturnValue();
    [WBSCloudTabStore closeTab:onDevice:];
  }

  isCloseRequestSupported = [deviceCopy isCloseRequestSupported];
  if ((isCloseRequestSupported & 1) == 0)
  {
    v21 = WBS_LOG_CHANNEL_PREFIXCloudTabs(isCloseRequestSupported, v16);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&dword_1BB6F3000, v21, OS_LOG_TYPE_DEFAULT, "Device doesn't support close requests", v26, 2u);
    }

    goto LABEL_11;
  }

  uuid2 = [deviceCopy uuid];
  v18 = [uuid2 length] == 0;

  if (v18 || ![(WBSCloudTabStore *)self _writeCloseRequestForTab:tabCopy onDevice:deviceCopy])
  {
LABEL_11:
    v20 = 0;
    goto LABEL_12;
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__WBSCloudTabStore_closeTab_onDevice___block_invoke;
  block[3] = &unk_1E7FB7DD0;
  block[4] = self;
  v24 = tabCopy;
  v25 = deviceCopy;
  dispatch_sync(internalQueue, block);

  v20 = 1;
LABEL_12:

  return v20;
}

void __38__WBSCloudTabStore_closeTab_onDevice___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _tabWasClosed:*(a1 + 40) onDevice:*(a1 + 48)];
  v2 = [*(a1 + 32) _devicesByFilteringAndSortingDevices:*(*(a1 + 32) + 24)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
}

- (BOOL)closeAllTabsOnDevice:(id)device
{
  v22 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v6 = WBS_LOG_CHANNEL_PREFIXCloudTabs(deviceCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [deviceCopy uuid];
    *buf = 138543362;
    v21 = uuid;
    _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_DEFAULT, "Closing all tabs on device with UUID %{public}@", buf, 0xCu);
  }

  v10 = WBS_LOG_CHANNEL_PREFIXCloudTabs(v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [deviceCopy name];
    objc_claimAutoreleasedReturnValue();
    [WBSCloudTabStore closeAllTabsOnDevice:];
  }

  isCloseRequestSupported = [deviceCopy isCloseRequestSupported];
  if ((isCloseRequestSupported & 1) == 0)
  {
    v17 = WBS_LOG_CHANNEL_PREFIXCloudTabs(isCloseRequestSupported, v12);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_1BB6F3000, v17, OS_LOG_TYPE_DEFAULT, "Device doesn't support close requests", v19, 2u);
    }

    goto LABEL_10;
  }

  uuid2 = [deviceCopy uuid];
  v14 = [uuid2 length] == 0;

  if (v14)
  {
LABEL_10:
    v16 = 0;
    goto LABEL_11;
  }

  tabs = [deviceCopy tabs];
  v16 = [(WBSCloudTabStore *)self _closeTabs:tabs onDevice:deviceCopy];

LABEL_11:
  return v16;
}

- (void)resetSyncedCloudTabDevicesAndCloseRequestsFromCloudKit
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__WBSCloudTabStore_resetSyncedCloudTabDevicesAndCloseRequestsFromCloudKit__block_invoke;
  block[3] = &unk_1E7FB6F80;
  block[4] = self;
  dispatch_sync(internalQueue, block);
  deviceUUIDsToCloseRequestsFromCloudKit = self->_deviceUUIDsToCloseRequestsFromCloudKit;
  self->_deviceUUIDsToCloseRequestsFromCloudKit = 0;
}

void __74__WBSCloudTabStore_resetSyncedCloudTabDevicesAndCloseRequestsFromCloudKit__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = 0;
}

- (void)saveCurrentCloudTabDeviceDictionaryToCloudKit:(id)kit completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  kitCopy = kit;
  handlerCopy = handler;
  v9 = WBS_LOG_CHANNEL_PREFIXCloudTabs(handlerCopy, v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    *v18 = 0;
    _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_DEFAULT, "Saving current device to CloudKit", v18, 2u);
  }

  v12 = WBS_LOG_CHANNEL_PREFIXCloudTabs(v10, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [kitCopy description];
    objc_claimAutoreleasedReturnValue();
    [WBSCloudTabStore saveCurrentCloudTabDeviceDictionaryToCloudKit:completionHandler:];
  }

  _currentDeviceUUID = [(WBSCloudTabStore *)self _currentDeviceUUID];
  uUIDString = [_currentDeviceUUID UUIDString];

  v15 = [[WBSCloudTabDevice alloc] initWithDictionary:kitCopy uuid:uUIDString];
  currentDevice = self->_currentDevice;
  self->_currentDevice = v15;

  mEMORY[0x1E69C8A08] = [MEMORY[0x1E69C8A08] sharedProxy];
  [mEMORY[0x1E69C8A08] saveTabsForCurrentDeviceWithDictionaryRepresentation:kitCopy deviceUUIDString:uUIDString completionHandler:handlerCopy];
}

- (int64_t)uniqueDeviceMultiplicity
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__WBSCloudTabStore_uniqueDeviceMultiplicity__block_invoke;
  v5[3] = &unk_1E7FB87C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __44__WBSCloudTabStore_uniqueDeviceMultiplicity__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 56))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v3 = *(v2 + 24);
    v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v4)
    {
      v5 = *v8;
      while (2)
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(v3);
          }

          if (([*(*(&v7 + 1) + 8 * v6) hasDuplicateName] & 1) == 0)
          {
            *(*(*(a1 + 40) + 8) + 24) = 2;

            return;
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }
  }
}

- (NSError)lastFetchError
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__WBSCloudTabStore_lastFetchError__block_invoke;
  v5[3] = &unk_1E7FB8798;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)pruneExpiredDevicesFromCloudKit
{
  v3 = WBS_LOG_CHANNEL_PREFIXCloudTabs(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_DEFAULT, "Pruning expired devices from CloudKit", buf, 2u);
  }

  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-604800.0];
  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-5184000.0];
  *buf = 0;
  v21 = buf;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__6;
  v24 = __Block_byref_object_dispose__6;
  v25 = 0;
  internalQueue = self->_internalQueue;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __51__WBSCloudTabStore_pruneExpiredDevicesFromCloudKit__block_invoke;
  v15 = &unk_1E7FB8810;
  selfCopy = self;
  v19 = buf;
  v7 = v5;
  v17 = v7;
  v8 = v4;
  v18 = v8;
  dispatch_sync(internalQueue, &v12);
  if ([*(v21 + 5) count])
  {
    mEMORY[0x1E69C8A08] = [MEMORY[0x1E69C8A08] sharedProxy];
    [mEMORY[0x1E69C8A08] deleteDevicesWithUUIDStrings:*(v21 + 5) completionHandler:&__block_literal_global_21];
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXCloudTabs(0, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(WBSCloudTabStore *)v11 pruneExpiredDevicesFromCloudKit];
    }
  }

  _Block_object_dispose(buf, 8);
}

void __51__WBSCloudTabStore_pruneExpiredDevicesFromCloudKit__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = WBS_LOG_CHANNEL_PREFIXCloudTabs(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __51__WBSCloudTabStore_pruneExpiredDevicesFromCloudKit__block_invoke_cold_1(a1, v3);
  }

  v4 = *(*(a1 + 32) + 24);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__WBSCloudTabStore_pruneExpiredDevicesFromCloudKit__block_invoke_9;
  v8[3] = &unk_1E7FB87E8;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v5 = [v4 safari_mapAndFilterObjectsUsingBlock:v8];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

id __51__WBSCloudTabStore_pruneExpiredDevicesFromCloudKit__block_invoke_9(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 hasDuplicateName];
  v5 = 40;
  if (v4)
  {
    v5 = 32;
  }

  v6 = *(a1 + v5);
  v7 = [v3 lastModified];
  v8 = [v7 compare:v6];

  if (v8 == -1)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXCloudTabs(v9, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v3 uuid];
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_DEFAULT, "Pruning expired CloudKit device with UUID %{public}@", &v15, 0xCu);
    }

    v11 = [v3 uuid];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __51__WBSCloudTabStore_pruneExpiredDevicesFromCloudKit__block_invoke_11(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = v2;
  if (v2)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXCloudTabs(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [v4 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __51__WBSCloudTabStore_pruneExpiredDevicesFromCloudKit__block_invoke_11_cold_1();
    }
  }
}

- (void)clearTabsForFirstDuplicateDeviceInCloudKitWithName:(id)name passingTest:(id)test
{
  v40 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  testCopy = test;
  v9 = WBS_LOG_CHANNEL_PREFIXCloudTabs(testCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_DEFAULT, "Clearing tabs for first duplicate device in CloudKit", buf, 2u);
  }

  *buf = 0;
  v33 = buf;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__6;
  v36 = __Block_byref_object_dispose__6;
  v37 = 0;
  internalQueue = self->_internalQueue;
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __83__WBSCloudTabStore_clearTabsForFirstDuplicateDeviceInCloudKitWithName_passingTest___block_invoke;
  v27 = &unk_1E7FB8860;
  selfCopy = self;
  v11 = nameCopy;
  v29 = v11;
  v31 = buf;
  v12 = testCopy;
  v30 = v12;
  dispatch_sync(internalQueue, &v24);
  v13 = *(v33 + 5);
  if (v13)
  {
    uuid = [v13 uuid];
    v16 = WBS_LOG_CHANNEL_PREFIXCloudTabs(uuid, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v38 = 138543362;
      v39 = uuid;
      _os_log_impl(&dword_1BB6F3000, v16, OS_LOG_TYPE_DEFAULT, "Marking device with UUID %{public}@ as a duplicate", v38, 0xCu);
    }

    v17 = [WBSCloudTabDevice alloc];
    name = [*(v33 + 5) name];
    lastModified = [*(v33 + 5) lastModified];
    v20 = [(WBSCloudTabDevice *)v17 initWithDeviceName:name lastModified:lastModified hasDuplicateName:1 tabs:0 uuid:uuid];
    v21 = *(v33 + 5);
    *(v33 + 5) = v20;

    mEMORY[0x1E69C8A08] = [MEMORY[0x1E69C8A08] sharedProxy];
    dictionaryRepresentation = [*(v33 + 5) dictionaryRepresentation];
    [mEMORY[0x1E69C8A08] saveTabsForCurrentDeviceWithDictionaryRepresentation:dictionaryRepresentation deviceUUIDString:uuid completionHandler:0];
  }

  _Block_object_dispose(buf, 8);
}

void __83__WBSCloudTabStore_clearTabsForFirstDuplicateDeviceInCloudKitWithName_passingTest___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 24) count])
  {
    v3 = *(*(a1 + 32) + 24);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __83__WBSCloudTabStore_clearTabsForFirstDuplicateDeviceInCloudKitWithName_passingTest___block_invoke_13;
    v11[3] = &unk_1E7FB8838;
    v12 = *(a1 + 40);
    v9 = *(a1 + 48);
    v4 = v9;
    v13 = v9;
    v5 = [v3 enumerateObjectsUsingBlock:v11];
    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v7 = WBS_LOG_CHANNEL_PREFIXCloudTabs(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BB6F3000, v7, OS_LOG_TYPE_DEFAULT, "No eligible device with the same name found when looking for duplicates", buf, 2u);
      }
    }
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXCloudTabs(0, v2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __83__WBSCloudTabStore_clearTabsForFirstDuplicateDeviceInCloudKitWithName_passingTest___block_invoke_cold_1(v8);
    }
  }
}

void __83__WBSCloudTabStore_clearTabsForFirstDuplicateDeviceInCloudKitWithName_passingTest___block_invoke_13(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (([v6 isEphemeralDevice] & 1) == 0)
  {
    v7 = [v6 name];
    v8 = [v7 isEqualToString:a1[4]];

    if (v8)
    {
      v9 = [v6 hasDuplicateName];
      if ((v9 & 1) == 0)
      {
        if (*(*(a1[6] + 8) + 40))
        {
          v11 = WBS_LOG_CHANNEL_PREFIXCloudTabs(v9, v10);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = [v6 uuid];
            v26 = 138543362;
            v27 = v12;
            _os_log_impl(&dword_1BB6F3000, v11, OS_LOG_TYPE_DEFAULT, "Found more than one device with the same name when looking for duplicates, second device has UUID %{public}@", &v26, 0xCu);
          }

          v13 = *(a1[6] + 8);
          v14 = *(v13 + 40);
          *(v13 + 40) = 0;

          *a4 = 1;
        }

        else
        {
          v15 = WBS_LOG_CHANNEL_PREFIXCloudTabs(v9, v10);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [v6 uuid];
            v26 = 138543362;
            v27 = v16;
            _os_log_impl(&dword_1BB6F3000, v15, OS_LOG_TYPE_DEFAULT, "Found device with UUID %{public}@ with the same name as this device when looking for duplicates", &v26, 0xCu);
          }

          v17 = [WBSCloudTabDevice alloc];
          v18 = [v6 dictionaryRepresentation];
          v19 = [v6 uuid];
          v20 = [(WBSCloudTabDevice *)v17 initWithDictionary:v18 uuid:v19];
          v21 = *(a1[6] + 8);
          v22 = *(v21 + 40);
          *(v21 + 40) = v20;

          v23 = a1[5];
          if (v23 && ((*(v23 + 16))(v23, *(*(a1[6] + 8) + 40)) & 1) == 0)
          {
            v24 = *(a1[6] + 8);
            v25 = *(v24 + 40);
            *(v24 + 40) = 0;
          }
        }
      }
    }
  }
}

void __74__WBSCloudTabStore_fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = WBS_LOG_CHANNEL_PREFIXCloudTabs(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_DEFAULT, "Received cached CloudTab devices from the sync agent", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didFetchDeviceDictionariesFromCloudKit:*(a1 + 32) fetchedCloseRequests:0 fetchedDevicesBySyncing:0 error:0];
}

void __74__WBSCloudTabStore_fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit__block_invoke_2_20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _didFetchDeviceDictionariesFromCloudKit:*(a1 + 32) fetchedCloseRequests:*(a1 + 40) error:*(a1 + 48)];
}

- (void)handleCloseTabRequestsFromCloudKit
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = WBS_LOG_CHANNEL_PREFIXCloudTabs(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_DEFAULT, "Handling close requests from CloudKit", buf, 2u);
  }

  deviceUUIDsToCloseRequestsFromCloudKit = self->_deviceUUIDsToCloseRequestsFromCloudKit;
  _currentDeviceUUID = [(WBSCloudTabStore *)self _currentDeviceUUID];
  uUIDString = [_currentDeviceUUID UUIDString];
  v7 = [(NSMutableDictionary *)deviceUUIDsToCloseRequestsFromCloudKit objectForKeyedSubscript:uUIDString];

  if ([v7 count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v10)
    {
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          [(WBSCloudTabStore *)self _closeRequestedTabIfPossible:v13, v20];
          requestUUID = [v13 requestUUID];
          uUIDString2 = [requestUUID UUIDString];
          [array addObject:uUIDString2];
        }

        v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v10);
    }

    v18 = WBS_LOG_CHANNEL_PREFIXCloudTabs(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BB6F3000, v18, OS_LOG_TYPE_DEFAULT, "Deleting close requests for this device from CloudKit", buf, 2u);
    }

    mEMORY[0x1E69C8A08] = [MEMORY[0x1E69C8A08] sharedProxy];
    [mEMORY[0x1E69C8A08] deleteCloudTabCloseRequestsWithUUIDStrings:array completionHandler:&__block_literal_global_24_0];
  }
}

void __54__WBSCloudTabStore_handleCloseTabRequestsFromCloudKit__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v4 = v2;
  if (v2)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXCloudTabs(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [v4 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __54__WBSCloudTabStore_handleCloseTabRequestsFromCloudKit__block_invoke_cold_1();
    }
  }

  v6 = WBS_LOG_CHANNEL_PREFIXCloudTabs(v2, v3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_DEFAULT, "Finished deleting close requests for this device from CloudKit", v7, 2u);
  }
}

- (void)deleteAllDevicesFromCloudKit
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = WBS_LOG_CHANNEL_PREFIXCloudTabs(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_DEFAULT, "Deleting all devices from CloudKit", buf, 2u);
  }

  *buf = 0;
  v19 = buf;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__6;
  v22 = __Block_byref_object_dispose__6;
  v23 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__WBSCloudTabStore_deleteAllDevicesFromCloudKit__block_invoke;
  block[3] = &unk_1E7FB87C0;
  block[4] = self;
  block[5] = buf;
  dispatch_sync(internalQueue, block);
  currentDevice = self->_currentDevice;
  if (currentDevice)
  {
    v6 = *(v19 + 5);
    uuid = [(WBSCloudTabDevice *)currentDevice uuid];
    if (v6)
    {
      [v6 arrayByAddingObject:uuid];
    }

    else
    {
      v24[0] = uuid;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    }
    v8 = ;
    v9 = *(v19 + 5);
    *(v19 + 5) = v8;
  }

  if ([*(v19 + 5) count])
  {
    objc_initWeak(location, self);
    mEMORY[0x1E69C8A08] = [MEMORY[0x1E69C8A08] sharedProxy];
    v12 = *(v19 + 5);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __48__WBSCloudTabStore_deleteAllDevicesFromCloudKit__block_invoke_28;
    v14[3] = &unk_1E7FB8970;
    objc_copyWeak(&v15, location);
    [mEMORY[0x1E69C8A08] deleteDevicesWithUUIDStrings:v12 completionHandler:v14];

    objc_destroyWeak(&v15);
    objc_destroyWeak(location);
  }

  else
  {
    v13 = WBS_LOG_CHANNEL_PREFIXCloudTabs(0, v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_1BB6F3000, v13, OS_LOG_TYPE_DEFAULT, "No devices found in CloudKit to delete", location, 2u);
    }
  }

  _Block_object_dispose(buf, 8);
}

void __48__WBSCloudTabStore_deleteAllDevicesFromCloudKit__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 24) count])
  {
    v2 = [*(*(a1 + 32) + 24) safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_26_0];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

id __48__WBSCloudTabStore_deleteAllDevicesFromCloudKit__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 uuid];

  return v2;
}

void __48__WBSCloudTabStore_deleteAllDevicesFromCloudKit__block_invoke_28(uint64_t a1, void *a2)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXCloudTabs(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [v5 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __48__WBSCloudTabStore_deleteAllDevicesFromCloudKit__block_invoke_28_cold_1();
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__WBSCloudTabStore_deleteAllDevicesFromCloudKit__block_invoke_29;
  block[3] = &unk_1E7FB8948;
  objc_copyWeak(v8, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(v8);
}

void __48__WBSCloudTabStore_deleteAllDevicesFromCloudKit__block_invoke_29(uint64_t a1, uint64_t a2)
{
  v3 = WBS_LOG_CHANNEL_PREFIXCloudTabs(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_DEFAULT, "Fetching data from CloudKit after deleting all devices", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit];
}

- (void)notifyObserversOfSyncedCloudTabDevicesChanged
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSHashTable *)self->_observers copy];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    v6 = *MEMORY[0x1E69C8B58];
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 cloudTabDeviceProvider:self didUpdateCloudTabsInProfileWithIdentifier:v6];
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (BOOL)_writeCloseRequestForTab:(id)tab onDevice:(id)device
{
  v32 = *MEMORY[0x1E69E9840];
  tabCopy = tab;
  deviceCopy = device;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  _currentDeviceUUID = [(WBSCloudTabStore *)self _currentDeviceUUID];
  v9 = objc_alloc(MEMORY[0x1E696AFB0]);
  uuid = [deviceCopy uuid];
  v11 = [v9 initWithUUIDString:uuid];

  v12 = [WBSCloudTabCloseRequest alloc];
  v13 = [tabCopy url];
  uuidString = [tabCopy uuidString];
  date = [MEMORY[0x1E695DF00] date];
  v16 = [(WBSCloudTabCloseRequest *)v12 initWithURL:v13 tabUUIDString:uuidString lastModified:date sourceDeviceUUID:_currentDeviceUUID destinationDeviceUUID:v11 requestUUID:uUID];
  dictionaryRepresentation = [(WBSCloudTabCloseRequest *)v16 dictionaryRepresentation];

  if (dictionaryRepresentation)
  {
    v20 = WBS_LOG_CHANNEL_PREFIXCloudTabs(v18, v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [v11 UUIDString];
      *buf = 138543362;
      v31 = uUIDString;
      _os_log_impl(&dword_1BB6F3000, v20, OS_LOG_TYPE_DEFAULT, "Writing close request to CloudKit for device with UUID %{public}@", buf, 0xCu);
    }

    v24 = WBS_LOG_CHANNEL_PREFIXCloudTabs(v22, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [v11 UUIDString];
      objc_claimAutoreleasedReturnValue();
      [tabCopy url];
      objc_claimAutoreleasedReturnValue();
      [WBSCloudTabStore _writeCloseRequestForTab:onDevice:];
    }

    mEMORY[0x1E69C8A08] = [MEMORY[0x1E69C8A08] sharedProxy];
    uUIDString2 = [uUID UUIDString];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __54__WBSCloudTabStore__writeCloseRequestForTab_onDevice___block_invoke;
    v29[3] = &unk_1E7FB78D8;
    v29[4] = self;
    [mEMORY[0x1E69C8A08] saveCloudTabCloseRequestWithDictionaryRepresentation:dictionaryRepresentation closeRequestUUIDString:uUIDString2 completionHandler:v29];
  }

  return dictionaryRepresentation != 0;
}

void __54__WBSCloudTabStore__writeCloseRequestForTab_onDevice___block_invoke(uint64_t a1, void *a2)
{
  block[8] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXCloudTabs(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [v5 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __54__WBSCloudTabStore__writeCloseRequestForTab_onDevice___block_invoke_cold_1();
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__WBSCloudTabStore__writeCloseRequestForTab_onDevice___block_invoke_34;
    block[3] = &unk_1E7FB6F80;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __54__WBSCloudTabStore__writeCloseRequestForTab_onDevice___block_invoke_34(uint64_t a1, uint64_t a2)
{
  v3 = WBS_LOG_CHANNEL_PREFIXCloudTabs(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __54__WBSCloudTabStore__writeCloseRequestForTab_onDevice___block_invoke_34_cold_1(v3);
  }

  return [*(a1 + 32) fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit];
}

- (BOOL)_closeTabs:(id)tabs onDevice:(id)device
{
  v25 = *MEMORY[0x1E69E9840];
  tabsCopy = tabs;
  deviceCopy = device;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(tabsCopy, "count")}];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = tabsCopy;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if ([(WBSCloudTabStore *)self _writeCloseRequestForTab:v13 onDevice:deviceCopy])
        {
          [v8 addObject:v13];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v14 = [v8 count];
  if (v14)
  {
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__WBSCloudTabStore__closeTabs_onDevice___block_invoke;
    block[3] = &unk_1E7FB7DD0;
    block[4] = self;
    v18 = v8;
    v19 = deviceCopy;
    dispatch_sync(internalQueue, block);
  }

  return v14 != 0;
}

void __40__WBSCloudTabStore__closeTabs_onDevice___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _tabsWereClosed:*(a1 + 40) onDevice:*(a1 + 48)];
  v2 = [*(a1 + 32) _devicesByFilteringAndSortingDevices:*(*(a1 + 32) + 24)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
}

- (id)_deviceWithTabsWithOutstandingCloseRequestsRemoved:(id)removed closeRequestsForDevice:(id)device
{
  v38 = *MEMORY[0x1E69E9840];
  removedCopy = removed;
  deviceCopy = device;
  v5 = [deviceCopy count];
  if (v5)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXCloudTabs(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [removedCopy uuid];
      *buf = 138543362;
      v37 = uuid;
      _os_log_impl(&dword_1BB6F3000, v7, OS_LOG_TYPE_DEFAULT, "Removing tabs with outstanding close requests for device with UUID %{public}@", buf, 0xCu);
    }

    tabs = [removedCopy tabs];
    v10 = [tabs count];

    v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    tabs2 = [removedCopy tabs];
    v12 = [tabs2 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v12)
    {
      v13 = *v32;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(tabs2);
          }

          v15 = *(*(&v31 + 1) + 8 * i);
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __94__WBSCloudTabStore__deviceWithTabsWithOutstandingCloseRequestsRemoved_closeRequestsForDevice___block_invoke;
          v30[3] = &unk_1E7FB8998;
          v30[4] = v15;
          v16 = [deviceCopy indexOfObjectPassingTest:v30];
          if (v16 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v28 addObject:v15];
          }

          else
          {
            v18 = WBS_LOG_CHANNEL_PREFIXCloudTabs(v16, v17);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              uuid2 = [v15 uuid];
              *buf = 138543362;
              v37 = uuid2;
              _os_log_impl(&dword_1BB6F3000, v18, OS_LOG_TYPE_DEFAULT, "Removing tab with outstanding close request with UUID %{public}@", buf, 0xCu);
            }
          }
        }

        v12 = [tabs2 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v12);
    }

    if ([v28 count])
    {
      v20 = [WBSCloudTabDeviceParameters parametersWithDevice:removedCopy];
      [v20 setTabs:v28];
      v21 = [WBSCloudTabDevice alloc];
      uuid3 = [removedCopy uuid];
      v23 = [(WBSCloudTabDevice *)v21 initWithParameters:v20 uuid:uuid3];
    }

    else
    {
      v23 = 0;
    }

    v24 = removedCopy;
    removedCopy = v23;
  }

  else
  {
    v24 = WBS_LOG_CHANNEL_PREFIXCloudTabs(0, v6);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      uuid4 = [removedCopy uuid];
      *buf = 138543362;
      v37 = uuid4;
      _os_log_impl(&dword_1BB6F3000, v24, OS_LOG_TYPE_DEFAULT, "No outstanding close requests for device with UUID %{public}@", buf, 0xCu);
    }
  }

  return removedCopy;
}

- (void)_addCloseRequestDictionary:(id)dictionary toDeviceUUIDsToCloseRequestsDictionary:(id)requestsDictionary requestUUID:(id)d
{
  dictionaryCopy = dictionary;
  requestsDictionaryCopy = requestsDictionary;
  dCopy = d;
  v9 = [WBSCloudTabCloseRequest alloc];
  v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:dCopy];
  v11 = [(WBSCloudTabCloseRequest *)v9 initWithDictionary:dictionaryCopy requestUUID:v10];

  if (v11)
  {
    destinationDeviceUUID = [(WBSCloudTabCloseRequest *)v11 destinationDeviceUUID];
    uUIDString = [destinationDeviceUUID UUIDString];

    v14 = [requestsDictionaryCopy objectForKeyedSubscript:uUIDString];
    if (!v14)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [requestsDictionaryCopy setObject:v14 forKeyedSubscript:uUIDString];
    }

    [v14 addObject:v11];
  }
}

- (unint64_t)_indexOfDeviceInSyncedCloudTabDevicesFromCloudKit:(id)kit
{
  kitCopy = kit;
  uuid = [kitCopy uuid];
  syncedCloudTabDevicesFromCloudKit = self->_syncedCloudTabDevicesFromCloudKit;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__WBSCloudTabStore__indexOfDeviceInSyncedCloudTabDevicesFromCloudKit___block_invoke;
  v10[3] = &unk_1E7FB89C0;
  v11 = uuid;
  v7 = uuid;
  v8 = [(NSMutableArray *)syncedCloudTabDevicesFromCloudKit indexOfObjectPassingTest:v10];

  return v8;
}

uint64_t __70__WBSCloudTabStore__indexOfDeviceInSyncedCloudTabDevicesFromCloudKit___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (void)_tabWasClosed:(id)closed onDevice:(id)device
{
  closedCopy = closed;
  v6 = [(WBSCloudTabStore *)self _indexOfDeviceInSyncedCloudTabDevicesFromCloudKit:device];
  v7 = [(NSMutableArray *)self->_syncedCloudTabDevicesFromCloudKit objectAtIndexedSubscript:v6];
  v8 = [v7 deviceByRemovingTab:closedCopy];
  [(NSMutableArray *)self->_syncedCloudTabDevicesFromCloudKit replaceObjectAtIndex:v6 withObject:v8];
}

- (void)_tabsWereClosed:(id)closed onDevice:(id)device
{
  closedCopy = closed;
  deviceCopy = device;
  v7 = [(WBSCloudTabStore *)self _indexOfDeviceInSyncedCloudTabDevicesFromCloudKit:deviceCopy];
  v8 = [deviceCopy deviceByRemovingTabs:closedCopy];
  [(NSMutableArray *)self->_syncedCloudTabDevicesFromCloudKit replaceObjectAtIndex:v7 withObject:v8];
}

- (void)_syncAgentProxyConnectionWasInvalidated:(id)invalidated
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__WBSCloudTabStore__syncAgentProxyConnectionWasInvalidated___block_invoke;
  block[3] = &unk_1E7FB6F80;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __60__WBSCloudTabStore__syncAgentProxyConnectionWasInvalidated___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = WBS_LOG_CHANNEL_PREFIXCloudTabs(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_DEFAULT, "CloudKit syncing of iCloud Tabs is not available", v7, 2u);
  }

  *(*(a1 + 32) + 72) = 0;
  v4 = *(a1 + 32);
  if (v4[16] == 1)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4099 userInfo:0];
    [v4 _didFetchDeviceDictionariesFromCloudKit:0 fetchedCloseRequests:0 error:v5];
  }

  else
  {
    [*(a1 + 32) resetSyncedCloudTabDevicesAndCloseRequestsFromCloudKit];
    v6 = *(a1 + 32);
    v5 = *(v6 + 40);
    *(v6 + 40) = 0;
  }
}

- (void)_didFetchDeviceDictionariesFromCloudKit:(id)kit fetchedCloseRequests:(id)requests fetchedDevicesBySyncing:(BOOL)syncing error:(id)error
{
  syncingCopy = syncing;
  v29 = *MEMORY[0x1E69E9840];
  kitCopy = kit;
  requestsCopy = requests;
  errorCopy = error;
  v14 = WBS_LOG_CHANNEL_PREFIXCloudTabs(errorCopy, v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218243;
    v26 = [kitCopy count];
    v27 = 2113;
    v28 = kitCopy;
    _os_log_impl(&dword_1BB6F3000, v14, OS_LOG_TYPE_DEFAULT, "Fetched %lu devices from CloudKit: %{private}@", buf, 0x16u);
  }

  self->_isFetchingDataFromCloudKit = !syncingCopy;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111__WBSCloudTabStore__didFetchDeviceDictionariesFromCloudKit_fetchedCloseRequests_fetchedDevicesBySyncing_error___block_invoke;
  block[3] = &unk_1E7FB89E8;
  block[4] = self;
  v24 = syncingCopy;
  v16 = errorCopy;
  v21 = v16;
  v17 = kitCopy;
  v22 = v17;
  v18 = requestsCopy;
  v23 = v18;
  dispatch_sync(internalQueue, block);
  WeakRetained = objc_loadWeakRetained(&self->_wbsDelegate);
  if (syncingCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained didUpdateDevicesAndCloseRequestsFromCloudKitForCloudTabStore:self error:v16];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    [WeakRetained didGetCachedDevicesFromCloudKitForCloudTabStore:self];
  }
}

void __111__WBSCloudTabStore__didFetchDeviceDictionariesFromCloudKit_fetchedCloseRequests_fetchedDevicesBySyncing_error___block_invoke(uint64_t a1)
{
  v63 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = 0;

  v7 = *(a1 + 32);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  if (*(a1 + 64) == 1)
  {
    objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
  }

  v9 = [*(a1 + 32) _currentDeviceUUID];
  v45 = [v9 UUIDString];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = *(a1 + 48);
  v10 = [obj countByEnumeratingWithState:&v51 objects:v62 count:16];
  if (v10)
  {
    v12 = *v52;
    *&v11 = 134218498;
    v44 = v11;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v52 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v51 + 1) + 8 * i);
        v15 = [v14 deviceOrCloseRequestDictionary];
        if ([WBSCloudTabDevice isCloudTabDeviceDictionary:v15])
        {
          v16 = [v14 uuidString];
          v17 = [[WBSCloudTabDevice alloc] initWithDictionary:v15 uuid:v16];
          if (v17)
          {
            [*(*(a1 + 32) + 24) addObject:v17];
            v18 = [v16 isEqualToString:v45];
            if (v18)
            {
              objc_storeStrong((*(a1 + 32) + 40), v17);
            }

            v20 = WBS_LOG_CHANNEL_PREFIXCloudTabs(v18, v19);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [(WBSCloudTabDevice *)v17 tabs];
              v22 = [v21 count];
              v23 = @"another";
              if (*(*(a1 + 32) + 40) == v17)
              {
                v23 = @"current";
              }

              *buf = v44;
              v57 = v22;
              v58 = 2114;
              v59 = v23;
              v60 = 2114;
              v61 = v16;
              _os_log_impl(&dword_1BB6F3000, v20, OS_LOG_TYPE_DEFAULT, "Fetched %lu tabs from CloudKit for %{public}@ device with UUID %{public}@", buf, 0x20u);
            }
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v51 objects:v62 count:16];
    }

    while (v10);
  }

  v26 = WBS_LOG_CHANNEL_PREFIXCloudTabs(v24, v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [*(a1 + 56) count];
    v28 = *(a1 + 56);
    *buf = 134218243;
    v57 = v27;
    v58 = 2113;
    v59 = v28;
    _os_log_impl(&dword_1BB6F3000, v26, OS_LOG_TYPE_DEFAULT, "Fetched %lu close requests from CloudKit: %{private}@", buf, 0x16u);
  }

  v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v30 = *(a1 + 32);
  v31 = *(v30 + 48);
  *(v30 + 48) = v29;

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v32 = *(a1 + 56);
  v33 = [v32 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v33)
  {
    v34 = *v48;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v48 != v34)
        {
          objc_enumerationMutation(v32);
        }

        v36 = *(*(&v47 + 1) + 8 * j);
        v37 = [v36 deviceOrCloseRequestDictionary];
        if ([WBSCloudTabCloseRequest isCloudTabCloseRequestDictionary:v37])
        {
          v38 = *(a1 + 32);
          v39 = v38[6];
          v40 = [v36 uuidString];
          [v38 _addCloseRequestDictionary:v37 toDeviceUUIDsToCloseRequestsDictionary:v39 requestUUID:v40];
        }
      }

      v33 = [v32 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v33);
  }

  v41 = [*(a1 + 32) _devicesByFilteringAndSortingDevices:*(*(a1 + 32) + 24)];
  v42 = *(a1 + 32);
  v43 = *(v42 + 32);
  *(v42 + 32) = v41;
}

- (id)_devicesByFilteringAndSortingDevices:(id)devices
{
  v35 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = devicesCopy;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        deviceUUIDsToCloseRequestsFromCloudKit = self->_deviceUUIDsToCloseRequestsFromCloudKit;
        uuid = [v9 uuid];
        v12 = [(NSMutableDictionary *)deviceUUIDsToCloseRequestsFromCloudKit objectForKeyedSubscript:uuid];
        v13 = [(WBSCloudTabStore *)self _deviceWithTabsWithOutstandingCloseRequestsRemoved:v9 closeRequestsForDevice:v12];

        tabs = [v13 tabs];
        LOBYTE(v12) = [tabs count] == 0;

        if ((v12 & 1) == 0)
        {
          name = [v13 name];
          v16 = [dictionary objectForKeyedSubscript:name];

          if (!v16)
          {
            array = [MEMORY[0x1E695DF70] array];
            name2 = [v13 name];
            [dictionary setObject:array forKeyedSubscript:name2];

            v16 = array;
          }

          [v16 addObject:v13];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v6);
  }

  _currentDeviceUUID = [(WBSCloudTabStore *)self _currentDeviceUUID];
  uUIDString = [_currentDeviceUUID UUIDString];

  array2 = [MEMORY[0x1E695DF70] array];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __57__WBSCloudTabStore__devicesByFilteringAndSortingDevices___block_invoke;
  v27[3] = &unk_1E7FB8A58;
  v22 = uUIDString;
  v28 = v22;
  v23 = array2;
  v29 = v23;
  [dictionary enumerateKeysAndObjectsUsingBlock:v27];
  [v23 sortUsingComparator:&__block_literal_global_56];
  v24 = [v23 copy];

  return v24;
}

void __57__WBSCloudTabStore__devicesByFilteringAndSortingDevices___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 count] == 1)
  {
    v5 = [v4 firstObject];
    v6 = [v5 uuid];
    v7 = [v6 isEqualToString:*(a1 + 32)];

    if ((v7 & 1) == 0)
    {
      v8 = *(a1 + 40);
      v9 = [v4 firstObject];
      [v8 addObject:v9];
    }
  }

  else
  {
    [v4 sortUsingComparator:&__block_literal_global_49];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__WBSCloudTabStore__devicesByFilteringAndSortingDevices___block_invoke_3;
    v10[3] = &unk_1E7FB8A30;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    [v4 enumerateObjectsUsingBlock:v10];
  }
}

uint64_t __57__WBSCloudTabStore__devicesByFilteringAndSortingDevices___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 uuid];
  v6 = [v4 uuid];
  v7 = [v5 compare:v6];

  return v7;
}

void __57__WBSCloudTabStore__devicesByFilteringAndSortingDevices___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  v5 = [v13 uuid];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if ((v6 & 1) == 0)
  {
    v7 = *(a1 + 40);
    v8 = MEMORY[0x1E696AEC0];
    v9 = _WBSLocalizedString();
    v10 = [v13 name];
    v11 = [v8 localizedStringWithFormat:v9, v10, a3 + 1];
    v12 = [v13 deviceBySettingDisambiguatedName:v11];
    [v7 addObject:v12];
  }
}

uint64_t __57__WBSCloudTabStore__devicesByFilteringAndSortingDevices___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 lastModified];
  v6 = [v4 lastModified];
  v7 = [v5 compare:v6];

  return v7;
}

- (WBSCloudTabStoreDelegate)wbsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_wbsDelegate);

  return WeakRetained;
}

- (void)closeTab:onDevice:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_2(v2, v3, v4, 5.8081e-34);
  _os_log_debug_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_DEBUG, "Closing single tab %{private}@ on %{private}@", v5, 0x16u);
}

- (void)closeAllTabsOnDevice:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.808e-34);
  _os_log_debug_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_DEBUG, "Closing all tabs on %{private}@", v4, 0xCu);
}

- (void)saveCurrentCloudTabDeviceDictionaryToCloudKit:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.808e-34);
  _os_log_debug_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_DEBUG, "Saving current device to CloudKit with dictionary: %{private}@", v4, 0xCu);
}

void __51__WBSCloudTabStore_pruneExpiredDevicesFromCloudKit__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 24);
  v3 = 138477827;
  v4 = v2;
  _os_log_debug_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_DEBUG, "Current CloudKit devices: %{private}@", &v3, 0xCu);
}

void __51__WBSCloudTabStore_pruneExpiredDevicesFromCloudKit__block_invoke_11_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Deleting expired devices failed with error %{public}@", v5);
}

void __54__WBSCloudTabStore_handleCloseTabRequestsFromCloudKit__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Deleting close requests for this device failed with error %{public}@", v5);
}

void __48__WBSCloudTabStore_deleteAllDevicesFromCloudKit__block_invoke_28_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Deleting all devices in CloudKit failed with error %{public}@", v5);
}

- (void)_writeCloseRequestForTab:onDevice:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_2(v2, v3, v4, 5.8382e-34);
  _os_log_debug_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_DEBUG, "Writing close request to CloudKit for device with UUID %{public}@ and tab URL %{private}@", v5, 0x16u);
}

void __54__WBSCloudTabStore__writeCloseRequestForTab_onDevice___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Writing close request failed with error %{public}@", v5);
}

@end