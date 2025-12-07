@interface CPSClipCleanupManager
+ (id)_parentBundleIDsFromAppRecord:(id)record;
+ (id)sharedManager;
- (BOOL)_shouldDeleteClipWithRecord:(id)record parentRecord:(id)parentRecord;
- (CPSClipCleanupManager)init;
- (id)_allAppClipsForPlaceholderOnly:(BOOL)only;
- (void)_applicationsDidChange:(id)change operationHandler:(id)handler;
- (void)_deleteClipWhenBackgrounded:(id)backgrounded completionHandler:(id)handler;
- (void)_didReceiveApplicationChangedNotification:(id)notification operationHandler:(id)handler;
- (void)_didReceiveApplicationRegisteredNotification:(id)notification;
- (void)_didReceiveApplicationUnregisteredNotification:(id)notification;
- (void)_didReceiveMCSettingsChangedNotification:(id)notification;
- (void)_handleNewInstalledAppWithBundleID:(id)d;
- (void)_handleNewUninstalledAppWithBundleID:(id)d;
- (void)_registerDistributedNotificationHandler;
- (void)_registerLocalNotifications;
- (void)_removeClipCancellingPendingRemovalIfNeeded:(id)needed completionHandler:(id)handler;
- (void)_transferTCCPermissionsFromClipWithBundleID:(id)d toParentAppWithBundleID:(id)iD;
- (void)_uninstallClipWithBundleIdentifier:(id)identifier deletionPromise:(id)promise;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)assertionTargetProcessDidExit:(id)exit;
- (void)dealloc;
- (void)removeClipsByUser:(id)user completionHandler:(id)handler;
- (void)removeFailedClipInstallsWithCompletionHandler:(id)handler;
- (void)uninstallClipsWithParentAppInstalledWithCompletionHandler:(id)handler;
@end

@implementation CPSClipCleanupManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[CPSClipCleanupManager sharedManager];
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

uint64_t __38__CPSClipCleanupManager_sharedManager__block_invoke()
{
  sharedManager_sharedManager = objc_alloc_init(CPSClipCleanupManager);

  return MEMORY[0x2821F96F8]();
}

- (CPSClipCleanupManager)init
{
  v13.receiver = self;
  v13.super_class = CPSClipCleanupManager;
  v2 = [(CPSClipCleanupManager *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.ClipServices.CPSClipCleanupManager", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingTerminationAssertionsByBundleIDs = v2->_pendingTerminationAssertionsByBundleIDs;
    v2->_pendingTerminationAssertionsByBundleIDs = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    clipDeletionPromisesByBundleIDs = v2->_clipDeletionPromisesByBundleIDs;
    v2->_clipDeletionPromisesByBundleIDs = v8;

    [(CPSClipCleanupManager *)v2 _registerLocalNotifications];
    [(CPSClipCleanupManager *)v2 _registerDistributedNotificationHandler];
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    [defaultWorkspace addObserver:v2];

    v11 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v28 = *MEMORY[0x277D85DE8];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace removeObserver:self];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  allValues = [(NSMutableDictionary *)self->_pendingTerminationAssertionsByBundleIDs allValues];
  v5 = [allValues countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        [v9 removeObserver:self];
        [v9 invalidate];
      }

      v6 = [allValues countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  allValues2 = [(NSMutableDictionary *)self->_clipDeletionPromisesByBundleIDs allValues];
  v11 = [allValues2 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(allValues2);
        }

        v15 = *(*(&v18 + 1) + 8 * j);
        v16 = [MEMORY[0x277CCA9B8] cps_errorWithCode:18];
        [v15 finishWithError:v16];
      }

      v12 = [allValues2 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v12);
  }

  v17.receiver = self;
  v17.super_class = CPSClipCleanupManager;
  [(CPSClipCleanupManager *)&v17 dealloc];
}

- (void)removeClipsByUser:(id)user completionHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  userCopy = user;
  handlerCopy = handler;
  v9 = CPS_LOG_CHANNEL_PREFIXClipServices(handlerCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v18 = userCopy;
    _os_log_impl(&dword_2436ED000, v9, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: user deleting clips (%{private}@)", buf, 0xCu);
  }

  v10 = +[CPSWebClipStore sharedStore];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__CPSClipCleanupManager_removeClipsByUser_completionHandler___block_invoke;
  v13[3] = &unk_278DCDCA8;
  v14 = userCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v11 = handlerCopy;
  v12 = userCopy;
  [v10 removeWebClipsWithApplicationBundleIdentifiers:v12 completionHandler:v13];
}

void __61__CPSClipCleanupManager_removeClipsByUser_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v3 = [v13 count];
  if (v3)
  {
    v5 = CPS_LOG_CHANNEL_PREFIXClipServices(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __61__CPSClipCleanupManager_removeClipsByUser_completionHandler___block_invoke_cold_1();
    }
  }

  v6 = dispatch_group_create();
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = *(a1 + 32);
  v7 = [obj countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v7)
  {
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        dispatch_group_enter(v6);
        v11 = *(a1 + 40);
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __61__CPSClipCleanupManager_removeClipsByUser_completionHandler___block_invoke_8;
        v15[3] = &unk_278DCDC80;
        v17 = &v22;
        v16 = v6;
        [v11 _removeClipCancellingPendingRemovalIfNeeded:v10 completionHandler:v15];

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v7);
  }

  dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, v23[5]);
  }

  _Block_object_dispose(&v22, 8);
}

