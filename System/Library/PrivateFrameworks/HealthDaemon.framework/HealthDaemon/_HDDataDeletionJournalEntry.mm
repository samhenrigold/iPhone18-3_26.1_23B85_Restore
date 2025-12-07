@interface _HDDataDeletionJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (_BYTE)initWithDataObject:(char)object restrictSource:;
- (_HDDataDeletionJournalEntry)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HDDataDeletionJournalEntry

- (_BYTE)initWithDataObject:(char)object restrictSource:
{
  v6 = a2;
  if (self)
  {
    v7 = [self init];
    self = v7;
    if (v7)
    {
      objc_storeStrong((v7 + 16), a2);
      self[8] = object;
    }
  }

  return self;
}

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  v63 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  profileCopy = profile;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v46 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = entriesCopy;
  v7 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
  v45 = v6;
  if (!v7)
  {
    v9 = 0;
    goto LABEL_32;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v54;
  while (2)
  {
    v11 = 0;
    do
    {
      if (*v54 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v53 + 1) + 8 * v11);
      if (!v12 || *(v12 + 8) != 1)
      {
        string = [MEMORY[0x277CCACA8] string];
LABEL_14:
        v19 = string;
        daemon = [v6 objectForKeyedSubscript:v19];
        if (!daemon)
        {
          daemon = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v6 setObject:daemon forKeyedSubscript:v19];
        }

        if (v12)
        {
          v21 = *(v12 + 16);
        }

        else
        {
          v21 = 0;
        }

        [daemon addObject:v21];
        string = v19;
        goto LABEL_19;
      }

      v13 = *(v12 + 16);
      string = [v13 _sourceBundleIdentifier];

      v15 = [v46 objectForKeyedSubscript:string];
      if (v15)
      {
        v16 = v15;
LABEL_13:
        v6 = v45;

        goto LABEL_14;
      }

      sourceManager = [profileCopy sourceManager];
      v52 = v9;
      v16 = [sourceManager localSourceForBundleIdentifier:string copyIfNecessary:1 error:&v52];
      v18 = v52;

      if (v16)
      {
        [v46 setObject:v16 forKeyedSubscript:string];
        v9 = v18;
        goto LABEL_13;
      }

      _HKInitializeLogging();
      v22 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v59 = string;
        v60 = 2114;
        v61 = v18;
        _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "Missing source for %{public}@, skipping: %{public}@", buf, 0x16u);
      }

      if ([v18 hk_isTransactionInterruptedError])
      {
        allKeys = obj;
        v9 = v18;
LABEL_29:

        goto LABEL_30;
      }

      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", objc_opt_class(), string];
      daemon = [profileCopy daemon];
      autoBugCaptureReporter = [daemon autoBugCaptureReporter];
      [autoBugCaptureReporter reportJournalFailureWithErrorDescription:v19 provenance:0 error:v18];

      v9 = v18;
      v6 = v45;
LABEL_19:

      ++v11;
    }

    while (v8 != v11);
    v24 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
    v8 = v24;
    if (v24)
    {
      continue;
    }

    break;
  }

LABEL_32:

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  allKeys = [v6 allKeys];
  v25 = [allKeys countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v49;
    do
    {
      v28 = 0;
      v29 = v9;
      do
      {
        if (*v49 != v27)
        {
          objc_enumerationMutation(allKeys);
        }

        v30 = *(*(&v48 + 1) + 8 * v28);
        _HKInitializeLogging();
        v31 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
        {
          v39 = v31;
          v40 = [v45 objectForKeyedSubscript:v30];
          v41 = [v40 count];
          *buf = 134218242;
          v59 = v41;
          v60 = 2112;
          v61 = v30;
          _os_log_debug_impl(&dword_228986000, v39, OS_LOG_TYPE_DEBUG, "Deleting %ld objects for source: %@", buf, 0x16u);
        }

        string = [v46 objectForKeyedSubscript:v30];
        dataManager = [profileCopy dataManager];
        v33 = [v45 objectForKeyedSubscript:v30];
        if (string)
        {
          v6 = [MEMORY[0x277CBEB98] setWithObject:string];
          v34 = v6;
        }

        else
        {
          v34 = 0;
        }

        v47 = v29;
        [dataManager deleteDataObjects:v33 restrictedSourceEntities:v34 failIfNotFound:0 recursiveDeleteAuthorizationBlock:0 error:&v47];
        v9 = v47;

        if (string)
        {
        }

        if (v9)
        {
          _HKInitializeLogging();
          v35 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v59 = v30;
            v60 = 2114;
            v61 = v9;
            _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "Failed to apply for source: %@: %{public}@", buf, 0x16u);
          }

          if ([v9 hk_isTransactionInterruptedError])
          {
            goto LABEL_29;
          }

          v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v30];
          daemon2 = [profileCopy daemon];
          autoBugCaptureReporter2 = [daemon2 autoBugCaptureReporter];
          [autoBugCaptureReporter2 reportJournalFailureWithErrorDescription:v36 provenance:0 error:v9];
        }

        ++v28;
        v29 = v9;
      }

      while (v26 != v28);
      v26 = [allKeys countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v26);
LABEL_30:
    v6 = v45;
  }
}

- (_HDDataDeletionJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataObject"];
  v6 = [coderCopy decodeBoolForKey:@"restrictSource"];

  v7 = [(_HDDataDeletionJournalEntry *)self initWithDataObject:v5 restrictSource:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  dataObject = self->_dataObject;
  coderCopy = coder;
  [coderCopy encodeObject:dataObject forKey:@"dataObject"];
  [coderCopy encodeBool:self->_restrictSource forKey:@"restrictSource"];
}

@end