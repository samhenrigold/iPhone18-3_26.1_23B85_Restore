@interface HKSPSyncAnchorContainer
+ (id)allKeys;
+ (id)descriptionForKey:(id)key;
- (HKSPSyncAnchorContainer)initWithCoder:(id)coder;
- (HKSPSyncAnchorContainer)initWithIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)incrementSyncAnchorForKey:(id)key;
- (id)lock_incrementSyncAnchorForKey:(id)key;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)syncAnchorForKey:(id)key;
- (void)_withLock:(id)lock;
- (void)compareWithContainer:(id)container sleepScheduleSyncAnchorOutOfDate:(id)date sleepSettingsSyncAnchorOutOfDate:(id)ofDate sleepEventRecordSyncAnchorOutOfDate:(id)outOfDate sleepScheduleStateSyncAnchorOutOfDate:(id)anchorOutOfDate sleepModeSyncAnchorOutOfDate:(id)syncAnchorOutOfDate sleepEventSyncAnchorOutOfDate:(id)eventSyncAnchorOutOfDate;
- (void)encodeWithCoder:(id)coder;
- (void)forceSetSleepScheduleSyncAnchor:(id)anchor;
- (void)lock_setSyncAnchor:(id)anchor forKey:(id)key;
- (void)lock_updateSyncAnchor:(id)anchor forKey:(id)key;
- (void)updateSyncAnchor:(id)anchor forKey:(id)key;
- (void)updateWithContainer:(id)container;
@end

@implementation HKSPSyncAnchorContainer

+ (id)allKeys
{
  v4[6] = *MEMORY[0x277D85DE8];
  v4[0] = @"SleepScheduleSyncAnchor";
  v4[1] = @"SleepSettingsSyncAnchor";
  v4[2] = @"SleepRecordSyncAnchor";
  v4[3] = @"SleepStateSyncAnchor";
  v4[4] = @"SleepModeSyncAnchor";
  v4[5] = @"SleepEventSyncAnchor";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:6];

  return v2;
}

- (HKSPSyncAnchorContainer)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = HKSPSyncAnchorContainer;
  v6 = [(HKSPSyncAnchorContainer *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_identifier, identifier);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    backingDictionary = v7->_backingDictionary;
    v7->_backingDictionary = v8;

    v10 = v7;
  }

  return v7;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)syncAnchorForKey:(id)key
{
  keyCopy = key;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__6;
  v15 = __Block_byref_object_dispose__6;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__HKSPSyncAnchorContainer_syncAnchorForKey___block_invoke;
  v8[3] = &unk_279C74230;
  v10 = &v11;
  v8[4] = self;
  v5 = keyCopy;
  v9 = v5;
  [(HKSPSyncAnchorContainer *)self _withLock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __44__HKSPSyncAnchorContainer_syncAnchorForKey___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) lock_syncAnchorForKey:*(a1 + 40)];

  return MEMORY[0x2821F96F8]();
}

- (void)updateSyncAnchor:(id)anchor forKey:(id)key
{
  anchorCopy = anchor;
  keyCopy = key;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__HKSPSyncAnchorContainer_updateSyncAnchor_forKey___block_invoke;
  v10[3] = &unk_279C75CC0;
  v10[4] = self;
  v11 = anchorCopy;
  v12 = keyCopy;
  v8 = keyCopy;
  v9 = anchorCopy;
  [(HKSPSyncAnchorContainer *)self _withLock:v10];
}

- (void)lock_updateSyncAnchor:(id)anchor forKey:(id)key
{
  anchorCopy = anchor;
  keyCopy = key;
  if (anchorCopy)
  {
    v7 = [(HKSPSyncAnchorContainer *)self lock_syncAnchorForKey:keyCopy];
    v8 = v7;
    if (!v7 || [v7 compare:anchorCopy] == -1)
    {
      [(HKSPSyncAnchorContainer *)self lock_setSyncAnchor:anchorCopy forKey:keyCopy];
    }
  }
}

- (void)lock_setSyncAnchor:(id)anchor forKey:(id)key
{
  keyCopy = key;
  v7 = [anchor copyWithZone:0];
  [(NSMutableDictionary *)self->_backingDictionary setObject:v7 forKeyedSubscript:keyCopy];
}

- (id)incrementSyncAnchorForKey:(id)key
{
  keyCopy = key;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__6;
  v15 = __Block_byref_object_dispose__6;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__HKSPSyncAnchorContainer_incrementSyncAnchorForKey___block_invoke;
  v8[3] = &unk_279C74230;
  v10 = &v11;
  v8[4] = self;
  v5 = keyCopy;
  v9 = v5;
  [(HKSPSyncAnchorContainer *)self _withLock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __53__HKSPSyncAnchorContainer_incrementSyncAnchorForKey___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) lock_incrementSyncAnchorForKey:*(a1 + 40)];

  return MEMORY[0x2821F96F8]();
}

