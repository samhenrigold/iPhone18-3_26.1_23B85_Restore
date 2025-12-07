@interface XBApplicationController
- (XBApplicationController)initWithMainDisplayConfiguration:(id)configuration applicationProvider:(id)provider launchRequestProvider:(id)requestProvider configureVolumeMaintenance:(BOOL)maintenance;
- (id)_launchRequestsForApplication:(id)application withCompatibilityInfo:(id)info;
- (id)findRecentlyUsedOfApplications:(id)applications;
- (void)_captureOrUpdateLaunchImagesForApplications:(id)applications firstImageIsReady:(id)ready createCaptureInfo:(BOOL)info completionWithCaptureInfo:(id)captureInfo;
- (void)_deleteLegacyCachesSnapshotPathsIfNeeded;
- (void)_removeAllGeneratedLaunchImagesAndSnapshots;
- (void)_removeLaunchImagesMatchingPredicate:(id)predicate forApplications:(id)applications forgettingApps:(BOOL)apps;
- (void)captureOrUpdateLaunchImagesForApplications:(id)applications firstImageIsReady:(id)ready completion:(id)completion;
- (void)dealloc;
- (void)deleteAllSnapshotsIfScreenSizeChanged;
- (void)performPostMigrationLaunchImageGeneration;
- (void)removeCachedLaunchImagesForApplications:(id)applications forgettingApps:(BOOL)apps;
@end

@implementation XBApplicationController

void __54__XBApplicationController__updateStatusBarOrientation__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 statusBarOrientation];

  *(*(a1 + 32) + 8) = v3;
}

- (XBApplicationController)initWithMainDisplayConfiguration:(id)configuration applicationProvider:(id)provider launchRequestProvider:(id)requestProvider configureVolumeMaintenance:(BOOL)maintenance
{
  maintenanceCopy = maintenance;
  configurationCopy = configuration;
  providerCopy = provider;
  requestProviderCopy = requestProvider;
  v19.receiver = self;
  v19.super_class = XBApplicationController;
  v15 = [(XBApplicationController *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_mainDisplayConfiguration, configuration);
    if (![(FBSDisplayConfiguration *)v16->_mainDisplayConfiguration isMainDisplay]|| [(FBSDisplayConfiguration *)v16->_mainDisplayConfiguration isExternal])
    {
      [XBApplicationController initWithMainDisplayConfiguration:a2 applicationProvider:v16 launchRequestProvider:? configureVolumeMaintenance:?];
    }

    objc_storeStrong(&v16->_applicationProvider, provider);
    objc_storeStrong(&v16->_launchRequestProvider, requestProvider);
    v16->_statusBarOrientation = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v16 selector:sel__updateStatusBarOrientation name:*MEMORY[0x277D76658] object:0];

    [(XBApplicationController *)v16 _updateStatusBarOrientation];
    [(XBApplicationController *)v16 _deleteLegacyCachesSnapshotPathsIfNeeded];
    if (maintenanceCopy)
    {
      [XBVolumeMaintainer configure:providerCopy];
    }
  }

  return v16;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = XBApplicationController;
  [(XBApplicationController *)&v4 dealloc];
}

- (void)deleteAllSnapshotsIfScreenSizeChanged
{
  v14 = *MEMORY[0x277D85DE8];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults stringForKey:@"XBRecentScreenSize"];
  [(FBSDisplayConfiguration *)self->_mainDisplayConfiguration bounds];
  v15.width = v5;
  v15.height = v6;
  v7 = NSStringFromCGSize(v15);
  v8 = [v4 isEqualToString:v7];
  if ((v8 & 1) == 0)
  {
    if (v4)
    {
      v9 = XBLogFileManifest(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543618;
        v11 = v4;
        v12 = 2114;
        v13 = v7;
        _os_log_impl(&dword_26B5EF000, v9, OS_LOG_TYPE_DEFAULT, "Screen size changed from %{public}@ to %{public}@, purging all generated launch image and snapshots.", &v10, 0x16u);
      }

      [(XBApplicationController *)self _removeAllGeneratedLaunchImagesAndSnapshots];
    }

    [standardUserDefaults setObject:v7 forKey:@"XBRecentScreenSize"];
    [standardUserDefaults synchronize];
  }
}

