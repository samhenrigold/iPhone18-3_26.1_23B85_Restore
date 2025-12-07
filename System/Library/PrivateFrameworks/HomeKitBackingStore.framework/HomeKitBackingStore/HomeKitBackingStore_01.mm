BOOL __reloadSQLQueryMetadata(void *a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [v3 connection];
  v27 = 0;
  v5 = selectSQLite3(v4, "SELECT master.tbl_name, master.name, index_info.seqno, index_info.name FROM sqlite_master AS master, PRAGMA_INDEX_INFO(master.name) AS index_info WHERE master.type = 'index' AND master.tbl_name like 'queryable_%' ORDER BY master.tbl_name, master.name, index_info.seqno", MEMORY[0x277CBEC10], &v27);
  v6 = v27;
  v7 = [v3 connection];
  v26 = v6;
  v8 = selectSQLite3(v7, "SELECT master.name, table_info.name, table_info.type, master.sql FROM sqlite_master AS master, PRAGMA_TABLE_XINFO(master.name) AS table_info WHERE master.name LIKE 'queryable%' ORDER BY master.name, table_info.name", MEMORY[0x277CBEC10], &v26);
  v9 = v26;

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v3;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v9;
      _os_log_impl(&dword_22AD27000, v12, OS_LOG_TYPE_ERROR, "%{public}@Significant failure during preparation of queries: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    if (a2)
    {
      v14 = v9;
      *a2 = v9;
    }
  }

  else
  {
    v15 = v8;
    v16 = [MEMORY[0x277CBEB38] dictionary];
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__6493;
    v34 = __Block_byref_object_dispose__6494;
    v35 = 0;
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3032000000;
    v28[3] = __Block_byref_object_copy__6493;
    v28[4] = __Block_byref_object_dispose__6494;
    v29 = 0;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ____parseExistingTables_block_invoke;
    v37 = &unk_2786E1F40;
    v39 = &v30;
    v40 = v28;
    v17 = v16;
    v38 = v17;
    [v15 hmf_enumerateWithAutoreleasePoolUsingBlock:buf];
    v18 = [v17 na_dictionaryByMappingValues:&__block_literal_global_6495];

    _Block_object_dispose(v28, 8);
    _Block_object_dispose(&v30, 8);

    [v3 setQueryTables:v18];
    v19 = [v3 queryTables];
    v20 = MEMORY[0x277CBEB38];
    v21 = v5;
    v22 = [v20 dictionary];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ____parseExistingIndexes_block_invoke;
    v37 = &unk_2786E1F88;
    v38 = v22;
    v23 = v22;
    [v21 hmf_enumerateWithAutoreleasePoolUsingBlock:buf];

    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = ____parseExistingIndexes_block_invoke_2;
    v33 = &unk_2786E1FD8;
    v34 = v19;
    v24 = v19;
    [v23 enumerateKeysAndObjectsUsingBlock:&v30];
  }

  return v9 == 0;
}

void sub_22AD8F8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_22AD8FBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6493(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ____parseExistingTables_block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectAtIndex:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v3 objectAtIndex:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v3 objectAtIndex:2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [v3 objectAtIndex:3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (!v6)
  {
    _HMFPreconditionFailure();
    goto LABEL_30;
  }

  if (!v9)
  {
LABEL_30:
    _HMFPreconditionFailure();
LABEL_31:
    _HMFPreconditionFailure();
  }

  if (!v12)
  {
    goto LABEL_31;
  }

  if (([*(*(*(a1 + 40) + 8) + 40) isEqual:v6] & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
    v16 = [MEMORY[0x277CBEB58] set];
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    [*(a1 + 32) setObject:*(*(*(a1 + 48) + 8) + 40) forKey:*(*(*(a1 + 40) + 8) + 40)];
  }

  if (([v9 hasPrefix:@"_"] & 1) == 0)
  {
    if ([v12 isEqualToString:@"BLOB"] && objc_msgSend(v15, "containsString:", @"CONSTRAINT fk_queryable_") && (objc_msgSend(v15, "containsString:", @"FOREIGN KEY (_record_id) REFERENCES record_v2 (id) ON DELETE CASCADE") & 1) != 0)
    {
      [*(*(*(a1 + 48) + 8) + 40) addObject:v9];
    }

    else
    {
      if (*(*(*(a1 + 48) + 8) + 40))
      {
        v19 = objc_autoreleasePoolPush();
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v28 = HMFGetLogIdentifier();
          v29 = v19;
          v21 = *(*(*(a1 + 40) + 8) + 40);
          [v15 containsString:@"CONSTRAINT fk_queryable_"];
          v22 = HMFBooleanToString();
          [v15 containsString:@"FOREIGN KEY (_record_id) REFERENCES record_v2 (id) ON DELETE CASCADE"];
          HMFBooleanToString();
          *buf = 138544386;
          v31 = v28;
          v32 = 2112;
          v33 = v21;
          v19 = v29;
          v34 = 2112;
          v35 = v12;
          v36 = 2112;
          v37 = v22;
          v39 = v38 = 2112;
          v23 = v39;
          _os_log_impl(&dword_22AD27000, v20, OS_LOG_TYPE_INFO, "%{public}@discarding existing index table %@ (%@ / %@ / %@)", buf, 0x34u);
        }

        objc_autoreleasePoolPop(v19);
      }

      v24 = *(a1 + 32);
      v25 = [MEMORY[0x277CBEB98] set];
      [v24 setObject:v25 forKey:*(*(*(a1 + 40) + 8) + 40)];

      v26 = *(*(a1 + 48) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = 0;
    }
  }
}

void ____parseExistingIndexes_block_invoke(uint64_t a1, void *a2)
{
  v20 = a2;
  v3 = [v20 objectAtIndex:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v20 objectAtIndex:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v20 objectAtIndex:2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v20 objectAtIndex:3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (!v5)
  {
    _HMFPreconditionFailure();
    goto LABEL_27;
  }

  if (!v8)
  {
LABEL_27:
    _HMFPreconditionFailure();
    goto LABEL_28;
  }

  if (!v11)
  {
LABEL_28:
    _HMFPreconditionFailure();
    goto LABEL_29;
  }

  if (!v14)
  {
LABEL_29:
    v17 = _HMFPreconditionFailure();
    ____parseExistingIndexes_block_invoke_2(v17, v18, v19);
    return;
  }

  v15 = [*(a1 + 32) objectForKey:v5];
  if (!v15)
  {
    v15 = [MEMORY[0x277CBEB38] dictionary];
    [*(a1 + 32) setObject:v15 forKey:v5];
  }

  v16 = [v15 objectForKey:v8];
  if (!v16)
  {
    v16 = [MEMORY[0x277CBEB18] array];
    [v15 setObject:v16 forKey:v8];
  }

  if (([v14 hasPrefix:@"_"] & 1) == 0)
  {
    [v16 addObject:v14];
  }
}

void ____parseExistingIndexes_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:a2];
  v7 = v6;
  if (v6)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ____parseExistingIndexes_block_invoke_3;
    v8[3] = &unk_2786E1FB0;
    v9 = v6;
    [v5 enumerateKeysAndObjectsUsingBlock:v8];
  }
}

void ____parseExistingIndexes_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = [[HMBLocalSQLContextQueryIndex alloc] initWithColumns:v5];

  v7 = [*(a1 + 32) mutableIndexes];
  [v7 setObject:v8 forKey:v6];
}

HMBLocalSQLContextQueryTable *____parseExistingTables_block_invoke_83(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [[HMBLocalSQLContextQueryTable alloc] initWithColumnNames:v3];

  return v4;
}

void __fetchUserRecord(void *a1, void *a2, void *a3, void *a4)
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v11 = objc_alloc(MEMORY[0x277D0F770]);
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"__fetchUserRecord"];
    v9 = [v11 initWithName:v12 options:1];
  }

  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy__6576;
  v40[4] = __Block_byref_object_dispose__6577;
  v41 = 0;
  v13 = [MEMORY[0x277CBC3E0] fetchCurrentUserRecordOperation];
  v14 = [v7 operationConfigurationWithProcessingOptions:0];
  [v13 setConfiguration:v14];

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = ____fetchUserRecord_block_invoke;
  v36[3] = &unk_2786E20F0;
  v15 = v7;
  v37 = v15;
  v16 = v9;
  v38 = v16;
  v39 = v40;
  [v13 setPerRecordCompletionBlock:v36];
  objc_initWeak(&location, v13);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = ____fetchUserRecord_block_invoke_34;
  v28[3] = &unk_2786E2118;
  v17 = v15;
  v29 = v17;
  v27 = v16;
  v30 = v27;
  objc_copyWeak(&v34, &location);
  v18 = v8;
  v31 = v18;
  v19 = v10;
  v32 = v19;
  v33 = v40;
  [v13 setFetchRecordsCompletionBlock:v28];
  v20 = objc_autoreleasePoolPush();
  v21 = v17;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v24 = [v27 identifier];
    v25 = [v24 shortDescription];
    v26 = [v13 operationID];
    *buf = 138543874;
    v43 = v23;
    v44 = 2114;
    v45 = v25;
    v46 = 2114;
    v47 = v26;
    _os_log_impl(&dword_22AD27000, v22, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Starting CKFetchRecordsOperation for current user record with operationID: %{public}@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v20);
  [v18 addOperation:v13];

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);

  _Block_object_dispose(v40, 8);
}

