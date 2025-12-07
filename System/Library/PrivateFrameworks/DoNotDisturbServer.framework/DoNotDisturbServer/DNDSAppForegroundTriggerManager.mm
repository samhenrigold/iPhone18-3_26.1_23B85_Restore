@interface DNDSAppForegroundTriggerManager
- (DNDSAppForegroundTriggerManager)init;
- (DNDSAppForegroundTriggerManagerDataSource)dataSource;
- (void)_coalescingQueue_coalesceWithTriggerConfiguration:(id)configuration event:(id)event;
- (void)_coalescingQueue_resetCoalescingTimer;
- (void)_configureAppForegroundTriggerWithConfiguration:(id)configuration;
- (void)_refreshIfNeccessaryForEvent:(id)event;
- (void)_refreshWithTriggerConfiguration:(id)configuration event:(id)event;
- (void)refresh;
@end

@implementation DNDSAppForegroundTriggerManager

- (DNDSAppForegroundTriggerManager)init
{
  v11.receiver = self;
  v11.super_class = DNDSAppForegroundTriggerManager;
  v2 = [(DNDSAppForegroundTriggerManager *)&v11 init];
  if (v2)
  {
    v3 = [DNDSWorkloop serialQueueTargetingSharedWorkloop:@"com.apple.donotdisturb.private.biome-app-launch.queue"];
    biomeQueue = v2->_biomeQueue;
    v2->_biomeQueue = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.donotdisturb.appForeground.coalescing", v5);
    coalescingQueue = v2->_coalescingQueue;
    v2->_coalescingQueue = v6;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    sinks = v2->_sinks;
    v2->_sinks = dictionary;
  }

  return v2;
}

- (void)refresh
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [WeakRetained appForegroundTriggerConfigurationForAppForegroundTriggerManager:self];

  [(DNDSAppForegroundTriggerManager *)self _configureAppForegroundTriggerWithConfiguration:v4];
  [(DNDSAppForegroundTriggerManager *)self _refreshWithTriggerConfiguration:v4 event:0];
  v5 = DNDSLogAppForegroundTrigger;
  if (os_log_type_enabled(DNDSLogAppForegroundTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Updated assertions for app launch triggers: configuration=%@", &v6, 0xCu);
  }
}

- (void)_refreshWithTriggerConfiguration:(id)configuration event:(id)event
{
  v61 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  eventCopy = event;
  [(DNDSAppForegroundTriggerManager *)self dataSource];
  v57 = 0;
  v46 = v45 = self;
  v7 = [v46 triggerManager:self assertionsWithClientIdentifer:@"com.apple.donotdisturb.private.app-launch" error:&v57];
  v8 = v57;
  v9 = MEMORY[0x277CBEB98];
  v44 = configurationCopy;
  triggeringBundleIdentifiers = [configurationCopy triggeringBundleIdentifiers];
  v47 = [v9 setWithArray:triggeringBundleIdentifiers];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v54;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v54 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v53 + 1) + 8 * i);
        source = [v16 source];
        deviceIdentifier = [source deviceIdentifier];

        if (!deviceIdentifier)
        {
          details = [v16 details];
          identifier = [details identifier];

          if ([identifier hasSuffix:@".donotdisturb.trigger"])
          {
            v21 = [identifier stringByReplacingOccurrencesOfString:@".donotdisturb.trigger" withString:&stru_285C26090];

            if (([v47 containsObject:v21] & 1) == 0)
            {
              v22 = DNDSLogAppForegroundTrigger;
              if (os_log_type_enabled(DNDSLogAppForegroundTrigger, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v59 = v21;
                _os_log_impl(&dword_24912E000, v22, OS_LOG_TYPE_DEFAULT, "Don't have trigger for identifier '%@'. Invalidating...", buf, 0xCu);
              }

              uUID = [v16 UUID];
              v52 = v8;
              v24 = [v46 triggerManager:v45 invalidateModeAssertionWithUUID:uUID reason:3 reasonOverride:0 clientIdentifier:@"com.apple.donotdisturb.private.app-launch" error:&v52];
              v25 = v52;

              v8 = v25;
            }
          }

          else
          {
            v21 = identifier;
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v53 objects:v60 count:16];
    }

    while (v13);
  }

  if (eventCopy)
  {
    v26 = DNDSLogAppForegroundTrigger;
    v27 = v44;
    if (os_log_type_enabled(DNDSLogAppForegroundTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v59 = eventCopy;
      _os_log_impl(&dword_24912E000, v26, OS_LOG_TYPE_DEFAULT, "Refreshing with event %@", buf, 0xCu);
    }

    eventBody = [eventCopy eventBody];
    isStarting = [eventBody isStarting];

    eventBody2 = [eventCopy eventBody];
    bundleID = [eventBody2 bundleID];

    v32 = [v44 modeIdentifierForBundleIdentifier:bundleID];
    v33 = v32;
    if (isStarting)
    {
      v34 = objc_alloc_init(MEMORY[0x277D05A40]);
      v35 = [bundleID stringByAppendingString:@".donotdisturb.trigger"];
      [v34 setIdentifier:v35];

      [v34 setLifetime:0];
      [v34 setModeIdentifier:v33];
      [v34 setReason:3];
      v51 = v8;
      v36 = [v46 triggerManager:v45 takeModeAssertionWithDetails:v34 clientIdentifier:@"com.apple.donotdisturb.private.app-launch" error:&v51];
      v37 = v51;

      v8 = v37;
    }

    else
    {
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __74__DNDSAppForegroundTriggerManager__refreshWithTriggerConfiguration_event___block_invoke;
      v49[3] = &unk_278F8A0B0;
      v50 = v32;
      v38 = [v11 bs_filter:v49];
      firstObject = [v38 firstObject];

      if (firstObject)
      {
        uUID2 = [firstObject UUID];
        v48 = v8;
        v41 = [v46 triggerManager:v45 invalidateModeAssertionWithUUID:uUID2 reason:3 reasonOverride:0 clientIdentifier:@"com.apple.donotdisturb.private.app-launch" error:&v48];
        v42 = v48;

        v8 = v42;
      }

      v34 = v50;
    }
  }

  else
  {
    v27 = v44;
  }
}

