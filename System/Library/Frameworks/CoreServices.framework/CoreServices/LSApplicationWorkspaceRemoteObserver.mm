@interface LSApplicationWorkspaceRemoteObserver
- (BOOL)messageObserversWithSelector:(SEL)selector;
- (BOOL)messageObserversWithSelector:(SEL)selector andApps:(id)apps filterLaunchProhibited:(BOOL)prohibited;
- (LSApplicationWorkspaceRemoteObserver)init;
- (LSApplicationWorkspaceRemoteObserver)initWithCoder:(id)coder;
- (id)localObservers;
- (unint64_t)currentObserverCount;
- (void)addLocalObserver:(id)observer;
- (void)applicationIconDidChange:(id)change;
- (void)applicationInstallsArePrioritized:(id)prioritized arePaused:(id)paused;
- (void)applicationInstallsDidCancel:(id)cancel;
- (void)applicationInstallsDidChange:(id)change;
- (void)applicationInstallsDidPause:(id)pause;
- (void)applicationInstallsDidPrioritize:(id)prioritize;
- (void)applicationInstallsDidResume:(id)resume;
- (void)applicationInstallsDidStart:(id)start;
- (void)applicationInstallsDidUpdateIcon:(id)icon;
- (void)applicationStateDidChange:(id)change;
- (void)applicationsDidChangePersonas:(id)personas;
- (void)applicationsDidFailToInstall:(id)install;
- (void)applicationsDidFailToUninstall:(id)uninstall;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)applicationsWillInstall:(id)install;
- (void)applicationsWillUninstall:(id)uninstall;
- (void)databaseWasRebuilt;
- (void)deviceManagementPolicyDidChange:(id)change;
- (void)encodeWithCoder:(id)coder;
- (void)networkUsageChanged:(BOOL)changed;
- (void)pluginsDidInstall:(id)install;
- (void)pluginsDidUninstall:(id)uninstall;
- (void)pluginsWillUninstall:(id)uninstall;
- (void)removeLocalObserver:(id)observer;
@end

@implementation LSApplicationWorkspaceRemoteObserver

- (LSApplicationWorkspaceRemoteObserver)init
{
  v12.receiver = self;
  v12.super_class = LSApplicationWorkspaceRemoteObserver;
  v2 = [(LSApplicationWorkspaceRemoteObserver *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    uuid = v2->_uuid;
    v2->_uuid = v3;

    v2->_observinglsd = 0;
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_BACKGROUND, 0);

    v9 = dispatch_queue_create("LSApplicationWorkspaceRemoteObserver.progress.subscriptions", v8);
    progressSubscriptionsQueue = v2->_progressSubscriptionsQueue;
    v2->_progressSubscriptionsQueue = v9;
  }

  return v2;
}

- (unint64_t)currentObserverCount
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  observers = selfCopy->_observers;
  if (observers)
  {
    v4 = [(NSHashTable *)observers count];
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (id)localObservers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allObjects = [(NSHashTable *)selfCopy->_observers allObjects];
  v4 = [allObjects copy];

  objc_sync_exit(selfCopy);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(LSApplicationWorkspaceRemoteObserver *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"uuid"];
}

- (LSApplicationWorkspaceRemoteObserver)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = LSApplicationWorkspaceRemoteObserver;
  v5 = [(LSApplicationWorkspaceRemoteObserver *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;
  }

  return v5;
}