void __61__CPSClipCleanupManager_removeClipsByUser_completionHandler___block_invoke_8(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    if (!v3)
    {
      v4 = [MEMORY[0x277CBEB18] array];
      v5 = *(*(a1 + 40) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      v3 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v3 addObject:v7];
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)_removeClipCancellingPendingRemovalIfNeeded:(id)needed completionHandler:(id)handler
{
  neededCopy = needed;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__CPSClipCleanupManager__removeClipCancellingPendingRemovalIfNeeded_completionHandler___block_invoke;
  block[3] = &unk_278DCDCF8;
  block[4] = self;
  v12 = neededCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = neededCopy;
  dispatch_async(queue, block);
}

void __87__CPSClipCleanupManager__removeClipCancellingPendingRemovalIfNeeded_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    [v2 removeObserver:*(a1 + 32)];
    [v3 invalidate];
    [*(*(a1 + 32) + 16) setObject:0 forKeyedSubscript:*(a1 + 40)];
  }

  v4 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
  v5 = v4;
  v6 = *(a1 + 48);
  if (v6)
  {
    if (!v4)
    {
      v5 = +[CPSPromise promise];
      v6 = *(a1 + 48);
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __87__CPSClipCleanupManager__removeClipCancellingPendingRemovalIfNeeded_completionHandler___block_invoke_2;
    v9[3] = &unk_278DCDCD0;
    v10 = v6;
    [v5 addCompletionBlock:v9];
  }

  [*(a1 + 32) _uninstallClipWithBundleIdentifier:*(a1 + 40) deletionPromise:v5];
  [*(*(a1 + 32) + 24) setObject:0 forKeyedSubscript:*(a1 + 40)];
  if (![*(*(a1 + 32) + 24) count])
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 32);
    *(v7 + 32) = 0;
  }
}

- (void)removeFailedClipInstallsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = dispatch_group_create();
  v7 = +[CPSWebClipStore sharedStore];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__CPSClipCleanupManager_removeFailedClipInstallsWithCompletionHandler___block_invoke;
  v11[3] = &unk_278DCDD48;
  v12 = v6;
  v13 = v5;
  selfCopy = self;
  v15 = handlerCopy;
  v8 = handlerCopy;
  v9 = v5;
  v10 = v6;
  [v7 fetchAppClipsWithCompletionHandler:v11];
}

void __71__CPSClipCleanupManager_removeFailedClipInstallsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v28;
    *&v5 = 138477827;
    v20 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [v9 isApplicationInstalled];
        if ((v10 & 1) == 0)
        {
          v12 = CPS_LOG_CHANNEL_PREFIXClipServices(v10, v11);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v20;
            v32 = v9;
            _os_log_impl(&dword_2436ED000, v12, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: Found WebClip with failed app clip install: %{private}@", buf, 0xCu);
          }

          dispatch_group_enter(*(a1 + 32));
          v13 = +[CPSWebClipStore sharedStore];
          v14 = [v9 identifier];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __71__CPSClipCleanupManager_removeFailedClipInstallsWithCompletionHandler___block_invoke_15;
          v25[3] = &unk_278DCDD20;
          v25[4] = v9;
          v26 = *(a1 + 32);
          [v13 removeWebClipWithIdentifier:v14 completionHandler:v25];

          v15 = [v9 applicationBundleIdentifier];

          if (v15)
          {
            v16 = *(a1 + 40);
            v17 = [v9 applicationBundleIdentifier];
            [v16 addObject:v17];
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v6);
  }

  v18 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__CPSClipCleanupManager_removeFailedClipInstallsWithCompletionHandler___block_invoke_16;
  block[3] = &unk_278DCDCF8;
  v21 = *(a1 + 40);
  v19 = v21.i64[0];
  v23 = vextq_s8(v21, v21, 8uLL);
  v24 = *(a1 + 56);
  dispatch_group_notify(v18, MEMORY[0x277D85CD0], block);
}

