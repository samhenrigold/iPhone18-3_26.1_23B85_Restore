@interface ASCloudKitUtility
- (ASCloudKitUtility)init;
- (ASCloudKitUtility)initWithContainer:(id)container;
- (id)_lookupInfoFromIdentifier:(id)identifier;
- (void)_acceptShareMetadatas:(id)metadatas completion:(id)completion;
- (void)_acceptSharesWithURLs:(id)ls operation:(id)operation cloudKitGroup:(id)group completion:(id)completion;
- (void)_fetchChangesInDatabase:(id)database serverChangeTokenCache:(id)cache priority:(int64_t)priority activity:(id)activity group:(id)group additionalZoneIDs:(id)ds zoneIDsToSkip:(id)skip fetchConfigurations:(id)self0 completion:(id)self1;
- (void)_fetchChangesInZones:(id)zones additionalZonesToFetch:(id)fetch fetchConfigurations:(id)configurations inDatabase:(id)database serverChangeTokenCache:(id)cache priority:(int64_t)priority allowRetry:(BOOL)retry activity:(id)self0 group:(id)self1 completion:(id)self2;
- (void)_fetchShareParticipantForLookupInfos:(id)infos group:(id)group completion:(id)completion;
- (void)_fetchShareWithShareRecordID:(id)d activity:(id)activity group:(id)group completion:(id)completion;
- (void)_retrieveZone:(id)zone database:(id)database completion:(id)completion;
- (void)_saveRecordsIntoPrivateDatabase:(id)database recordIDsToDelete:(id)delete savePolicy:(int64_t)policy priority:(int64_t)priority activity:(id)activity group:(id)group completion:(id)completion;
- (void)_saveRecordsIntoPrivateDatabaseCreatingZones:(id)zones recordIDsToDelete:(id)delete savePolicy:(int64_t)policy priority:(int64_t)priority activity:(id)activity useZoneWideSharing:(BOOL)sharing group:(id)group completion:(id)self0;
- (void)acceptSharesWithInvitationTokensByShareURL:(id)l cloudKitGroup:(id)group completion:(id)completion;
- (void)acceptSharesWithURLs:(id)ls cloudKitGroup:(id)group completion:(id)completion;
- (void)addParticipant:(id)participant toShares:(id)shares group:(id)group completion:(id)completion;
- (void)addParticipantWithCloudKitAddress:(id)address toShares:(id)shares group:(id)group completion:(id)completion;
- (void)cancelAllExecutingFetches;
- (void)createRecordZonesWithIDs:(id)ds priority:(int64_t)priority useZoneWideSharing:(BOOL)sharing group:(id)group completion:(id)completion;
- (void)createShareAndAssociatedZoneWithShareRecordID:(id)d rootRecord:(id)record otherRecordsToSave:(id)save completion:(id)completion;
- (void)fetchChangesInPrivateDatabaseWithServerChangeTokenCache:(id)cache priority:(int64_t)priority activity:(id)activity group:(id)group additionalZoneIDs:(id)ds zoneIDsToSkip:(id)skip fetchConfigurations:(id)configurations completion:(id)self0;
- (void)fetchChangesInSharedDatabaseWithServerChangeTokenCache:(id)cache priority:(int64_t)priority activity:(id)activity group:(id)group additionalZoneIDs:(id)ds zoneIDsToSkip:(id)skip fetchConfigurations:(id)configurations completion:(id)self0;
- (void)fetchShareParticipantForEmailAddress:(id)address group:(id)group completion:(id)completion;
- (void)fetchShareParticipantForIdentifier:(id)identifier group:(id)group completion:(id)completion;
- (void)fetchShareWithShareRecordID:(id)d activity:(id)activity group:(id)group completion:(id)completion;
- (void)removeParticipantWithCloudKitAddress:(id)address fromShares:(id)shares group:(id)group completion:(id)completion;
- (void)retrieveZone:(id)zone completion:(id)completion;
- (void)saveSubscriptions:(id)subscriptions andDeleteSubscriptionsWithIdentifiers:(id)identifiers inDatabase:(id)database completion:(id)completion;
@end

@implementation ASCloudKitUtility

- (ASCloudKitUtility)initWithContainer:(id)container
{
  containerCopy = container;
  v12.receiver = self;
  v12.super_class = ASCloudKitUtility;
  v5 = [(ASCloudKitUtility *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(ASCloudKitUtility *)v5 setContainer:containerCopy];
    v7 = HKCreateSerialDispatchQueue();
    serialQueue = v6->_serialQueue;
    v6->_serialQueue = v7;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    queue_executingFetchOperations = v6->_queue_executingFetchOperations;
    v6->_queue_executingFetchOperations = weakObjectsHashTable;
  }

  return v6;
}

- (ASCloudKitUtility)init
{
  v4.receiver = self;
  v4.super_class = ASCloudKitUtility;
  v2 = [(ASCloudKitUtility *)&v4 init];
  if (v2)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
    {
      [ASCloudKitUtility init];
    }
  }

  return v2;
}

- (void)saveSubscriptions:(id)subscriptions andDeleteSubscriptionsWithIdentifiers:(id)identifiers inDatabase:(id)database completion:(id)completion
{
  completionCopy = completion;
  v10 = MEMORY[0x277CBC4B0];
  databaseCopy = database;
  identifiersCopy = identifiers;
  subscriptionsCopy = subscriptions;
  v14 = [v10 alloc];
  allObjects = [subscriptionsCopy allObjects];

  allObjects2 = [identifiersCopy allObjects];

  v17 = [v14 initWithSubscriptionsToSave:allObjects subscriptionIDsToDelete:allObjects2];
  v18 = _ASOperationConfigurationForPriority(2, 0);
  [v17 setConfiguration:v18];

  v20 = ASCloudKitGroupInitialSetup(v19);
  [v17 setGroup:v20];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __99__ASCloudKitUtility_saveSubscriptions_andDeleteSubscriptionsWithIdentifiers_inDatabase_completion___block_invoke;
  v22[3] = &unk_278C4E900;
  v23 = completionCopy;
  v21 = completionCopy;
  [v17 setModifySubscriptionsCompletionBlock:v22];
  [databaseCopy addOperation:v17];
}

void __99__ASCloudKitUtility_saveSubscriptions_andDeleteSubscriptionsWithIdentifiers_inDatabase_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  ASLoggingInitialize();
  v10 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v14 = 134218240;
    v15 = [v7 count];
    v16 = 2048;
    v17 = [v8 count];
    _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "Saved %lu subscriptions, deleted %lu subscriptions.", &v14, 0x16u);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = [MEMORY[0x277CBEB98] setWithArray:v7];
    (*(v12 + 16))(v12, v9 == 0, v9, v13);
  }
}

- (void)createRecordZonesWithIDs:(id)ds priority:(int64_t)priority useZoneWideSharing:(BOOL)sharing group:(id)group completion:(id)completion
{
  sharingCopy = sharing;
  v38 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  groupCopy = group;
  completionCopy = completion;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = [dsCopy countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v34;
    v15 = MEMORY[0x277CBEBF8];
    do
    {
      v16 = 0;
      v17 = v15;
      do
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(dsCopy);
        }

        v18 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:*(*(&v33 + 1) + 8 * v16)];
        [v18 setCapabilities:{objc_msgSend(v18, "capabilities") | 1}];
        [v18 setCapabilities:{objc_msgSend(v18, "capabilities") | 2}];
        [v18 setCapabilities:{objc_msgSend(v18, "capabilities") | 4}];
        if (sharingCopy)
        {
          [v18 setCapabilities:{objc_msgSend(v18, "capabilities") | 8}];
        }

        v15 = [v17 arrayByAddingObject:v18];

        ++v16;
        v17 = v15;
      }

      while (v13 != v16);
      v13 = [dsCopy countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v13);
  }

  else
  {
    v15 = MEMORY[0x277CBEBF8];
  }

  v19 = [objc_alloc(MEMORY[0x277CBC490]) initWithRecordZonesToSave:v15 recordZoneIDsToDelete:0];
  [v19 setGroup:groupCopy];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __91__ASCloudKitUtility_createRecordZonesWithIDs_priority_useZoneWideSharing_group_completion___block_invoke;
  v29[3] = &unk_278C4E928;
  v30 = dsCopy;
  v31 = groupCopy;
  v32 = completionCopy;
  v20 = completionCopy;
  v21 = groupCopy;
  v22 = dsCopy;
  [v19 setModifyRecordZonesCompletionBlock:v29];
  [v19 setQualityOfService:17];
  v23 = _ASOperationConfigurationForPriority(priority, 0);
  [v19 setConfiguration:v23];

  container = [(ASCloudKitUtility *)self container];
  privateCloudDatabase = [container privateCloudDatabase];
  [privateCloudDatabase addOperation:v19];
}

