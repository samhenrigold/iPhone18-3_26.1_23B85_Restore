@interface DNDSHearingTestTriggerManager
- (DNDSHearingTestTriggerManagerDataSource)dataSource;
- (void)refreshWithEvent:(id)event;
@end

@implementation DNDSHearingTestTriggerManager

- (void)refreshWithEvent:(id)event
{
  v64 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dataSource = [(DNDSHearingTestTriggerManager *)self dataSource];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v7 = [WeakRetained hearingTestModeForHearingTestTriggerManager:self];

  modeIdentifier = [v7 modeIdentifier];
  v59 = 0;
  v9 = [dataSource triggerManager:self assertionsWithClientIdentifer:@"com.apple.donotdisturb.private.hearing-trigger" error:&v59];
  v10 = v59;
  if (!eventCopy)
  {
    if ([v9 count])
    {
      firstObject = [v9 firstObject];
      v13 = firstObject;
      if (modeIdentifier)
      {
        details = [firstObject details];
        modeIdentifier2 = [details modeIdentifier];
        v20 = [modeIdentifier isEqualToString:modeIdentifier2];

        if (v20)
        {
          v15 = v10;
        }

        else
        {
          v51 = v13;
          details2 = [v13 details];
          v44 = [details2 mutableCopy];

          [v44 setModeIdentifier:modeIdentifier];
          v57 = v10;
          v45 = [dataSource triggerManager:self takeModeAssertionWithDetails:v44 clientIdentifier:@"com.apple.donotdisturb.private.hearing-trigger" error:&v57];
          v15 = v57;

          v46 = DNDSLogHearingTestTrigger;
          if (os_log_type_enabled(DNDSLogHearingTestTrigger, OS_LOG_TYPE_DEFAULT))
          {
            v47 = v46;
            details3 = [v51 details];
            modeIdentifier3 = [details3 modeIdentifier];
            *buf = 138543618;
            v61 = modeIdentifier;
            v62 = 2114;
            v63 = modeIdentifier3;
            _os_log_impl(&dword_24912E000, v47, OS_LOG_TYPE_DEFAULT, "Updating active assertion to new mode identifer for hearing test session trigger; modeID=%{public}@ previousModeID=%{public}@", buf, 0x16u);
          }

          v13 = v51;
        }

        eventCopy = 0;
      }

      else
      {
        uUID = [firstObject UUID];
        v58 = v10;
        v38 = [dataSource triggerManager:self invalidateModeAssertionWithUUID:uUID reason:2 reasonOverride:0 clientIdentifier:@"com.apple.donotdisturb.private.hearing-trigger" error:&v58];
        v15 = v58;

        v39 = DNDSLogHearingTestTrigger;
        if (os_log_type_enabled(DNDSLogHearingTestTrigger, OS_LOG_TYPE_DEFAULT))
        {
          v40 = v39;
          details4 = [v13 details];
          modeIdentifier4 = [details4 modeIdentifier];
          *buf = 138543362;
          v61 = modeIdentifier4;
          _os_log_impl(&dword_24912E000, v40, OS_LOG_TYPE_DEFAULT, "Invalidating active assertion no mode identifer for hearing test session trigger; previousModeID=%{public}@", buf, 0xCu);
        }
      }

      goto LABEL_25;
    }

LABEL_18:
    v15 = v10;
    goto LABEL_28;
  }

  if (modeIdentifier)
  {
    isHearingTestActive = [eventCopy isHearingTestActive];
    v12 = [v9 count];
    if (isHearingTestActive)
    {
      if (!v12)
      {
        v13 = objc_alloc_init(MEMORY[0x277D05A40]);
        [v13 setIdentifier:@"com.apple.donotdisturb.trigger.hearing"];
        [v13 setLifetime:0];
        [v13 setModeIdentifier:modeIdentifier];
        v56 = v10;
        v14 = [dataSource triggerManager:self takeModeAssertionWithDetails:v13 clientIdentifier:@"com.apple.donotdisturb.private.hearing-trigger" error:&v56];
        v15 = v56;

        v16 = DNDSLogHearingTestTrigger;
        if (os_log_type_enabled(DNDSLogHearingTestTrigger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v61 = modeIdentifier;
          _os_log_impl(&dword_24912E000, v16, OS_LOG_TYPE_DEFAULT, "Acquiring assertion for hearing test session trigger in response to event; modeID=%{public}@", buf, 0xCu);
        }

LABEL_25:

        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (!v12)
    {
      goto LABEL_18;
    }

    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __50__DNDSHearingTestTriggerManager_refreshWithEvent___block_invoke;
    v54[3] = &unk_278F8A0B0;
    v55 = modeIdentifier;
    v29 = [v9 bs_filter:v54];
    firstObject2 = [v29 firstObject];

    if (firstObject2)
    {
      uUID2 = [firstObject2 UUID];
      v53 = v10;
      v32 = [dataSource triggerManager:self invalidateModeAssertionWithUUID:uUID2 reason:3 reasonOverride:0 clientIdentifier:@"com.apple.donotdisturb.private.hearing-trigger" error:&v53];
      v15 = v53;

      v33 = DNDSLogHearingTestTrigger;
      if (os_log_type_enabled(DNDSLogHearingTestTrigger, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v33;
        details5 = [firstObject2 details];
        modeIdentifier5 = [details5 modeIdentifier];
        *buf = 138543362;
        v61 = modeIdentifier5;
        _os_log_impl(&dword_24912E000, v34, OS_LOG_TYPE_DEFAULT, "Invalidating active assertion for hearing test session trigger in response to event; previousModeID=%{public}@", buf, 0xCu);
      }
    }

    else
    {
      v15 = v10;
    }
  }

  else
  {
    if (![v9 count])
    {
      goto LABEL_18;
    }

    firstObject3 = [v9 firstObject];
    uUID3 = [firstObject3 UUID];
    v52 = v10;
    v23 = [dataSource triggerManager:self invalidateModeAssertionWithUUID:uUID3 reason:3 reasonOverride:0 clientIdentifier:@"com.apple.donotdisturb.private.hearing-trigger" error:&v52];
    v15 = v52;

    v24 = DNDSLogHearingTestTrigger;
    if (os_log_type_enabled(DNDSLogHearingTestTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      firstObject4 = [v9 firstObject];
      details6 = [firstObject4 details];
      modeIdentifier6 = [details6 modeIdentifier];
      *buf = 138543362;
      v61 = modeIdentifier6;
      _os_log_impl(&dword_24912E000, v25, OS_LOG_TYPE_DEFAULT, "Invalidating active assertion for hearing test session trigger in response to event, trigger is disabled; previousModeID=%{public}@", buf, 0xCu);
    }
  }

LABEL_28:
  v50 = DNDSLogHearingTestTrigger;
  if (os_log_type_enabled(DNDSLogHearingTestTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v61 = v7;
    _os_log_impl(&dword_24912E000, v50, OS_LOG_TYPE_DEFAULT, "Updated assertions for hearing test trigger: mode=%{public}@", buf, 0xCu);
  }
}

uint64_t __50__DNDSHearingTestTriggerManager_refreshWithEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 details];
  v4 = [v3 modeIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (DNDSHearingTestTriggerManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end