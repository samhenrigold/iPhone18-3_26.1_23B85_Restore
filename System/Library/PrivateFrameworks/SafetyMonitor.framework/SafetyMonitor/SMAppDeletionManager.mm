@interface SMAppDeletionManager
- (BOOL)isMessagesAppInstalled;
- (SMAppDeletionManager)init;
- (void)_addObserver:(id)observer;
- (void)_applicationsDidInstall:(id)install;
- (void)_applicationsDidUninstall:(id)uninstall;
- (void)_notifyObserversForMessagesAppInstalled;
- (void)_notifyObserversForMessagesAppUninstalled;
- (void)_notifyObserversWithUpdatedMessagesInstallation;
- (void)_removeObserver:(id)observer;
- (void)_setup;
- (void)addObserver:(id)observer;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)databaseWasRebuilt;
- (void)dealloc;
- (void)removeObserver:(id)observer;
- (void)setup;
@end

@implementation SMAppDeletionManager

- (BOOL)isMessagesAppInstalled
{
  v14 = *MEMORY[0x277D85DE8];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = [defaultWorkspace applicationIsInstalled:@"com.apple.MobileSMS"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = 138412802;
      v9 = v7;
      v10 = 2080;
      v11 = "[SMAppDeletionManager isMessagesAppInstalled]";
      v12 = 1024;
      v13 = v3;
      _os_log_debug_impl(&dword_26455D000, v4, OS_LOG_TYPE_DEBUG, "%@, %s, querying isMessagesAppInstalled:, %{BOOL}d", &v8, 0x1Cu);
    }
  }

  return v3;
}

- (SMAppDeletionManager)init
{
  v13.receiver = self;
  v13.super_class = SMAppDeletionManager;
  v2 = [(SMAppDeletionManager *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uTF8String = [(SMAppDeletionManager *)v4 UTF8String];
    }

    else
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v4];
      uTF8String = [v7 UTF8String];
    }

    v8 = dispatch_queue_create(uTF8String, v5);

    queue = v4->_queue;
    v4->_queue = v8;

    v10 = objc_alloc_init(MEMORY[0x277CCAA50]);
    observers = v4->_observers;
    v4->_observers = v10;

    [(SMAppDeletionManager *)v4 setup];
  }

  return v3;
}

- (void)dealloc
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace removeObserver:self];

  v4.receiver = self;
  v4.super_class = SMAppDeletionManager;
  [(SMAppDeletionManager *)&v4 dealloc];
}

- (void)setup
{
  queue = [(SMAppDeletionManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__SMAppDeletionManager_setup__block_invoke;
  block[3] = &unk_279B655F8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_setup
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace addObserver:self];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = [(SMAppDeletionManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__SMAppDeletionManager_addObserver___block_invoke;
  v7[3] = &unk_279B65620;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = [(SMAppDeletionManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__SMAppDeletionManager_removeObserver___block_invoke;
  v7[3] = &unk_279B65620;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)_addObserver:(id)observer
{
  v18 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = 138412802;
      v13 = v9;
      v14 = 2080;
      v15 = "[SMAppDeletionManager _addObserver:]";
      v16 = 2112;
      v17 = v11;
      _os_log_debug_impl(&dword_26455D000, v5, OS_LOG_TYPE_DEBUG, "%@, %s, adding observer, %@", &v12, 0x20u);
    }
  }

  [(NSHashTable *)self->_observers addObject:observerCopy];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v7 = [defaultWorkspace applicationIsInstalled:@"com.apple.MobileSMS"];

  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {
      [observerCopy onMessagesAppInstalled];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    [observerCopy onMessagesAppUninstalled];
  }
}

- (void)_removeObserver:(id)observer
{
  v16 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = 138412802;
      v11 = v7;
      v12 = 2080;
      v13 = "[SMAppDeletionManager _removeObserver:]";
      v14 = 2112;
      v15 = v9;
      _os_log_debug_impl(&dword_26455D000, v5, OS_LOG_TYPE_DEBUG, "%@, %s, removing observer, %@", &v10, 0x20u);
    }
  }

  [(NSHashTable *)self->_observers removeObject:observerCopy];
}

- (void)_notifyObserversForMessagesAppInstalled
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  observers = [(SMAppDeletionManager *)self observers];
  v3 = [observers countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(observers);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 onMessagesAppInstalled];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [observers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_notifyObserversForMessagesAppUninstalled
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  observers = [(SMAppDeletionManager *)self observers];
  v3 = [observers countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(observers);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 onMessagesAppUninstalled];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [observers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)applicationsDidInstall:(id)install
{
  installCopy = install;
  queue = [(SMAppDeletionManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SMAppDeletionManager_applicationsDidInstall___block_invoke;
  v7[3] = &unk_279B65620;
  v7[4] = self;
  v8 = installCopy;
  v6 = installCopy;
  dispatch_async(queue, v7);
}

- (void)_applicationsDidInstall:(id)install
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  installCopy = install;
  v5 = [installCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(installCopy);
        }

        bundleIdentifier = [*(*(&v11 + 1) + 8 * i) bundleIdentifier];
        v10 = [bundleIdentifier isEqualToString:@"com.apple.MobileSMS"];

        if (v10)
        {
          [(SMAppDeletionManager *)self _notifyObserversForMessagesAppInstalled];
          goto LABEL_11;
        }
      }

      v6 = [installCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)applicationsDidUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  queue = [(SMAppDeletionManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SMAppDeletionManager_applicationsDidUninstall___block_invoke;
  v7[3] = &unk_279B65620;
  v7[4] = self;
  v8 = uninstallCopy;
  v6 = uninstallCopy;
  dispatch_async(queue, v7);
}

- (void)_applicationsDidUninstall:(id)uninstall
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  uninstallCopy = uninstall;
  v5 = [uninstallCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(uninstallCopy);
        }

        bundleIdentifier = [*(*(&v11 + 1) + 8 * i) bundleIdentifier];
        v10 = [bundleIdentifier isEqualToString:@"com.apple.MobileSMS"];

        if (v10)
        {
          [(SMAppDeletionManager *)self _notifyObserversForMessagesAppUninstalled];
          goto LABEL_11;
        }
      }

      v6 = [uninstallCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)databaseWasRebuilt
{
  queue = [(SMAppDeletionManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SMAppDeletionManager_databaseWasRebuilt__block_invoke;
  block[3] = &unk_279B655F8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_notifyObserversWithUpdatedMessagesInstallation
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v4 = [defaultWorkspace applicationIsInstalled:@"com.apple.MobileSMS"];

  if (v4)
  {

    [(SMAppDeletionManager *)self _notifyObserversForMessagesAppInstalled];
  }

  else
  {

    [(SMAppDeletionManager *)self _notifyObserversForMessagesAppUninstalled];
  }
}

@end