- (void)performPostMigrationLaunchImageGeneration
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if ([standardUserDefaults BOOLForKey:@"XBCaptureLaunchImagesPostMigration"])
  {
    v4 = XBLogFileManifest([standardUserDefaults setObject:MEMORY[0x277CBEC28] forKey:@"XBCaptureLaunchImagesPostMigration"]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26B5EF000, v4, OS_LOG_TYPE_DEFAULT, "performPostMigrationLaunchImageGeneration", buf, 2u);
    }

    SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
    splashBoardSystemApplications = [(XBApplicationProviding *)self->_applicationProvider splashBoardSystemApplications];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__XBApplicationController_performPostMigrationLaunchImageGeneration__block_invoke;
    block[3] = &unk_279CF9108;
    v10 = splashBoardSystemApplications;
    v11 = SerialWithQoS;
    selfCopy = self;
    v7 = SerialWithQoS;
    v8 = splashBoardSystemApplications;
    dispatch_async(v7, block);
  }
}

void __68__XBApplicationController_performPostMigrationLaunchImageGeneration__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = +[XBApplicationSnapshotPredicate predicate];
  [v2 setContentTypeMask:6];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v16 = a1;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [v8 tags];
        v10 = [v9 containsObject:@"hidden"];

        if ((v10 & 1) == 0)
        {
          v11 = [[XBApplicationSnapshotManifest alloc] initWithApplicationInfo:v8];
          v12 = [(XBApplicationSnapshotManifest *)v11 defaultGroupIdentifier];
          v13 = [(XBApplicationSnapshotManifest *)v11 snapshotsForGroupID:v12 matchingPredicate:v2];

          if (![v13 count])
          {
            v15 = *(v16 + 40);
            v14 = *(v16 + 48);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __68__XBApplicationController_performPostMigrationLaunchImageGeneration__block_invoke_2;
            block[3] = &unk_279CF9108;
            block[4] = v8;
            block[5] = v14;
            v18 = v11;
            dispatch_async(v15, block);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }
}

void __68__XBApplicationController_performPostMigrationLaunchImageGeneration__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = XBLogFileManifest(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) bundleIdentifier];
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_26B5EF000, v2, OS_LOG_TYPE_DEFAULT, "Post-migration launch image capture for %{public}@", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v8 = *(a1 + 32);
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__XBApplicationController_performPostMigrationLaunchImageGeneration__block_invoke_82;
  v6[3] = &unk_279CF9280;
  v7 = *(a1 + 48);
  [v4 captureOrUpdateLaunchImagesForApplications:v5 firstImageIsReady:0 completion:v6];
}

- (void)_deleteLegacyCachesSnapshotPathsIfNeeded
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = XBLegacyCachesSnapshotPathForNonSandboxedSystemApplicationsExists();
  v4 = v3;
  allInstalledApplications = XBLogFileManifest(v3);
  v6 = os_log_type_enabled(allInstalledApplications, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_26B5EF000, allInstalledApplications, OS_LOG_TYPE_DEFAULT, "Start purging legacy snapshots caches...", buf, 2u);
    }

    allInstalledApplications = [(XBApplicationProviding *)self->_applicationProvider allInstalledApplications];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = [allInstalledApplications countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v25;
      *&v8 = 138543362;
      v23 = v8;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(allInstalledApplications);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          dataContainerURL = [v12 dataContainerURL];
          if (dataContainerURL)
          {
            v14 = XBDeleteLegacyCachesSnapshotPathForSandboxedApplicationIfNeeded(v12);
            if (!v14)
            {
              goto LABEL_18;
            }

            v15 = XBLogFileManifest(v14);
            if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_17;
            }

            bundleIdentifier = [v12 bundleIdentifier];
            *buf = v23;
            v29 = bundleIdentifier;
            v17 = v15;
            v18 = "Purging legacy caches of sandboxed app snapshots for: %{public}@";
            goto LABEL_16;
          }

          v19 = XBDeleteLegacyCachesSnapshotPathForNonSandboxedApplicationIfNeeded(v12);
          if (!v19)
          {
            goto LABEL_18;
          }

          v15 = XBLogFileManifest(v19);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            bundleIdentifier = [v12 bundleIdentifier];
            *buf = v23;
            v29 = bundleIdentifier;
            v17 = v15;
            v18 = "Purging legacy caches of snapshots for non-sandboxed system app: %{public}@";
