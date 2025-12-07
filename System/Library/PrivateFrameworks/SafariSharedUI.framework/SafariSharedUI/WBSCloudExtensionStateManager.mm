@interface WBSCloudExtensionStateManager
+ (BOOL)_determineEnabledStateFromCloudExtensionState:(id)state forProfileServerID:(id)d;
+ (BOOL)test_determineEnabledStateFromCloudExtensionState:(id)state forProfileServerID:(id)d;
+ (WBSCloudExtensionStateManager)sharedManager;
+ (id)_cloudExtensionStatesDictionaryForDeviceWithUUIDString:(id)string fromCloudExtensionStates:(id)states;
+ (id)_determineNewTabPageFromCloudDeviceState:(id)state;
+ (id)_removeDeviceWithUUIDString:(id)string fromCloudDevices:(id)devices;
+ (id)_removeStatesForDeviceWithUUIDString:(id)string fromCloudExtensionStates:(id)states;
+ (id)_singleExtensionStates:(id)states withStateRemovedForDeviceWithUUIDString:(id)string;
+ (id)_uuidStringsOfInactiveCloudDevices:(id)devices currentDeviceUUIDString:(id)string;
+ (id)test_cloudExtensionStatesDictionaryForDeviceWithUUIDString:(id)string fromCloudExtensionStates:(id)states;
+ (id)test_determineNewTabPageFromCloudDeviceState:(id)state;
+ (id)test_removeDeviceWithUUIDString:(id)string fromCloudDevices:(id)devices;
+ (id)test_removeStatesForDeviceWithUUIDString:(id)string fromCloudExtensionStates:(id)states;
+ (id)test_uuidStringsOfInactiveCloudDevices:(id)devices currentDeviceUUIDString:(id)string;
- (BOOL)_cloudDeviceMatchesLocalDeviceForCurrentDevice;
- (BOOL)_cloudExtensionStatesMatchLocalExtensionStatesForCurrentDevice;
- (BOOL)_cloudStateMatchesLocalStateForCurrentDevice;
- (BOOL)_hasInstalledApplicationWithIdentifier:(id)identifier;
- (BOOL)isExtensionEnabledInCloudWithComposedIdentifier:(id)identifier forProfileServerID:(id)d;
- (WBSCloudExtensionStateManager)init;
- (id)_allComposedIdentifiersAssociatedWithComposedIdentifier:(id)identifier;
- (id)_cloudExtensionStateAssociatedWithComposedIdentifier:(id)identifier;
- (id)_cloudExtensionStateForComposedIdentifiers:(id)identifiers;
- (id)_composedIdentifierForBundleIdentifier:(id)identifier relatedToComposedIdentifier:(id)composedIdentifier;
- (id)_defaultWebExtensionsController;
- (id)_extensionDeviceDictionaryForCurrentDevice;
- (id)_extensionStatesDictionaryForCurrentDevice;
- (id)extensionAppsFromOtherDevices;
- (void)_cloudExtensionStatesWereUpdated;
- (void)_deleteCurrentDeviceFromCloudKit;
- (void)_determineExtensionSyncAvailabilityIgnoringExtensionSyncEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)_ensureCurrentDeviceIsSavedPeriodically;
- (void)_extensionSyncEnabledStateDidChangeDistributedNotificationHandler:(id)handler;
- (void)_getCloudExtensionStatesWithCompletionHandler:(id)handler;
- (void)_getCloudSettingsContainerManateeStateWithCompletionHandler:(id)handler;
- (void)_getPrimaryAppleAccountHasSafariSyncEnabledWithCompletionHandler:(id)handler;
- (void)_managedExtensionStateDidChange:(id)change;
- (void)_pruneInactiveDevicesFromCloudKitWithCompletionHandler:(id)handler;
- (void)_saveCurrentDeviceToCloudKitWithCompletionHandler:(id)handler;
- (void)_saveExtensionStatesWithDictionaryRepresentation:(id)representation forDevice:(id)device completionHandler:(id)handler;
- (void)_schedulePruningOfInactiveDevices;
- (void)_updateCloudExtensionStatesFromSafariBookmarksSyncAgent:(id)agent;
- (void)_updateLocalStateFromCloudExtensionState;
- (void)_updateStateProvidersFromCloudExtensionState;
- (void)addProvider:(id)provider;
- (void)getLockupViewsForAppsOnOtherDevicesWithCompletionHandler:(id)handler;
- (void)localExtensionStateDidChange;
- (void)setExtensionSyncEnabled:(BOOL)enabled;
- (void)setManateeState:(int64_t)state;
- (void)updateNewTabPageFromCloudDeviceState;
@end

@implementation WBSCloudExtensionStateManager

+ (WBSCloudExtensionStateManager)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[WBSCloudExtensionStateManager sharedManager];
  }

  v3 = sharedManager_manager;

  return v3;
}

void __46__WBSCloudExtensionStateManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(WBSCloudExtensionStateManager);
  v1 = sharedManager_manager;
  sharedManager_manager = v0;
}

- (WBSCloudExtensionStateManager)init
{
  v11.receiver = self;
  v11.super_class = WBSCloudExtensionStateManager;
  v2 = [(WBSCloudExtensionStateManager *)&v11 init];
  if (v2)
  {
    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    v2->_extensionSyncEnabled = [safari_browserDefaults safari_BOOLForKey:*MEMORY[0x1E69C9128] defaultValue:1];

    mEMORY[0x1E69C88C8] = [MEMORY[0x1E69C88C8] sharedController];
    hasAnyExtensionManagement = [mEMORY[0x1E69C88C8] hasAnyExtensionManagement];

    if (hasAnyExtensionManagement)
    {
      [(WBSCloudExtensionStateManager *)v2 setExtensionSyncEnabled:0];
    }

    v2->_manateeState = 0;
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__updateCloudExtensionStatesFromSafariBookmarksSyncAgent_ name:*MEMORY[0x1E69C8D00] object:0];

    defaultCenter2 = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__extensionSyncEnabledStateDidChangeDistributedNotificationHandler_ name:@"CloudExtensionSyncStateDidChange" object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel__managedExtensionStateDidChange_ name:*MEMORY[0x1E69C8C38] object:0];

    [(WBSCloudExtensionStateManager *)v2 _updateCloudExtensionStatesFromSafariBookmarksSyncAgent:0];
    v9 = v2;
  }

  return v2;
}

- (void)_updateLocalStateFromCloudExtensionState
{
  [(WBSCloudExtensionStateManager *)self _updateStateProvidersFromCloudExtensionState];
  [(WBSCloudExtensionStateManager *)self updateNewTabPageFromCloudDeviceState];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"WBSCloudExtensionStateDidChange" object:0];
}

- (void)_updateStateProvidersFromCloudExtensionState
{
  v88 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  allValues = [(NSDictionary *)self->_cloudExtensionStates allValues];
  firstObject = [allValues firstObject];
  v5FirstObject = [firstObject firstObject];

  v47 = v5FirstObject;
  v7 = [v5FirstObject objectForKey:*MEMORY[0x1E69C9610]];

  if (v7)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6968000, v10, OS_LOG_TYPE_INFO, "Found cloud data in unexpected format, ignoring", buf, 2u);
    }
  }

  else
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = self->_cloudExtensionStates;
    v11 = [(NSDictionary *)obj countByEnumeratingWithState:&v70 objects:v87 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v71;
      selfCopy = self;
      v51 = v3;
      v48 = *v71;
      do
      {
        v14 = 0;
        v49 = v12;
        do
        {
          if (*v71 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v70 + 1) + 8 * v14);
          if (([v3 containsObject:v15] & 1) == 0)
          {
            v52 = v14;
            v16 = [(WBSCloudExtensionStateManager *)self _allComposedIdentifiersAssociatedWithComposedIdentifier:v15];
            array = [MEMORY[0x1E695DF70] array];
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            v56 = v16;
            v54 = [(NSDictionary *)v56 countByEnumeratingWithState:&v66 objects:v86 count:16];
            if (v54)
            {
              v53 = *v67;
              do
              {
                for (i = 0; i != v54; i = i + 1)
                {
                  if (*v67 != v53)
                  {
                    objc_enumerationMutation(v56);
                  }

                  v19 = *(*(&v66 + 1) + 8 * i);
                  v62 = 0u;
                  v63 = 0u;
                  v64 = 0u;
                  v65 = 0u;
                  v20 = self->_stateProviders;
                  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v62 objects:v85 count:16];
                  if (v21)
                  {
                    v22 = v21;
                    v23 = 0;
                    v24 = *v63;
                    do
                    {
                      for (j = 0; j != v22; ++j)
                      {
                        if (*v63 != v24)
                        {
                          objc_enumerationMutation(v20);
                        }

                        v26 = *(*(&v62 + 1) + 8 * j);
                        if ([v26 hasExtensionWithComposedIdentifier:v19])
                        {
                          v27 = v19;

                          [array addObject:v26];
                          v23 = v27;
                        }
                      }

                      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v62 objects:v85 count:16];
                    }

                    while (v22);

                    self = selfCopy;
                    if (v23)
                    {
                      goto LABEL_30;
                    }
                  }

                  else
                  {
                  }
                }

                v54 = [(NSDictionary *)v56 countByEnumeratingWithState:&v66 objects:v86 count:16];
              }

              while (v54);
            }

            v23 = 0;
LABEL_30:
            v28 = v56;

            allObjects = [(NSDictionary *)v56 allObjects];
            v3 = v51;
            [v51 addObjectsFromArray:allObjects];

            if (v23)
            {
              v30 = [(WBSCloudExtensionStateManager *)self _cloudExtensionStateForComposedIdentifiers:v56];
              if ([v30 count])
              {
                v60 = 0u;
                v61 = 0u;
                v58 = 0u;
                v59 = 0u;
                v55 = array;
                v32 = [v55 countByEnumeratingWithState:&v58 objects:v84 count:16];
                if (v32)
                {
                  v33 = v32;
                  v34 = *v59;
                  do
                  {
                    for (k = 0; k != v33; ++k)
                    {
                      if (*v59 != v34)
                      {
                        objc_enumerationMutation(v55);
                      }

                      v36 = *(*(&v58 + 1) + 8 * k);
                      v37 = [v36 profileServerIDForStateManager:selfCopy];
                      v38 = [objc_opt_class() _determineEnabledStateFromCloudExtensionState:v30 forProfileServerID:v37];
                      v40 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(v38, v39);
                      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                      {
                        *buf = 141559043;
                        v41 = @"OFF";
                        if (v38)
                        {
                          v41 = @"ON";
                        }

                        v75 = 1752392040;
                        v76 = 2117;
                        v77 = v56;
                        v78 = 2113;
                        v79 = v41;
                        v80 = 2113;
                        v81 = v37;
                        v82 = 2113;
                        v83 = v30;
                        _os_log_impl(&dword_1C6968000, v40, OS_LOG_TYPE_INFO, "Extensions: %{sensitive, mask.hash}@, cloud state: %{private}@, for profile: %{private}@, computed from: %{private}@", buf, 0x34u);
                      }

                      [v36 setExtensionWithComposedIdentifier:v23 isEnabledInCloud:v38];
                    }

                    v33 = [v55 countByEnumeratingWithState:&v58 objects:v84 count:16];
                  }

                  while (v33);
                }

                v3 = v51;
                v28 = v56;
              }

              else
              {
                v42 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(0, v31);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
                {
                  cloudExtensionStates = selfCopy->_cloudExtensionStates;
                  v44 = v42;
                  v45 = [(NSDictionary *)cloudExtensionStates count];
                  v46 = selfCopy->_cloudExtensionStates;
                  *buf = 134218243;
                  v75 = v45;
                  v76 = 2113;
                  v77 = v46;
                  _os_log_impl(&dword_1C6968000, v44, OS_LOG_TYPE_INFO, "No cloud state found for extension: in %lu item cloud state %{private}@", buf, 0x16u);
                }
              }

              self = selfCopy;
            }

            v13 = v48;
            v12 = v49;
            v14 = v52;
          }

          ++v14;
        }

        while (v14 != v12);
        v12 = [(NSDictionary *)obj countByEnumeratingWithState:&v70 objects:v87 count:16];
      }

      while (v12);
    }
  }
}