void sub_22AD90C50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  objc_destroyWeak(&a20);
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6576(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ____fetchUserRecord_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 32);
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (v8)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      [*(a1 + 40) identifier];
      v16 = v21 = v9;
      v17 = [v16 shortDescription];
      *buf = 138543874;
      v23 = v15;
      v24 = 2114;
      v25 = v17;
      v26 = 2112;
      v27 = v8;
      _os_log_impl(&dword_22AD27000, v14, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Fetched user record: %@", buf, 0x20u);

      v9 = v21;
    }

    objc_autoreleasePoolPop(v11);
    [*(a1 + 40) markWithFormat:@"finished"];
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [*(a1 + 40) identifier];
      v20 = [v19 shortDescription];
      *buf = 138543874;
      v23 = v18;
      v24 = 2114;
      v25 = v20;
      v26 = 2112;
      v27 = v10;
      _os_log_impl(&dword_22AD27000, v14, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch user record: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    [*(a1 + 40) markWithFormat:@"failed with error: %@", v10];
  }
}

void ____fetchUserRecord_block_invoke_34(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) identifier];
      v12 = [v11 shortDescription];
      *buf = 138543874;
      v49 = v10;
      v50 = 2114;
      v51 = v12;
      v52 = 2114;
      v53 = v6;
      _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] CKFetchRecordsOperation failed: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    if (!WeakRetained)
    {
      _HMFPreconditionFailure();
    }

    v14 = WeakRetained;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = ____fetchUserRecord_block_invoke_35;
    v45[3] = &unk_2786E2050;
    v15 = *(a1 + 32);
    v16 = *(a1 + 48);
    v17 = *(a1 + 40);
    v18 = *(a1 + 56);
    *&v19 = v17;
    *(&v19 + 1) = v18;
    *&v20 = v15;
    *(&v20 + 1) = v16;
    v46 = v20;
    v47 = v19;
    v21 = [v15 retryCloudKitOperation:v14 afterError:v6 retryBlock:v45];
    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 32);
    v24 = HMFGetOSLogHandle();
    v25 = v24;
    if (v21)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        v27 = [*(a1 + 40) identifier];
        v28 = [v27 shortDescription];
        *buf = 138543618;
        v49 = v26;
        v50 = 2114;
        v51 = v28;
        _os_log_impl(&dword_22AD27000, v25, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] CKFetchRecordsOperation will be retried", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      [*(a1 + 40) markWithReason:@"deferred"];
    }

    else
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        v39 = [*(a1 + 40) identifier];
        v40 = [v39 shortDescription];
        *buf = 138543874;
        v49 = v38;
        v50 = 2114;
        v51 = v40;
        v52 = 2114;
        v53 = v6;
        _os_log_impl(&dword_22AD27000, v25, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] CKFetchRecordsOperation failed and cannot be retried: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v22);
      [*(a1 + 40) markWithFormat:@"failed with error: %@", v6];
      [*(a1 + 56) finishWithError:v6];
    }

LABEL_17:
    goto LABEL_18;
  }

  v29 = *(*(*(a1 + 64) + 8) + 40);
  v30 = objc_autoreleasePoolPush();
  v31 = *(a1 + 32);
  v32 = HMFGetOSLogHandle();
  v33 = v32;
  if (!v29)
  {
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      v42 = [*(a1 + 40) identifier];
      v43 = [v42 shortDescription];
      *buf = 138543618;
      v49 = v41;
      v50 = 2114;
      v51 = v43;
      _os_log_impl(&dword_22AD27000, v33, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] CKFetchRecordsOperation did not retrieve user record, but no error was returned", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v44 = *(a1 + 56);
    v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    [v44 finishWithError:v14];
    goto LABEL_17;
  }

  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v34 = HMFGetLogIdentifier();
    v35 = [*(a1 + 40) identifier];
    v36 = [v35 shortDescription];
    v37 = *(*(*(a1 + 64) + 8) + 40);
    *buf = 138543874;
    v49 = v34;
    v50 = 2114;
    v51 = v36;
    v52 = 2112;
    v53 = v37;
    _os_log_impl(&dword_22AD27000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] CKFetchRecordsOperation succeeded with record: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v30);
  [*(a1 + 56) finishWithResult:*(*(*(a1 + 64) + 8) + 40)];
LABEL_18:
}

void __acceptInvitation(void *a1, void *a2, void *a3, void *a4)
{
  v52[1] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v11 = objc_alloc(MEMORY[0x277D0F770]);
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"__acceptInvitation"];
    v9 = [v11 initWithName:v12 options:1];
  }

  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy__6576;
  v42[4] = __Block_byref_object_dispose__6577;
  v43 = 0;
  v13 = objc_alloc_init(MEMORY[0x277CBC158]);
  v14 = [v7 operationConfigurationWithProcessingOptions:0];
  [v13 setConfiguration:v14];

  v52[0] = v8;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
  [v13 setShareMetadatas:v15];

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = ____acceptInvitation_block_invoke;
  v38[3] = &unk_2786E20C8;
  v16 = v7;
  v39 = v16;
  v17 = v9;
  v40 = v17;
  v41 = v42;
  [v13 setPerShareCompletionBlock:v38];
  objc_initWeak(&location, v13);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = ____acceptInvitation_block_invoke_30;
  v30[3] = &unk_2786E2078;
  v18 = v16;
  v31 = v18;
  v19 = v17;
  v32 = v19;
  objc_copyWeak(&v36, &location);
  v20 = v8;
  v33 = v20;
  v29 = v10;
  v34 = v29;
  v35 = v42;
  [v13 setAcceptSharesCompletionBlock:v30];
  v21 = objc_autoreleasePoolPush();
  v22 = v18;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    v25 = [v19 identifier];
    v26 = [v25 shortDescription];
    v27 = [v13 operationID];
    *buf = 138544130;
    v45 = v24;
    v46 = 2114;
    v47 = v26;
    v48 = 2112;
    v49 = v20;
    v50 = 2114;
    v51 = v27;
    _os_log_impl(&dword_22AD27000, v23, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Starting CKAcceptSharesOperation with share metadata: %@ operationID: %{public}@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v21);
  v28 = [v22 container];
  [v28 addOperation:v13];

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);

  _Block_object_dispose(v42, 8);
}

void sub_22AD91960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  objc_destroyWeak(&a20);
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ____acceptInvitation_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v8)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [*(a1 + 40) identifier];
      [v15 shortDescription];
      v21 = v10;
      v17 = v16 = v9;
      *buf = 138544130;
      v23 = v14;
      v24 = 2114;
      v25 = v17;
      v26 = 2112;
      v27 = v7;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Successfully accepted share for share metadata %@: %@", buf, 0x2Au);

      v9 = v16;
      v10 = v21;
    }

    objc_autoreleasePoolPop(v10);
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [*(a1 + 40) identifier];
      v20 = [v19 shortDescription];
      *buf = 138544130;
      v23 = v18;
      v24 = 2114;
      v25 = v20;
      v26 = 2112;
      v27 = v7;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to accept share metadata %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
  }
}

void ____acceptInvitation_block_invoke_30(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 40) identifier];
      v10 = [v9 shortDescription];
      *buf = 138543874;
      v38 = v8;
      v39 = 2114;
      v40 = v10;
      v41 = 2114;
      v42 = v3;
      _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] CKAcceptSharesOperation failed: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    if (!WeakRetained)
    {
      _HMFPreconditionFailure();
    }

    v12 = WeakRetained;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = ____acceptInvitation_block_invoke_31;
    v34[3] = &unk_2786E2050;
    v13 = *(a1 + 32);
    v14 = *(a1 + 48);
    v15 = *(a1 + 40);
    v16 = *(a1 + 56);
    *&v17 = v15;
    *(&v17 + 1) = v16;
    *&v18 = v13;
    *(&v18 + 1) = v14;
    v35 = v18;
    v36 = v17;
    v19 = [v13 retryCloudKitOperation:v12 afterError:v3 retryBlock:v34];
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    v23 = v22;
    if (v19)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [*(a1 + 40) identifier];
        v26 = [v25 shortDescription];
        *buf = 138543618;
        v38 = v24;
        v39 = 2114;
        v40 = v26;
        _os_log_impl(&dword_22AD27000, v23, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] CKAcceptSharesOperation will be retried", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      [*(a1 + 40) markWithReason:@"deferred"];
    }

    else
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v32 = [*(a1 + 40) identifier];
        v33 = [v32 shortDescription];
        *buf = 138543874;
        v38 = v31;
        v39 = 2114;
        v40 = v33;
        v41 = 2114;
        v42 = v3;
        _os_log_impl(&dword_22AD27000, v23, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] CKAcceptSharesOperation failed and cannot be retried: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v20);
      [*(a1 + 40) markWithFormat:@"failed with error: %@", v3];
      [*(a1 + 56) finishWithError:v3];
    }
  }

  else
  {
    if (v7)
    {
      v27 = HMFGetLogIdentifier();
      v28 = [*(a1 + 40) identifier];
      v29 = [v28 shortDescription];
      v30 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138543874;
      v38 = v27;
      v39 = 2114;
      v40 = v29;
      v41 = 2112;
      v42 = v30;
      _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] CKAcceptSharesOperation succeeded with share: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) markWithFormat:@"finished"];
    [*(a1 + 56) finishWithResult:*(*(*(a1 + 64) + 8) + 40)];
  }
}

