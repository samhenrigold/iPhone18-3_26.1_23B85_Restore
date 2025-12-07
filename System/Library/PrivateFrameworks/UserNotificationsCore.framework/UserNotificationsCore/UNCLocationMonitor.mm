@interface UNCLocationMonitor
- (UNCLocationMonitor)init;
- (UNCLocationMonitor)initWithQueue:(id)queue locationManager:(id)manager;
- (UNCLocationMonitor)initWithQueue:(id)queue locationManager:(id)manager observable:(id)observable;
- (void)_queue_triggerDidFireForRegion:(id)region;
- (void)addObserver:(id)observer forBundleIdentifier:(id)identifier;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didStartMonitoringForRegion:(id)region;
- (void)markAsHavingReceivedLocation;
- (void)removeObserver:(id)observer forBundleIdentifier:(id)identifier;
- (void)setMonitoredRegions:(id)regions forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
@end

@implementation UNCLocationMonitor

- (UNCLocationMonitor)init
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.usernotificationsserver.LocationMonitor", v3);

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__9;
  v17 = __Block_byref_object_dispose__9;
  v18 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__UNCLocationMonitor_init__block_invoke;
  block[3] = &unk_1E85D6F48;
  v12 = &v13;
  selfCopy = self;
  v10 = selfCopy;
  v6 = v4;
  v11 = v6;
  dispatch_sync(v6, block);
  v7 = [(UNCLocationMonitor *)selfCopy initWithQueue:v6 locationManager:v14[5]];

  _Block_object_dispose(&v13, 8);
  return v7;
}

void __26__UNCLocationMonitor_init__block_invoke(void *a1)
{
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.bulletinboard"];
  v2 = objc_alloc(MEMORY[0x1E695FBE8]);
  v3 = [v7 bundlePath];
  v4 = [v2 initWithEffectiveBundlePath:v3 delegate:a1[4] onQueue:a1[5]];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (UNCLocationMonitor)initWithQueue:(id)queue locationManager:(id)manager
{
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  managerCopy = manager;
  queueCopy = queue;
  v10 = dispatch_queue_create("com.apple.usernotificationsserver.LocationMonitor.observable", v7);

  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_create("com.apple.usernotificationsserver.LocationMonitor.call-out", v11);

  v13 = [[UNCKeyedObservable alloc] initWithQueue:v10 callOutQueue:v12];
  v14 = [(UNCLocationMonitor *)self initWithQueue:queueCopy locationManager:managerCopy observable:v13];

  return v14;
}

- (UNCLocationMonitor)initWithQueue:(id)queue locationManager:(id)manager observable:(id)observable
{
  queueCopy = queue;
  managerCopy = manager;
  observableCopy = observable;
  v15.receiver = self;
  v15.super_class = UNCLocationMonitor;
  v12 = [(UNCLocationMonitor *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_locationManager, manager);
    objc_storeStrong(&v13->_observable, observable);
    objc_storeStrong(&v13->_queue, queue);
  }

  return v13;
}

- (void)addObserver:(id)observer forBundleIdentifier:(id)identifier
{
  observerCopy = observer;
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__UNCLocationMonitor_addObserver_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E85D6F20;
  block[4] = self;
  v12 = observerCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = observerCopy;
  dispatch_async(queue, block);
}

- (void)removeObserver:(id)observer forBundleIdentifier:(id)identifier
{
  observerCopy = observer;
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__UNCLocationMonitor_removeObserver_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E85D6F20;
  block[4] = self;
  v12 = observerCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = observerCopy;
  dispatch_sync(queue, block);
}

- (void)markAsHavingReceivedLocation
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__UNCLocationMonitor_markAsHavingReceivedLocation__block_invoke;
  block[3] = &unk_1E85D6F70;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)setMonitoredRegions:(id)regions forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  regionsCopy = regions;
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__UNCLocationMonitor_setMonitoredRegions_forBundleIdentifier_withCompletionHandler___block_invoke;
  v15[3] = &unk_1E85D7808;
  v16 = regionsCopy;
  v17 = identifierCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = regionsCopy;
  dispatch_async(queue, v15);
}