uint64_t __74__DNDSAppForegroundTriggerManager__refreshWithTriggerConfiguration_event___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 details];
  v4 = [v3 modeIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (void)_configureAppForegroundTriggerWithConfiguration:(id)configuration
{
  v26 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  triggeringBundleIdentifiers = [configurationCopy triggeringBundleIdentifiers];
  v7 = triggeringBundleIdentifiers;
  if (triggeringBundleIdentifiers)
  {
    array = triggeringBundleIdentifiers;
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  v9 = array;

  triggeringBundleIdentifiers2 = [(DNDSAppForegroundTriggerConfiguration *)self->_currentTriggerConfiguration triggeringBundleIdentifiers];
  v11 = triggeringBundleIdentifiers2;
  if (triggeringBundleIdentifiers2)
  {
    array2 = triggeringBundleIdentifiers2;
  }

  else
  {
    array2 = [MEMORY[0x277CBEA60] array];
  }

  v13 = array2;

  v14 = [(NSMutableDictionary *)self->_sinks objectForKeyedSubscript:@"system"];
  if (([v9 isEqual:v13] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_sinks setObject:0 forKeyedSubscript:@"system"];
    [v14 cancel];

    objc_storeStrong(&self->_currentTriggerConfiguration, configuration);
    v14 = 0;
  }

  if (![v9 count] || v14)
  {
    if (![v9 count] && v14)
    {
      [v14 cancel];
      [(NSMutableDictionary *)self->_sinks removeObjectForKey:@"system"];
    }
  }

  else
  {
    v22 = configurationCopy;
    v15 = DNDSLogAppForegroundTrigger;
    if (os_log_type_enabled(DNDSLogAppForegroundTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = v9;
      _os_log_impl(&dword_24912E000, v15, OS_LOG_TYPE_DEFAULT, "Adding biome app launch event monitor for %{public}@", buf, 0xCu);
    }

    v16 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"com.apple.donotdisturb.appLaunch" targetQueue:self->_biomeQueue];
    appLaunch = [MEMORY[0x277CF1B58] appLaunch];
    publisher = [appLaunch publisher];
    v19 = [MEMORY[0x277CBEB98] setWithArray:v9];
    v20 = [publisher filterWithKeyPath:@"eventBody.bundleID" comparison:3 value:v19];
    v21 = [v20 subscribeOn:v16];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __83__DNDSAppForegroundTriggerManager__configureAppForegroundTriggerWithConfiguration___block_invoke_28;
    v23[3] = &unk_278F8A0F8;
    v23[4] = self;
    v14 = [v21 sinkWithCompletion:&__block_literal_global_1 receiveInput:v23];

    [(NSMutableDictionary *)self->_sinks setObject:v14 forKeyedSubscript:@"system"];
    configurationCopy = v22;
  }
}

void __83__DNDSAppForegroundTriggerManager__configureAppForegroundTriggerWithConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = DNDSLogAppForegroundTrigger;
  if (os_log_type_enabled(DNDSLogAppForegroundTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = a2;
    v6 = [v5 state];
    v7 = [v5 error];

    v8 = 134218242;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "AppLaunch subscription completed: state=%ld error=%{public}@", &v8, 0x16u);
  }
}

void __83__DNDSAppForegroundTriggerManager__configureAppForegroundTriggerWithConfiguration___block_invoke_28(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DNDSLogAppForegroundTrigger;
  if (os_log_type_enabled(DNDSLogAppForegroundTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v3 eventBody];
    v7 = [v6 bundleID];
    v8 = [v3 eventBody];
    if ([v8 isStarting])
    {
      v9 = @"Y";
    }

    else
    {
      v9 = @"N";
    }

    v10 = [v3 eventBody];
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Received app launch event: bundleID=%{public}@ starting=%{public}@ event=%{public}@", &v11, 0x20u);
  }

  [*(a1 + 32) _refreshIfNeccessaryForEvent:v3];
}

- (void)_refreshIfNeccessaryForEvent:(id)event
{
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained appForegroundTriggerConfigurationForAppForegroundTriggerManager:self];

  coalescingQueue = self->_coalescingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__DNDSAppForegroundTriggerManager__refreshIfNeccessaryForEvent___block_invoke;
  block[3] = &unk_278F89E30;
  block[4] = self;
  v11 = v6;
  v12 = eventCopy;
  v8 = eventCopy;
  v9 = v6;
  dispatch_async(coalescingQueue, block);
}

