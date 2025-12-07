@interface DNDSSleepingTriggerManager
- (DNDSSleepingTriggerManager)init;
- (DNDSSleepingTriggerManagerDataSource)dataSource;
- (void)_configureSleepingTriggerWithMode:(id)mode;
- (void)_refreshWithMode:(id)mode event:(id)event;
- (void)refresh;
@end

@implementation DNDSSleepingTriggerManager

- (DNDSSleepingTriggerManager)init
{
  v8.receiver = self;
  v8.super_class = DNDSSleepingTriggerManager;
  v2 = [(DNDSSleepingTriggerManager *)&v8 init];
  if (v2)
  {
    v3 = [DNDSWorkloop serialQueueTargetingSharedWorkloop:@"com.apple.donotdisturb.private.biome-sleeping.queue"];
    biomeQueue = v2->_biomeQueue;
    v2->_biomeQueue = v3;

    if ([(DNDSSleepingTriggerManager *)v2 _featureEnabled])
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      sinks = v2->_sinks;
      v2->_sinks = dictionary;
    }
  }

  return v2;
}

- (void)refresh
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(DNDSSleepingTriggerManager *)self _featureEnabled])
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v4 = [WeakRetained sleepingModeForSleepingTriggerManager:self];

    [(DNDSSleepingTriggerManager *)self _configureSleepingTriggerWithMode:v4];
    [(DNDSSleepingTriggerManager *)self _refreshWithMode:v4 event:0];
    v5 = DNDSLogSleepingTrigger;
    if (os_log_type_enabled(DNDSLogSleepingTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Updated assertions for sleeping trigger: mode=%{public}@", &v7, 0xCu);
    }
  }

  else
  {
    v6 = DNDSLogSleepingTrigger;
    if (os_log_type_enabled(DNDSLogSleepingTrigger, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "No action taken for request to refresh sleeping trigger; automatic entry not supported", &v7, 2u);
    }
  }
}