- (void)addLocalObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (observerCopy)
  {
    [(NSHashTable *)selfCopy->_observers addObject:observerCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)removeLocalObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (observerCopy)
  {
    [(NSHashTable *)selfCopy->_observers removeObject:observerCopy];
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)messageObserversWithSelector:(SEL)selector andApps:(id)apps filterLaunchProhibited:(BOOL)prohibited
{
  v29 = *MEMORY[0x1E69E9840];
  appsCopy = apps;
  v23 = appsCopy;
  if (prohibited)
  {
    v9 = [MEMORY[0x1E695DEC8] arrayByFilteringLaunchProhibitedAppsFrom:appsCopy];
  }

  else
  {
    v9 = appsCopy;
  }

  v10 = v9;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  localObservers = [(LSApplicationWorkspaceRemoteObserver *)self localObservers];
  v12 = [localObservers countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(localObservers);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          if (objc_opt_respondsToSelector() & 1) != 0 && ([v17 valueForKey:@"observeLaunchProhibitedApps"], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "BOOLValue"), v19, v18 = v23, (v20) || (v21 = objc_msgSend(v10, "count", v18), v18 = v10, v21))
          {
            [v17 selector];
          }

          v14 = 1;
        }
      }

      v13 = [localObservers countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

- (BOOL)messageObserversWithSelector:(SEL)selector
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  localObservers = [(LSApplicationWorkspaceRemoteObserver *)self localObservers];
  v5 = [localObservers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(localObservers);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v10 selector];
          v7 = 1;
        }
      }

      v6 = [localObservers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (void)applicationInstallsDidStart:(id)start
{
  startCopy = start;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__LSApplicationWorkspaceRemoteObserver_applicationInstallsDidStart___block_invoke;
  v6[3] = &unk_1E6A18F50;
  v7 = startCopy;
  selfCopy = self;
  v5 = startCopy;
  dispatchAsyncToCallbackQueueWithTransaction("com.apple.launchservices.applicationInstallsDidStart", v6);
}

void __68__LSApplicationWorkspaceRemoteObserver_applicationInstallsDidStart___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = _LSInstallLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: InstallsStarted %@", buf, 0xCu);
  }

  _LSContextInvalidate(v4, v5);
  if ([*(a1 + 40) messageObserversWithSelector:sel_applicationInstallsDidStart_ andApps:*(a1 + 32)])
  {
    v6 = *(*(a1 + 40) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__LSApplicationWorkspaceRemoteObserver_applicationInstallsDidStart___block_invoke_760;
    block[3] = &unk_1E6A195E0;
    v10 = *(a1 + 32);
    dispatch_async(v6, block);
  }

  v7 = *(a1 + 40);
  v8 = filterProxiesForHelperPlaceholders(*(a1 + 32));
  [v7 messageObserversWithSelector:sel_helperPlaceholdersInstalled_ andApps:v8 filterLaunchProhibited:0];
}

void __68__LSApplicationWorkspaceRemoteObserver_applicationInstallsDidStart___block_invoke_760(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5) installProgress];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)applicationInstallsDidUpdateIcon:(id)icon
{
  iconCopy = icon;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__LSApplicationWorkspaceRemoteObserver_applicationInstallsDidUpdateIcon___block_invoke;
  v6[3] = &unk_1E6A18F50;
  v7 = iconCopy;
  selfCopy = self;
  v5 = iconCopy;
  dispatchAsyncToCallbackQueueWithTransaction("com.apple.launchservices.applicationInstallsDidUpdateIcon", v6);
}

uint64_t __73__LSApplicationWorkspaceRemoteObserver_applicationInstallsDidUpdateIcon___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = _LSInstallLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: IconsUpdated %@", &v7, 0xCu);
  }

  _LSContextInvalidate(v4, v5);
  return [*(a1 + 40) messageObserversWithSelector:sel_applicationInstallsDidUpdateIcon_ andApps:*(a1 + 32)];
}

- (void)applicationInstallsDidChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__LSApplicationWorkspaceRemoteObserver_applicationInstallsDidChange___block_invoke;
  v6[3] = &unk_1E6A18F50;
  v7 = changeCopy;
  selfCopy = self;
  v5 = changeCopy;
  dispatchAsyncToCallbackQueueWithTransaction("com.apple.launchservices.applicationInstallsDidChange", v6);
}