void __91__ASCloudKitUtility_createRecordZonesWithIDs_priority_useZoneWideSharing_group_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  ASLoggingInitialize();
  v10 = *MEMORY[0x277CE8FD0];
  v11 = *MEMORY[0x277CE8FD0];
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __91__ASCloudKitUtility_createRecordZonesWithIDs_priority_useZoneWideSharing_group_completion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 40);
    v13 = v10;
    v14 = [v12 name];
    v16 = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v14;
    _os_log_impl(&dword_23E5E3000, v13, OS_LOG_TYPE_DEFAULT, "Created record zones in private database: %@, with group %@", &v16, 0x16u);
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    (*(v15 + 16))(v15, v9 == 0, v9, v7);
  }
}

- (void)_saveRecordsIntoPrivateDatabase:(id)database recordIDsToDelete:(id)delete savePolicy:(int64_t)policy priority:(int64_t)priority activity:(id)activity group:(id)group completion:(id)completion
{
  activityCopy = activity;
  groupCopy = group;
  completionCopy = completion;
  v18 = MEMORY[0x277CBC4A0];
  deleteCopy = delete;
  databaseCopy = database;
  v21 = [[v18 alloc] initWithRecordsToSave:databaseCopy recordIDsToDelete:deleteCopy];

  [v21 setAtomic:1];
  [v21 setSavePolicy:policy];
  [v21 setGroup:groupCopy];
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __117__ASCloudKitUtility__saveRecordsIntoPrivateDatabase_recordIDsToDelete_savePolicy_priority_activity_group_completion___block_invoke;
  v31 = &unk_278C4E950;
  selfCopy = self;
  v33 = groupCopy;
  v34 = activityCopy;
  v35 = completionCopy;
  v22 = completionCopy;
  v23 = activityCopy;
  v24 = groupCopy;
  [v21 setModifyRecordsCompletionBlock:&v28];
  [v21 setQualityOfService:{17, v28, v29, v30, v31, selfCopy}];
  v25 = _ASOperationConfigurationForPriority(priority, v23);
  [v21 setConfiguration:v25];

  container = [(ASCloudKitUtility *)self container];
  privateCloudDatabase = [container privateCloudDatabase];
  [privateCloudDatabase addOperation:v21];
}

void __117__ASCloudKitUtility__saveRecordsIntoPrivateDatabase_recordIDsToDelete_savePolicy_priority_activity_group_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  ASLoggingInitialize();
  v10 = *MEMORY[0x277CE8FD0];
  v11 = os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = *(a1 + 32);
    v13 = v10;
    v14 = [v12 container];
    v15 = [v14 containerIdentifier];
    v21 = 138543618;
    v22 = v15;
    v23 = 2114;
    v24 = v9;
    _os_log_impl(&dword_23E5E3000, v13, OS_LOG_TYPE_DEFAULT, "Failed to save records into private database for container %{public}@ with error: %{public}@", &v21, 0x16u);
  }

  else
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    v13 = v10;
    v16 = [v7 count];
    v14 = [*(a1 + 32) container];
    v17 = [v14 containerIdentifier];
    v18 = [*(a1 + 40) name];
    v19 = *(a1 + 48);
    v21 = 134218754;
    v22 = v16;
    v23 = 2114;
    v24 = v17;
    v25 = 2114;
    v26 = v18;
    v27 = 2114;
    v28 = v19;
    _os_log_impl(&dword_23E5E3000, v13, OS_LOG_TYPE_DEFAULT, "Saved %lu records into private database: container %{public}@, group %{public}@, activity %{public}@", &v21, 0x2Au);
  }

LABEL_7:
  v20 = *(a1 + 56);
  if (v20)
  {
    (*(v20 + 16))(v20, v9 == 0, v9, v7);
  }
}

- (void)_saveRecordsIntoPrivateDatabaseCreatingZones:(id)zones recordIDsToDelete:(id)delete savePolicy:(int64_t)policy priority:(int64_t)priority activity:(id)activity useZoneWideSharing:(BOOL)sharing group:(id)group completion:(id)self0
{
  v51 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  deleteCopy = delete;
  activityCopy = activity;
  groupCopy = group;
  completionCopy = completion;
  v15 = [MEMORY[0x277CBEB98] set];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v16 = zonesCopy;
  v17 = [v16 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v47;
    do
    {
      v20 = 0;
      v21 = v15;
      do
      {
        if (*v47 != v19)
        {
          objc_enumerationMutation(v16);
        }

        recordID = [*(*(&v46 + 1) + 8 * v20) recordID];
        zoneID = [recordID zoneID];
        v15 = [v21 setByAddingObject:zoneID];

        ++v20;
        v21 = v15;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v18);
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __149__ASCloudKitUtility__saveRecordsIntoPrivateDatabaseCreatingZones_recordIDsToDelete_savePolicy_priority_activity_useZoneWideSharing_group_completion___block_invoke;
  v36[3] = &unk_278C4E9A0;
  v36[4] = self;
  v37 = v15;
  sharingCopy = sharing;
  v38 = groupCopy;
  v39 = v16;
  v40 = deleteCopy;
  v41 = activityCopy;
  priorityCopy = priority;
  policyCopy = policy;
  v42 = completionCopy;
  v32 = completionCopy;
  v24 = activityCopy;
  v25 = deleteCopy;
  v26 = v16;
  v27 = groupCopy;
  v28 = v15;
  [(ASCloudKitUtility *)self _saveRecordsIntoPrivateDatabase:v26 recordIDsToDelete:v25 savePolicy:policy priority:priority activity:v24 group:v27 completion:v36];
}

void __149__ASCloudKitUtility__saveRecordsIntoPrivateDatabaseCreatingZones_recordIDsToDelete_savePolicy_priority_activity_useZoneWideSharing_group_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
LABEL_14:
    (*(*(a1 + 80) + 16))();
    goto LABEL_19;
  }

  v8 = v6;
  if ([v8 code] != 26)
  {
    if ([v8 code] == 2)
    {
      v9 = [v8 userInfo];
      v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v11 = [v10 allValues];
      v12 = [v11 countByEnumeratingWithState:&v29 objects:buf count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v30;
        while (2)
        {
          v15 = 0;
          do
          {
            if (*v30 != v14)
            {
              objc_enumerationMutation(v11);
            }

            if ([*(*(&v29 + 1) + 8 * v15) code] == 26)
            {

              goto LABEL_16;
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v29 objects:buf count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }
    }

    goto LABEL_14;
  }

LABEL_16:

  ASLoggingInitialize();
  v16 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v16, OS_LOG_TYPE_DEFAULT, "Zones not found when saving records, creating zones and re-trying save.", buf, 2u);
  }

  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = *(a1 + 88);
  v20 = *(a1 + 104);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __149__ASCloudKitUtility__saveRecordsIntoPrivateDatabaseCreatingZones_recordIDsToDelete_savePolicy_priority_activity_useZoneWideSharing_group_completion___block_invoke_304;
  v22[3] = &unk_278C4E978;
  v22[4] = v17;
  v21 = *(a1 + 48);
  v23 = *(a1 + 56);
  v24 = *(a1 + 64);
  v28 = vextq_s8(*(a1 + 88), *(a1 + 88), 8uLL);
  v25 = *(a1 + 72);
  v26 = *(a1 + 48);
  v27 = *(a1 + 80);
  [v17 createRecordZonesWithIDs:v18 priority:v19 useZoneWideSharing:v20 group:v21 completion:v22];

LABEL_19:
}

uint64_t __149__ASCloudKitUtility__saveRecordsIntoPrivateDatabaseCreatingZones_recordIDsToDelete_savePolicy_priority_activity_useZoneWideSharing_group_completion___block_invoke_304(uint64_t a1, int a2, uint64_t a3)
{
  if (!a3 && a2)
  {
    return [*(a1 + 32) _saveRecordsIntoPrivateDatabase:*(a1 + 40) recordIDsToDelete:*(a1 + 48) savePolicy:*(a1 + 80) priority:*(a1 + 88) activity:*(a1 + 56) group:*(a1 + 64) completion:*(a1 + 72)];
  }

  v5 = *(*(a1 + 72) + 16);

  return v5();
}

- (void)createShareAndAssociatedZoneWithShareRecordID:(id)d rootRecord:(id)record otherRecordsToSave:(id)save completion:(id)completion
{
  v27[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  recordCopy = record;
  completionCopy = completion;
  saveCopy = save;
  zoneID = [dCopy zoneID];
  recordID = [recordCopy recordID];
  zoneID2 = [recordID zoneID];
  v17 = [zoneID isEqual:zoneID2];

  if (v17)
  {
    v18 = [objc_alloc(MEMORY[0x277CBC680]) initWithRootRecord:recordCopy shareID:dCopy];
    [v18 setParticipantVisibility:1];
    v27[0] = v18;
    v27[1] = recordCopy;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v20 = [v19 arrayByAddingObjectsFromArray:saveCopy];

    v22 = ASCloudKitGroupSharingSetup(v21);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __108__ASCloudKitUtility_createShareAndAssociatedZoneWithShareRecordID_rootRecord_otherRecordsToSave_completion___block_invoke;
    v23[3] = &unk_278C4E9C8;
    v24 = dCopy;
    v25 = recordCopy;
    v26 = completionCopy;
    [(ASCloudKitUtility *)self forceSaveRecordsIntoPrivateDatabaseIgnoringServerChanges:v20 recordIDsToDelete:0 priority:2 activity:0 group:v22 completion:v23];

    saveCopy = v18;
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
    {
      [ASCloudKitUtility createShareAndAssociatedZoneWithShareRecordID:rootRecord:otherRecordsToSave:completion:];
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, 0, recordCopy, saveCopy);
  }
}

void __108__ASCloudKitUtility_createShareAndAssociatedZoneWithShareRecordID_rootRecord_otherRecordsToSave_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = a4;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v23 = 0;
    v9 = *v26;
    v10 = MEMORY[0x277CBEBF8];
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [v12 recordID];
        if ([v13 isEqual:*(a1 + 32)])
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v15 = v12;
            v16 = v23;
            v23 = v15;
            goto LABEL_13;
          }
        }

        else
        {
        }

        v17 = [v12 recordID];
        v18 = [*(a1 + 40) recordID];
        v19 = [v17 isEqual:v18];

        if (v19)
        {
          v20 = v12;
          v16 = v8;
          v8 = v20;
        }

        else
        {
          v21 = [v10 arrayByAddingObject:v12];
          v16 = v10;
          v10 = v21;
        }

