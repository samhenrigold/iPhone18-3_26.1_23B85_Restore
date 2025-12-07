@interface HDCloudSyncSharedSummaryPushPruningOperation
- (HDCloudSyncSharedSummaryPushPruningOperation)initWithConfiguration:(id)configuration allRecordsToSave:(id)save participantZoneIDsToPush:(id)push existingTransactionRecordsByZoneID:(id)d;
- (id)_filterRecordsThatExistInTheCloud:(id)cloud;
- (id)_recordIDsForTransactions:(id)transactions;
- (void)_findTransactionsToDelete:(id)delete existingTransactionRecordsByZoneID:(id)d completion:(id)completion;
- (void)_modifyRecordsAndFinish:(id)finish recordIDsToDelete:(id)delete;
- (void)main;
@end

@implementation HDCloudSyncSharedSummaryPushPruningOperation

- (HDCloudSyncSharedSummaryPushPruningOperation)initWithConfiguration:(id)configuration allRecordsToSave:(id)save participantZoneIDsToPush:(id)push existingTransactionRecordsByZoneID:(id)d
{
  saveCopy = save;
  pushCopy = push;
  dCopy = d;
  v21.receiver = self;
  v21.super_class = HDCloudSyncSharedSummaryPushPruningOperation;
  v13 = [(HDCloudSyncOperation *)&v21 initWithConfiguration:configuration cloudState:0];
  if (v13)
  {
    v14 = objc_msgSend_copy(saveCopy);
    allRecordsToSave = v13->_allRecordsToSave;
    v13->_allRecordsToSave = v14;

    v16 = objc_msgSend_copy(pushCopy);
    participantZoneIDsWithNewTransactionsToPush = v13->_participantZoneIDsWithNewTransactionsToPush;
    v13->_participantZoneIDsWithNewTransactionsToPush = v16;

    v18 = objc_msgSend_copy(dCopy);
    existingTransactionRecordsByZoneID = v13->_existingTransactionRecordsByZoneID;
    v13->_existingTransactionRecordsByZoneID = v18;
  }

  return v13;
}

- (void)main
{
  v3 = [(NSSet *)self->_allRecordsToSave hk_map:&__block_literal_global_197];
  participantZoneIDsWithNewTransactionsToPush = self->_participantZoneIDsWithNewTransactionsToPush;
  existingTransactionRecordsByZoneID = self->_existingTransactionRecordsByZoneID;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HDCloudSyncSharedSummaryPushPruningOperation_main__block_invoke_2;
  v7[3] = &unk_278629B70;
  v7[4] = self;
  v8 = v3;
  v6 = v3;
  [(HDCloudSyncSharedSummaryPushPruningOperation *)self _findTransactionsToDelete:participantZoneIDsWithNewTransactionsToPush existingTransactionRecordsByZoneID:existingTransactionRecordsByZoneID completion:v7];
}

void __52__HDCloudSyncSharedSummaryPushPruningOperation_main__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) _recordIDsForTransactions:a2];
  v4 = [v3 hk_minus:*(a1 + 40)];

  v5 = [*(a1 + 32) _filterRecordsThatExistInTheCloud:*(*(a1 + 32) + 120)];
  if ([v5 count] || objc_msgSend(v4, "count"))
  {
    v6 = *(a1 + 32);
    v7 = [v5 allObjects];
    v8 = [v4 allObjects];
    [v6 _modifyRecordsAndFinish:v7 recordIDsToDelete:v8];
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [summary-sharing] No records found to push or prune.", &v11, 0xCu);
    }

    [*(a1 + 32) finishWithSuccess:1 error:0];
  }
}

- (void)_findTransactionsToDelete:(id)delete existingTransactionRecordsByZoneID:(id)d completion:(id)completion
{
  deleteCopy = delete;
  dCopy = d;
  completionCopy = completion;
  v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __120__HDCloudSyncSharedSummaryPushPruningOperation__findTransactionsToDelete_existingTransactionRecordsByZoneID_completion___block_invoke;
  v26[3] = &unk_278629BE0;
  v12 = v11;
  v27 = v12;
  [dCopy enumerateKeysAndObjectsUsingBlock:v26];
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  cloudSyncShimProvider = [repository cloudSyncShimProvider];
  sharedSummariesShim = [cloudSyncShimProvider sharedSummariesShim];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __120__HDCloudSyncSharedSummaryPushPruningOperation__findTransactionsToDelete_existingTransactionRecordsByZoneID_completion___block_invoke_5;
  v21[3] = &unk_278629C08;
  v24 = dCopy;
  v25 = completionCopy;
  v21[4] = self;
  v22 = v12;
  v23 = deleteCopy;
  v17 = dCopy;
  v18 = deleteCopy;
  v19 = v12;
  v20 = completionCopy;
  [sharedSummariesShim deviceIdentifierWithCompletion:v21];
}