void __69__LSApplicationWorkspaceRemoteObserver_applicationInstallsDidChange___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = _LSInstallLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __69__LSApplicationWorkspaceRemoteObserver_applicationInstallsDidChange___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v16 = a1;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [LSApplicationProxy applicationProxyForIdentifier:*(*(&v17 + 1) + 8 * v8) placeholder:1];
        v10 = v9;
        if (v9)
        {
          v11 = [v9 appState];
          if ([v11 isValid])
          {
            v12 = [v10 appState];
            v13 = [v12 isPlaceholder];

            if (v13)
            {
              [v3 addObject:v10];
            }
          }

          else
          {
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  _LSContextInvalidate(v14, v15);
  if ([v3 count])
  {
    [*(v16 + 40) messageObserversWithSelector:sel_applicationInstallsDidChange_ andApps:v3];
  }
}

- (void)applicationsWillInstall:(id)install
{
  installCopy = install;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__LSApplicationWorkspaceRemoteObserver_applicationsWillInstall___block_invoke;
  v6[3] = &unk_1E6A18F50;
  v7 = installCopy;
  selfCopy = self;
  v5 = installCopy;
  dispatchAsyncToCallbackQueueWithTransaction("com.apple.launchservices.applicationsWillInstall", v6);
}

uint64_t __64__LSApplicationWorkspaceRemoteObserver_applicationsWillInstall___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = _LSInstallLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: Will install %@", &v7, 0xCu);
  }

  _LSContextInvalidate(v4, v5);
  return [*(a1 + 40) messageObserversWithSelector:sel_applicationsWillInstall_ andApps:*(a1 + 32)];
}

- (void)applicationsDidInstall:(id)install
{
  v12 = *MEMORY[0x1E69E9840];
  installCopy = install;
  v5 = _LSInstallLog(installCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = installCopy;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "Received applicationsDidInstall:%@", buf, 0xCu);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__LSApplicationWorkspaceRemoteObserver_applicationsDidInstall___block_invoke;
  v7[3] = &unk_1E6A18F50;
  v8 = installCopy;
  selfCopy = self;
  v6 = installCopy;
  dispatchAsyncToCallbackQueueWithTransaction("com.apple.launchservices.applicationsDidInstall", v7);
}

void __63__LSApplicationWorkspaceRemoteObserver_applicationsDidInstall___block_invoke(uint64_t a1, uint64_t a2)
{
  v65 = *MEMORY[0x1E69E9840];
  _LSContextInvalidate(a1, a2);
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v58 = 0;
  v59 = 0;
  [v3 getKnowledgeUUID:&v59 andSequenceNumber:&v58];
  v4 = v59;
  v5 = v58;

  v51 = v5;
  v52 = v4;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LaunchServices observer: Installed %@ {%@ %@}", *(a1 + 32), v4, v5];
  if (_LSLoggingQueue_onceToken != -1)
  {
    registerApplicationWithDictionary_cold_2();
  }

  v7 = _LSLoggingQueue_logQueue;
  *&block = MEMORY[0x1E69E9820];
  *(&block + 1) = 3221225472;
  v62 = ___LSSetCrashMessage_block_invoke;
  v63 = &unk_1E6A195E0;
  v64 = v6;
  v8 = v6;
  dispatch_sync(v7, &block);

  v49 = v8;
  v53 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v50 = a1;
  v9 = *(a1 + 32);
  v10 = [v9 countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v55;
    do
    {
      v13 = 0;
      do
      {
        if (*v55 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v54 + 1) + 8 * v13);
        v15 = [v14 bundleIdentifier];

        if (v15)
        {
          v17 = [v14 bundleIdentifier];
          v18 = [LSApplicationProxy applicationProxyForIdentifier:v17 placeholder:0];

          if (!v18)
          {
            goto LABEL_21;
          }

          v20 = [v18 appState];
          if (([v20 isInstalled] & 1) == 0)
          {

LABEL_21:
            v32 = _LSDefaultLog(v19);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              LODWORD(block) = 138412290;
              *(&block + 4) = v18;
              _os_log_error_impl(&dword_18162D000, v32, OS_LOG_TYPE_ERROR, "LSApplicationProxy %@ is invalid", &block, 0xCu);
            }

            goto LABEL_24;
          }

          v21 = [v18 bundleURL];
          v22 = [v21 path];

          if (!v22)
          {
            goto LABEL_21;
          }

          v23 = [v18 bundleURL];
          v24 = [v23 fileSystemRepresentation];

          if (v24 && access(v24, 0) && (v25 = __error(), *v25 == 2))
          {
            v26 = _LSDefaultLog(v25);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              LODWORD(block) = 138412290;
              *(&block + 4) = v18;
              _os_log_error_impl(&dword_18162D000, v26, OS_LOG_TYPE_ERROR, "App validation Failed: bundle path does not exist %@", &block, 0xCu);
            }

            v27 = [v18 bundleIdentifier];
            _LSLogStepAsync(8, 0, v27, @"App validation failed (no bundle path), ignoring didInstall notification for %@", v28, v29, v30, v31, v18);
          }

          else
          {
            v33 = [v18 correspondingApplicationRecord];
            v34 = [v33 executableURL];
            v35 = [v34 fileSystemRepresentation];

            if (v35)
            {
              v37 = [v14 bundleIdentifier];
              _LSLogStepAsync(8, 1, v37, @"applicationsDidInstall %@", v38, v39, v40, v41, v18);

              [v53 addObject:v18];
              goto LABEL_24;
            }

            v42 = _LSDefaultLog(v36);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              LODWORD(block) = 138412290;
              *(&block + 4) = v18;
              _os_log_error_impl(&dword_18162D000, v42, OS_LOG_TYPE_ERROR, "App validation failed: no executable URL for %@", &block, 0xCu);
            }

            v27 = [v18 bundleIdentifier];
            _LSLogStepAsync(8, 0, v27, @"App validation failed (no executable path), ignoring didInstall notification for %@", v43, v44, v45, v46, v18);
          }
        }

        else
        {
          v18 = _LSDefaultLog(v16);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            LODWORD(block) = 138412290;
            *(&block + 4) = v14;
            _os_log_error_impl(&dword_18162D000, v18, OS_LOG_TYPE_ERROR, "LSApplicationProxy %@ is invalid (has nil identifier)", &block, 0xCu);
          }
        }