LABEL_16:
            _os_log_impl(&dword_26B5EF000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
          }

LABEL_17:

          v20 = [[XBApplicationSnapshotManifest alloc] initWithApplicationInfo:v12];
          [(XBApplicationSnapshotManifest *)v20 deleteAllSnapshots];

LABEL_18:
        }

        v9 = [allInstalledApplications countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v9);
    }

    XBDeleteLegacyCachesSnapshotPathForNonSandboxedApplicationsIfNeeded();
    v22 = XBLogFileManifest(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26B5EF000, v22, OS_LOG_TYPE_DEFAULT, "Finished purging", buf, 2u);
    }
  }

  else if (v6)
  {
    *buf = 0;
    _os_log_impl(&dword_26B5EF000, allInstalledApplications, OS_LOG_TYPE_DEFAULT, "No legacy snapshots caches to purge", buf, 2u);
  }
}

- (id)findRecentlyUsedOfApplications:(id)applications
{
  applicationsCopy = applications;
  v4 = [applicationsCopy indexesOfObjectsPassingTest:&__block_literal_global_2];
  v5 = [applicationsCopy objectsAtIndexes:v4];

  return v5;
}

uint64_t __58__XBApplicationController_findRecentlyUsedOfApplications___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 tags];
  v4 = [v3 containsObject:@"hidden"];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [[XBApplicationSnapshotManifest alloc] initWithApplicationInfo:v2];
    v5 = [(XBApplicationSnapshotManifest *)v6 snapshotsConsideredUnpurgableByAPFS];
  }

  return v5;
}

- (void)removeCachedLaunchImagesForApplications:(id)applications forgettingApps:(BOOL)apps
{
  applicationsCopy = applications;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __82__XBApplicationController_removeCachedLaunchImagesForApplications_forgettingApps___block_invoke;
  activity_block[3] = &unk_279CF92C8;
  activity_block[4] = self;
  v9 = applicationsCopy;
  appsCopy = apps;
  v7 = applicationsCopy;
  _os_activity_initiate(&dword_26B5EF000, "XBInvalidate", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, activity_block);
}

void __82__XBApplicationController_removeCachedLaunchImagesForApplications_forgettingApps___block_invoke(uint64_t a1)
{
  v2 = +[XBApplicationSnapshotPredicate predicate];
  [v2 setContentTypeMask:2];
  [*(a1 + 32) _removeLaunchImagesMatchingPredicate:v2 forApplications:*(a1 + 40) forgettingApps:*(a1 + 48)];
}

- (void)captureOrUpdateLaunchImagesForApplications:(id)applications firstImageIsReady:(id)ready completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __99__XBApplicationController_captureOrUpdateLaunchImagesForApplications_firstImageIsReady_completion___block_invoke;
  v10[3] = &unk_279CF92F0;
  v11 = completionCopy;
  v9 = completionCopy;
  [(XBApplicationController *)self _captureOrUpdateLaunchImagesForApplications:applications firstImageIsReady:ready createCaptureInfo:0 completionWithCaptureInfo:v10];
}

uint64_t __99__XBApplicationController_captureOrUpdateLaunchImagesForApplications_firstImageIsReady_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_captureOrUpdateLaunchImagesForApplications:(id)applications firstImageIsReady:(id)ready createCaptureInfo:(BOOL)info completionWithCaptureInfo:(id)captureInfo
{
  applicationsCopy = applications;
  readyCopy = ready;
  captureInfoCopy = captureInfo;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __133__XBApplicationController__captureOrUpdateLaunchImagesForApplications_firstImageIsReady_createCaptureInfo_completionWithCaptureInfo___block_invoke;
  activity_block[3] = &unk_279CF9368;
  infoCopy = info;
  v19 = readyCopy;
  v20 = captureInfoCopy;
  v17 = applicationsCopy;
  selfCopy = self;
  v13 = captureInfoCopy;
  v14 = readyCopy;
  v15 = applicationsCopy;
  _os_activity_initiate(&dword_26B5EF000, "XBCapture", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, activity_block);
}

