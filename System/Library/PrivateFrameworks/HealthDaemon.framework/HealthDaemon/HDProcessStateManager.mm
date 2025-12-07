@interface HDProcessStateManager
- (BOOL)applicationIsForeground:(id)foreground;
- (BOOL)isApplicationFrontBoardVisibleForBundleIdentifier:(id)identifier;
- (BOOL)isApplicationInExtendedRuntimeSessionForBundleIdentifier:(id)identifier;
- (BOOL)processIsForeground:(int)foreground;
- (BOOL)registerObserver:(id)observer forBundleIdentifier:(id)identifier;
- (HDApplicationStateMonitorProvider)applicationStateMonitorProvider;
- (HDProcessStateManager)init;
- (HDProcessStateManager)initWithApplicationStateMonitorProvider:(id)provider;
- (id)diagnosticDescription;
- (int)processIdentifierForApplicationIdentifier:(id)identifier;
- (unsigned)applicationStateForBundleIdentifier:(id)identifier;
- (void)_handleBackboardApplicationInfoChanged:(uint64_t)changed;
- (void)dealloc;
- (void)registerForegroundClientProcessObserver:(id)observer;
- (void)unregisterForegroundClientProcessObserver:(id)observer;
- (void)unregisterObserver:(id)observer forBundleIdentifier:(id)identifier;
@end

@implementation HDProcessStateManager

- (HDProcessStateManager)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDProcessStateManager)initWithApplicationStateMonitorProvider:(id)provider
{
  providerCopy = provider;
  v23.receiver = self;
  v23.super_class = HDProcessStateManager;
  v5 = [(HDProcessStateManager *)&v23 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_applicationStateMonitorProvider, providerCopy);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    processObserversByBundleID = v6->_processObserversByBundleID;
    v6->_processObserversByBundleID = v7;

    v6->_lock._os_unfair_lock_opaque = 0;
    v9 = HKCreateSerialDispatchQueue();
    clientCalloutQueue = v6->_clientCalloutQueue;
    v6->_clientCalloutQueue = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    processInfoByBundleID = v6->_processInfoByBundleID;
    v6->_processInfoByBundleID = v11;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    foregroundClientProcessObservers = v6->_foregroundClientProcessObservers;
    v6->_foregroundClientProcessObservers = weakObjectsHashTable;

    v15 = objc_alloc_init(MEMORY[0x277CBEB98]);
    foregroundClientBundleIdentifiers = v6->_foregroundClientBundleIdentifiers;
    v6->_foregroundClientBundleIdentifiers = v15;

    WeakRetained = objc_loadWeakRetained(&v6->_applicationStateMonitorProvider);
    createRBSProcessStateProvider = [WeakRetained createRBSProcessStateProvider];
    rbsProcessStateProvider = v6->_rbsProcessStateProvider;
    v6->_rbsProcessStateProvider = createRBSProcessStateProvider;

    mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [mEMORY[0x277D10AF8] addObject:v6];

    v21 = v6;
  }

  return v6;
}

- (void)dealloc
{
  mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
  [mEMORY[0x277D10AF8] removeObject:self];

  v4.receiver = self;
  v4.super_class = HDProcessStateManager;
  [(HDProcessStateManager *)&v4 dealloc];
}