- (void)updateNewTabPageFromCloudDeviceState
{
  v47 = *MEMORY[0x1E69E9840];
  if (!self->_extensionSyncEnabled)
  {
    v15 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(self, a2);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 0;
    v16 = "Skipping updating new tab page from cloud state since sharing across devices isn't enabled";
LABEL_13:
    _os_log_impl(&dword_1C6968000, v15, OS_LOG_TYPE_INFO, v16, buf, 2u);
    return;
  }

  if (![(NSArray *)self->_cloudDevices count])
  {
    v15 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(0, v3);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 0;
    v16 = "Skipping updating new tab page from cloud state since there aren't any cloud devices";
    goto LABEL_13;
  }

  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v5 = [objc_opt_class() _determineNewTabPageFromCloudDeviceState:self->_cloudDevices];
  _defaultWebExtensionsController = [(WBSCloudExtensionStateManager *)self _defaultWebExtensionsController];
  tabOverridePreferencesManager = [_defaultWebExtensionsController tabOverridePreferencesManager];
  v8 = [tabOverridePreferencesManager extensionComposedIdentifierForNewTabPreferenceInDefaults:safari_browserDefaults];

  v11 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(v9, v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v12)
  {
    *buf = 141558275;
    v44 = 1752392040;
    v45 = 2117;
    v46 = v5;
    _os_log_impl(&dword_1C6968000, v11, OS_LOG_TYPE_INFO, "Attempting to set local new tab page from sync to %{sensitive, mask.hash}@", buf, 0x16u);
  }

  if (v5 == v8 || (v12 = [v5 isEqualToString:v8], v12))
  {
    v14 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6968000, v14, OS_LOG_TYPE_INFO, "Skipping setting local new tab page because there would be no change", buf, 2u);
    }
  }

  else
  {
    if ([v5 length])
    {
      [(WBSCloudExtensionStateManager *)self _allComposedIdentifiersAssociatedWithComposedIdentifier:v5];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      defaultCenter2 = v41 = 0u;
      v19 = [defaultCenter2 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v39;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v39 != v21)
            {
              objc_enumerationMutation(defaultCenter2);
            }

            v23 = [_defaultWebExtensionsController extensionWithComposedIdentifier:{*(*(&v38 + 1) + 8 * i), v38}];
            v24 = [_defaultWebExtensionsController webExtensionForExtension:v23];

            if (v24)
            {

              newTabOverridePageURL = [v24 newTabOverridePageURL];
              v31 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(v29, v30);
              v32 = os_log_type_enabled(v31, OS_LOG_TYPE_INFO);
              if (newTabOverridePageURL)
              {
                if (v32)
                {
                  *buf = 141558275;
                  v44 = 1752392040;
                  v45 = 2117;
                  v46 = v5;
                  _os_log_impl(&dword_1C6968000, v31, OS_LOG_TYPE_INFO, "Setting the new tab page to be existing extension %{sensitive, mask.hash}@ from sync", buf, 0x16u);
                }

                tabOverridePreferencesManager2 = [_defaultWebExtensionsController tabOverridePreferencesManager];
                composedIdentifier = [v24 composedIdentifier];
                [tabOverridePreferencesManager2 setNewTabBehaviorWithExtensionComposedIdentifier:composedIdentifier inDefaults:safari_browserDefaults fromUserGesture:0];

                defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
                [defaultCenter postNotificationName:@"WBSNewTabPageDidChange" object:0];
              }

              else if (v32)
              {
                *buf = 141558275;
                v44 = 1752392040;
                v45 = 2117;
                v46 = v5;
                _os_log_impl(&dword_1C6968000, v31, OS_LOG_TYPE_INFO, "New tab page extension %{sensitive, mask.hash}@ not set from sync because it doesn't have a new tab page", buf, 0x16u);
              }

              goto LABEL_35;
            }
          }

          v20 = [defaultCenter2 countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v27 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(v25, v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 141558275;
        v44 = 1752392040;
        v45 = 2117;
        v46 = v5;
        _os_log_impl(&dword_1C6968000, v27, OS_LOG_TYPE_INFO, "New tab page extension %{sensitive, mask.hash}@ not set from sync because it's not installed on the system", buf, 0x16u);
      }
    }

    else
    {
      v36 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(0, v17);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C6968000, v36, OS_LOG_TYPE_INFO, "Clearing local new tab page from sync", buf, 2u);
      }

      tabOverridePreferencesManager3 = [_defaultWebExtensionsController tabOverridePreferencesManager];
      [tabOverridePreferencesManager3 clearNewTabBehaviorInDefaults:safari_browserDefaults fromUserGesture:0];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 postNotificationName:@"WBSNewTabPageDidChange" object:0];
    }

LABEL_35:
  }
}

- (void)setExtensionSyncEnabled:(BOOL)enabled
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_extensionSyncEnabled != enabled)
  {
    enabledCopy = enabled;
    v5 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(self, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (enabledCopy)
      {
        v6 = @"YES";
      }

      v7 = v6;
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_1C6968000, v5, OS_LOG_TYPE_INFO, "Changing extension sync enabled to %{public}@", &v11, 0xCu);
    }

    self->_extensionSyncEnabled = enabledCopy;
    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    [safari_browserDefaults setBool:enabledCopy forKey:*MEMORY[0x1E69C9128]];

    if (enabledCopy)
    {
      [(WBSCloudExtensionStateManager *)self localExtensionStateDidChange];
    }

    else
    {
      [(WBSPeriodicActivityScheduler *)self->_periodicDeviceSavingScheduler invalidate];
      periodicDeviceSavingScheduler = self->_periodicDeviceSavingScheduler;
      self->_periodicDeviceSavingScheduler = 0;

      [(WBSCloudExtensionStateManager *)self _deleteCurrentDeviceFromCloudKit];
    }

    [(WBSCloudExtensionStateManager *)self _updateCloudExtensionStatesFromSafariBookmarksSyncAgent:0];
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter postNotificationName:@"CloudExtensionSyncStateDidChange" object:0 userInfo:0 deliverImmediately:1];
  }
}

- (void)addProvider:(id)provider
{
  providerCopy = provider;
  stateProviders = self->_stateProviders;
  v8 = providerCopy;
  if (!stateProviders)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    v7 = self->_stateProviders;
    self->_stateProviders = v6;

    providerCopy = v8;
    stateProviders = self->_stateProviders;
  }

  [(NSMutableArray *)stateProviders addObject:providerCopy];
}

- (void)localExtensionStateDidChange
{
  if (self->_extensionSyncEnabled)
  {
    v7[9] = v2;
    v7[10] = v3;
    if ([(NSMutableArray *)self->_stateProviders count])
    {
      _extensionDeviceDictionaryForCurrentDevice = [(WBSCloudExtensionStateManager *)self _extensionDeviceDictionaryForCurrentDevice];
      if (_extensionDeviceDictionaryForCurrentDevice)
      {
        _extensionStatesDictionaryForCurrentDevice = [(WBSCloudExtensionStateManager *)self _extensionStatesDictionaryForCurrentDevice];
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __61__WBSCloudExtensionStateManager_localExtensionStateDidChange__block_invoke;
        v7[3] = &unk_1E8283830;
        v7[4] = self;
        [(WBSCloudExtensionStateManager *)self _saveExtensionStatesWithDictionaryRepresentation:_extensionStatesDictionaryForCurrentDevice forDevice:_extensionDeviceDictionaryForCurrentDevice completionHandler:v7];
      }
    }
  }
}