void __133__XBApplicationController__captureOrUpdateLaunchImagesForApplications_firstImageIsReady_createCaptureInfo_completionWithCaptureInfo___block_invoke(uint64_t a1)
{
  v67 = *MEMORY[0x277D85DE8];
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy_;
  v60 = __Block_byref_object_dispose_;
  v61 = 0;
  if (*(a1 + 64) == 1)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v3 = v57[5];
    v57[5] = v2;
  }

  if (*(a1 + 48))
  {
    v4 = [MEMORY[0x277CF0BA0] sentinelWithQueue:0 signalCount:1 completion:?];
  }

  else
  {
    v4 = 0;
  }

  v5 = MEMORY[0x277CF0BA0];
  v6 = [*(a1 + 32) count];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __133__XBApplicationController__captureOrUpdateLaunchImagesForApplications_firstImageIsReady_createCaptureInfo_completionWithCaptureInfo___block_invoke_88;
  v52[3] = &unk_279CF9318;
  v35 = v4;
  v53 = v35;
  v54 = *(a1 + 56);
  v55 = &v56;
  v7 = [v5 sentinelWithQueue:0 signalCount:v6 + 1 completion:v52];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v37 = a1;
  obj = *(a1 + 32);
  v8 = [obj countByEnumeratingWithState:&v48 objects:v66 count:16];
  v40 = v7;
  if (v8)
  {
    v39 = *v49;
    *&v9 = 138543362;
    v34 = v9;
    do
    {
      v10 = 0;
      do
      {
        if (*v49 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v48 + 1) + 8 * v10);
        v12 = [v11 bundleIdentifier];
        v13 = [v11 bundleURL];
        v14 = [v13 path];

        v47 = 0;
        if (v14)
        {
          v16 = [MEMORY[0x277CCAA00] defaultManager];
          if ([v16 fileExistsAtPath:v14 isDirectory:&v47])
          {
            v17 = v47;

            if (v17)
            {
              v18 = +[XBApplicationDataStore sharedInstance];
              [v18 beginAccessBlockForBundleIdentifier:v12];
              [v18 _clearCompatibilityInfoForBundleIdentifier:v12];
              v19 = [XBApplicationLaunchCompatibilityInfo compatibilityInfoForAppInfo:v11];
              v20 = [v19 allowsSavingLaunchImages];
              if (v20)
              {
                v21 = [[XBApplicationSnapshotManifest alloc] initWithApplicationInfo:v11];
                v22 = [(XBApplicationSnapshotManifest *)v21 defaultGroupIdentifier];
                [v19 setDefaultGroupIdentifier:v22];

                v23 = *(v37 + 40);
                v24 = v23[3];
                v25 = [v23 _launchRequestsForApplication:v11 withCompatibilityInfo:v19];
                v26 = [v24 launchRequestsForApplication:v11 withCompatibilityInfo:v19 defaultLaunchRequests:v25];

                if (v21 && (v27 = [v26 count]) != 0)
                {
                  v28 = +[XBLaunchImageProvider sharedInstance];
                  v36 = *(v37 + 64);
                  v45[0] = MEMORY[0x277D85DD0];
                  v45[1] = 3221225472;
                  v45[2] = __133__XBApplicationController__captureOrUpdateLaunchImagesForApplications_firstImageIsReady_createCaptureInfo_completionWithCaptureInfo___block_invoke_2;
                  v45[3] = &unk_279CF9280;
                  v46 = v35;
                  v41[0] = MEMORY[0x277D85DD0];
                  v41[1] = 3221225472;
                  v41[2] = __133__XBApplicationController__captureOrUpdateLaunchImagesForApplications_firstImageIsReady_createCaptureInfo_completionWithCaptureInfo___block_invoke_3;
                  v41[3] = &unk_279CF9340;
                  v44 = &v56;
                  v41[4] = v11;
                  v29 = v21;
                  v42 = v29;
                  v43 = v40;
                  [v28 captureLaunchImageForManifest:v29 withCompatibilityInfo:v19 launchRequests:v26 createCaptureInfo:v36 firstImageIsReady:v45 withCompletionHandler:v41];
                }

                else
                {
                  v32 = XBLogCapture(v27);
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                  {
                    *buf = v34;
                    v63 = v12;
                    _os_log_error_impl(&dword_26B5EF000, v32, OS_LOG_TYPE_ERROR, "Failed to capture launch image snapshot due to missing manifest or launchRequests for %{public}@", buf, 0xCu);
                  }

                  [v40 signal];
                }
              }

              else
              {
                v31 = XBLogCapture(v20);
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  *buf = v34;
                  v63 = v12;
                  _os_log_error_impl(&dword_26B5EF000, v31, OS_LOG_TYPE_ERROR, "Unable to generate launch image for %{public}@ because the app has no valid launch interfaces.", buf, 0xCu);
                }

                [v40 signal];
              }

              [v18 endAccessBlockForBundleIdentifier:v12];

              goto LABEL_22;
            }
          }

          else
          {
          }
        }

        v30 = XBLogCapture(v15);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v63 = v12;
          v64 = 2114;
          v65 = v14;
          _os_log_error_impl(&dword_26B5EF000, v30, OS_LOG_TYPE_ERROR, "Unable to generate launch image for %{public}@ because the provided bundle path does not exist: %{public}@", buf, 0x16u);
        }

        [v40 signal];
