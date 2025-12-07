@interface DNDSStateProvider
- (DNDSStateProvider)initWithModeConfigurationManager:(id)manager;
- (id)recalculateStateForSnapshot:(id)snapshot;
@end

@implementation DNDSStateProvider

- (DNDSStateProvider)initWithModeConfigurationManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = DNDSStateProvider;
  v6 = [(DNDSStateProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modeConfigurationManager, manager);
  }

  return v7;
}

- (id)recalculateStateForSnapshot:(id)snapshot
{
  v91 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  [(DNDSStateProvider *)self setLastSystemSnapshot:?];
  v3 = DNDSLogStateProvider;
  if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    activeAssertionUUIDs = [snapshotCopy activeAssertionUUIDs];
    *buf = 138543362;
    v90 = activeAssertionUUIDs;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Calculate DND state for snapshot: activeAssertionUUIDs=%{public}@", buf, 0xCu);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  assertions = [snapshotCopy assertions];
  v7 = [assertions countByEnumeratingWithState:&v83 objects:v88 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v84;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v84 != v9)
        {
          objc_enumerationMutation(assertions);
        }

        v11 = DNDSLogStateProvider;
        if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(*(&v83 + 1) + 8 * i);
          *buf = 138543362;
          v90 = v12;
          _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "assertion for snapshot: assertion=%{public}@", buf, 0xCu);
        }
      }

      v8 = [assertions countByEnumeratingWithState:&v83 objects:v88 count:16];
    }

    while (v8);
  }

  activeAssertionUUIDs2 = [snapshotCopy activeAssertionUUIDs];
  if ([activeAssertionUUIDs2 count])
  {
    lostModeState = [snapshotCopy lostModeState];

    if (lostModeState != 1)
    {
      if ([snapshotCopy interruptionBehaviorSetting] == 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      goto LABEL_19;
    }
  }

  else
  {
  }

  v15 = 0;
LABEL_19:
  v70 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = objc_alloc_init(DNDSModeResolutionService);
  v74 = [(DNDSModeResolutionService *)v16 recalculateModeForSnapshot:snapshotCopy];
  assertions2 = [snapshotCopy assertions];
  v18 = [assertions2 count];

  if (!v18)
  {
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v59 = 0;
    goto LABEL_52;
  }

  v66 = v15;
  v67 = v16;
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = [snapshotCopy assertions];
  v76 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
  if (!v76)
  {
    v69 = 0;
    goto LABEL_51;
  }

  v69 = 0;
  v75 = *v80;
  v19 = v74;
  do
  {
    for (j = 0; j != v76; ++j)
    {
      if (*v80 != v75)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v79 + 1) + 8 * j);
      activeDateIntervalByAssertionUUID = [snapshotCopy activeDateIntervalByAssertionUUID];
      uUID = [v21 UUID];
      v24 = [activeDateIntervalByAssertionUUID objectForKey:uUID];

      details = [v21 details];
      userVisibleEndDate = [details userVisibleEndDate];

      details2 = [v21 details];
      lifetime = [details2 lifetime];
      lifetimeType = [lifetime lifetimeType];

      activeAssertionUUIDs3 = [snapshotCopy activeAssertionUUIDs];
      uUID2 = [v21 UUID];
      v32 = [activeAssertionUUIDs3 containsObject:uUID2];

      if (v32)
      {
        v33 = objc_alloc(MEMORY[0x277D05AA8]);
        source = [v21 source];
        [source clientIdentifier];
        v35 = lifetimeType;
        v37 = v36 = userVisibleEndDate;
        [v21 details];
        v39 = v38 = v24;
        modeIdentifier = [v39 modeIdentifier];
        v41 = v33;
        v42 = v35;
        v43 = [v41 initWithClientIdentifier:v37 modeIdentifier:modeIdentifier lifetimeType:v35 activeDateInterval:v38 userVisibleEndDate:v36];

        userVisibleEndDate = v36;
        [v70 addObject:v43];
        if (v36)
        {
          endDate = v36;
        }

        else
        {
          endDate = [v38 endDate];
        }

        startDate = endDate;
        v19 = v74;
        v24 = v38;

        lifetimeType = v42;
        if (v74)
        {
LABEL_33:
          v77 = userVisibleEndDate;
          details3 = [v21 details];
          modeIdentifier2 = [details3 modeIdentifier];
          if (modeIdentifier2 == v19)
          {
            v56 = 0;
          }

          else
          {
            v73 = v24;
            details4 = [v21 details];
            modeIdentifier3 = [details4 modeIdentifier];
            if (modeIdentifier3)
            {
              details5 = [v21 details];
              modeIdentifier4 = [details5 modeIdentifier];
              v54 = lifetimeType;
              v55 = [modeIdentifier4 isEqual:v74];

              v19 = v74;
              v56 = v55 ^ 1;
              lifetimeType = v54;
            }

            else
            {
              v56 = 1;
            }

            v24 = v73;
          }

          userVisibleEndDate = v77;
          if (!startDate)
          {
            goto LABEL_46;
          }

          goto LABEL_43;
        }
      }

      else
      {
        activeAssertionUUIDs4 = [snapshotCopy activeAssertionUUIDs];
        v46 = [activeAssertionUUIDs4 count];

        if (v46)
        {
          startDate = 0;
          if (v19)
          {
            goto LABEL_33;
          }
        }

        else
        {
          startDate = [v24 startDate];
          if (v19)
          {
            goto LABEL_33;
          }
        }
      }

      v56 = 0;
      if (!startDate)
      {
        goto LABEL_46;
      }

LABEL_43:
      if ((v56 & 1) == 0 && [distantPast compare:startDate] == -1)
      {
        v57 = startDate;

        v69 = lifetimeType;
        distantPast = v57;
      }

LABEL_46:
    }

    v76 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
  }

  while (v76);
LABEL_51:

  v15 = v66;
  v16 = v67;
  distantFuture = distantPast;
  v59 = v69;
LABEL_52:
  if (v74)
  {
    v60 = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager modeConfigurationForModeIdentifier:v74 withError:0];
  }

  else
  {
    v60 = 0;
  }

  v61 = objc_alloc(MEMORY[0x277D05AA0]);
  lastUpdate = [snapshotCopy lastUpdate];
  v63 = [v61 initWithSuppressionState:v15 activeModeAssertionMetadata:v70 startDate:lastUpdate userVisibleTransitionDate:distantFuture userVisibleTransitionLifetimeType:v59 activeModeConfiguration:v60];

  v64 = DNDSLogStateProvider;
  if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v90 = v63;
    _os_log_impl(&dword_24912E000, v64, OS_LOG_TYPE_DEFAULT, "Current DND state was calculated: state=%{private}@", buf, 0xCu);
  }

  [(DNDSStateProvider *)self setLastCalculatedState:v63];

  return v63;
}

@end