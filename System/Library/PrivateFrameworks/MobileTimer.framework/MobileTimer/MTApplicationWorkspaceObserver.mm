@interface MTApplicationWorkspaceObserver
+ (MTApplicationWorkspaceObserver)sharedWorkspaceObserver;
- (BOOL)isApplicationInstalledForBundleIdentifier:(id)identifier allowPlaceholder:(BOOL)placeholder;
- (MTApplicationWorkspaceObserver)init;
- (void)addObserver:(id)observer forBundleIdentifier:(id)identifier;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)removeObserver:(id)observer;
@end

@implementation MTApplicationWorkspaceObserver

+ (MTApplicationWorkspaceObserver)sharedWorkspaceObserver
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__MTApplicationWorkspaceObserver_sharedWorkspaceObserver__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedWorkspaceObserver_onceToken != -1)
  {
    dispatch_once(&sharedWorkspaceObserver_onceToken, block);
  }

  v2 = sharedWorkspaceObserver_instance;

  return v2;
}

uint64_t __57__MTApplicationWorkspaceObserver_sharedWorkspaceObserver__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(objc_opt_class());
  v2 = sharedWorkspaceObserver_instance;
  sharedWorkspaceObserver_instance = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (MTApplicationWorkspaceObserver)init
{
  v10.receiver = self;
  v10.super_class = MTApplicationWorkspaceObserver;
  v2 = [(MTApplicationWorkspaceObserver *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.MobileTimer.MTApplicationWorkspaceObserverQueue", 0);
    observerQueue = v2->_observerQueue;
    v2->_observerQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    observersForBundleID = v2->_observersForBundleID;
    v2->_observersForBundleID = v5;

    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    applicationWorkspace = v2->_applicationWorkspace;
    v2->_applicationWorkspace = defaultWorkspace;
  }

  return v2;
}

- (void)addObserver:(id)observer forBundleIdentifier:(id)identifier
{
  observerCopy = observer;
  identifierCopy = identifier;
  observerQueue = [(MTApplicationWorkspaceObserver *)self observerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MTApplicationWorkspaceObserver_addObserver_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E7B0C9A0;
  block[4] = self;
  v12 = identifierCopy;
  v13 = observerCopy;
  v9 = observerCopy;
  v10 = identifierCopy;
  dispatch_sync(observerQueue, block);
}

void __66__MTApplicationWorkspaceObserver_addObserver_forBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observersForBundleID];
  v5 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v4 = [*(a1 + 32) observersForBundleID];
    [v4 setObject:v6 forKeyedSubscript:*(a1 + 40)];

    v3 = v6;
  }

  v7 = v3;
  [v3 addObject:*(a1 + 48)];
  if (([*(a1 + 32) isObserving] & 1) == 0)
  {
    [*(*(a1 + 32) + 24) addObserver:?];
    [*(a1 + 32) setObserving:1];
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observerQueue = [(MTApplicationWorkspaceObserver *)self observerQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__MTApplicationWorkspaceObserver_removeObserver___block_invoke;
  v7[3] = &unk_1E7B0C928;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(observerQueue, v7);
}

void __49__MTApplicationWorkspaceObserver_removeObserver___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [*(a1 + 32) observersForBundleID];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __49__MTApplicationWorkspaceObserver_removeObserver___block_invoke_2;
  v18[3] = &unk_1E7B0FAB0;
  v19 = *(a1 + 40);
  v4 = v2;
  v20 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v18];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = [*(a1 + 32) observersForBundleID];
        [v11 removeObjectForKey:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v21 count:16];
    }

    while (v7);
  }

  v12 = [*(a1 + 32) observersForBundleID];
  v13 = [v12 count];

  if (!v13)
  {
    [*(*(a1 + 32) + 24) removeObserver:?];
    [*(a1 + 32) setObserving:0];
  }
}

void __49__MTApplicationWorkspaceObserver_removeObserver___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  [v6 removeObject:v5];
  v7 = [v6 count];

  if (!v7)
  {
    [*(a1 + 40) addObject:v8];
  }
}