void __fetchShareMetadata(void *a1, void *a2, void *a3, void *a4)
{
  v58[1] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v11 = objc_alloc(MEMORY[0x277D0F770]);
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"__fetchShareMetadata"];
    v9 = [v11 initWithName:v12 options:1];
  }

  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x3032000000;
  v46[3] = __Block_byref_object_copy__6576;
  v46[4] = __Block_byref_object_dispose__6577;
  v47 = 0;
  v13 = objc_alloc_init(MEMORY[0x277CBC3F8]);
  v14 = [v7 operationConfigurationWithProcessingOptions:0];
  [v13 setConfiguration:v14];

  v15 = [v8 shareURL];
  v58[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:1];
  [v13 setShareURLs:v16];

  v17 = [v8 shareURL];
  v56 = v17;
  v18 = [v8 token];
  v57 = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
  [v13 setShareInvitationTokensByShareURL:v19];

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = ____fetchShareMetadata_block_invoke;
  v42[3] = &unk_2786E20A0;
  v20 = v7;
  v43 = v20;
  v21 = v9;
  v44 = v21;
  v45 = v46;
  [v13 setPerShareMetadataBlock:v42];
  objc_initWeak(&location, v13);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = ____fetchShareMetadata_block_invoke_26;
  v34[3] = &unk_2786E2078;
  v22 = v20;
  v35 = v22;
  v23 = v21;
  v36 = v23;
  objc_copyWeak(&v40, &location);
  v24 = v8;
  v37 = v24;
  v33 = v10;
  v38 = v33;
  v39 = v46;
  [v13 setFetchShareMetadataCompletionBlock:v34];
  v25 = objc_autoreleasePoolPush();
  v26 = v22;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = HMFGetLogIdentifier();
    v29 = [v23 identifier];
    v30 = [v29 shortDescription];
    v31 = [v13 operationID];
    *buf = 138544130;
    v49 = v28;
    v50 = 2114;
    v51 = v30;
    v52 = 2112;
    v53 = v24;
    v54 = 2114;
    v55 = v31;
    _os_log_impl(&dword_22AD27000, v27, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Starting CKFetchShareMetadataOperation for invitation: %@ operationID: %{public}@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v25);
  v32 = [v26 container];
  [v32 addOperation:v13];

  objc_destroyWeak(&v40);
  objc_destroyWeak(&location);

  _Block_object_dispose(v46, 8);
}

void sub_22AD925C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  objc_destroyWeak(&a20);
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ____fetchShareMetadata_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v8)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [*(a1 + 40) identifier];
      [v15 shortDescription];
      v21 = v10;
      v17 = v16 = v9;
      *buf = 138544130;
      v23 = v14;
      v24 = 2114;
      v25 = v17;
      v26 = 2112;
      v27 = v7;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Fetched share metadata for url %@: %@", buf, 0x2Au);

      v9 = v16;
      v10 = v21;
    }

    objc_autoreleasePoolPop(v10);
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [*(a1 + 40) identifier];
      v20 = [v19 shortDescription];
      *buf = 138544130;
      v23 = v18;
      v24 = 2114;
      v25 = v20;
      v26 = 2112;
      v27 = v7;
      v28 = 2114;
      v29 = v9;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch share metadata for url %@: %{public}@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
  }
}

void ____fetchShareMetadata_block_invoke_26(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 40) identifier];
      v10 = [v9 shortDescription];
      *buf = 138543874;
      v38 = v8;
      v39 = 2114;
      v40 = v10;
      v41 = 2114;
      v42 = v3;
      _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] CKFetchShareMetadataOperation failed: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    if (!WeakRetained)
    {
      _HMFPreconditionFailure();
    }

    v12 = WeakRetained;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = ____fetchShareMetadata_block_invoke_27;
    v34[3] = &unk_2786E2050;
    v13 = *(a1 + 32);
    v14 = *(a1 + 48);
    v15 = *(a1 + 40);
    v16 = *(a1 + 56);
    *&v17 = v15;
    *(&v17 + 1) = v16;
    *&v18 = v13;
    *(&v18 + 1) = v14;
    v35 = v18;
    v36 = v17;
    v19 = [v13 retryCloudKitOperation:v12 afterError:v3 retryBlock:v34];
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    v23 = v22;
    if (v19)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [*(a1 + 40) identifier];
        v26 = [v25 shortDescription];
        *buf = 138543618;
        v38 = v24;
        v39 = 2114;
        v40 = v26;
        _os_log_impl(&dword_22AD27000, v23, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] CKFetchShareMetadataOperation will be retried", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      [*(a1 + 40) markWithReason:@"deferred"];
    }

    else
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v32 = [*(a1 + 40) identifier];
        v33 = [v32 shortDescription];
        *buf = 138543874;
        v38 = v31;
        v39 = 2114;
        v40 = v33;
        v41 = 2114;
        v42 = v3;
        _os_log_impl(&dword_22AD27000, v23, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] CKFetchShareMetadataOperation failed and cannot be retried: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v20);
      [*(a1 + 40) markWithFormat:@"failed with error: %@", v3];
      [*(a1 + 56) finishWithError:v3];
    }
  }

  else
  {
    if (v7)
    {
      v27 = HMFGetLogIdentifier();
      v28 = [*(a1 + 40) identifier];
      v29 = [v28 shortDescription];
      v30 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138543874;
      v38 = v27;
      v39 = 2114;
      v40 = v29;
      v41 = 2112;
      v42 = v30;
      _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] CKFetchShareMetadataOperation succeeded with share metadata: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) markWithFormat:@"finished"];
    [*(a1 + 56) finishWithResult:*(*(*(a1 + 64) + 8) + 40)];
  }
}

void __fetchParticipant(void *a1, void *a2, void *a3, void *a4)
{
  v53[1] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v11 = objc_alloc(MEMORY[0x277D0F770]);
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"__fetchParticipant"];
    v9 = [v11 initWithName:v12 options:1];
  }

  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy__6576;
  v43[4] = __Block_byref_object_dispose__6577;
  v44 = 0;
  v13 = objc_alloc_init(MEMORY[0x277CBC410]);
  v14 = [v7 operationConfigurationWithProcessingOptions:0];
  [v13 setConfiguration:v14];

  v53[0] = v8;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
  [v13 setUserIdentityLookupInfos:v15];

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = ____fetchParticipant_block_invoke;
  v39[3] = &unk_2786E2028;
  v16 = v7;
  v40 = v16;
  v17 = v9;
  v41 = v17;
  v42 = v43;
  [v13 setShareParticipantFetchedBlock:v39];
  objc_initWeak(&location, v13);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = ____fetchParticipant_block_invoke_9;
  v31[3] = &unk_2786E2078;
  v18 = v16;
  v32 = v18;
  v30 = v17;
  v33 = v30;
  objc_copyWeak(&v37, &location);
  v19 = v8;
  v34 = v19;
  v29 = v10;
  v35 = v29;
  v36 = v43;
  [v13 setFetchShareParticipantsCompletionBlock:v31];
  v20 = objc_autoreleasePoolPush();
  v21 = v18;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v24 = [v30 identifier];
    v25 = [v24 shortDescription];
    v26 = [v19 redactedDescription];
    v27 = [v13 operationID];
    *buf = 138544130;
    v46 = v23;
    v47 = 2114;
    v48 = v25;
    v49 = 2112;
    v50 = v26;
    v51 = 2114;
    v52 = v27;
    _os_log_impl(&dword_22AD27000, v22, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Starting CKFetchShareParticipantsOperation for lookup info: %@ operationID: %{public}@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v20);
  v28 = [v21 container];
  [v28 addOperation:v13];

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);

  _Block_object_dispose(v43, 8);
}

void sub_22AD931CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  objc_destroyWeak(&a20);
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ____fetchParticipant_block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) identifier];
    v9 = [v8 shortDescription];
    v12 = 138543874;
    v13 = v7;
    v14 = 2114;
    v15 = v9;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Fetched share participant: %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v3;
}

void ____fetchParticipant_block_invoke_9(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 40) identifier];
      v10 = [v9 shortDescription];
      *buf = 138543874;
      v38 = v8;
      v39 = 2114;
      v40 = v10;
      v41 = 2114;
      v42 = v3;
      _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] CKFetchShareParticipantsOperation failed: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    if (!WeakRetained)
    {
      _HMFPreconditionFailure();
    }

    v12 = WeakRetained;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = ____fetchParticipant_block_invoke_11;
    v34[3] = &unk_2786E2050;
    v13 = *(a1 + 32);
    v14 = *(a1 + 48);
    v15 = *(a1 + 40);
    v16 = *(a1 + 56);
    *&v17 = v15;
    *(&v17 + 1) = v16;
    *&v18 = v13;
    *(&v18 + 1) = v14;
    v35 = v18;
    v36 = v17;
    v19 = [v13 retryCloudKitOperation:v12 afterError:v3 retryBlock:v34];
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    v23 = v22;
    if (v19)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [*(a1 + 40) identifier];
        v26 = [v25 shortDescription];
        *buf = 138543618;
        v38 = v24;
        v39 = 2114;
        v40 = v26;
        _os_log_impl(&dword_22AD27000, v23, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] CKFetchShareParticipantsOperation will be retried", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      [*(a1 + 40) markWithReason:@"deferred"];
    }

    else
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v32 = [*(a1 + 40) identifier];
        v33 = [v32 shortDescription];
        *buf = 138543874;
        v38 = v31;
        v39 = 2114;
        v40 = v33;
        v41 = 2114;
        v42 = v3;
        _os_log_impl(&dword_22AD27000, v23, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] CKFetchShareParticipantsOperation failed and cannot be retried: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v20);
      [*(a1 + 40) markWithFormat:@"failed with error: %@", v3];
      [*(a1 + 56) finishWithError:v3];
    }
  }

  else
  {
    if (v7)
    {
      v27 = HMFGetLogIdentifier();
      v28 = [*(a1 + 40) identifier];
      v29 = [v28 shortDescription];
      v30 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138543874;
      v38 = v27;
      v39 = 2114;
      v40 = v29;
      v41 = 2112;
      v42 = v30;
      _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] CKFetchShareParticipantsOperation succeeded with participants: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) markWithReason:@"finished"];
    [*(a1 + 56) finishWithResult:*(*(*(a1 + 64) + 8) + 40)];
  }
}