void __61__WBSCloudExtensionStateManager_localExtensionStateDidChange__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __61__WBSCloudExtensionStateManager_localExtensionStateDidChange__block_invoke_cold_1(v6);
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__WBSCloudExtensionStateManager_localExtensionStateDidChange__block_invoke_25;
    block[3] = &unk_1E8283080;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void *__61__WBSCloudExtensionStateManager_localExtensionStateDidChange__block_invoke_25(uint64_t a1)
{
  v2 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [MEMORY[0x1E695DF00] now];
  [v2 safari_setDate:v3 forKey:*MEMORY[0x1E69C9180]];

  result = [*(a1 + 32) _ensureCurrentDeviceIsSavedPeriodically];
  if (*(*(a1 + 32) + 64) == 1)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(result, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C6968000, v6, OS_LOG_TYPE_INFO, "Performing requested fetch after saving cloud extension states", v7, 2u);
    }

    result = [*(a1 + 32) _updateCloudExtensionStatesFromSafariBookmarksSyncAgent:0];
    *(*(a1 + 32) + 64) = 0;
  }

  return result;
}

- (void)getLockupViewsForAppsOnOtherDevicesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = +[WBSASCLockupViewGenerator sharedGenerator];
  extensionAppsFromOtherDevices = [(WBSCloudExtensionStateManager *)self extensionAppsFromOtherDevices];
  [v6 generateLockupViewsForAvailableApps:extensionAppsFromOtherDevices lockupViewType:0 maintainRequestedOrderOfApps:0 completionHandler:handlerCopy];
}

- (BOOL)_hasInstalledApplicationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  intValue = [identifierCopy intValue];
  v5 = [MEMORY[0x1E69635F8] enumeratorWithOptions:0];
  nextObject = [v5 nextObject];
  if (!nextObject)
  {
    LOBYTE(nextObject2) = 0;
    goto LABEL_12;
  }

  v7 = nextObject;
  v8 = intValue;
  while (v8)
  {
    iTunesMetadata = [v7 iTunesMetadata];
    storeItemIdentifier = [iTunesMetadata storeItemIdentifier];

    if (storeItemIdentifier == v8)
    {
      goto LABEL_10;
    }

LABEL_7:
    nextObject2 = [v5 nextObject];

    v7 = nextObject2;
    if (!nextObject2)
    {
      goto LABEL_11;
    }
  }

  applicationIdentifier = [v7 applicationIdentifier];
  v12 = [identifierCopy isEqualToString:applicationIdentifier];

  if ((v12 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  LOBYTE(nextObject2) = 1;
LABEL_11:

LABEL_12:
  return nextObject2;
}

- (id)extensionAppsFromOtherDevices
{
  v87 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v3 = [MEMORY[0x1E695DFA8] set];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v4 = self->_cloudExtensionStates;
  v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v75 objects:v86 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v76;
    v59 = *MEMORY[0x1E69C9600];
    v58 = *MEMORY[0x1E69C9618];
    v56 = *MEMORY[0x1E69C95A8];
    v54 = *MEMORY[0x1E69C9198];
    selfCopy = self;
    v65 = v3;
    v60 = v4;
    v64 = *v76;
    do
    {
      v8 = 0;
      v66 = v6;
      do
      {
        if (*v76 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v75 + 1) + 8 * v8);
        if (([v3 containsObject:v9] & 1) == 0)
        {
          v67 = [(WBSCloudExtensionStateManager *)self _allComposedIdentifiersAssociatedWithComposedIdentifier:v9];
          v10 = [(WBSCloudExtensionStateManager *)self _cloudExtensionStateForComposedIdentifiers:?];
          v11 = MEMORY[0x1E695DFD8];
          stateProviders = self->_stateProviders;
          v74[0] = MEMORY[0x1E69E9820];
          v74[1] = 3221225472;
          v74[2] = __62__WBSCloudExtensionStateManager_extensionAppsFromOtherDevices__block_invoke;
          v74[3] = &unk_1E8283858;
          v74[4] = self;
          v13 = [(NSMutableArray *)stateProviders safari_mapObjectsUsingBlock:v74];
          v14 = [v11 setWithArray:v13];

          v72[0] = MEMORY[0x1E69E9820];
          v72[1] = 3221225472;
          v72[2] = __62__WBSCloudExtensionStateManager_extensionAppsFromOtherDevices__block_invoke_2;
          v72[3] = &unk_1E8283880;
          v72[4] = self;
          v15 = v10;
          v73 = v15;
          v16 = [v14 safari_containsObjectPassingTest:v72];
          if (v16)
          {
            v63 = v14;
            v18 = v59;
            v19 = v58;
            v68 = 0u;
            v69 = 0u;
            v70 = 0u;
            v71 = 0u;
            v62 = v15;
            v20 = v15;
            v21 = [v20 countByEnumeratingWithState:&v68 objects:v85 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v69;
LABEL_10:
              v24 = 0;
              while (1)
              {
                if (*v69 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v68 + 1) + 8 * v24);
                v26 = [v25 safari_stringForKey:v18 returningNilIfEmpty:1];
                if (v26)
                {
                  v29 = v26;

                  v30 = 0;
                  self = selfCopy;
                  goto LABEL_24;
                }

                v27 = [v25 safari_stringForKey:v19 returningNilIfEmpty:1];
                if (v27)
                {
                  break;
                }

                if (v22 == ++v24)
                {
                  v22 = [v20 countByEnumeratingWithState:&v68 objects:v85 count:16];
                  self = selfCopy;
                  if (v22)
                  {
                    goto LABEL_10;
                  }

                  goto LABEL_17;
                }
              }

              v31 = v27;
              v30 = [v25 safari_stringForKey:v56];

              self = selfCopy;
              if (v30)
              {
                goto LABEL_25;
              }
            }

            else
            {
LABEL_17:
            }

            firstObject = [v20 firstObject];
            v30 = [firstObject safari_stringForKey:v56];

            if ([MEMORY[0x1E69C8880] isInternalInstall])
            {
              safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
              v34 = [safari_browserDefaults dictionaryForKey:v54];
              v29 = [v34 safari_stringForKey:v30];

              if (v29)
              {
LABEL_24:
                v35 = MEMORY[0x1E696AEC0];
                v36 = developerIdentifierFromComposedIdentifier(v9);
                v37 = [v35 stringWithFormat:@"%@.%@", v36, v29];

                v61 = 0;
                goto LABEL_27;
              }
            }

            else
            {
LABEL_25:
              v29 = 0;
            }

            v37 = 0;
            v61 = 1;
LABEL_27:
            if (v37)
            {
              v38 = v37;
            }

            else
            {
              v38 = v30;
            }

            v39 = [(WBSCloudExtensionStateManager *)self _hasInstalledApplicationWithIdentifier:v38];
            allObjects = [v67 allObjects];
            [v65 addObjectsFromArray:allObjects];

            if (v39)
            {
              v43 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(v41, v42);
              if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
              {
                *buf = 138477827;
                v80 = v9;
                _os_log_impl(&dword_1C6968000, v43, OS_LOG_TYPE_INFO, "Skipping %{private}@ in extensionAppsFromOtherDevices because its containing app is installed", buf, 0xCu);
              }
            }

            else
            {
              if (v61)
              {
                v44 = v30;
              }

              else
              {
                v44 = v29;
              }

              v45 = v44;
              if (v45)
              {
                v46 = [dictionary objectForKeyedSubscript:v45];

                if (!v46)
                {
                  v49 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(v47, v48);
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138478339;
                    v80 = v9;
                    v81 = 2113;
                    v82 = v30;
                    v83 = 2113;
                    v84 = v29;
                    _os_log_impl(&dword_1C6968000, v49, OS_LOG_TYPE_INFO, "Creating available app for composed identifier: %{private}@ with adamID: %{private}@, platform specific bundle identifier: %{private}@", buf, 0x20u);
                  }

                  v50 = [[WBSAvailableAppWithExtension alloc] initWithAdamID:v30 platformSpecificBundleID:v29];
                  if ((v61 & 1) == 0)
                  {
                    v51 = developerIdentifierFromComposedIdentifier(v9);
                    [(WBSAvailableAppWithExtension *)v50 setRequiredTeamID:v51];
                  }

                  [dictionary setObject:v50 forKeyedSubscript:v45];
                }
              }
            }

            v3 = v65;
            v4 = v60;
            v15 = v62;
            v14 = v63;
          }

          else
          {
            v28 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(v16, v17);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              *buf = 138477827;
              v80 = v9;
              _os_log_impl(&dword_1C6968000, v28, OS_LOG_TYPE_INFO, "Skipping %{private}@ in extensionAppsFromOtherDevices because it isn't enabled", buf, 0xCu);
            }
          }

          v6 = v66;
          v7 = v64;
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [(NSDictionary *)v4 countByEnumeratingWithState:&v75 objects:v86 count:16];
    }

    while (v6);
  }

  allValues = [dictionary allValues];

  return allValues;
}

uint64_t __62__WBSCloudExtensionStateManager_extensionAppsFromOtherDevices__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() _determineEnabledStateFromCloudExtensionState:*(a1 + 40) forProfileServerID:v3];

  return v4;
}