- (void)_refreshWithMode:(id)mode event:(id)event
{
  v125 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  eventCopy = event;
  dataSource = [(DNDSSleepingTriggerManager *)self dataSource];
  modeIdentifier = [modeCopy modeIdentifier];
  v117 = 0;
  v10 = [dataSource triggerManager:self assertionsWithClientIdentifer:@"com.apple.donotdisturb.private.sleeping-trigger" error:&v117];
  v11 = v117;
  firstObject = [v10 firstObject];
  if (eventCopy)
  {
    v98 = dataSource;
    v13 = modeIdentifier;
    eventBody = [eventCopy eventBody];
    sleepModeChangeReason = [eventBody sleepModeChangeReason];

    if (sleepModeChangeReason <= 8 && ((1 << sleepModeChangeReason) & 0x181) != 0)
    {
      uUID = DNDSLogSleepingTrigger;
      modeIdentifier = v13;
      if (os_log_type_enabled(uUID, OS_LOG_TYPE_DEFAULT))
      {
        v94 = v13;
        v96 = firstObject;
        v93 = v10;
        eventBody2 = [eventCopy eventBody];
        v18 = DNDBMSleepModeChangeReasonToString([eventBody2 sleepModeChangeReason]);
        eventBody3 = [eventCopy eventBody];
        sleepModeState = [eventBody3 sleepModeState];
        v21 = modeCopy;
        if (sleepModeState > 2)
        {
          v22 = @"unspecified";
        }

        else
        {
          v22 = off_278F8B3F0[sleepModeState];
        }

        eventBody4 = [eventCopy eventBody];
        expectedEndDate = [eventBody4 expectedEndDate];
        *buf = 138543874;
        v120 = v18;
        v121 = 2114;
        v122 = v22;
        v123 = 2114;
        v124 = expectedEndDate;
        _os_log_impl(&dword_24912E000, uUID, OS_LOG_TYPE_DEFAULT, "Ignoring event: reason=%{public}@ state=%{public}@ expectedEnd=%{public}@", buf, 0x20u);

        firstObject = v96;
        dataSource = v98;
        v10 = v93;
        modeIdentifier = v94;
        modeCopy = v21;
        goto LABEL_53;
      }

      goto LABEL_52;
    }

    modeIdentifier = v13;
    if (v13)
    {
      v27 = modeCopy;
      v114 = v11;
      v28 = [v98 triggerManager:self assertionsWithClientIdentifer:@"com.apple.focus.activity-manager" error:&v114];
      v90 = v114;

      v112[0] = MEMORY[0x277D85DD0];
      v112[1] = 3221225472;
      v112[2] = __53__DNDSSleepingTriggerManager__refreshWithMode_event___block_invoke;
      v112[3] = &unk_278F8A0B0;
      v29 = firstObject;
      v30 = v13;
      v113 = v30;
      v31 = [v28 bs_filter:v112];

      v97 = v29;
      if (v29)
      {
        if ([v31 count])
        {
          v32 = DNDSLogSleepingTrigger;
          if (os_log_type_enabled(DNDSLogSleepingTrigger, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v120 = v30;
            v121 = 2114;
            v122 = v97;
            v123 = 2114;
            v124 = v31;
            _os_log_error_impl(&dword_24912E000, v32, OS_LOG_TYPE_ERROR, "Existing assertions found for sleeping trigger manager and activity manager; modeID=%{public}@ assertion=%{public}@ userAssertion=%{public}@", buf, 0x20u);
          }
        }
      }

      v33 = [v31 count];
      v89 = [v31 bs_compactMap:&__block_literal_global_19];
      eventBody5 = [eventCopy eventBody];
      sleepModeState2 = [eventBody5 sleepModeState];

      if ((sleepModeState2 - 1) > 1)
      {
        if (!v97 && !v33)
        {
          firstObject = 0;
          modeCopy = v27;
          v69 = v89;
          v68 = v90;
LABEL_51:

          uUID = v113;
          v11 = v68;
          modeIdentifier = v13;
LABEL_52:
          dataSource = v98;
          goto LABEL_53;
        }

        v85 = eventCopy;
        selfCopy = self;
        v95 = v13;
        v92 = v27;
        v70 = DNDSLogSleepingTrigger;
        if (os_log_type_enabled(DNDSLogSleepingTrigger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v120 = v30;
          v121 = 2114;
          v122 = v97;
          _os_log_impl(&dword_24912E000, v70, OS_LOG_TYPE_DEFAULT, "Invalidating active assertion for sleeping trigger in response to event; previousModeID=%{public}@ assertion=%{public}@", buf, 0x16u);
        }

        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v84 = v31;
        v71 = v31;
        v72 = [v71 countByEnumeratingWithState:&v103 objects:v118 count:16];
        if (v72)
        {
          v73 = v72;
          v74 = *v104;
          do
          {
            for (i = 0; i != v73; ++i)
            {
              if (*v104 != v74)
              {
                objc_enumerationMutation(v71);
              }

              v76 = DNDSLogSleepingTrigger;
              if (os_log_type_enabled(DNDSLogSleepingTrigger, OS_LOG_TYPE_DEFAULT))
              {
                v77 = *(*(&v103 + 1) + 8 * i);
                *buf = 138543618;
                v120 = v30;
                v121 = 2114;
                v122 = v77;
                _os_log_impl(&dword_24912E000, v76, OS_LOG_TYPE_DEFAULT, "Invalidating active user assertion for associated mode in response to event; previousModeID=%{public}@ assertion=%{public}@", buf, 0x16u);
              }
            }

            v73 = [v71 countByEnumeratingWithState:&v103 objects:v118 count:16];
          }

          while (v73);
        }

        v78 = [v89 arrayByAddingObject:@"com.apple.donotdisturb.private.sleeping-trigger"];

        v100[0] = MEMORY[0x277D85DD0];
        v100[1] = 3221225472;
        v100[2] = __53__DNDSSleepingTriggerManager__refreshWithMode_event___block_invoke_17;
        v100[3] = &unk_278F8A128;
        v69 = v78;
        v101 = v69;
        v102 = v30;
        v79 = [v98 triggerManager:selfCopy performModeAssertionUpdatesWithHandler:v100];

        v80 = v101;
        modeCopy = v92;
        v13 = v95;
        v68 = v90;
      }

      else
      {
        v83 = v31;
        v36 = v10;
        v37 = eventCopy;
        v38 = v33 != 0;
        v39 = objc_alloc_init(MEMORY[0x277D05A40]);
        [v39 setIdentifier:@"com.apple.donotdisturb.trigger.sleeping"];
        [v39 setModeIdentifier:v30];
        eventBody6 = [v37 eventBody];
        expectedEndDate2 = [eventBody6 expectedEndDate];
        [v39 setUserVisibleEndDate:expectedEndDate2];

        v85 = v37;
        eventBody7 = [v37 eventBody];
        v43 = [eventBody7 sleepModeChangeReason] - 1;
        if (v43 > 7)
        {
          v44 = 0;
        }

        else
        {
          v44 = qword_2491FFB38[v43];
        }

        v68 = v90;
        [v39 setReason:{v44, v83}];

        v107[0] = MEMORY[0x277D85DD0];
        v107[1] = 3221225472;
        v107[2] = __53__DNDSSleepingTriggerManager__refreshWithMode_event___block_invoke_2;
        v107[3] = &unk_278F8AE18;
        v111 = v38;
        v108 = v89;
        v109 = v30;
        v110 = v39;
        v80 = v39;
        selfCopy2 = self;
        v69 = v108;
        v82 = [v98 triggerManager:selfCopy2 performModeAssertionUpdatesWithHandler:v107];

        v10 = v36;
        modeCopy = v27;
      }

      v31 = v84;
      eventCopy = v85;
      firstObject = v97;
      goto LABEL_51;
    }

    if ([v10 count])
    {
      v61 = DNDSLogSleepingTrigger;
      if (os_log_type_enabled(DNDSLogSleepingTrigger, OS_LOG_TYPE_DEFAULT))
      {
        v62 = v61;
        details = [(__CFString *)firstObject details];
        [details modeIdentifier];
        selfCopy3 = self;
        v65 = v64 = modeCopy;
        *buf = 138543362;
        v120 = v65;
        _os_log_impl(&dword_24912E000, v62, OS_LOG_TYPE_DEFAULT, "Invalidating active assertion no mode identifer for sleeping trigger in response to event; previousModeID=%{public}@", buf, 0xCu);

        modeIdentifier = 0;
        modeCopy = v64;
        self = selfCopy3;
      }

      uUID = [(__CFString *)firstObject UUID];
      v99 = v11;
      dataSource = v98;
      v66 = [v98 triggerManager:self invalidateModeAssertionWithUUID:uUID reason:3 reasonOverride:0 clientIdentifier:@"com.apple.donotdisturb.private.sleeping-trigger" error:&v99];
      v53 = v99;
LABEL_31:
      v67 = v53;

      v11 = v67;
LABEL_53:

      goto LABEL_54;
    }

LABEL_32:
    dataSource = v98;
    goto LABEL_54;
  }

  if ([v10 count])
  {
    if (!modeIdentifier)
    {
      v47 = DNDSLogSleepingTrigger;
      if (os_log_type_enabled(DNDSLogSleepingTrigger, OS_LOG_TYPE_DEFAULT))
      {
        v48 = v47;
        details2 = [(__CFString *)firstObject details];
        [details2 modeIdentifier];
        selfCopy4 = self;
        v51 = v50 = modeCopy;
        *buf = 138543362;
        v120 = v51;
        _os_log_impl(&dword_24912E000, v48, OS_LOG_TYPE_DEFAULT, "Invalidating active assertion no mode identifer for sleeping trigger; previousModeID=%{public}@", buf, 0xCu);

        modeIdentifier = 0;
        modeCopy = v50;
        self = selfCopy4;
      }

      uUID = [(__CFString *)firstObject UUID];
      v116 = v11;
      v52 = [dataSource triggerManager:self invalidateModeAssertionWithUUID:uUID reason:2 reasonOverride:0 clientIdentifier:@"com.apple.donotdisturb.private.sleeping-trigger" error:&v116];
      v53 = v116;
      goto LABEL_31;
    }

    v98 = dataSource;
    v91 = modeCopy;
    details3 = [(__CFString *)firstObject details];
    [details3 modeIdentifier];
    v25 = v24 = modeIdentifier;
    v26 = [v24 isEqualToString:v25];

    if ((v26 & 1) == 0)
    {
      details4 = [(__CFString *)firstObject details];
      uUID = [details4 mutableCopy];

      [uUID setModeIdentifier:v24];
      v55 = DNDSLogSleepingTrigger;
      modeIdentifier = v24;
      if (os_log_type_enabled(DNDSLogSleepingTrigger, OS_LOG_TYPE_DEFAULT))
      {
        v56 = v55;
        details5 = [(__CFString *)firstObject details];
        modeIdentifier2 = [details5 modeIdentifier];
        *buf = 138543618;
        v120 = v24;
        v121 = 2114;
        v122 = modeIdentifier2;
        _os_log_impl(&dword_24912E000, v56, OS_LOG_TYPE_DEFAULT, "Updating active assertion to new mode identifer for sleeping trigger; modeID=%{public}@ previousModeID=%{public}@", buf, 0x16u);

        modeIdentifier = v24;
      }

      v115 = v11;
      dataSource = v98;
      v59 = [v98 triggerManager:self takeModeAssertionWithDetails:uUID clientIdentifier:@"com.apple.donotdisturb.private.sleeping-trigger" error:&v115];
      v60 = v115;

      v11 = v60;
      modeCopy = v91;
      goto LABEL_53;
    }

    modeCopy = v91;
    modeIdentifier = v24;
    goto LABEL_32;
  }

LABEL_54:
}

uint64_t __53__DNDSSleepingTriggerManager__refreshWithMode_event___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 details];
  v4 = [v3 modeIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

id __53__DNDSSleepingTriggerManager__refreshWithMode_event___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = [a2 source];
  v3 = [v2 clientIdentifier];

  return v3;
}

uint64_t __53__DNDSSleepingTriggerManager__refreshWithMode_event___block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 56) == 1)
  {
    v4 = [DNDSModeAssertionInvalidationPredicate predicateForAssertionClientIdentifiers:*(a1 + 32)];
    v5 = [objc_alloc(MEMORY[0x277D05988]) initWithClientIdentifier:@"com.apple.donotdisturb.private.sleeping-trigger" deviceIdentifier:0];
    v6 = [MEMORY[0x277CBEAA8] date];
    v7 = [DNDSModeAssertionInvalidationRequest requestWithPredicate:v4 requestDate:v6 details:0 source:v5 reason:4 reasonOverride:0];

    v8 = DNDSLogSleepingTrigger;
    if (os_log_type_enabled(DNDSLogSleepingTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v9 = *(a1 + 48);
      v11 = v8;
      v12 = [v9 lifetime];
      v24 = 138543618;
      v25 = v10;
      v26 = 2114;
      v27 = v12;
      _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "Invalidating user assertion(s) for mode in response to event; modeID=%{public}@ lifetime=%{public}@", &v24, 0x16u);
    }

    v13 = [v3 invalidateAssertionsForRequest:v7];
  }

  v14 = [objc_alloc(MEMORY[0x277D05988]) initWithClientIdentifier:@"com.apple.donotdisturb.private.sleeping-trigger" deviceIdentifier:0];
  v15 = DNDSLogSleepingTrigger;
  if (os_log_type_enabled(DNDSLogSleepingTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 40);
    v16 = *(a1 + 48);
    v18 = v15;
    v19 = [v16 lifetime];
    v24 = 138543618;
    v25 = v17;
    v26 = 2114;
    v27 = v19;
    _os_log_impl(&dword_24912E000, v18, OS_LOG_TYPE_DEFAULT, "Acquiring assertion for sleeping trigger in response to event; modeID=%{public}@ lifetime=%{public}@", &v24, 0x16u);
  }

  v20 = *(a1 + 48);
  v21 = [MEMORY[0x277CBEAA8] date];
  v22 = [v3 takeAssertionWithDetails:v20 source:v14 startDate:v21];

  return 1;
}