void sub_22AD94704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6785(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AD948F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AD94EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AD95128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AD95368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AD95678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AD95874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AD95A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __performCloudPull(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v89 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v50 = a5;
  os_unfair_lock_lock_with_options();
  v13 = [v10 database];
  v48 = [v10 hmbModelID];
  os_unfair_lock_unlock(v9 + 2);
  if (!v12)
  {
    v14 = objc_alloc(MEMORY[0x277D0F770]);
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"__performCloudPull"];
    v12 = [v14 initWithName:v15 options:1];
  }

  v46 = [MEMORY[0x277CBEB18] array];
  v44 = [MEMORY[0x277CBEB18] array];
  v16 = [MEMORY[0x277CBEB18] array];
  v17 = [MEMORY[0x277CBEB18] array];
  v18 = [MEMORY[0x277CBEB18] array];
  v19 = [objc_alloc(MEMORY[0x277CBC388]) initWithPreviousServerChangeToken:v11];
  v20 = [(os_unfair_lock_s *)v9 operationConfigurationWithProcessingOptions:0];
  [v19 setConfiguration:v20];

  [v19 setFetchAllChanges:1];
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = ____performCloudPull_block_invoke;
  v74[3] = &unk_2786E22B0;
  v21 = v9;
  v75 = v21;
  v22 = v12;
  v76 = v22;
  v23 = v13;
  v77 = v23;
  v24 = v16;
  v78 = v24;
  [v19 setRecordZoneWithIDChangedBlock:v74];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = ____performCloudPull_block_invoke_11;
  v68[3] = &unk_2786E22D8;
  v25 = v21;
  v69 = v25;
  v26 = v22;
  v70 = v26;
  v53 = v23;
  v71 = v53;
  v27 = v17;
  v72 = v27;
  v28 = v18;
  v73 = v28;
  [v19 setRecordZoneWithIDWasDeletedBlock:v68];
  objc_initWeak(&location, v19);
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = ____performCloudPull_block_invoke_12;
  v54[3] = &unk_2786E2328;
  v29 = v25;
  v55 = v29;
  v52 = v26;
  v56 = v52;
  v30 = v10;
  v57 = v30;
  v40 = v50;
  v58 = v40;
  objc_copyWeak(&v66, &location);
  v51 = v11;
  v59 = v51;
  v43 = v24;
  v60 = v43;
  v41 = v48;
  v61 = v41;
  v42 = v46;
  v62 = v42;
  v45 = v44;
  v63 = v45;
  v47 = v27;
  v64 = v47;
  v49 = v28;
  v65 = v49;
  [v19 setFetchDatabaseChangesCompletionBlock:v54];
  v31 = objc_autoreleasePoolPush();
  v32 = v29;
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = v30;
    v35 = HMFGetLogIdentifier();
    v36 = [v52 identifier];
    v37 = [v36 shortDescription];
    v38 = [v53 hmbDescription];
    v39 = [v19 operationID];
    *buf = 138544386;
    v80 = v35;
    v81 = 2114;
    v82 = v37;
    v83 = 2112;
    v84 = v38;
    v85 = 2112;
    v86 = v51;
    v87 = 2114;
    v88 = v39;
    _os_log_impl(&dword_22AD27000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Starting CKFetchDatabaseChangesOperation with database: %@ token: %@ operationID: %{public}@", buf, 0x34u);

    v30 = v34;
  }

  objc_autoreleasePoolPop(v31);
  [v53 addOperation:v19];

  objc_destroyWeak(&v66);
  objc_destroyWeak(&location);
}

void sub_22AD98DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location)
{
  objc_destroyWeak(&a34);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____performCloudPull_block_invoke(id *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [a1[5] identifier];
    v9 = [v8 shortDescription];
    v13 = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = v9;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Zone with ID changed: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v10 = [HMBCloudZoneID alloc];
  v11 = [a1[4] containerID];
  v12 = -[HMBCloudZoneID initWithContainerID:scope:zoneID:](v10, "initWithContainerID:scope:zoneID:", v11, [a1[6] scope], v3);

  [a1[7] addObject:v12];
}

void ____performCloudPull_block_invoke_11(id *a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [a1[5] identifier];
    v9 = [v8 shortDescription];
    v23 = 138543874;
    v24 = v7;
    v25 = 2114;
    v26 = v9;
    v27 = 2112;
    v28 = v3;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Zone with ID was deleted: %@", &v23, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v10 = [HMBCloudZoneID alloc];
  v11 = [a1[4] containerID];
  v12 = -[HMBCloudZoneID initWithContainerID:scope:zoneID:](v10, "initWithContainerID:scope:zoneID:", v11, [a1[6] scope], v3);

  [a1[7] addObject:v12];
  v13 = a1[4];
  os_unfair_lock_lock_with_options();
  v14 = [a1[4] zoneStateByZoneID];
  v15 = [v14 objectForKey:v12];
  v16 = [v15 hmbModelID];

  os_unfair_lock_unlock(v13 + 2);
  if (v16)
  {
    [a1[8] addObject:v16];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = a1[4];
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [a1[5] identifier];
      v22 = [v21 shortDescription];
      v23 = 138543874;
      v24 = v20;
      v25 = 2114;
      v26 = v22;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&dword_22AD27000, v19, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Got a zone deletion for a non-existent zone ID: %@", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
  }
}

void ____performCloudPull_block_invoke_12(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v109 = *MEMORY[0x277D85DE8];
  v83 = a2;
  v84 = a4;
  v6 = objc_autoreleasePoolPush();
  v86 = a1;
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [*(a1 + 40) identifier];
    v11 = [v10 shortDescription];
    v12 = HMFBooleanToString();
    *buf = 138544386;
    v100 = v9;
    v101 = 2114;
    v102 = v11;
    v103 = 2112;
    v104 = v83;
    v105 = 2112;
    v106 = v12;
    v107 = 2114;
    v108 = v84;
    _os_log_impl(&dword_22AD27000, v8, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetch database changes operation completed with token: %@ moreComing: %@ error: %{public}@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v6);
  if (v84)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(v86 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [*(v86 + 40) identifier];
      v18 = [v17 shortDescription];
      *buf = 138543874;
      v100 = v16;
      v101 = 2114;
      v102 = v18;
      v103 = 2114;
      v104 = v84;
      _os_log_impl(&dword_22AD27000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] CKFetchDatabaseChangesOperation failed: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    if ([v84 hmbIsCKChangeTokenExpiredError])
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(v86 + 32);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [*(v86 + 40) identifier];
        v24 = [v23 shortDescription];
        *buf = 138543618;
        v100 = v22;
        v101 = 2114;
        v102 = v24;
        _os_log_impl(&dword_22AD27000, v21, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Retrying CKFetchDatabaseChangesOperation with nil change token due to expired change token error", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      __performCloudPull(*(v86 + 32), *(v86 + 48), 0, *(v86 + 40), *(v86 + 56));
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((v86 + 120));
      if (!WeakRetained)
      {
        _HMFPreconditionFailure();
        __break(1u);
      }

      v69 = *(v86 + 32);
      v91[0] = MEMORY[0x277D85DD0];
      v91[1] = 3221225472;
      v91[2] = ____performCloudPull_block_invoke_14;
      v91[3] = &unk_2786E2300;
      v92 = v69;
      v93 = *(v86 + 48);
      v94 = *(v86 + 64);
      v95 = *(v86 + 40);
      v96 = *(v86 + 56);
      v70 = [v92 retryCloudKitOperation:WeakRetained afterError:v84 retryBlock:v91];
      v71 = objc_autoreleasePoolPush();
      v72 = *(v86 + 32);
      v73 = HMFGetOSLogHandle();
      v74 = v73;
      if (v70)
      {
        if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
        {
          v75 = HMFGetLogIdentifier();
          v76 = [*(v86 + 40) identifier];
          v77 = [v76 shortDescription];
          *buf = 138543618;
          v100 = v75;
          v101 = 2114;
          v102 = v77;
          _os_log_impl(&dword_22AD27000, v74, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] CKFetchDatabaseChangesOperation will be retried", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v71);
        [*(v86 + 40) markWithReason:@"deferred"];
      }

      else
      {
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          v78 = HMFGetLogIdentifier();
          v79 = [*(v86 + 40) identifier];
          v80 = [v79 shortDescription];
          *buf = 138543874;
          v100 = v78;
          v101 = 2114;
          v102 = v80;
          v103 = 2114;
          v104 = v84;
          _os_log_impl(&dword_22AD27000, v74, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] CKFetchDatabaseChangesOperation failed and cannot be retried: %{public}@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v71);
        [*(v86 + 40) markWithFormat:@"failed with error: %@", v84];
        [*(v86 + 56) finishWithError:v84];
      }
    }
  }

  else
  {
    v25 = v86;
    lock = (*(v86 + 32) + 8);
    os_unfair_lock_lock_with_options();
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v26 = [*(v86 + 72) copy];
    v27 = [v26 countByEnumeratingWithState:&v87 objects:v98 count:16];
    if (v27)
    {
      v85 = *v88;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v88 != v85)
          {
            objc_enumerationMutation(v26);
          }

          v29 = *(*(&v87 + 1) + 8 * i);
          v30 = [*(v25 + 32) zoneStateByZoneID];
          v31 = [v30 objectForKeyedSubscript:v29];
          v32 = v31 == 0;

          if (v32)
          {
            v33 = objc_autoreleasePoolPush();
            v34 = *(v86 + 32);
            v35 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              v36 = HMFGetLogIdentifier();
              v37 = [*(v86 + 40) identifier];
              v38 = [v37 shortDescription];
              *buf = 138543874;
              v100 = v36;
              v101 = 2114;
              v102 = v38;
              v103 = 2112;
              v104 = v29;
              _os_log_impl(&dword_22AD27000, v35, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Zone with ID was created: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v33);
            v39 = [HMBCloudZoneStateModel alloc];
            v40 = [v29 modelID];
            v41 = [(HMBCloudZoneStateModel *)v39 initWithModelID:v40 parentModelID:*(v86 + 80)];

            [(HMBCloudZoneStateModel *)v41 setZoneID:v29];
            [*(v86 + 88) addObject:v29];
            v42 = [*(v86 + 32) zoneStateByZoneID];
            [v42 setObject:v41 forKeyedSubscript:v29];

            [*(v86 + 96) addObject:v41];
            [*(v86 + 72) removeObject:v29];
          }

          v25 = v86;
        }

        v27 = [v26 countByEnumeratingWithState:&v87 objects:v98 count:16];
      }

      while (v27);
    }

    v43 = [*(v86 + 32) stateZone];
    v44 = [v43 update:*(v86 + 96)];

    if (v44)
    {
      v45 = objc_autoreleasePoolPush();
      v46 = *(v86 + 32);
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = HMFGetLogIdentifier();
        v49 = [*(v86 + 40) identifier];
        v50 = [v49 shortDescription];
        v51 = *(v86 + 96);
        *buf = 138544130;
        v100 = v48;
        v101 = 2114;
        v102 = v50;
        v103 = 2112;
        v104 = v51;
        v105 = 2114;
        v106 = v44;
        _os_log_impl(&dword_22AD27000, v47, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to add created zone models to local DB %@: %{public}@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v45);
    }

    os_unfair_lock_unlock(lock);
    [*(v86 + 32) handleRemovedZoneIDs:*(v86 + 104) userInitiated:0];
    [*(v86 + 32) handleUpdatedZonesIDs:*(v86 + 72)];
    [*(v86 + 32) handleCreatedZoneIDs:*(v86 + 88)];
    locka = (*(v86 + 32) + 8);
    os_unfair_lock_lock_with_options();
    if (v83)
    {
      [*(v86 + 48) setServerChangeToken:?];
    }

    v52 = [*(v86 + 32) stateZone];
    v97 = *(v86 + 48);
    v53 = [MEMORY[0x277CBEA60] arrayWithObjects:&v97 count:1];
    v54 = [v52 update:v53 remove:*(v86 + 112)];

    if (v54)
    {
      v55 = objc_autoreleasePoolPush();
      v56 = *(v86 + 32);
      v57 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        v58 = HMFGetLogIdentifier();
        v59 = [*(v86 + 40) identifier];
        v60 = [v59 shortDescription];
        v61 = *(v86 + 112);
        *buf = 138544130;
        v100 = v58;
        v101 = 2114;
        v102 = v60;
        v103 = 2112;
        v104 = v61;
        v105 = 2114;
        v106 = v54;
        _os_log_impl(&dword_22AD27000, v57, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to remove zone model IDs from local DB %@: %{public}@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v55);
    }

    os_unfair_lock_unlock(locka);
    v62 = objc_autoreleasePoolPush();
    v63 = *(v86 + 32);
    v64 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = HMFGetLogIdentifier();
      v66 = [*(v86 + 40) identifier];
      v67 = [v66 shortDescription];
      *buf = 138543618;
      v100 = v65;
      v101 = 2114;
      v102 = v67;
      _os_log_impl(&dword_22AD27000, v64, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] CKFetchDatabaseChangesOperation succeeded", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v62);
    [*(v86 + 56) finishWithNoResult];
  }
}

