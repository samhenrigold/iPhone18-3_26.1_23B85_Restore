@interface LCSCaptureApplicationTCCMonitor
+ (LCSCaptureApplicationTCCMonitor)sharedMonitor;
+ (id)TCCServer;
- (BOOL)_bundleHasCameraEntitlement:(id)entitlement;
- (LCSCaptureApplicationTCCMonitor)init;
- (id)_fetchCameraTCCUpdatesForBundleIdentifiers:(id)identifiers;
- (id)_tccUpdateForAuthorizationRecord:(id)record;
- (id)addObserver:(id)observer forBundleIdentifiers:(id)identifiers;
- (unint64_t)cameraTCCStatusForBundleIdentifier:(id)identifier;
- (void)_beginObservingTCC;
- (void)_notifyObserversOfUpdates:(id)updates;
- (void)_observerQueue_fetchInitialTCCStateForUpdatedBundleIdentifiers;
- (void)_observerQueue_notifyObserversOfUpdates:(id)updates;
- (void)_removeObserver:(id)observer;
- (void)_setupQueue_setupTCCEventsSubscription;
- (void)_tccUpdatesAccessQueue_handleTCCEventOfType:(unint64_t)type authorizationRecord:(id)record;
@end

@implementation LCSCaptureApplicationTCCMonitor

+ (LCSCaptureApplicationTCCMonitor)sharedMonitor
{
  if (sharedMonitor_onceToken != -1)
  {
    +[LCSCaptureApplicationTCCMonitor sharedMonitor];
  }

  v3 = sharedMonitor_sharedMonitor;

  return v3;
}

uint64_t __48__LCSCaptureApplicationTCCMonitor_sharedMonitor__block_invoke()
{
  v0 = objc_alloc_init(LCSCaptureApplicationTCCMonitor);
  v1 = sharedMonitor_sharedMonitor;
  sharedMonitor_sharedMonitor = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)TCCServer
{
  if (TCCServer_onceToken != -1)
  {
    +[LCSCaptureApplicationTCCMonitor TCCServer];
  }

  v3 = TCCServer_tccServer;

  return v3;
}

void __44__LCSCaptureApplicationTCCMonitor_TCCServer__block_invoke()
{
  Serial = BSDispatchQueueCreateSerial();
  v0 = tcc_server_create();
  v1 = TCCServer_tccServer;
  TCCServer_tccServer = v0;
}

- (LCSCaptureApplicationTCCMonitor)init
{
  v10.receiver = self;
  v10.super_class = LCSCaptureApplicationTCCMonitor;
  v2 = [(LCSCaptureApplicationTCCMonitor *)&v10 init];
  if (v2)
  {
    Serial = BSDispatchQueueCreateSerial();
    observerQueue = v2->_observerQueue;
    v2->_observerQueue = Serial;

    v5 = BSDispatchQueueCreateSerial();
    tccUpdatesAccessQueue = v2->_tccUpdatesAccessQueue;
    v2->_tccUpdatesAccessQueue = v5;

    v7 = BSDispatchQueueCreateSerial();
    tccSetupQueue = v2->_tccSetupQueue;
    v2->_tccSetupQueue = v7;
  }

  return v2;
}

- (id)addObserver:(id)observer forBundleIdentifiers:(id)identifiers
{
  observerCopy = observer;
  v7 = [MEMORY[0x277CBEB98] setWithArray:identifiers];
  v8 = objc_alloc_init(_LCSCaptureApplicationTCCObservationToken);
  [(_LCSCaptureApplicationTCCObservationToken *)v8 setObserver:observerCopy];
  [(_LCSCaptureApplicationTCCObservationToken *)v8 setBundleIdentifiers:v7];
  objc_initWeak(&location, self);
  observerQueue = self->_observerQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__LCSCaptureApplicationTCCMonitor_addObserver_forBundleIdentifiers___block_invoke;
  v15[3] = &unk_279825048;
  objc_copyWeak(&v20, &location);
  v16 = observerCopy;
  v17 = v7;
  v10 = v8;
  v18 = v10;
  selfCopy = self;
  v11 = v7;
  v12 = observerCopy;
  dispatch_async(observerQueue, v15);
  v13 = v10;

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v13;
}