LABEL_13:
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (!v7)
      {
        goto LABEL_17;
      }
    }
  }

  v8 = 0;
  v23 = 0;
  v10 = MEMORY[0x277CBEBF8];
LABEL_17:
  (*(*(a1 + 48) + 16))();
}

- (void)_fetchShareWithShareRecordID:(id)d activity:(id)activity group:(id)group completion:(id)completion
{
  v29[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v12 = MEMORY[0x277CBC3E0];
  groupCopy = group;
  activityCopy = activity;
  v15 = [v12 alloc];
  v29[0] = dCopy;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v17 = [v15 initWithRecordIDs:v16];

  [v17 setGroup:groupCopy];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __76__ASCloudKitUtility__fetchShareWithShareRecordID_activity_group_completion___block_invoke;
  v26 = &unk_278C4E9F0;
  v27 = dCopy;
  v28 = completionCopy;
  v18 = completionCopy;
  v19 = dCopy;
  [v17 setFetchRecordsCompletionBlock:&v23];
  [v17 setQualityOfService:{17, v23, v24, v25, v26}];
  v20 = _ASOperationConfigurationForPriority(2, activityCopy);

  [v17 setConfiguration:v20];
  container = [(ASCloudKitUtility *)self container];
  privateCloudDatabase = [container privateCloudDatabase];
  [privateCloudDatabase addOperation:v17];
}

void __76__ASCloudKitUtility__fetchShareWithShareRecordID_activity_group_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v7 == 0);
}

- (void)fetchShareWithShareRecordID:(id)d activity:(id)activity group:(id)group completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  groupCopy = group;
  activityCopy = activity;
  ASLoggingInitialize();
  v14 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = dCopy;
    _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, "Fetching share with ID: %@", buf, 0xCu);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __75__ASCloudKitUtility_fetchShareWithShareRecordID_activity_group_completion___block_invoke;
  v17[3] = &unk_278C4EA18;
  v18 = dCopy;
  v19 = completionCopy;
  v15 = completionCopy;
  v16 = dCopy;
  [(ASCloudKitUtility *)self _fetchShareWithShareRecordID:v16 activity:activityCopy group:groupCopy completion:v17];
}

void __75__ASCloudKitUtility_fetchShareWithShareRecordID_activity_group_completion___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  ASLoggingInitialize();
  v9 = *MEMORY[0x277CE8FD0];
  if (!v7 && v8 && a2)
  {
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "Found share: %@", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
  {
    __75__ASCloudKitUtility_fetchShareWithShareRecordID_activity_group_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_acceptShareMetadatas:(id)metadatas completion:(id)completion
{
  metadatasCopy = metadatas;
  completionCopy = completion;
  v8 = [objc_alloc(MEMORY[0x277CBC158]) initWithShareMetadatas:metadatasCopy];
  v9 = ASCloudKitGroupSharingSetup(v8);
  [v8 setGroup:v9];

  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__14;
  v17[4] = __Block_byref_object_dispose__14;
  v18 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(metadatasCopy, "count")}];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__ASCloudKitUtility__acceptShareMetadatas_completion___block_invoke;
  v16[3] = &unk_278C4EA40;
  v16[4] = v17;
  [v8 setPerShareCompletionBlock:v16];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__ASCloudKitUtility__acceptShareMetadatas_completion___block_invoke_314;
  v13[3] = &unk_278C4EA68;
  v10 = completionCopy;
  v14 = v10;
  v15 = v17;
  [v8 setAcceptSharesCompletionBlock:v13];
  [v8 setQualityOfService:17];
  v11 = _ASOperationConfigurationForPriority(2, 0);
  [v8 setConfiguration:v11];

  container = [(ASCloudKitUtility *)self container];
  [container addOperation:v8];

  _Block_object_dispose(v17, 8);
}

void __54__ASCloudKitUtility__acceptShareMetadatas_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [a2 share];
  v10 = [v9 URL];

  ASLoggingInitialize();
  v11 = *MEMORY[0x277CE8FD0];
  v12 = *MEMORY[0x277CE8FD0];
  if (v8)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __54__ASCloudKitUtility__acceptShareMetadatas_completion___block_invoke_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v11;
      v14 = [v7 recordID];
      v15 = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v14;
      _os_log_impl(&dword_23E5E3000, v13, OS_LOG_TYPE_DEFAULT, "Accepted share with URL %@ and share ID %@", &v15, 0x16u);
    }

    [*(*(*(a1 + 32) + 8) + 40) setObject:v7 forKeyedSubscript:v10];
  }
}

void __54__ASCloudKitUtility__acceptShareMetadatas_completion___block_invoke_314(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FD0];
  v5 = *MEMORY[0x277CE8FD0];
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __54__ASCloudKitUtility__acceptShareMetadatas_completion___block_invoke_314_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "Accepted all shares successfully", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)acceptSharesWithURLs:(id)ls cloudKitGroup:(id)group completion:(id)completion
{
  v8 = MEMORY[0x277CBC3F8];
  completionCopy = completion;
  groupCopy = group;
  lsCopy = ls;
  v12 = [[v8 alloc] initWithShareURLs:lsCopy];
  [(ASCloudKitUtility *)self _acceptSharesWithURLs:lsCopy operation:v12 cloudKitGroup:groupCopy completion:completionCopy];
}

- (void)_acceptSharesWithURLs:(id)ls operation:(id)operation cloudKitGroup:(id)group completion:(id)completion
{
  lsCopy = ls;
  operationCopy = operation;
  groupCopy = group;
  completionCopy = completion;
  [operationCopy setGroup:groupCopy];
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__14;
  v24[4] = __Block_byref_object_dispose__14;
  v25 = MEMORY[0x277CBEBF8];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __78__ASCloudKitUtility__acceptSharesWithURLs_operation_cloudKitGroup_completion___block_invoke;
  v23[3] = &unk_278C4EA90;
  v23[4] = v24;
  [operationCopy setPerShareMetadataBlock:v23];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__ASCloudKitUtility__acceptSharesWithURLs_operation_cloudKitGroup_completion___block_invoke_318;
  v18[3] = &unk_278C4EAB8;
  v14 = completionCopy;
  v21 = v14;
  v22 = v24;
  v15 = lsCopy;
  v19 = v15;
  selfCopy = self;
  [operationCopy setFetchShareMetadataCompletionBlock:v18];
  [operationCopy setQualityOfService:17];
  v16 = _ASOperationConfigurationForPriority(2, 0);
  [operationCopy setConfiguration:v16];

  container = [(ASCloudKitUtility *)self container];
  [container addOperation:operationCopy];

  _Block_object_dispose(v24, 8);
}

