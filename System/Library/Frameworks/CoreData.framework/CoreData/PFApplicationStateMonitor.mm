@interface PFApplicationStateMonitor
- (PFApplicationStateMonitor)init;
- (void)dealloc;
@end

@implementation PFApplicationStateMonitor

- (PFApplicationStateMonitor)init
{
  v42 = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = PFApplicationStateMonitor;
  v2 = [(PFApplicationStateMonitor *)&v38 init];
  if (v2)
  {
    if (_PF_USE_IOS_PLATFORM == 1)
    {
      v3 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v4 = [v3 countByEnumeratingWithState:&v34 objects:v41 count:16];
      if (v4)
      {
        v5 = *v35;
        while (2)
        {
          for (i = 0; i != v4; ++i)
          {
            if (*v35 != v5)
            {
              objc_enumerationMutation(v3);
            }

            v7 = *(*(&v34 + 1) + 8 * i);
            if (([v7 isEqualToString:@"audio"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"bluetooth-central") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"bluetooth-peripheral") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"external-accessory") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"fetch") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"location") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"processing") & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"voip"))
            {
              v2->_backgroundTimeout = 30;
              goto LABEL_20;
            }
          }

          v4 = [v3 countByEnumeratingWithState:&v34 objects:v41 count:16];
          if (v4)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_20:
    objc_initWeak(&location, v2);
    v8 = [PFCloudKitThrottledNotificationObserver alloc];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __33__PFApplicationStateMonitor_init__block_invoke;
    v31[3] = &unk_1E6EC5250;
    objc_copyWeak(&v32, &location);
    v9 = [(PFCloudKitThrottledNotificationObserver *)v8 initWithLabel:@"AppActivateObserver" handlerBlock:v31];
    v2->_appActivateLifecycleObserver = v9;
    if (v9)
    {
      *(v9 + 32) = 1;
    }

    v10 = [PFCloudKitThrottledNotificationObserver alloc];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __33__PFApplicationStateMonitor_init__block_invoke_2;
    v29[3] = &unk_1E6EC5250;
    objc_copyWeak(&v30, &location);
    v11 = [(PFCloudKitThrottledNotificationObserver *)v10 initWithLabel:@"AppDeactivateObserver" handlerBlock:v29];
    v2->_appDeactivateLifecycleObserver = v11;
    if (v11)
    {
      *(v11 + 32) = 1;
    }

    atomic_store(0, &v2->_transitionCounter);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = +[_PFRoutines applicationActivateLifecyleNotifications];
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v40 count:16];
    if (v13)
    {
      v14 = *v26;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v12);
          }

          [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
        }

        v13 = [v12 countByEnumeratingWithState:&v25 objects:v40 count:16];
      }

      while (v13);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v16 = +[_PFRoutines applicationDeactivateLifecyleNotifications];
    v17 = [v16 countByEnumeratingWithState:&v21 objects:v39 count:16];
    if (v17)
    {
      v18 = *v22;
      do
      {
        for (k = 0; k != v17; ++k)
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v16);
          }

          [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
        }

        v17 = [v16 countByEnumeratingWithState:&v21 objects:v39 count:16];
      }

      while (v17);
    }

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __33__PFApplicationStateMonitor_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    *(WeakRetained + 5) = 1;
    atomic_fetch_add(WeakRetained + 6, 1u);
    v4 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 6);
    v3 = v2;
    if (v2)
    {
      [v2 applicationStateMonitorEnteredForeground:v4];
    }

    WeakRetained = v4;
  }
}

void __33__PFApplicationStateMonitor_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    *(WeakRetained + 5) = 2;
    v8 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 6);
    v3 = v2;
    if (v2)
    {
      [v2 applicationStateMonitorEnteredBackground:v8];
    }

    if (*(v8 + 4) >= 1 && _PF_USE_IOS_PLATFORM == 1)
    {
      v4 = v8;
      v5 = atomic_fetch_or(v8 + 6, 0);
      v6 = dispatch_time(0, 1000000000 * *(v4 + 4));
      global_queue = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __54__PFApplicationStateMonitor_scheduleBackgroundTimeout__block_invoke;
      block[3] = &unk_1E6EC5278;
      block[4] = v8;
      v10 = v5;
      dispatch_after(v6, global_queue, block);
    }

    WeakRetained = v8;
  }
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  self->_appActivateLifecycleObserver = 0;
  self->_appDeactivateLifecycleObserver = 0;
  v3.receiver = self;
  v3.super_class = PFApplicationStateMonitor;
  [(PFApplicationStateMonitor *)&v3 dealloc];
}

void __54__PFApplicationStateMonitor_scheduleBackgroundTimeout__block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == atomic_fetch_or((*(a1 + 32) + 24), 0))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
    if (WeakRetained)
    {
      v4 = WeakRetained;
      [WeakRetained applicationStateMonitorExpiredBackgroundActivityTimeout:*(a1 + 32)];
      WeakRetained = v4;
    }
  }
}

@end