void __68__LCSCaptureApplicationTCCMonitor_addObserver_forBundleIdentifiers___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[3];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __68__LCSCaptureApplicationTCCMonitor_addObserver_forBundleIdentifiers___block_invoke_2;
    v15[3] = &unk_279825020;
    v16 = *(a1 + 32);
    v5 = [v4 bs_firstObjectPassingTest:v15];
    v6 = v5;
    if (v5)
    {
      v7 = *(a1 + 40);
      v8 = [v5 bundleIdentifiers];
      v9 = [v7 isEqualToSet:v8];
    }

    else
    {
      v9 = 0;
    }

    v10 = v3[3];
    if (v10)
    {
      v11 = [v10 mutableCopy];
    }

    else
    {
      v11 = [MEMORY[0x277CBEB58] set];
    }

    v12 = v11;
    if (v6)
    {
      [v11 removeObject:v6];
    }

    [v12 addObject:*(a1 + 48)];
    v13 = [v12 copy];
    v14 = v3[3];
    v3[3] = v13;

    if ((v9 & 1) == 0)
    {
      [*(a1 + 56) _observerQueue_fetchInitialTCCStateForUpdatedBundleIdentifiers];
    }

    if ([v3[3] count] == 1)
    {
      [*(a1 + 56) _beginObservingTCC];
    }
  }
}

BOOL __68__LCSCaptureApplicationTCCMonitor_addObserver_forBundleIdentifiers___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 observer];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (unint64_t)cameraTCCStatusForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  tccUpdatesAccessQueue = self->_tccUpdatesAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__LCSCaptureApplicationTCCMonitor_cameraTCCStatusForBundleIdentifier___block_invoke;
  block[3] = &unk_279825070;
  block[4] = self;
  v10 = identifierCopy;
  v11 = &v12;
  v6 = identifierCopy;
  dispatch_sync(tccUpdatesAccessQueue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __70__LCSCaptureApplicationTCCMonitor_cameraTCCStatusForBundleIdentifier___block_invoke(void *a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 40) objectForKeyedSubscript:a1[5]];
  v3 = v2;
  if (v2)
  {
    *(*(a1[6] + 8) + 24) = [v2 tccStatus];
  }

  if (!*(*(a1[6] + 8) + 24))
  {
    v4 = a1[4];
    v16[0] = a1[5];
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v6 = [v4 _fetchCameraTCCUpdatesForBundleIdentifiers:v5];

    v7 = [v6 firstObject];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 tccStatus];
      if (v9)
      {
        v10 = v9;
        *(*(a1[6] + 8) + 24) = v9;
        v11 = [*(a1[4] + 40) mutableCopy];
        v12 = [[LCSCaptureApplicationTCCUpdate alloc] initWithBundleIdentifier:a1[5] status:v10];
        [v11 setObject:v12 forKeyedSubscript:a1[5]];

        v13 = [v11 copy];
        v14 = a1[4];
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;
      }
    }
  }
}

- (void)_removeObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__LCSCaptureApplicationTCCMonitor__removeObserver___block_invoke;
  v7[3] = &unk_279825098;
  objc_copyWeak(&v10, &location);
  v8 = observerCopy;
  selfCopy = self;
  v6 = observerCopy;
  dispatch_async(observerQueue, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __51__LCSCaptureApplicationTCCMonitor__removeObserver___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[3] allObjects];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__LCSCaptureApplicationTCCMonitor__removeObserver___block_invoke_2;
    v9[3] = &unk_279825020;
    v10 = a1[4];
    v5 = [v4 bs_firstObjectPassingTest:v9];

    if (v5)
    {
      v6 = [v3[3] mutableCopy];
      [v6 removeObject:v5];
      v7 = [v6 copy];
      v8 = v3[3];
      v3[3] = v7;

      if (![v3[3] count])
      {
        [a1[5] _endObservingTCC];
      }
    }
  }
}