uint64_t __open(void *a1, void *a2)
{
  v74 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v67 = 0;
  v4 = __sqlite3Open(v3, 0, &v67);
  v5 = v67;
  v6 = v5;
  if (v4)
  {
    [v3 setConnection:v4];
    v7 = [v3 connection];
    v66 = v6;
    v8 = selectSQLite3(v7, "PRAGMA user_version", MEMORY[0x277CBEC10], &v66);;
    v9 = v66;

    v10 = [v8 firstObject];
    v11 = [v10 firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v14 = objc_autoreleasePoolPush();
    v15 = v3;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v69 = v17;
      v70 = 2112;
      v71 = v13;
      _os_log_impl(&dword_22AD27000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Current schema version: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v65 = v9;
    v18 = [v15 migrateFromSchemaVersion:objc_msgSend(v13 error:{"integerValue"), &v65}];
    v6 = v65;

    if (v18 == 2)
    {
      v44 = objc_autoreleasePoolPush();
      v40 = v15;
      v45 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = HMFGetLogIdentifier();
        *buf = 138543618;
        v69 = v46;
        v70 = 2112;
        v71 = v40;
        _os_log_impl(&dword_22AD27000, v45, OS_LOG_TYPE_DEFAULT, "%{public}@Migration needs reopen for context %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v44);
      sqlite3_close(v4);
    }

    else
    {
      if (v18 != 1)
      {
        if (v18)
        {
          v24 = 1;
        }

        else
        {
          v19 = objc_autoreleasePoolPush();
          v20 = v15;
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = HMFGetLogIdentifier();
            *buf = 138543874;
            v69 = v22;
            v70 = 2112;
            v71 = v20;
            v72 = 2114;
            v73 = v6;
            _os_log_impl(&dword_22AD27000, v21, OS_LOG_TYPE_ERROR, "%{public}@Migration failed for context %@: %{public}@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v19);
          if (a2)
          {
            v23 = v6;
            v24 = 0;
            *a2 = v6;
          }

          else
          {
            v24 = 0;
          }
        }

        goto LABEL_38;
      }

      v39 = objc_autoreleasePoolPush();
      v40 = v15;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = HMFGetLogIdentifier();
        *buf = 138543618;
        v69 = v42;
        v70 = 2112;
        v71 = v40;
        _os_log_impl(&dword_22AD27000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@Migration needs re-init for context %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v39);
      sqlite3_close(v4);
      v43 = [v40 url];
      __clean(v43);
    }

    v24 = __open(v40, a2);
LABEL_38:

    goto LABEL_39;
  }

  v25 = [v5 userInfo];
  v26 = [v25 hmf_numberForKey:@"extcode"];
  v27 = [v26 integerValue];

  if (v27 != 14)
  {
    if (a2)
    {
LABEL_36:
      v51 = v6;
      v24 = 0;
      *a2 = v6;
      goto LABEL_39;
    }

LABEL_50:
    v24 = 0;
    goto LABEL_39;
  }

  v64 = 0;
  v28 = __sqlite3Open(v3, 1, &v64);
  v29 = v64;
  v30 = [v3 url];
  v31 = [v30 scheme];
  v32 = [v31 isEqualToString:@"memory"];

  if ((v32 & 1) == 0)
  {
    v63 = v29;
    v33 = selectSQLite3(v28, "PRAGMA journal_mode=WAL", MEMORY[0x277CBEC10], &v63);;
    v6 = v63;

    if (v33)
    {
      v34 = objc_autoreleasePoolPush();
      v35 = v3;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543618;
        v69 = v37;
        v70 = 2112;
        v71 = v35;
        _os_log_impl(&dword_22AD27000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@Re-opening newly created database after successfully turning on WAL for context: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v34);
      sqlite3_close(v28);
      v62 = v6;
      v28 = __sqlite3Open(v35, 0, &v62);
      v29 = v62;

      if (v28)
      {

        goto LABEL_21;
      }

      if (a2)
      {
        v58 = v29;
        *a2 = v29;
      }

      v54 = objc_autoreleasePoolPush();
      v59 = v35;
      v56 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v60 = HMFGetLogIdentifier();
        *buf = 138543874;
        v69 = v60;
        v70 = 2112;
        v71 = v59;
        v72 = 2114;
        v73 = v29;
        _os_log_impl(&dword_22AD27000, v56, OS_LOG_TYPE_ERROR, "%{public}@Failed re-open of WAL-enabled context %@: %{public}@", buf, 0x20u);
      }

      v6 = v29;
    }

    else
    {
      if (a2)
      {
        v53 = v6;
        *a2 = v6;
      }

      v54 = objc_autoreleasePoolPush();
      v55 = v3;
      v56 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v57 = HMFGetLogIdentifier();
        *buf = 138543874;
        v69 = v57;
        v70 = 2112;
        v71 = v55;
        v72 = 2114;
        v73 = v6;
        _os_log_impl(&dword_22AD27000, v56, OS_LOG_TYPE_ERROR, "%{public}@Failed to turn on WAL for context %@: %{public}@", buf, 0x20u);
      }
    }

    objc_autoreleasePoolPop(v54);
    goto LABEL_50;
  }

LABEL_21:
  [v3 setConnection:v28];
  v61 = v29;
  v38 = [v3 initializeNewlyCreatedDatabaseWithError:&v61];
  v6 = v61;

  if ((v38 & 1) == 0)
  {
    v47 = objc_autoreleasePoolPush();
    v48 = v3;
    v49 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = HMFGetLogIdentifier();
      *buf = 138543874;
      v69 = v50;
      v70 = 2112;
      v71 = v48;
      v72 = 2112;
      v73 = v6;
      _os_log_impl(&dword_22AD27000, v49, OS_LOG_TYPE_ERROR, "%{public}@Failed to initialize newly created database for context %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v47);
    if (a2)
    {
      goto LABEL_36;
    }

    goto LABEL_50;
  }

  v24 = 1;
LABEL_39:

  return v24;
}

sqlite3 *__sqlite3Open(void *a1, int a2, void *a3)
{
  v49[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = v5;
  if (a2)
  {
    v7 = 6;
  }

  else
  {
    v7 = 2;
  }

  ppDb = 0;
  v8 = [v5 url];
  v9 = [v8 scheme];
  v10 = [v9 isEqualToString:@"memory"];

  if (v10)
  {
    if ((a2 & 1) == 0)
    {
      v30 = objc_autoreleasePoolPush();
      v31 = v6;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543362;
        v41 = v33;
        _os_log_impl(&dword_22AD27000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to open memory database with create == NO", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v30);
      if (a3)
      {
        v34 = MEMORY[0x277CCA9B8];
        v48 = @"extcode";
        v49[0] = &unk_283EB9EB8;
        v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
        *a3 = [v34 hmfErrorWithCode:3 userInfo:v35];
      }

      goto LABEL_25;
    }

    v11 = ":memory:";
  }

  else
  {
    v12 = [v6 url];
    v11 = [v12 fileSystemRepresentation];
  }

  v13 = sqlite3_open_v2(v11, &ppDb, v7, 0);
  if (v13)
  {
    v14 = v13;
    if (v13 == 14 && (a2 & 1) == 0)
    {
      v15 = objc_autoreleasePoolPush();
      v36 = v6;
      v17 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v18 = HMFGetLogIdentifier();
      v37 = ppDb;
      v20 = [v36 url];
      v21 = [MEMORY[0x277CCA9B8] hmbErrorWithSQLite3Status:14];
      *buf = 138544130;
      v41 = v18;
      v42 = 2048;
      v43 = v37;
      v44 = 2112;
      v45 = v20;
      v46 = 2114;
      v47 = v21;
      v22 = "%{public}@Can't open context %p without creating because no database exists already at %@: %{public}@";
      v23 = v17;
      v24 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = v6;
      v17 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      v18 = HMFGetLogIdentifier();
      v19 = ppDb;
      v20 = [v16 url];
      v21 = [MEMORY[0x277CCA9B8] hmbErrorWithSQLite3Status:v14];
      *buf = 138544130;
      v41 = v18;
      v42 = 2048;
      v43 = v19;
      v44 = 2112;
      v45 = v20;
      v46 = 2114;
      v47 = v21;
      v22 = "%{public}@Failed to open context %p at %@: %{public}@";
      v23 = v17;
      v24 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_22AD27000, v23, v24, v22, buf, 0x2Au);

LABEL_23:
    objc_autoreleasePoolPop(v15);
    sqlite3_close(ppDb);
    if (a3)
    {
      [MEMORY[0x277CCA9B8] hmbErrorWithSQLite3Status:v14];
      *a3 = v29 = 0;
      goto LABEL_26;
    }

LABEL_25:
    v29 = 0;
    goto LABEL_26;
  }

  [v6 setConnection:ppDb];
  v25 = objc_autoreleasePoolPush();
  v26 = v6;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = HMFGetLogIdentifier();
    *buf = 138543618;
    v41 = v28;
    v42 = 2112;
    v43 = v26;
    _os_log_impl(&dword_22AD27000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully opened sqlite database handle for context: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v25);
  v29 = ppDb;
LABEL_26:

  return v29;
}

id selectSQLite3(sqlite3 *a1, const char *a2, void *a3, void *a4, ...)
{
  v67[3] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = __removeExtraWhitespace(a2);
  v9 = [v8 UTF8String];
  v10 = [MEMORY[0x277CBEB18] array];
  ppStmt = 0;
  if (*a4)
  {
    v11 = 0;
    v12 = 0;
    goto LABEL_54;
  }

  if (sqlite3_prepare_v2(a1, v9, -1, &ppStmt, 0))
  {
    [MEMORY[0x277CCA9B8] hmbErrorWithSQLite3Connection:a1 statement:v9];
    v11 = 0;
    *a4 = v12 = 0;
    goto LABEL_54;
  }

  v60 = v10;
  v13 = sqlite3_bind_parameter_count(ppStmt);
  if (v13 >= 2)
  {
    v14 = v13;
    v15 = 1;
    v16 = 0x277CCA000uLL;
    v56 = *MEMORY[0x277D0F1A0];
    while (1)
    {
      if (*a4)
      {
        goto LABEL_52;
      }

      v17 = sqlite3_bind_parameter_name(ppStmt, v15);
      if (!v17)
      {
        v43 = MEMORY[0x277CCA9B8];
        v67[0] = &unk_283EB9EA0;
        v66[0] = @"extcode";
        v66[1] = @"text";
        v44 = [*(v16 + 3240) stringWithFormat:@"statement cannot contain nameless parameters (%ld is nameless)", v15];
        v67[1] = v44;
        v66[2] = @"statement";
        v45 = [*(v16 + 3240) stringWithUTF8String:v9];
        v67[2] = v45;
        v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:3];
        *a4 = [v43 errorWithDomain:v56 code:3 userInfo:v46];

        goto LABEL_52;
      }

      v18 = v17;
      v19 = [*(v16 + 3240) stringWithUTF8String:v17];
      v20 = [v7 objectForKey:v19];

      if (v20)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }
      }

      sqlite3_bind_null(ppStmt, v15);
LABEL_25:

      if (v14 == ++v15)
      {
        goto LABEL_33;
      }
    }

    v21 = v20;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    v59 = v23;

    if (isKindOfClass)
    {
      hmbBindDataSQLite3(ppStmt, v15, v21, a4);
    }

    else
    {
      v24 = v21;
      objc_opt_class();
      v25 = objc_opt_isKindOfClass();
      if (v25)
      {
        v26 = v24;
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;

      if (v25)
      {
        hmbBindStringSQLite3(ppStmt, v15, v24, a4);
        goto LABEL_23;
      }

      v57 = v9;
      v28 = v24;
      objc_opt_class();
      v29 = objc_opt_isKindOfClass();
      if (v29)
      {
        v30 = v28;
      }

      else
      {
        v30 = 0;
      }

      v31 = v30;

      if (v29)
      {
        hmbBindIntSQLite3(ppStmt, v15, [v28 longLongValue], a4);
        v24 = 0;
        v9 = v57;
        goto LABEL_24;
      }

      v54 = MEMORY[0x277CCA9B8];
      v65[0] = &unk_283EB9EA0;
      v64[0] = @"extcode";
      v64[1] = @"text";
      v32 = MEMORY[0x277CCACA8];
      v33 = objc_opt_class();
      v55 = NSStringFromClass(v33);
      v53 = [v32 stringWithFormat:@"bind parameter %s is not of a recognized type %@ is not a (NSNull, NSData, NSString, or NSNumber)", v18, v55];
      v65[1] = v53;
      v64[2] = @"statement";
      v9 = v57;
      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:v57];
      v65[2] = v34;
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:3];
      *a4 = [v54 errorWithDomain:v56 code:3 userInfo:v35];
    }

    v24 = 0;
LABEL_23:
    v28 = 0;
LABEL_24:

    v16 = 0x277CCA000;
    goto LABEL_25;
  }

LABEL_33:
  if (*a4)
  {
LABEL_52:
    v11 = 0;
    goto LABEL_53;
  }

  v58 = v9;
  v36 = 0;
  v37 = sqlite3_column_count(ppStmt);
  while (1)
  {
    v38 = sqlite3_step(ppStmt);
    if (v38 != 100)
    {
      if (v38 != 101)
      {
        *a4 = [MEMORY[0x277CCA9B8] hmbErrorWithSQLite3Statement:ppStmt];
      }

      v10 = v60;
      sqlite3_finalize(ppStmt);
      if (*a4)
      {
        v12 = 0;
      }

      else
      {
        v12 = v60;
      }

      v11 = v36;
      goto LABEL_54;
    }

    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:v37];

    if (v37 >= 1)
    {
      break;
    }

LABEL_50:
    [v60 addObject:v11];
    v36 = v11;
  }

  v39 = 0;
  while (1)
  {
    v40 = sqlite3_column_type(ppStmt, v39);
    if (v40 <= 2)
    {
      break;
    }

    switch(v40)
    {
      case 3:
        v41 = [MEMORY[0x277CCACA8] hmbStringWithSQLite3Column:ppStmt column:v39];
        break;
      case 5:
        v41 = [MEMORY[0x277CBEB68] null];
        break;
      case 4:
        v41 = [MEMORY[0x277CBEA90] hmbDataWithSQLite3Column:ppStmt column:v39];
        break;
      default:
        goto LABEL_57;
    }

LABEL_49:
    v42 = v41;
    [v11 addObject:v41];

    v39 = (v39 + 1);
    if (v37 == v39)
    {
      goto LABEL_50;
    }
  }

  if (v40 == 1)
  {
    v41 = [MEMORY[0x277CCABB0] numberWithLongLong:{sqlite3_column_int64(ppStmt, v39)}];
    goto LABEL_49;
  }

  if (v40 == 2)
  {
    v41 = [MEMORY[0x277CCABB0] numberWithDouble:{sqlite3_column_double(ppStmt, v39)}];
    goto LABEL_49;
  }

LABEL_57:
  v48 = MEMORY[0x277CCA9B8];
  v49 = *MEMORY[0x277D0F1A0];
  v63[0] = &unk_283EB9EA0;
  v62[0] = @"extcode";
  v62[1] = @"text";
  v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"column %ld is of SQLite3 type %ld (not recognized)", v39, v40];
  v63[1] = v50;
  v62[2] = @"statement";
  v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:v58];
  v63[2] = v51;
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:3];
  *a4 = [v48 errorWithDomain:v49 code:3 userInfo:v52];