LABEL_24:

        ++v13;
      }

      while (v11 != v13);
      v47 = [v9 countByEnumeratingWithState:&v54 objects:v60 count:16];
      v11 = v47;
    }

    while (v47);
  }

  [*(v50 + 40) messageObserversWithSelector:sel_applicationsDidInstall_ andApps:v53];
  v48 = dispatch_time(0, 2000000000);
  if (_LSLoggingQueue_onceToken != -1)
  {
    registerApplicationWithDictionary_cold_2();
  }

  dispatch_after(v48, _LSLoggingQueue_logQueue, &__block_literal_global_1165);
}

- (void)pluginsDidInstall:(id)install
{
  v21 = *MEMORY[0x1E69E9840];
  installCopy = install;
  v5 = _LSInstallLog(installCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = installCopy;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: Installed plugins %@", buf, 0xCu);
  }

  _LSContextInvalidate(v6, v7);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  localObservers = [(LSApplicationWorkspaceRemoteObserver *)self localObservers];
  v9 = [localObservers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(localObservers);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 pluginsDidInstall:installCopy];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [localObservers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)applicationsDidFailToInstall:(id)install
{
  installCopy = install;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__LSApplicationWorkspaceRemoteObserver_applicationsDidFailToInstall___block_invoke;
  v6[3] = &unk_1E6A18F50;
  v7 = installCopy;
  selfCopy = self;
  v5 = installCopy;
  dispatchAsyncToCallbackQueueWithTransaction("com.apple.launchservices.applicationsDidFailToInstall", v6);
}

uint64_t __69__LSApplicationWorkspaceRemoteObserver_applicationsDidFailToInstall___block_invoke(uint64_t a1)
{
  v2 = _LSInstallLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __69__LSApplicationWorkspaceRemoteObserver_applicationsDidFailToInstall___block_invoke_cold_1();
  }

  _LSContextInvalidate(v3, v4);
  return [*(a1 + 40) messageObserversWithSelector:sel_applicationsDidFailToInstall_ andApps:*(a1 + 32)];
}