uint64_t __53__DNDSSleepingTriggerManager__refreshWithMode_event___block_invoke_17(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [DNDSModeAssertionInvalidationPredicate predicateForAssertionClientIdentifiers:*(a1 + 32)];
  v5 = [objc_alloc(MEMORY[0x277D05988]) initWithClientIdentifier:@"com.apple.donotdisturb.private.sleeping-trigger" deviceIdentifier:0];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [DNDSModeAssertionInvalidationRequest requestWithPredicate:v4 requestDate:v6 details:0 source:v5 reason:3 reasonOverride:0];

  v8 = DNDSLogSleepingTrigger;
  if (os_log_type_enabled(DNDSLogSleepingTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Invalidating assertion(s) for mode in response to event; modeID=%{public}@", &v12, 0xCu);
  }

  v10 = [v3 invalidateAssertionsForRequest:v7];

  return 1;
}

- (void)_configureSleepingTriggerWithMode:(id)mode
{
  v20 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
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
    v7 = DNDSLogSleepingTrigger;
    if (os_log_type_enabled(DNDSLogSleepingTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = modeCopy;
      _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Adding biome sleeping event monitor; mode=%{public}@", buf, 0xCu);
    }

    v8 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"com.apple.donotdisturb.sleepingTrigger" targetQueue:self->_biomeQueue];
    sleepModeStream = [MEMORY[0x277CF1B58] sleepModeStream];
    publisher = [sleepModeStream publisher];
    v11 = [publisher subscribeOn:v8];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __64__DNDSSleepingTriggerManager__configureSleepingTriggerWithMode___block_invoke_29;
    v15 = &unk_278F8AC30;
    selfCopy = self;
    v17 = modeCopy;
    v6 = [v11 sinkWithCompletion:&__block_literal_global_28 receiveInput:&v12];

    [(NSMutableDictionary *)self->_sinks setObject:v6 forKeyedSubscript:@"system", v12, v13, v14, v15, selfCopy];
  }
}