- (BOOL)registerObserver:(id)observer forBundleIdentifier:(id)identifier
{
  v39[1] = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  identifierCopy = identifier;
  v8 = [identifierCopy length] == 0;
  _HKInitializeLogging();
  v9 = HKLogProcessState();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

  if (!v8)
  {
    if (v10)
    {
      v11 = HKLogProcessState();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        *&buf[4] = observerCopy;
        *&buf[12] = 2112;
        *&buf[14] = identifierCopy;
        _os_log_debug_impl(&dword_228986000, v11, OS_LOG_TYPE_DEBUG, "Registering observer %@ for process state changes for %@", buf, 0x16u);
      }
    }

    os_unfair_lock_lock(&self->_lock);
    v12 = observerCopy;
    v13 = identifierCopy;
    if (!self)
    {
      v16 = 0;
      goto LABEL_31;
    }

    os_unfair_lock_assert_owner(&self->_lock);
    v14 = [(NSMutableDictionary *)self->_processObserversByBundleID objectForKey:v13];
    weakObjectsHashTable = v14;
    if (v14)
    {
      [v14 addObject:v12];
      v16 = 1;
LABEL_30:

LABEL_31:
      os_unfair_lock_unlock(&self->_lock);
      goto LABEL_32;
    }

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [weakObjectsHashTable addObject:v12];
    [(NSMutableDictionary *)self->_processObserversByBundleID setObject:weakObjectsHashTable forKey:v13];
    interestedBundleIDs = [(BKSApplicationStateMonitor *)self->_applicationMonitor interestedBundleIDs];
    v19 = interestedBundleIDs;
    if (self->_applicationMonitor)
    {
      if ([interestedBundleIDs containsObject:v13])
      {
LABEL_28:
        v16 = 1;
LABEL_29:

        goto LABEL_30;
      }

      v20 = [v19 arrayByAddingObject:v13];
      _HKInitializeLogging();
      v21 = HKLogProcessState();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);

      if (v22)
      {
        v23 = HKLogProcessState();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v20;
          _os_log_debug_impl(&dword_228986000, v23, OS_LOG_TYPE_DEBUG, "Updating application state observer for processes: %@", buf, 0xCu);
        }
      }

      [(BKSApplicationStateMonitor *)self->_applicationMonitor updateInterestedBundleIDs:v20];
    }

    else
    {
      applicationStateMonitorProvider = [(HDProcessStateManager *)self applicationStateMonitorProvider];
      v39[0] = v13;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
      v26 = [applicationStateMonitorProvider createApplicationStateMonitorWithBundleIDs:v25 states:15 elevatedPriority:1];
      applicationMonitor = self->_applicationMonitor;
      self->_applicationMonitor = v26;

      LODWORD(v25) = self->_applicationMonitor == 0;
      _HKInitializeLogging();
      v28 = HKLogProcessState();
      v29 = v28;
      if (v25)
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v13;
          _os_log_error_impl(&dword_228986000, v29, OS_LOG_TYPE_ERROR, "Failed to create an application state monitor for %@.", buf, 0xCu);
        }

        v16 = 0;
        goto LABEL_29;
      }

      v30 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);

      if (v30)
      {
        v31 = HKLogProcessState();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v13;
          _os_log_debug_impl(&dword_228986000, v31, OS_LOG_TYPE_DEBUG, "Created an application state monitor for bundle identifier %@.", buf, 0xCu);
        }
      }

      objc_initWeak(location, self);
      v32 = self->_applicationMonitor;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __68__HDProcessStateManager__lock_registerObserver_forBundleIdentifier___block_invoke;
      v37 = &unk_27861D920;
      objc_copyWeak(v38, location);
      [(BKSApplicationStateMonitor *)v32 setHandler:buf];
      objc_destroyWeak(v38);
      objc_destroyWeak(location);
    }

    [(NSMutableDictionary *)self->_processInfoByBundleID removeObjectForKey:v13];
    v33 = self->_applicationMonitor;
    location[0] = MEMORY[0x277D85DD0];
    location[1] = 3221225472;
    location[2] = __68__HDProcessStateManager__lock_registerObserver_forBundleIdentifier___block_invoke_310;
    location[3] = &unk_27861D948;
    location[4] = self;
    [(BKSApplicationStateMonitor *)v33 applicationInfoForApplication:v13 completion:location];
    goto LABEL_28;
  }

  if (v10)
  {
    v17 = HKLogProcessState();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_228986000, v17, OS_LOG_TYPE_DEBUG, "Failed to register process missing a bundle identifier.", buf, 2u);
    }
  }

  v16 = 0;
LABEL_32:

  return v16;
}

- (void)unregisterObserver:(id)observer forBundleIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  identifierCopy = identifier;
  v8 = [identifierCopy length];
  _HKInitializeLogging();
  v9 = HKLogProcessState();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

  if (v8)
  {
    if (v10)
    {
      v11 = HKLogProcessState();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v18 = 138412546;
        v19 = observerCopy;
        v20 = 2112;
        v21 = identifierCopy;
        _os_log_debug_impl(&dword_228986000, v11, OS_LOG_TYPE_DEBUG, "Unregistering observer %@ for process state changes for %@", &v18, 0x16u);
      }
    }

    os_unfair_lock_lock(&self->_lock);
    v12 = identifierCopy;
    if (self)
    {
      v13 = observerCopy;
      os_unfair_lock_assert_owner(&self->_lock);
      v14 = [(NSMutableDictionary *)self->_processObserversByBundleID objectForKeyedSubscript:v12];
      [v14 removeObject:v13];

      allObjects = [v14 allObjects];
      v16 = [allObjects count];

      if (!v16)
      {
        [(NSMutableDictionary *)self->_processObserversByBundleID removeObjectForKey:v12];
      }
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else if (v10)
  {
    v17 = HKLogProcessState();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v18) = 0;
      _os_log_debug_impl(&dword_228986000, v17, OS_LOG_TYPE_DEBUG, "Failed to unregister process, empty bundle identifier.", &v18, 2u);
    }
  }
}