- (id)lock_incrementSyncAnchorForKey:(id)key
{
  keyCopy = key;
  v5 = [(HKSPSyncAnchorContainer *)self lock_getSyncAnchorForKey:keyCopy];
  hksp_increment = [v5 hksp_increment];
  [(HKSPSyncAnchorContainer *)self lock_setSyncAnchor:hksp_increment forKey:keyCopy];

  return hksp_increment;
}

+ (id)descriptionForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"SleepScheduleSyncAnchor"])
  {
    v4 = @"schedule";
  }

  else if ([keyCopy isEqualToString:@"SleepSettingsSyncAnchor"])
  {
    v4 = @"settings";
  }

  else if ([keyCopy isEqualToString:@"SleepRecordSyncAnchor"])
  {
    v4 = @"record";
  }

  else if ([keyCopy isEqualToString:@"SleepStateSyncAnchor"])
  {
    v4 = @"state";
  }

  else if ([keyCopy isEqualToString:@"SleepModeSyncAnchor"])
  {
    v4 = @"mode";
  }

  else if ([keyCopy isEqualToString:@"SleepEventSyncAnchor"])
  {
    v4 = @"event";
  }

  else
  {
    v4 = &stru_287A719F0;
  }

  return v4;
}

- (void)updateWithContainer:(id)container
{
  v4 = [container copy];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__HKSPSyncAnchorContainer_updateWithContainer___block_invoke;
  v6[3] = &unk_279C73B58;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HKSPSyncAnchorContainer *)self _withLock:v6];
}

void __47__HKSPSyncAnchorContainer_updateWithContainer___block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [objc_opt_class() allKeys];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = *(a1 + 32);
        v10 = [*(a1 + 40) syncAnchorForKey:v8];
        [v9 lock_updateSyncAnchor:v10 forKey:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)compareWithContainer:(id)container sleepScheduleSyncAnchorOutOfDate:(id)date sleepSettingsSyncAnchorOutOfDate:(id)ofDate sleepEventRecordSyncAnchorOutOfDate:(id)outOfDate sleepScheduleStateSyncAnchorOutOfDate:(id)anchorOutOfDate sleepModeSyncAnchorOutOfDate:(id)syncAnchorOutOfDate sleepEventSyncAnchorOutOfDate:(id)eventSyncAnchorOutOfDate
{
  v38[6] = *MEMORY[0x277D85DE8];
  containerCopy = container;
  eventSyncAnchorOutOfDateCopy = eventSyncAnchorOutOfDate;
  syncAnchorOutOfDateCopy = syncAnchorOutOfDate;
  anchorOutOfDateCopy = anchorOutOfDate;
  outOfDateCopy = outOfDate;
  ofDateCopy = ofDate;
  dateCopy = date;
  v21 = [containerCopy copy];
  v37[0] = @"SleepScheduleSyncAnchor";
  v22 = MEMORY[0x26D64AA30](dateCopy);

  v38[0] = v22;
  v37[1] = @"SleepSettingsSyncAnchor";
  v23 = MEMORY[0x26D64AA30](ofDateCopy);

  v38[1] = v23;
  v37[2] = @"SleepRecordSyncAnchor";
  v24 = MEMORY[0x26D64AA30](outOfDateCopy);

  v38[2] = v24;
  v37[3] = @"SleepModeSyncAnchor";
  v25 = MEMORY[0x26D64AA30](syncAnchorOutOfDateCopy);

  v38[3] = v25;
  v37[4] = @"SleepStateSyncAnchor";
  v26 = MEMORY[0x26D64AA30](anchorOutOfDateCopy);

  v38[4] = v26;
  v37[5] = @"SleepEventSyncAnchor";
  v27 = MEMORY[0x26D64AA30](eventSyncAnchorOutOfDateCopy);

  v38[5] = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:6];

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __247__HKSPSyncAnchorContainer_compareWithContainer_sleepScheduleSyncAnchorOutOfDate_sleepSettingsSyncAnchorOutOfDate_sleepEventRecordSyncAnchorOutOfDate_sleepScheduleStateSyncAnchorOutOfDate_sleepModeSyncAnchorOutOfDate_sleepEventSyncAnchorOutOfDate___block_invoke;
  v33[3] = &unk_279C75CE8;
  v33[4] = self;
  v34 = v21;
  v35 = containerCopy;
  v36 = v28;
  v29 = v28;
  v30 = containerCopy;
  v31 = v21;
  [(HKSPSyncAnchorContainer *)self _withLock:v33];
}