void __71__CPSClipCleanupManager_removeFailedClipInstallsWithCompletionHandler___block_invoke_15(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = CPS_LOG_CHANNEL_PREFIXClipServices(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = v5;
    v8 = [v6 identifier];
    v9 = [v3 cps_privacyPreservingDescription];
    v10 = 138478083;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&dword_2436ED000, v7, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: Removed WebClip with failed AppClip install: %{private}@, error: %{public}@", &v10, 0x16u);
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __71__CPSClipCleanupManager_removeFailedClipInstallsWithCompletionHandler___block_invoke_16(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v1 = [*(a1 + 32) _allAppClipsForPlaceholderOnly:1];
  v2 = [v1 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v33;
    *&v3 = 138477827;
    v24 = v3;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v33 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        v8 = [v7 bundleIdentifier];
        if (v8)
        {
          if ([v7 isPlaceholder])
          {
            v9 = [CPSUtilities isBundleIdentifierBeingInstalled:v8];
            if ((v9 & 1) == 0)
            {
              v11 = CPS_LOG_CHANNEL_PREFIXClipServices(v9, v10);
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                buf = v24;
                v38 = v8;
                _os_log_impl(&dword_2436ED000, v11, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: Found abandoned app clip placeholder: %{private}@", &buf, 0xCu);
              }

              [*(a1 + 40) addObject:v8];
            }
          }
        }
      }

      v4 = [v1 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v4);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = *(a1 + 40);
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v29;
    *&v14 = 138477827;
    v25 = v14;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v28 + 1) + 8 * j);
        v27 = 0;
        v19 = [CPSUtilities versionIdentifierForAppWithBundleIdentifier:v18 isPlaceholder:&v27, v25];
        v21 = v19;
        if (v19 && v27 == 1)
        {
          v22 = CPS_LOG_CHANNEL_PREFIXClipServices(v19, v20);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            buf = v25;
            v38 = v18;
            _os_log_impl(&dword_2436ED000, v22, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: Removing AppClip that failed install: %{private}@", &buf, 0xCu);
          }

          [CPSUtilities uninstallAppWithBundleIdentifier:v18 completion:0];
        }
      }

      v15 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v15);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)uninstallClipsWithParentAppInstalledWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__CPSClipCleanupManager_uninstallClipsWithParentAppInstalledWithCompletionHandler___block_invoke;
  v7[3] = &unk_278DCDD70;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __83__CPSClipCleanupManager_uninstallClipsWithParentAppInstalledWithCompletionHandler___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v28 = [MEMORY[0x277CBEB18] array];
  v29 = a1;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [*(a1 + 32) _allAppClipsForPlaceholderOnly:0];
  v26 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v26)
  {
    v25 = *v39;
    do
    {
      v2 = 0;
      do
      {
        if (*v39 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v2;
        v3 = *(*(&v38 + 1) + 8 * v2);
        v4 = [CPSClipCleanupManager _parentBundleIDsFromAppRecord:v3];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v5 = [v4 countByEnumeratingWithState:&v34 objects:v47 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v35;
          do
          {
            for (i = 0; i != v6; ++i)
            {
              if (*v35 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = *(*(&v34 + 1) + 8 * i);
              v10 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v9 allowPlaceholder:0 error:0];
              if (v10)
              {
                v11 = [*(v29 + 32) _shouldDeleteClipWithRecord:v3 parentRecord:v10];
                v12 = v11;
                v14 = CPS_LOG_CHANNEL_PREFIXClipServices(v11, v13);
                v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
                if (v12)
                {
                  if (v15)
                  {
                    v16 = v14;
                    v17 = [v3 bundleIdentifier];
                    *buf = 138478083;
                    v44 = v17;
                    v45 = 2113;
                    v46 = v9;
                    _os_log_impl(&dword_2436ED000, v16, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: Found clip (%{private}@) with installed parent app %{private}@ to delete", buf, 0x16u);
                  }

                  v18 = [v3 bundleIdentifier];
                  [v28 addObject:v18];
                }

                else if (v15)
                {
                  *buf = 0;
                  _os_log_impl(&dword_2436ED000, v14, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: Found installed parent app but clip should not be deleted", buf, 2u);
                }
              }
            }

            v6 = [v4 countByEnumeratingWithState:&v34 objects:v47 count:16];
          }

          while (v6);
        }

        v2 = v27 + 1;
      }

      while (v27 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v26);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = v28;
  v20 = [v19 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v31;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [*(v29 + 32) _deleteClipWhenBackgrounded:*(*(&v30 + 1) + 8 * j) completionHandler:0];
      }

      v21 = [v19 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v21);
  }

  (*(*(v29 + 40) + 16))();
}

- (void)_registerDistributedNotificationHandler
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__CPSClipCleanupManager__registerDistributedNotificationHandler__block_invoke;
  v4[3] = &unk_278DCDD98;
  objc_copyWeak(&v5, &location);
  v3 = MEMORY[0x245D3D5F0](v4);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", self->_queue, v3);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", self->_queue, v3);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __64__CPSClipCleanupManager__registerDistributedNotificationHandler__block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x245D3D7E0]();
  v6 = MEMORY[0x277D86468];
  if (v4 == MEMORY[0x277D86468])
  {
    v7 = CPS_LOG_CHANNEL_PREFIXClipServices(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *MEMORY[0x277D86430];
      v9 = v7;
      v37 = 136315138;
      string = xpc_dictionary_get_string(v3, v8);
      _os_log_impl(&dword_2436ED000, v9, OS_LOG_TYPE_INFO, "CPSClipCleanupManager: Received distributed notification via XPC event: %s", &v37, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (!WeakRetained || MEMORY[0x245D3D7E0](v3) != v6)
    {
      goto LABEL_17;
    }

    v11 = xpc_dictionary_get_string(v3, *MEMORY[0x277D86430]);
    if (!v11)
    {
      v21 = CPS_LOG_CHANNEL_PREFIXClipServices(0, v12);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __64__CPSClipCleanupManager__registerDistributedNotificationHandler__block_invoke_cold_2(v21, v22, v23, v24, v25, v26, v27, v28);
      }

      goto LABEL_17;
    }

    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];
    v14 = xpc_dictionary_get_value(v3, "UserInfo");
    v16 = v14;
    if (v14)
    {
      v14 = MEMORY[0x245D3D7E0](v14);
      if (v14 == v6)
      {
        v17 = _CFXPCCreateCFObjectFromXPCObject();
        if (!v17)
        {
          v29 = CPS_LOG_CHANNEL_PREFIXClipServices(0, v18);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            __64__CPSClipCleanupManager__registerDistributedNotificationHandler__block_invoke_cold_1(v29, v30, v31, v32, v33, v34, v35, v36);
          }

          goto LABEL_14;
        }
      }
    }

    v19 = CPS_LOG_CHANNEL_PREFIXClipServices(v14, v15);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 138412546;
      string = v13;
      v39 = 2112;
      v40 = 0;
      _os_log_impl(&dword_2436ED000, v19, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: Post notification with name: %@, userInfo: %@", &v37, 0x16u);
    }

    v20 = [MEMORY[0x277CCAB98] defaultCenter];
    [v20 postNotificationName:v13 object:0 userInfo:0];

LABEL_14:
LABEL_17:
  }
}

