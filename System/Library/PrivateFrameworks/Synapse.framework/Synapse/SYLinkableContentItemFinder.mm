@interface SYLinkableContentItemFinder
- (BOOL)_shouldIncludeAsLinkableUserActivity:(id)activity bundleID:(id)d foregroundBundleIDs:(id)ds excludedActivities:(id)activities;
- (SYLinkableContentItemFinder)init;
- (SYLinkableContentItemFinderDelegate)delegate;
- (void)_activityFetchingFinishedWithActivities:(id)activities appBundleIDs:(id)ds foregroundBundleIDs:(id)iDs completion:(id)completion;
- (void)_fetchActiveLinkableUserActivitiesExcluding:(id)excluding completion:(id)completion;
- (void)_updateForegroundAppsFromDisplayLayout:(id)layout;
- (void)dealloc;
- (void)fetchLinkableContentItemsExcludingActivities:(id)activities completion:(id)completion;
- (void)handleRemoteCurrentActivityDidChange;
@end

@implementation SYLinkableContentItemFinder

- (SYLinkableContentItemFinder)init
{
  v18.receiver = self;
  v18.super_class = SYLinkableContentItemFinder;
  v2 = [(SYLinkableContentItemFinder *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.synapse.linkableItemFinder", v3);
    itemFinderQueue = v2->__itemFinderQueue;
    v2->__itemFinderQueue = v4;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _SYHandleRemoteCurrentActivityChange, @"SYRemoteCurrentActivityDidChange", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    objc_initWeak(&location, v2);
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v7 = getFBSDisplayLayoutMonitorConfigurationClass_softClass;
    v27 = getFBSDisplayLayoutMonitorConfigurationClass_softClass;
    if (!getFBSDisplayLayoutMonitorConfigurationClass_softClass)
    {
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __getFBSDisplayLayoutMonitorConfigurationClass_block_invoke;
      v22 = &unk_27856B3C8;
      v23 = &v24;
      __getFBSDisplayLayoutMonitorConfigurationClass_block_invoke(&v19);
      v7 = v25[3];
    }

    v8 = v7;
    _Block_object_dispose(&v24, 8);
    configurationForDefaultMainDisplayMonitor = [v7 configurationForDefaultMainDisplayMonitor];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __35__SYLinkableContentItemFinder_init__block_invoke;
    v15[3] = &unk_27856BA90;
    objc_copyWeak(&v16, &location);
    [configurationForDefaultMainDisplayMonitor setTransitionHandler:v15];
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v10 = getFBSDisplayLayoutMonitorClass_softClass;
    v27 = getFBSDisplayLayoutMonitorClass_softClass;
    if (!getFBSDisplayLayoutMonitorClass_softClass)
    {
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __getFBSDisplayLayoutMonitorClass_block_invoke;
      v22 = &unk_27856B3C8;
      v23 = &v24;
      __getFBSDisplayLayoutMonitorClass_block_invoke(&v19);
      v10 = v25[3];
    }

    v11 = v10;
    _Block_object_dispose(&v24, 8);
    v12 = [v10 monitorWithConfiguration:configurationForDefaultMainDisplayMonitor];
    displayLayoutMonitor = v2->__displayLayoutMonitor;
    v2->__displayLayoutMonitor = v12;

    v2->__foregroundAppLoadRetriesRemaining = 4;
    objc_destroyWeak(&v16);

    objc_destroyWeak(&location);
  }

  return v2;
}

void __35__SYLinkableContentItemFinder_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (v4 && WeakRetained)
  {
    v7 = [WeakRetained _itemFinderQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __35__SYLinkableContentItemFinder_init__block_invoke_2;
    v8[3] = &unk_27856B5C8;
    v9 = v6;
    v10 = v4;
    dispatch_async(v7, v8);
  }
}

- (void)dealloc
{
  v3 = os_log_create("com.apple.synapse", "LinkableItemFinder");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_225901000, v3, OS_LOG_TYPE_INFO, "Deallocating", buf, 2u);
  }

  _displayLayoutMonitor = [(SYLinkableContentItemFinder *)self _displayLayoutMonitor];
  [_displayLayoutMonitor invalidate];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SYRemoteCurrentActivityDidChange", 0);
  v6.receiver = self;
  v6.super_class = SYLinkableContentItemFinder;
  [(SYLinkableContentItemFinder *)&v6 dealloc];
}

