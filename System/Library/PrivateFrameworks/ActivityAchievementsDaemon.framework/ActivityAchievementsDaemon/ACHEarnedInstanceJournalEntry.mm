@interface ACHEarnedInstanceJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (ACHEarnedInstanceJournalEntry)initWithCoder:(id)coder;
- (ACHEarnedInstanceJournalEntry)initWithEarnedInstance:(id)instance provenance:(int64_t)provenance useLegacySyncIdentity:(BOOL)identity action:(int64_t)action;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ACHEarnedInstanceJournalEntry

- (ACHEarnedInstanceJournalEntry)initWithEarnedInstance:(id)instance provenance:(int64_t)provenance useLegacySyncIdentity:(BOOL)identity action:(int64_t)action
{
  instanceCopy = instance;
  v15.receiver = self;
  v15.super_class = ACHEarnedInstanceJournalEntry;
  v12 = [(ACHEarnedInstanceJournalEntry *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_action = action;
    objc_storeStrong(&v12->_earnedInstance, instance);
    v13->_provenance = provenance;
    v13->_useLegacySyncIdentity = identity;
  }

  return v13;
}

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  v34 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  profileCopy = profile;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  database = [profileCopy database];
  v29 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __58__ACHEarnedInstanceJournalEntry_applyEntries_withProfile___block_invoke;
  v24[3] = &unk_278490FC0;
  v25 = entriesCopy;
  v26 = profileCopy;
  v10 = v7;
  v27 = v10;
  v11 = v8;
  v28 = v11;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __58__ACHEarnedInstanceJournalEntry_applyEntries_withProfile___block_invoke_2;
  v21[3] = &unk_278490E30;
  v12 = v26;
  v22 = v12;
  v13 = v25;
  v23 = v13;
  v14 = [(HDHealthEntity *)ACHEarnedInstanceEntity performWriteTransactionWithHealthDatabase:database error:&v29 block:v24 inaccessibilityHandler:v21];
  v15 = v29;

  if (v14)
  {
    os_unfair_lock_lock(&journalAppliedObserverLock);
    WeakRetained = objc_loadWeakRetained(&_journalEntryAppliedObserver);

    if (WeakRetained)
    {
      v17 = objc_loadWeakRetained(&_journalEntryAppliedObserver);
      v18 = [v10 copy];
      v19 = [v11 copy];
      [v17 earnedInstanceEntityDidApplyJournalEntriesInsertedEarnedInstances:v18 removedEarnedInstances:v19];
    }

    os_unfair_lock_unlock(&journalAppliedObserverLock);
  }

  else
  {
    v20 = ACHLogDatabase();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = v13;
      v32 = 2114;
      v33 = v15;
      _os_log_impl(&dword_221DDC000, v20, OS_LOG_TYPE_DEFAULT, "Error applying journaled earned instances: %@: %{public}@", buf, 0x16u);
    }
  }
}

uint64_t __58__ACHEarnedInstanceJournalEntry_applyEntries_withProfile___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = 0x278490000uLL;
  v26 = a2;
  v25 = [v26 databaseForEntityClass:objc_opt_class()];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    LOBYTE(v28) = 1;
    while (1)
    {
      v8 = 0;
      v27 = v6;
      do
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v31 + 1) + 8 * v8);
        v10 = [v9 action];
        if (v10 != 1)
        {
          if (v10)
          {
            goto LABEL_16;
          }

          v11 = [v9 earnedInstance];
          v12 = ACHEarnedInstanceSyncIdentityFromEarnedInstance(v11, [v9 useLegacySyncIdentity], *(a1 + 40), v26);

          v13 = v4;
          v14 = *(v4 + 248);
          v15 = [v9 earnedInstance];
          v16 = [v9 provenance];
          [v12 entity];
          v18 = v17 = a1;
          v19 = [v14 _insertEarnedInstance:v15 provenance:v16 syncIdentity:objc_msgSend(v18 database:"persistentID") error:{v25, a3}];

          if (v19)
          {
            v20 = [v9 earnedInstance];
            v21 = [v20 copy];

            [v21 setKey:{objc_msgSend(v19, "persistentID")}];
            [*(v17 + 48) addObject:v21];
          }

          else
          {
            LOBYTE(v28) = 0;
          }

          v4 = v13;
          a1 = v17;
          v6 = v27;
          goto LABEL_14;
        }

        v22 = [v9 earnedInstance];
        v35 = v22;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];

        v28 = [*(v4 + 248) removeEarnedInstances:v12 profile:*(a1 + 40) error:a3];
        if (v28)
        {
          v23 = *(a1 + 56);
          v19 = [v9 earnedInstance];
          [v23 addObject:v19];
LABEL_14:
        }

LABEL_16:
        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (!v6)
      {
        goto LABEL_20;
      }
    }
  }

  LOBYTE(v28) = 1;
LABEL_20:

  return v28 & 1;
}

uint64_t __58__ACHEarnedInstanceJournalEntry_applyEntries_withProfile___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) database];
  v6 = [v5 addJournalEntries:*(a1 + 40) error:a3];

  return v6;
}

- (ACHEarnedInstanceJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ACHEarnedInstanceJournalEntry;
  v5 = [(HDJournalEntry *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_action = [coderCopy decodeIntegerForKey:@"action"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"earnedInstance"];
    if ([v6 length])
    {
      v7 = [objc_alloc(MEMORY[0x277CE8CF8]) initWithData:v6];
      if (v7)
      {
        v8 = [objc_alloc(MEMORY[0x277CE8D38]) initWithCodable:v7];
        earnedInstance = v5->_earnedInstance;
        v5->_earnedInstance = v8;

        -[ACHEarnedInstance setKey:](v5->_earnedInstance, "setKey:", [coderCopy decodeInt64ForKey:@"persistentID"]);
      }
    }

    v5->_provenance = [coderCopy decodeInt64ForKey:@"provenance"];
    v5->_useLegacySyncIdentity = 1;
    if ([coderCopy containsValueForKey:@"useLegacySyncIdentity"])
    {
      v5->_useLegacySyncIdentity = [coderCopy decodeBoolForKey:@"useLegacySyncIdentity"];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_action forKey:@"action"];
  earnedInstance = [(ACHEarnedInstanceJournalEntry *)self earnedInstance];
  v5 = ACHCodableFromEarnedInstance();

  data = [v5 data];
  if ([data length])
  {
    [coderCopy encodeObject:data forKey:@"earnedInstance"];
    earnedInstance2 = [(ACHEarnedInstanceJournalEntry *)self earnedInstance];
    [coderCopy encodeInt64:objc_msgSend(earnedInstance2 forKey:{"key"), @"persistentID"}];
  }

  [coderCopy encodeInt64:self->_provenance forKey:@"provenance"];
  [coderCopy encodeBool:self->_useLegacySyncIdentity forKey:@"useLegacySyncIdentity"];
}

@end