- (void)_registerLocalNotifications
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMCEffectiveSettingsChangedNotification(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"CPSClipCleanupManager.m" lineNumber:29 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_didReceiveApplicationRegisteredNotification:(id)notification
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70__CPSClipCleanupManager__didReceiveApplicationRegisteredNotification___block_invoke;
  v3[3] = &unk_278DCDDC0;
  v3[4] = self;
  [(CPSClipCleanupManager *)self _didReceiveApplicationChangedNotification:notification operationHandler:v3];
}

- (void)_didReceiveApplicationUnregisteredNotification:(id)notification
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __72__CPSClipCleanupManager__didReceiveApplicationUnregisteredNotification___block_invoke;
  v3[3] = &unk_278DCDDC0;
  v3[4] = self;
  [(CPSClipCleanupManager *)self _didReceiveApplicationChangedNotification:notification operationHandler:v3];
}

- (void)_didReceiveApplicationChangedNotification:(id)notification operationHandler:(id)handler
{
  handlerCopy = handler;
  userInfo = [notification userInfo];
  v8 = [userInfo safari_BOOLForKey:@"isPlaceholder"];
  if ((v8 & 1) == 0)
  {
    v10 = CPS_LOG_CHANNEL_PREFIXClipServices(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2436ED000, v10, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: Received app registered (non-placeholder) notification", buf, 2u);
    }

    v11 = [userInfo safari_arrayForKey:@"bundleIDs"];
    firstObject = [v11 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      queue = self->_queue;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __84__CPSClipCleanupManager__didReceiveApplicationChangedNotification_operationHandler___block_invoke;
      v25[3] = &unk_278DCDD70;
      v26 = v11;
      v27 = handlerCopy;
      dispatch_async(queue, v25);
    }

    else
    {
      v17 = CPS_LOG_CHANNEL_PREFIXClipServices(v14, v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(CPSClipCleanupManager *)v17 _didReceiveApplicationChangedNotification:v18 operationHandler:v19, v20, v21, v22, v23, v24];
      }
    }
  }
}

void __84__CPSClipCleanupManager__didReceiveApplicationChangedNotification_operationHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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

        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)_allAppClipsForPlaceholderOnly:(BOOL)only
{
  if (only)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  v4 = [MEMORY[0x277CC1E70] enumeratorWithOptions:v3];
  v5 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_45];
  [v4 setPredicate:v5];

  return v4;
}

uint64_t __56__CPSClipCleanupManager__allAppClipsForPlaceholderOnly___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 appClipMetadata];

  if (v3)
  {
    v4 = [v2 bundleIdentifier];
    v3 = [v4 length] != 0;
  }

  return v3;
}

- (void)_didReceiveMCSettingsChangedNotification:(id)notification
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__CPSClipCleanupManager__didReceiveMCSettingsChangedNotification___block_invoke;
  block[3] = &unk_278DCDE30;
  block[4] = self;
  dispatch_async(queue, block);
}