- (BOOL)isExtensionEnabledInCloudWithComposedIdentifier:(id)identifier forProfileServerID:(id)d
{
  dCopy = d;
  if (self->_extensionSyncEnabled)
  {
    v7 = [(WBSCloudExtensionStateManager *)self _cloudExtensionStateAssociatedWithComposedIdentifier:identifier];
    if ([v7 count])
    {
      v8 = [objc_opt_class() _determineEnabledStateFromCloudExtensionState:v7 forProfileServerID:dCopy];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setManateeState:(int64_t)state
{
  if (self->_manateeState != state)
  {
    self->_manateeState = state;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"WBSCloudExtensionManateeStateDidChange" object:0];
  }
}

- (void)_determineExtensionSyncAvailabilityIgnoringExtensionSyncEnabled:(BOOL)enabled completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = handlerCopy;
  if ((enabled || self->_extensionSyncEnabled) && self->_manateeState != 2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __115__WBSCloudExtensionStateManager__determineExtensionSyncAvailabilityIgnoringExtensionSyncEnabled_completionHandler___block_invoke;
    v8[3] = &unk_1E82838A8;
    v8[4] = self;
    v9 = handlerCopy;
    [(WBSCloudExtensionStateManager *)self _getPrimaryAppleAccountHasSafariSyncEnabledWithCompletionHandler:v8];
  }

  else
  {
    self->_hasSuccessfullyUpdatedCloudExtensionStatesAtLeastOnce = 0;
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

uint64_t __115__WBSCloudExtensionStateManager__determineExtensionSyncAvailabilityIgnoringExtensionSyncEnabled_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return (*(*(a1 + 40) + 16))();
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3[9] == 1)
  {
    return (*(v4 + 16))(v4, 1);
  }

  else
  {
    return [v3 _getCloudSettingsContainerManateeStateWithCompletionHandler:v4];
  }
}

- (void)_getCloudSettingsContainerManateeStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  mEMORY[0x1E69C8A08] = [MEMORY[0x1E69C8A08] sharedProxy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __93__WBSCloudExtensionStateManager__getCloudSettingsContainerManateeStateWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E82838F8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [mEMORY[0x1E69C8A08] getCloudSettingsContainerManateeStateWithCompletionHandler:v7];
}

void __93__WBSCloudExtensionStateManager__getCloudSettingsContainerManateeStateWithCompletionHandler___block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__WBSCloudExtensionStateManager__getCloudSettingsContainerManateeStateWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E82838D0;
  v5 = a2;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __93__WBSCloudExtensionStateManager__getCloudSettingsContainerManateeStateWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 48))
    {
      v4 = @"is";
    }

    else
    {
      v4 = @"is not";
    }

    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_1C6968000, v3, OS_LOG_TYPE_INFO, "Encryption %{public}@ supported for cloud extension state", &v7, 0xCu);
  }

  if (*(a1 + 48))
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  [*(a1 + 32) setManateeState:v5];
  return (*(*(a1 + 40) + 16))();
}

- (void)_getPrimaryAppleAccountHasSafariSyncEnabledWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  mEMORY[0x1E69C89D0] = [MEMORY[0x1E69C89D0] sharedObserver];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __98__WBSCloudExtensionStateManager__getPrimaryAppleAccountHasSafariSyncEnabledWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E82838F8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [mEMORY[0x1E69C89D0] getPrimaryAppleAccountHasSafariSyncEnabledWithCompletionHandler:v7];
}

void __98__WBSCloudExtensionStateManager__getPrimaryAppleAccountHasSafariSyncEnabledWithCompletionHandler___block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__WBSCloudExtensionStateManager__getPrimaryAppleAccountHasSafariSyncEnabledWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E82838D0;
  v5 = a2;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __98__WBSCloudExtensionStateManager__getPrimaryAppleAccountHasSafariSyncEnabledWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    *(*(a1 + 32) + 8) = 0;
  }

  return (*(*(a1 + 40) + 16))();
}

- (id)_extensionDeviceDictionaryForCurrentDevice
{
  v18[2] = *MEMORY[0x1E69E9840];
  _defaultWebExtensionsController = [(WBSCloudExtensionStateManager *)self _defaultWebExtensionsController];
  _deviceUUIDString = [_defaultWebExtensionsController _deviceUUIDString];
  if ([_deviceUUIDString length])
  {
    currentDevice = [MEMORY[0x1E69C8860] currentDevice];
    userAssignedName = [currentDevice userAssignedName];

    if (![(__CFString *)userAssignedName length])
    {
      v8 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(0, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [WBSCloudExtensionStateManager _extensionDeviceDictionaryForCurrentDevice];
      }

      userAssignedName = &stru_1F4646D10;
    }

    v9 = *MEMORY[0x1E69C95D8];
    v17[0] = *MEMORY[0x1E69C95B8];
    v17[1] = v9;
    v18[0] = userAssignedName;
    v18[1] = _deviceUUIDString;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
    tabOverridePreferencesManager = [_defaultWebExtensionsController tabOverridePreferencesManager];
    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    v13 = [tabOverridePreferencesManager cloudExtensionStateForDefaults:safari_browserDefaults];
    v14 = [v10 safari_dictionaryByMergingWithDictionary:v13];
  }

  else
  {
    v15 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(0, v4);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [WBSCloudExtensionStateManager _extensionDeviceDictionaryForCurrentDevice];
    }

    v14 = 0;
  }

  return v14;
}

- (id)_extensionStatesDictionaryForCurrentDevice
{
  v49 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  stateProviders = self->_stateProviders;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __75__WBSCloudExtensionStateManager__extensionStatesDictionaryForCurrentDevice__block_invoke;
  v46[3] = &unk_1E8283920;
  v46[4] = self;
  [(NSMutableArray *)stateProviders sortedArrayUsingComparator:v46];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v45 = 0u;
  v29 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v29)
  {
    v28 = *v43;
    v36 = *MEMORY[0x1E69C9628];
    selfCopy = self;
    do
    {
      v4 = 0;
      do
      {
        if (*v43 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v42 + 1) + 8 * v4);
        v6 = [v5 cloudExtensionStateForStateManager:self];
        if (filteredStateDictionaryForExtensionState_once != -1)
        {
          [WBSCloudExtensionStateManager _extensionStatesDictionaryForCurrentDevice];
        }

        v32 = [v6 safari_mapAndFilterKeysAndObjectsUsingBlock:&__block_literal_global_186];
        v7 = [v5 profileServerIDForStateManager:self];
        if (v7)
        {
          v31 = v4;
          v34 = v7;
          v33 = [WBSWebExtensionUtilities isProfileServerIDForDefaultProfile:?];
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v30 = v6;
          v8 = v6;
          v9 = [v8 countByEnumeratingWithState:&v38 objects:v47 count:16];
          if (!v9)
          {
            goto LABEL_25;
          }

          v10 = v9;
          v35 = *v39;
          while (1)
          {
            v11 = 0;
            do
            {
              if (*v39 != v35)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v38 + 1) + 8 * v11);
              v13 = [v8 safari_dictionaryForKey:v12];
              v14 = [dictionary safari_dictionaryForKey:v12];
              if (!v14)
              {
                if (!v33)
                {
                  goto LABEL_23;
                }

                v14 = [v32 safari_dictionaryForKey:v12];
              }

              v15 = [v14 safari_dictionaryForKey:v36];
              if (v15)
              {
                v16 = v15;
              }

              else
              {
                v16 = MEMORY[0x1E695E0F8];
              }

              v17 = [v16 mutableCopy];
              v18 = filteredStateDictionaryForEnabledState_once;
              v19 = v13;
              if (v18 != -1)
              {
                [WBSCloudExtensionStateManager _extensionStatesDictionaryForCurrentDevice];
              }

              v20 = [v19 safari_mapAndFilterKeysUsingBlock:&__block_literal_global_193];

              [v17 setObject:v20 forKeyedSubscript:v34];
              v21 = [v14 mutableCopy];
              v22 = [v17 copy];
              [v21 setObject:v22 forKeyedSubscript:v36];

              v23 = [v21 copy];
              [dictionary setObject:v23 forKeyedSubscript:v12];

LABEL_23:
              ++v11;
            }

            while (v10 != v11);
            v10 = [v8 countByEnumeratingWithState:&v38 objects:v47 count:16];
            if (!v10)
            {
LABEL_25:

              self = selfCopy;
              v6 = v30;
              v4 = v31;
              v7 = v34;
              break;
            }
          }
        }

        ++v4;
      }

      while (v4 != v29);
      v29 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v29);
  }

  v24 = [dictionary copy];

  return v24;
}

uint64_t __75__WBSCloudExtensionStateManager__extensionStatesDictionaryForCurrentDevice__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 profileServerIDForStateManager:v5];
  v8 = [WBSWebExtensionUtilities isProfileServerIDForDefaultProfile:v7];
  v9 = [v6 profileServerIDForStateManager:*(a1 + 32)];

  v10 = [WBSWebExtensionUtilities isProfileServerIDForDefaultProfile:v9];
  if (v8 && !v10)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  if (!v8 && !v10)
  {
    v11 = [v7 compare:v9];
  }

  return v11;
}

- (void)_saveExtensionStatesWithDictionaryRepresentation:(id)representation forDevice:(id)device completionHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  deviceCopy = device;
  handlerCopy = handler;
  v12 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(handlerCopy, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138478083;
    v21 = representationCopy;
    v22 = 2113;
    v23 = deviceCopy;
    _os_log_impl(&dword_1C6968000, v12, OS_LOG_TYPE_INFO, "Saving extension state to cloud: %{private}@, for device: %{private}@", buf, 0x16u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __110__WBSCloudExtensionStateManager__saveExtensionStatesWithDictionaryRepresentation_forDevice_completionHandler___block_invoke;
  v16[3] = &unk_1E8283948;
  v18 = deviceCopy;
  v19 = handlerCopy;
  v17 = representationCopy;
  v13 = deviceCopy;
  v14 = representationCopy;
  v15 = handlerCopy;
  [(WBSCloudExtensionStateManager *)self _determineExtensionSyncAvailabilityWithCompletionHandler:v16];
}

void __110__WBSCloudExtensionStateManager__saveExtensionStatesWithDictionaryRepresentation_forDevice_completionHandler___block_invoke(void *a1, char a2)
{
  if (a2)
  {
    v4 = [MEMORY[0x1E69C8A08] sharedProxy];
    [v4 saveExtensionStatesWithDictionaryRepresentation:a1[4] forDevice:a1[5] completionHandler:a1[6]];
  }

  else
  {
    v3 = a1[6];
    v4 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:@"WBSCloudExtensionStateManagerErrorDomain" code:0 privacyPreservingDescription:@"Extension syncing is not available"];
    (*(v3 + 16))(v3);
  }
}

