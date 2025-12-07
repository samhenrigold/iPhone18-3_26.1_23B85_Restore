@interface HDInsertSharedSummaryTransactionOperation
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (HDInsertSharedSummaryTransactionOperation)initWithCoder:(id)coder;
- (HDInsertSharedSummaryTransactionOperation)initWithZoneIdentifier:(id)identifier;
@end

@implementation HDInsertSharedSummaryTransactionOperation

- (HDInsertSharedSummaryTransactionOperation)initWithZoneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = HDInsertSharedSummaryTransactionOperation;
  v5 = [(HDInsertSharedSummaryTransactionOperation *)&v9 init];
  if (v5)
  {
    v6 = objc_msgSend_copy(identifierCopy);
    zoneIdentifier = v5->_zoneIdentifier;
    v5->_zoneIdentifier = v6;
  }

  return v5;
}

- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  v124 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  transactionCopy = transaction;
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy__181;
  v79 = __Block_byref_object_dispose__181;
  v80 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 0;
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v62 = __82__HDInsertSharedSummaryTransactionOperation_performWithProfile_transaction_error___block_invoke;
  v63 = &unk_27862C0A8;
  v64 = &v71;
  v65 = &v75;
  v66 = &v67;
  v54 = profileCopy;
  v48 = transactionCopy;
  v49 = v61;
  selfCopy = self;
  if (self)
  {
    v102 = 0;
    v103 = &v102;
    v104 = 0x3032000000;
    v105 = __Block_byref_object_copy__181;
    v106 = __Block_byref_object_dispose__181;
    v107 = 0;
    v96 = 0;
    v97 = &v96;
    v98 = 0x3032000000;
    v99 = __Block_byref_object_copy__181;
    v100 = __Block_byref_object_dispose__181;
    v101 = 0;
    v9 = dispatch_semaphore_create(0);
    cloudSyncManager = [v54 cloudSyncManager];
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = __87__HDInsertSharedSummaryTransactionOperation_performWithProfile_transaction_completion___block_invoke;
    v92[3] = &unk_2786186B0;
    v94 = &v96;
    v95 = &v102;
    dsema = v9;
    v93 = dsema;
    [cloudSyncManager cloudSyncRepositoriesForClient:0 completion:v92];

    v11 = dispatch_time(0, 15000000000);
    if (dispatch_semaphore_wait(dsema, v11))
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *v116 = 138543362;
        selfCopy2 = self;
        _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@ Timed out waiting to complete journable operation", v116, 0xCu);
      }
    }

    if (v97[5])
    {
      v13 = objc_alloc_init(MEMORY[0x277D10BB0]);
      v90[0] = MEMORY[0x277D85DD0];
      v90[1] = 3221225472;
      v90[2] = __87__HDInsertSharedSummaryTransactionOperation_performWithProfile_transaction_completion___block_invoke_294;
      v90[3] = &unk_2786152A8;
      v91 = v49;
      [v13 setDidFinish:v90];
      [v13 beginTask];
      v58 = v13;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      obj = v97[5];
      v14 = [obj countByEnumeratingWithState:&v86 objects:v116 count:16];
      if (v14)
      {
        v53 = *v87;
        do
        {
          v55 = v14;
          for (i = 0; i != v55; ++i)
          {
            if (*v87 != v53)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v86 + 1) + 8 * i);
            [v58 beginTask];
            v17 = [[HDCloudSyncCachedZone alloc] initForZoneIdentifier:selfCopy->_zoneIdentifier repository:v16 accessibilityAssertion:0];
            v81[0] = MEMORY[0x277D85DD0];
            v81[1] = 3221225472;
            v82 = __87__HDInsertSharedSummaryTransactionOperation_performWithProfile_transaction_completion___block_invoke_2;
            v83 = &unk_278616020;
            v84 = v58;
            v85 = selfCopy;
            v57 = v54;
            v18 = v16;
            v19 = v17;
            v20 = v81;
            v21 = objc_opt_class();
            v115 = 0;
            v22 = [v19 recordsForClass:v21 error:&v115];
            v23 = v115;
            v60 = v23;
            if (v22)
            {
              v24 = 1;
            }

            else
            {
              v24 = v23 == 0;
            }

            if (v24)
            {
              v56 = [v22 hk_map:&__block_literal_global_217];
              v25 = objc_opt_class();
              v114 = 0;
              v26 = [v19 recordsForClass:v25 error:&v114];
              v27 = v114;

              if (v26 || !v27)
              {
                v52 = [v26 hk_map:&__block_literal_global_304];
                if (v52)
                {
                  v108[0] = MEMORY[0x277D85DD0];
                  v108[1] = 3221225472;
                  v108[2] = __105__HDInsertSharedSummaryTransactionOperation__saveRecordsAndFinishWithProfile_repository_zone_completion___block_invoke_305;
                  v108[3] = &unk_27862C168;
                  v113 = v20;
                  v108[4] = selfCopy;
                  v109 = 0;
                  v31 = v18;
                  v110 = v31;
                  v111 = v56;
                  v112 = v52;
                  v32 = v108;
                  v33 = v31;
                  cloudSyncShimProvider = [v33 cloudSyncShimProvider];
                  sharedSummariesShim = [cloudSyncShimProvider sharedSummariesShim];
                  [sharedSummariesShim fetchAllSharedSummaryTransactionsWithRepository:v33 completion:v32];
                }

                else
                {
                  _HKInitializeLogging();
                  v36 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    v119 = selfCopy;
                    _os_log_error_impl(&dword_228986000, v36, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: No Summary records found.", buf, 0xCu);
                  }

                  v82(v20, 1, 0);
                }
              }

              else
              {
                _HKInitializeLogging();
                v28 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                {
                  v39 = v28;
                  zoneIdentifier = [v19 zoneIdentifier];
                  *buf = 138543874;
                  v119 = selfCopy;
                  v120 = 2114;
                  v121 = zoneIdentifier;
                  v122 = 2114;
                  v123 = v27;
                  _os_log_error_impl(&dword_228986000, v39, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@ Failed to get summary records for %{public}@, %{public}@", buf, 0x20u);
                }

                v82(v20, 0, v27);
              }
            }

            else
            {
              _HKInitializeLogging();
              v29 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
              {
                v37 = v29;
                zoneIdentifier2 = [v19 zoneIdentifier];
                *buf = 138543874;
                v119 = selfCopy;
                v120 = 2114;
                v121 = zoneIdentifier2;
                v122 = 2114;
                v123 = v60;
                _os_log_error_impl(&dword_228986000, v37, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@ Failed to get transaction records for %{public}@, %{public}@", buf, 0x20u);
              }

              v82(v20, 0, v60);
            }
          }

          v14 = [obj countByEnumeratingWithState:&v86 objects:v116 count:16];
        }

        while (v14);
      }

      [v58 finishTask];
    }

    else
    {
      v62(v49, 0, v103[5]);
    }

    _Block_object_dispose(&v96, 8);
    _Block_object_dispose(&v102, 8);
  }

  if ((v68[3] & 1) == 0)
  {
    _HKInitializeLogging();
    v41 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      *v116 = 138543362;
      selfCopy2 = selfCopy;
      _os_log_fault_impl(&dword_228986000, v41, OS_LOG_TYPE_FAULT, "[summary-sharing] %{public}@ Completion block expected to be called synchronously was called asynchronously.", v116, 0xCu);
    }
  }

  v42 = v76[5];
  v43 = v42;
  if (v42)
  {
    if (error)
    {
      v44 = v42;
      *error = v43;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v45 = *(v72 + 24);
  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v75, 8);

  return v45 & 1;
}