void __120__HDCloudSyncSharedSummaryPushPruningOperation__findTransactionsToDelete_existingTransactionRecordsByZoneID_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v42;
    do
    {
      v9 = 0;
      do
      {
        if (*v42 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v41 + 1) + 8 * v9) sourceDeviceIdentifier];
        [v4 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v7);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v4;
  v11 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v38;
    v14 = v36;
    v28 = v33;
    v15 = &unk_27861AD78;
    do
    {
      v16 = 0;
      do
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v37 + 1) + 8 * v16);
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v36[0] = __120__HDCloudSyncSharedSummaryPushPruningOperation__findTransactionsToDelete_existingTransactionRecordsByZoneID_completion___block_invoke_2;
        v36[1] = v15;
        v36[2] = v17;
        v18 = [v5 hk_filter:{v35, v28}];
        if ([v18 count] >= 2)
        {
          v19 = [v18 hk_firstSortedObjectWithComparison:&__block_literal_global_297];
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v33[0] = __120__HDCloudSyncSharedSummaryPushPruningOperation__findTransactionsToDelete_existingTransactionRecordsByZoneID_completion___block_invoke_4;
          v33[1] = &unk_278629BB8;
          v34 = v19;
          v31 = v19;
          [v18 objectsPassingTest:v32];
          v20 = v12;
          v21 = v14;
          v22 = v13;
          v23 = v5;
          v25 = v24 = v15;
          v26 = *(a1 + 32);
          v27 = [v25 allObjects];
          [v26 addObjectsFromArray:v27];

          v15 = v24;
          v5 = v23;
          v13 = v22;
          v14 = v21;
          v12 = v20;
        }

        ++v16;
      }

      while (v12 != v16);
      v12 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v12);
  }
}

uint64_t __120__HDCloudSyncSharedSummaryPushPruningOperation__findTransactionsToDelete_existingTransactionRecordsByZoneID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sourceDeviceIdentifier];
  v5 = *(a1 + 32);
  if (v4 == v5)
  {
    v7 = 1;
  }

  else if (v5)
  {
    v6 = [v3 sourceDeviceIdentifier];
    v7 = [v6 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __120__HDCloudSyncSharedSummaryPushPruningOperation__findTransactionsToDelete_existingTransactionRecordsByZoneID_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 record];
  v6 = [v5 creationDate];
  v7 = [v4 record];

  v8 = [v7 creationDate];
  v9 = [v6 hk_isAfterDate:v8];

  if (v9)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

uint64_t __120__HDCloudSyncSharedSummaryPushPruningOperation__findTransactionsToDelete_existingTransactionRecordsByZoneID_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 UUID];
  v4 = [*(a1 + 32) UUID];
  v5 = [v3 isEqual:v4];

  return v5 ^ 1u;
}

void __120__HDCloudSyncSharedSummaryPushPruningOperation__findTransactionsToDelete_existingTransactionRecordsByZoneID_completion___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v20 = v6;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = *(a1 + 48);
    v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = MEMORY[0x277CBEB58];
          v13 = [*(a1 + 56) objectForKeyedSubscript:{*(*(&v24 + 1) + 8 * i), v20}];
          v14 = [v12 setWithSet:v13];

          if (v14)
          {
            v22[0] = MEMORY[0x277D85DD0];
            v22[1] = 3221225472;
            v22[2] = __120__HDCloudSyncSharedSummaryPushPruningOperation__findTransactionsToDelete_existingTransactionRecordsByZoneID_completion___block_invoke_300;
            v22[3] = &unk_27861AD78;
            v23 = v5;
            v15 = [v14 hk_filter:v22];
            v16 = *(a1 + 40);
            v17 = [v15 allObjects];
            [v16 addObjectsFromArray:v17];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v9);
    }

    (*(*(a1 + 64) + 16))();
    v7 = v20;
  }

  else
  {
    _HKInitializeLogging();
    v18 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 32);
      *buf = 138543618;
      v30 = v19;
      v31 = 2114;
      v32 = v7;
      _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "%{public}@: [summary-sharing] Error fetching device identifier. Unable to attempt to prune previously existing transactions for this device. %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 64) + 16))();
  }
}