void __66__CPSClipCleanupManager__didReceiveMCSettingsChangedNotification___block_invoke(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = CPS_LOG_CHANNEL_PREFIXClipServices(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_2436ED000, v2, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: Received MobileConfiguration settings change notificaion.", &buf, 2u);
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x2050000000;
  v3 = getMCProfileConnectionClass_softClass;
  v39 = getMCProfileConnectionClass_softClass;
  if (!getMCProfileConnectionClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v42 = __getMCProfileConnectionClass_block_invoke;
    v43 = &unk_278DCDC00;
    v44 = &v36;
    __getMCProfileConnectionClass_block_invoke(&buf);
    v3 = v37[3];
  }

  v4 = v3;
  _Block_object_dispose(&v36, 8);
  v28 = [v3 sharedConnection];
  v5 = [v28 isAppClipsAllowed];
  v6 = v5;
  v8 = CPS_LOG_CHANNEL_PREFIXClipServices(v5, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"YES";
    if (v6)
    {
      v9 = @"NO";
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v9;
    _os_log_impl(&dword_2436ED000, v8, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: appClipsRestricted: %@", &buf, 0xCu);
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v10 = getMCFeatureMaximumAppsRatingSymbolLoc_ptr;
  v39 = getMCFeatureMaximumAppsRatingSymbolLoc_ptr;
  if (!getMCFeatureMaximumAppsRatingSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v42 = __getMCFeatureMaximumAppsRatingSymbolLoc_block_invoke;
    v43 = &unk_278DCDC00;
    v44 = &v36;
    v11 = ManagedConfigurationLibrary();
    v12 = dlsym(v11, "MCFeatureMaximumAppsRating");
    *(v44[1] + 24) = v12;
    getMCFeatureMaximumAppsRatingSymbolLoc_ptr = *(v44[1] + 24);
    v10 = v37[3];
  }

  _Block_object_dispose(&v36, 8);
  if (!v10)
  {
    __66__CPSClipCleanupManager__didReceiveMCSettingsChangedNotification___block_invoke_cold_1();
  }

  v13 = [v28 effectiveValueForSetting:*v10];
  v27 = v13;
  if (v13)
  {
    v14 = [v13 intValue];
  }

  else
  {
    v14 = 0x7FFFFFFFLL;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v15 = [*(a1 + 32) _allAppClipsForPlaceholderOnly:0];
  v16 = [v15 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v16)
  {
    v17 = *v33;
    v18 = v6 ^ 1;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v32 + 1) + 8 * i);
        v21 = [v20 iTunesMetadata];
        v22 = [v21 ratingRank];

        if (v18 & 1 | (v22 > v14))
        {
          v23 = v22 > v14;
          v24 = *(a1 + 32);
          v25 = [v20 bundleIdentifier];
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __66__CPSClipCleanupManager__didReceiveMCSettingsChangedNotification___block_invoke_52;
          v30[3] = &unk_278DCDE08;
          v30[4] = v20;
          v31 = v23;
          [v24 _deleteClipWhenBackgrounded:v25 completionHandler:v30];
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v16);
  }

  v26 = +[CPSSessionManager sharedManager];
  [v26 handleManagedConfigurationChanged];
}

void __66__CPSClipCleanupManager__didReceiveMCSettingsChangedNotification___block_invoke_52(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = v3;
  if (!v3)
  {
    v7 = *(a1 + 40);
    v8 = CPS_LOG_CHANNEL_PREFIXClipServices(0, v4);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7 == 1)
    {
      if (!v9)
      {
        goto LABEL_10;
      }

      v10 = *(a1 + 32);
      v11 = v8;
      v12 = [v10 bundleIdentifier];
      v15 = 138477827;
      v16 = v12;
      v13 = "CPSClipCleanupManager: Deleted an app clip due to age restriction: %{private}@";
    }

    else
    {
      if (!v9)
      {
        goto LABEL_10;
      }

      v14 = *(a1 + 32);
      v11 = v8;
      v12 = [v14 bundleIdentifier];
      v15 = 138477827;
      v16 = v12;
      v13 = "CPSClipCleanupManager: Deleted an app clip due to content restriction: %{private}@";
    }

    _os_log_impl(&dword_2436ED000, v11, OS_LOG_TYPE_DEFAULT, v13, &v15, 0xCu);

    goto LABEL_10;
  }

  v6 = CPS_LOG_CHANNEL_PREFIXClipServices(v3, v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __66__CPSClipCleanupManager__didReceiveMCSettingsChangedNotification___block_invoke_52_cold_1(a1, v6, v5);
  }

LABEL_10:
}

- (void)applicationsDidInstall:(id)install
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__CPSClipCleanupManager_applicationsDidInstall___block_invoke;
  v3[3] = &unk_278DCDDC0;
  v3[4] = self;
  [(CPSClipCleanupManager *)self _applicationsDidChange:install operationHandler:v3];
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__CPSClipCleanupManager_applicationsDidUninstall___block_invoke;
  v3[3] = &unk_278DCDDC0;
  v3[4] = self;
  [(CPSClipCleanupManager *)self _applicationsDidChange:uninstall operationHandler:v3];
}

- (void)assertionTargetProcessDidExit:(id)exit
{
  exitCopy = exit;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__CPSClipCleanupManager_assertionTargetProcessDidExit___block_invoke;
  v7[3] = &unk_278DCDE58;
  v8 = exitCopy;
  selfCopy = self;
  v6 = exitCopy;
  dispatch_async(queue, v7);
}

void __55__CPSClipCleanupManager_assertionTargetProcessDidExit___block_invoke(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = CPS_LOG_CHANNEL_PREFIXClipServices(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v24 = v4;
    _os_log_impl(&dword_2436ED000, v3, OS_LOG_TYPE_INFO, "CPSClipCleanupManager: Assertion target process did exit %@", buf, 0xCu);
  }

  [*(a1 + 32) removeObserver:*(a1 + 40)];
  [*(a1 + 32) invalidate];
  v5 = [*(*(a1 + 40) + 16) allKeysForObject:*(a1 + 32)];
  if ([v5 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = *(a1 + 40);
          v14 = [v13[3] objectForKeyedSubscript:{v12, v18}];
          [v13 _uninstallClipWithBundleIdentifier:v12 deletionPromise:v14];

          [*(*(a1 + 40) + 16) setObject:0 forKeyedSubscript:v12];
          [*(*(a1 + 40) + 24) setObject:0 forKeyedSubscript:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    if (![*(*(a1 + 40) + 24) count])
    {
      v15 = *(a1 + 40);
      v16 = *(v15 + 32);
      *(v15 + 32) = 0;
    }
  }

  else
  {
    v17 = CPS_LOG_CHANNEL_PREFIXClipServices(0, v6);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __55__CPSClipCleanupManager_assertionTargetProcessDidExit___block_invoke_cold_1();
    }
  }
}

- (void)_applicationsDidChange:(id)change operationHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v7 = [change safari_mapObjectsUsingBlock:&__block_literal_global_56];
    queue = self->_queue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __65__CPSClipCleanupManager__applicationsDidChange_operationHandler___block_invoke_2;
    v10[3] = &unk_278DCDD70;
    v11 = v7;
    v12 = handlerCopy;
    v9 = v7;
    dispatch_async(queue, v10);
  }
}