- (void)fetchLinkableContentItemsExcludingActivities:(id)activities completion:(id)completion
{
  activitiesCopy = activities;
  completionCopy = completion;
  v9 = os_log_create("com.apple.synapse", "LinkableItemFinder");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_225901000, v9, OS_LOG_TYPE_DEFAULT, "Request to fetch linkable items started", buf, 2u);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v11 = v10;
  _itemFinderQueue = [(SYLinkableContentItemFinder *)self _itemFinderQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__SYLinkableContentItemFinder_fetchLinkableContentItemsExcludingActivities_completion___block_invoke;
  block[3] = &unk_27856BB08;
  block[4] = self;
  v16 = activitiesCopy;
  v18 = v11;
  v19 = a2;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = activitiesCopy;
  dispatch_async(_itemFinderQueue, block);
}

void __87__SYLinkableContentItemFinder_fetchLinkableContentItemsExcludingActivities_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __87__SYLinkableContentItemFinder_fetchLinkableContentItemsExcludingActivities_completion___block_invoke_2;
  v3[3] = &unk_27856BAE0;
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v3[4] = v1;
  v4 = *(a1 + 48);
  [v1 _fetchActiveLinkableUserActivitiesExcluding:v2 completion:v3];
}

void __87__SYLinkableContentItemFinder_fetchLinkableContentItemsExcludingActivities_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v55 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v37 = a3;
  v33 = a4;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v9 = v8;
  v34 = a1;
  v10 = *(a1 + 48);
  v11 = os_log_create("com.apple.synapse", "LinkableItemFinder");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = [v7 count];
    *&buf[12] = 2048;
    *&buf[14] = v9 - v10;
    _os_log_impl(&dword_225901000, v11, OS_LOG_TYPE_DEFAULT, "Request to fetch linkable items finished. Found %ld item(s). Duration %0.2fs.", buf, 0x16u);
  }

  v12 = [v7 count];
  if (v12 != [v37 count])
  {
    __87__SYLinkableContentItemFinder_fetchLinkableContentItemsExcludingActivities_completion___block_invoke_2_cold_1(a1);
  }

  v36 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v7;
  v13 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v13)
  {
    v14 = 0;
    v15 = *v44;
    do
    {
      v16 = 0;
      do
      {
        if (*v44 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v43 + 1) + 8 * v16);
        v18 = [v37 objectAtIndexedSubscript:v14];
        if (!v18)
        {
          goto LABEL_17;
        }

        v47 = 0;
        v48 = &v47;
        v49 = 0x2050000000;
        v19 = getAPApplicationClass_softClass;
        v50 = getAPApplicationClass_softClass;
        if (!getAPApplicationClass_softClass)
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __getAPApplicationClass_block_invoke;
          v53 = &unk_27856B3C8;
          v54 = &v47;
          __getAPApplicationClass_block_invoke(buf);
          v19 = v48[3];
        }

        v20 = v19;
        _Block_object_dispose(&v47, 8);
        v21 = [v19 applicationWithBundleIdentifier:v18];
        v22 = [v21 isLocked];

        if (v22)
        {
          v23 = os_log_create("com.apple.synapse", "LinkableItemFinder");
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v18;
            _os_log_impl(&dword_225901000, v23, OS_LOG_TYPE_DEFAULT, "Skip app %@ - app protection enabled", buf, 0xCu);
          }

          v24 = v18;
        }

        else
        {
LABEL_17:
          v25 = objc_alloc(MEMORY[0x277CC1E70]);
          v42 = 0;
          v26 = [v25 initWithBundleIdentifier:v18 allowPlaceholder:1 error:&v42];
          v23 = v42;
          if (v26)
          {
            v24 = [v26 localizedName];
            v27 = v18;
          }

          else
          {
            v27 = os_log_create("com.apple.synapse", "LinkableItemFinder");
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *&buf[4] = v18;
              *&buf[12] = 2112;
              *&buf[14] = v23;
              _os_log_error_impl(&dword_225901000, v27, OS_LOG_TYPE_ERROR, "Error loading app record for %@: %@", buf, 0x16u);
            }

            v24 = v18;
          }

          v28 = [[SYContentItem alloc] initWithUserActivity:v17 sourceAppID:v18 sourceAppName:v24 identifier:0];
          [v36 addObject:v28];

          ++v14;
        }

        ++v16;
      }

      while (v13 != v16);
      v13 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v13);
  }

  v29 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__SYLinkableContentItemFinder_fetchLinkableContentItemsExcludingActivities_completion___block_invoke_15;
  block[3] = &unk_27856BAB8;
  v30 = *(v34 + 40);
  v39 = v36;
  v40 = v33;
  v41 = v30;
  v31 = v33;
  v32 = v36;
  dispatch_async(v29, block);
}