void __247__HKSPSyncAnchorContainer_compareWithContainer_sleepScheduleSyncAnchorOutOfDate_sleepSettingsSyncAnchorOutOfDate_sleepEventRecordSyncAnchorOutOfDate_sleepScheduleStateSyncAnchorOutOfDate_sleepModeSyncAnchorOutOfDate_sleepEventSyncAnchorOutOfDate___block_invoke(id *a1, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [objc_opt_class() allKeys];
  v3 = [obj countByEnumeratingWithState:&v20 objects:v34 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v21;
    *&v4 = 138544386;
    v17 = v4;
    do
    {
      v7 = 0;
      v18 = v5;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * v7);
        v9 = [a1[5] syncAnchorForKey:{v8, v17}];
        v10 = [a1[4] lock_syncAnchorForKey:v8];
        if (!v9 || [v9 compare:v10] == -1)
        {
          v11 = HKSPLogForCategory(0xAuLL);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = [a1[4] succinctDescription];
            v13 = [a1[6] succinctDescription];
            [objc_opt_class() descriptionForKey:v8];
            v15 = v14 = v6;
            *buf = v17;
            v25 = v12;
            v26 = 2114;
            v27 = v13;
            v28 = 2114;
            v29 = v15;
            v30 = 2114;
            v31 = v9;
            v32 = 2114;
            v33 = v10;
            _os_log_impl(&dword_269A84000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ container %{public}@ has out of date %{public}@ sync anchor (%{public}@ vs %{public}@)", buf, 0x34u);

            v6 = v14;
            v5 = v18;
          }

          v16 = [a1[7] objectForKeyedSubscript:v8];
          (v16)[2](v16, v10);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v20 objects:v34 count:16];
    }

    while (v5);
  }
}

- (void)forceSetSleepScheduleSyncAnchor:(id)anchor
{
  anchorCopy = anchor;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HKSPSyncAnchorContainer_forceSetSleepScheduleSyncAnchor___block_invoke;
  v6[3] = &unk_279C73B58;
  v7 = anchorCopy;
  selfCopy = self;
  v5 = anchorCopy;
  [(HKSPSyncAnchorContainer *)self _withLock:v6];
}

uint64_t __59__HKSPSyncAnchorContainer_forceSetSleepScheduleSyncAnchor___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2)
  {
    return [v1 lock_setSyncAnchor:v2 forKey:@"SleepScheduleSyncAnchor"];
  }

  else
  {
    return [v1 lock_removeSyncAnchorForKey:@"SleepScheduleSyncAnchor"];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__HKSPSyncAnchorContainer_encodeWithCoder___block_invoke;
  v6[3] = &unk_279C73B58;
  v7 = coderCopy;
  selfCopy = self;
  v5 = coderCopy;
  [(HKSPSyncAnchorContainer *)self _withLock:v6];
}

void __43__HKSPSyncAnchorContainer_encodeWithCoder___block_invoke(uint64_t a1)
{
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 16) forKey:@"identifier"];
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 24) copy];
  [v2 encodeObject:v3 forKey:@"dictionary"];
}

- (HKSPSyncAnchorContainer)initWithCoder:(id)coder
{
  v21 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = HKSPSyncAnchorContainer;
  v5 = [(HKSPSyncAnchorContainer *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = HKSPSyncAnchorClass(v19, v9);
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:3];
    v11 = [v8 setWithArray:v10];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"dictionary"];
    v13 = [v12 mutableCopy];
    backingDictionary = v5->_backingDictionary;
    v5->_backingDictionary = v13;

    v15 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__HKSPSyncAnchorContainer_copyWithZone___block_invoke;
  v8[3] = &unk_279C73B58;
  v5 = v4;
  v9 = v5;
  selfCopy = self;
  [(HKSPSyncAnchorContainer *)self _withLock:v8];
  v6 = v5;

  return v6;
}

uint64_t __40__HKSPSyncAnchorContainer_copyWithZone___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 40) + 16) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  *(*(a1 + 32) + 24) = [*(*(a1 + 40) + 24) mutableCopy];

  return MEMORY[0x2821F96F8]();
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(HKSPSyncAnchorContainer *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  identifier = [(HKSPSyncAnchorContainer *)self identifier];
  v6 = [v4 appendObject:identifier withName:@"id" skipIfNil:1];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__HKSPSyncAnchorContainer_descriptionBuilderWithMultilinePrefix___block_invoke;
  v11[3] = &unk_279C73B58;
  v11[4] = self;
  v7 = v4;
  v12 = v7;
  [(HKSPSyncAnchorContainer *)self _withLock:v11];
  v8 = v12;
  v9 = v7;

  return v7;
}

void __65__HKSPSyncAnchorContainer_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [objc_opt_class() allKeys];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = *(a1 + 40);
        v10 = [*(a1 + 32) lock_syncAnchorForKey:v8];
        v11 = [objc_opt_class() descriptionForKey:v8];
        v12 = [v9 appendObject:v10 withName:v11];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(HKSPSyncAnchorContainer *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  identifier = [(HKSPSyncAnchorContainer *)self identifier];
  v5 = [v3 appendObject:identifier withName:@"id"];

  return v3;
}

@end