BOOL __51__LCSCaptureApplicationTCCMonitor__removeObserver___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 observer];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)_observerQueue_fetchInitialTCCStateForUpdatedBundleIdentifiers
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(NSSet *)self->_observerQueue_observerTokens count])
  {
    v3 = [MEMORY[0x277CBEB58] set];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = self->_observerQueue_observerTokens;
    v5 = [(NSSet *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

          bundleIdentifiers = [*(*(&v17 + 1) + 8 * v8) bundleIdentifiers];
          allObjects = [bundleIdentifiers allObjects];
          [v3 addObjectsFromArray:allObjects];

          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSSet *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    objc_initWeak(&location, self);
    tccUpdatesAccessQueue = self->_tccUpdatesAccessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__LCSCaptureApplicationTCCMonitor__observerQueue_fetchInitialTCCStateForUpdatedBundleIdentifiers__block_invoke;
    block[3] = &unk_2798250C0;
    objc_copyWeak(&v15, &location);
    v14 = v3;
    v12 = v3;
    dispatch_async(tccUpdatesAccessQueue, block);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __97__LCSCaptureApplicationTCCMonitor__observerQueue_fetchInitialTCCStateForUpdatedBundleIdentifiers__block_invoke(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_39;
  }

  v4 = [WeakRetained[5] allKeys];
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [MEMORY[0x277CBEB58] set];
  v40 = a1;
  v41 = v4;
  if ([v4 count] && objc_msgSend(*(a1 + 32), "count"))
  {
    v7 = [*(a1 + 32) allObjects];
    v8 = [v7 differenceFromArray:v4];

    if ([v8 hasChanges])
    {
      v9 = v3;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v52 objects:v58 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v53;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v53 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v52 + 1) + 8 * i);
            v16 = [v15 object];
            v17 = [v15 changeType];
            v18 = v6;
            if (v17 == 1 || (v19 = [v15 changeType], v18 = v5, !v19))
            {
              [v18 addObject:v16];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v52 objects:v58 count:16];
        }

        while (v12);
      }

      v3 = v9;
      v4 = v41;
    }
  }

  else
  {
    if (![*(a1 + 32) count])
    {
      goto LABEL_19;
    }

    v8 = [*(a1 + 32) allObjects];
    [v5 addObjectsFromArray:v8];
  }

LABEL_19:
  if ([v6 count] || objc_msgSend(v5, "count"))
  {
    v20 = [MEMORY[0x277CBEB18] array];
    v21 = [v3[5] mutableCopy];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v22 = v6;
    v23 = [v22 countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v49;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v49 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [v21 setObject:0 forKeyedSubscript:*(*(&v48 + 1) + 8 * j)];
        }

        v24 = [v22 countByEnumeratingWithState:&v48 objects:v57 count:16];
      }

      while (v24);
    }

    v27 = [v5 allObjects];
    v39 = v3;
    v28 = [v3 _fetchCameraTCCUpdatesForBundleIdentifiers:v27];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v29 = v28;
    v30 = [v29 countByEnumeratingWithState:&v44 objects:v56 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v45;
      do
      {
        for (k = 0; k != v31; ++k)
        {
          if (*v45 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v44 + 1) + 8 * k);
          v35 = [v34 bundleIdentifier];
          [v21 setObject:v34 forKeyedSubscript:v35];
          [v20 addObject:v34];
        }

        v31 = [v29 countByEnumeratingWithState:&v44 objects:v56 count:16];
      }

      while (v31);
    }

    v36 = [v21 copy];
    v3 = v39;
    v37 = v39[5];
    v39[5] = v36;

    if ([v20 count])
    {
      [v39 _notifyObserversOfUpdates:v20];
    }

    v38 = v39[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__LCSCaptureApplicationTCCMonitor__observerQueue_fetchInitialTCCStateForUpdatedBundleIdentifiers__block_invoke_2;
    block[3] = &unk_279824CE0;
    objc_copyWeak(&v43, (v40 + 40));
    dispatch_async(v38, block);
    objc_destroyWeak(&v43);

    v4 = v41;
  }

LABEL_39:
}

void __97__LCSCaptureApplicationTCCMonitor__observerQueue_fetchInitialTCCStateForUpdatedBundleIdentifiers__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _setupQueue_setupTCCEventsSubscription];
    WeakRetained = v2;
  }
}

