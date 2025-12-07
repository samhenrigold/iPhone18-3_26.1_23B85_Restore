@interface SGHistoryObserver
- (SGHistoryObserver)initWithStore:(id)store;
- (void)hashesDidChange;
- (void)processNewConfirmOrRejectEventHashes:(id)hashes;
- (void)processNewConfirmedOrRejectedReminderHashes:(id)hashes;
@end

@implementation SGHistoryObserver

- (void)hashesDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_store);
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained clearMasterEntityCache];
    WeakRetained = v3;
  }
}

- (void)processNewConfirmedOrRejectedReminderHashes:(id)hashes
{
  v34 = *MEMORY[0x277D85DE8];
  hashesCopy = hashes;
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained duplicateKeysMatchingAnyReminderHash:hashesCopy];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v29 = 0u;
    v19 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
    if (!v19)
    {
      goto LABEL_22;
    }

    v18 = *v27;
    while (1)
    {
      v7 = 0;
      do
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v7;
        v8 = *(*(&v26 + 1) + 8 * v7);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v9 = [obj objectForKeyedSubscript:v8];
        v10 = [v9 countByEnumeratingWithState:&v22 objects:v32 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v23;
          do
          {
            v13 = 0;
            do
            {
              if (*v23 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = [v6 loadReminderByKey:*(*(&v22 + 1) + 8 * v13)];
              if (v14)
              {
                journal = [v6 journal];
                v16 = [[SGJournalEntry alloc] initWithOperation:20 reminder:v14];
                [journal addEntry:v16];
LABEL_14:

                goto LABEL_16;
              }

              journal = sgRemindersLogHandle();
              if (os_log_type_enabled(journal, OS_LOG_TYPE_ERROR))
              {
                v16 = [v8 base64EncodedDataWithOptions:0];
                *buf = 138412290;
                v31 = v16;
                _os_log_error_impl(&dword_231E60000, journal, OS_LOG_TYPE_ERROR, "SGDSuggestManager - Database inconsistency: Found key for reminder hash %@ but reminder is missing", buf, 0xCu);
                goto LABEL_14;
              }

LABEL_16:

              ++v13;
            }

            while (v11 != v13);
            v17 = [v9 countByEnumeratingWithState:&v22 objects:v32 count:16];
            v11 = v17;
          }

          while (v17);
        }

        v7 = v21 + 1;
      }

      while (v21 + 1 != v19);
      v19 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
      if (!v19)
      {
LABEL_22:

        break;
      }
    }
  }
}

- (void)processNewConfirmOrRejectEventHashes:(id)hashes
{
  v36 = *MEMORY[0x277D85DE8];
  hashesCopy = hashes;
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained duplicateKeysMatchingAnyEventHash:hashesCopy];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v31 = 0u;
    v20 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
    if (v20)
    {
      v7 = 0;
      v19 = *v29;
      do
      {
        v8 = 0;
        do
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v22 = v8;
          v9 = *(*(&v28 + 1) + 8 * v8);
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v23 = v9;
          v10 = [obj objectForKeyedSubscript:?];
          v11 = [v10 countByEnumeratingWithState:&v24 objects:v34 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v25;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v25 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = [v6 loadEventByDuplicateKey:*(*(&v24 + 1) + 8 * i)];
                if (v15)
                {
                  journal = [v6 journal];
                  v17 = [[SGJournalEntry alloc] initWithOperation:8 event:v15];
                  [journal addEntry:v17];

                  v7 = 1;
                }

                else
                {
                  journal = sgLogHandle();
                  if (os_log_type_enabled(journal, OS_LOG_TYPE_DEFAULT))
                  {
                    v18 = [v23 base64EncodedDataWithOptions:0];
                    *buf = 138412290;
                    v33 = v18;
                    _os_log_impl(&dword_231E60000, journal, OS_LOG_TYPE_DEFAULT, "Database inconsistency; found key for event hash %@ but event is missing", buf, 0xCu);
                  }
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v24 objects:v34 count:16];
            }

            while (v12);
          }

          v8 = v22 + 1;
        }

        while (v22 + 1 != v20);
        v20 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
      }

      while (v20);
      if (v7)
      {
        +[SGDSuggestManager clearRequestCache];
      }
    }
  }
}

- (SGHistoryObserver)initWithStore:(id)store
{
  storeCopy = store;
  v8.receiver = self;
  v8.super_class = SGHistoryObserver;
  v5 = [(SGHistoryObserver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_store, storeCopy);
  }

  return v6;
}

@end