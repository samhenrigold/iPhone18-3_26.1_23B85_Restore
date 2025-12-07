@interface NPKApplicationStateListener
- (NPKApplicationStateListener)init;
- (unint64_t)_applicationStateWithLSApplicationState:(id)state;
- (unint64_t)cachedAppState;
- (void)_handleApplicationChangeNotificationWithWorkspaceApplicationProxies:(id)proxies newStateResolver:(id)resolver;
- (void)_retrieveAppState:(id)state;
- (void)_updateStateWithNewState:(unint64_t)state completion:(id)completion;
- (void)appState:(id)state;
- (void)applicationStateDidChange:(id)change;
- (void)prewarm;
- (void)registerObserver:(id)observer;
- (void)removeObserver:(id)observer;
@end

@implementation NPKApplicationStateListener

- (NPKApplicationStateListener)init
{
  v10.receiver = self;
  v10.super_class = NPKApplicationStateListener;
  v2 = [(NPKApplicationStateListener *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_appStateLock._os_unfair_lock_opaque = 0;
    v2->_appState = 0;
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v5 = dispatch_queue_create("com.apple.nanoPassKit.applicationStateListener", v4);
    internalClassQueue = v3->_internalClassQueue;
    v3->_internalClassQueue = v5;

    v7 = objc_alloc_init(NPKThreadSafeObserverManager);
    observerManager = v3->_observerManager;
    v3->_observerManager = &v7->super;
  }

  return v3;
}

- (void)prewarm
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = pk_Payment_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [NPKApplicationStateListener] %p Prewarming app state", buf, 0xCu);
    }
  }

  internalClassQueue = self->_internalClassQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__NPKApplicationStateListener_prewarm__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(internalClassQueue, block);
}

- (unint64_t)cachedAppState
{
  v28 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v16 = __45__NPKApplicationStateListener_cachedAppState__block_invoke;
  v17 = &unk_279944FE8;
  selfCopy = self;
  v19 = &v20;
  v3 = v15;
  os_unfair_lock_lock(&self->_appStateLock);
  v16(v3);

  os_unfair_lock_unlock(&self->_appStateLock);
  v5 = pk_Payment_log(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v21[3] - 1;
      if (v9 > 2)
      {
        v10 = @"Unknown";
      }

      else
      {
        v10 = off_279948658[v9];
      }

      *buf = 134218242;
      selfCopy2 = self;
      v26 = 2112;
      v27 = v10;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [NPKApplicationStateListener] %p Getting cached app state. State: %@", buf, 0x16u);
    }
  }

  v11 = v21[3];
  if (!v11)
  {
    internalClassQueue = self->_internalClassQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__NPKApplicationStateListener_cachedAppState__block_invoke_69;
    block[3] = &unk_279944F98;
    block[4] = self;
    dispatch_async(internalClassQueue, block);
    v11 = v21[3];
  }

  _Block_object_dispose(&v20, 8);
  return v11;
}

- (void)appState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (stateCopy)
  {
    internalClassQueue = self->_internalClassQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__NPKApplicationStateListener_appState___block_invoke;
    v7[3] = &unk_279945530;
    v7[4] = self;
    v8 = stateCopy;
    dispatch_async(internalClassQueue, v7);
  }
}

- (void)registerObserver:(id)observer
{
  [(NPKObserverManager *)self->_observerManager registerObserver:observer];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace addObserver:self];
}

- (void)removeObserver:(id)observer
{
  [(NPKObserverManager *)self->_observerManager unregisterObserver:observer];
  if (![(NPKObserverManager *)self->_observerManager hasObservers])
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    [defaultWorkspace removeObserver:self];
  }
}

- (void)applicationStateDidChange:(id)change
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__NPKApplicationStateListener_applicationStateDidChange___block_invoke;
  v3[3] = &unk_2799485A0;
  v3[4] = self;
  [(NPKApplicationStateListener *)self _handleApplicationChangeNotificationWithWorkspaceApplicationProxies:change newStateResolver:v3];
}

- (void)_retrieveAppState:(id)state
{
  v30 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = pk_Payment_log(stateCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [NPKApplicationStateListener] %p Retrieving application record.", buf, 0xCu);
    }
  }

  v9 = objc_alloc(MEMORY[0x277CC1E70]);
  v10 = *MEMORY[0x277D38988];
  v21 = 0;
  v11 = [v9 initWithBundleIdentifier:v10 allowPlaceholder:1 error:&v21];
  v12 = v21;
  v13 = v12;
  if (v12)
  {
    v14 = pk_Payment_log(v12);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

    if (v15)
    {
      v17 = pk_Payment_log(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = NSStringFromBOOL();
        *buf = 134218754;
        selfCopy2 = self;
        v24 = 2112;
        v25 = v10;
        v26 = 2112;
        v27 = v18;
        v28 = 2112;
        v29 = v13;
        _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_ERROR, "Error: [NPKApplicationStateListener] %p Failed to fetch %@ application record. App Record is nil? %@. Error: %@", buf, 0x2Au);
      }
    }
  }

  applicationState = [v11 applicationState];
  v20 = [(NPKApplicationStateListener *)self _applicationStateWithLSApplicationState:applicationState];

  [(NPKApplicationStateListener *)self _updateStateWithNewState:v20 completion:stateCopy];
}