- (void)registerForegroundClientProcessObserver:(id)observer
{
  if (observer)
  {
    observerCopy = observer;
    os_unfair_lock_lock(&self->_lock);
    [(NSHashTable *)self->_foregroundClientProcessObservers addObject:observerCopy];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)unregisterForegroundClientProcessObserver:(id)observer
{
  if (observer)
  {
    observerCopy = observer;
    os_unfair_lock_lock(&self->_lock);
    [(NSHashTable *)self->_foregroundClientProcessObservers removeObject:observerCopy];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (unsigned)applicationStateForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = [(NSMutableDictionary *)self->_processInfoByBundleID objectForKeyedSubscript:identifierCopy];
    v6 = self->_applicationMonitor;
    os_unfair_lock_unlock(&self->_lock);
    if (v5)
    {
      v7 = v5[2];
    }

    else if (v6)
    {
      v7 = [(BKSApplicationStateMonitor *)v6 applicationStateForApplication:identifierCopy];
    }

    else
    {
      applicationStateMonitorProvider = [(HDProcessStateManager *)self applicationStateMonitorProvider];
      createApplicationStateMonitor = [applicationStateMonitorProvider createApplicationStateMonitor];

      v7 = [createApplicationStateMonitor applicationStateForApplication:identifierCopy];
      [createApplicationStateMonitor invalidate];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isApplicationInExtendedRuntimeSessionForBundleIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D46F50] identifierWithPid:{-[HDProcessStateManager processIdentifierForApplicationIdentifier:](self, "processIdentifierForApplicationIdentifier:", identifier)}];
  v5 = [(HDRBSProcessStateProvider *)self->_rbsProcessStateProvider stateForProcessIdentifier:v4];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  tags = [v5 tags];
  v7 = [tags countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(tags);
        }

        if ([*(*(&v13 + 1) + 8 * i) isEqualToString:@"CSLExtendedRuntimeSession"])
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v8 = [tags countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (BOOL)isApplicationFrontBoardVisibleForBundleIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  _HKInitializeLogging();
  v5 = HKLogProcessState();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    selfCopy2 = self;
    v14 = 2114;
    v15 = identifierCopy;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Verifying FrontBoard visibility for %{public}@", &v12, 0x16u);
  }

  v6 = [MEMORY[0x277D46F50] identifierWithPid:{-[HDProcessStateManager processIdentifierForApplicationIdentifier:](self, "processIdentifierForApplicationIdentifier:", identifierCopy)}];
  v7 = [(HDRBSProcessStateProvider *)self->_rbsProcessStateProvider stateForProcessIdentifier:v6];
  endowmentNamespaces = [v7 endowmentNamespaces];
  v9 = [endowmentNamespaces containsObject:*MEMORY[0x277D0AC90]];

  if (v9)
  {
    _HKInitializeLogging();
    v10 = HKLogProcessState();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      selfCopy2 = self;
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Current process identifier %{public}@ has FBS scene visibility endowment", &v12, 0x16u);
    }
  }

  return v9;
}

- (BOOL)applicationIsForeground:(id)foreground
{
  foregroundCopy = foreground;
  applicationStateMonitorProvider = [(HDProcessStateManager *)self applicationStateMonitorProvider];
  createApplicationStateMonitor = [applicationStateMonitorProvider createApplicationStateMonitor];

  LODWORD(applicationStateMonitorProvider) = [createApplicationStateMonitor applicationStateForApplication:foregroundCopy];
  [createApplicationStateMonitor invalidate];

  return applicationStateMonitorProvider == 8;
}

- (BOOL)processIsForeground:(int)foreground
{
  v3 = *&foreground;
  applicationStateMonitorProvider = [(HDProcessStateManager *)self applicationStateMonitorProvider];
  createApplicationStateMonitor = [applicationStateMonitorProvider createApplicationStateMonitor];

  LODWORD(v3) = [createApplicationStateMonitor mostElevatedApplicationStateForPID:v3];
  [createApplicationStateMonitor invalidate];

  return v3 == 8;
}