- (void)_saveCurrentDeviceToCloudKitWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(handlerCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C6968000, v6, OS_LOG_TYPE_DEFAULT, "Doing periodic save of current device to CloudKit", buf, 2u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__WBSCloudExtensionStateManager__saveCurrentDeviceToCloudKitWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E82838A8;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(WBSCloudExtensionStateManager *)self _determineExtensionSyncAvailabilityWithCompletionHandler:v8];
}

void __83__WBSCloudExtensionStateManager__saveCurrentDeviceToCloudKitWithCompletionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v6 = [*(a1 + 32) _extensionDeviceDictionaryForCurrentDevice];
    if (v6)
    {
      v3 = [MEMORY[0x1E69C8A08] sharedProxy];
      [v3 saveExtensionDeviceWithDictionaryRepresentation:v6 completionHandler:*(a1 + 40)];
    }

    else
    {
      v5 = *(a1 + 40);
      v3 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:@"WBSCloudExtensionStateManagerErrorDomain" code:1 privacyPreservingDescription:@"Could not compute cloud extension device dictionary"];
      (*(v5 + 16))(v5, v3);
    }
  }

  else
  {
    v4 = *(a1 + 40);
    v6 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:@"WBSCloudExtensionStateManagerErrorDomain" code:0 privacyPreservingDescription:@"Extension syncing is not available"];
    (*(v4 + 16))(v4, v6);
  }
}

- (void)_deleteCurrentDeviceFromCloudKit
{
  v3 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C6968000, v3, OS_LOG_TYPE_DEFAULT, "Deleting current device from CloudKit", buf, 2u);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__WBSCloudExtensionStateManager__deleteCurrentDeviceFromCloudKit__block_invoke;
  v4[3] = &unk_1E8283970;
  v4[4] = self;
  [(WBSCloudExtensionStateManager *)self _determineExtensionSyncAvailabilityIgnoringExtensionSyncEnabled:1 completionHandler:v4];
}

void __65__WBSCloudExtensionStateManager__deleteCurrentDeviceFromCloudKit__block_invoke(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = [*(a1 + 32) _defaultWebExtensionsController];
    v3 = [v2 _deviceUUIDString];

    if ([v3 length])
    {
      v5 = [MEMORY[0x1E69C8A08] sharedProxy];
      v9[0] = v3;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
      [v5 deleteCloudExtensionDevicesWithUUIDStrings:v6 completionHandler:&__block_literal_global_60];
    }

    else
    {
      v8 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(0, v4);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __65__WBSCloudExtensionStateManager__deleteCurrentDeviceFromCloudKit__block_invoke_cold_2();
      }
    }
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(a1, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __65__WBSCloudExtensionStateManager__deleteCurrentDeviceFromCloudKit__block_invoke_cold_1();
    }
  }
}

void __65__WBSCloudExtensionStateManager__deleteCurrentDeviceFromCloudKit__block_invoke_58(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = v2;
  if (v2)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __65__WBSCloudExtensionStateManager__deleteCurrentDeviceFromCloudKit__block_invoke_58_cold_1(v5);
    }
  }
}

- (void)_getCloudExtensionStatesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(handlerCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C6968000, v6, OS_LOG_TYPE_INFO, "Fetching cloud extension state", buf, 2u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__WBSCloudExtensionStateManager__getCloudExtensionStatesWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E8283998;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(WBSCloudExtensionStateManager *)self _determineExtensionSyncAvailabilityIgnoringExtensionSyncEnabled:1 completionHandler:v8];
}

void __79__WBSCloudExtensionStateManager__getCloudExtensionStatesWithCompletionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = [MEMORY[0x1E69C8A08] sharedProxy];
    [v4 getCloudExtensionStatesWithCompletionHandler:*(a1 + 32)];
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:@"WBSCloudExtensionStateManagerErrorDomain" code:0 privacyPreservingDescription:@"Extension syncing is not available"];
    (*(v3 + 16))(v3, 0, 0);
  }
}

- (id)_composedIdentifierForBundleIdentifier:(id)identifier relatedToComposedIdentifier:(id)composedIdentifier
{
  identifierCopy = identifier;
  v6 = developerIdentifierFromComposedIdentifier(composedIdentifier);
  v7 = [WBSWebExtensionsController _composedIdentifierForStateOfExtensionWithBundleIdentifier:identifierCopy developerIdentifier:v6];

  return v7;
}

- (id)_allComposedIdentifiersAssociatedWithComposedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [MEMORY[0x1E695DFA8] setWithObject:identifierCopy];
  cloudExtensionStates = self->_cloudExtensionStates;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __89__WBSCloudExtensionStateManager__allComposedIdentifiersAssociatedWithComposedIdentifier___block_invoke;
  v14[3] = &unk_1E82839C0;
  v7 = identifierCopy;
  v15 = v7;
  v8 = v5;
  v16 = v8;
  selfCopy = self;
  [(NSDictionary *)cloudExtensionStates enumerateKeysAndObjectsUsingBlock:v14];
  if ([MEMORY[0x1E69C8880] isInternalInstall])
  {
    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    v10 = [safari_browserDefaults dictionaryForKey:*MEMORY[0x1E69C91A0]];
    v11 = [v10 safari_stringForKey:v7];

    if ([v11 length])
    {
      [v8 addObject:v11];
    }
  }

  v12 = [v8 copy];

  return v12;
}

void __89__WBSCloudExtensionStateManager__allComposedIdentifiersAssociatedWithComposedIdentifier___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v30 = a4;
  v42 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v31 = v6;
  if ([v6 isEqualToString:*(a1 + 32)])
  {
    v38 = 0uLL;
    v39 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v37;
      v12 = *MEMORY[0x1E69C9620];
      v13 = *MEMORY[0x1E69C9608];
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v37 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v36 + 1) + 8 * i);
          v16 = [v15 safari_stringForKey:v12 returningNilIfEmpty:{1, v30}];
          if (!v16)
          {
            v16 = [v15 safari_stringForKey:v13 returningNilIfEmpty:1];
            if (!v16)
            {
              continue;
            }
          }

          v26 = v16;
          v28 = *(a1 + 40);
          v29 = [*(a1 + 48) _composedIdentifierForBundleIdentifier:v16 relatedToComposedIdentifier:*(a1 + 32)];
          [v28 addObject:v29];

          *v30 = 1;
          goto LABEL_26;
        }

        v10 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v17 = v7;
    v18 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v33;
      v21 = *MEMORY[0x1E69C9620];
      v22 = *MEMORY[0x1E69C9608];
      while (2)
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v33 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v24 = *(*(&v32 + 1) + 8 * j);
          v25 = [v24 safari_stringForKey:v21 returningNilIfEmpty:{1, v30}];
          if (!v25)
          {
            v25 = [v24 safari_stringForKey:v22 returningNilIfEmpty:1];
            if (!v25)
            {
              continue;
            }
          }

          v26 = v25;
          v27 = [*(a1 + 48) _composedIdentifierForBundleIdentifier:v25 relatedToComposedIdentifier:*(a1 + 32)];
          if ([v27 isEqualToString:*(a1 + 32)])
          {
            [*(a1 + 40) addObject:v31];
            *v30 = 1;

LABEL_26:
            goto LABEL_27;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_27:
}

- (id)_cloudExtensionStateForComposedIdentifiers:(id)identifiers
{
  v19 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = identifiersCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSDictionary *)self->_cloudExtensionStates safari_arrayContainingObjectsOfClass:objc_opt_class() forKey:*(*(&v14 + 1) + 8 * i), v14];
        [array addObjectsFromArray:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [array copy];

  return v12;
}

- (id)_cloudExtensionStateAssociatedWithComposedIdentifier:(id)identifier
{
  v4 = [(WBSCloudExtensionStateManager *)self _allComposedIdentifiersAssociatedWithComposedIdentifier:identifier];
  v5 = [(WBSCloudExtensionStateManager *)self _cloudExtensionStateForComposedIdentifiers:v4];

  return v5;
}

- (void)_cloudExtensionStatesWereUpdated
{
  _cloudStateMatchesLocalStateForCurrentDevice = [(WBSCloudExtensionStateManager *)self _cloudStateMatchesLocalStateForCurrentDevice];
  if (_cloudStateMatchesLocalStateForCurrentDevice)
  {

    [(WBSCloudExtensionStateManager *)self _updateLocalStateFromCloudExtensionState];
  }

  else
  {
    v5 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(_cloudStateMatchesLocalStateForCurrentDevice, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C6968000, v5, OS_LOG_TYPE_INFO, "Cloud state doesn't match local state at fetch time, saving local state to the cloud and fetching again", v6, 2u);
    }

    self->_performFetchAfterNextSave = 1;
    [(WBSCloudExtensionStateManager *)self localExtensionStateDidChange];
  }
}