- (void)_handleApplicationChangeNotificationWithWorkspaceApplicationProxies:(id)proxies newStateResolver:(id)resolver
{
  v40 = *MEMORY[0x277D85DE8];
  proxiesCopy = proxies;
  resolverCopy = resolver;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = proxiesCopy;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    v12 = *MEMORY[0x277D38988];
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        bundleIdentifier = [v14 bundleIdentifier];
        v16 = [bundleIdentifier isEqualToString:v12];

        if (v16)
        {
          appState = [v14 appState];
          v18 = resolverCopy[2](resolverCopy, appState);

          v20 = pk_Payment_log(v19);
          v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

          if (v21)
          {
            v23 = pk_Payment_log(v22);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              appState2 = [v14 appState];
              v25 = appState2;
              if ((v18 - 1) > 2)
              {
                v26 = @"Unknown";
              }

              else
              {
                v26 = off_279948658[v18 - 1];
              }

              *buf = 134218498;
              selfCopy = self;
              v35 = 2112;
              v36 = appState2;
              v37 = 2112;
              v38 = v26;
              _os_log_impl(&dword_25B300000, v23, OS_LOG_TYPE_DEFAULT, "Notice: [NPKApplicationStateListener] %p Received NanoPassbook LS app state change notification. App Proxy state: %@, resolved state to %@", buf, 0x20u);
            }
          }

          internalClassQueue = self->_internalClassQueue;
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __116__NPKApplicationStateListener__handleApplicationChangeNotificationWithWorkspaceApplicationProxies_newStateResolver___block_invoke;
          v28[3] = &unk_279945830;
          v28[4] = self;
          v28[5] = v18;
          dispatch_async(internalClassQueue, v28);
          goto LABEL_18;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v29 objects:v39 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:
}

void __116__NPKApplicationStateListener__handleApplicationChangeNotificationWithWorkspaceApplicationProxies_newStateResolver___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = pk_Payment_log(a1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40) - 1;
      if (v8 > 2)
      {
        v9 = @"Unknown";
      }

      else
      {
        v9 = off_279948658[v8];
      }

      v10 = *(a1 + 32);
      if ((a2 - 1) > 2)
      {
        v11 = @"Unknown";
      }

      else
      {
        v11 = off_279948658[a2 - 1];
      }

      v12 = 134218498;
      v13 = v10;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [NPKApplicationStateListener] %p Finished updating application state from LS app state notification with state %@. New resolved state: %@", &v12, 0x20u);
    }
  }
}

- (unint64_t)_applicationStateWithLSApplicationState:(id)state
{
  stateCopy = state;
  v4 = stateCopy;
  if (stateCopy)
  {
    isInstalled = [stateCopy isInstalled];
    isRestricted = [v4 isRestricted];
    v7 = 1;
    if (isRestricted)
    {
      v7 = 2;
    }
  }

  else
  {
    isInstalled = PKPassbookIsCurrentlyDeletedByUser() == 0;
    v7 = 1;
  }

  if (isInstalled)
  {
    v8 = v7;
  }

  else
  {
    v8 = 3;
  }

  return v8;
}

- (void)_updateStateWithNewState:(unint64_t)state completion:(id)completion
{
  completionCopy = completion;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v11 = __67__NPKApplicationStateListener__updateStateWithNewState_completion___block_invoke;
  v12 = &unk_279948610;
  selfCopy = self;
  v14 = &v16;
  stateCopy = state;
  v7 = v10;
  os_unfair_lock_lock(&self->_appStateLock);
  v11(v7);

  os_unfair_lock_unlock(&self->_appStateLock);
  if (completionCopy)
  {
    completionCopy[2](completionCopy, state);
  }

  if (v17[3] != state)
  {
    observerManager = self->_observerManager;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __67__NPKApplicationStateListener__updateStateWithNewState_completion___block_invoke_2;
    v9[3] = &unk_279948638;
    v9[4] = self;
    v9[5] = &v16;
    v9[6] = state;
    [(NPKObserverManager *)observerManager enumerateObserversUsingBlock:v9];
  }

  _Block_object_dispose(&v16, 8);
}

void *__67__NPKApplicationStateListener__updateStateWithNewState_completion___block_invoke(void *result)
{
  *(*(result[5] + 8) + 24) = *(result[4] + 16);
  *(result[4] + 16) = result[6];
  return result;
}

@end