void __78__ASCloudKitUtility__acceptSharesWithURLs_operation_cloudKitGroup_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  ASLoggingInitialize();
  v10 = *MEMORY[0x277CE8FD0];
  if (v8 && v7 && !v9)
  {
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "Fetched share metadata for URL %@ successfully", &v14, 0xCu);
    }

    v11 = [*(*(*(a1 + 32) + 8) + 40) arrayByAddingObject:v8];
    v12 = *(*(a1 + 32) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
  {
    __78__ASCloudKitUtility__acceptSharesWithURLs_operation_cloudKitGroup_completion___block_invoke_cold_1();
  }
}

void __78__ASCloudKitUtility__acceptSharesWithURLs_operation_cloudKitGroup_completion___block_invoke_318(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
    {
      __78__ASCloudKitUtility__acceptSharesWithURLs_operation_cloudKitGroup_completion___block_invoke_318_cold_1();
    }

    v4 = *(*(a1 + 48) + 16);
LABEL_12:
    v4();
    goto LABEL_13;
  }

  v5 = [*(*(*(a1 + 56) + 8) + 40) count];
  v6 = [*(a1 + 32) count];
  ASLoggingInitialize();
  v7 = *MEMORY[0x277CE8FD0];
  v8 = *MEMORY[0x277CE8FD0];
  if (v5 != v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __78__ASCloudKitUtility__acceptSharesWithURLs_operation_cloudKitGroup_completion___block_invoke_318_cold_2();
    }

    v4 = *(*(a1 + 48) + 16);
    goto LABEL_12;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(*(a1 + 56) + 8) + 40);
    v10 = v7;
    v11 = 134217984;
    v12 = [v9 count];
    _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "Accepting shares after fetching metadata (%lu metadatas)", &v11, 0xCu);
  }

  [*(a1 + 40) _acceptShareMetadatas:*(*(*(a1 + 56) + 8) + 40) completion:*(a1 + 48)];
LABEL_13:
}

- (void)acceptSharesWithInvitationTokensByShareURL:(id)l cloudKitGroup:(id)group completion:(id)completion
{
  v8 = MEMORY[0x277CBC3F8];
  completionCopy = completion;
  groupCopy = group;
  lCopy = l;
  v12 = [v8 alloc];
  allKeys = [lCopy allKeys];
  v15 = [v12 initWithShareURLs:allKeys invitationTokensByShareURL:lCopy];

  allKeys2 = [lCopy allKeys];

  [(ASCloudKitUtility *)self _acceptSharesWithURLs:allKeys2 operation:v15 cloudKitGroup:groupCopy completion:completionCopy];
}

- (void)fetchShareParticipantForEmailAddress:(id)address group:(id)group completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CBC7C8];
  addressCopy = address;
  v9 = MEMORY[0x277CBEA60];
  completionCopy = completion;
  groupCopy = group;
  addressCopy2 = address;
  v13 = [v9 arrayWithObjects:&addressCopy count:1];
  v14 = [v8 lookupInfosWithEmails:{v13, addressCopy, v16}];

  [(ASCloudKitUtility *)self _fetchShareParticipantForLookupInfos:v14 group:groupCopy completion:completionCopy];
}

- (void)_fetchShareParticipantForLookupInfos:(id)infos group:(id)group completion:(id)completion
{
  infosCopy = infos;
  groupCopy = group;
  completionCopy = completion;
  v11 = [objc_alloc(MEMORY[0x277CBC410]) initWithUserIdentityLookupInfos:infosCopy];
  [v11 setGroup:groupCopy];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__14;
  v19[4] = __Block_byref_object_dispose__14;
  v20 = [MEMORY[0x277CBEB98] set];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __75__ASCloudKitUtility__fetchShareParticipantForLookupInfos_group_completion___block_invoke;
  v18[3] = &unk_278C4EAE0;
  v18[4] = v19;
  [v11 setShareParticipantFetchedBlock:v18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__ASCloudKitUtility__fetchShareParticipantForLookupInfos_group_completion___block_invoke_2;
  v15[3] = &unk_278C4EA68;
  v12 = completionCopy;
  v16 = v12;
  v17 = v19;
  [v11 setFetchShareParticipantsCompletionBlock:v15];
  [v11 setQualityOfService:17];
  v13 = _ASOperationConfigurationForPriority(2, 0);
  [v11 setConfiguration:v13];

  container = [(ASCloudKitUtility *)self container];
  [container addOperation:v11];

  _Block_object_dispose(v19, 8);
}

uint64_t __75__ASCloudKitUtility__fetchShareParticipantForLookupInfos_group_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [*(*(*(a1 + 32) + 8) + 40) setByAddingObject:a2];

  return MEMORY[0x2821F96F8]();
}

void __75__ASCloudKitUtility__fetchShareParticipantForLookupInfos_group_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2 == 0;
  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = a2;
  v6 = [v4 anyObject];
  (*(v3 + 16))(v3, v2, v5, v6);
}

- (void)fetchShareParticipantForIdentifier:(id)identifier group:(id)group completion:(id)completion
{
  v15[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  groupCopy = group;
  completionCopy = completion;
  v11 = ASSanitizedContactDestination();
  v12 = [(ASCloudKitUtility *)self _lookupInfoFromIdentifier:identifierCopy];
  v13 = v12;
  if (v12)
  {
    v15[0] = v12;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [(ASCloudKitUtility *)self _fetchShareParticipantForLookupInfos:v14 group:groupCopy completion:completionCopy];
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
    {
      [ASCloudKitUtility fetchShareParticipantForIdentifier:group:completion:];
    }

    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASCloudKitUtilityErrorDomain" code:0 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v14, 0);
  }
}

- (id)_lookupInfoFromIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (ASDestinationIsPhoneNumber())
  {
    v4 = [objc_alloc(MEMORY[0x277CBC7C8]) initWithPhoneNumber:identifierCopy];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  if (ASDestinationIsEmail())
  {
    v4 = [objc_alloc(MEMORY[0x277CBC7C8]) initWithEmailAddress:identifierCopy];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)addParticipantWithCloudKitAddress:(id)address toShares:(id)shares group:(id)group completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  sharesCopy = shares;
  groupCopy = group;
  completionCopy = completion;
  ASLoggingInitialize();
  v14 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = addressCopy;
    v26 = 2112;
    v27 = sharesCopy;
    _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, "Adding participant with address %@ to shares: %@", buf, 0x16u);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __81__ASCloudKitUtility_addParticipantWithCloudKitAddress_toShares_group_completion___block_invoke;
  v19[3] = &unk_278C4EB08;
  v19[4] = self;
  v20 = sharesCopy;
  v21 = groupCopy;
  v22 = addressCopy;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = addressCopy;
  v17 = groupCopy;
  v18 = sharesCopy;
  [(ASCloudKitUtility *)self fetchShareParticipantForEmailAddress:v16 group:v17 completion:v19];
}

void __81__ASCloudKitUtility_addParticipantWithCloudKitAddress_toShares_group_completion___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7 && a2 && v8)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __81__ASCloudKitUtility_addParticipantWithCloudKitAddress_toShares_group_completion___block_invoke_2;
    v14[3] = &unk_278C4BA08;
    v12 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    [v10 addParticipant:v9 toShares:v11 group:v12 completion:v14];
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
    {
      __81__ASCloudKitUtility_addParticipantWithCloudKitAddress_toShares_group_completion___block_invoke_cold_1();
    }

    v13 = *(a1 + 64);
    if (v13)
    {
      (*(v13 + 16))(v13, 0, v7);
    }
  }
}

void __81__ASCloudKitUtility_addParticipantWithCloudKitAddress_toShares_group_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  ASLoggingInitialize();
  v6 = *MEMORY[0x277CE8FD0];
  if (v5 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
    {
      __81__ASCloudKitUtility_addParticipantWithCloudKitAddress_toShares_group_completion___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "Added participant with address %@ successfully.", &v9, 0xCu);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }
}

- (void)addParticipant:(id)participant toShares:(id)shares group:(id)group completion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  sharesCopy = shares;
  groupCopy = group;
  completionCopy = completion;
  ASLoggingInitialize();
  v11 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v38 = participantCopy;
    v39 = 2112;
    v40 = sharesCopy;
    _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "Adding participant %@ to shares: %@", buf, 0x16u);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = sharesCopy;
  v13 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    do
    {
      v16 = 0;
      do
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v32 + 1) + 8 * v16);
        userIdentity = [participantCopy userIdentity];
        owner = [v17 owner];
        userIdentity2 = [owner userIdentity];
        v21 = [userIdentity isEquivalentToUserIdentity:userIdentity2];

        if (v21)
        {
          ASLoggingInitialize();
          v22 = *MEMORY[0x277CE8FD0];
          if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
          {
            [ASCloudKitUtility addParticipant:buf toShares:&buf[1] group:v22 completion:?];
          }
        }

        else
        {
          v23 = [participantCopy copy];
          [v17 addParticipant:v23];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v14);
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __62__ASCloudKitUtility_addParticipant_toShares_group_completion___block_invoke;
  v29[3] = &unk_278C4D340;
  v30 = participantCopy;
  v31 = completionCopy;
  v24 = completionCopy;
  v25 = participantCopy;
  [(ASCloudKitUtility *)self saveRecordsIntoPrivateDatabase:v12 priority:2 activity:0 group:groupCopy completion:v29];
}