uint64_t __120__HDCloudSyncSharedSummaryPushPruningOperation__findTransactionsToDelete_existingTransactionRecordsByZoneID_completion___block_invoke_300(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sourceDeviceIdentifier];
  v5 = *(a1 + 32);
  if (v4 == v5)
  {
    v7 = 1;
  }

  else if (v5)
  {
    v6 = [v3 sourceDeviceIdentifier];
    v7 = [v6 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_recordIDsForTransactions:(id)transactions
{
  v21 = *MEMORY[0x277D85DE8];
  transactionsCopy = transactions;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = transactionsCopy;
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        summaryIdentifiers = [v9 summaryIdentifiers];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __74__HDCloudSyncSharedSummaryPushPruningOperation__recordIDsForTransactions___block_invoke;
        v15[3] = &unk_278629C30;
        v15[4] = v9;
        v11 = [summaryIdentifiers hk_map:v15];

        recordID = [v9 recordID];
        [v4 addObject:recordID];

        [v4 addObjectsFromArray:v11];
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v4;
}

id __74__HDCloudSyncSharedSummaryPushPruningOperation__recordIDsForTransactions___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 recordID];
  v5 = [v4 zoneID];
  v6 = [HDCloudSyncSharedSummaryRecord recordIDWithZoneID:v5 UUID:v3];

  return v6;
}

- (id)_filterRecordsThatExistInTheCloud:(id)cloud
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __82__HDCloudSyncSharedSummaryPushPruningOperation__filterRecordsThatExistInTheCloud___block_invoke;
  v5[3] = &unk_2786167D0;
  v5[4] = self;
  v3 = [cloud hk_filter:v5];

  return v3;
}

uint64_t __82__HDCloudSyncSharedSummaryPushPruningOperation__filterRecordsThatExistInTheCloud___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 recordID];
  v5 = [v4 zoneID];
  v6 = [*(a1 + 32) configuration];
  v7 = [v6 repository];
  v8 = [v7 primaryCKContainer];
  v9 = [v8 containerIdentifier];
  v10 = [HDCloudSyncZoneIdentifier identifierForZone:v5 container:v9 scope:2];

  v11 = [HDCloudSyncCachedZone alloc];
  v12 = [*(a1 + 32) configuration];
  v13 = [v12 repository];
  v14 = [*(a1 + 32) configuration];
  v15 = [v14 accessibilityAssertion];
  v16 = [(HDCloudSyncCachedZone *)v11 initForZoneIdentifier:v10 repository:v13 accessibilityAssertion:v15];

  v17 = [v3 recordID];
  v26 = 0;
  v18 = [v16 containsRecordWithRecordID:v17 error:&v26];
  v19 = v26;

  if (v18 != 1)
  {
    if (v18)
    {
      v21 = 1;
      goto LABEL_7;
    }

    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 32);
      v24 = v20;
      v25 = [v3 recordID];
      *buf = 138543874;
      v28 = v23;
      v29 = 2114;
      v30 = v25;
      v31 = 2114;
      v32 = v19;
      _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "%{public}@ [summary-sharing] Failed to fetch status of summary record %{public}@, %{public}@", buf, 0x20u);
    }
  }

  v21 = 0;
LABEL_7:

  return v21;
}

- (void)_modifyRecordsAndFinish:(id)finish recordIDsToDelete:(id)delete
{
  deleteCopy = delete;
  finishCopy = finish;
  v8 = [HDCloudSyncModifyRecordsOperation alloc];
  configuration = [(HDCloudSyncOperation *)self configuration];
  configuration2 = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration2 repository];
  primaryCKContainer = [repository primaryCKContainer];
  v13 = [(HDCloudSyncModifyRecordsOperation *)v8 initWithConfiguration:configuration container:primaryCKContainer recordsToSave:finishCopy recordIDsToDelete:deleteCopy];

  [(HDCloudSyncModifyRecordsOperation *)v13 setPermitNonAtomicZoneSaves:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__HDCloudSyncSharedSummaryPushPruningOperation__modifyRecordsAndFinish_recordIDsToDelete___block_invoke;
  v15[3] = &unk_278613088;
  v15[4] = self;
  [(HDCloudSyncOperation *)v13 setOnError:v15];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __90__HDCloudSyncSharedSummaryPushPruningOperation__modifyRecordsAndFinish_recordIDsToDelete___block_invoke_309;
  v14[3] = &unk_278613060;
  v14[4] = self;
  [(HDCloudSyncOperation *)v13 setOnSuccess:v14];
  [(HDCloudSyncOperation *)v13 start];
}

void __90__HDCloudSyncSharedSummaryPushPruningOperation__modifyRecordsAndFinish_recordIDsToDelete___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v4;
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [summary-sharing] Failed to modify records: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 32) finishWithSuccess:0 error:v4];
}

@end