void __65__CPSClipCleanupManager__applicationsDidChange_operationHandler___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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

        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

+ (id)_parentBundleIDsFromAppRecord:(id)record
{
  appClipMetadata = [record appClipMetadata];
  parentApplicationIdentifiers = [appClipMetadata parentApplicationIdentifiers];

  v5 = [parentApplicationIdentifiers safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_59];

  return v5;
}

id __55__CPSClipCleanupManager__parentBundleIDsFromAppRecord___block_invoke(uint64_t a1, uint64_t a2)
{
  CPCopyBundleIdentifierAndTeamFromApplicationIdentifier();

  return 0;
}

- (BOOL)_shouldDeleteClipWithRecord:(id)record parentRecord:(id)parentRecord
{
  v24 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  parentRecordCopy = parentRecord;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [&unk_2856840E8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(&unk_2856840E8);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        iTunesMetadata = [recordCopy iTunesMetadata];
        sourceApp = [iTunesMetadata sourceApp];
        if ([sourceApp isEqualToString:v11])
        {
          iTunesMetadata2 = [parentRecordCopy iTunesMetadata];
          sourceApp2 = [iTunesMetadata2 sourceApp];
          v16 = [sourceApp2 isEqualToString:v11];

          if (v16)
          {
            v17 = 0;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v8 = [&unk_2856840E8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v17 = 1;
LABEL_13:

  return v17;
}

- (void)_handleNewInstalledAppWithBundleID:(id)d
{
  v66 = *MEMORY[0x277D85DE8];
  dCopy = d;
  selfCopy = self;
  dispatch_assert_queue_V2(self->_queue);
  v46 = os_transaction_create();
  v5 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:dCopy allowPlaceholder:0 error:0];
  v7 = CPS_LOG_CHANNEL_PREFIXClipServices(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v62 = dCopy;
    _os_log_impl(&dword_2436ED000, v7, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: Detected installation of new app (%{private}@)", buf, 0xCu);
  }

  appClipMetadata = [v5 appClipMetadata];

  if (appClipMetadata)
  {
    v9 = +[CPSWebClipStore sharedStore];
    localizedName = [v5 localizedName];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __60__CPSClipCleanupManager__handleNewInstalledAppWithBundleID___block_invoke;
    v58[3] = &unk_278DCDEC0;
    v59 = dCopy;
    [v9 updateWebClipTitle:localizedName forAppClipBundleIdentifier:v59 completionHandler:v58];
  }

  v11 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v12 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_69];
  [v11 setPredicate:v12];

  array = [MEMORY[0x277CBEB18] array];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v54 objects:v65 count:16];
  v44 = v13;
  if (v14)
  {
    v15 = v14;
    v16 = *v55;
    v41 = 134217984;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v55 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v54 + 1) + 8 * i);
        bundleIdentifier = [v18 bundleIdentifier];
        v20 = [bundleIdentifier hasPrefix:dCopy];
        if (v20)
        {
          v22 = [CPSClipCleanupManager _parentBundleIDsFromAppRecord:v18];
          v23 = [v22 containsObject:dCopy];
          if (v23)
          {
            v25 = [(CPSClipCleanupManager *)selfCopy _shouldDeleteClipWithRecord:v18 parentRecord:v5];
            v26 = v25;
            v28 = CPS_LOG_CHANNEL_PREFIXClipServices(v25, v27);
            v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
            if (v26)
            {
              if (v29)
              {
                *buf = 138478083;
                v62 = bundleIdentifier;
                v63 = 2113;
                v64 = dCopy;
                _os_log_impl(&dword_2436ED000, v28, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: Found clip (%{private}@) matching %{private}@ to delete", buf, 0x16u);
              }

              [array addObject:bundleIdentifier];
              v13 = v44;
            }

            else
            {
              v13 = v44;
              if (v29)
              {
                *buf = 138478083;
                v62 = bundleIdentifier;
                v63 = 2113;
                v64 = dCopy;
                _os_log_impl(&dword_2436ED000, v28, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: Clip (%{private}@) matching %{private}@ should not be deleted", buf, 0x16u);
              }
            }
          }

          else
          {
            v31 = CPS_LOG_CHANNEL_PREFIXClipServices(v23, v24);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              v32 = v31;
              v33 = [v22 count];
              *buf = v41;
              v62 = v33;
              _os_log_impl(&dword_2436ED000, v32, OS_LOG_TYPE_INFO, "CPSClipCleanupManager: Found no match for parent bundle IDs (count: %lu) from clip", buf, 0xCu);
            }
          }
        }

        else
        {
          v30 = CPS_LOG_CHANNEL_PREFIXClipServices(v20, v21);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138478083;
            v62 = bundleIdentifier;
            v63 = 2117;
            v64 = dCopy;
            _os_log_impl(&dword_2436ED000, v30, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: Clip bundleID (%{private}@) prefix does not match %{sensitive}@", buf, 0x16u);
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v54 objects:v65 count:16];
    }

    while (v15);
  }

  v42 = v5;

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = array;
  v34 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v51;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v51 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v38 = *(*(&v50 + 1) + 8 * j);
        v39 = +[CPSAnalyticsLogger sharedLogger];
        [v39 didUpgradeToFullAppFromClip:v38];

        v40 = +[CPSWebClipStore sharedStore];
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __60__CPSClipCleanupManager__handleNewInstalledAppWithBundleID___block_invoke_71;
        v48[3] = &unk_278DCDEE8;
        v49 = v46;
        [v40 redirectPoweredByWebClipsWithApplicationBundleIdentifier:v38 toParentApplicationBundleIdentifier:dCopy completionHandler:v48];

        [(CPSClipCleanupManager *)selfCopy _transferTCCPermissionsFromClipWithBundleID:v38 toParentAppWithBundleID:dCopy];
        [(CPSClipCleanupManager *)selfCopy _deleteClipWhenBackgrounded:v38 completionHandler:0];
      }

      v35 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
    }

    while (v35);
  }
}