- (void)_updateCloudExtensionStatesFromSafariBookmarksSyncAgent:(id)agent
{
  v10 = *MEMORY[0x1E69E9840];
  agentCopy = agent;
  v6 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(agentCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v9 = agentCopy;
    _os_log_impl(&dword_1C6968000, v6, OS_LOG_TYPE_INFO, "Updating cloud extension states from notification: %@", buf, 0xCu);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__WBSCloudExtensionStateManager__updateCloudExtensionStatesFromSafariBookmarksSyncAgent___block_invoke;
  v7[3] = &unk_1E8283A10;
  v7[4] = self;
  [(WBSCloudExtensionStateManager *)self _getCloudExtensionStatesWithCompletionHandler:v7];
}

void __89__WBSCloudExtensionStateManager__updateCloudExtensionStatesFromSafariBookmarksSyncAgent___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __89__WBSCloudExtensionStateManager__updateCloudExtensionStatesFromSafariBookmarksSyncAgent___block_invoke_2;
  v14[3] = &unk_1E82839E8;
  v10 = *(a1 + 32);
  v15 = v9;
  v16 = v10;
  v17 = v8;
  v18 = v7;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __89__WBSCloudExtensionStateManager__updateCloudExtensionStatesFromSafariBookmarksSyncAgent___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a1 + 32;
  if (*(a1 + 32))
  {
    v4 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __89__WBSCloudExtensionStateManager__updateCloudExtensionStatesFromSafariBookmarksSyncAgent___block_invoke_2_cold_1(v3, v4);
    }

    v5 = *(a1 + 40);
    v6 = *(v5 + 24);
    *(v5 + 24) = 0;

    v7 = *(a1 + 40);
    v8 = *(v7 + 32);
    *(v7 + 32) = 0;

    *(*(a1 + 40) + 40) = 0;
    v9 = *(a1 + 40);
    if (v9[65] == 1)
    {
      [v9 _updateLocalStateFromCloudExtensionState];
    }
  }

  else
  {
    *(*(a1 + 40) + 40) = 1;
    v10 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(a1, a2);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v11)
    {
      v13 = *(a1 + 48);
      v29 = 138477827;
      v30 = v13;
      _os_log_impl(&dword_1C6968000, v10, OS_LOG_TYPE_INFO, "Received cloud devices: %{private}@", &v29, 0xCu);
    }

    v14 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 56);
      v29 = 138477827;
      v30 = v15;
      _os_log_impl(&dword_1C6968000, v14, OS_LOG_TYPE_INFO, "Received cloud extension state: %{private}@", &v29, 0xCu);
    }

    v16 = [*(a1 + 56) copy];
    v17 = *(a1 + 40);
    v18 = *(v17 + 24);
    *(v17 + 24) = v16;

    v19 = [*(a1 + 48) copy];
    v20 = *(a1 + 40);
    v21 = *(v20 + 32);
    *(v20 + 32) = v19;

    v22 = *(a1 + 40);
    if (*(v22 + 65))
    {
      if (!*(v22 + 48))
      {
        [v22 _schedulePruningOfInactiveDevices];
        v22 = *(a1 + 40);
      }

      [v22 _cloudExtensionStatesWereUpdated];
      v23 = *(a1 + 40);
      if ((*(v23 + 8) & 1) == 0)
      {
        *(v23 + 8) = 1;
        v24 = [*(a1 + 40) _cloudStateMatchesLocalStateForCurrentDevice];
        if ((v24 & 1) == 0)
        {
          v26 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(v24, v25);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            LOWORD(v29) = 0;
            _os_log_impl(&dword_1C6968000, v26, OS_LOG_TYPE_INFO, "Cloud state for the current device doesn't match local state, saving extension state to cloud", &v29, 2u);
          }

          [*(a1 + 40) localExtensionStateDidChange];
        }
      }

      v27 = *(a1 + 40);
      if (*(v27 + 65) == 1 && !*(v27 + 56))
      {
        [v27 _ensureCurrentDeviceIsSavedPeriodically];
      }
    }

    else
    {
      v28 = [MEMORY[0x1E696AD88] defaultCenter];
      [v28 postNotificationName:@"WBSCloudExtensionStateDidChange" object:0];
    }
  }
}

- (void)_ensureCurrentDeviceIsSavedPeriodically
{
  [(WBSPeriodicActivityScheduler *)self->_periodicDeviceSavingScheduler invalidate];
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v4 = [safari_browserDefaults safari_dateForKey:*MEMORY[0x1E69C9180]];

  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x1E69C8FD0]);
  if (saveCurrentDeviceTimeInterval_onceToken != -1)
  {
    [WBSCloudExtensionStateManager _ensureCurrentDeviceIsSavedPeriodically];
  }

  v6 = *&saveCurrentDeviceTimeInterval_saveCurrentDeviceTimeInterval;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__WBSCloudExtensionStateManager__ensureCurrentDeviceIsSavedPeriodically__block_invoke;
  v9[3] = &unk_1E8283A38;
  objc_copyWeak(&v10, &location);
  v7 = [v5 initWithInterval:v4 minimumDelay:v9 lastFireDate:v6 block:1.0];
  periodicDeviceSavingScheduler = self->_periodicDeviceSavingScheduler;
  self->_periodicDeviceSavingScheduler = v7;

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __72__WBSCloudExtensionStateManager__ensureCurrentDeviceIsSavedPeriodically__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__WBSCloudExtensionStateManager__ensureCurrentDeviceIsSavedPeriodically__block_invoke_2;
  block[3] = &unk_1E8283A38;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __72__WBSCloudExtensionStateManager__ensureCurrentDeviceIsSavedPeriodically__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _saveCurrentDeviceToCloudKitWithCompletionHandler:&__block_literal_global_72_0];
    WeakRetained = v2;
  }
}

void __72__WBSCloudExtensionStateManager__ensureCurrentDeviceIsSavedPeriodically__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = v2;
  if (v2)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __72__WBSCloudExtensionStateManager__ensureCurrentDeviceIsSavedPeriodically__block_invoke_3_cold_1(v5);
    }
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_75);
  }
}

void __72__WBSCloudExtensionStateManager__ensureCurrentDeviceIsSavedPeriodically__block_invoke_73()
{
  v1 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v0 = [MEMORY[0x1E695DF00] now];
  [v1 safari_setDate:v0 forKey:*MEMORY[0x1E69C9180]];
}

- (void)_schedulePruningOfInactiveDevices
{
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v4 = [safari_browserDefaults safari_dateForKey:*MEMORY[0x1E69C9178]];

  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x1E69C8FD0]);
  if (pruneInactiveDevicesTimeInterval_onceToken != -1)
  {
    [WBSCloudExtensionStateManager _schedulePruningOfInactiveDevices];
  }

  v6 = *&pruneInactiveDevicesTimeInterval_pruneInactiveDevicesTimeInterval;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__WBSCloudExtensionStateManager__schedulePruningOfInactiveDevices__block_invoke;
  v9[3] = &unk_1E8283A38;
  objc_copyWeak(&v10, &location);
  v7 = [v5 initWithInterval:v4 minimumDelay:v9 lastFireDate:v6 block:1.0];
  inactiveDevicePruningScheduler = self->_inactiveDevicePruningScheduler;
  self->_inactiveDevicePruningScheduler = v7;

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __66__WBSCloudExtensionStateManager__schedulePruningOfInactiveDevices__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__WBSCloudExtensionStateManager__schedulePruningOfInactiveDevices__block_invoke_2;
  block[3] = &unk_1E8283A38;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __66__WBSCloudExtensionStateManager__schedulePruningOfInactiveDevices__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __66__WBSCloudExtensionStateManager__schedulePruningOfInactiveDevices__block_invoke_3;
    v3[3] = &unk_1E8283A60;
    v3[4] = WeakRetained;
    [WeakRetained _pruneInactiveDevicesFromCloudKitWithCompletionHandler:v3];
  }
}

void __66__WBSCloudExtensionStateManager__schedulePruningOfInactiveDevices__block_invoke_3(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    v5 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v6 = [MEMORY[0x1E695DF00] now];
    [v5 safari_setDate:v6 forKey:*MEMORY[0x1E69C9178]];

    if (a3)
    {
      v7 = *(a1 + 32);

      [v7 _cloudExtensionStatesWereUpdated];
    }
  }
}

+ (id)_uuidStringsOfInactiveCloudDevices:(id)devices currentDeviceUUIDString:(id)string
{
  stringCopy = string;
  v6 = MEMORY[0x1E695DF00];
  v7 = timeIntervalBeforeAssumingDeviceHasBecomeInactive_onceToken;
  devicesCopy = devices;
  if (v7 != -1)
  {
    +[WBSCloudExtensionStateManager _uuidStringsOfInactiveCloudDevices:currentDeviceUUIDString:];
  }

  v9 = [v6 dateWithTimeIntervalSinceNow:-*&timeIntervalBeforeAssumingDeviceHasBecomeInactive_timeIntervalBeforeAssumingDeviceHasBecomeInactive];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __92__WBSCloudExtensionStateManager__uuidStringsOfInactiveCloudDevices_currentDeviceUUIDString___block_invoke;
  v14[3] = &unk_1E8283A88;
  v15 = stringCopy;
  v16 = v9;
  v10 = v9;
  v11 = stringCopy;
  v12 = [devicesCopy safari_mapAndFilterObjectsUsingBlock:v14];

  return v12;
}