- (void)pluginsWillUninstall:(id)uninstall
{
  v19 = *MEMORY[0x1E69E9840];
  uninstallCopy = uninstall;
  v5 = _LSInstallLog(uninstallCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = uninstallCopy;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: Plugins will be removed: %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  localObservers = [(LSApplicationWorkspaceRemoteObserver *)self localObservers];
  v7 = [localObservers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(localObservers);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 pluginsWillUninstall:uninstallCopy];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [localObservers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)applicationsWillUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__LSApplicationWorkspaceRemoteObserver_applicationsWillUninstall___block_invoke;
  v6[3] = &unk_1E6A18F50;
  v7 = uninstallCopy;
  selfCopy = self;
  v5 = uninstallCopy;
  dispatchAsyncToCallbackQueueWithTransaction("com.apple.launchservices.applicationsWillUninstall", v6);
}

uint64_t __66__LSApplicationWorkspaceRemoteObserver_applicationsWillUninstall___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = _LSInstallLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: Will uninstall %@", &v7, 0xCu);
  }

  _LSContextInvalidate(v4, v5);
  return [*(a1 + 40) messageObserversWithSelector:sel_applicationsWillUninstall_ andApps:*(a1 + 32)];
}

- (void)applicationsDidUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__LSApplicationWorkspaceRemoteObserver_applicationsDidUninstall___block_invoke;
  v6[3] = &unk_1E6A18F50;
  v7 = uninstallCopy;
  selfCopy = self;
  v5 = uninstallCopy;
  dispatchAsyncToCallbackQueueWithTransaction("com.apple.launchservices.applicationsDidUninstall", v6);
}

void __65__LSApplicationWorkspaceRemoteObserver_applicationsDidUninstall___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = _LSInstallLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: Uninstalled %@", &v8, 0xCu);
  }

  _LSContextInvalidate(v4, v5);
  [*(a1 + 40) messageObserversWithSelector:sel_applicationsDidUninstall_ andApps:*(a1 + 32)];
  v6 = *(a1 + 40);
  v7 = filterProxiesForHelperPlaceholders(*(a1 + 32));
  [v6 messageObserversWithSelector:sel_helperPlaceholdersUninstalled_ andApps:v7 filterLaunchProhibited:0];
}

- (void)pluginsDidUninstall:(id)uninstall
{
  v19 = *MEMORY[0x1E69E9840];
  uninstallCopy = uninstall;
  v5 = _LSInstallLog(uninstallCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = uninstallCopy;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: Uninstalled plugins %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  localObservers = [(LSApplicationWorkspaceRemoteObserver *)self localObservers];
  v7 = [localObservers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(localObservers);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 pluginsDidUninstall:uninstallCopy];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [localObservers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)applicationsDidFailToUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__LSApplicationWorkspaceRemoteObserver_applicationsDidFailToUninstall___block_invoke;
  v6[3] = &unk_1E6A18F50;
  v7 = uninstallCopy;
  selfCopy = self;
  v5 = uninstallCopy;
  dispatchAsyncToCallbackQueueWithTransaction("com.apple.launchservices.applicationsDidFailToUninstall", v6);
}

uint64_t __71__LSApplicationWorkspaceRemoteObserver_applicationsDidFailToUninstall___block_invoke(uint64_t a1)
{
  v2 = _LSInstallLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __71__LSApplicationWorkspaceRemoteObserver_applicationsDidFailToUninstall___block_invoke_cold_1();
  }

  return [*(a1 + 40) messageObserversWithSelector:sel_applicationsDidFailToUninstall_ andApps:*(a1 + 32)];
}