void __64__DNDSSleepingTriggerManager__configureSleepingTriggerWithMode___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = DNDSLogSleepingTrigger;
  if (os_log_type_enabled(DNDSLogSleepingTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = a2;
    v6 = [v5 state];
    v7 = [v5 error];

    v8 = 134218242;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Sleeping subscription completed: state=%ld error=%{public}@", &v8, 0x16u);
  }
}

void __64__DNDSSleepingTriggerManager__configureSleepingTriggerWithMode___block_invoke_29(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DNDSLogSleepingTrigger;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 eventBody];
    v6 = DNDBMSleepModeChangeReasonToString([v5 sleepModeChangeReason]);
    v7 = [v3 eventBody];
    v8 = [v7 sleepModeState];
    if (v8 > 2)
    {
      v9 = @"unspecified";
    }

    else
    {
      v9 = off_278F8B3F0[v8];
    }

    v10 = [v3 eventBody];
    v11 = [v10 expectedEndDate];
    [v3 timestamp];
    v21 = 138544130;
    v22 = v6;
    v23 = 2114;
    v24 = v9;
    v25 = 2114;
    v26 = v11;
    v27 = 2048;
    v28 = v12;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Received sleeping event: reason=%{public}@ state=%{public}@ expectedEnd=%{public}@ timestamp:%f", &v21, 0x2Au);
  }

  [*(a1 + 32) _refreshWithMode:*(a1 + 40) event:v3];
  v13 = DNDSLogSleepingTrigger;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v3 eventBody];
    v15 = DNDBMSleepModeChangeReasonToString([v14 sleepModeChangeReason]);
    v16 = [v3 eventBody];
    v17 = [v16 sleepModeState];
    if (v17 > 2)
    {
      v18 = @"unspecified";
    }

    else
    {
      v18 = off_278F8B3F0[v17];
    }

    v19 = [v3 eventBody];
    v20 = [v19 expectedEndDate];
    v21 = 138543874;
    v22 = v15;
    v23 = 2114;
    v24 = v18;
    v25 = 2114;
    v26 = v20;
    _os_log_impl(&dword_24912E000, v13, OS_LOG_TYPE_DEFAULT, "Processed sleeping event: reason=%{public}@ state=%{public}@ expectedEnd=%{public}@", &v21, 0x20u);
  }
}

- (DNDSSleepingTriggerManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end