void __82__HDInsertSharedSummaryTransactionOperation_performWithProfile_transaction_error___block_invoke(void *a1, char a2, id obj)
{
  *(*(a1[4] + 8) + 24) = a2;
  objc_storeStrong((*(a1[5] + 8) + 40), obj);
  v5 = obj;
  *(*(a1[6] + 8) + 24) = 1;
}

void __87__HDInsertSharedSummaryTransactionOperation_performWithProfile_transaction_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __87__HDInsertSharedSummaryTransactionOperation_performWithProfile_transaction_completion___block_invoke_294(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = v6;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = [v6 firstObject];
    if ([v7 count] >= 2)
    {
      v9 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277CCA578];
      v13[0] = v7;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      v11 = [v9 hk_error:100 userInfo:v10];

      v8 = v11;
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __87__HDInsertSharedSummaryTransactionOperation_performWithProfile_transaction_completion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) finishTask];
  }

  else
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      v8 = 138543618;
      v9 = v7;
      v10 = 2114;
      v11 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@ Failed to save shared summary transaction, %{public}@", &v8, 0x16u);
    }

    [*(a1 + 32) failTaskWithError:v5];
  }
}

void __105__HDInsertSharedSummaryTransactionOperation__saveRecordsAndFinishWithProfile_repository_zone_completion___block_invoke_305(uint64_t a1, void *a2, uint64_t a3)
{
  v113[5] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v7 = [v5 hk_mapToSet:&__block_literal_global_308_3];
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    if (!v6)
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v65 = *(a1 + 32);
        v66 = *(a1 + 40);
        *buf = 138543618;
        *&buf[4] = v65;
        *&buf[12] = 2114;
        *&buf[14] = v66;
        _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error fetching committed transactions %{public}@.", buf, 0x16u);
      }
    }

    v10 = objc_alloc_init(MEMORY[0x277D10BB0]);
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = __105__HDInsertSharedSummaryTransactionOperation__saveRecordsAndFinishWithProfile_repository_zone_completion___block_invoke_310;
    v92[3] = &unk_27862C118;
    v67 = v6;
    v93 = v6;
    v78 = v8;
    v94 = v78;
    v97 = *(a1 + 72);
    v11 = *(a1 + 48);
    v12 = *(a1 + 32);
    v95 = v11;
    v96 = v12;
    [v10 setDidFinish:v92];
    v70 = v10;
    [v10 beginTask];
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    obj = *(a1 + 56);
    v82 = [obj countByEnumeratingWithState:&v88 objects:v100 count:16];
    if (v82)
    {
      v81 = *v89;
      v68 = v7;
      v69 = a1;
      do
      {
        for (i = 0; i != v82; ++i)
        {
          if (*v89 != v81)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v88 + 1) + 8 * i);
          v15 = [v14 record];
          v16 = [v15 recordID];
          v17 = [v16 zoneID];
          v86 = 0;
          v87 = 0;
          v18 = [v17 hd_isSharedSummaryZoneIDForUserIdentifier:&v87 syncCircleIdentifier:&v86];
          v19 = v87;
          v20 = v86;

          if (v18)
          {
            v21 = [v14 UUID];
            [v78 addObject:v21];

            v22 = *(a1 + 64);
            v85[0] = MEMORY[0x277D85DD0];
            v85[1] = 3221225472;
            v85[2] = __105__HDInsertSharedSummaryTransactionOperation__saveRecordsAndFinishWithProfile_repository_zone_completion___block_invoke_313;
            v85[3] = &unk_27862C140;
            v85[4] = v14;
            v23 = [v22 hk_filter:v85];
            v24 = [v23 count];
            v25 = [v14 summaryIdentifiers];
            v26 = [v25 count];

            if (v24 == v26)
            {
              if (v7 && ([v14 UUID], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v7, "containsObject:", v27), v27, v28))
              {
                _HKInitializeLogging();
                v29 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                {
                  v30 = *(a1 + 32);
                  v31 = v29;
                  v32 = [v14 UUID];
                  *buf = 138543618;
                  *&buf[4] = v30;
                  *&buf[12] = 2114;
                  *&buf[14] = v32;
                  _os_log_impl(&dword_228986000, v31, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Transaction with UUID is already committed %{public}@. Skipping...", buf, 0x16u);
                }
              }

              else
              {
                v37 = a1;
                v38 = v7;
                [v70 beginTask];
                v39 = *(v37 + 32);
                v40 = *(v37 + 48);
                v83[0] = MEMORY[0x277D85DD0];
                v83[1] = 3221225472;
                v83[2] = __105__HDInsertSharedSummaryTransactionOperation__saveRecordsAndFinishWithProfile_repository_zone_completion___block_invoke_315;
                v83[3] = &unk_278613630;
                v83[4] = v39;
                v83[5] = v14;
                v84 = v70;
                v41 = v40;
                v42 = v14;
                v77 = v23;
                v79 = v23;
                v43 = v83;
                v44 = v43;
                if (v39)
                {
                  v45 = v39;
                  v76 = v43;
                  v74 = v41;
                  v46 = [v42 metadata];

                  if (v46)
                  {
                    v47 = MEMORY[0x277CBEB98];
                    v113[0] = objc_opt_class();
                    v113[1] = objc_opt_class();
                    v113[2] = objc_opt_class();
                    v113[3] = objc_opt_class();
                    v113[4] = objc_opt_class();
                    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:5];
                    v49 = [v47 setWithArray:v48];

                    v50 = MEMORY[0x277CCAAC8];
                    v51 = [v42 metadata];
                    v99 = 0;
                    v52 = [v50 unarchivedObjectOfClasses:v49 fromData:v51 error:&v99];
                    v53 = v99;

                    v73 = v52;
                    if (!v52)
                    {
                      _HKInitializeLogging();
                      v54 = *MEMORY[0x277CCC328];
                      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                      {
                        *v107 = 138543618;
                        v108 = v45;
                        v109 = 2114;
                        v110 = v53;
                        _os_log_error_impl(&dword_228986000, v54, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error unarchiving metadata %{public}@", v107, 0x16u);
                      }
                    }
                  }

                  else
                  {
                    v73 = 0;
                    v53 = 0;
                  }

                  v72 = v53;
                  v75 = v19;
                  v98[0] = MEMORY[0x277D85DD0];
                  v98[1] = 3221225472;
                  v98[2] = __119__HDInsertSharedSummaryTransactionOperation__persistRecordsWithRepository_transactionRecord_summaryRecords_completion___block_invoke;
                  v98[3] = &unk_27862C190;
                  v98[4] = v45;
                  v71 = [v79 hk_map:v98];
                  _HKInitializeLogging();
                  v55 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                  {
                    v56 = v55;
                    v57 = [v42 UUID];
                    v58 = [v57 UUIDString];
                    v59 = [v42 sourceDeviceIdentifier];
                    *v107 = 138543874;
                    v108 = v45;
                    v109 = 2114;
                    v110 = v58;
                    v111 = 2114;
                    v112 = v59;
                    _os_log_impl(&dword_228986000, v56, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Saving transaction with UUID %{public}@ and source device identifier %{public}@.", v107, 0x20u);
                  }

                  v41 = v74;
                  v60 = [v74 cloudSyncShimProvider];
                  v61 = [v60 sharedSummariesShim];
                  v62 = [v42 UUID];
                  v63 = [v42 sourceDeviceIdentifier];
                  *buf = MEMORY[0x277D85DD0];
                  *&buf[8] = 3221225472;
                  *&buf[16] = __119__HDInsertSharedSummaryTransactionOperation__persistRecordsWithRepository_transactionRecord_summaryRecords_completion___block_invoke_324;
                  v102 = &unk_278619540;
                  v44 = v76;
                  v106 = v76;
                  v103 = v45;
                  v64 = v74;
                  v104 = v64;
                  v105 = v42;
                  [v61 prepareAndCommitRepository:v64 transactionWithUUID:v62 sourceDeviceIdentifier:v63 metadata:v73 sharedSummaries:v71 completion:buf];

                  v38 = v68;
                  v19 = v75;
                }

                v23 = v77;
                v7 = v38;
                a1 = v69;
              }
            }

            else
            {
              _HKInitializeLogging();
              v35 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
              {
                v36 = *(a1 + 32);
                *buf = 138543618;
                *&buf[4] = v36;
                *&buf[12] = 2114;
                *&buf[14] = v14;
                _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Not all summary records were found for transaction %{public}@. Skipping...", buf, 0x16u);
              }
            }
          }

          else
          {
            _HKInitializeLogging();
            v33 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              v34 = *(a1 + 32);
              *buf = 138543618;
              *&buf[4] = v34;
              *&buf[12] = 2114;
              *&buf[14] = v14;
              _os_log_error_impl(&dword_228986000, v33, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error: Zone is not a shared summary zone for transaction %{public}@", buf, 0x16u);
            }
          }
        }

        v82 = [obj countByEnumeratingWithState:&v88 objects:v100 count:16];
      }

      while (v82);
    }

    [v70 finishTask];
    v6 = v67;
  }
}