- (int)processIdentifierForApplicationIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  applicationStateMonitorProvider = [(HDProcessStateManager *)self applicationStateMonitorProvider];
  createApplicationStateMonitor = [applicationStateMonitorProvider createApplicationStateMonitor];

  v7 = [createApplicationStateMonitor applicationInfoForApplication:identifierCopy];
  [createApplicationStateMonitor invalidate];
  v8 = [v7 objectForKey:*MEMORY[0x277CEEE80]];
  v9 = v8;
  if (v8)
  {
    intValue = [v8 intValue];
  }

  else
  {
    intValue = -1;
  }

  v11 = [v7 objectForKey:*MEMORY[0x277CEEE70]];
  unsignedIntValue = [v11 unsignedIntValue];

  if (unsignedIntValue == 1 && intValue != -1)
  {
    _HKInitializeLogging();
    v14 = HKLogProcessState();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);

    if (v15)
    {
      v16 = HKLogProcessState();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v18 = 138543618;
        v19 = identifierCopy;
        v20 = 1026;
        v21 = intValue;
        _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_INFO, "Process %{public}@ is terminated but monitor reported pid %{public}d. Returning -1.", &v18, 0x12u);
      }
    }

    intValue = -1;
  }

  return intValue;
}

- (void)_handleBackboardApplicationInfoChanged:(uint64_t)changed
{
  v82 = *MEMORY[0x277D85DE8];
  if (!changed)
  {
    return;
  }

  changedCopy = changed;
  v3 = a2;
  os_unfair_lock_lock((changedCopy + 48));
  v4 = v3;
  os_unfair_lock_assert_owner((changedCopy + 48));
  v5 = *MEMORY[0x277CEEE68];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277CEEE68]];
  if (!v6)
  {
    goto LABEL_29;
  }

  v7 = objc_msgSend_copy(*(changedCopy + 64));
  v50 = changedCopy;
  v49 = v4;
  v8 = v4;
  objc_opt_self();
  v9 = objc_alloc_init(_HDProcessInfo);
  v10 = [v8 objectForKeyedSubscript:v5];
  v11 = objc_msgSend_copy(v10);
  bundleIdentifier = v9->_bundleIdentifier;
  v9->_bundleIdentifier = v11;

  v13 = [v8 objectForKeyedSubscript:*MEMORY[0x277CEEE70]];
  v9->_applicationState = [v13 unsignedIntValue];

  v14 = [v8 objectForKeyedSubscript:*MEMORY[0x277CEEE80]];

  v9->_pid = [v14 intValue];
  v48 = v6;
  [*(changedCopy + 64) setObject:v9 forKeyedSubscript:v6];

  v15 = v7;
  os_unfair_lock_assert_owner((changedCopy + 48));
  v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
  allKeys = [*(changedCopy + 64) allKeys];
  [v16 addObjectsFromArray:allKeys];

  allKeys2 = [v15 allKeys];
  [v16 addObjectsFromArray:allKeys2];

  v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v16;
  v52 = v20;
  v53 = v19;
  v56 = [obj countByEnumeratingWithState:&v58 objects:v72 count:16];
  if (!v56)
  {
    goto LABEL_25;
  }

  v55 = *v59;
  v51 = v15;
  do
  {
    v21 = 0;
    do
    {
      if (*v59 != v55)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v58 + 1) + 8 * v21);
      v23 = [*(changedCopy + 64) objectForKeyedSubscript:v22];
      v24 = [v15 objectForKeyedSubscript:v22];
      v25 = v24;
      if (v23)
      {
        v26 = v23[2];
        v57 = v23[3];
        if (!v24)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v26 = 0;
        if (!v24)
        {
          v57 = 0;
LABEL_10:
          v27 = 0;
          goto LABEL_14;
        }

        v57 = *(v24 + 12);
      }

      v27 = *(v24 + 8);
LABEL_14:
      v28 = v22;
      os_unfair_lock_assert_owner((changedCopy + 48));
      if (v26 != v27)
      {
        _HKInitializeLogging();
        v29 = HKLogProcessState();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = HDBKSApplicationStateString(v27);
          v31 = HDBKSApplicationStateString(v26);
          *buf = 138414338;
          *&buf[4] = v28;
          *&buf[12] = 1024;
          *&buf[14] = v57;
          *&buf[18] = 2114;
          *&buf[20] = v30;
          *&buf[28] = 2114;
          *&buf[30] = v31;
          *&buf[38] = 2048;
          v74 = v27 == 2;
          changedCopy = v50;
          *v75 = 2048;
          *&v75[2] = v26 == 2;
          v76 = 2048;
          v77 = v27 == 8;
          v78 = 2048;
          v79 = v26 == 8;
          v80 = 2048;
          v81 = v26 < 2;
          _os_log_impl(&dword_228986000, v29, OS_LOG_TYPE_DEFAULT, "Process %@ (%d) state changed %{public}@ -> %{public}@: suspended %ld -> %ld, foreground %ld -> %ld, terminated %ld", buf, 0x58u);
        }

        v32 = [*(changedCopy + 8) objectForKeyedSubscript:v28];
        allObjects = [v32 allObjects];

        v34 = *(changedCopy + 56);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __141__HDProcessStateManager__lock_notifyObserversProcessWithBundleIdentifier_processIdentifier_applicationStateChanged_previousApplicationState___block_invoke;
        block[3] = &unk_27861D970;
        v63 = allObjects;
        v65 = v27;
        v66 = v26;
        v64 = v28;
        v67 = v27 == 2;
        v68 = v26 == 2;
        v69 = v27 == 8;
        v70 = v26 == 8;
        v71 = v26 < 2;
        v35 = allObjects;
        dispatch_async(v34, block);

        v15 = v51;
        v20 = v52;
        v19 = v53;
      }

      v36 = v19;
      if (v26 == 8 || (v36 = v20, v27 == 8))
      {
        [v36 addObject:v28];
      }

      ++v21;
    }

    while (v56 != v21);
    v37 = [obj countByEnumeratingWithState:&v58 objects:v72 count:16];
    v56 = v37;
  }

  while (v37);
