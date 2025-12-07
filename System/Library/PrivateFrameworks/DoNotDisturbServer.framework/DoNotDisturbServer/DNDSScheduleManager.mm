@interface DNDSScheduleManager
- (DNDSScheduleManager)initWithModeAssertionManager:(id)manager;
- (DNDSScheduleManagerDataSource)dataSource;
- (id)_scheduleManagerClientIdentifierForModeIdentifier:(id)identifier;
- (void)_refreshWithScheduleSettings:(id)settings modeIdentifier:(id)identifier currentScheduleAssertion:(id)assertion context:(id)context;
- (void)_refreshWithScheduleSettingsByModeIdentifier:(id)identifier context:(id)context;
- (void)refresh;
@end

@implementation DNDSScheduleManager

- (DNDSScheduleManager)initWithModeAssertionManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = DNDSScheduleManager;
  v6 = [(DNDSScheduleManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modeAssertionManager, manager);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    currentScheduleSettingsByModeIdentifier = v7->_currentScheduleSettingsByModeIdentifier;
    v7->_currentScheduleSettingsByModeIdentifier = dictionary;
  }

  return v7;
}

- (void)refresh
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(*a2 + 40);
  v4 = 138543618;
  selfCopy = self;
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&dword_24912E000, log, OS_LOG_TYPE_ERROR, "Unable to update assertions for schedule: error=%{public}@, settings=%{public}@", &v4, 0x16u);
}

uint64_t __30__DNDSScheduleManager_refresh__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 dataSource];
  v6 = [v5 scheduleSettingsByModeIdentifierForScheduleManager:*(a1 + 32)];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  [*(a1 + 32) _refreshWithScheduleSettingsByModeIdentifier:*(*(*(a1 + 40) + 8) + 40) context:v4];
  return 1;
}

- (void)_refreshWithScheduleSettingsByModeIdentifier:(id)identifier context:(id)context
{
  v38 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  contextCopy = context;
  allKeys = [identifierCopy allKeys];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __76__DNDSScheduleManager__refreshWithScheduleSettingsByModeIdentifier_context___block_invoke;
  v36[3] = &unk_278F8B508;
  selfCopy = self;
  v36[4] = self;
  v10 = [allKeys bs_map:v36];

  v26 = v10;
  [MEMORY[0x277D05938] predicateForModeAssertionsWithClientIdentifiers:v10];
  v25 = v11 = contextCopy;
  v12 = [contextCopy modeAssertionsMatchingPredicate:?];
  v29 = identifierCopy;
  v13 = [identifierCopy mutableCopy];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v12;
  v14 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v33;
    v17 = *MEMORY[0x277D05868];
    v27 = *MEMORY[0x277D05830];
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v32 + 1) + 8 * i);
        details = [v19 details];
        modeIdentifier = [details modeIdentifier];

        if ([modeIdentifier isEqualToString:v17])
        {
          v22 = v27;

          modeIdentifier = v22;
        }

        v23 = [v29 objectForKeyedSubscript:modeIdentifier];
        [(DNDSScheduleManager *)selfCopy _refreshWithScheduleSettings:v23 modeIdentifier:modeIdentifier currentScheduleAssertion:v19 context:v11];
        [v13 setObject:0 forKeyedSubscript:modeIdentifier];
      }

      v15 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v15);
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __76__DNDSScheduleManager__refreshWithScheduleSettingsByModeIdentifier_context___block_invoke_2;
  v30[3] = &unk_278F8B530;
  v30[4] = selfCopy;
  v31 = v11;
  v24 = v11;
  [v13 enumerateKeysAndObjectsUsingBlock:v30];
}