- (void)_fetchActiveLinkableUserActivitiesExcluding:(id)excluding completion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  excludingCopy = excluding;
  completionCopy = completion;
  if (!completionCopy)
  {
    [SYLinkableContentItemFinder _fetchActiveLinkableUserActivitiesExcluding:a2 completion:self];
  }

  _currentForegroundAppBundleIDs = [(SYLinkableContentItemFinder *)self _currentForegroundAppBundleIDs];
  if (_currentForegroundAppBundleIDs)
  {
    v10 = os_log_create("com.apple.synapse", "LinkableItemFinder");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = _currentForegroundAppBundleIDs;
      v11 = "Allowing activities from foreground apps only: %@";
      v12 = v10;
      v13 = OS_LOG_TYPE_INFO;
      v14 = 12;
LABEL_6:
      _os_log_impl(&dword_225901000, v12, v13, v11, &buf, v14);
    }
  }

  else
  {
    if ([(SYLinkableContentItemFinder *)self _foregroundAppLoadRetriesRemaining]>= 1)
    {
      v21 = dispatch_time(0, 50000000);
      _itemFinderQueue = [(SYLinkableContentItemFinder *)self _itemFinderQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __86__SYLinkableContentItemFinder__fetchActiveLinkableUserActivitiesExcluding_completion___block_invoke;
      block[3] = &unk_27856B510;
      block[4] = self;
      v29 = excludingCopy;
      v30 = completionCopy;
      v23 = excludingCopy;
      dispatch_after(v21, _itemFinderQueue, block);

      [(SYLinkableContentItemFinder *)self set_foregroundAppLoadRetriesRemaining:[(SYLinkableContentItemFinder *)self _foregroundAppLoadRetriesRemaining]- 1];
      goto LABEL_16;
    }

    v10 = os_log_create("com.apple.synapse", "LinkableItemFinder");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      v11 = "Could not load foreground apps, allowing activities from all.";
      v12 = v10;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 2;
      goto LABEL_6;
    }
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v15 = getUAUserActivityProxyClass_softClass;
  v34 = getUAUserActivityProxyClass_softClass;
  if (!getUAUserActivityProxyClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v36 = __getUAUserActivityProxyClass_block_invoke;
    v37 = &unk_27856B3C8;
    v38 = &v31;
    __getUAUserActivityProxyClass_block_invoke(&buf);
    v15 = v32[3];
  }

  v16 = v15;
  _Block_object_dispose(&v31, 8);
  objc_opt_class();
  v17 = MEMORY[0x277CC1EF0];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __86__SYLinkableContentItemFinder__fetchActiveLinkableUserActivitiesExcluding_completion___block_invoke_24;
  v24[3] = &unk_27856BB58;
  v18 = completionCopy;
  v27 = v18;
  v24[4] = self;
  v25 = _currentForegroundAppBundleIDs;
  v26 = excludingCopy;
  v19 = excludingCopy;
  if (([v17 _currentUserActivityProxiesWithOptions:0 matching:0 completionHandler:v24] & 1) == 0)
  {
    v20 = os_log_create("com.apple.synapse", "LinkableItemFinder");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SYLinkableContentItemFinder _fetchActiveLinkableUserActivitiesExcluding:v20 completion:?];
    }

    (*(v18 + 2))(v18, 0, 0, 0);
  }

LABEL_16:
}