- (void)_coalescingQueue_coalesceWithTriggerConfiguration:(id)configuration event:(id)event
{
  v29 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  eventCopy = event;
  latestEvent = self->_latestEvent;
  if (latestEvent)
  {
    eventBody = [(BMStoreEvent *)latestEvent eventBody];
    bundleID = [eventBody bundleID];
    eventBody2 = [eventCopy eventBody];
    bundleID2 = [eventBody2 bundleID];
    v13 = [bundleID isEqualToString:bundleID2];

    if ((v13 & 1) == 0)
    {
      [(DNDSAppForegroundTriggerManager *)self _coalescingQueue_resetCoalescingTimer];
      [(DNDSAppForegroundTriggerManager *)self _coalescingQueue_refreshWithTriggerConfiguration:configurationCopy];
      v14 = DNDSLogAppForegroundTrigger;
      if (os_log_type_enabled(DNDSLogAppForegroundTrigger, OS_LOG_TYPE_DEFAULT))
      {
        v15 = self->_latestEvent;
        v16 = v14;
        eventBody3 = [(BMStoreEvent *)v15 eventBody];
        *buf = 138543362;
        v28 = eventBody3;
        _os_log_impl(&dword_24912E000, v16, OS_LOG_TYPE_DEFAULT, "reset coalescing timer due to bundleID change; updated assertions for app launch event: event=%{public}@", buf, 0xCu);
      }
    }
  }

  objc_storeStrong(&self->_latestEvent, event);
  if (!self->_coalescingTimer)
  {
    v18 = os_transaction_create();
    eventCoalescingTransaction = self->_eventCoalescingTransaction;
    self->_eventCoalescingTransaction = v18;

    v20 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_coalescingQueue);
    coalescingTimer = self->_coalescingTimer;
    self->_coalescingTimer = v20;

    v22 = self->_coalescingTimer;
    v23 = dispatch_time(0, 2000000000);
    dispatch_source_set_timer(v22, v23, 0xFFFFFFFFFFFFFFFFLL, 0);
    v24 = self->_coalescingTimer;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __91__DNDSAppForegroundTriggerManager__coalescingQueue_coalesceWithTriggerConfiguration_event___block_invoke;
    v25[3] = &unk_278F89F48;
    v25[4] = self;
    v26 = configurationCopy;
    dispatch_source_set_event_handler(v24, v25);
    dispatch_resume(self->_coalescingTimer);
  }
}

uint64_t __91__DNDSAppForegroundTriggerManager__coalescingQueue_coalesceWithTriggerConfiguration_event___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _coalescingQueue_refreshWithTriggerConfiguration:*(a1 + 40)];
  v2 = DNDSLogAppForegroundTrigger;
  if (os_log_type_enabled(DNDSLogAppForegroundTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 48);
    v4 = v2;
    v5 = [v3 eventBody];
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "coalescing timer fired; updated assertions for app launch event: event=%{public}@", &v9, 0xCu);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 48);
  *(v6 + 48) = 0;

  return [*(a1 + 32) _coalescingQueue_resetCoalescingTimer];
}

- (void)_coalescingQueue_resetCoalescingTimer
{
  coalescingTimer = self->_coalescingTimer;
  if (coalescingTimer)
  {
    dispatch_source_cancel(coalescingTimer);
    v4 = self->_coalescingTimer;
    self->_coalescingTimer = 0;

    eventCoalescingTransaction = self->_eventCoalescingTransaction;
    self->_eventCoalescingTransaction = 0;
  }
}

- (DNDSAppForegroundTriggerManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end