- (void)applicationInstallsArePrioritized:(id)prioritized arePaused:(id)paused
{
  v75 = *MEMORY[0x1E69E9840];
  prioritizedCopy = prioritized;
  pausedCopy = paused;
  v8 = _LSInstallLog(pausedCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceRemoteObserver applicationInstallsArePrioritized:arePaused:];
  }

  v10 = _LSInstallLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceRemoteObserver applicationInstallsArePrioritized:arePaused:];
  }

  v12 = _LSInstallLog(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceRemoteObserver applicationInstallsArePrioritized:arePaused:];
  }

  v50 = objc_opt_new();
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  localObservers = [(LSApplicationWorkspaceRemoteObserver *)self localObservers];
  v14 = [localObservers countByEnumeratingWithState:&v63 objects:v74 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v64;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v64 != v16)
        {
          objc_enumerationMutation(localObservers);
        }

        v18 = *(*(&v63 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v50 addObject:v18];
        }
      }

      v15 = [localObservers countByEnumeratingWithState:&v63 objects:v74 count:16];
    }

    while (v15);
  }

  if ([v50 count])
  {
    v49 = pausedCopy;
    v19 = objc_opt_new();
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v48 = prioritizedCopy;
    v20 = prioritizedCopy;
    v21 = [v20 countByEnumeratingWithState:&v59 objects:v73 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v60;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v60 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v59 + 1) + 8 * j);
          v26 = [LSApplicationProxy applicationProxyForIdentifier:v25, v48];
          appState = [v26 appState];
          isValid = [appState isValid];

          if (isValid)
          {
            [v19 addObject:v26];
          }

          else
          {
            v30 = _LSInstallLog(v29);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v70 = v25;
              v71 = 2112;
              v72 = v26;
              _os_log_error_impl(&dword_18162D000, v30, OS_LOG_TYPE_ERROR, "Couldn't instantiate valid proxy for %@ when processing active installs, got %@", buf, 0x16u);
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v59 objects:v73 count:16];
      }

      while (v22);
    }

    v31 = objc_opt_new();
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v32 = v49;
    v33 = [v32 countByEnumeratingWithState:&v55 objects:v68 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v56;
      do
      {
        for (k = 0; k != v34; ++k)
        {
          if (*v56 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v55 + 1) + 8 * k);
          v38 = [LSApplicationProxy applicationProxyForIdentifier:v37, v48];
          appState2 = [v38 appState];
          isValid2 = [appState2 isValid];

          if (isValid2)
          {
            [v31 addObject:v38];
          }

          else
          {
            v42 = _LSInstallLog(v41);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v70 = v37;
              v71 = 2112;
              v72 = v38;
              _os_log_error_impl(&dword_18162D000, v42, OS_LOG_TYPE_ERROR, "Couldn't instantiate valid proxy for %@ when processing active installs, got %@", buf, 0x16u);
            }
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v55 objects:v68 count:16];
      }

      while (v34);
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v43 = v50;
    v44 = [v43 countByEnumeratingWithState:&v51 objects:v67 count:16];
    prioritizedCopy = v48;
    if (v44)
    {
      v45 = v44;
      v46 = *v52;
      do
      {
        for (m = 0; m != v45; ++m)
        {
          if (*v52 != v46)
          {
            objc_enumerationMutation(v43);
          }

          [*(*(&v51 + 1) + 8 * m) applicationInstallsArePrioritized:v19 arePaused:{v31, v48}];
        }

        v45 = [v43 countByEnumeratingWithState:&v51 objects:v67 count:16];
      }

      while (v45);
    }

    pausedCopy = v49;
  }
}

- (void)applicationInstallsDidPause:(id)pause
{
  v8 = *MEMORY[0x1E69E9840];
  pauseCopy = pause;
  v5 = _LSInstallLog(pauseCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = pauseCopy;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: PAUSE %@", &v6, 0xCu);
  }

  [(LSApplicationWorkspaceRemoteObserver *)self messageObserversWithSelector:sel_applicationInstallsDidPause_ andApps:pauseCopy];
}

- (void)applicationInstallsDidResume:(id)resume
{
  v8 = *MEMORY[0x1E69E9840];
  resumeCopy = resume;
  v5 = _LSInstallLog(resumeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = resumeCopy;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: RESUME %@", &v6, 0xCu);
  }

  [(LSApplicationWorkspaceRemoteObserver *)self messageObserversWithSelector:sel_applicationInstallsDidResume_ andApps:resumeCopy];
}

- (void)applicationInstallsDidCancel:(id)cancel
{
  v8 = *MEMORY[0x1E69E9840];
  cancelCopy = cancel;
  v5 = _LSInstallLog(cancelCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = cancelCopy;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: CANCEL %@", &v6, 0xCu);
  }

  [(LSApplicationWorkspaceRemoteObserver *)self messageObserversWithSelector:sel_applicationInstallsDidCancel_ andApps:cancelCopy];
}