void __86__SYLinkableContentItemFinder__fetchActiveLinkableUserActivitiesExcluding_completion___block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v25 = v6;
  v26 = v5;
  if (!v5 || v6)
  {
    v24 = os_log_create("com.apple.synapse", "LinkableItemFinder");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      __86__SYLinkableContentItemFinder__fetchActiveLinkableUserActivitiesExcluding_completion___block_invoke_24_cold_1(v25, v24);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v41 objects:v48 count:16];
    if (v9)
    {
      v10 = *v42;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v42 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v41 + 1) + 8 * i);
          v13 = [v12 uuid];
          v14 = [v12 bundleIdentifier];
          v15 = v14;
          if (v13)
          {
            v16 = v14 == 0;
          }

          else
          {
            v16 = 1;
          }

          if (v16)
          {
            v17 = os_log_create("com.apple.synapse", "LinkableItemFinder");
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              *&buf[4] = v13;
              *&buf[12] = 2112;
              *&buf[14] = v15;
              _os_log_impl(&dword_225901000, v17, OS_LOG_TYPE_DEFAULT, "Could not load activity %@ from %@. Proxy returned nil.", buf, 0x16u);
            }
          }

          else
          {
            [v28 addObject:v13];
            [v7 setObject:v15 forKeyedSubscript:v13];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v41 objects:v48 count:16];
      }

      while (v9);
    }

    if ([v28 count])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v47 = [v28 count];
      v18 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:*(*&buf[8] + 24)];
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      obj = v28;
      v19 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v19)
      {
        v20 = *v38;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v38 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v37 + 1) + 8 * j);
            v23 = MEMORY[0x277CC1EF0];
            v29[0] = MEMORY[0x277D85DD0];
            v29[1] = 3221225472;
            v29[2] = __86__SYLinkableContentItemFinder__fetchActiveLinkableUserActivitiesExcluding_completion___block_invoke_26;
            v29[3] = &unk_27856BB30;
            v29[4] = *(a1 + 32);
            v30 = v7;
            v31 = v22;
            v32 = *(a1 + 40);
            v33 = *(a1 + 48);
            v34 = v18;
            v36 = buf;
            v35 = *(a1 + 56);
            [v23 _fetchUserActivityWithUUID:v22 completionHandler:v29];
          }

          v19 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
        }

        while (v19);
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }
}

void __86__SYLinkableContentItemFinder__fetchActiveLinkableUserActivitiesExcluding_completion___block_invoke_26(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  if (v5)
  {
    v8 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
    if ([*(a1 + 32) _shouldIncludeAsLinkableUserActivity:v5 bundleID:v8 foregroundBundleIDs:*(a1 + 56) excludedActivities:*(a1 + 64)])
    {
      [*(a1 + 72) setObject:v5 forKeyedSubscript:*(a1 + 48)];
    }
  }

  else
  {
    v8 = os_log_create("com.apple.synapse", "LinkableItemFinder");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __86__SYLinkableContentItemFinder__fetchActiveLinkableUserActivitiesExcluding_completion___block_invoke_26_cold_1(a1, v6, v8);
    }
  }

  if (!--*(*(*(a1 + 88) + 8) + 24))
  {
    [*(a1 + 32) _activityFetchingFinishedWithActivities:*(a1 + 72) appBundleIDs:*(a1 + 40) foregroundBundleIDs:*(a1 + 56) completion:*(a1 + 80)];
  }

  objc_sync_exit(v7);
}

- (BOOL)_shouldIncludeAsLinkableUserActivity:(id)activity bundleID:(id)d foregroundBundleIDs:(id)ds excludedActivities:(id)activities
{
  v25 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  dCopy = d;
  activitiesCopy = activities;
  if (SYIsLinkableUserActivity(activityCopy))
  {
    if (![activitiesCopy count])
    {
      v16 = 1;
      goto LABEL_16;
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = activitiesCopy;
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (!v12)
    {
      v16 = 1;
      goto LABEL_15;
    }

    v13 = v12;
    v14 = *v19;
LABEL_5:
    v15 = 0;
    while (1)
    {
      if (*v19 != v14)
      {
        objc_enumerationMutation(v11);
      }

      if (SYEquivalentUserActivities(activityCopy, *(*(&v18 + 1) + 8 * v15)))
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
        v16 = 1;
        if (v13)
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
    v11 = os_log_create("com.apple.synapse", "LinkableItemFinder");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = dCopy;
      _os_log_impl(&dword_225901000, v11, OS_LOG_TYPE_INFO, "Ignoring user activity from %@. No usable identifier.", buf, 0xCu);
    }
  }

  v16 = 0;
LABEL_15:

LABEL_16:
  return v16;
}

- (void)_activityFetchingFinishedWithActivities:(id)activities appBundleIDs:(id)ds foregroundBundleIDs:(id)iDs completion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  activitiesCopy = activities;
  dsCopy = ds;
  iDsCopy = iDs;
  completionCopy = completion;
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(activitiesCopy, "count")}];
  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(activitiesCopy, "count")}];
  if (iDsCopy)
  {
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v34 = 0u;
    v15 = iDsCopy;
    v16 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v16)
    {
      v17 = v16;
      v24 = completionCopy;
      v18 = dsCopy;
      v19 = *v35;
      do
      {
        v20 = v15;
        for (i = 0; i != v17; ++i)
        {
          v22 = activitiesCopy;
          if (*v35 != v19)
          {
            objc_enumerationMutation(v20);
          }

          v23 = *(*(&v34 + 1) + 8 * i);
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __115__SYLinkableContentItemFinder__activityFetchingFinishedWithActivities_appBundleIDs_foregroundBundleIDs_completion___block_invoke;
          v29[3] = &unk_27856BB80;
          v30 = v18;
          v31 = v23;
          v32 = v13;
          v33 = v14;
          activitiesCopy = v22;
          [v22 enumerateKeysAndObjectsUsingBlock:v29];
        }

        v15 = v20;
        v17 = [v20 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v17);
      dsCopy = v18;
      completionCopy = v24;
    }
  }

  else
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __115__SYLinkableContentItemFinder__activityFetchingFinishedWithActivities_appBundleIDs_foregroundBundleIDs_completion___block_invoke_2;
    v25[3] = &unk_27856BBA8;
    v26 = dsCopy;
    v27 = v13;
    v28 = v14;
    [activitiesCopy enumerateKeysAndObjectsUsingBlock:v25];

    v15 = v26;
  }

  completionCopy[2](completionCopy, v13, v14, 0);
}