- (BOOL)isApplicationInstalledForBundleIdentifier:(id)identifier allowPlaceholder:(BOOL)placeholder
{
  placeholderCopy = placeholder;
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v18 = 0;
  v7 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:identifierCopy allowPlaceholder:placeholderCopy error:&v18];
  v8 = v18;
  v9 = v8;
  if (v7)
  {
    applicationState = [v7 applicationState];
    if ([applicationState isValid])
    {
      applicationState2 = [v7 applicationState];
      isInstalled = [applicationState2 isInstalled];
      isPlaceholder = placeholderCopy | isInstalled;
      if (placeholderCopy && (isInstalled & 1) == 0)
      {
        applicationState3 = [v7 applicationState];
        isPlaceholder = [applicationState3 isPlaceholder];
      }

      goto LABEL_14;
    }

LABEL_13:
    isPlaceholder = 0;
LABEL_14:

    goto LABEL_15;
  }

  if (v8)
  {
    if ([v8 code] != -10814 || (objc_msgSend(v9, "domain"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToString:", *MEMORY[0x1E696A768]), v15, (v16 & 1) == 0))
    {
      applicationState = MTLogForCategory(4);
      if (os_log_type_enabled(applicationState, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        selfCopy = self;
        v21 = 2114;
        v22 = identifierCopy;
        v23 = 2114;
        v24 = v9;
        _os_log_error_impl(&dword_1B1F9F000, applicationState, OS_LOG_TYPE_ERROR, "%{public}@ unexpected error getting bundle identifier for %{public}@: %{public}@", buf, 0x20u);
      }

      goto LABEL_13;
    }
  }

  isPlaceholder = 0;
LABEL_15:

  return isPlaceholder & 1;
}

- (void)applicationsDidInstall:(id)install
{
  installCopy = install;
  observerQueue = [(MTApplicationWorkspaceObserver *)self observerQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__MTApplicationWorkspaceObserver_applicationsDidInstall___block_invoke;
  v7[3] = &unk_1E7B0C928;
  v8 = installCopy;
  selfCopy = self;
  v6 = installCopy;
  dispatch_async(observerQueue, v7);
}

void __57__MTApplicationWorkspaceObserver_applicationsDidInstall___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(a1 + 32);
  v14 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v14)
  {
    v12 = *v20;
    do
    {
      v1 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v2 = [*(*(&v19 + 1) + 8 * v1) bundleIdentifier];
        v3 = [*(a1 + 40) observersForBundleID];
        v4 = [v3 objectForKeyedSubscript:v2];

        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v5 = [v4 objectEnumerator];
        v6 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v16;
          do
          {
            v9 = 0;
            do
            {
              if (*v16 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v15 + 1) + 8 * v9);
              if (objc_opt_respondsToSelector())
              {
                [v10 observedApplicationDidInstallForBundleIdentifier:v2];
              }

              ++v9;
            }

            while (v7 != v9);
            v7 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v7);
        }

        ++v1;
      }

      while (v1 != v14);
      v14 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v14);
  }
}

- (void)applicationsDidUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  observerQueue = [(MTApplicationWorkspaceObserver *)self observerQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__MTApplicationWorkspaceObserver_applicationsDidUninstall___block_invoke;
  v7[3] = &unk_1E7B0C928;
  v8 = uninstallCopy;
  selfCopy = self;
  v6 = uninstallCopy;
  dispatch_async(observerQueue, v7);
}

void __59__MTApplicationWorkspaceObserver_applicationsDidUninstall___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(a1 + 32);
  v14 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v14)
  {
    v12 = *v20;
    do
    {
      v1 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v2 = [*(*(&v19 + 1) + 8 * v1) bundleIdentifier];
        v3 = [*(a1 + 40) observersForBundleID];
        v4 = [v3 objectForKeyedSubscript:v2];

        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v5 = [v4 objectEnumerator];
        v6 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v16;
          do
          {
            v9 = 0;
            do
            {
              if (*v16 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v15 + 1) + 8 * v9);
              if (objc_opt_respondsToSelector())
              {
                [v10 observedApplicationDidUninstallForBundleIdentifier:v2];
              }

              ++v9;
            }

            while (v7 != v9);
            v7 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v7);
        }

        ++v1;
      }

      while (v1 != v14);
      v14 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v14);
  }
}

@end