void __60__CPSClipCleanupManager__handleNewInstalledAppWithBundleID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = CPS_LOG_CHANNEL_PREFIXClipServices(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __60__CPSClipCleanupManager__handleNewInstalledAppWithBundleID___block_invoke_cold_1(a1, v6, v5);
    }
  }
}

BOOL __60__CPSClipCleanupManager__handleNewInstalledAppWithBundleID___block_invoke_67(uint64_t a1, void *a2)
{
  v2 = [a2 appClipMetadata];
  v3 = v2 != 0;

  return v3;
}

- (void)_transferTCCPermissionsFromClipWithBundleID:(id)d toParentAppWithBundleID:(id)iD
{
  v28[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v7 = MEMORY[0x277CBEB98];
  v8 = *MEMORY[0x277D6C1A8];
  v28[0] = *MEMORY[0x277D6C120];
  v28[1] = v8;
  v28[2] = *MEMORY[0x277D6C110];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
  v10 = [v7 setWithArray:v9];

  v22 = dCopy;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = TCCAccessCopyInformationForBundleId();
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    v15 = MEMORY[0x277D6C0E8];
    v16 = MEMORY[0x277D6C0D0];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        v19 = [v18 objectForKeyedSubscript:*v15];
        if (v19 && [v10 containsObject:v19])
        {
          v20 = [v18 objectForKeyedSubscript:*v16];
          v21 = v20;
          if (v20)
          {
            [v20 BOOLValue];
            TCCAccessSetForBundleId();
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  if ([MEMORY[0x277CBFC10] authorizationStatusForBundleIdentifier:v22] == 2)
  {
    [MEMORY[0x277CBFC10] setAuthorizationStatusByType:2 forBundleIdentifier:iDCopy];
  }
}

- (void)_handleNewUninstalledAppWithBundleID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  v5 = os_transaction_create();
  v6 = +[CPSWebClipStore sharedStore];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __62__CPSClipCleanupManager__handleNewUninstalledAppWithBundleID___block_invoke;
  v19[3] = &unk_278DCDF10;
  v7 = dCopy;
  v20 = v7;
  v8 = v5;
  v21 = v8;
  [v6 removeWebClipsWithApplicationBundleIdentifier:v7 completionHandler:v19];

  v9 = objc_alloc_init(MEMORY[0x277CF3618]);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __62__CPSClipCleanupManager__handleNewUninstalledAppWithBundleID___block_invoke_77;
  v16 = &unk_278DCDF38;
  v17 = v7;
  v18 = v8;
  v10 = v8;
  v11 = v7;
  [v9 clearCachesForLinkItemsAssociatedWithBundleID:v11 completion:&v13];
  v12 = [CPSClipDataSQLiteStore defaultStore:v13];
  [v12 removeRecordWithBundleID:v11];
}

void __62__CPSClipCleanupManager__handleNewUninstalledAppWithBundleID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 count];
  if (v3)
  {
    v5 = CPS_LOG_CHANNEL_PREFIXClipServices(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __62__CPSClipCleanupManager__handleNewUninstalledAppWithBundleID___block_invoke_cold_1();
    }
  }
}

void __62__CPSClipCleanupManager__handleNewUninstalledAppWithBundleID___block_invoke_77(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v5 = v3;
  if (v3)
  {
    v6 = CPS_LOG_CHANNEL_PREFIXClipServices(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __62__CPSClipCleanupManager__handleNewUninstalledAppWithBundleID___block_invoke_77_cold_1();
    }
  }
}