- (void)applicationInstallsDidPrioritize:(id)prioritize
{
  v8 = *MEMORY[0x1E69E9840];
  prioritizeCopy = prioritize;
  v5 = _LSInstallLog(prioritizeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = prioritizeCopy;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: PRIORITIZE %@", &v6, 0xCu);
  }

  [(LSApplicationWorkspaceRemoteObserver *)self messageObserversWithSelector:sel_applicationInstallsDidPrioritize_ andApps:prioritizeCopy];
}

- (void)applicationStateDidChange:(id)change
{
  v10 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = _LSInstallLog(changeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = changeCopy;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: StateChange %@", &v8, 0xCu);
  }

  _LSContextInvalidate(v6, v7);
  [(LSApplicationWorkspaceRemoteObserver *)self messageObserversWithSelector:sel_applicationStateDidChange_ andApps:changeCopy];
}

- (void)applicationIconDidChange:(id)change
{
  v10 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = _LSInstallLog(changeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = changeCopy;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: IconChange %@", &v8, 0xCu);
  }

  _LSContextInvalidate(v6, v7);
  [(LSApplicationWorkspaceRemoteObserver *)self messageObserversWithSelector:sel_applicationIconDidChange_ andApps:changeCopy];
}

- (void)networkUsageChanged:(BOOL)changed
{
  changedCopy = changed;
  v20 = *MEMORY[0x1E69E9840];
  v5 = _LSInstallLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (changedCopy)
    {
      v6 = @"YES";
    }

    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: NetworkUsageChanged using network: %@", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  localObservers = [(LSApplicationWorkspaceRemoteObserver *)self localObservers];
  v8 = [localObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(localObservers);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 networkUsageChanged:changedCopy];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [localObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)deviceManagementPolicyDidChange:(id)change
{
  v10 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = _LSInstallLog(changeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = changeCopy;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: deviceManagementPolicyDidChange %@", &v8, 0xCu);
  }

  _LSContextInvalidate(v6, v7);
  [(LSApplicationWorkspaceRemoteObserver *)self messageObserversWithSelector:sel_deviceManagementPolicyDidChange_ andApps:changeCopy];
}

- (void)applicationsDidChangePersonas:(id)personas
{
  personasCopy = personas;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__LSApplicationWorkspaceRemoteObserver_applicationsDidChangePersonas___block_invoke;
  v6[3] = &unk_1E6A18F50;
  v7 = personasCopy;
  selfCopy = self;
  v5 = personasCopy;
  dispatchAsyncToCallbackQueueWithTransaction("com.apple.launchservices.applicationsDidChangePersonas", v6);
}

uint64_t __70__LSApplicationWorkspaceRemoteObserver_applicationsDidChangePersonas___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = _LSInstallLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: applicationsDidChangePersonas %@", &v7, 0xCu);
  }

  _LSContextInvalidate(v4, v5);
  return [*(a1 + 40) messageObserversWithSelector:sel_applicationsDidChangePersonas_ andApps:*(a1 + 32)];
}

- (void)databaseWasRebuilt
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __58__LSApplicationWorkspaceRemoteObserver_databaseWasRebuilt__block_invoke;
  v2[3] = &unk_1E6A195E0;
  v2[4] = self;
  dispatchAsyncToCallbackQueueWithTransaction("com.apple.launchservices.databaserebuilt", v2);
}

uint64_t __58__LSApplicationWorkspaceRemoteObserver_databaseWasRebuilt__block_invoke(uint64_t a1)
{
  v2 = _LSInstallLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: databaseWasRebuilt", v6, 2u);
  }

  _LSContextInvalidate(v3, v4);
  return [*(a1 + 32) messageObserversWithSelector:sel_databaseWasRebuilt];
}

void __69__LSApplicationWorkspaceRemoteObserver_applicationInstallsDidChange___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "LaunchServices: observer: installProgress changed %@", v2, v3, v4, v5);
}

void __69__LSApplicationWorkspaceRemoteObserver_applicationsDidFailToInstall___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __71__LSApplicationWorkspaceRemoteObserver_applicationsDidFailToUninstall___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end