void __105__HDInsertSharedSummaryTransactionOperation__saveRecordsAndFinishWithProfile_repository_zone_completion___block_invoke_310(uint64_t a1)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __105__HDInsertSharedSummaryTransactionOperation__saveRecordsAndFinishWithProfile_repository_zone_completion___block_invoke_2_311;
  v10[3] = &unk_27862C0F0;
  v2 = *(a1 + 32);
  v11 = *(a1 + 40);
  v3 = [v2 hk_filter:v10];
  if (v3)
  {
    v4 = [*(a1 + 48) cloudSyncShimProvider];
    v5 = [v4 sharedSummariesShim];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __105__HDInsertSharedSummaryTransactionOperation__saveRecordsAndFinishWithProfile_repository_zone_completion___block_invoke_3;
    v6[3] = &unk_278619590;
    v6[4] = *(a1 + 56);
    v7 = v3;
    v8 = 0;
    v9 = *(a1 + 64);
    [v5 deleteTransactions:v7 completion:v6];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

uint64_t __105__HDInsertSharedSummaryTransactionOperation__saveRecordsAndFinishWithProfile_repository_zone_completion___block_invoke_2_311(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 UUID];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

void __105__HDInsertSharedSummaryTransactionOperation__saveRecordsAndFinishWithProfile_repository_zone_completion___block_invoke_3(void *a1, char a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v7 = a1[5];
      v9 = v6;
      v10 = [v7 count];
      v11 = a1[6];
      v12 = 138543874;
      v13 = v8;
      v14 = 2048;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to prune %ld non-present transactions after insertion from cloud: %{public}@", &v12, 0x20u);
    }
  }

  (*(a1[7] + 16))();
}