- (void)_deleteClipWhenBackgrounded:(id)backgrounded completionHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  backgroundedCopy = backgrounded;
  handlerCopy = handler;
  v9 = CPS_LOG_CHANNEL_PREFIXClipServices(handlerCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v26 = backgroundedCopy;
    _os_log_impl(&dword_2436ED000, v9, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: will delete clip when backgrounded: %{private}@", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  v10 = [(NSMutableDictionary *)self->_clipDeletionPromisesByBundleIDs objectForKeyedSubscript:backgroundedCopy];
  v11 = v10;
  if (!v10)
  {
    v11 = +[CPSPromise promise];
  }

  if (handlerCopy)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __71__CPSClipCleanupManager__deleteClipWhenBackgrounded_completionHandler___block_invoke;
    v23[3] = &unk_278DCDCD0;
    v24 = handlerCopy;
    [v11 addCompletionBlock:v23];
  }

  if (!v10)
  {
    v12 = objc_alloc_init(MEMORY[0x277D47010]);
    [v12 setExplanation:@"Terminate clip before uninstallation"];
    [v12 setMaximumTerminationResistance:30];
    v13 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifier:backgroundedCopy];
    v14 = [objc_alloc(MEMORY[0x277D47020]) initWithPredicate:v13 context:v12];
    [v14 addObserver:self];
    v22 = 0;
    v15 = [v14 acquireWithError:&v22];
    v16 = v22;
    v18 = v16;
    if (v15)
    {
      [(NSMutableDictionary *)self->_pendingTerminationAssertionsByBundleIDs setObject:v14 forKeyedSubscript:backgroundedCopy];
      [(NSMutableDictionary *)self->_clipDeletionPromisesByBundleIDs setObject:v11 forKeyedSubscript:backgroundedCopy];
      if (!self->_deletionTransaction)
      {
        v19 = os_transaction_create();
        deletionTransaction = self->_deletionTransaction;
        self->_deletionTransaction = v19;
      }
    }

    else
    {
      v21 = CPS_LOG_CHANNEL_PREFIXClipServices(v16, v17);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [CPSClipCleanupManager _deleteClipWhenBackgrounded:backgroundedCopy completionHandler:?];
      }

      [(CPSClipCleanupManager *)self _uninstallClipWithBundleIdentifier:backgroundedCopy deletionPromise:v11];
      [v14 removeObserver:self];
      [v14 invalidate];
    }
  }
}

- (void)_uninstallClipWithBundleIdentifier:(id)identifier deletionPromise:(id)promise
{
  identifierCopy = identifier;
  promiseCopy = promise;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__CPSClipCleanupManager__uninstallClipWithBundleIdentifier_deletionPromise___block_invoke;
  v9[3] = &unk_278DCDD20;
  v10 = identifierCopy;
  v11 = promiseCopy;
  v7 = promiseCopy;
  v8 = identifierCopy;
  [CPSUtilities uninstallAppWithBundleIdentifier:v8 completion:v9];
}

void __76__CPSClipCleanupManager__uninstallClipWithBundleIdentifier_deletionPromise___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = CPS_LOG_CHANNEL_PREFIXClipServices(v3, v4);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __76__CPSClipCleanupManager__uninstallClipWithBundleIdentifier_deletionPromise___block_invoke_cold_1(a1, v6, v3);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138477827;
    v9 = v7;
    _os_log_impl(&dword_2436ED000, v6, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: successfully deleted clip %{private}@", &v8, 0xCu);
  }

  [*(a1 + 40) finishWithError:v3];
}

void __61__CPSClipCleanupManager_removeClipsByUser_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_2436ED000, v0, v1, "CPSClipCleanupManager: failed to delete web clips before their backing app clips %{private}@ are uninstalled: %{private}@");
}

void __66__CPSClipCleanupManager__didReceiveMCSettingsChangedNotification___block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMCFeatureMaximumAppsRating(void)"];
  [v0 handleFailureInFunction:v1 file:@"CPSClipCleanupManager.m" lineNumber:30 description:{@"%s", dlerror()}];

  __break(1u);
}

void __66__CPSClipCleanupManager__didReceiveMCSettingsChangedNotification___block_invoke_52_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 bundleIdentifier];
  v8 = *(a1 + 40);
  v10 = 138478339;
  v11 = v7;
  if (v8)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v12 = 2112;
  v13 = v9;
  v14 = 2112;
  v15 = a3;
  _os_log_error_impl(&dword_2436ED000, v6, OS_LOG_TYPE_ERROR, "CPSClipCleanupManager: Error ocurred when deleting %{private}@, ageRestricted: %@, error: %@", &v10, 0x20u);
}

void __55__CPSClipCleanupManager_assertionTargetProcessDidExit___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_2436ED000, v0, OS_LOG_TYPE_ERROR, "CPSClipCleanupManager: Clip not found for assertion %@", v1, 0xCu);
}

void __60__CPSClipCleanupManager__handleNewInstalledAppWithBundleID___block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_2436ED000, v6, v7, "CPSClipCleanupManager: Failed to update web clip title for %{private}@ due to %{public}@", v8, v9, v10, v11);
}

void __62__CPSClipCleanupManager__handleNewUninstalledAppWithBundleID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_2436ED000, v0, v1, "CPSClipCleanupManager: failed to delete web clips %{private}@ when its backing app clip is uninstalled: %{sensitive}@");
}

void __62__CPSClipCleanupManager__handleNewUninstalledAppWithBundleID___block_invoke_77_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_2436ED000, v0, v1, "CPSClipCleanupManager: failed to delete ABR cached items for bundleID %{private}@, Error: %@");
}

- (void)_deleteClipWhenBackgrounded:(uint64_t)a1 completionHandler:.cold.1(uint64_t a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = a1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_2436ED000, v1, v2, "CPSClipCleanupManager: Unable to acquire termination assertion for bundle ID %@ with error %@", v3, DWORD2(v3));
}

void __76__CPSClipCleanupManager__uninstallClipWithBundleIdentifier_deletionPromise___block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_2436ED000, v6, v7, "CPSClipCleanupManager: failed to delete clip %{private}@: %{public}@", v8, v9, v10, v11);
}

@end