LABEL_53:
  v12 = 0;
  v10 = v60;
LABEL_54:

  return v12;
}

void __clean(void *a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v1 lastPathComponent];
  v4 = [v1 URLByDeletingLastPathComponent];
  v43 = 0;
  v5 = [v2 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:0 options:0 error:&v43];
  v6 = v43;
  v32 = v3;
  if (v5)
  {
    v26 = v4;
    v27 = v1;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v25 = v5;
    obj = v5;
    v30 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v30)
    {
      v29 = *v40;
      do
      {
        v7 = 0;
        do
        {
          if (*v40 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = v7;
          v8 = *(*(&v39 + 1) + 8 * v7);
          v9 = [v8 lastPathComponent];
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v44[0] = &stru_283EAC008;
          v44[1] = @"-shm";
          v44[2] = @"-wal";
          v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:3];
          v10 = [v33 countByEnumeratingWithState:&v35 objects:v45 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v36;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v36 != v12)
                {
                  objc_enumerationMutation(v33);
                }

                v14 = [v3 stringByAppendingString:*(*(&v35 + 1) + 8 * i)];
                v15 = [v9 isEqualToString:v14];

                if (v15)
                {
                  v34 = v6;
                  v16 = [v2 removeItemAtURL:v8 error:&v34];
                  v17 = v34;

                  if ((v16 & 1) == 0)
                  {
                    v18 = objc_autoreleasePoolPush();
                    v19 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                    {
                      HMFGetLogIdentifier();
                      v21 = v20 = v2;
                      *buf = 138543874;
                      v48 = v21;
                      v49 = 2112;
                      v50 = v8;
                      v51 = 2112;
                      v52 = v17;
                      _os_log_impl(&dword_22AD27000, v19, OS_LOG_TYPE_ERROR, "%{public}@unable to remove %@: %@", buf, 0x20u);

                      v2 = v20;
                      v3 = v32;
                    }

                    objc_autoreleasePoolPop(v18);
                  }

                  v6 = v17;
                }
              }

              v11 = [v33 countByEnumeratingWithState:&v35 objects:v45 count:16];
            }

            while (v11);
          }

          v7 = v31 + 1;
        }

        while (v31 + 1 != v30);
        v30 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v30);
    }

    v4 = v26;
    v1 = v27;
    v5 = v25;
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543874;
      v48 = v24;
      v49 = 2112;
      v50 = v4;
      v51 = 2112;
      v52 = v6;
      _os_log_impl(&dword_22AD27000, v23, OS_LOG_TYPE_ERROR, "%{public}@unable to get files in %@ (%@)", buf, 0x20u);

      v3 = v32;
    }

    objc_autoreleasePoolPop(v22);
  }
}