- (id)_fetchCameraTCCUpdatesForBundleIdentifiers:(id)identifiers
{
  v42 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v7 = tcc_service_singleton_for_CF_name();
  v8 = tcc_message_options_create();
  tcc_message_options_set_reply_handler_policy();
  tcc_message_options_set_request_prompt_policy();
  tCCServer = [objc_opt_class() TCCServer];
  v33 = MEMORY[0x277D85DD0];
  v34 = 3221225472;
  v35 = __78__LCSCaptureApplicationTCCMonitor__fetchCameraTCCUpdatesForBundleIdentifiers___block_invoke;
  v36 = &unk_2798250E8;
  selfCopy = self;
  v38 = identifiersCopy;
  v39 = array;
  v10 = array2;
  v40 = v10;
  v25 = v8;
  v26 = v7;
  tcc_server_message_get_authorization_records_by_service();

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __78__LCSCaptureApplicationTCCMonitor__fetchCameraTCCUpdatesForBundleIdentifiers___block_invoke_2;
  v31[3] = &unk_279825110;
  v23 = v39;
  v24 = v38;
  v32 = v23;
  v11 = [v38 bs_filter:v31];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v41 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        v17 = [(LCSCaptureApplicationTCCMonitor *)self _bundleHasCameraEntitlement:v16];
        v18 = [LCSCaptureApplicationTCCUpdate alloc];
        if (v17)
        {
          v19 = 4;
        }

        else
        {
          v19 = 1;
        }

        v20 = [(LCSCaptureApplicationTCCUpdate *)v18 initWithBundleIdentifier:v16 status:v19];
        [v10 addObject:v20];
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v41 count:16];
    }

    while (v13);
  }

  v21 = [v10 copy];

  return v21;
}

void __78__LCSCaptureApplicationTCCMonitor__fetchCameraTCCUpdatesForBundleIdentifiers___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && !a3)
  {
    v4 = [*(a1 + 32) _tccUpdateForAuthorizationRecord:a2];
    if (v4)
    {
      v5 = *(a1 + 40);
      v9 = v4;
      v6 = [v4 bundleIdentifier];
      LODWORD(v5) = [v5 containsObject:v6];

      v4 = v9;
      if (v5)
      {
        v7 = *(a1 + 48);
        v8 = [v9 bundleIdentifier];
        [v7 addObject:v8];

        [*(a1 + 56) addObject:v9];
        v4 = v9;
      }
    }
  }
}

- (BOOL)_bundleHasCameraEntitlement:(id)entitlement
{
  v3 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:entitlement allowPlaceholder:1 error:0];
  entitlements = [v3 entitlements];
  v5 = objc_opt_self();
  v6 = [entitlements objectForKey:@"com.apple.private.tcc.allow" ofClass:v5];

  LOBYTE(v5) = [v6 containsObject:*MEMORY[0x277D6C120]];
  return v5;
}

- (void)_beginObservingTCC
{
  objc_initWeak(&location, self);
  tccSetupQueue = self->_tccSetupQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__LCSCaptureApplicationTCCMonitor__beginObservingTCC__block_invoke;
  v4[3] = &unk_279824CE0;
  objc_copyWeak(&v5, &location);
  dispatch_async(tccSetupQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __53__LCSCaptureApplicationTCCMonitor__beginObservingTCC__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _setupQueue_setupTCCEventsSubscription];
    WeakRetained = v2;
  }
}

- (void)_setupQueue_setupTCCEventsSubscription
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D6C120];
  v4 = xpc_array_create(0, 0);
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__1;
  v36 = __Block_byref_object_dispose__1;
  v37 = 0;
  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__LCSCaptureApplicationTCCMonitor__setupQueue_setupTCCEventsSubscription__block_invoke;
  block[3] = &unk_279824DC8;
  block[4] = self;
  block[5] = &v32;
  dispatch_sync(observerQueue, block);
  v6 = [MEMORY[0x277CBEB58] set];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = v33[5];
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v41 count:16];
  if (v8)
  {
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v7);
        }

        bundleIdentifiers = [*(*(&v27 + 1) + 8 * i) bundleIdentifiers];
        allObjects = [bundleIdentifiers allObjects];
        [v6 addObjectsFromArray:allObjects];
      }

      v8 = [v7 countByEnumeratingWithState:&v27 objects:v41 count:16];
    }

    while (v8);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v40 count:16];
  if (v14)
  {
    v15 = *v24;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v13);
        }

        xpc_array_set_string(v4, 0xFFFFFFFFFFFFFFFFLL, [*(*(&v23 + 1) + 8 * j) cStringUsingEncoding:4]);
      }

      v14 = [v13 countByEnumeratingWithState:&v23 objects:v40 count:16];
    }

    while (v14);
  }

  v17 = v3;
  keys = [v3 UTF8String];
  v18 = v4;
  values = v18;
  v19 = xpc_dictionary_create(&keys, &values, 1uLL);
  v20 = tcc_events_filter_create_with_criteria();
  objc_initWeak(&location, self);
  [@"com.apple.LockedContentServices.TCCMonitor" cStringUsingEncoding:4];
  objc_copyWeak(&v21, &location);
  tcc_events_subscribe();
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v32, 8);
}