LABEL_22:

        ++v10;
      }

      while (v8 != v10);
      v33 = [obj countByEnumeratingWithState:&v48 objects:v66 count:16];
      v8 = v33;
    }

    while (v33);
  }

  [v40 signal];
  _Block_object_dispose(&v56, 8);
}

uint64_t __133__XBApplicationController__captureOrUpdateLaunchImagesForApplications_firstImageIsReady_createCaptureInfo_completionWithCaptureInfo___block_invoke_88(uint64_t a1)
{
  [*(a1 + 32) signal];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __133__XBApplicationController__captureOrUpdateLaunchImagesForApplications_firstImageIsReady_createCaptureInfo_completionWithCaptureInfo___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 56) + 8) + 40);
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 bundleIdentifier];
  [v3 setObject:v5 forKeyedSubscript:v6];

  v7 = [*(a1 + 40) manifestImpl];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __133__XBApplicationController__captureOrUpdateLaunchImagesForApplications_firstImageIsReady_createCaptureInfo_completionWithCaptureInfo___block_invoke_4;
  v8[3] = &unk_279CF9280;
  v9 = *(a1 + 48);
  [v7 _synchronizeDataStoreWithCompletion:v8];
}

- (id)_launchRequestsForApplication:(id)application withCompatibilityInfo:(id)info
{
  applicationCopy = application;
  infoCopy = info;
  mEMORY[0x277D75CF0] = [MEMORY[0x277D75CF0] sharedInstance];
  currentStyle = [mEMORY[0x277D75CF0] currentStyle];

  v36 = [applicationCopy xb_userInterfaceStyleForRequestedUserInterfaceStyle:currentStyle];
  statusBarOrientation = self->_statusBarOrientation;
  bundleIdentifier = [applicationCopy bundleIdentifier];
  array = [MEMORY[0x277CBEB18] array];
  v13 = self->_mainDisplayConfiguration;
  if (!v13)
  {
    [XBApplicationController _launchRequestsForApplication:a2 withCompatibilityInfo:self];
  }

  [(FBSDisplayConfiguration *)v13 bounds];
  v15 = v14;
  v17 = v16;
  v33 = bundleIdentifier;
  v34 = infoCopy;
  if ([(FBSDisplayConfiguration *)v13 isMainDisplay])
  {
    defaultGroupIdentifier = [infoCopy defaultGroupIdentifier];
  }

  else
  {
    defaultGroupIdentifier = 0;
  }

  v18 = 0;
  v19 = 0;
  do
  {
    v20 = _launchRequestsForApplication_withCompatibilityInfo__orientations[v18];
    v21 = XBInterfaceOrientationMaskForInterfaceOrientationPair(v20);
    if ([applicationCopy supportsInterfaceOrientation:v20])
    {
      v22 = (v21 & v19) == 0;
    }

    else
    {
      v22 = 0;
    }

    if (v22)
    {
      v35 = v19;
      v23 = v13;
      v24 = [applicationCopy statusBarHiddenForInterfaceOrientation:v20 onDisplay:v13];
      v25 = 0;
      v26 = v24 ^ 1u;
      v27 = 1;
      do
      {
        v28 = v27;
        v29 = _launchRequestsForApplication_withCompatibilityInfo__allUserInterfaceStyles[v25];
        if ([applicationCopy xb_supportsUserInterfaceStyle:{v29, v33, v34}])
        {
          v30 = objc_alloc_init(XBLaunchStateRequest);
          [(XBLaunchStateRequest *)v30 setDisplayConfiguration:v23];
          [(XBLaunchStateRequest *)v30 setGroupID:defaultGroupIdentifier];
          [(XBLaunchStateRequest *)v30 setReferenceSize:v15, v17];
          [(XBLaunchStateRequest *)v30 setStatusBarState:v26];
          [(XBLaunchStateRequest *)v30 setInterfaceOrientation:v20];
          [(XBLaunchStateRequest *)v30 setUserInterfaceStyle:v29];
          if (v20 == statusBarOrientation && v29 == v36)
          {
            [array insertObject:v30 atIndex:0];
          }

          else
          {
            [array addObject:v30];
          }
        }

        v27 = 0;
        v25 = 1;
      }

      while ((v28 & 1) != 0);
      v19 = XBInterfaceOrientationMaskForInterfaceOrientation(v20) | v35;
      v13 = v23;
    }

    ++v18;
  }

  while (v18 != 4);
  if (![array count])
  {
    v31 = XBLogCapture(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [XBApplicationController _launchRequestsForApplication:v33 withCompatibilityInfo:v31];
    }
  }

  return array;
}