void __62__ASCloudKitUtility_addParticipant_toShares_group_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  ASLoggingInitialize();
  v9 = *MEMORY[0x277CE8FD0];
  if (v7 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
    {
      __81__ASCloudKitUtility_addParticipantWithCloudKitAddress_toShares_group_completion___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "Added participant %@ to shares %@ successfully.", &v12, 0x16u);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, a2, v7);
  }
}

- (void)removeParticipantWithCloudKitAddress:(id)address fromShares:(id)shares group:(id)group completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  sharesCopy = shares;
  groupCopy = group;
  completionCopy = completion;
  ASLoggingInitialize();
  v14 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = _ASRecordIDsForRecords(sharesCopy);
    *buf = 138412546;
    v28 = addressCopy;
    v29 = 2112;
    v30 = v16;
    _os_log_impl(&dword_23E5E3000, v15, OS_LOG_TYPE_DEFAULT, "Removing participant with address %@ from shares with IDs: %@", buf, 0x16u);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __86__ASCloudKitUtility_removeParticipantWithCloudKitAddress_fromShares_group_completion___block_invoke;
  v21[3] = &unk_278C4EB08;
  v22 = sharesCopy;
  selfCopy = self;
  v24 = groupCopy;
  v25 = addressCopy;
  v26 = completionCopy;
  v17 = completionCopy;
  v18 = addressCopy;
  v19 = groupCopy;
  v20 = sharesCopy;
  [(ASCloudKitUtility *)self fetchShareParticipantForEmailAddress:v18 group:v19 completion:v21];
}

void __86__ASCloudKitUtility_removeParticipantWithCloudKitAddress_fromShares_group_completion___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7 && a2 && v8)
  {
    v25 = a1;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = *(a1 + 32);
    v11 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v32;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v31 + 1) + 8 * i);
          v16 = [v9 userIdentity];
          v17 = [v15 owner];
          v18 = [v17 userIdentity];
          v19 = [v16 isEquivalentToUserIdentity:v18];

          if (v19)
          {
            ASLoggingInitialize();
            v20 = *MEMORY[0x277CE8FD0];
            if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
            {
              __86__ASCloudKitUtility_removeParticipantWithCloudKitAddress_fromShares_group_completion___block_invoke_cold_2(&buf, v30, v20);
            }
          }

          else
          {
            [v15 removeParticipant:v9];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v12);
    }

    v22 = *(v25 + 32);
    v21 = *(v25 + 40);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __86__ASCloudKitUtility_removeParticipantWithCloudKitAddress_fromShares_group_completion___block_invoke_325;
    v26[3] = &unk_278C4D340;
    v23 = *(v25 + 48);
    v27 = *(v25 + 56);
    v28 = *(v25 + 64);
    [v21 saveRecordsIntoPrivateDatabase:v22 priority:2 activity:0 group:v23 completion:v26];

    v7 = 0;
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
    {
      __86__ASCloudKitUtility_removeParticipantWithCloudKitAddress_fromShares_group_completion___block_invoke_cold_1();
    }

    v24 = *(a1 + 64);
    if (v24)
    {
      (*(v24 + 16))(v24, 0, v7);
    }
  }
}

void __86__ASCloudKitUtility_removeParticipantWithCloudKitAddress_fromShares_group_completion___block_invoke_325(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  ASLoggingInitialize();
  v9 = *MEMORY[0x277CE8FD0];
  if (v7 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
    {
      __86__ASCloudKitUtility_removeParticipantWithCloudKitAddress_fromShares_group_completion___block_invoke_325_cold_1();
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = v9;
    v12 = _ASRecordIDsForRecords(v8);
    v14 = 138412546;
    v15 = v10;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "Removed participant %@ from shares with IDs %@ successfully.", &v14, 0x16u);
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, a2, v7);
  }
}

- (void)cancelAllExecutingFetches
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ASCloudKitUtility_cancelAllExecutingFetches__block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

uint64_t __46__ASCloudKitUtility_cancelAllExecutingFetches__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
          [v8 setRecordZoneWithIDChangedBlock:0];
          [v8 setFetchDatabaseChangesCompletionBlock:0];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_11;
          }

          v9 = v7;
          [v9 setRecordChangedBlock:{0, v11}];
          [v9 setRecordZoneChangeTokensUpdatedBlock:0];
          [v9 setRecordZoneFetchCompletionBlock:0];
          [v9 setFetchRecordZoneChangesCompletionBlock:0];
        }

LABEL_11:
        [v7 cancel];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  return [*(*(a1 + 32) + 16) removeAllObjects];
}

- (void)_fetchChangesInZones:(id)zones additionalZonesToFetch:(id)fetch fetchConfigurations:(id)configurations inDatabase:(id)database serverChangeTokenCache:(id)cache priority:(int64_t)priority allowRetry:(BOOL)retry activity:(id)self0 group:(id)self1 completion:(id)self2
{
  v115 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  fetchCopy = fetch;
  configurationsCopy = configurations;
  databaseCopy = database;
  cacheCopy = cache;
  activityCopy = activity;
  groupCopy = group;
  completionCopy = completion;
  v57 = zonesCopy;
  v66 = fetchCopy;
  v19 = [zonesCopy setByAddingObjectsFromSet:fetchCopy];
  ASLoggingInitialize();
  v20 = MEMORY[0x277CE8FD0];
  v21 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    v23 = [v19 count];
    [databaseCopy databaseScope];
    v24 = CKDatabaseScopeString();
    name = [groupCopy name];
    *buf = 134218754;
    v108 = v23;
    v109 = 2114;
    v110 = v24;
    v111 = 2114;
    v112 = name;
    v113 = 2114;
    v114 = activityCopy;
    _os_log_impl(&dword_23E5E3000, v22, OS_LOG_TYPE_DEFAULT, "Fetching changes in %lu record zones (database %{public}@, group %{public}@, activity %{public}@)", buf, 0x2Au);
  }

  if ([configurationsCopy count])
  {
    ASLoggingInitialize();
    v26 = *v20;
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
      [databaseCopy databaseScope];
      v28 = CKDatabaseScopeString();
      containerIdentifier = [(CKContainer *)self->_container containerIdentifier];
      *buf = 138543874;
      v108 = configurationsCopy;
      v109 = 2114;
      v110 = v28;
      v111 = 2114;
      v112 = containerIdentifier;
      _os_log_impl(&dword_23E5E3000, v27, OS_LOG_TYPE_DEFAULT, "Using fetch configurations %{public}@ %{public}@ database in %{public}@", buf, 0x20u);
    }
  }

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v58 = [MEMORY[0x277CBEB58] set];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v30 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v19, "count")}];
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v31 = v19;
  v32 = [v31 countByEnumeratingWithState:&v102 objects:v106 count:16];
  if (v32)
  {
    v33 = *v103;
    do
    {
      v34 = 0;
      do
      {
        if (*v103 != v33)
        {
          objc_enumerationMutation(v31);
        }

        v35 = *(*(&v102 + 1) + 8 * v34);
        v36 = objc_alloc_init(MEMORY[0x277CBC3A0]);
        v37 = [cacheCopy serverChangeTokenForRecordZoneID:v35];
        [v36 setPreviousServerChangeToken:v37];

        [v30 setObject:v36 forKeyedSubscript:v35];
        ++v34;
      }

      while (v32 != v34);
      v32 = [v31 countByEnumeratingWithState:&v102 objects:v106 count:16];
    }

    while (v32);
  }

  v38 = objc_alloc(MEMORY[0x277CBC3B8]);
  allObjects = [v31 allObjects];
  v40 = [v38 initWithRecordZoneIDs:allObjects configurationsByRecordZoneID:v30];

  [v40 setGroup:groupCopy];
  objc_initWeak(buf, v40);
  [v40 setFetchAllChanges:1];
  v97[0] = MEMORY[0x277D85DD0];
  v97[1] = 3221225472;
  v97[2] = __165__ASCloudKitUtility__fetchChangesInZones_additionalZonesToFetch_fetchConfigurations_inDatabase_serverChangeTokenCache_priority_allowRetry_activity_group_completion___block_invoke;
  v97[3] = &unk_278C4EB30;
  v41 = configurationsCopy;
  v98 = v41;
  v42 = array;
  v99 = v42;
  v43 = databaseCopy;
  v100 = v43;
  v73 = dictionary;
  v101 = v73;
  [v40 setRecordChangedBlock:v97];
  v95[0] = MEMORY[0x277D85DD0];
  v95[1] = 3221225472;
  v95[2] = __165__ASCloudKitUtility__fetchChangesInZones_additionalZonesToFetch_fetchConfigurations_inDatabase_serverChangeTokenCache_priority_allowRetry_activity_group_completion___block_invoke_333;
  v95[3] = &unk_278C4EB58;
  v44 = array2;
  v96 = v44;
  [v40 setRecordWithIDWasDeletedBlock:v95];
  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __165__ASCloudKitUtility__fetchChangesInZones_additionalZonesToFetch_fetchConfigurations_inDatabase_serverChangeTokenCache_priority_allowRetry_activity_group_completion___block_invoke_2;
  v93[3] = &unk_278C4EB80;
  v45 = cacheCopy;
  v94 = v45;
  [v40 setRecordZoneChangeTokensUpdatedBlock:v93];
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __165__ASCloudKitUtility__fetchChangesInZones_additionalZonesToFetch_fetchConfigurations_inDatabase_serverChangeTokenCache_priority_allowRetry_activity_group_completion___block_invoke_3;
  v89[3] = &unk_278C4EBA8;
  v46 = v58;
  v90 = v46;
  v47 = v45;
  v91 = v47;
  v63 = v66;
  v92 = v63;
  [v40 setRecordZoneFetchCompletionBlock:v89];
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __165__ASCloudKitUtility__fetchChangesInZones_additionalZonesToFetch_fetchConfigurations_inDatabase_serverChangeTokenCache_priority_allowRetry_activity_group_completion___block_invoke_338;
  v77[3] = &unk_278C4EC20;
  objc_copyWeak(v87, buf);
  v77[4] = self;
  v48 = v43;
  v78 = v48;
  v70 = v42;
  v79 = v70;
  v49 = v46;
  v80 = v49;
  retryCopy = retry;
  v61 = v41;
  v81 = v61;
  v67 = v47;
  v82 = v67;
  v87[1] = priority;
  v50 = activityCopy;
  v83 = v50;
  v51 = groupCopy;
  v84 = v51;
  v52 = completionCopy;
  v86 = v52;
  v53 = v44;
  v85 = v53;
  [v40 setFetchRecordZoneChangesCompletionBlock:v77];
  [v40 setQualityOfService:17];
  v54 = _ASOperationConfigurationForPriority(priority, v50);
  [v40 setConfiguration:v54];

  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __165__ASCloudKitUtility__fetchChangesInZones_additionalZonesToFetch_fetchConfigurations_inDatabase_serverChangeTokenCache_priority_allowRetry_activity_group_completion___block_invoke_342;
  block[3] = &unk_278C4B250;
  block[4] = self;
  v56 = v40;
  v76 = v56;
  dispatch_async(serialQueue, block);
  [v48 addOperation:v56];

  objc_destroyWeak(v87);
  objc_destroyWeak(buf);
}