LABEL_25:

  if (([v19 isEqual:v20] & 1) == 0 && (objc_msgSend(*(changedCopy + 24), "isEqual:", v19) & 1) == 0)
  {
    allObjects2 = [*(changedCopy + 16) allObjects];
    v39 = objc_msgSend_copy(v19);
    v40 = objc_msgSend_copy(v20);
    v41 = *(changedCopy + 56);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __83__HDProcessStateManager__lock_handleProcessInfoChangedWithAllPreviousProcessInfos___block_invoke;
    *&buf[24] = &unk_278613830;
    *&buf[32] = allObjects2;
    v74 = v39;
    *v75 = v40;
    v42 = v40;
    v43 = v39;
    v44 = allObjects2;
    v45 = v41;
    v19 = v53;
    dispatch_async(v45, buf);

    v20 = v52;
  }

  v46 = objc_msgSend_copy(v19);
  v47 = *(changedCopy + 24);
  *(changedCopy + 24) = v46;

  v6 = v48;
  v4 = v49;
LABEL_29:

  os_unfair_lock_unlock((changedCopy + 48));
}

void __68__HDProcessStateManager__lock_registerObserver_forBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDProcessStateManager *)WeakRetained _handleBackboardApplicationInfoChanged:v3];
}

void __83__HDProcessStateManager__lock_handleProcessInfoChangedWithAllPreviousProcessInfos___block_invoke(uint64_t a1)
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

        [*(*(&v7 + 1) + 8 * v6++) foregroundClientProcessesDidChange:*(a1 + 40) previouslyForegroundBundleIdentifiers:{*(a1 + 48), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void __141__HDProcessStateManager__lock_notifyObserversProcessWithBundleIdentifier_processIdentifier_applicationStateChanged_previousApplicationState___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (*(a1 + 48) != *(a1 + 52) && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v7 processWithBundleIdentifier:*(a1 + 40) didTransitionFromState:*(a1 + 48) toState:*(a1 + 52)];
        }

        if (*(a1 + 56) == 1 && (*(a1 + 57) & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v7 processResumed:*(a1 + 40)];
        }

        if (*(a1 + 56) & 1) == 0 && *(a1 + 57) == 1 && (objc_opt_respondsToSelector())
        {
          [v7 processSuspended:*(a1 + 40)];
        }

        if (*(a1 + 58) == 1 && (*(a1 + 59) & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v7 processDidEnterBackground:*(a1 + 40)];
        }

        if (*(a1 + 58) & 1) == 0 && *(a1 + 59) == 1 && (objc_opt_respondsToSelector())
        {
          [v7 processDidEnterForeground:*(a1 + 40)];
        }

        if (*(a1 + 60) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v7 processTerminated:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (id)diagnosticDescription
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithString:@"Client processes:"];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allValues = [(NSMutableDictionary *)self->_processInfoByBundleID allValues];
  v5 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        if (v9)
        {
          v10 = *(v9 + 16);
          v11 = [MEMORY[0x277CCABB0] numberWithInt:*(v9 + 12)];
          v12 = *(v9 + 8);
        }

        else
        {
          v11 = [MEMORY[0x277CCABB0] numberWithInt:0];
          v10 = 0;
          v12 = 0;
        }

        v13 = HDBKSApplicationStateString(v12);
        [v3 appendFormat:@"\n\t%@ (%@) %@", v10, v11, v13];

        ++v8;
      }

      while (v6 != v8);
      v14 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
      v6 = v14;
    }

    while (v14);
  }

  return v3;
}

- (HDApplicationStateMonitorProvider)applicationStateMonitorProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_applicationStateMonitorProvider);

  return WeakRetained;
}

@end