void __84__UNCLocationMonitor_setMonitoredRegions_forBundleIdentifier_withCompletionHandler___block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x1E69E9840];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __84__UNCLocationMonitor_setMonitoredRegions_forBundleIdentifier_withCompletionHandler___block_invoke_2;
  v55[3] = &unk_1E85D7BD0;
  v2 = *(a1 + 32);
  v56 = *(a1 + 40);
  v3 = [v2 bs_map:v55];
  v4 = [*(*(a1 + 48) + 8) monitoredRegions];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __84__UNCLocationMonitor_setMonitoredRegions_forBundleIdentifier_withCompletionHandler___block_invoke_3;
  v53[3] = &unk_1E85D7BF8;
  v54 = *(a1 + 40);
  v5 = [v4 objectsPassingTest:v53];

  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v49 objects:v68 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v50;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v50 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v49 + 1) + 8 * i);
        if (([v5 containsObject:v12] & 1) == 0)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v49 objects:v68 count:16];
    }

    while (v9);
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v45 objects:v67 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v46;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v46 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v45 + 1) + 8 * j);
        if (([v7 containsObject:v19] & 1) == 0)
        {
          [v13 addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v45 objects:v67 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1 + 40);
    v22 = v20;
    v23 = [v7 count];
    v24 = [v13 count];
    v25 = [v6 count];
    *buf = 138544130;
    v60 = v21;
    v61 = 2048;
    v62 = v23;
    v63 = 2048;
    v64 = v24;
    v65 = 2048;
    v66 = v25;
    _os_log_impl(&dword_1DA7A9000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting %ld monitored regions [ stop: %ld start: %ld ]", buf, 0x2Au);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v26 = v13;
  v27 = [v26 countByEnumeratingWithState:&v41 objects:v58 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v42;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v42 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [*(*(a1 + 48) + 8) stopMonitoringForRegion:*(*(&v41 + 1) + 8 * k)];
      }

      v28 = [v26 countByEnumeratingWithState:&v41 objects:v58 count:16];
    }

    while (v28);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v31 = v6;
  v32 = [v31 countByEnumeratingWithState:&v37 objects:v57 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v38;
    do
    {
      for (m = 0; m != v33; ++m)
      {
        if (*v38 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [*(*(a1 + 48) + 8) startMonitoringForRegion:{*(*(&v37 + 1) + 8 * m), v37}];
      }

      v33 = [v31 countByEnumeratingWithState:&v37 objects:v57 count:16];
    }

    while (v33);
  }

  v36 = *(a1 + 56);
  if (v36)
  {
    (*(v36 + 16))();
  }
}

id __84__UNCLocationMonitor_setMonitoredRegions_forBundleIdentifier_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  [v3 setOnBehalfOfBundleId:*(a1 + 32)];

  return v3;
}

uint64_t __84__UNCLocationMonitor_setMonitoredRegions_forBundleIdentifier_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 onBehalfOfBundleId];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  v5 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_ERROR))
  {
    [UNCLocationMonitor locationManager:errorCopy didFailWithError:v5];
  }
}

- (void)locationManager:(id)manager didStartMonitoringForRegion:(id)region
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    identifier = [region identifier];
    un_logDigest = [identifier un_logDigest];
    v9 = 138543362;
    v10 = un_logDigest;
    _os_log_impl(&dword_1DA7A9000, v6, OS_LOG_TYPE_DEFAULT, "Did start monitoring region %{public}@", &v9, 0xCu);
  }
}

- (void)_queue_triggerDidFireForRegion:(id)region
{
  v20 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  dispatch_assert_queue_V2(self->_queue);
  onBehalfOfBundleId = [regionCopy onBehalfOfBundleId];
  v6 = [(UNCLocationMonitor *)self isBundleIdentifierAuthorizedForRegionMonitoring:onBehalfOfBundleId];
  v7 = *MEMORY[0x1E6983378];
  v8 = os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = v7;
      identifier = [regionCopy identifier];
      un_logDigest = [identifier un_logDigest];
      *buf = 138543362;
      v19 = un_logDigest;
      _os_log_impl(&dword_1DA7A9000, v9, OS_LOG_TYPE_DEFAULT, "Location trigger fired for region %{public}@", buf, 0xCu);
    }

    observable = self->_observable;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __53__UNCLocationMonitor__queue_triggerDidFireForRegion___block_invoke;
    v16[3] = &unk_1E85D7C20;
    v16[4] = self;
    v17 = regionCopy;
    [(UNCKeyedObservable *)observable notifyObserversKey:onBehalfOfBundleId usingBlock:v16];
  }

  else if (v8)
  {
    v13 = v7;
    identifier2 = [regionCopy identifier];
    un_logDigest2 = [identifier2 un_logDigest];
    *buf = 138543362;
    v19 = un_logDigest2;
    _os_log_impl(&dword_1DA7A9000, v13, OS_LOG_TYPE_DEFAULT, "Location trigger fired but ignored for region %{public}@", buf, 0xCu);
  }
}

void __53__UNCLocationMonitor__queue_triggerDidFireForRegion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = [v3 onBehalfOfBundleId];
    [v6 locationMonitor:v4 triggerDidFireForRegion:v3 forBundleIdentifier:v5];
  }
}

- (void)locationManager:(uint64_t)a1 didFailWithError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1DA7A9000, a2, OS_LOG_TYPE_ERROR, "CLLocationManager failed with error %{public}@", &v2, 0xCu);
}

@end