void __165__ASCloudKitUtility__fetchChangesInZones_additionalZonesToFetch_fetchConfigurations_inDatabase_serverChangeTokenCache_priority_allowRetry_activity_group_completion___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 recordType];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
LABEL_13:
    [*(a1 + 40) addObject:v3];
    goto LABEL_19;
  }

  if ([v6 shouldSkip])
  {
    ASLoggingInitialize();
    v7 = *MEMORY[0x277CE8FD0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [v3 recordType];
      v10 = [v3 recordID];
      v11 = [v10 zoneID];
      [*(a1 + 48) databaseScope];
      v12 = CKDatabaseScopeString();
      v32 = 138543874;
      v33 = v9;
      v34 = 2114;
      v35 = v11;
      v36 = 2114;
      v37 = v12;
      v13 = "Skipping %{public}@ from %{public}@ in database: %{public}@)";
LABEL_9:
      _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, v13, &v32, 0x20u);

LABEL_18:
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v14 = [v6 oldestAllowedModificationDate];
  if (!v14 || (v15 = v14, [v6 oldestAllowedModificationDate], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "modificationDate"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "hk_isAfterDate:", v17), v17, v16, v15, !v18))
  {
    if ([v6 shouldCoalesce])
    {
      v20 = *(a1 + 56);
      v21 = [v3 recordType];
      v22 = [v20 objectForKeyedSubscript:v21];
      v23 = v22;
      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = [MEMORY[0x277CBEB18] array];
      }

      v8 = v24;

      v25 = [v3 recordID];
      v26 = [v25 recordName];

      v27 = [v3 recordID];
      v28 = [v27 recordName];
      v29 = [v8 containsObject:v28];

      if ((v29 & 1) == 0)
      {
        [v8 addObject:v26];
        v30 = *(a1 + 56);
        v31 = [v3 recordType];
        [v30 setObject:v8 forKeyedSubscript:v31];
      }

      goto LABEL_18;
    }

    goto LABEL_13;
  }

  ASLoggingInitialize();
  v19 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v19;
    v9 = [v3 recordType];
    v10 = [v3 recordID];
    v11 = [v10 zoneID];
    [*(a1 + 48) databaseScope];
    v12 = CKDatabaseScopeString();
    v32 = 138543874;
    v33 = v9;
    v34 = 2114;
    v35 = v11;
    v36 = 2114;
    v37 = v12;
    v13 = "Record too old: %{public}@ from %{public}@ in database: %{public}@";
    goto LABEL_9;
  }

LABEL_19:
}

void __165__ASCloudKitUtility__fetchChangesInZones_additionalZonesToFetch_fetchConfigurations_inDatabase_serverChangeTokenCache_priority_allowRetry_activity_group_completion___block_invoke_3(id *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a6;
  v12 = v11;
  if (v11)
  {
    v13 = [v11 code];
    ASLoggingInitialize();
    v14 = *MEMORY[0x277CE8FD0];
    v15 = *MEMORY[0x277CE8FD0];
    if (v13 == 21)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = v9;
        _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, "Change token expired for zone %@", &v21, 0xCu);
      }

      [a1[4] addObject:v9];
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __165__ASCloudKitUtility__fetchChangesInZones_additionalZonesToFetch_fetchConfigurations_inDatabase_serverChangeTokenCache_priority_allowRetry_activity_group_completion___block_invoke_3_cold_1();
    }

    v18 = a1[5];
    v19 = 0;
LABEL_16:
    [v18 setServerChangeToken:v19 forRecordZoneID:v9];
    goto LABEL_17;
  }

  if (![a1[6] containsObject:v9])
  {
    ASLoggingInitialize();
    v20 = *MEMORY[0x277CE8FD0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412546;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_23E5E3000, v20, OS_LOG_TYPE_DEFAULT, "Fetched changes successfully in zone %@, serverChangeToken %@", &v21, 0x16u);
    }

    v18 = a1[5];
    v19 = v10;
    goto LABEL_16;
  }

  v16 = [MEMORY[0x277CBEAA8] date];
  ASLoggingInitialize();
  v17 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = v9;
    v23 = 2112;
    v24 = v16;
    _os_log_impl(&dword_23E5E3000, v17, OS_LOG_TYPE_DEFAULT, "Fetched additional records successfully in zone %@, for date %@", &v21, 0x16u);
  }

  [a1[5] setFetchDate:v16 forRecordZoneID:v9];

LABEL_17:
}