id __removeExtraWhitespace(const char *a1)
{
  v2 = [MEMORY[0x277CCAB68] stringWithCapacity:strlen(a1)];
  v3 = *a1;
  if (*a1)
  {
    v4 = 0;
    v5 = a1 + 1;
    v6 = MEMORY[0x277D85DE0];
    do
    {
      v7 = v3;
      if (v3 < 0)
      {
        v8 = __maskrune(v3, 0x4000uLL);
      }

      else
      {
        v8 = *(v6 + 4 * v7 + 60) & 0x4000;
      }

      v9 = v8 != 0;
      if (v8)
      {
        if (!v4)
        {
          [v2 appendString:@" "];
        }
      }

      else
      {
        [v2 appendFormat:@"%c", v7];
      }

      v10 = *v5++;
      v3 = v10;
      v4 = v9;
    }

    while (v10);
  }

  return v2;
}

uint64_t hmbBindDataSQLite3(sqlite3_stmt *a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = v7;
  if (!*a4)
  {
    v11 = v7;
    if (v7)
    {
      if ([v7 length])
      {
        if ([v11 length])
        {
          v9 = v11;
          v7 = sqlite3_bind_blob64(a1, a2, [v11 bytes], objc_msgSend(v11, "length"), 0);
        }

        else
        {
          v7 = sqlite3_bind_zeroblob(a1, a2, 0);
        }
      }

      else
      {
        v7 = sqlite3_bind_zeroblob64(a1, a2, 0);
      }
    }

    else
    {
      v7 = sqlite3_bind_null(a1, a2);
    }

    v8 = v11;
    if (v7)
    {
      v7 = [MEMORY[0x277CCA9B8] hmbErrorWithSQLite3Statement:a1];
      v8 = v11;
      *a4 = v7;
    }
  }

  return MEMORY[0x2821F96F8](v7, v8);
}

uint64_t hmbBindStringSQLite3(sqlite3_stmt *a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = v7;
  if (!*a4)
  {
    v11 = v7;
    if (v7)
    {
      v9 = v7;
      v7 = sqlite3_bind_text(a1, a2, [v11 UTF8String], -1, 0);
    }

    else
    {
      v7 = sqlite3_bind_null(a1, a2);
    }

    v8 = v11;
    if (v7)
    {
      v7 = [MEMORY[0x277CCA9B8] hmbErrorWithSQLite3Statement:a1];
      v8 = v11;
      *a4 = v7;
    }
  }

  return MEMORY[0x2821F96F8](v7, v8);
}

sqlite3_stmt *hmbBindIntSQLite3(sqlite3_stmt *result, int a2, sqlite3_int64 a3, void *a4)
{
  if (!*a4)
  {
    v5 = result;
    result = sqlite3_bind_int64(result, a2, a3);
    if (result)
    {
      result = [MEMORY[0x277CCA9B8] hmbErrorWithSQLite3Statement:v5];
      *a4 = result;
    }
  }

  return result;
}