id __92__WBSCloudExtensionStateManager__uuidStringsOfInactiveCloudDevices_currentDeviceUUIDString___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 safari_stringForKey:*MEMORY[0x1E69C95D8]];
  if ([v4 length] && (objc_msgSend(v4, "isEqualToString:", *(a1 + 32)) & 1) == 0)
  {
    v6 = [v3 safari_dateForKey:*MEMORY[0x1E69C95B0]];
    v7 = v6;
    if (v6 && [v6 compare:*(a1 + 40)] == -1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_removeDeviceWithUUIDString:(id)string fromCloudDevices:(id)devices
{
  stringCopy = string;
  devicesCopy = devices;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__WBSCloudExtensionStateManager__removeDeviceWithUUIDString_fromCloudDevices___block_invoke;
  v10[3] = &unk_1E8283AB0;
  v12 = v13;
  v7 = stringCopy;
  v11 = v7;
  v8 = [devicesCopy safari_mapAndFilterObjectsUsingBlock:v10];

  _Block_object_dispose(v13, 8);

  return v8;
}

id __78__WBSCloudExtensionStateManager__removeDeviceWithUUIDString_fromCloudDevices___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v5 = v3;
  }

  else
  {
    v6 = [v3 safari_stringForKey:*MEMORY[0x1E69C95D8]];
    if ([v6 length] && objc_msgSend(*(a1 + 32), "isEqualToString:", v6))
    {
      v5 = 0;
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    else
    {
      v5 = v4;
    }
  }

  return v5;
}

+ (id)_removeStatesForDeviceWithUUIDString:(id)string fromCloudExtensionStates:(id)states
{
  stringCopy = string;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __95__WBSCloudExtensionStateManager__removeStatesForDeviceWithUUIDString_fromCloudExtensionStates___block_invoke;
  v10[3] = &unk_1E8283AD8;
  v11 = stringCopy;
  selfCopy = self;
  v7 = stringCopy;
  v8 = [states safari_mapAndFilterKeysAndObjectsUsingBlock:v10];

  return v8;
}

id __95__WBSCloudExtensionStateManager__removeStatesForDeviceWithUUIDString_fromCloudExtensionStates___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 40) _singleExtensionStates:a3 withStateRemovedForDeviceWithUUIDString:*(a1 + 32)];
  if ([v3 count])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_singleExtensionStates:(id)states withStateRemovedForDeviceWithUUIDString:(id)string
{
  statesCopy = states;
  stringCopy = string;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __96__WBSCloudExtensionStateManager__singleExtensionStates_withStateRemovedForDeviceWithUUIDString___block_invoke;
  v10[3] = &unk_1E8283AB0;
  v12 = v13;
  v7 = stringCopy;
  v11 = v7;
  v8 = [statesCopy safari_mapAndFilterObjectsUsingBlock:v10];

  _Block_object_dispose(v13, 8);

  return v8;
}

id __96__WBSCloudExtensionStateManager__singleExtensionStates_withStateRemovedForDeviceWithUUIDString___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v5 = v3;
  }

  else
  {
    v6 = [v3 safari_stringForKey:*MEMORY[0x1E69C95D8]];
    if ([v6 length] && objc_msgSend(*(a1 + 32), "isEqualToString:", v6))
    {
      v5 = 0;
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    else
    {
      v5 = v4;
    }
  }

  return v5;
}

- (void)_pruneInactiveDevicesFromCloudKitWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(handlerCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C6968000, v6, OS_LOG_TYPE_DEFAULT, "Pruning inactive extension devices from CloudKit", buf, 2u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __88__WBSCloudExtensionStateManager__pruneInactiveDevicesFromCloudKitWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E82838A8;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(WBSCloudExtensionStateManager *)self _determineExtensionSyncAvailabilityWithCompletionHandler:v8];
}

void __88__WBSCloudExtensionStateManager__pruneInactiveDevicesFromCloudKitWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 32);
    v5 = v4[4];
    v6 = [v4 _defaultWebExtensionsController];
    v7 = [v6 _deviceUUIDString];
    v8 = [v3 _uuidStringsOfInactiveCloudDevices:v5 currentDeviceUUIDString:v7];

    v9 = [v8 count];
    v11 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(v9, v10);
    v12 = v11;
    if (v9)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v33 = v8;
        _os_log_impl(&dword_1C6968000, v12, OS_LOG_TYPE_DEFAULT, "Pruning inactive extension devices with UUIDs: %{public}@", buf, 0xCu);
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v13 = v8;
      v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v28;
        do
        {
          v17 = 0;
          do
          {
            if (*v28 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v27 + 1) + 8 * v17);
            v19 = [objc_opt_class() _removeDeviceWithUUIDString:v18 fromCloudDevices:{*(*(a1 + 32) + 32), v27}];
            v20 = *(a1 + 32);
            v21 = *(v20 + 32);
            *(v20 + 32) = v19;

            v22 = [objc_opt_class() _removeStatesForDeviceWithUUIDString:v18 fromCloudExtensionStates:*(*(a1 + 32) + 24)];
            v23 = *(a1 + 32);
            v24 = *(v23 + 24);
            *(v23 + 24) = v22;

            ++v17;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v15);
      }

      v25 = [MEMORY[0x1E69C8A08] sharedProxy];
      [v25 deleteCloudExtensionDevicesWithUUIDStrings:v13 completionHandler:&__block_literal_global_82];
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __88__WBSCloudExtensionStateManager__pruneInactiveDevicesFromCloudKitWithCompletionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v26 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(a1, a2);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6968000, v26, OS_LOG_TYPE_DEFAULT, "Skipping pruning inactive extension devices from CloudKit because extension sync is off", buf, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __88__WBSCloudExtensionStateManager__pruneInactiveDevicesFromCloudKitWithCompletionHandler___block_invoke_80(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = v2;
  if (v2)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __88__WBSCloudExtensionStateManager__pruneInactiveDevicesFromCloudKitWithCompletionHandler___block_invoke_80_cold_1(v5);
    }
  }
}

+ (id)_determineNewTabPageFromCloudDeviceState:(id)state
{
  v3 = [state sortedArrayUsingComparator:&__block_literal_global_85];
  firstObject = [v3 firstObject];
  v5 = [firstObject safari_stringForKey:*MEMORY[0x1E69C95C0] returningNilIfEmpty:1];

  return v5;
}

uint64_t __74__WBSCloudExtensionStateManager__determineNewTabPageFromCloudDeviceState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = *MEMORY[0x1E69C95D0];
  v7 = [v4 safari_BOOLForKey:*MEMORY[0x1E69C95D0]];
  if (v7 == [v5 safari_BOOLForKey:v6])
  {
    v9 = *MEMORY[0x1E69C95C8];
    v10 = [v5 safari_dateForKey:*MEMORY[0x1E69C95C8]];
    v11 = [v4 safari_dateForKey:v9];
    v8 = [v10 compare:v11];
  }

  else if (v7)
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (BOOL)_determineEnabledStateFromCloudExtensionState:(id)state forProfileServerID:(id)d
{
  dCopy = d;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __98__WBSCloudExtensionStateManager__determineEnabledStateFromCloudExtensionState_forProfileServerID___block_invoke;
  v13[3] = &unk_1E8283B20;
  v14 = dCopy;
  v6 = dCopy;
  v7 = [state sortedArrayUsingComparator:v13];
  firstObject = [v7 firstObject];
  v9 = [firstObject safari_dictionaryForKey:*MEMORY[0x1E69C9628]];
  v10 = [v9 safari_dictionaryForKey:v6];
  v11 = [v10 safari_BOOLForKey:*MEMORY[0x1E69C95F0]];

  return v11;
}