void __165__ASCloudKitUtility__fetchChangesInZones_additionalZonesToFetch_fetchConfigurations_inDatabase_serverChangeTokenCache_priority_allowRetry_activity_group_completion___block_invoke_338(uint64_t a1, void *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 112));

  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __165__ASCloudKitUtility__fetchChangesInZones_additionalZonesToFetch_fetchConfigurations_inDatabase_serverChangeTokenCache_priority_allowRetry_activity_group_completion___block_invoke_2_339;
    block[3] = &unk_278C4EBD0;
    block[4] = v5;
    objc_copyWeak(&v54, (a1 + 112));
    dispatch_async(v6, block);
    objc_destroyWeak(&v54);
  }

  ASLoggingInitialize();
  v7 = MEMORY[0x277CE8FD0];
  v8 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    v10 = v8;
    [v9 databaseScope];
    v11 = CKDatabaseScopeString();
    v12 = [*(a1 + 48) count];
    v13 = [*(*(a1 + 32) + 24) containerIdentifier];
    *buf = 138543874;
    v60 = v11;
    v61 = 2048;
    v62 = v12;
    v63 = 2114;
    v64 = v13;
    _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "Finished fetching changes in database %{public}@, %lu records, %{public}@", buf, 0x20u);
  }

  if (![*(a1 + 56) count] || *(a1 + 128) != 1)
  {
    ASLoggingInitialize();
    v24 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 48);
      v26 = v24;
      v27 = [v25 count];
      *buf = 134217984;
      v60 = v27;
      _os_log_impl(&dword_23E5E3000, v26, OS_LOG_TYPE_DEFAULT, "Calling completion with %lu changed records", buf, 0xCu);
    }

    v28 = [*(a1 + 40) databaseScope];
    v29 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [v29 addObject:&unk_2850F5168];
    if (v28 == 3)
    {
      [v29 addObject:&unk_2850F5180];
    }

    v30 = [v29 copy];

    v31 = v3;
    v23 = v30;
    v32 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v31, "code")}];
    v33 = [v23 containsObject:v32];

    if (v33)
    {
    }

    else
    {
      if ([v31 code] != 2)
      {

LABEL_29:
        v34 = *(*(a1 + 104) + 16);
        goto LABEL_30;
      }

      v48 = v3;
      v35 = [v31 userInfo];
      v36 = [v35 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v46 = v36;
      v37 = [v36 allValues];
      v38 = [v37 countByEnumeratingWithState:&v55 objects:buf count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v56;
        while (2)
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v56 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(*(&v55 + 1) + 8 * i), "code")}];
            v43 = [v23 containsObject:v42];

            if (!v43)
            {

              v3 = v48;
              goto LABEL_29;
            }
          }

          v39 = [v37 countByEnumeratingWithState:&v55 objects:buf count:16];
          if (v39)
          {
            continue;
          }

          break;
        }
      }

      v3 = v48;
    }

    v34 = *(*(a1 + 104) + 16);
LABEL_30:
    v34();
    goto LABEL_31;
  }

  v47 = v3;
  ASLoggingInitialize();
  v14 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, "Some change tokens have expired, fetching again.", buf, 2u);
  }

  v45 = *(a1 + 32);
  v15 = *(a1 + 56);
  v16 = [MEMORY[0x277CBEB98] set];
  v17 = *(a1 + 40);
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v20 = *(a1 + 120);
  v21 = *(a1 + 80);
  v22 = *(a1 + 88);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __165__ASCloudKitUtility__fetchChangesInZones_additionalZonesToFetch_fetchConfigurations_inDatabase_serverChangeTokenCache_priority_allowRetry_activity_group_completion___block_invoke_340;
  v49[3] = &unk_278C4EBF8;
  v52 = *(a1 + 104);
  v50 = *(a1 + 48);
  v51 = *(a1 + 96);
  LOBYTE(v44) = 0;
  [v45 _fetchChangesInZones:v15 additionalZonesToFetch:v16 fetchConfigurations:v18 inDatabase:v17 serverChangeTokenCache:v19 priority:v20 allowRetry:v44 activity:v21 group:v22 completion:v49];

  v23 = v52;
  v3 = v47;
LABEL_31:
}

void __165__ASCloudKitUtility__fetchChangesInZones_additionalZonesToFetch_fetchConfigurations_inDatabase_serverChangeTokenCache_priority_allowRetry_activity_group_completion___block_invoke_2_339(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 removeObject:WeakRetained];
}

void __165__ASCloudKitUtility__fetchChangesInZones_additionalZonesToFetch_fetchConfigurations_inDatabase_serverChangeTokenCache_priority_allowRetry_activity_group_completion___block_invoke_340(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11 = a5;
  v12 = a3;
  v14 = [v10 arrayByAddingObjectsFromArray:a4];
  v13 = [*(a1 + 40) arrayByAddingObjectsFromArray:v11];

  (*(v9 + 16))(v9, a2, v12, v14, v13);
}

- (void)_fetchChangesInDatabase:(id)database serverChangeTokenCache:(id)cache priority:(int64_t)priority activity:(id)activity group:(id)group additionalZoneIDs:(id)ds zoneIDsToSkip:(id)skip fetchConfigurations:(id)self0 completion:(id)self1
{
  v64 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  cacheCopy = cache;
  activityCopy = activity;
  groupCopy = group;
  dsCopy = ds;
  skipCopy = skip;
  configurationsCopy = configurations;
  completionCopy = completion;
  ASLoggingInitialize();
  v21 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    [databaseCopy databaseScope];
    v23 = CKDatabaseScopeString();
    containerIdentifier = [(CKContainer *)self->_container containerIdentifier];
    *buf = 138543618;
    *&buf[4] = v23;
    *&buf[12] = 2114;
    *&buf[14] = containerIdentifier;
    _os_log_impl(&dword_23E5E3000, v22, OS_LOG_TYPE_DEFAULT, "Fetching changes in database %{public}@, %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v61 = __Block_byref_object_copy__14;
  v62 = __Block_byref_object_dispose__14;
  v63 = [MEMORY[0x277CBEB98] set];
  v25 = objc_alloc(MEMORY[0x277CBC388]);
  v26 = [cacheCopy serverChangeTokenForDatabase:databaseCopy];
  v27 = [v25 initWithPreviousServerChangeToken:v26];

  objc_initWeak(&location, v27);
  [v27 setFetchAllChanges:1];
  [v27 setGroup:groupCopy];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __155__ASCloudKitUtility__fetchChangesInDatabase_serverChangeTokenCache_priority_activity_group_additionalZoneIDs_zoneIDsToSkip_fetchConfigurations_completion___block_invoke;
  v56[3] = &unk_278C4EC48;
  v39 = skipCopy;
  v57 = v39;
  v58 = buf;
  [v27 setRecordZoneWithIDChangedBlock:v56];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __155__ASCloudKitUtility__fetchChangesInDatabase_serverChangeTokenCache_priority_activity_group_additionalZoneIDs_zoneIDsToSkip_fetchConfigurations_completion___block_invoke_344;
  v46[3] = &unk_278C4EC70;
  objc_copyWeak(v55, &location);
  v46[4] = self;
  v28 = completionCopy;
  v29 = cacheCopy;
  v47 = v29;
  v30 = databaseCopy;
  v48 = v30;
  v54 = buf;
  v31 = dsCopy;
  v49 = v31;
  v32 = configurationsCopy;
  v50 = v32;
  v55[1] = priority;
  v33 = activityCopy;
  v51 = v33;
  v34 = groupCopy;
  v52 = v34;
  v35 = v28;
  v53 = v35;
  [v27 setFetchDatabaseChangesCompletionBlock:v46];
  [v27 setQualityOfService:17];
  v36 = _ASOperationConfigurationForPriority(priority, v33);
  [v27 setConfiguration:v36];

  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __155__ASCloudKitUtility__fetchChangesInDatabase_serverChangeTokenCache_priority_activity_group_additionalZoneIDs_zoneIDsToSkip_fetchConfigurations_completion___block_invoke_346;
  block[3] = &unk_278C4B250;
  block[4] = self;
  v38 = v27;
  v45 = v38;
  dispatch_async(serialQueue, block);
  [v30 addOperation:v38];

  objc_destroyWeak(v55);
  objc_destroyWeak(&location);

  _Block_object_dispose(buf, 8);
}

void __155__ASCloudKitUtility__fetchChangesInDatabase_serverChangeTokenCache_priority_activity_group_additionalZoneIDs_zoneIDsToSkip_fetchConfigurations_completion___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 zoneName];
  v5 = [v4 isEqualToString:@"ActivityDataZone"];

  if (v5 & 1) != 0 || ([v3 zoneName], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"RelationshipZone"), v6, (v7))
  {

    goto LABEL_4;
  }

  if (ASSecureCloudEnabled())
  {
    v16 = [v3 zoneName];
    v17 = [v16 hasPrefix:@"RelationshipZone"];

    if (v17)
    {
LABEL_4:
      if ([*(a1 + 32) containsObject:v3])
      {
        ASLoggingInitialize();
        v8 = *MEMORY[0x277CE8FD0];
        if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(a1 + 32);
          v19 = 138412546;
          v20 = v3;
          v21 = 2112;
          v22 = v9;
          v10 = "Skipping zone with changes %@, full list of zone IDs to skip %@";
          v11 = v8;
          v12 = 22;
LABEL_14:
          _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, v10, &v19, v12);
          goto LABEL_15;
        }
      }

      else
      {
        v13 = [*(*(*(a1 + 40) + 8) + 40) setByAddingObject:v3];
        v14 = *(*(a1 + 40) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;
      }

      goto LABEL_15;
    }
  }

  else
  {
  }

  ASLoggingInitialize();
  v18 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543362;
    v20 = v3;
    v10 = "Ignoring changes in zone with ID: %{public}@";
    v11 = v18;
    v12 = 12;
    goto LABEL_14;
  }

LABEL_15:
}