void hmbBindUUIDSQLite3(sqlite3_stmt *a1, int a2, void *a3, void *a4)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = v7;
  if (!*a4)
  {
    if (!v7)
    {
      if (!sqlite3_bind_null(a1, a2))
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v9[0] = 0;
    v9[1] = 0;
    [v7 getUUIDBytes:v9];
    if (sqlite3_bind_blob64(a1, a2, v9, 0x10uLL, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_4:
      *a4 = [MEMORY[0x277CCA9B8] hmbErrorWithSQLite3Statement:a1];
    }
  }

LABEL_5:
}

uint64_t hmbBindIntNumberSQLite3(sqlite3_stmt *a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = v7;
  if (!*a4)
  {
    v10 = v7;
    v7 = v7 ? sqlite3_bind_int64(a1, a2, [v7 unsignedIntegerValue]) : sqlite3_bind_null(a1, a2);
    v8 = v10;
    if (v7)
    {
      v7 = [MEMORY[0x277CCA9B8] hmbErrorWithSQLite3Statement:a1];
      v8 = v10;
      *a4 = v7;
    }
  }

  return MEMORY[0x2821F96F8](v7, v8);
}

sqlite3_stmt *prepareSQLite3(sqlite3 *a1, const char *a2, void *a3)
{
  ppStmt = 0;
  v6 = __removeExtraWhitespace(a2);
  if (sqlite3_prepare_v2(a1, [v6 UTF8String], -1, &ppStmt, 0))
  {
    if (a3)
    {
      [MEMORY[0x277CCA9B8] hmbErrorWithSQLite3Connection:a1 statement:a2];
      *a3 = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = ppStmt;
  }

  return v7;
}

void sub_22AD9EC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7414(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AD9F28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AD9F490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AD9F6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AD9F8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AD9FA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __modelsFromRecords(void *a1, void *a2, uint64_t a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = a2;
  v21 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v7, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v24;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        v14 = v11;
        if (*v24 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = objc_autoreleasePoolPush();
        v22 = v14;
        v17 = [v6 modelFromRecord:v15 storageLocation:2 error:&v22];
        v11 = v22;

        if (v17)
        {
          if (!a3 || (objc_opt_isKindOfClass() & 1) != 0)
          {
            [v21 addObject:v17];
          }
        }

        else if (![v11 isHMFError] || objc_msgSend(v11, "code") != 2)
        {

          objc_autoreleasePoolPop(v16);
          goto LABEL_16;
        }

        objc_autoreleasePoolPop(v16);
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

  if (!v21)
  {
LABEL_16:
    if (a4)
    {
      v18 = v11;
      v21 = 0;
      *a4 = v11;
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

void sub_22AD9FE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ADA00A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ADA02E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL __execAndSetError(void *a1, sqlite3_stmt *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a3;
  if (!v8)
  {
    v9 = [v7 execSQLite3:a2];
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v9 = v8;
  v10 = objc_autoreleasePoolPush();
  v11 = v7;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v16 = 138543874;
    v17 = v13;
    v18 = 2080;
    v19 = sqlite3_sql(a2);
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_22AD27000, v12, OS_LOG_TYPE_INFO, "%{public}@ignoring exec due to previous error %s: %@", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  if (a4)
  {
LABEL_7:
    if (v9)
    {
      v14 = v9;
      *a4 = v9;
    }
  }

LABEL_9:

  return v9 == 0;
}

void sub_22ADA0D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ADA0F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7598(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22ADA16BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ADA19A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ADA1C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ADA22E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __execRowAndSetError(void *a1, uint64_t a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    if (a4)
    {
      v10 = v8;
      v11 = 0;
      *a4 = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v20 = 0;
    v11 = [v7 insertSQLite3:a2 error:&v20];
    v12 = v20;
    if (!v11)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = v7;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543618;
        v22 = v17;
        v23 = 2114;
        v24 = v12;
        _os_log_impl(&dword_22AD27000, v16, OS_LOG_TYPE_ERROR, "%{public}@Error executing statement: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      if (a4)
      {
        if (v12)
        {
          v18 = v12;
          *a4 = v12;
        }

        else
        {
          v19 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
          *a4 = v19;
        }
      }
    }
  }

  return v11;
}

void sub_22ADA3010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ADA362C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ADA3900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ADA43A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ADA46D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ADA4B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ADA6F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7867(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22ADA7264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ADA751C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ADA7834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ADA7B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ADA7EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ADA81BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ADA8478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ADA8744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ADA8A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ADA9930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ADA9B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ADA9D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ADAA168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ADAA3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ADAA5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ADAA80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *HMBStringFromLoggingVisibility(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<UNKNOWN %lu>", a1];
  }

  else
  {
    v2 = off_2786E2B38[a1];
  }

  return v2;
}

id __unregisterSubscriptionForSubscriptionID(void *a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [(os_unfair_lock_s *)v5 initialCloudSyncFuture];
  v9 = [v8 isFinished];

  if ((v9 & 1) == 0)
  {
    _HMFPreconditionFailure();
  }

  os_unfair_lock_lock_with_options();
  v10 = [v7 subscriptions];
  os_unfair_lock_unlock(v5 + 2);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = ____unregisterSubscriptionForSubscriptionID_block_invoke;
  v26[3] = &unk_2786E2C48;
  v11 = v6;
  v27 = v11;
  if ([v10 na_any:v26])
  {
    v12 = [v7 database];
    v28 = v11;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
    v14 = [(os_unfair_lock_s *)v5 pushSubscriptionsForDatabase:v12 subscriptionsToSave:MEMORY[0x277CBEBF8] subscriptionIDsToRemove:v13];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ____unregisterSubscriptionForSubscriptionID_block_invoke_47;
    v21[3] = &unk_2786E2BA8;
    v22 = v5;
    v23 = v7;
    v24 = v10;
    v25 = v11;
    v15 = [v14 addSuccessBlock:v21];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v5;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543874;
      v30 = v19;
      v31 = 2112;
      v32 = v11;
      v33 = 2112;
      v34 = v10;
      _os_log_impl(&dword_22AD27000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Not unregistering database subscription ID %@ because it is not in our list of existing database subscription: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
    v15 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v15;
}

uint64_t ____unregisterSubscriptionForSubscriptionID_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 subscriptionID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void ____unregisterSubscriptionForSubscriptionID_block_invoke_47(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = ____unregisterSubscriptionForSubscriptionID_block_invoke_2;
  v14[3] = &unk_2786E2C48;
  v5 = *(a1 + 48);
  v15 = *(a1 + 56);
  v6 = [v5 na_filter:v14];
  [*(a1 + 40) setSubscriptions:v6];

  v7 = [*(a1 + 32) stateZone];
  v20[0] = *(a1 + 40);
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v9 = [v7 update:v8];

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_22AD27000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to update database state: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  os_unfair_lock_unlock(v4 + 2);
}

uint64_t ____unregisterSubscriptionForSubscriptionID_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 subscriptionID];
  LODWORD(a1) = [v3 isEqualToString:*(a1 + 32)];

  return a1 ^ 1;
}

void __modifySubscriptions(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v57 = *MEMORY[0x277D85DE8];
  v11 = a1;
  v34 = a2;
  v12 = a3;
  v37 = a4;
  v13 = a5;
  v35 = a6;
  v36 = v12;
  if ([v12 count] || objc_msgSend(v37, "count"))
  {
    if (!v13)
    {
      v14 = objc_alloc(MEMORY[0x277D0F770]);
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"__modifySubscriptions"];
      v13 = [v14 initWithName:v15 options:1];
    }

    v16 = objc_alloc_init(MEMORY[0x277CBC4B0]);
    v17 = [v11 operationConfigurationWithProcessingOptions:0];
    [v16 setConfiguration:v17];

    [v16 setSubscriptionsToSave:v12];
    [v16 setSubscriptionIDsToDelete:v37];
    objc_initWeak(&location, v16);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = ____modifySubscriptions_block_invoke;
    v38[3] = &unk_2786E2C98;
    v18 = v11;
    v39 = v18;
    v13 = v13;
    v40 = v13;
    objc_copyWeak(&v45, &location);
    v33 = v34;
    v41 = v33;
    v19 = v12;
    v42 = v19;
    v20 = v37;
    v43 = v20;
    v44 = v35;
    [v16 setModifySubscriptionsCompletionBlock:v38];
    context = objc_autoreleasePoolPush();
    v21 = v18;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v31 = v11;
      v23 = HMFGetLogIdentifier();
      v24 = [v13 identifier];
      v25 = [v24 shortDescription];
      v26 = [v16 operationID];
      *buf = 138544386;
      v48 = v23;
      v49 = 2114;
      v50 = v25;
      v51 = 2112;
      v52 = v19;
      v53 = 2112;
      v54 = v20;
      v55 = 2114;
      v56 = v26;
      _os_log_impl(&dword_22AD27000, v22, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Starting CKModifySubscriptionsOperation with subscriptionsToSave: %@ subscriptionIDsToRemove: %@ operationID: %{public}@", buf, 0x34u);

      v11 = v31;
    }

    objc_autoreleasePoolPop(context);
    [v33 addOperation:v16];

    objc_destroyWeak(&v45);
    objc_destroyWeak(&location);
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = v11;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v48 = v30;
      _os_log_impl(&dword_22AD27000, v29, OS_LOG_TYPE_DEBUG, "%{public}@Skipping subscription modify for empty save and remove lists", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    [v35 finishWithNoResult];
  }
}

void sub_22ADAFED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____modifySubscriptions_block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v53 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = a1[4];
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [a1[5] identifier];
      v16 = [v15 shortDescription];
      *buf = 138543874;
      v48 = v14;
      v49 = 2114;
      v50 = v16;
      v51 = 2114;
      v52 = v9;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] CKModifySubscriptionsOperation failed: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    WeakRetained = objc_loadWeakRetained(a1 + 10);
    if (!WeakRetained)
    {
      _HMFPreconditionFailure();
    }

    v18 = WeakRetained;
    v19 = a1[4];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = ____modifySubscriptions_block_invoke_35;
    v40[3] = &unk_2786E2C70;
    v41 = v19;
    v42 = a1[6];
    v43 = a1[7];
    v44 = a1[8];
    v45 = a1[5];
    v46 = a1[9];
    v20 = [v41 retryCloudKitOperation:v18 afterError:v9 retryBlock:v40];
    v21 = objc_autoreleasePoolPush();
    v22 = a1[4];
    v23 = HMFGetOSLogHandle();
    v24 = v23;
    if (v20)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        v26 = [a1[5] identifier];
        [v26 shortDescription];
        v38 = v8;
        v28 = v27 = v7;
        *buf = 138543618;
        v48 = v25;
        v49 = 2114;
        v50 = v28;
        _os_log_impl(&dword_22AD27000, v24, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] CKModifySubscriptionsOperation will be retried", buf, 0x16u);

        v7 = v27;
        v8 = v38;
      }

      objc_autoreleasePoolPop(v21);
      [a1[5] markWithReason:@"deferred"];
    }

    else
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v39 = v8;
        v35 = v34 = v7;
        v36 = [a1[5] identifier];
        v37 = [v36 shortDescription];
        *buf = 138543874;
        v48 = v35;
        v49 = 2114;
        v50 = v37;
        v51 = 2114;
        v52 = v9;
        _os_log_impl(&dword_22AD27000, v24, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] CKModifySubscriptionsOperation failed and cannot be retried: %{public}@", buf, 0x20u);

        v7 = v34;
        v8 = v39;
      }

      objc_autoreleasePoolPop(v21);
      [a1[5] markWithFormat:@"failed with error: %@", v9];
      [a1[9] finishWithError:v9];
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v29 = v8;
      v31 = v30 = v7;
      v32 = [a1[5] identifier];
      v33 = [v32 shortDescription];
      *buf = 138543618;
      v48 = v31;
      v49 = 2114;
      v50 = v33;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] CKModifySubscriptionsOperation succeeded", buf, 0x16u);

      v7 = v30;
      v8 = v29;
    }

    objc_autoreleasePoolPop(v10);
    [a1[5] markWithReason:@"succeeded"];
    [a1[9] finishWithNoResult];
  }
}