void __73__LCSCaptureApplicationTCCMonitor__setupQueue_setupTCCEventsSubscription__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _tccUpdatesAccessQueue_handleTCCEventOfType:a2 authorizationRecord:v7];
  }
}

- (void)_tccUpdatesAccessQueue_handleTCCEventOfType:(unint64_t)type authorizationRecord:(id)record
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (record)
  {
    v5 = [(LCSCaptureApplicationTCCMonitor *)self _tccUpdateForAuthorizationRecord:record];
    if (v5)
    {
      v6 = [(NSDictionary *)self->_tccUpdatesAccessQueue_latestTCCUpdatesByBundleIdentifier mutableCopy];
      bundleIdentifier = [v5 bundleIdentifier];
      [v6 setObject:v5 forKeyedSubscript:bundleIdentifier];

      v8 = [v6 copy];
      tccUpdatesAccessQueue_latestTCCUpdatesByBundleIdentifier = self->_tccUpdatesAccessQueue_latestTCCUpdatesByBundleIdentifier;
      self->_tccUpdatesAccessQueue_latestTCCUpdatesByBundleIdentifier = v8;

      v11[0] = v5;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
      [(LCSCaptureApplicationTCCMonitor *)self _notifyObserversOfUpdates:v10];
    }
  }
}

- (id)_tccUpdateForAuthorizationRecord:(id)record
{
  recordCopy = record;
  v4 = tcc_authorization_record_get_subject_identity();
  if (tcc_identity_get_type())
  {
    v5 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithCString:tcc_identity_get_identifier() encoding:4];
    v7 = [LCSCaptureApplicationTCCUpdate alloc];
    authorization_right = tcc_authorization_record_get_authorization_right();
    if (authorization_right > 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = qword_256184F88[authorization_right];
    }

    v5 = [(LCSCaptureApplicationTCCUpdate *)v7 initWithBundleIdentifier:v6 status:v9];
  }

  return v5;
}

- (void)_notifyObserversOfUpdates:(id)updates
{
  updatesCopy = updates;
  objc_initWeak(&location, self);
  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__LCSCaptureApplicationTCCMonitor__notifyObserversOfUpdates___block_invoke;
  block[3] = &unk_2798250C0;
  objc_copyWeak(&v9, &location);
  v8 = updatesCopy;
  v6 = updatesCopy;
  dispatch_async(observerQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __61__LCSCaptureApplicationTCCMonitor__notifyObserversOfUpdates___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _observerQueue_notifyObserversOfUpdates:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_observerQueue_notifyObserversOfUpdates:(id)updates
{
  v21 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  allObjects = [(NSSet *)self->_observerQueue_observerTokens allObjects];
  v6 = [allObjects copy];

  if ([v6 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = __75__LCSCaptureApplicationTCCMonitor__observerQueue_notifyObserversOfUpdates___block_invoke;
          v15[3] = &unk_279825160;
          v15[4] = v11;
          v12 = [updatesCopy bs_filter:v15];
          observer = [v11 observer];
          [observer tccMonitor:self didUpdateCameraTCCStatuses:v12];
        }

        v8 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }
  }
}

uint64_t __75__LCSCaptureApplicationTCCMonitor__observerQueue_notifyObserversOfUpdates___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 bundleIdentifiers];
  v5 = [v3 bundleIdentifier];

  v6 = [v4 containsObject:v5];
  return v6;
}

uint64_t __51__LCSCaptureApplicationTCCMonitor__endObservingTCC__block_invoke()
{
  v0 = [@"com.apple.LockedContentServices.TCCMonitor" cStringUsingEncoding:4];

  return MEMORY[0x2821D0B00](v0);
}

@end