- (void)_refreshWithScheduleSettings:(id)settings modeIdentifier:(id)identifier currentScheduleAssertion:(id)assertion context:(id)context
{
  v72 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  identifierCopy = identifier;
  assertionCopy = assertion;
  contextCopy = context;
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v13 = settingsCopy;
  v14 = [v13 countByEnumeratingWithState:&v63 objects:v71 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v64;
    v17 = 1;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v64 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v63 + 1) + 8 * i);
        [v19 scheduleEnabledSetting];
        if (DNDResolvedScheduleEnabledSetting() == 2)
        {
          v17 = 2;
        }

        creationDate = [v19 creationDate];
        if ([creationDate compare:distantFuture] == -1)
        {
          v21 = creationDate;

          distantFuture = v21;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v63 objects:v71 count:16];
    }

    while (v15);
  }

  else
  {
    v17 = 1;
  }

  v22 = identifierCopy;
  v23 = [(NSMutableDictionary *)self->_currentScheduleSettingsByModeIdentifier objectForKeyedSubscript:identifierCopy];
  if (![v23 isEqual:v13] || !assertionCopy && v17 == 2 || assertionCopy && v17 == 1)
  {
    v24 = [v13 copy];
    [(NSMutableDictionary *)self->_currentScheduleSettingsByModeIdentifier setObject:v24 forKeyedSubscript:identifierCopy];

    v59 = [(DNDSScheduleManager *)self _scheduleManagerClientIdentifierForModeIdentifier:identifierCopy];
    v25 = [objc_alloc(MEMORY[0x277D05988]) initWithClientIdentifier:v59 deviceIdentifier:0];
    v26 = v25;
    if (v17 == 2)
    {
      v55 = v25;
      v27 = objc_alloc_init(MEMORY[0x277D05A40]);
      [v27 setIdentifier:@"schedule"];
      v28 = [MEMORY[0x277D05970] lifetimeMatchingScheduleWithIdentifier:*MEMORY[0x277D05838]];
      [v27 setLifetime:v28];

      v29 = *MEMORY[0x277D05830];
      if (*MEMORY[0x277D05830] == identifierCopy || identifierCopy && v29 && [identifierCopy isEqual:*MEMORY[0x277D05830]])
      {
        firstObject = [v13 firstObject];
        [firstObject bedtimeBehaviorEnabledSetting];
        v31 = DNDResolvedBedtimeBehaviorEnabledSetting();

        v32 = *MEMORY[0x277D05868];
        if (v31 != 2)
        {
          v32 = v29;
        }

        v22 = v32;
      }

      identifierCopy = v22;
      [v27 setModeIdentifier:{v22, v55}];
      [v27 setReason:2];
      invalidationDate = distantFuture;
      details = [assertionCopy details];
      if ([details isEqual:v27])
      {
        startDate = [assertionCopy startDate];
        v36 = [startDate isEqual:invalidationDate];

        if (v36)
        {
          v37 = assertionCopy;
          v26 = v56;
LABEL_37:

          v22 = identifierCopy;
          goto LABEL_38;
        }
      }

      else
      {
      }

      v58 = v23;
      v45 = MEMORY[0x277D05968];
      v70 = v59;
      v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
      [v45 predicateForModeAssertionInvalidationsWithAssertionClientIdentifiers:v46];
      v47 = v62 = v27;

      v43 = 0;
      v26 = v56;
      do
      {
        v48 = invalidationDate;
        v49 = v43;
        v43 = [contextCopy takeAssertionWithDetails:v62 source:v56 startDate:invalidationDate];

        v50 = [contextCopy modeAssertionInvalidationsMatchingPredicate:v47];
        firstObject2 = [v50 firstObject];
        invalidationDate = [firstObject2 invalidationDate];

        assertions = [v43 assertions];
        v53 = [assertions count];
      }

      while (!v53);

      v37 = assertionCopy;
      v27 = v62;
      v23 = v58;
    }

    else
    {
      v37 = assertionCopy;
      if (!assertionCopy)
      {
LABEL_38:

        goto LABEL_39;
      }

      v57 = v23;
      v38 = distantFuture;
      [assertionCopy UUID];
      v39 = contextCopy;
      v41 = v40 = v26;
      v69 = v41;
      v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
      invalidationDate = [DNDSModeAssertionInvalidationPredicate predicateForAssertionUUIDs:v42];

      v26 = v40;
      contextCopy = v39;
      v27 = v38;
      v23 = v57;
      v43 = [DNDSModeAssertionInvalidationRequest requestWithPredicate:invalidationDate requestDate:v27 source:v26 reason:3];
      v44 = [contextCopy invalidateAssertionsForRequest:v43];
    }

    goto LABEL_37;
  }

  v54 = DNDSLogSchedule;
  if (os_log_type_enabled(DNDSLogSchedule, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v68 = v13;
    _os_log_impl(&dword_24912E000, v54, OS_LOG_TYPE_DEFAULT, "Existing schedule assertion does not need to change: settings=%{public}@", buf, 0xCu);
  }

  v37 = assertionCopy;
LABEL_39:
}

- (id)_scheduleManagerClientIdentifierForModeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = identifierCopy;
  if (*MEMORY[0x277D05830] == identifierCopy || identifierCopy && *MEMORY[0x277D05830] && ([identifierCopy isEqual:?] & 1) != 0)
  {
    v5 = @"com.apple.donotdisturb.private.schedule";
  }

  else
  {
    v5 = [v4 stringByAppendingString:@".private.schedule"];
  }

  return v5;
}

- (DNDSScheduleManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end