uint64_t __98__WBSCloudExtensionStateManager__determineEnabledStateFromCloudExtensionState_forProfileServerID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *MEMORY[0x1E69C9628];
  v6 = a3;
  v7 = [a2 safari_dictionaryForKey:v5];
  v8 = [v7 safari_dictionaryForKey:*(a1 + 32)];

  v9 = [v6 safari_dictionaryForKey:v5];

  v10 = [v9 safari_dictionaryForKey:*(a1 + 32)];

  v11 = *MEMORY[0x1E69C95E8];
  v12 = [v8 safari_BOOLForKey:*MEMORY[0x1E69C95E8]];
  if (v12 == [v10 safari_BOOLForKey:v11])
  {
    v14 = *MEMORY[0x1E69C9610];
    v15 = [v10 safari_dateForKey:*MEMORY[0x1E69C9610]];
    v16 = [v8 safari_dateForKey:v14];
    v13 = [v15 compare:v16];
  }

  else if (v12)
  {
    v13 = -1;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (BOOL)_cloudDeviceMatchesLocalDeviceForCurrentDevice
{
  v28 = *MEMORY[0x1E69E9840];
  _extensionDeviceDictionaryForCurrentDevice = [(WBSCloudExtensionStateManager *)self _extensionDeviceDictionaryForCurrentDevice];
  if (_extensionDeviceDictionaryForCurrentDevice)
  {
    _defaultWebExtensionsController = [(WBSCloudExtensionStateManager *)self _defaultWebExtensionsController];
    _deviceUUIDString = [_defaultWebExtensionsController _deviceUUIDString];

    if ([_deviceUUIDString length])
    {
      cloudDevices = self->_cloudDevices;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __79__WBSCloudExtensionStateManager__cloudDeviceMatchesLocalDeviceForCurrentDevice__block_invoke;
      v24[3] = &unk_1E8283B48;
      v25 = _deviceUUIDString;
      v8 = [(NSArray *)cloudDevices safari_firstObjectPassingTest:v24];
      if (!v8)
      {
        v9 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(0, v7);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C6968000, v9, OS_LOG_TYPE_INFO, "Current extension device doesn't exist in cloud", buf, 2u);
        }
      }

      v10 = extensionDeviceDictionaryToUseForComparison_once;
      v11 = v8;
      if (v10 != -1)
      {
        [WBSCloudExtensionStateManager _cloudDeviceMatchesLocalDeviceForCurrentDevice];
      }

      v12 = [v11 safari_mapAndFilterKeysAndObjectsUsingBlock:&__block_literal_global_217];

      v13 = [v12 isEqualToDictionary:_extensionDeviceDictionaryForCurrentDevice];
      v15 = v13;
      if ((v13 & 1) == 0)
      {
        v16 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(v13, v14);
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
        if (v17)
        {
          *buf = 0;
          _os_log_impl(&dword_1C6968000, v16, OS_LOG_TYPE_INFO, "Cloud extension device doesn't match local device", buf, 2u);
        }

        v19 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(v17, v18);
        v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
        if (v20)
        {
          *buf = 138477827;
          v27 = _extensionDeviceDictionaryForCurrentDevice;
          _os_log_impl(&dword_1C6968000, v19, OS_LOG_TYPE_INFO, "Local extension device: %{private}@", buf, 0xCu);
        }

        v22 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(v20, v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138477827;
          v27 = v12;
          _os_log_impl(&dword_1C6968000, v22, OS_LOG_TYPE_INFO, "Cloud extension device: %{private}@", buf, 0xCu);
        }
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

uint64_t __79__WBSCloudExtensionStateManager__cloudDeviceMatchesLocalDeviceForCurrentDevice__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 safari_stringForKey:*MEMORY[0x1E69C95D8]];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

+ (id)_cloudExtensionStatesDictionaryForDeviceWithUUIDString:(id)string fromCloudExtensionStates:(id)states
{
  stringCopy = string;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __113__WBSCloudExtensionStateManager__cloudExtensionStatesDictionaryForDeviceWithUUIDString_fromCloudExtensionStates___block_invoke;
  v9[3] = &unk_1E8283B70;
  v10 = stringCopy;
  v6 = stringCopy;
  v7 = [states safari_mapAndFilterKeysAndObjectsUsingBlock:v9];

  return v7;
}

id __113__WBSCloudExtensionStateManager__cloudExtensionStatesDictionaryForDeviceWithUUIDString_fromCloudExtensionStates___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = *MEMORY[0x1E69C95D8];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 safari_stringForKey:{v8, v14}];
        if ([*(a1 + 32) isEqualToString:v11])
        {
          v12 = v10;

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (BOOL)_cloudExtensionStatesMatchLocalExtensionStatesForCurrentDevice
{
  v24 = *MEMORY[0x1E69E9840];
  _extensionStatesDictionaryForCurrentDevice = [(WBSCloudExtensionStateManager *)self _extensionStatesDictionaryForCurrentDevice];
  v4 = extensionsStatesDictionaryToUseForComparison(_extensionStatesDictionaryForCurrentDevice);

  _defaultWebExtensionsController = [(WBSCloudExtensionStateManager *)self _defaultWebExtensionsController];
  _deviceUUIDString = [_defaultWebExtensionsController _deviceUUIDString];

  v7 = [objc_opt_class() _cloudExtensionStatesDictionaryForDeviceWithUUIDString:_deviceUUIDString fromCloudExtensionStates:self->_cloudExtensionStates];
  v8 = extensionsStatesDictionaryToUseForComparison(v7);

  v9 = [v4 isEqualToDictionary:v8];
  v11 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(v9, v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v12)
    {
      LOWORD(v22) = 0;
      v14 = "Cloud extension states for the current devices matches local states";
      v15 = v11;
      v16 = 2;
LABEL_10:
      _os_log_impl(&dword_1C6968000, v15, OS_LOG_TYPE_INFO, v14, &v22, v16);
    }
  }

  else
  {
    if (v12)
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_1C6968000, v11, OS_LOG_TYPE_INFO, "Cloud extension states for the current device doesn't match local states", &v22, 2u);
    }

    v17 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(v12, v13);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (v18)
    {
      v22 = 138477827;
      v23 = v4;
      _os_log_impl(&dword_1C6968000, v17, OS_LOG_TYPE_INFO, "Local extension states: %{private}@", &v22, 0xCu);
    }

    v20 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(v18, v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v22 = 138477827;
      v23 = v8;
      v14 = "Cloud extension states: %{private}@";
      v15 = v20;
      v16 = 12;
      goto LABEL_10;
    }
  }

  return v9;
}

- (BOOL)_cloudStateMatchesLocalStateForCurrentDevice
{
  _cloudDeviceMatchesLocalDeviceForCurrentDevice = [(WBSCloudExtensionStateManager *)self _cloudDeviceMatchesLocalDeviceForCurrentDevice];
  if (_cloudDeviceMatchesLocalDeviceForCurrentDevice)
  {

    LOBYTE(_cloudDeviceMatchesLocalDeviceForCurrentDevice) = [(WBSCloudExtensionStateManager *)self _cloudExtensionStatesMatchLocalExtensionStatesForCurrentDevice];
  }

  return _cloudDeviceMatchesLocalDeviceForCurrentDevice;
}

- (void)_extensionSyncEnabledStateDidChangeDistributedNotificationHandler:(id)handler
{
  v4 = MEMORY[0x1E695E000];
  handlerCopy = handler;
  safari_browserDefaults = [v4 safari_browserDefaults];
  self->_extensionSyncEnabled = [safari_browserDefaults safari_BOOLForKey:*MEMORY[0x1E69C9128] defaultValue:1];

  [(WBSCloudExtensionStateManager *)self _updateCloudExtensionStatesFromSafariBookmarksSyncAgent:handlerCopy];
}

- (id)_defaultWebExtensionsController
{
  stateProviders = self->_stateProviders;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__WBSCloudExtensionStateManager__defaultWebExtensionsController__block_invoke;
  v5[3] = &unk_1E8283B98;
  v5[4] = self;
  v3 = [(NSMutableArray *)stateProviders safari_firstObjectPassingTest:v5];

  return v3;
}

BOOL __64__WBSCloudExtensionStateManager__defaultWebExtensionsController__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 profileServerIDForStateManager:*(a1 + 32)];
    v5 = [WBSWebExtensionUtilities isProfileServerIDForDefaultProfile:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_managedExtensionStateDidChange:(id)change
{
  mEMORY[0x1E69C88C8] = [MEMORY[0x1E69C88C8] sharedController];
  hasAnyExtensionManagement = [mEMORY[0x1E69C88C8] hasAnyExtensionManagement];

  if (hasAnyExtensionManagement)
  {

    [(WBSCloudExtensionStateManager *)self setExtensionSyncEnabled:0];
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65__WBSCloudExtensionStateManager__managedExtensionStateDidChange___block_invoke;
    v6[3] = &unk_1E8283970;
    v6[4] = self;
    [(WBSCloudExtensionStateManager *)self _determineExtensionSyncAvailabilityIgnoringExtensionSyncEnabled:1 completionHandler:v6];
  }
}

id *__65__WBSCloudExtensionStateManager__managedExtensionStateDidChange___block_invoke(id *result, int a2)
{
  if (a2)
  {
    return [result[4] _updateCloudExtensionStatesFromSafariBookmarksSyncAgent:0];
  }

  return result;
}

+ (BOOL)test_determineEnabledStateFromCloudExtensionState:(id)state forProfileServerID:(id)d
{
  stateCopy = state;
  dCopy = d;
  if ([MEMORY[0x1E69C8880] isInternalInstall])
  {
    v8 = [self _determineEnabledStateFromCloudExtensionState:stateCopy forProfileServerID:dCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)test_determineNewTabPageFromCloudDeviceState:(id)state
{
  stateCopy = state;
  if ([MEMORY[0x1E69C8880] isInternalInstall])
  {
    v5 = [self _determineNewTabPageFromCloudDeviceState:stateCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)test_uuidStringsOfInactiveCloudDevices:(id)devices currentDeviceUUIDString:(id)string
{
  devicesCopy = devices;
  stringCopy = string;
  if ([MEMORY[0x1E69C8880] isInternalInstall])
  {
    v8 = [self _uuidStringsOfInactiveCloudDevices:devicesCopy currentDeviceUUIDString:stringCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)test_removeDeviceWithUUIDString:(id)string fromCloudDevices:(id)devices
{
  stringCopy = string;
  devicesCopy = devices;
  if ([MEMORY[0x1E69C8880] isInternalInstall])
  {
    v8 = [self _removeDeviceWithUUIDString:stringCopy fromCloudDevices:devicesCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)test_removeStatesForDeviceWithUUIDString:(id)string fromCloudExtensionStates:(id)states
{
  stringCopy = string;
  statesCopy = states;
  if ([MEMORY[0x1E69C8880] isInternalInstall])
  {
    v8 = [self _removeStatesForDeviceWithUUIDString:stringCopy fromCloudExtensionStates:statesCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)test_cloudExtensionStatesDictionaryForDeviceWithUUIDString:(id)string fromCloudExtensionStates:(id)states
{
  stringCopy = string;
  statesCopy = states;
  if ([MEMORY[0x1E69C8880] isInternalInstall])
  {
    v8 = [self _cloudExtensionStatesDictionaryForDeviceWithUUIDString:stringCopy fromCloudExtensionStates:statesCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __61__WBSCloudExtensionStateManager_localExtensionStateDidChange__block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_3() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1C6968000, v4, v5, "Saving cloud extension states failed with error %{public}@", v6, v7, v8, v9);
}

void __65__WBSCloudExtensionStateManager__deleteCurrentDeviceFromCloudKit__block_invoke_58_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_3() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1C6968000, v4, v5, "Deleting current device failed with error %{public}@", v6, v7, v8, v9);
}

void __89__WBSCloudExtensionStateManager__updateCloudExtensionStatesFromSafariBookmarksSyncAgent___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_3() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1C6968000, v5, v6, "Fetching cloud extension states failed with error %{public}@", v7, v8, v9, v10);
}

void __72__WBSCloudExtensionStateManager__ensureCurrentDeviceIsSavedPeriodically__block_invoke_3_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_3() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1C6968000, v4, v5, "Periodic save of current device to CloudKit failed with error %{public}@", v6, v7, v8, v9);
}

void __88__WBSCloudExtensionStateManager__pruneInactiveDevicesFromCloudKitWithCompletionHandler___block_invoke_80_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_3() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1C6968000, v4, v5, "Deleting inactive extension devices failed with error %{public}@", v6, v7, v8, v9);
}

@end