- (void)_removeAllGeneratedLaunchImagesAndSnapshots
{
  v4 = +[XBApplicationSnapshotPredicate predicate];
  [v4 setContentTypeMask:3];
  allInstalledApplications = [(XBApplicationProviding *)self->_applicationProvider allInstalledApplications];
  [(XBApplicationController *)self _removeLaunchImagesMatchingPredicate:v4 forApplications:allInstalledApplications forgettingApps:0];
}

- (void)_removeLaunchImagesMatchingPredicate:(id)predicate forApplications:(id)applications forgettingApps:(BOOL)apps
{
  appsCopy = apps;
  v18 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  applicationsCopy = applications;
  v9 = XBLogFileManifest(applicationsCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [predicateCopy descriptionWithMultilinePrefix:@"\t"];
    *buf = 67109378;
    v15 = appsCopy;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_26B5EF000, v9, OS_LOG_TYPE_DEFAULT, "_removeLaunchImagesMatchingPredicate:forApplications:forgettingApps: called\nforgettingApps: %d\npredicate:\n%{public}@", buf, 0x12u);
  }

  v13 = predicateCopy;
  v11 = predicateCopy;
  v12 = applicationsCopy;
  BSDispatchMain();
}

void __95__XBApplicationController__removeLaunchImagesMatchingPredicate_forApplications_forgettingApps___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = +[XBApplicationDataStore sharedInstance];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [XBApplicationSnapshotManifest alloc];
        v10 = [(XBApplicationSnapshotManifest *)v9 initWithApplicationInfo:v8, v12];
        [(XBApplicationSnapshotManifest *)v10 endTrackingImageDeletions];
        [(XBApplicationSnapshotManifest *)v10 deleteSnapshotsMatchingPredicate:*(a1 + 40)];
        v11 = [v8 bundleIdentifier];
        if (*(a1 + 48) == 1)
        {
          [v2 _clearCompatibilityInfoForBundleIdentifier:v11];
        }

        else
        {
          [v2 _removeBundleIdentifierFromLaunchInterfaceDenyList:v11];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)initWithMainDisplayConfiguration:(uint64_t)a1 applicationProvider:(uint64_t)a2 launchRequestProvider:configureVolumeMaintenance:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"XBApplicationController.m" lineNumber:120 description:@"provided an invalid mainDisplay configuration"];
}

- (void)_launchRequestsForApplication:(uint64_t)a1 withCompatibilityInfo:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"XBApplicationController.m" lineNumber:377 description:@"no displayConfiguration found"];
}

- (void)_launchRequestsForApplication:(uint64_t)a1 withCompatibilityInfo:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_26B5EF000, a2, OS_LOG_TYPE_ERROR, "We can't generate launch image requests for: %{public}@ since it doesn't support any valid orientations.", &v2, 0xCu);
}

@end