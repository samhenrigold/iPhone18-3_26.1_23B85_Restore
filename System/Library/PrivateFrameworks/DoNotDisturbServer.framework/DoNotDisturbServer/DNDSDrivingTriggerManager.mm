@interface DNDSDrivingTriggerManager
- (DNDSDrivingTriggerManager)init;
- (DNDSDrivingTriggerManagerDataSource)dataSource;
- (void)_configureDrivingTriggerWithMode:(id)mode;
- (void)_refreshWithMode:(id)mode event:(id)event;
- (void)refresh;
@end

@implementation DNDSDrivingTriggerManager

- (DNDSDrivingTriggerManager)init
{
  v11.receiver = self;
  v11.super_class = DNDSDrivingTriggerManager;
  v2 = [(DNDSDrivingTriggerManager *)&v11 init];
  if (v2)
  {
    v3 = [DNDSWorkloop serialQueueTargetingSharedWorkloop:@"com.apple.donotdisturb.private.biome-driving.queue"];
    biomeQueue = v2->_biomeQueue;
    v2->_biomeQueue = v3;

    if ([(DNDSDrivingTriggerManager *)v2 _featureEnabled])
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      sinks = v2->_sinks;
      v2->_sinks = dictionary;

      v2->_lock._os_unfair_lock_opaque = 0;
      v7 = objc_alloc_init(MEMORY[0x277CF8988]);
      status = v2->_status;
      v2->_status = v7;

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, DNDDrivingTriggerObserverCallback, *MEMORY[0x277CF88F8], 0, CFNotificationSuspensionBehaviorCoalesce);
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, DNDDrivingTriggerObserverCallback, *MEMORY[0x277CF8900], 0, CFNotificationSuspensionBehaviorCoalesce);
    }
  }

  return v2;
}

- (void)refresh
{
  v9 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CF8988] isAutomaticDNDAvailable] && -[DNDSDrivingTriggerManager _featureEnabled](self, "_featureEnabled"))
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v4 = [WeakRetained drivingModeForDrivingTriggerManager:self];

    [(DNDSDrivingTriggerManager *)self _configureDrivingTriggerWithMode:v4];
    [(DNDSDrivingTriggerManager *)self _refreshWithMode:v4 event:0];
    v5 = DNDSLogDrivingTrigger;
    if (os_log_type_enabled(DNDSLogDrivingTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Updated assertions for driving trigger: mode=%{public}@", &v7, 0xCu);
    }
  }

  else
  {
    v6 = DNDSLogDrivingTrigger;
    if (os_log_type_enabled(DNDSLogDrivingTrigger, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "No action taken for request to refresh driving trigger; automatic entry not supported", &v7, 2u);
    }
  }
}