uint64_t __105__HDInsertSharedSummaryTransactionOperation__saveRecordsAndFinishWithProfile_repository_zone_completion___block_invoke_313(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 summaryIdentifiers];
  v5 = [v3 UUID];

  v6 = [v4 containsObject:v5];
  return v6;
}

void __105__HDInsertSharedSummaryTransactionOperation__saveRecordsAndFinishWithProfile_repository_zone_completion___block_invoke_315(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = 138543874;
      v10 = v7;
      v11 = 2114;
      v12 = v5;
      v13 = 2114;
      v14 = v8;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error saving transaction %{public}@, %{public}@", &v9, 0x20u);
    }
  }

  [*(a1 + 48) finishTask];
}

id __119__HDInsertSharedSummaryTransactionOperation__persistRecordsWithRepository_transactionRecord_summaryRecords_completion___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = MEMORY[0x277CCD928];
    v3 = a2;
    v17 = [v2 alloc];
    v16 = [v3 UUID];
    v4 = [v3 package];
    v5 = [v3 name];
    v6 = [v3 version];
    v7 = [v3 compatibilityVersion];
    v8 = MEMORY[0x277CBEB98];
    v9 = [v3 authorizationIdentifiers];
    v10 = [v8 setWithArray:v9];
    v11 = MEMORY[0x277CBEB98];
    v12 = [v3 objectTypes];
    v13 = [v11 setWithArray:v12];
    v14 = [v3 summaryData];

    v18 = [v17 _initWithUUID:v16 package:v4 name:v5 version:v6 compatibilityVersion:v7 authorizationIdentifiers:v10 objectTypes:v13 summaryData:v14];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t __119__HDInsertSharedSummaryTransactionOperation__persistRecordsWithRepository_transactionRecord_summaryRecords_completion___block_invoke_324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 56) + 16);
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v7 = *(a1 + 40);
    v8 = v6;
    if (v5 && [v7 profileType] == 2)
    {
      v9 = [v7 profile];
      v10 = [v9 legacyRepositoryProfile];

      v11 = HDCloudSyncLastPulledUpdateDate(v10);
      v12 = [v8 record];
      v13 = [v12 modificationDate];

      if (!v11 || [v13 hk_isAfterDate:v11])
      {
        HDCloudSyncDidPullUpdateWithDate(v13, v10);
        v14 = [v10 cloudSyncManager];
        [v14 didCompleteSuccessfulPullOfUpdateWithDate:v13];
      }
    }

    v4 = *(*(a1 + 56) + 16);
  }

  return v4();
}

- (HDInsertSharedSummaryTransactionOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SharedSummaryTransactionOperationZoneIdentifierKey"];

  v6 = [(HDInsertSharedSummaryTransactionOperation *)self initWithZoneIdentifier:v5];
  return v6;
}

@end