void __155__ASCloudKitUtility__fetchChangesInDatabase_serverChangeTokenCache_priority_activity_group_additionalZoneIDs_zoneIDsToSkip_fetchConfigurations_completion___block_invoke_344(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  if (WeakRetained)
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __155__ASCloudKitUtility__fetchChangesInDatabase_serverChangeTokenCache_priority_activity_group_additionalZoneIDs_zoneIDsToSkip_fetchConfigurations_completion___block_invoke_2;
    block[3] = &unk_278C4EBD0;
    block[4] = v9;
    objc_copyWeak(&v23, (a1 + 104));
    dispatch_async(v10, block);
    objc_destroyWeak(&v23);
  }

  if (v7)
  {
    ASLoggingInitialize();
    v11 = *MEMORY[0x277CE8FD0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
    {
      __155__ASCloudKitUtility__fetchChangesInDatabase_serverChangeTokenCache_priority_activity_group_additionalZoneIDs_zoneIDsToSkip_fetchConfigurations_completion___block_invoke_344_cold_1(a1, v11, v7);
    }

    [*(a1 + 40) setServerChangeToken:0 forDatabase:*(a1 + 48)];
    v12 = *(*(a1 + 88) + 16);
  }

  else
  {
    [*(a1 + 40) setServerChangeToken:v6 forDatabase:*(a1 + 48)];
    if ([*(*(*(a1 + 96) + 8) + 40) count] || objc_msgSend(*(a1 + 56), "count"))
    {
      v13 = *(a1 + 32);
      v14 = *(*(*(a1 + 96) + 8) + 40);
      v15 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 56)];
      LOBYTE(v21) = 1;
      [v13 _fetchChangesInZones:v14 additionalZonesToFetch:v15 fetchConfigurations:*(a1 + 64) inDatabase:*(a1 + 48) serverChangeTokenCache:*(a1 + 40) priority:*(a1 + 112) allowRetry:v21 activity:*(a1 + 72) group:*(a1 + 80) completion:*(a1 + 88)];

      goto LABEL_11;
    }

    ASLoggingInitialize();
    v16 = *MEMORY[0x277CE8FD0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 48);
      v18 = v16;
      [v17 databaseScope];
      v19 = CKDatabaseScopeString();
      v20 = [*(*(a1 + 32) + 24) containerIdentifier];
      *buf = 138543618;
      v25 = v19;
      v26 = 2114;
      v27 = v20;
      _os_log_impl(&dword_23E5E3000, v18, OS_LOG_TYPE_DEFAULT, "No changes in database %{public}@, not fetching. %{public}@", buf, 0x16u);
    }

    v12 = *(*(a1 + 88) + 16);
  }

  v12();
LABEL_11:
}

void __155__ASCloudKitUtility__fetchChangesInDatabase_serverChangeTokenCache_priority_activity_group_additionalZoneIDs_zoneIDsToSkip_fetchConfigurations_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 removeObject:WeakRetained];
}

- (void)_retrieveZone:(id)zone database:(id)database completion:(id)completion
{
  v23[1] = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  completionCopy = completion;
  v9 = MEMORY[0x277CBC3D0];
  databaseCopy = database;
  v11 = [v9 alloc];
  v23[0] = zoneCopy;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v13 = [v11 initWithRecordZoneIDs:v12];

  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __55__ASCloudKitUtility__retrieveZone_database_completion___block_invoke;
  v20 = &unk_278C4E9F0;
  v21 = zoneCopy;
  v22 = completionCopy;
  v14 = completionCopy;
  v15 = zoneCopy;
  [v13 setFetchRecordZonesCompletionBlock:&v17];
  [v13 setQualityOfService:{17, v17, v18, v19, v20}];
  v16 = _ASOperationConfigurationForPriority(2, 0);
  [v13 setConfiguration:v16];

  [databaseCopy addOperation:v13];
}

void __55__ASCloudKitUtility__retrieveZone_database_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  ASLoggingInitialize();
  v7 = os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v7)
    {
      __55__ASCloudKitUtility__retrieveZone_database_completion___block_invoke_cold_1();
    }
  }

  else if (v7)
  {
    __55__ASCloudKitUtility__retrieveZone_database_completion___block_invoke_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)retrieveZone:(id)zone completion:(id)completion
{
  completionCopy = completion;
  zoneCopy = zone;
  container = [(ASCloudKitUtility *)self container];
  privateCloudDatabase = [container privateCloudDatabase];
  [(ASCloudKitUtility *)self _retrieveZone:zoneCopy database:privateCloudDatabase completion:completionCopy];
}

- (void)fetchChangesInPrivateDatabaseWithServerChangeTokenCache:(id)cache priority:(int64_t)priority activity:(id)activity group:(id)group additionalZoneIDs:(id)ds zoneIDsToSkip:(id)skip fetchConfigurations:(id)configurations completion:(id)self0
{
  completionCopy = completion;
  configurationsCopy = configurations;
  skipCopy = skip;
  dsCopy = ds;
  groupCopy = group;
  activityCopy = activity;
  cacheCopy = cache;
  container = [(ASCloudKitUtility *)self container];
  privateCloudDatabase = [container privateCloudDatabase];
  [(ASCloudKitUtility *)self _fetchChangesInDatabase:privateCloudDatabase serverChangeTokenCache:cacheCopy priority:priority activity:activityCopy group:groupCopy additionalZoneIDs:dsCopy zoneIDsToSkip:skipCopy fetchConfigurations:configurationsCopy completion:completionCopy];
}

- (void)fetchChangesInSharedDatabaseWithServerChangeTokenCache:(id)cache priority:(int64_t)priority activity:(id)activity group:(id)group additionalZoneIDs:(id)ds zoneIDsToSkip:(id)skip fetchConfigurations:(id)configurations completion:(id)self0
{
  completionCopy = completion;
  configurationsCopy = configurations;
  skipCopy = skip;
  dsCopy = ds;
  groupCopy = group;
  activityCopy = activity;
  cacheCopy = cache;
  container = [(ASCloudKitUtility *)self container];
  sharedCloudDatabase = [container sharedCloudDatabase];
  [(ASCloudKitUtility *)self _fetchChangesInDatabase:sharedCloudDatabase serverChangeTokenCache:cacheCopy priority:priority activity:activityCopy group:groupCopy additionalZoneIDs:dsCopy zoneIDsToSkip:skipCopy fetchConfigurations:configurationsCopy completion:completionCopy];
}

void __91__ASCloudKitUtility_createRecordZonesWithIDs_priority_useZoneWideSharing_group_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v0, v1, "Failed to create record zones with IDs %@ with error: %{public}@");
}

void __75__ASCloudKitUtility_fetchShareWithShareRecordID_activity_group_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v0, v1, "Failed to fetch share with ID %@, error: %{public}@");
}

void __54__ASCloudKitUtility__acceptShareMetadatas_completion___block_invoke_314_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __78__ASCloudKitUtility__acceptSharesWithURLs_operation_cloudKitGroup_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __78__ASCloudKitUtility__acceptSharesWithURLs_operation_cloudKitGroup_completion___block_invoke_318_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)fetchShareParticipantForIdentifier:group:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __81__ASCloudKitUtility_addParticipantWithCloudKitAddress_toShares_group_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v0, v1, "Adding participant %@ failed: saving shares failed with error: %{public}@");
}

- (void)addParticipant:(os_log_t)log toShares:group:completion:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_23E5E3000, log, OS_LOG_TYPE_ERROR, "Trying to add owner of the share, skipping.", buf, 2u);
}

void __86__ASCloudKitUtility_removeParticipantWithCloudKitAddress_fromShares_group_completion___block_invoke_cold_2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_23E5E3000, log, OS_LOG_TYPE_ERROR, "Trying to remove owner of the share, skipping.", buf, 2u);
}

void __86__ASCloudKitUtility_removeParticipantWithCloudKitAddress_fromShares_group_completion___block_invoke_325_cold_1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v0, v1, "Removing participant %@ failed: saving shares failed with error: %{public}@");
}

void __155__ASCloudKitUtility__fetchChangesInDatabase_serverChangeTokenCache_priority_activity_group_additionalZoneIDs_zoneIDsToSkip_fetchConfigurations_completion___block_invoke_344_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  v5 = a2;
  [v4 databaseScope];
  v6 = CKDatabaseScopeString();
  OUTLINED_FUNCTION_2_1();
  v8 = a3;
  _os_log_error_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_ERROR, "Failed to fetch changed record zones in database %{public}@ with error %{public}@", v7, 0x16u);
}

void __55__ASCloudKitUtility__retrieveZone_database_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v0, v1, "Failed to retrieve zone %@{public} with error %{public}@");
}

void __55__ASCloudKitUtility__retrieveZone_database_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end