@interface CALNNotificationRecordsDiffApplier
+ (void)applyDiff:(id)diff toNotificationManager:(id)manager;
+ (void)refreshNotificationManager:(id)manager withNotificationRecords:(id)records forSourceWithIdentifier:(id)identifier filteredBySourceClientIDs:(id)ds;
@end

@implementation CALNNotificationRecordsDiffApplier

+ (void)applyDiff:(id)diff toNotificationManager:(id)manager
{
  v56 = *MEMORY[0x277D85DE8];
  diffCopy = diff;
  managerCopy = manager;
  v7 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x277CCABB0];
    removedRecords = [diffCopy removedRecords];
    v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(removedRecords, "count")}];
    v11 = MEMORY[0x277CCABB0];
    modifiedRecords = [diffCopy modifiedRecords];
    v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(modifiedRecords, "count")}];
    v14 = MEMORY[0x277CCABB0];
    addedRecords = [diffCopy addedRecords];
    v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(addedRecords, "count")}];
    *buf = 138412802;
    v51 = v10;
    v52 = 2112;
    v53 = v13;
    v54 = 2112;
    v55 = v16;
    _os_log_impl(&dword_242909000, v7, OS_LOG_TYPE_DEFAULT, "Applying diff to notification manager. Removed: %@, Modified: %@, Added: %@", buf, 0x20u);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  removedRecords2 = [diffCopy removedRecords];
  v18 = [removedRecords2 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v44;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v44 != v20)
        {
          objc_enumerationMutation(removedRecords2);
        }

        v22 = *(*(&v43 + 1) + 8 * i);
        sourceIdentifier = [v22 sourceIdentifier];
        sourceClientIdentifier = [v22 sourceClientIdentifier];
        [managerCopy removeRecordWithSourceIdentifier:sourceIdentifier sourceClientIdentifier:sourceClientIdentifier];
      }

      v19 = [removedRecords2 countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v19);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  modifiedRecords2 = [diffCopy modifiedRecords];
  v26 = [modifiedRecords2 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v40;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v40 != v28)
        {
          objc_enumerationMutation(modifiedRecords2);
        }

        [managerCopy updateRecord:*(*(&v39 + 1) + 8 * j)];
      }

      v27 = [modifiedRecords2 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v27);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  addedRecords2 = [diffCopy addedRecords];
  v31 = [addedRecords2 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v36;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v36 != v33)
        {
          objc_enumerationMutation(addedRecords2);
        }

        [managerCopy addRecord:*(*(&v35 + 1) + 8 * k)];
      }

      v32 = [addedRecords2 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v32);
  }
}

+ (void)refreshNotificationManager:(id)manager withNotificationRecords:(id)records forSourceWithIdentifier:(id)identifier filteredBySourceClientIDs:(id)ds
{
  dsCopy = ds;
  recordsCopy = records;
  managerCopy = manager;
  v14 = [managerCopy fetchRecordsWithSourceIdentifier:identifier];
  v13 = [CALNNotificationRecordsDiffer diffOldRecords:v14 withNewRecords:recordsCopy filteredBySourceClientIDs:dsCopy];

  [self applyDiff:v13 toNotificationManager:managerCopy];
}

@end