- (void)_refreshWithMode:(id)mode event:(id)event
{
  v82 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  modeCopy = mode;
  dataSource = [(DNDSDrivingTriggerManager *)self dataSource];
  eventBody = [eventCopy eventBody];

  isStart = [eventBody isStart];
  modeIdentifier = [modeCopy modeIdentifier];

  v75 = 0;
  v12 = [dataSource triggerManager:self assertionsWithClientIdentifer:@"com.apple.donotdisturb.private.driving-trigger" error:&v75];
  v13 = v75;
  firstObject = [v12 firstObject];
  if (!eventCopy)
  {
    if ([v12 count])
    {
      if (!modeIdentifier)
      {
        v45 = DNDSLogDrivingTrigger;
        if (os_log_type_enabled(DNDSLogDrivingTrigger, OS_LOG_TYPE_DEFAULT))
        {
          v46 = v45;
          details = [firstObject details];
          modeIdentifier2 = [details modeIdentifier];
          *buf = 138543362;
          v77 = modeIdentifier2;
          _os_log_impl(&dword_24912E000, v46, OS_LOG_TYPE_DEFAULT, "Invalidating active assertion no mode identifer for driving trigger; previousModeID=%{public}@", buf, 0xCu);
        }

        uUID = [firstObject UUID];
        v74 = v13;
        v49 = [dataSource triggerManager:self invalidateModeAssertionWithUUID:uUID reason:2 reasonOverride:0 clientIdentifier:@"com.apple.donotdisturb.private.driving-trigger" error:&v74];
        v36 = v74;
        goto LABEL_21;
      }

      details2 = [firstObject details];
      modeIdentifier3 = [details2 modeIdentifier];
      v28 = [modeIdentifier isEqualToString:modeIdentifier3];

      if ((v28 & 1) == 0)
      {
        details3 = [firstObject details];
        uUID = [details3 mutableCopy];

        [uUID setModeIdentifier:modeIdentifier];
        v31 = DNDSLogDrivingTrigger;
        if (os_log_type_enabled(DNDSLogDrivingTrigger, OS_LOG_TYPE_DEFAULT))
        {
          v32 = v31;
          details4 = [firstObject details];
          modeIdentifier4 = [details4 modeIdentifier];
          *buf = 138543618;
          v77 = modeIdentifier;
          v78 = 2114;
          v79 = modeIdentifier4;
          _os_log_impl(&dword_24912E000, v32, OS_LOG_TYPE_DEFAULT, "Updating active assertion to new mode identifer for driving trigger; modeID=%{public}@ previousModeID=%{public}@", buf, 0x16u);
        }

        v73 = v13;
        v35 = [dataSource triggerManager:self takeModeAssertionWithDetails:uUID clientIdentifier:@"com.apple.donotdisturb.private.driving-trigger" error:&v73];
        v36 = v73;
LABEL_21:
        v25 = v36;

        goto LABEL_34;
      }
    }

LABEL_17:
    v25 = v13;
    goto LABEL_34;
  }

  if (modeIdentifier)
  {
    v72 = v13;
    v15 = [dataSource triggerManager:self assertionsWithClientIdentifer:@"com.apple.focus.activity-manager" error:&v72];
    v16 = v72;

    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __52__DNDSDrivingTriggerManager__refreshWithMode_event___block_invoke;
    v70[3] = &unk_278F8A0B0;
    v17 = modeIdentifier;
    v71 = v17;
    v18 = [v15 bs_filter:v70];

    v61 = v18;
    firstObject2 = [v18 firstObject];
    v20 = firstObject2;
    if (firstObject && firstObject2 && (v21 = DNDSLogDrivingTrigger, os_log_type_enabled(DNDSLogDrivingTrigger, OS_LOG_TYPE_ERROR)))
    {
      *buf = 138543874;
      v77 = v17;
      v78 = 2114;
      v79 = firstObject;
      v80 = 2114;
      v81 = v20;
      _os_log_error_impl(&dword_24912E000, v21, OS_LOG_TYPE_ERROR, "Existing assertions found for driving trigger manager and activity manager; modeID=%{public}@ assertion=%{public}@ userAssertion=%{public}@", buf, 0x20u);
      if (isStart)
      {
        goto LABEL_7;
      }
    }

    else if (isStart)
    {
LABEL_7:
      v22 = objc_alloc_init(MEMORY[0x277D05A40]);
      [v22 setIdentifier:@"com.apple.donotdisturb.trigger.driving"];
      [v22 setLifetime:0];
      [v22 setModeIdentifier:v17];
      [v22 setReason:3];
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __52__DNDSDrivingTriggerManager__refreshWithMode_event___block_invoke_32;
      v65[3] = &unk_278F8AE18;
      v69 = v20 != 0;
      v66 = v20;
      v67 = v17;
      v68 = v22;
      uUID3 = v22;
      v24 = [dataSource triggerManager:self performModeAssertionUpdatesWithHandler:v65];

      v25 = v66;
      goto LABEL_32;
    }

    if (v20)
    {
      v50 = DNDSLogDrivingTrigger;
      if (os_log_type_enabled(DNDSLogDrivingTrigger, OS_LOG_TYPE_DEFAULT))
      {
        v51 = v50;
        details5 = [v20 details];
        modeIdentifier5 = [details5 modeIdentifier];
        *buf = 138543362;
        v77 = modeIdentifier5;
        _os_log_impl(&dword_24912E000, v51, OS_LOG_TYPE_DEFAULT, "Invalidating active user assertion in driving trigger in response to event; previousModeID=%{public}@", buf, 0xCu);
      }

      uUID2 = [v20 UUID];
      v64 = v16;
      v55 = [dataSource triggerManager:self invalidateModeAssertionWithUUID:uUID2 reason:3 reasonOverride:0 clientIdentifier:@"com.apple.donotdisturb.private.driving-trigger" error:&v64];
      v25 = v64;

      if (!firstObject)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v25 = v16;
      if (!firstObject)
      {
LABEL_33:

        goto LABEL_34;
      }
    }

    v56 = DNDSLogDrivingTrigger;
    if (os_log_type_enabled(DNDSLogDrivingTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v57 = v56;
      details6 = [firstObject details];
      modeIdentifier6 = [details6 modeIdentifier];
      *buf = 138543362;
      v77 = modeIdentifier6;
      _os_log_impl(&dword_24912E000, v57, OS_LOG_TYPE_DEFAULT, "Invalidating active assertion in driving trigger in response to event; previousModeID=%{public}@", buf, 0xCu);
    }

    uUID3 = [firstObject UUID];
    v63 = v25;
    v60 = [dataSource triggerManager:self invalidateModeAssertionWithUUID:uUID3 reason:3 reasonOverride:0 clientIdentifier:@"com.apple.donotdisturb.private.driving-trigger" error:&v63];
    v16 = v63;
LABEL_32:

    v25 = v16;
    goto LABEL_33;
  }

  if (![v12 count])
  {
    goto LABEL_17;
  }

  firstObject3 = [v12 firstObject];
  uUID4 = [firstObject3 UUID];
  v62 = v13;
  v39 = [dataSource triggerManager:self invalidateModeAssertionWithUUID:uUID4 reason:3 reasonOverride:0 clientIdentifier:@"com.apple.donotdisturb.private.driving-trigger" error:&v62];
  v25 = v62;

  v40 = DNDSLogDrivingTrigger;
  if (os_log_type_enabled(DNDSLogDrivingTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v41 = v40;
    firstObject4 = [v12 firstObject];
    details7 = [firstObject4 details];
    modeIdentifier7 = [details7 modeIdentifier];
    *buf = 138543362;
    v77 = modeIdentifier7;
    _os_log_impl(&dword_24912E000, v41, OS_LOG_TYPE_DEFAULT, "Invalidating active assertion no mode identifer for driving trigger in response to event; previousModeID=%{public}@", buf, 0xCu);
  }

LABEL_34:
}

uint64_t __52__DNDSDrivingTriggerManager__refreshWithMode_event___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 details];
  v4 = [v3 modeIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

uint64_t __52__DNDSDrivingTriggerManager__refreshWithMode_event___block_invoke_32(uint64_t a1, void *a2)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 56) == 1)
  {
    v4 = [*(a1 + 32) source];
    v5 = [v4 clientIdentifier];
    v28[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    v7 = [DNDSModeAssertionInvalidationPredicate predicateForAssertionClientIdentifiers:v6];

    v8 = [objc_alloc(MEMORY[0x277D05988]) initWithClientIdentifier:@"com.apple.donotdisturb.private.driving-trigger" deviceIdentifier:0];
    v9 = [MEMORY[0x277CBEAA8] date];
    v10 = [DNDSModeAssertionInvalidationRequest requestWithPredicate:v7 requestDate:v9 details:0 source:v8 reason:4 reasonOverride:0];

    v11 = DNDSLogDrivingTrigger;
    if (os_log_type_enabled(DNDSLogDrivingTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v12 = *(a1 + 48);
      v14 = v11;
      v15 = [v12 lifetime];
      v24 = 138543618;
      v25 = v13;
      v26 = 2114;
      v27 = v15;
      _os_log_impl(&dword_24912E000, v14, OS_LOG_TYPE_DEFAULT, "Invalidating user assertion for mode in response to event; modeID=%{public}@ lifetime=%{public}@", &v24, 0x16u);
    }

    v16 = [v3 invalidateAssertionsForRequest:v10];
  }

  v17 = [objc_alloc(MEMORY[0x277D05988]) initWithClientIdentifier:@"com.apple.donotdisturb.private.driving-trigger" deviceIdentifier:0];
  v18 = DNDSLogDrivingTrigger;
  if (os_log_type_enabled(DNDSLogDrivingTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 40);
    v24 = 138543362;
    v25 = v19;
    _os_log_impl(&dword_24912E000, v18, OS_LOG_TYPE_DEFAULT, "Acquiring assertion for driving trigger in response to event; modeID=%{public}@", &v24, 0xCu);
  }

  v20 = *(a1 + 48);
  v21 = [MEMORY[0x277CBEAA8] date];
  v22 = [v3 takeAssertionWithDetails:v20 source:v17 startDate:v21];

  return 1;
}

- (void)_configureDrivingTriggerWithMode:(id)mode
{
  v23 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_sinks objectForKeyedSubscript:@"system"];
  v6 = v5;
  if (!modeCopy || v5)
  {
    if (!modeCopy && v5)
    {
      [v5 cancel];
      [(NSMutableDictionary *)self->_sinks removeObjectForKey:@"system"];
    }
  }

  else
  {
    v7 = DNDSLogDrivingTrigger;
    if (os_log_type_enabled(DNDSLogDrivingTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = modeCopy;
      _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Adding biome driving event monitor; mode=%{public}@", buf, 0xCu);
    }

    v8 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"com.apple.donotdisturb.drivingTrigger" targetQueue:self->_biomeQueue];
    doNotDisturbWhileDrivingStream = [MEMORY[0x277CF1B58] doNotDisturbWhileDrivingStream];
    publisher = [doNotDisturbWhileDrivingStream publisher];
    v11 = [publisher subscribeOn:v8];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __62__DNDSDrivingTriggerManager__configureDrivingTriggerWithMode___block_invoke_48;
    v19[3] = &unk_278F8AC30;
    v19[4] = self;
    v12 = modeCopy;
    v20 = v12;
    v13 = [v11 sinkWithCompletion:&__block_literal_global_16 receiveInput:v19];

    [(NSMutableDictionary *)self->_sinks setObject:v13 forKeyedSubscript:@"system"];
    doNotDisturbWhileDrivingStream2 = [MEMORY[0x277CF1B58] doNotDisturbWhileDrivingStream];
    v15 = [doNotDisturbWhileDrivingStream2 publisherFromStartTime:CFAbsoluteTimeGetCurrent() + -2.0];
    last = [v15 last];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__DNDSDrivingTriggerManager__configureDrivingTriggerWithMode___block_invoke_59;
    v17[3] = &unk_278F8AC30;
    v17[4] = self;
    v18 = v12;
    v6 = [last sinkWithCompletion:&__block_literal_global_58_0 receiveInput:v17];
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __62__DNDSDrivingTriggerManager__configureDrivingTriggerWithMode___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = DNDSLogDrivingTrigger;
  if (os_log_type_enabled(DNDSLogDrivingTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = a2;
    v6 = [v5 state];
    v7 = [v5 error];

    v8 = 134218242;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Driving subscription completed: state=%ld error=%{public}@", &v8, 0x16u);
  }
}

void __62__DNDSDrivingTriggerManager__configureDrivingTriggerWithMode___block_invoke_48(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DNDSLogDrivingTrigger;
  if (os_log_type_enabled(DNDSLogDrivingTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v3 eventBody];
    v7 = DNDBMDoNotDisturbWhileDrivingReasonToString([v6 reason]);
    v8 = [v3 eventBody];
    if ([v8 isStart])
    {
      v9 = @"Y";
    }

    else
    {
      v9 = @"N";
    }

    v16 = 138543618;
    v17 = v7;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Received driving event: reason=%{public}@ starting=%{public}@", &v16, 0x16u);
  }

  [*(a1 + 32) _refreshWithMode:*(a1 + 40) event:v3];
  v10 = DNDSLogDrivingTrigger;
  if (os_log_type_enabled(DNDSLogDrivingTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [v3 eventBody];
    v13 = DNDBMDoNotDisturbWhileDrivingReasonToString([v12 reason]);
    v14 = [v3 eventBody];
    if ([v14 isStart])
    {
      v15 = @"Y";
    }

    else
    {
      v15 = @"N";
    }

    v16 = 138543618;
    v17 = v13;
    v18 = 2114;
    v19 = v15;
    _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "Updated assertions for driving event: reason=%{public}@ starting=%{public}@", &v16, 0x16u);
  }
}

void __62__DNDSDrivingTriggerManager__configureDrivingTriggerWithMode___block_invoke_56(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = DNDSLogDrivingTrigger;
  if (os_log_type_enabled(DNDSLogDrivingTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = a2;
    v6 = [v5 state];
    v7 = [v5 error];

    v8 = 134218242;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Driving most recent event in the past 2s completed: state=%ld error=%{public}@", &v8, 0x16u);
  }
}

void __62__DNDSDrivingTriggerManager__configureDrivingTriggerWithMode___block_invoke_59(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = DNDSLogDrivingTrigger;
    if (os_log_type_enabled(DNDSLogDrivingTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [v3 eventBody];
      v7 = DNDBMDoNotDisturbWhileDrivingReasonToString([v6 reason]);
      v8 = [v3 eventBody];
      if ([v8 isStart])
      {
        v9 = @"Y";
      }

      else
      {
        v9 = @"N";
      }

      v16 = 138543618;
      v17 = v7;
      v18 = 2114;
      v19 = v9;
      _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Received last driving event in the prior 2s: reason=%{public}@ starting=%{public}@", &v16, 0x16u);
    }

    [*(a1 + 32) _refreshWithMode:*(a1 + 40) event:v3];
    v10 = DNDSLogDrivingTrigger;
    if (os_log_type_enabled(DNDSLogDrivingTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [v3 eventBody];
      v13 = DNDBMDoNotDisturbWhileDrivingReasonToString([v12 reason]);
      v14 = [v3 eventBody];
      if ([v14 isStart])
      {
        v15 = @"Y";
      }

      else
      {
        v15 = @"N";
      }

      v16 = 138543618;
      v17 = v13;
      v18 = 2114;
      v19 = v15;
      _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "Updated assertions for last driving event in the prior 2s: reason=%{public}@ starting=%{public}@", &v16, 0x16u);
    }
  }
}

- (DNDSDrivingTriggerManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end