void __115__SYLinkableContentItemFinder__activityFetchingFinishedWithActivities_appBundleIDs_foregroundBundleIDs_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if ([v5 isEqualToString:*(a1 + 40)])
  {
    [*(a1 + 48) addObject:v6];
    [*(a1 + 56) addObject:v5];
  }
}

void __115__SYLinkableContentItemFinder__activityFetchingFinishedWithActivities_appBundleIDs_foregroundBundleIDs_completion___block_invoke_2(id *a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [a1[4] objectForKeyedSubscript:a2];
  if (v5)
  {
    [a1[5] addObject:v6];
    [a1[6] addObject:v5];
  }
}

- (void)_updateForegroundAppsFromDisplayLayout:(id)layout
{
  v21 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  elements = [layoutCopy elements];
  v7 = [elements countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(elements);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 isUIApplicationElement])
        {
          bundleIdentifier = [v11 bundleIdentifier];

          if (bundleIdentifier)
          {
            bundleIdentifier2 = [v11 bundleIdentifier];
            [array addObject:bundleIdentifier2];
          }
        }
      }

      v8 = [elements countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  _foregroundAppBundleIDs = [(SYLinkableContentItemFinder *)self _foregroundAppBundleIDs];
  [(SYLinkableContentItemFinder *)self set_foregroundAppBundleIDs:array];
  if (!_foregroundAppBundleIDs)
  {
    if ([(SYLinkableContentItemFinder *)self _foregroundAppLoadRetriesRemaining])
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (([array isEqualToArray:_foregroundAppBundleIDs] & 1) == 0)
  {
LABEL_13:
    delegate = [(SYLinkableContentItemFinder *)self delegate];
    [delegate linkableItemFinderItemsMightHaveChanged:self];
  }

LABEL_14:
}

- (void)handleRemoteCurrentActivityDidChange
{
  _itemFinderQueue = [(SYLinkableContentItemFinder *)self _itemFinderQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SYLinkableContentItemFinder_handleRemoteCurrentActivityDidChange__block_invoke;
  block[3] = &unk_27856B880;
  block[4] = self;
  dispatch_async(_itemFinderQueue, block);
}

void __67__SYLinkableContentItemFinder_handleRemoteCurrentActivityDidChange__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 linkableItemFinderItemsMightHaveChanged:*(a1 + 32)];
}

- (SYLinkableContentItemFinderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __87__SYLinkableContentItemFinder_fetchLinkableContentItemsExcludingActivities_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"SYLinkableContentItemFinder.m" lineNumber:139 description:@"Mismatch in number of activities and identifiers."];
}

- (void)_fetchActiveLinkableUserActivitiesExcluding:(uint64_t)a1 completion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SYLinkableContentItemFinder.m" lineNumber:184 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

void __86__SYLinkableContentItemFinder__fetchActiveLinkableUserActivitiesExcluding_completion___block_invoke_24_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_225901000, a2, OS_LOG_TYPE_ERROR, "Request for current user activities failed: %@", &v2, 0xCu);
}

void __86__SYLinkableContentItemFinder__fetchActiveLinkableUserActivitiesExcluding_completion___block_invoke_26_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_225901000, log, OS_LOG_TYPE_ERROR, "Error fetching user activity %@: %@", &v4, 0x16u);
}

@end