@interface _HDDataManagerDeletionJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (_HDDataManagerDeletionJournalEntry)initWithCoder:(id)coder;
- (_HDDataManagerDeletionJournalEntry)initWithConfiguration:(id)configuration objectUUIDs:(id)ds;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HDDataManagerDeletionJournalEntry

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  v35 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  profileCopy = profile;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = entriesCopy;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        dataManager = [profileCopy dataManager];
        uUIDCollection = [v11 UUIDCollection];
        configuration = [v11 configuration];
        v25 = 0;
        v15 = [dataManager deleteObjectsWithUUIDCollection:uUIDCollection configuration:configuration error:&v25];
        v16 = v25;

        if ((v15 & 1) == 0)
        {
          _HKInitializeLogging();
          v17 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            v21 = v17;
            v22 = objc_opt_class();
            *buf = 138543618;
            v31 = v22;
            v32 = 2114;
            v33 = v16;
            v23 = v22;
            _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "Failed to apply %{public}@: %{public}@", buf, 0x16u);
          }

          if ([v16 hk_isTransactionInterruptedError])
          {

            goto LABEL_15;
          }

          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", objc_opt_class()];
          daemon = [profileCopy daemon];
          autoBugCaptureReporter = [daemon autoBugCaptureReporter];
          [autoBugCaptureReporter reportJournalFailureWithErrorDescription:v18 provenance:0 error:v16];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

- (_HDDataManagerDeletionJournalEntry)initWithConfiguration:(id)configuration objectUUIDs:(id)ds
{
  configurationCopy = configuration;
  dsCopy = ds;
  v12.receiver = self;
  v12.super_class = _HDDataManagerDeletionJournalEntry;
  v8 = [(_HDDataManagerDeletionJournalEntry *)&v12 init];
  if (v8)
  {
    v9 = objc_msgSend_copy(configurationCopy);
    configuration = v8->_configuration;
    v8->_configuration = v9;

    objc_storeStrong(&v8->_UUIDCollection, ds);
  }

  return v8;
}

- (_HDDataManagerDeletionJournalEntry)initWithCoder:(id)coder
{
  v18[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = _HDDataManagerDeletionJournalEntry;
  v5 = [(HDJournalEntry *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = objc_autoreleasePoolPush();
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuids_data"];
    UUIDCollection = v5->_UUIDCollection;
    v5->_UUIDCollection = v9;

    if (!v5->_UUIDCollection)
    {
      v11 = MEMORY[0x277CBEB98];
      v18[0] = objc_opt_class();
      v18[1] = objc_opt_class();
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
      v13 = [v11 setWithArray:v12];
      v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"object_uuids"];
      v15 = v5->_UUIDCollection;
      v5->_UUIDCollection = v14;
    }

    objc_autoreleasePoolPop(v8);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = _HDDataManagerDeletionJournalEntry;
  [(HDJournalEntry *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_configuration forKey:@"configuration"];
  v5 = objc_autoreleasePoolPush();
  hk_dataForAllUUIDs = [(HKUUIDCollection *)self->_UUIDCollection hk_dataForAllUUIDs];
  [coderCopy encodeObject:hk_dataForAllUUIDs forKey:@"uuids_data"];

  objc_autoreleasePoolPop(v5);
}

@end