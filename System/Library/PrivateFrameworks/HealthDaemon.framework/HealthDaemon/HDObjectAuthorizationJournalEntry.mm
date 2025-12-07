@interface HDObjectAuthorizationJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (HDObjectAuthorizationJournalEntry)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDObjectAuthorizationJournalEntry

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  v49 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  profileCopy = profile;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = entriesCopy;
  v8 = [v7 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v41;
    while (2)
    {
      v11 = 0;
      v38 = v9;
      do
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v40 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          syncIdentityManager = [profileCopy syncIdentityManager];
          legacySyncIdentity = [syncIdentityManager legacySyncIdentity];
          entity = [legacySyncIdentity entity];
          persistentID = [entity persistentID];

          if ([v12 syncIdentity] != -1)
          {
            persistentID = [v12 syncIdentity];
          }

          records = [v12 records];
          syncProvenance = [v12 syncProvenance];
          v39 = 0;
          v19 = [HDObjectAuthorizationEntity setObjectAuthorizationRecords:records syncProvenance:syncProvenance syncIdentity:persistentID profile:profileCopy error:&v39];
          v20 = v39;

          if (!v19)
          {
            _HKInitializeLogging();
            v21 = *MEMORY[0x277CCC2A0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
            {
              v35 = v21;
              v36 = objc_opt_class();
              *buf = 138543618;
              v45 = v36;
              v46 = 2114;
              v47 = v20;
              v37 = v36;
              _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "Failed to apply %{public}@: %{public}@", buf, 0x16u);
            }

            if ([v20 hk_isTransactionInterruptedError])
            {

              goto LABEL_21;
            }

            v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", objc_opt_class()];
            daemon = [profileCopy daemon];
            autoBugCaptureReporter = [daemon autoBugCaptureReporter];
            v25 = profileCopy;
            v26 = v10;
            v27 = v7;
            v28 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v12, "syncProvenance")}];
            [autoBugCaptureReporter reportJournalFailureWithErrorDescription:v22 provenance:v28 error:v20];

            v7 = v27;
            v10 = v26;
            profileCopy = v25;
          }

          v9 = v38;
        }

        else
        {
          _HKInitializeLogging();
          v29 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            v30 = v29;
            v31 = objc_opt_class();
            v32 = v31;
            v33 = objc_opt_class();
            *buf = 138543618;
            v45 = v31;
            v46 = 2114;
            v47 = v33;
            v34 = v33;
            _os_log_error_impl(&dword_228986000, v30, OS_LOG_TYPE_ERROR, "Attempt to apply entry of class %{public}@ via class %{public}@", buf, 0x16u);
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:
}

- (HDObjectAuthorizationJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = HDObjectAuthorizationJournalEntry;
  v5 = [(HDJournalEntry *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy containsValueForKey:@"records"];
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    if (v6)
      v9 = {;
      v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"records"];

      [v10 hk_map:&__block_literal_global_170];
    }

    else
      v10 = {;
      [coderCopy decodeObjectOfClasses:v10 forKey:@"expectedRecords"];
    }
    v11 = ;
    records = v5->_records;
    v5->_records = v11;

    v5->_syncProvenance = [coderCopy decodeInt64ForKey:@"sp"];
    v5->_syncIdentity = -1;
    if ([coderCopy containsValueForKey:@"syncIdentity"])
    {
      v5->_syncIdentity = [coderCopy decodeInt64ForKey:@"syncIdentity"];
    }
  }

  return v5;
}

id __51__HDObjectAuthorizationJournalEntry_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCD710];
  v3 = a2;
  v4 = objc_alloc_init(v2);
  v5 = [v3 objectUUID];
  [v4 setObjectUUID:v5];

  v6 = [v3 sourceUUID];
  [v4 setSourceUUID:v6];

  [v4 setStatus:{objc_msgSend(v3, "status")}];
  [v3 modificationDate];
  [v4 setModificationDate:?];
  v7 = [v3 sessionUUID];

  [v4 setSessionUUID:v7];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  records = self->_records;
  coderCopy = coder;
  [coderCopy encodeObject:records forKey:@"expectedRecords"];
  [coderCopy encodeInt64:self->_syncProvenance forKey:@"sp"];
  [coderCopy encodeInt64:self->_syncIdentity forKey:@"syncIdentity"];
}

@end