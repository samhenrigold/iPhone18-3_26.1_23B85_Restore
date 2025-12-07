void sub_1E464B3D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E464B3FC(uint64_t a1)
{
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0);
  }
}

void sub_1E464B474(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained moc];
  v4 = [MEMORY[0x1E698F550] shared];
  v5 = [v4 verboseLoggingEnabled];

  if (v5)
  {
    v7 = BDSCloudKitDevelopmentLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [WeakRetained entityName];
      v9 = [*(a1 + 32) debugDescription];
      *buf = 138543618;
      v39 = v8;
      v40 = 2114;
      v41 = v9;
      _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager Entity: %{public}@ cloudDatasWithPredicate:%{public}@\", buf, 0x16u);
    }
  }

  v10 = objc_alloc(MEMORY[0x1E695D5E0]);
  v11 = [WeakRetained entityName];
  v12 = [v10 initWithEntityName:v11];

  [v12 setFetchBatchSize:64];
  v29 = a1;
  [v12 setPredicate:*(a1 + 32)];
  v36 = 0;
  v30 = v3;
  v13 = [v3 executeFetchRequest:v12 error:&v36];
  v14 = v36;
  [WeakRetained _logError:v14 at:@"cloudDatas - fetch"];
  v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v13, "count")}];
  v16 = [WeakRetained privacyDelegate];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = v13;
  v18 = [v17 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v33;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v32 + 1) + 8 * i);
        [v22 setPrivacyDelegate:v16];
        v23 = [v22 mutableCopy];
        [v23 setPrivacyDelegate:v16];
        if (v23)
        {
          [v15 addObject:v23];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v19);
  }

  if ([v30 hasChanges])
  {
    v31 = v14;
    [v30 save:&v31];
    v24 = v31;

    [WeakRetained _logError:v24 at:@"cloudDatas - save"];
    v14 = v24;
  }

  v25 = [WeakRetained mq_sanitizeError:v14];

  v26 = *(v29 + 40);
  v27 = [WeakRetained mq_cloudSyncVersions];
  v28 = [v27 mutableCopy];
  (*(v26 + 16))(v26, v15, v28, v25);
}

void sub_1E464B9A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E464B9C8(uint64_t a1)
{
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_1E464BA3C(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = [MEMORY[0x1E698F550] shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v7 = BDSCloudKitDevelopmentLog(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [WeakRetained entityName];
        v9 = [*(a1 + 32) debugDescription];
        *buf = 138543618;
        v31 = v8;
        v32 = 2114;
        v33 = v9;
        _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager Entity: %{public}@ cloudDatasWithPredicate:%{public}@\", buf, 0x16u);
      }
    }

    v10 = objc_alloc(MEMORY[0x1E695D5E0]);
    v11 = [WeakRetained entityName];
    v12 = [v10 initWithEntityName:v11];

    [v12 setFetchBatchSize:64];
    [v12 setPredicate:*(a1 + 32)];
    v28 = 0;
    v23 = v3;
    v13 = [v3 executeFetchRequest:v12 error:&v28];
    v14 = v28;
    [WeakRetained _logError:v14 at:@"transformedCloudDatas"];
    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v13, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = v13;
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = (*(*(a1 + 40) + 16))();
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v18);
    }

    v22 = [WeakRetained mq_sanitizeError:v14];

    (*(*(a1 + 48) + 16))();
    v3 = v23;
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_1E464BFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E464BFF0(uint64_t a1)
{
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_1E464C064(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v5 = [WeakRetained moc];

  if (v5)
  {
    v6 = [WeakRetained moc];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E464C204;
    v14[3] = &unk_1E875B480;
    objc_copyWeak(&v19, (a1 + 72));
    v15 = v3;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v13 = *(a1 + 48);
    v9 = *(&v13 + 1);
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v16 = v10;
    v17 = v13;
    v18 = *(a1 + 64);
    [v6 performBlock:v14];

    objc_destroyWeak(&v19);
  }

  else
  {
    v11 = _Block_copy(*(a1 + 64));
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, 0, 0);
    }
  }
}

void sub_1E464C204(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E698F550] shared];
    v6 = [v5 verboseLoggingEnabled];

    if (!v4)
    {
      if (v6)
      {
        v20 = BDSCloudKitDevelopmentLog(v7);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [*(a1 + 40) debugDescription];
          *buf = 138543362;
          v52 = v21;
          _os_log_impl(&dword_1E45E0000, v20, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager cloudDataWithPredicate:%{public}@\", buf, 0xCu);
        }
      }

      v22 = objc_alloc(MEMORY[0x1E695D5E0]);
      v23 = [WeakRetained entityName];
      v12 = [v22 initWithEntityName:v23];

      [v12 setReturnsObjectsAsFaults:0];
      [v12 setFetchLimit:1];
      [v12 setPredicate:*(a1 + 40)];
      v48 = 0;
      v24 = [v3 executeFetchRequest:v12 error:&v48];
      v25 = v48;
      [WeakRetained _logError:v25 at:@"resolvedCloudData - fetch (new)"];
      v26 = [v24 firstObject];
      v27 = [WeakRetained privacyDelegate];
      [v26 setPrivacyDelegate:v27];

      v28 = [WeakRetained mq_sanitizeError:v25];

      v29 = [v26 mutableCopy];
      v30 = _Block_copy(*(a1 + 72));
      v31 = v30;
      if (v30)
      {
        (*(v30 + 2))(v30, v29, v28);
      }

      goto LABEL_36;
    }

    if (v6)
    {
      v8 = BDSCloudKitDevelopmentLog(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [*(a1 + 40) debugDescription];
        *buf = 138543362;
        v52 = v9;
        _os_log_impl(&dword_1E45E0000, v8, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager resolvedCloudDataForCloudData:%{public}@\", buf, 0xCu);
      }
    }

    v10 = objc_alloc(MEMORY[0x1E695D5E0]);
    v11 = [WeakRetained entityName];
    v12 = [v10 initWithEntityName:v11];

    [v12 setReturnsObjectsAsFaults:0];
    [v12 setFetchLimit:1];
    [v12 setPredicate:*(a1 + 40)];
    v50 = 0;
    v13 = [v3 executeFetchRequest:v12 error:&v50];
    v14 = v50;
    [WeakRetained _logError:v14 at:@"resolvedCloudData - fetch (existing)"];
    v15 = [WeakRetained privacyDelegate];
    v16 = [v13 firstObject];
    if (v16)
    {
      v17 = v16;
      [v16 setPrivacyDelegate:v15];
      [v17 resolveConflictsFromRecord:*(a1 + 32) withResolvers:*(a1 + 48)];
      if (!v14)
      {
LABEL_30:
        if ([v17 hasChanges])
        {
          [WeakRetained mq_incrementCloudVersion];
          v49 = 0;
          [v3 save:&v49];
          v14 = v49;
          [WeakRetained _logError:v14 at:@"resolvedCloudData - save"];
          [WeakRetained mq_signalTransactions];
        }

        else
        {
          v14 = 0;
        }
      }

LABEL_33:
      v44 = [WeakRetained mq_sanitizeError:v14];

      v45 = [v17 mutableCopy];
      v46 = _Block_copy(*(a1 + 72));
      v47 = v46;
      if (v46)
      {
        (*(v46 + 2))(v46, v45, v44);
      }

LABEL_36:
      goto LABEL_37;
    }

    v32 = [MEMORY[0x1E698F550] shared];
    v33 = [v32 verboseLoggingEnabled];

    if (v33)
    {
      v35 = BDSCloudKitDevelopmentLog(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [*(a1 + 32) recordID];
        v37 = [v36 recordName];
        v38 = *(a1 + 32);
        *buf = 138543618;
        v52 = v37;
        v53 = 2112;
        v54 = v38;
        _os_log_impl(&dword_1E45E0000, v35, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager resolvedCloudDataForCloudData:%{public}@ did not find existing record.  Creating new from %@\", buf, 0x16u);
      }
    }

    v39 = [*(a1 + 56) dataMapper];

    if (v39)
    {
      v40 = [*(a1 + 56) dataMapper];
      v41 = [v40 cloudDataFromRecord:*(a1 + 32)];

      if (v41)
      {
LABEL_26:
        v42 = MEMORY[0x1E695D5B8];
        v43 = [WeakRetained entityName];
        v17 = [v42 insertNewObjectForEntityForName:v43 inManagedObjectContext:v3];

        [v17 setPrivacyDelegate:v15];
        [v41 setPrivacyDelegate:v15];
        [v17 configureFromCloudData:v41 withMergers:*(a1 + 64)];
        goto LABEL_29;
      }
    }

    else
    {
      v41 = [objc_alloc(objc_msgSend(WeakRetained "mutableClass"))];
      if (v41)
      {
        goto LABEL_26;
      }
    }

    v17 = 0;
LABEL_29:

    if (!v14)
    {
      goto LABEL_30;
    }

    goto LABEL_33;
  }

  v18 = _Block_copy(*(a1 + 72));
  v19 = v18;
  if (v18)
  {
    (*(v18 + 2))(v18, 0, 0);
  }

LABEL_37:
}

void sub_1E464C9E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E464CA04(uint64_t a1)
{
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0);
  }
}

void sub_1E464CA7C(uint64_t a1)
{
  v106 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v1 = [WeakRetained moc];
  if (!v1)
  {
    v59 = _Block_copy(*(a1 + 64));
    v60 = v59;
    if (v59)
    {
      (*(v59 + 2))(v59, 0, 0, 0);
    }

    goto LABEL_81;
  }

  v67 = [WeakRetained privacyDelegate];
  v68 = [MEMORY[0x1E695DF70] array];
  v2 = BDSCloudKitLog(v68);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = MEMORY[0x1E695DF70];
    v4 = *(a1 + 32);
    v5 = objc_alloc_init(v3);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1E4650050;
    v101 = &unk_1E875B598;
    *v102 = v5;
    v6 = v5;
    [v4 enumerateObjectsUsingBlock:buf];
    v7 = [v6 componentsJoinedByString:{@", "}];

    *buf = 138543362;
    *&buf[4] = v7;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager #recordChange resolveConflictsForRecords: %{public}@", buf, 0xCu);
  }

  v75 = [*(a1 + 32) count];
  v71 = objc_opt_new();
  v70 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v80 = objc_opt_new();
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v8 = *(a1 + 32);
  v9 = [v8 countByEnumeratingWithState:&v95 objects:v105 count:16];
  if (v9)
  {
    v10 = *v96;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v96 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v95 + 1) + 8 * i);
        v13 = [v12 encryptedValuesByKey];
        v14 = [v13 objectForKeyedSubscript:@"localRecordIDEncrypted"];

        if (!v14)
        {
          v14 = [v12 valueForKey:@"localRecordID"];
          if (!v14)
          {
            v15 = BDSCloudKitLog(0);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = v12;
              _os_log_error_impl(&dword_1E45E0000, v15, OS_LOG_TYPE_ERROR, "CKRecord unexpected with no local identifier: %{public}@", buf, 0xCu);
            }

            v14 = @"keyFromMyKitchenDrawer";
          }
        }

        [v80 addObject:v14];
      }

      v9 = [v8 countByEnumeratingWithState:&v95 objects:v105 count:16];
    }

    while (v9);
  }

  v69 = [objc_msgSend(WeakRetained "immutableClass")];
  v16 = [WeakRetained entityName];
  v66 = v16;
  v91 = 0;
  v92 = &v91;
  v93 = 0x2020000000;
  v94 = 0;
  if (!v75)
  {
    v78 = 0;
    goto LABEL_73;
  }

  v65 = 0;
  v76 = 0;
  v78 = 0;
  v17 = 0;
  v73 = 0x7FFFFFFFFFFFFFFFLL;
  v74 = 0;
  do
  {
    context = objc_autoreleasePoolPush();
    v18 = [*(a1 + 32) objectAtIndexedSubscript:v17];
    if ((v17 & 0xF) != 0)
    {
      v19 = v78;
LABEL_20:
      v20 = [BCCloudData localIdentifierFromRecord:v18];
      v21 = [v19 objectForKeyedSubscript:v20];
      if (v21)
      {
        goto LABEL_21;
      }

      v35 = [v70 objectForKeyedSubscript:v20];
      v36 = v35 == 0;

      if (v36)
      {
        goto LABEL_36;
      }

      v21 = [v70 objectForKeyedSubscript:v20];
      v37 = BDSCloudKitLog(v21);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v54 = [v18 recordID];
        v55 = [v54 recordName];
        *buf = 138544386;
        *&buf[4] = v55;
        *&buf[12] = 2160;
        *&buf[14] = 1752392040;
        *&buf[22] = 2112;
        v101 = v20;
        *v102 = 2112;
        *&v102[2] = v21;
        v103 = 2112;
        v104 = v18;
        _os_log_error_impl(&dword_1E45E0000, v37, OS_LOG_TYPE_ERROR, "BCCloudDataManager resolveConflictsForRecords:%{public}@ Already seen (localId: %{mask.hash}@) %@. Updating from %@", buf, 0x34u);
      }

      if (v21)
      {
LABEL_21:
        [v21 setPrivacyDelegate:v67];
        [v21 resolveConflictsFromRecord:v18 withResolvers:*(a1 + 40)];
      }

      else
      {
LABEL_36:
        v38 = [*(a1 + 48) dataMapper];
        v39 = v38 == 0;

        if (v39)
        {
          v41 = [objc_alloc(objc_msgSend(WeakRetained "mutableClass"))];
          if (!v41)
          {
LABEL_52:

            v21 = 0;
            goto LABEL_23;
          }
        }

        else
        {
          v40 = [*(a1 + 48) dataMapper];
          v41 = [v40 cloudDataFromRecord:v18];

          if (!v41)
          {
            goto LABEL_52;
          }
        }

        v42 = [*(a1 + 48) cloudKitController];
        v43 = [v42 configuration];
        v44 = [v43 shouldArchiveData:v41];

        if (!v44)
        {
          v49 = BDSCloudKitLog(v45);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            v56 = [v18 recordID];
            v57 = [v56 recordName];
            *buf = 138543618;
            *&buf[4] = v57;
            *&buf[12] = 2112;
            *&buf[14] = v18;
            _os_log_error_impl(&dword_1E45E0000, v49, OS_LOG_TYPE_ERROR, "BCCloudDataManager resolveConflictsForRecords:%{public}@ configuration did not allow creation of new record from %@", buf, 0x16u);
          }

          goto LABEL_52;
        }

        v46 = BDSCloudKitLog(v45);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = [v18 recordID];
          v48 = [v47 recordName];
          *buf = 138544130;
          *&buf[4] = v48;
          *&buf[12] = 2160;
          *&buf[14] = 1752392040;
          *&buf[22] = 2112;
          v101 = v20;
          *v102 = 2112;
          *&v102[2] = v18;
          _os_log_impl(&dword_1E45E0000, v46, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager resolveConflictsForRecords:%{public}@ (localId: %{mask.hash}@) did not find existing record. Creating new from %@", buf, 0x2Au);
        }

        v21 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:v66 inManagedObjectContext:v1];
        [v70 setObject:v21 forKeyedSubscript:v20];
        [v21 setPrivacyDelegate:v67];
        [v41 setPrivacyDelegate:v67];
        [v21 configureFromCloudData:v41 withMergers:*(a1 + 56)];

        if (!v21)
        {
LABEL_23:
          if (v17 == v76 + v73 - 1)
          {
            if (!v74 && [v1 hasChanges])
            {
              v86 = 0;
              [v1 save:&v86];
              v22 = v86;
              if (v22)
              {
                v23 = v22;
                [WeakRetained _logError:v22 at:@"resolveConflicts - save batch"];
                [v68 removeObjectsInArray:v71];
                v65 = 1;
                v24 = 4;
                v74 = v23;
LABEL_63:

                v78 = v19;
                goto LABEL_64;
              }

              v65 = 1;
            }

            v84 = 0u;
            v85 = 0u;
            v82 = 0u;
            v83 = 0u;
            v50 = v71;
            v51 = [v50 countByEnumeratingWithState:&v82 objects:v99 count:16];
            if (v51)
            {
              v52 = *v83;
              do
              {
                for (j = 0; j != v51; ++j)
                {
                  if (*v83 != v52)
                  {
                    objc_enumerationMutation(v50);
                  }

                  [v1 refreshObject:*(*(&v82 + 1) + 8 * j) mergeChanges:0];
                }

                v51 = [v50 countByEnumeratingWithState:&v82 objects:v99 count:16];
              }

              while (v51);
            }

            [v50 removeAllObjects];
            [v70 removeAllObjects];
          }

          v24 = 0;
          goto LABEL_63;
        }
      }

      [v68 addObject:v21];
      [v71 addObject:v21];
      goto LABEL_23;
    }

    v25 = objc_autoreleasePoolPush();
    v26 = v75 - v17;
    if ((v75 - v17) >= 0x10)
    {
      v26 = 16;
    }

    v76 = v26;
    v27 = objc_alloc(MEMORY[0x1E695D5E0]);
    v28 = [WeakRetained entityName];
    v29 = [v27 initWithEntityName:v28];

    v30 = [v80 subarrayWithRange:{v17, v76}];
    v31 = [v30 mutableCopy];

    [v31 removeObject:@"keyFromMyKitchenDrawer"];
    v32 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", v69, v31];
    [v29 setPredicate:v32];

    v90 = v74;
    v33 = [v1 executeFetchRequest:v29 error:&v90];
    v34 = v90;

    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = sub_1E464D708;
    v87[3] = &unk_1E875B4D0;
    v88 = v69;
    v89 = &v91;
    v19 = [v33 bds_dictionaryUsingPropertyAsKey:v88 uniquingKeysWith:v87];

    if (v34)
    {
      [WeakRetained _logError:v34 at:@"resolveConflicts - fetch"];
      v24 = 4;
    }

    else
    {
      v24 = 0;
    }

    objc_autoreleasePoolPop(v25);
    if (!v34)
    {
      v73 = v17;
      v74 = 0;
      goto LABEL_20;
    }

    v78 = v19;
    v73 = v17;
    v74 = v34;
LABEL_64:

    objc_autoreleasePoolPop(context);
    if (v24)
    {
      break;
    }

    ++v17;
  }

  while (v17 != v75);
  v58 = v74;
  if ((v65 & (v74 == 0)) != 1)
  {
    goto LABEL_74;
  }

  [WeakRetained mq_incrementCloudVersion];
  v16 = [v1 hasChanges];
  if (v16)
  {
    v81 = 0;
    [v1 save:&v81];
    v58 = v81;
    v16 = [WeakRetained _logError:v58 at:@"resolveConflicts - save remaining"];
    goto LABEL_74;
  }

LABEL_73:
  v58 = 0;
LABEL_74:
  if (*(v92 + 6))
  {
    v61 = BDSCloudKitLog(v16);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
    {
      sub_1E47095E4();
    }
  }

  [WeakRetained mq_signalTransactions];
  v62 = [WeakRetained mq_sanitizeError:v58];

  v63 = _Block_copy(*(a1 + 64));
  v64 = v63;
  if (v63)
  {
    (*(v63 + 2))(v63, 1, v68, v62);
  }

  _Block_object_dispose(&v91, 8);
LABEL_81:
}

void sub_1E464D69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1E464D708(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 valueForKey:*(a1 + 32)];
  v8 = BDSCloudKitLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = 141558786;
    v11 = 1752392040;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v5;
    _os_log_error_impl(&dword_1E45E0000, v8, OS_LOG_TYPE_ERROR, "BCCloudDataManager resolveConflictsForRecords: Encountered duplicates for %{mask.hash}@, entry=%@, existing=%@", &v10, 0x2Au);
  }

  ++*(*(*(a1 + 40) + 8) + 24);

  return v5;
}

void sub_1E464D9C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E464D9E8(uint64_t a1)
{
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_1E464DA5C(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained moc];
  v4 = v3;
  if (v3)
  {
    v5 = BDSCloudKitLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1E4709664(a1, v5, v6);
    }

    v7 = objc_alloc(MEMORY[0x1E695D5E0]);
    v8 = [WeakRetained entityName];
    v9 = [v7 initWithEntityName:v8];

    v10 = [*(a1 + 32) valueForKey:@"recordName"];
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"saltedHashedID IN %@", v10];
    [v9 setPredicate:v11];

    v31 = 0;
    v12 = [v4 executeFetchRequest:v9 error:&v31];
    v13 = v31;
    [WeakRetained _logError:v13 at:@"resolveConflicts - failedRecordIDs - fetch"];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v28;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v27 + 1) + 8 * i) setSystemFields:0];
        }

        v16 = [v14 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v16);
    }

    if ([v4 hasChanges])
    {
      v26 = v13;
      [v4 save:&v26];
      v19 = v26;

      [WeakRetained _logError:v19 at:@"resolveConflicts - failedRecordIDs - save"];
      v20 = [WeakRetained syncManager];
      [v20 signalSyncToCK];

      v13 = v19;
    }

    v21 = [WeakRetained mq_sanitizeError:v13];

    v22 = _Block_copy(*(a1 + 40));
    v23 = v22;
    if (v22)
    {
      (*(v22 + 2))(v22, 1, v21);
    }
  }

  else
  {
    v24 = _Block_copy(*(a1 + 40));
    v25 = v24;
    if (v24)
    {
      (*(v24 + 2))(v24, 0, 0);
    }
  }
}

void sub_1E464E23C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1E464E268(uint64_t a1)
{
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_1E47096D8(a1);
  }

  v3 = _Block_copy(*(a1 + 40));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0, 0, 0);
  }
}

void sub_1E464E2EC(uint64_t a1)
{
  v101 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = [WeakRetained mq_cloudSyncVersions];
    v89 = 0;
    v5 = [*(a1 + 32) cloudVersion];
    v6 = [v4 cloudVersion];
    v70 = v4;
    if (v5 <= v6)
    {
      v12 = [*(a1 + 32) historyToken];
      v89 = [*(a1 + 32) historyTokenOffset];
    }

    else
    {
      v7 = BDSCloudKitLog(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(a1 + 40) entityName];
        v9 = v3;
        v10 = *(a1 + 32);
        v11 = [v4 mutableCopy];
        *buf = 138543874;
        v91 = v8;
        v92 = 2114;
        v93 = v10;
        v3 = v9;
        v94 = 2114;
        v95 = v11;
        _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager %{public}@ getChangesSince -- About to reset historyToken, cloudSyncVersions:%{public}@, currentSyncVersions:%{public}@", buf, 0x20u);
      }

      v12 = 0;
    }

    v17 = (a1 + 40);
    v16 = *(a1 + 40);
    v88 = 0;
    v18 = [v16 _fetchHistoryAfterToken:v12 inMoc:v3 error:&v88];
    v19 = v88;
    if (!v19)
    {
      goto LABEL_21;
    }

    v20 = v19;
    v21 = [*v17 _isTokenInvalidError:v19];
    if (!v21)
    {
      goto LABEL_16;
    }

    v22 = BDSCloudKitLog(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      v63 = [*(a1 + 40) entityName];
      v64 = WeakRetained;
      v65 = v3;
      v66 = *(a1 + 32);
      v72 = v18;
      v67 = [v70 mutableCopy];
      *buf = 138544130;
      v91 = v63;
      v92 = 2114;
      v93 = v20;
      v94 = 2114;
      v95 = v66;
      v3 = v65;
      WeakRetained = v64;
      v96 = 2114;
      v97 = v67;
      _os_log_fault_impl(&dword_1E45E0000, v22, OS_LOG_TYPE_FAULT, "BCCloudDataManager %{public}@ getChangesSince -- fetchHistoryAfterToken encountered error: %{public}@. About to reset historyToken, cloudSyncVersions:%{public}@, currentSyncVersions:%{public}@", buf, 0x2Au);

      v18 = v72;
    }

    v89 = 0;
    v23 = *v17;
    v87 = 0;
    v24 = [v23 _fetchHistoryAfterToken:0 inMoc:v3 error:&v87];
    v20 = v87;

    v12 = 0;
    v18 = v24;
    if (v20)
    {
LABEL_16:
      v71 = v18;
      v25 = BDSCloudKitLog(v21);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1E470976C((a1 + 40));
      }

      [WeakRetained _logError:v20 at:@"getChangesSince - fetchHistory error"];
      v26 = [WeakRetained mq_sanitizeError:v20];

      v27 = _Block_copy(*(a1 + 48));
      v28 = v27;
      if (v27)
      {
        (*(v27 + 2))(v27, 0, 0, 0, v26, 0);
      }

      v29 = 0;
      v15 = v70;
    }

    else
    {
LABEL_21:
      v69 = v12;
      v77 = [MEMORY[0x1E695DFA8] set];
      v76 = [MEMORY[0x1E695DFA8] set];
      objc_opt_class();
      v71 = v18;
      if (objc_opt_isKindOfClass())
      {
        v30 = v18;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        obj = [v30 result];
        v31 = [obj countByEnumeratingWithState:&v83 objects:v100 count:16];
        if (v31)
        {
          v32 = v31;
          v68 = v30;
          v74 = v3;
          v33 = 0;
          v78 = 0;
          v34 = *v84;
          while (2)
          {
            v35 = 0;
            v73 = v32;
            do
            {
              if (*v84 != v34)
              {
                objc_enumerationMutation(obj);
              }

              v36 = *(*(&v83 + 1) + 8 * v35);
              v37 = objc_autoreleasePoolPush();
              if ([WeakRetained signalDataChangedTransaction] && v33 > 0x1F)
              {
                objc_autoreleasePoolPop(v37);
                v48 = 1;
                goto LABEL_38;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v38 = v36;
                v39 = a1;
                v40 = *(a1 + 64);
                v41 = WeakRetained;
                v42 = [WeakRetained privacyDelegate];
                v81 = 0;
                v82 = 0;
                v43 = [v38 bds_atOffset:&v89 getAtMost:32 - v33 moc:v74 entityClass:v40 privacyDelegate:v42 updated:&v82 tombstones:&v81];
                v44 = v82;
                v45 = v81;

                if (v43)
                {
                  v46 = [v38 token];

                  v89 = 0;
                  v78 = v46;
                }

                [v76 addObjectsFromArray:v44];
                [v77 addObjectsFromArray:v45];
                v47 = [v76 count];
                v33 = [v77 count] + v47;

                a1 = v39;
                WeakRetained = v41;
                v32 = v73;
              }

              objc_autoreleasePoolPop(v37);
              ++v35;
            }

            while (v32 != v35);
            v32 = [obj countByEnumeratingWithState:&v83 objects:v100 count:16];
            if (v32)
            {
              continue;
            }

            break;
          }

          v48 = 0;
LABEL_38:
          v3 = v74;
          v49 = v78;
          v30 = v68;
        }

        else
        {
          v48 = 0;
          v49 = 0;
        }
      }

      else
      {
        v48 = 0;
        v49 = 0;
      }

      v15 = v70;
      v50 = [v70 syncVersion];
      if (v50 != [v70 cloudVersion])
      {
        [v70 setSyncVersion:{objc_msgSend(v70, "cloudVersion")}];
      }

      if (v49)
      {
        [v70 setHistoryToken:v49];
      }

      [v70 setHistoryTokenOffset:v89];
      if ([v70 hasChanges])
      {
        v51 = [WeakRetained moc];
        v80 = 0;
        [v51 save:&v80];
        v52 = v80;

        [WeakRetained _logError:v52 at:@"getChangesSince - save"];
      }

      v53 = [v70 mutableCopy];
      v54 = BDSCloudKitLog(v53);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = [WeakRetained entityName];
        v56 = [v76 count];
        *buf = 138544386;
        v91 = v55;
        v92 = 2048;
        v93 = v56;
        v94 = 2112;
        v95 = v76;
        v96 = 2114;
        v97 = v53;
        v98 = 1024;
        v99 = v48;
        _os_log_impl(&dword_1E45E0000, v54, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager %{public}@ getChangesSince returning changedObjects:%lu (%@) currentSyncVersions: %{public}@, fetchAgain:%d", buf, 0x30u);
      }

      v79 = v49;

      v58 = BDSCloudKitLog(v57);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v59 = [WeakRetained entityName];
        v60 = [v77 count];
        *buf = 138544386;
        v91 = v59;
        v92 = 2048;
        v93 = v60;
        v94 = 2112;
        v95 = v77;
        v96 = 2114;
        v97 = v53;
        v98 = 1024;
        v99 = v48;
        _os_log_impl(&dword_1E45E0000, v58, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager %{public}@ getChangesSince returning deletedObjects:%lu (%@) currentSyncVersions: %{public}@, fetchAgain:%d", buf, 0x30u);
      }

      v26 = [WeakRetained mq_sanitizeError:0];
      v61 = _Block_copy(*(a1 + 48));
      v62 = v61;
      v28 = v77;
      if (v61)
      {
        (*(v61 + 2))(v61, v76, v77, v53, v26, v48);
      }

      v12 = v69;
      v29 = v79;
    }
  }

  else
  {
    v13 = BDSCloudKitLog(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1E47097F8(a1);
    }

    v14 = _Block_copy(*(a1 + 48));
    v15 = v14;
    if (v14)
    {
      (*(v14 + 2))(v14, 0, 0, 0, 0, 0);
    }
  }

  kdebug_trace();
}

void sub_1E464ED24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E464ED48(uint64_t a1)
{
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_1E464EDBC(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained moc];
  v4 = v3;
  if (v3)
  {
    v5 = BDSCloudKitLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [WeakRetained entityName];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager %@ #dissociateCloudData", &buf, 0xCu);
    }

    v7 = MEMORY[0x1E695D5E0];
    v8 = [WeakRetained entityName];
    v9 = [v7 fetchRequestWithEntityName:v8];

    [v9 setFetchBatchSize:20];
    v28 = 0;
    v10 = [v4 executeFetchRequest:v9 error:&v28];
    v11 = v28;
    [WeakRetained _logError:v11 at:@"dissociateCloudData - fetch"];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v30 = 0x2020000000;
    v31 = v11 == 0;
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = sub_1E464F0D4;
    v24 = &unk_1E875B548;
    v26 = WeakRetained;
    p_buf = &buf;
    v25 = v4;
    [v10 bds_traverseBatchesOfSize:20 block:&v21];
    if ([WeakRetained signalDataChangedTransaction])
    {
      v12 = [WeakRetained cloudKitController];
      v13 = [v12 transactionManager];
      v14 = [WeakRetained entityName];
      v15 = [WeakRetained notificationName];
      [v13 signalDataChangeTransactionForEntityName:v14 notificationName:v15];
    }

    v16 = [WeakRetained mq_sanitizeError:v11];

    v17 = _Block_copy(*(a1 + 32));
    v18 = v17;
    if (v17)
    {
      (*(v17 + 2))(v17, *(*(&buf + 1) + 24), v16);
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v19 = _Block_copy(*(a1 + 32));
    v20 = v19;
    if (v19)
    {
      (*(v19 + 2))(v19, 0, 0);
    }
  }
}

void sub_1E464F0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E464F0D4(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        [v8 setSyncGeneration:0];
        [v8 setValue:0 forKey:@"saltedHashedID"];
        [v8 setSystemFields:0];
        [v8 setCkSystemFields:0];
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  if ([*(a1 + 32) hasChanges])
  {
    v9 = *(a1 + 32);
    v22 = 0;
    [v9 save:&v22];
    v10 = v22;
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 24);
    if (v10)
    {
      v12 = 0;
    }

    *(v11 + 24) = v12;
    [*(a1 + 40) _logError:v10 at:@"dissociateCloudData - save"];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v3;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(a1 + 32) refreshObject:*(*(&v18 + 1) + 8 * j) mergeChanges:{0, v18}];
      }

      v15 = [v13 countByEnumeratingWithState:&v18 objects:v27 count:16];
    }

    while (v15);
  }
}

void sub_1E464F4E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_1E464F514(uint64_t a1)
{
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_ERROR, "No managed object context! #hasSaltChangedWithCompletion", v5, 2u);
  }

  v3 = _Block_copy(*(a1 + 32));
  if (v3)
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1002 userInfo:0];
    v3[2](v3, 0, v4);
  }
}

void sub_1E464F5D8(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E695D5E0]);
    v5 = [WeakRetained entityName];
    v6 = [v4 initWithEntityName:v5];

    [v6 setReturnsObjectsAsFaults:0];
    [v6 setFetchLimit:1];
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"syncGeneration >= 1"];
    [v6 setPredicate:v7];

    v8 = [MEMORY[0x1E698F550] shared];
    v9 = [v8 verboseLoggingEnabled];

    if (v9)
    {
      v11 = BDSCloudKitDevelopmentLog(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v27 = v6;
        _os_log_impl(&dword_1E45E0000, v11, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager hasSaltChangedWithCompletion:%{public}@\", buf, 0xCu);
      }
    }

    v25 = 0;
    v12 = [v3 executeFetchRequest:v6 error:&v25];
    v13 = v25;
    if ([v12 count])
    {
      v14 = [v12 firstObject];
      v15 = [WeakRetained privacyDelegate];
      [v14 setPrivacyDelegate:v15];

      v16 = [v14 hasValidSalt] ^ 1;
      v17 = [MEMORY[0x1E698F550] shared];
      v18 = [v17 verboseLoggingEnabled];

      if (v18)
      {
        v20 = BDSCloudKitDevelopmentLog(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v27 = v14;
          v28 = 1024;
          v29 = v16;
          _os_log_impl(&dword_1E45E0000, v20, OS_LOG_TYPE_DEFAULT, "\\Testing with %@  %{BOOL}d\", buf, 0x12u);
        }
      }

      v21 = _Block_copy(*(a1 + 32));
      v22 = v21;
      if (v21)
      {
        (*(v21 + 2))(v21, v16, 0);
      }
    }

    else
    {
      v14 = _Block_copy(*(a1 + 32));
      if (!v14)
      {
LABEL_20:

        goto LABEL_21;
      }

      v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1003 userInfo:0];
      (v14)[2](v14, 0, v22);
    }

    goto LABEL_20;
  }

  v23 = BDSCloudKitLog(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = [WeakRetained entityName];
    *buf = 138412290;
    v27 = v24;
    _os_log_impl(&dword_1E45E0000, v23, OS_LOG_TYPE_ERROR, "BCCloudDataManager %@ #hasSaltChangedWithCompletion no moc", buf, 0xCu);
  }

  v6 = _Block_copy(*(a1 + 32));
  if (v6)
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1002 userInfo:0];
    (*(v6 + 2))(v6, 0, v13);
LABEL_21:
  }
}

void sub_1E464FB18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E464FB48(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained moc];
  v3 = v2;
  if (v2)
  {
    v4 = BDSCloudKitLog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1E470988C(WeakRetained);
    }

    v5 = objc_alloc(MEMORY[0x1E695D5E0]);
    v6 = [WeakRetained entityName];
    v7 = [v5 initWithEntityName:v6];

    [v7 setFetchBatchSize:64];
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"editGeneration > syncGeneration"];
    [v7 setPredicate:v8];

    v33 = 0;
    v9 = [v3 executeFetchRequest:v7 error:&v33];
    v10 = v33;
    [WeakRetained _logError:v10 at:@"diagnosticDirtyCloudDataInfos"];
    v11 = [v9 count];
    if (v11)
    {
      v25 = v10;
      v26 = v7;
      v12 = BDSCloudKitLog(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [WeakRetained entityName];
        v14 = [v9 count];
        *buf = 138412546;
        v36 = v13;
        v37 = 2048;
        v38 = v14;
        _os_log_impl(&dword_1E45E0000, v12, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager diagnosticDirtyCloudDataInfos %@, returning %lu results", buf, 0x16u);
      }

      v27 = WeakRetained;

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v15 = v9;
      v16 = [v15 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v30;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v30 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v29 + 1) + 8 * i);
            v21 = [v20 identifier];
            objc_opt_class();
            v22 = [v20 valueForKey:@"saltedHashedID"];
            v23 = BUDynamicCast();

            v24 = [[BDSCloudSyncDiagnosticCloudDataInfo alloc] initWithIdentifier:v21 saltedHashedID:v23];
            [*(*(*(a1 + 32) + 8) + 40) addObject:v24];
          }

          v17 = [v15 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v17);
      }

      WeakRetained = v27;
      v7 = v26;
      v10 = v25;
    }
  }
}

void sub_1E4650050(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [v4 recordID];
  v6 = [v5 recordName];
  v7 = [v4 recordChangeTag];

  v8 = [v3 stringWithFormat:@"%@-%@", v6, v7];

  [*(a1 + 32) addObject:v8];
}

void sub_1E4650124(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t sub_1E465014C()
{
  v1 = *v0;
  sub_1E470B8FC();
  MEMORY[0x1E6916620](v1);
  return sub_1E470B91C();
}

uint64_t sub_1E4650194(uint64_t a1)
{
  v2 = *v1;
  sub_1E470B8FC();
  MEMORY[0x1E6916620](v2);
  return sub_1E470B91C();
}

uint64_t sub_1E46501D8()
{
  if (*v0)
  {
    return 0x656E654774696465;
  }

  else
  {
    return 0x6174614473796164;
  }
}

uint64_t sub_1E4650220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6174614473796164 && a2 == 0xE800000000000000;
  if (v6 || (sub_1E470B84C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656E654774696465 && a2 == 0xEE006E6F69746172)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E470B84C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E4650310(uint64_t a1)
{
  v2 = sub_1E46505C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E465034C(uint64_t a1)
{
  v2 = sub_1E46505C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _ReadingHistoryUpdateProperties.encode(to:)(void *a1)
{
  v4 = sub_1E4650534(&qword_1ECF74160, &qword_1E471AF40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - v7;
  v9 = *v1;
  v11 = v1[1];
  sub_1E465057C(a1, a1[3]);
  sub_1E46505C0();

  sub_1E470B93C();
  v14 = v9;
  v13 = 0;
  sub_1E4650534(&qword_1ECF74170, &qword_1E471AF48);
  sub_1E4650614();
  sub_1E470B7FC();

  if (!v2)
  {
    v12 = 1;
    sub_1E470B7EC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1E4650534(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_1E465057C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1E46505C0()
{
  result = qword_1ECF74168;
  if (!qword_1ECF74168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74168);
  }

  return result;
}

unint64_t sub_1E4650614()
{
  result = qword_1ECF74178;
  if (!qword_1ECF74178)
  {
    sub_1E46506D0(&qword_1ECF74170, &qword_1E471AF48);
    sub_1E4650A10(&qword_1ECF74180, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1E4650718();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74178);
  }

  return result;
}

uint64_t sub_1E46506D0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1E4650718()
{
  result = qword_1ECF74188;
  if (!qword_1ECF74188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74188);
  }

  return result;
}

uint64_t _ReadingHistoryUpdateProperties.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1E4650534(&qword_1ECF74190, &qword_1E471AF50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v13[-v8];
  sub_1E465057C(a1, a1[3]);
  sub_1E46505C0();
  sub_1E470B92C();
  if (v2)
  {
    return sub_1E4658A0C(a1);
  }

  sub_1E4650534(&qword_1ECF74170, &qword_1E471AF48);
  v13[15] = 0;
  sub_1E4650954();
  sub_1E470B78C();
  v10 = v14;
  v13[14] = 1;
  v11 = sub_1E470B77C();
  (*(v6 + 8))(v9, v5);
  *a2 = v10;
  a2[1] = v11;

  sub_1E4658A0C(a1);
}

unint64_t sub_1E4650954()
{
  result = qword_1ECF74198;
  if (!qword_1ECF74198)
  {
    sub_1E46506D0(&qword_1ECF74170, &qword_1E471AF48);
    sub_1E4650A10(&qword_1ECF741A0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1E4650A58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74198);
  }

  return result;
}

uint64_t sub_1E4650A10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4650A58()
{
  result = qword_1ECF741A8;
  if (!qword_1ECF741A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF741A8);
  }

  return result;
}

uint64_t ReadingHistoryUpdate.value.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BDSReadingHistoryUpdate_value + 8);
  *a1 = *(v1 + OBJC_IVAR___BDSReadingHistoryUpdate_value);
  a1[1] = v2;
}

id ReadingHistoryUpdate.__allocating_init(value:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *a1;
  v5 = a1[1];
  *&v3[OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days] = 0;
  v6 = &v3[OBJC_IVAR___BDSReadingHistoryUpdate_value];
  *v6 = v4;
  *(v6 + 1) = v5;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id ReadingHistoryUpdate.init(value:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v4 = *a1;
  v5 = a1[1];
  *&v1[OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days] = 0;
  v6 = &v1[OBJC_IVAR___BDSReadingHistoryUpdate_value];
  *v6 = v4;
  *(v6 + 1) = v5;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id ReadingHistoryUpdate.__allocating_init(days:crdtContext:editGeneration:)(uint64_t a1, void *a2, uint64_t a3)
{
  v130 = a3;
  v150 = a2;
  v4 = sub_1E470AB3C();
  v159 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for ReadingHistoryDay(0);
  v138 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153, v8);
  v143 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v160 = &v129 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v137 = &v129 - v15;
  v16 = sub_1E4709CCC();
  v161 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v142 = &v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v132 = &v129 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v129 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v136 = &v129 - v29;
  v30 = sub_1E4650534(&unk_1ECF741C0, &qword_1E471AF58);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = &v129 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v129 - v36;
  v38 = *(a1 + 16);
  v39 = sub_1E4650A10(&qword_1ECF75D50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  v133 = MEMORY[0x1E6915B80](v38, v16, MEMORY[0x1E6969080], v39);
  v41 = 0;
  v42 = 0;
  v140 = a1;
  v43 = a1;
  v44 = v26;
  v45 = *(v43 + 64);
  v134 = v43 + 64;
  v46 = 1 << *(v43 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & v45;
  v49 = (v46 + 63) >> 6;
  v157 = (v17 + 32);
  v158 = (v17 + 16);
  v148 = *MEMORY[0x1E6995288];
  v147 = (v159 + 104);
  v146 = (v159 + 8);
  v139 = v17;
  v50 = (v17 + 8);
  v51 = v7;
  v145 = v50;
  *&v40 = 136315394;
  v135 = v40;
  v149 = v4;
  v155 = v37;
  v156 = v7;
  v151 = v33;
  v152 = v44;
  v144 = v49;
  while (2)
  {
    v52 = v41;
    if (v48)
    {
      while (1)
      {
        v154 = v42;
        v54 = v52;
LABEL_16:
        v57 = __clz(__rbit64(v48));
        v48 &= v48 - 1;
        v58 = v57 | (v54 << 6);
        v59 = v140;
        v60 = v139;
        (*(v139 + 16))(v136, *(v140 + 48) + *(v139 + 72) * v58, v161);
        v61 = v137;
        sub_1E4651918(*(v59 + 56) + *(v138 + 72) * v58, v137);
        v62 = sub_1E4650534(&qword_1ECF741D0, &unk_1E471AF60);
        v63 = *(v62 + 48);
        v33 = v151;
        (*(v60 + 32))();
        sub_1E465197C(v61, &v33[v63]);
        (*(*(v62 - 8) + 56))(v33, 0, 1, v62);
        v56 = v54;
        v44 = v152;
        v42 = v154;
        v37 = v155;
        v51 = v156;
LABEL_17:
        sub_1E46574C0(v33, v37, &unk_1ECF741C0, &qword_1E471AF58);
        v64 = sub_1E4650534(&qword_1ECF741D0, &unk_1E471AF60);
        if ((*(*(v64 - 8) + 48))(v37, 1, v64) == 1)
        {

          v123 = v131;
          v124 = objc_allocWithZone(v131);
          *&v124[OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days] = 0;
          v125 = &v124[OBJC_IVAR___BDSReadingHistoryUpdate_value];
          v126 = v130;
          *v125 = v133;
          v125[1] = v126;
          v167.receiver = v124;
          v167.super_class = v123;
          v127 = objc_msgSendSuper2(&v167, sel_init);

          return v127;
        }

        v159 = v56;
        v65 = *(v64 + 48);
        v66 = v44;
        v67 = v161;
        (*v157)(v44, v37, v161);
        sub_1E465197C(&v37[v65], v160);
        v68 = v149;
        (*v147)(v51, v148, v149);
        sub_1E4650A10(&qword_1ECF741D8, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);
        v69 = sub_1E470ABAC();
        if (!v42)
        {
          break;
        }

        (*v146)(v51, v68);
        v71 = sub_1E470B2AC();
        if (qword_1EE2ADC90 != -1)
        {
          swift_once();
        }

        v72 = qword_1EE2ADC98;
        v73 = v142;
        (*v158)(v142, v66, v67);
        v74 = v160;
        v75 = v143;
        sub_1E4651918(v160, v143);
        if (os_log_type_enabled(v72, v71))
        {
          v76 = swift_slowAlloc();
          v154 = swift_slowAlloc();
          v166[0] = v154;
          *v76 = v135;
          sub_1E4650A10(&qword_1ECF741E0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
          v77 = sub_1E470B81C();
          v141 = v71;
          v78 = v77;
          v80 = v79;
          v81 = *v145;
          (*v145)(v73, v161);
          v82 = sub_1E4654D04(v78, v80, v166);

          *(v76 + 4) = v82;
          *(v76 + 12) = 2080;
          v163 = sub_1E470AD8C();
          v164 = sub_1E470B81C();
          v165 = v83;
          MEMORY[0x1E6915D10](47, 0xE100000000000000);
          sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
          sub_1E470A62C();
          v162 = v163;
          v84 = sub_1E470B81C();
          MEMORY[0x1E6915D10](v84);

          v85 = v164;
          v86 = v165;
          sub_1E4654824(v75);
          v87 = sub_1E4654D04(v85, v86, v166);
          v33 = v151;

          *(v76 + 14) = v87;
          _os_log_impl(&dword_1E45E0000, v72, v141, "ReadingHistoryUpdate: Failed to serialize entry for %s: %s", v76, 0x16u);
          v88 = v154;
          swift_arrayDestroy();
          v44 = v152;
          MEMORY[0x1E6917530](v88, -1, -1);
          MEMORY[0x1E6917530](v76, -1, -1);
          sub_1E4654824(v74);
          v81(v44, v161);
          v42 = 0;
          v52 = v159;
          v37 = v155;
          v51 = v156;
          v49 = v144;
          if (!v48)
          {
            goto LABEL_8;
          }
        }

        else
        {
          sub_1E4654824(v75);
          v53 = *v145;
          (*v145)(v73, v67);
          sub_1E4654824(v74);
          v53(v66, v67);
          v42 = 0;
          v52 = v159;
          v37 = v155;
          v51 = v156;
          v49 = v144;
          v44 = v66;
          if (!v48)
          {
            goto LABEL_8;
          }
        }
      }

      v90 = v69;
      v91 = v67;
      v92 = v70;
      (*v146)(v51, v68);
      v93 = *v158;
      v94 = v132;
      (*v158)(v132, v66, v91);
      v95 = v90;
      v96 = v92;
      sub_1E46552AC(v90, v92);
      v97 = v133;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v164 = v97;
      v99 = sub_1E4655300(v94);
      v101 = *(v97 + 16);
      v102 = (v100 & 1) == 0;
      v103 = __OFADD__(v101, v102);
      v104 = v101 + v102;
      if (v103)
      {
        goto LABEL_37;
      }

      v105 = v100;
      if (*(v97 + 24) >= v104)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v122 = v99;
          sub_1E46571E0();
          v99 = v122;
        }
      }

      else
      {
        sub_1E4655538(v104, isUniquelyReferenced_nonNull_native);
        v99 = sub_1E4655300(v132);
        if ((v105 & 1) != (v106 & 1))
        {
          goto LABEL_39;
        }
      }

      v41 = v159;
      v154 = 0;
      v107 = v164;
      v133 = v164;
      if (v105)
      {
        v108 = (*(v164 + 56) + 16 * v99);
        v109 = *v108;
        v110 = v108[1];
        *v108 = v95;
        v108[1] = v96;
        sub_1E465746C(v109, v110);
        sub_1E465746C(v95, v96);
        v111 = *v145;
        v112 = v161;
        (*v145)(v132, v161);
        sub_1E4654824(v160);
        v44 = v152;
        v111(v152, v112);
        v37 = v155;
        v51 = v156;
        v33 = v151;
        v49 = v144;
        v42 = v154;
        continue;
      }

      *(v164 + 8 * (v99 >> 6) + 64) |= 1 << v99;
      v113 = v139;
      v114 = v99;
      v115 = v132;
      v116 = v161;
      v93((*(v107 + 48) + *(v139 + 72) * v99), v132, v161);
      v117 = (*(v133 + 56) + 16 * v114);
      v118 = v133;
      *v117 = v95;
      v117[1] = v96;
      sub_1E465746C(v95, v96);
      v119 = *(v113 + 8);
      (v119)(v115, v116);
      sub_1E4654824(v160);
      v44 = v152;
      v119();
      v120 = *(v118 + 16);
      v103 = __OFADD__(v120, 1);
      v121 = v120 + 1;
      if (!v103)
      {
        *(v118 + 16) = v121;
        v37 = v155;
        v51 = v156;
        v33 = v151;
        v49 = v144;
        v41 = v159;
        v42 = v154;
        continue;
      }
    }

    else
    {
LABEL_8:
      if (v49 <= v52 + 1)
      {
        v55 = v52 + 1;
      }

      else
      {
        v55 = v49;
      }

      v56 = v55 - 1;
      while (1)
      {
        v54 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          break;
        }

        if (v54 >= v49)
        {
          v89 = sub_1E4650534(&qword_1ECF741D0, &unk_1E471AF60);
          (*(*(v89 - 8) + 56))(v33, 1, 1, v89);
          v48 = 0;
          goto LABEL_17;
        }

        v48 = *(v134 + 8 * v54);
        ++v52;
        if (v48)
        {
          v154 = v42;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
    }

    break;
  }

  __break(1u);
LABEL_39:
  result = sub_1E470B86C();
  __break(1u);
  return result;
}

uint64_t sub_1E4651918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistoryDay(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E465197C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistoryDay(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ReadingHistoryUpdate.days.getter()
{
  v1 = OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days;
  if (*(v0 + OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days))
  {
    v2 = *(v0 + OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days);
  }

  else
  {
    v2 = sub_1E4651AD8(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1E4651A48@<X0>(uint64_t *a1@<X8>)
{
  result = ReadingHistoryUpdate.days.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1E4651A74(uint64_t *a1, void *a2)
{
  *(*a2 + OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days) = *a1;
}

uint64_t sub_1E4651AD8(uint64_t a1)
{
  v2 = type metadata accessor for ReadingHistoryDay(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v130 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E4650534(&qword_1ECF74200, &qword_1E471AF80);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v129 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v132 = &v128 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v128 - v14;
  v16 = sub_1E4709CCC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v141 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v133 = &v128 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v128 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v137 = &v128 - v29;
  v30 = sub_1E4650534(&qword_1ECF741F0, &qword_1E471AF70);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v147 = &v128 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v146 = &v128 - v35;
  v36 = *(a1 + OBJC_IVAR___BDSReadingHistoryUpdate_value);
  v37 = *(v36 + 16);
  v38 = sub_1E4650A10(&qword_1ECF75D50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  v153 = v2;
  v134 = MEMORY[0x1E6915B80](v37, v16, v2, v38);
  v39 = *(v36 + 64);
  v135 = v36 + 64;
  v40 = 1 << *(v36 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & v39;
  v43 = (v40 + 63) >> 6;
  v151 = (v17 + 32);
  v152 = (v17 + 16);
  v138 = v17;
  v144 = (v17 + 8);
  v145 = (v3 + 56);
  v44 = v26;
  v128 = v3;
  v131 = (v3 + 48);
  v139 = v36;

  v45 = 0;
  v46 = 0;
  *&v47 = 136315138;
  v136 = v47;
  v148 = v15;
  v149 = v44;
  v154 = v16;
  for (i = v43; ; v43 = i)
  {
LABEL_4:
    v48 = v45;
    if (!v42)
    {
LABEL_8:
      if (v43 <= (v48 + 1))
      {
        v51 = (v48 + 1);
      }

      else
      {
        v51 = v43;
      }

      v45 = (v51 - 1);
      v52 = v147;
      while (1)
      {
        v50 = (v48 + 1);
        if (__OFADD__(v48, 1))
        {
          break;
        }

        if (v50 >= v43)
        {
          v83 = sub_1E4650534(&qword_1ECF741F8, &qword_1E471AF78);
          (*(*(v83 - 8) + 56))(v52, 1, 1, v83);
          v42 = 0;
          goto LABEL_17;
        }

        v42 = *(v135 + 8 * v50);
        ++v48;
        if (v42)
        {
          v150 = v46;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    while (1)
    {
      v150 = v46;
      v50 = v48;
LABEL_16:
      v53 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
      v54 = v53 | (v50 << 6);
      v56 = v138;
      v55 = v139;
      (*(v138 + 16))(v137, *(v139 + 48) + *(v138 + 72) * v54, v16);
      v57 = (*(v55 + 56) + 16 * v54);
      v58 = *v57;
      v59 = v57[1];
      v60 = sub_1E4650534(&qword_1ECF741F8, &qword_1E471AF78);
      v61 = &v147[*(v60 + 48)];
      v52 = v147;
      (*(v56 + 32))();
      *v61 = v58;
      v61[1] = v59;
      (*(*(v60 - 8) + 56))(v52, 0, 1, v60);
      sub_1E46552AC(v58, v59);
      v45 = v50;
      v15 = v148;
      v46 = v150;
LABEL_17:
      v62 = v146;
      sub_1E46574C0(v52, v146, &qword_1ECF741F0, &qword_1E471AF70);
      v63 = sub_1E4650534(&qword_1ECF741F8, &qword_1E471AF78);
      v64 = (*(*(v63 - 8) + 48))(v62, 1, v63);
      v65 = v149;
      if (v64 == 1)
      {

        return v134;
      }

      v66 = (v62 + *(v63 + 48));
      v67 = *v66;
      v68 = v66[1];
      v16 = v154;
      (*v151)(v149, v62, v154);
      sub_1E46552AC(v67, v68);
      sub_1E4650A10(&qword_1ECF741D8, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);
      sub_1E470ABBC();
      if (!v46)
      {
        break;
      }

      (*v145)(v15, 1, 1, v153);
      v69 = sub_1E470B2AC();
      if (qword_1EE2ADC90 != -1)
      {
        swift_once();
      }

      v70 = qword_1EE2ADC98;
      v71 = v141;
      (*v152)(v141, v65, v16);
      if (os_log_type_enabled(v70, v69))
      {
        v72 = swift_slowAlloc();
        v142 = v67;
        v73 = v72;
        v74 = swift_slowAlloc();
        v155[0] = v74;
        *v73 = v136;
        sub_1E4650A10(&qword_1ECF741E0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
        v75 = sub_1E470B81C();
        v77 = v76;
        v150 = v45;
        v140 = v68;
        v78 = *v144;
        (*v144)(v71, v154);
        v79 = v75;
        v80 = v149;
        v81 = sub_1E4654D04(v79, v77, v155);
        v15 = v148;

        *(v73 + 4) = v81;
        _os_log_impl(&dword_1E45E0000, v70, v69, "ReadingHistoryUpdate: Failed to deserialize entry for %s", v73, 0xCu);
        sub_1E4658A0C(v74);
        v82 = v74;
        v16 = v154;
        MEMORY[0x1E6917530](v82, -1, -1);
        MEMORY[0x1E6917530](v73, -1, -1);
        sub_1E465746C(v142, v140);
        sub_1E4657598(v15);
        v78(v80, v16);
        v46 = 0;
        v48 = v150;
        v43 = i;
        if (!v42)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_1E465746C(v67, v68);
        v49 = *v144;
        (*v144)(v71, v16);
        sub_1E4657598(v15);
        v49(v65, v16);
        v46 = 0;
        v48 = v45;
        v43 = i;
        if (!v42)
        {
          goto LABEL_8;
        }
      }
    }

    v142 = v67;
    v84 = v16;
    v85 = v153;
    v140 = *v145;
    v140(v15, 0, 1, v153);
    v86 = v15;
    v87 = *v152;
    v88 = v133;
    (*v152)(v133, v65, v84);
    v89 = v86;
    v90 = v132;
    sub_1E4657528(v89, v132);
    if ((*v131)(v90, 1, v85) != 1)
    {
      break;
    }

    sub_1E4657598(v90);
    v91 = v134;
    v92 = sub_1E4655300(v88);
    if (v93)
    {
      v94 = v92;
      v150 = 0;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v155[0] = v91;
      v15 = v148;
      v96 = v91;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1E465796C();
        v96 = v155[0];
      }

      v97 = *(v138 + 8);
      v98 = v154;
      v97(*(v96 + 48) + *(v138 + 72) * v94, v154);
      sub_1E465197C(*(v96 + 56) + *(v128 + 72) * v94, v129);
      v134 = v96;
      sub_1E46FFA10(v94, v96);
      sub_1E465746C(v142, v68);
      v97(v133, v98);
      sub_1E4657598(v15);
      v97(v65, v98);
      v99 = 0;
      v46 = v150;
    }

    else
    {
      sub_1E465746C(v142, v68);
      v113 = *v144;
      v114 = v154;
      (*v144)(v88, v154);
      v15 = v148;
      sub_1E4657598(v148);
      v113(v65, v114);
      v99 = 1;
    }

    v115 = v129;
    v140(v129, v99, 1, v153);
    sub_1E4657598(v115);
    v16 = v154;
  }

  sub_1E465197C(v90, v130);
  v100 = v134;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v102 = v88;
  v103 = v101;
  v155[0] = v100;
  v104 = sub_1E4655300(v102);
  v106 = *(v100 + 16);
  v107 = (v105 & 1) == 0;
  v108 = __OFADD__(v106, v107);
  v109 = v106 + v107;
  if (v108)
  {
    goto LABEL_44;
  }

  v110 = v105;
  if (*(v100 + 24) >= v109)
  {
    v112 = v142;
    if ((v103 & 1) == 0)
    {
      v126 = v104;
      sub_1E465796C();
      v104 = v126;
    }
  }

  else
  {
    sub_1E4655920(v109, v103);
    v104 = sub_1E4655300(v133);
    v112 = v142;
    if ((v110 & 1) != (v111 & 1))
    {
      goto LABEL_46;
    }
  }

  v16 = v154;
  v116 = v155[0];
  v134 = v155[0];
  if (v110)
  {
    sub_1E4658A58(v130, *(v155[0] + 56) + *(v128 + 72) * v104);
    sub_1E465746C(v112, v68);
    v117 = *v144;
    (*v144)(v133, v16);
    v15 = v148;
    sub_1E4657598(v148);
    v117(v65, v16);
    v43 = i;
    goto LABEL_4;
  }

  *(v155[0] + 8 * (v104 >> 6) + 64) |= 1 << v104;
  v118 = v138;
  v119 = v104;
  v120 = v133;
  v87((*(v116 + 48) + *(v138 + 72) * v104), v133, v16);
  sub_1E465197C(v130, *(v134 + 56) + *(v128 + 72) * v119);
  sub_1E465746C(v112, v68);
  v121 = *(v118 + 8);
  v122 = v120;
  v123 = v149;
  v121(v122, v16);
  v15 = v148;
  sub_1E4657598(v148);
  v121(v123, v16);
  v124 = *(v134 + 16);
  v108 = __OFADD__(v124, 1);
  v125 = v124 + 1;
  if (!v108)
  {
    *(v134 + 16) = v125;
    v43 = i;
    goto LABEL_4;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_1E470B86C();
  __break(1u);
  return result;
}

uint64_t (*ReadingHistoryUpdate.days.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = ReadingHistoryUpdate.days.getter();
  return sub_1E465283C;
}

uint64_t ReadingHistoryUpdate.description.getter()
{
  sub_1E470B5CC();

  ReadingHistoryUpdate.days.getter();
  sub_1E4709CCC();
  type metadata accessor for ReadingHistoryDay(0);
  sub_1E4650A10(&qword_1ECF75D50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  v0 = sub_1E470AE4C();
  v2 = v1;

  MEMORY[0x1E6915D10](v0, v2);

  MEMORY[0x1E6915D10](0xD000000000000011, 0x80000001E47179B0);
  v3 = sub_1E470B81C();
  MEMORY[0x1E6915D10](v3);

  MEMORY[0x1E6915D10](125, 0xE100000000000000);
  return 0x3A737961647BLL;
}

id ReadingHistoryUpdate.coalesce(newerUpdate:)(char *a1)
{
  ObjectType = swift_getObjectType();
  v91 = sub_1E4709CCC();
  v3 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91, v4);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v83 = &v74 - v9;
  v10 = sub_1E4650534(&qword_1ECF741F0, &qword_1E471AF70);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v86 = &v74 - v16;
  v75 = v1;
  v76 = a1;
  v17 = &v1[OBJC_IVAR___BDSReadingHistoryUpdate_value];
  v18 = *&v1[OBJC_IVAR___BDSReadingHistoryUpdate_value];
  v77 = &a1[OBJC_IVAR___BDSReadingHistoryUpdate_value];
  v78 = v17;
  v19 = *&a1[OBJC_IVAR___BDSReadingHistoryUpdate_value];
  v20 = *(v19 + 64);
  v81 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v80 = (v21 + 63) >> 6;
  v87 = v3 + 16;
  v88 = v3;
  v89 = (v3 + 32);
  v85 = (v3 + 8);

  v84 = v19;

  v24 = 0;
  v25 = &qword_1ECF741F8;
  v90 = v6;
  v82 = v13;
  while (1)
  {
    if (!v23)
    {
      if (v80 <= v24 + 1)
      {
        v30 = v24 + 1;
      }

      else
      {
        v30 = v80;
      }

      v31 = v30 - 1;
      v32 = v86;
      while (1)
      {
        v29 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v29 >= v80)
        {
          v65 = sub_1E4650534(&qword_1ECF741F8, &qword_1E471AF78);
          (*(*(v65 - 8) + 56))(v13, 1, 1, v65);
          v23 = 0;
          goto LABEL_16;
        }

        v23 = *(v81 + 8 * v29);
        ++v24;
        if (v23)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v29 = v24;
LABEL_15:
    v33 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v34 = v33 | (v29 << 6);
    v35 = v84;
    v36 = v88;
    (*(v88 + 16))(v83, *(v84 + 48) + *(v88 + 72) * v34, v91);
    v37 = (*(v35 + 56) + 16 * v34);
    v38 = *v37;
    v39 = v37[1];
    v40 = sub_1E4650534(&qword_1ECF741F8, &qword_1E471AF78);
    v41 = &v82[*(v40 + 48)];
    v42 = *(v36 + 32);
    v43 = v82;
    v42();
    *v41 = v38;
    v41[1] = v39;
    (*(*(v40 - 8) + 56))(v43, 0, 1, v40);
    v44 = v39;
    v13 = v43;
    sub_1E46552AC(v38, v44);
    v31 = v29;
    v32 = v86;
LABEL_16:
    sub_1E46574C0(v13, v32, &qword_1ECF741F0, &qword_1E471AF70);
    v45 = sub_1E4650534(&qword_1ECF741F8, &qword_1E471AF78);
    if ((*(*(v45 - 8) + 48))(v32, 1, v45) == 1)
    {

      v25 = *(v78 + 1);
      v31 = *(v77 + 1);
      if (v31 >= v25)
      {
LABEL_31:
        v70 = ObjectType;
        v71 = objc_allocWithZone(ObjectType);
        *&v71[OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days] = 0;
        v72 = &v71[OBJC_IVAR___BDSReadingHistoryUpdate_value];
        *v72 = v18;
        *(v72 + 1) = v31;
        v93.receiver = v71;
        v93.super_class = v70;
        return objc_msgSendSuper2(&v93, sel_init);
      }

      LOBYTE(v32) = sub_1E470B2AC();
      if (qword_1EE2ADC90 == -1)
      {
LABEL_29:
        v66 = qword_1EE2ADC98;
        if (os_log_type_enabled(qword_1EE2ADC98, v32))
        {
          v67 = v75;
          v68 = v76;
          v69 = swift_slowAlloc();
          *v69 = 134218240;
          *(v69 + 4) = v25;

          *(v69 + 12) = 2048;
          *(v69 + 14) = v31;

          _os_log_impl(&dword_1E45E0000, v66, v32, "ReadingHistoryUpdate: coalesce - unexpected editGeneration=%ld, newerUpdate.editGeneration=%ld", v69, 0x16u);
          MEMORY[0x1E6917530](v69, -1, -1);
        }

        goto LABEL_31;
      }

LABEL_35:
      swift_once();
      goto LABEL_29;
    }

    v46 = v13;
    v47 = (v32 + *(v45 + 48));
    v49 = *v47;
    v48 = v47[1];
    v50 = v90;
    (*v89)(v90, v32, v91);
    sub_1E46552AC(v49, v48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = v18;
    v25 = sub_1E4655300(v50);
    v53 = v18[2];
    v54 = (v52 & 1) == 0;
    v55 = v53 + v54;
    if (__OFADD__(v53, v54))
    {
      goto LABEL_33;
    }

    v56 = v52;
    if (v18[3] < v55)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1E46571E0();
    }

LABEL_23:
    v13 = v46;
    v18 = v92;
    if (v56)
    {
      v26 = (v92[7] + 16 * v25);
      v27 = *v26;
      v28 = v26[1];
      *v26 = v49;
      v26[1] = v48;
      sub_1E465746C(v27, v28);
      sub_1E465746C(v49, v48);
      (*v85)(v90, v91);
    }

    else
    {
      v92[(v25 >> 6) + 8] |= 1 << v25;
      v59 = v88;
      v60 = v90;
      v32 = v91;
      (*(v88 + 16))(v18[6] + *(v88 + 72) * v25, v90, v91);
      v61 = (v18[7] + 16 * v25);
      *v61 = v49;
      v61[1] = v48;
      sub_1E465746C(v49, v48);
      (*(v59 + 8))(v60, v32);
      v62 = v18[2];
      v63 = __OFADD__(v62, 1);
      v64 = v62 + 1;
      if (v63)
      {
        goto LABEL_34;
      }

      v18[2] = v64;
    }

    v24 = v31;
    v25 = &qword_1ECF741F8;
  }

  sub_1E4655538(v55, isUniquelyReferenced_nonNull_native);
  v57 = sub_1E4655300(v90);
  if ((v56 & 1) == (v58 & 1))
  {
    v25 = v57;
    goto LABEL_23;
  }

  result = sub_1E470B86C();
  __break(1u);
  return result;
}

BOOL ReadingHistoryUpdate.hasDelta(from:)(uint64_t a1)
{
  v148 = a1;
  v2 = sub_1E4650534(&qword_1ECF74200, &qword_1E471AF80);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v147 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v127 - v7;
  v146 = type metadata accessor for ReadingHistoryDay(0);
  v9 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146, v10);
  v131 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v132 = &v127 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v129 = &v127 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v144 = &v127 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v127 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v138 = &v127 - v27;
  v153 = sub_1E4709CCC();
  v28 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153, v29);
  v130 = &v127 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v128 = &v127 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v154 = &v127 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v136 = &v127 - v39;
  v40 = sub_1E4650534(&unk_1ECF741C0, &qword_1E471AF58);
  MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v43 = &v127 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v127 - v46;
  v48 = ReadingHistoryUpdate.days.getter();
  v49 = 0;
  v50 = *(v48 + 64);
  v133 = v48 + 64;
  v51 = 1 << *(v48 + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & v50;
  v54 = (v51 + 63) >> 6;
  v141 = (v28 + 16);
  v142 = v48;
  v151 = (v28 + 32);
  v139 = v9;
  v140 = v24;
  v145 = (v9 + 48);
  v137 = v28;
  v149 = (v28 + 8);
  v135 = v43;
  v134 = v47;
  v150 = v8;
  if ((v52 & v50) != 0)
  {
    while (1)
    {
      v55 = v49;
LABEL_11:
      v57 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      v58 = v57 | (v55 << 6);
      v59 = v142;
      v60 = v136;
      v61 = v137;
      v62 = v153;
      (*(v137 + 16))(v136, *(v142 + 48) + *(v137 + 72) * v58, v153);
      v63 = v138;
      sub_1E4651918(*(v59 + 56) + *(v139 + 72) * v58, v138);
      v64 = sub_1E4650534(&qword_1ECF741D0, &unk_1E471AF60);
      v65 = *(v64 + 48);
      v66 = *(v61 + 32);
      v43 = v135;
      v66(v135, v60, v62);
      sub_1E465197C(v63, &v43[v65]);
      (*(*(v64 - 8) + 56))(v43, 0, 1, v64);
      v152 = v55;
      v24 = v140;
      v47 = v134;
LABEL_12:
      sub_1E46574C0(v43, v47, &unk_1ECF741C0, &qword_1E471AF58);
      v67 = sub_1E4650534(&qword_1ECF741D0, &unk_1E471AF60);
      v68 = (*(*(v67 - 8) + 48))(v47, 1, v67);
      v69 = v150;
      if (v68 == 1)
      {
        break;
      }

      v143 = v68;
      v70 = *(v67 + 48);
      v71 = v24;
      v72 = v153;
      (*v151)(v154, v47, v153);
      sub_1E465197C(&v47[v70], v24);
      ReadingHistoryModel.readingHistoryDay(for:)(v69);
      v73 = v147;
      sub_1E4657528(v69, v147);
      if ((*v145)(v73, 1, v146) == 1)
      {
        sub_1E4657598(v73);
        v76 = sub_1E470B2CC();
        if (qword_1EE2ADC90 != -1)
        {
          swift_once();
        }

        v77 = qword_1EE2ADC98;
        v78 = v130;
        v80 = v153;
        v79 = v154;
        (*v141)(v130, v154, v153);
        v81 = v131;
        sub_1E4651918(v24, v131);
        if (os_log_type_enabled(v77, v76))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v155[0] = v83;
          *v82 = 136315394;
          sub_1E4650A10(&qword_1ECF741E0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
          v84 = sub_1E470B81C();
          v85 = v78;
          v87 = v86;
          v88 = *v149;
          (*v149)(v85, v80);
          v89 = sub_1E4654D04(v84, v87, v155);

          *(v82 + 4) = v89;
          *(v82 + 12) = 2080;
          v91 = ReadingHistoryDay.description.getter(v90);
          v93 = v92;
          sub_1E4654824(v81);
          v94 = sub_1E4654D04(v91, v93, v155);

          *(v82 + 14) = v94;
          _os_log_impl(&dword_1E45E0000, v77, v76, "ReadingHistoryUpdate: has forward delta for %s - day=%s modelDay=nil", v82, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E6917530](v83, -1, -1);
          MEMORY[0x1E6917530](v82, -1, -1);

          sub_1E4657598(v150);
          sub_1E4654824(v140);
          (v88)(v154, v80);
        }

        else
        {

          sub_1E4654824(v81);
          v121 = *v149;
          (*v149)(v78, v80);
          sub_1E4657598(v150);
          sub_1E4654824(v24);
          (v121)(v79, v80);
        }

        goto LABEL_30;
      }

      v74 = v144;
      sub_1E465197C(v73, v144);
      sub_1E4650A10(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);
      v1 = v71;
      if (sub_1E470A8AC())
      {
        v95 = sub_1E470B2CC();
        if (qword_1EE2ADC90 != -1)
        {
          swift_once();
        }

        v96 = qword_1EE2ADC98;
        v97 = v128;
        v98 = v154;
        (*v141)(v128, v154, v153);
        v99 = v129;
        sub_1E4651918(v71, v129);
        v100 = v132;
        sub_1E4651918(v74, v132);
        v152 = v96;
        if (os_log_type_enabled(v96, v95))
        {
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          v155[0] = v102;
          *v101 = 136315650;
          sub_1E4650A10(&qword_1ECF741E0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
          v103 = v153;
          v104 = sub_1E470B81C();
          v105 = v97;
          v106 = v99;
          v108 = v107;
          v151 = *v149;
          (v151)(v105, v103);
          v109 = sub_1E4654D04(v104, v108, v155);

          *(v101 + 4) = v109;
          *(v101 + 12) = 2080;
          v111 = ReadingHistoryDay.description.getter(v110);
          v113 = v112;
          sub_1E4654824(v106);
          v114 = sub_1E4654D04(v111, v113, v155);

          *(v101 + 14) = v114;
          *(v101 + 22) = 2080;
          v116 = v132;
          v117 = ReadingHistoryDay.description.getter(v115);
          v119 = v118;
          sub_1E4654824(v116);
          v120 = sub_1E4654D04(v117, v119, v155);

          *(v101 + 24) = v120;
          _os_log_impl(&dword_1E45E0000, v152, v95, "ReadingHistoryUpdate: has forward delta for %s - day=%s modelDay=%s", v101, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1E6917530](v102, -1, -1);
          MEMORY[0x1E6917530](v101, -1, -1);

          sub_1E4654824(v144);
          sub_1E4657598(v69);
          sub_1E4654824(v140);
          (v151)(v154, v103);
        }

        else
        {

          sub_1E4654824(v100);
          sub_1E4654824(v99);
          v122 = v97;
          v123 = *v149;
          v124 = v153;
          (*v149)(v122, v153);
          sub_1E4654824(v74);
          sub_1E4657598(v69);
          sub_1E4654824(v71);
          (v123)(v98, v124);
        }

LABEL_30:
        v1 = v143;
        return v1 != 1;
      }

      sub_1E4654824(v74);
      sub_1E4657598(v69);
      sub_1E4654824(v71);
      v48 = (*v149)(v154, v72);
      v49 = v152;
      v24 = v71;
      if (!v53)
      {
        goto LABEL_5;
      }
    }

    v1 = 1;

    v48 = sub_1E470B2CC();
    if (qword_1EE2ADC90 != -1)
    {
      goto LABEL_33;
    }
  }

  else
  {
LABEL_5:
    if (v54 <= &v49->isa + 1)
    {
      v56 = &v49->isa + 1;
    }

    else
    {
      v56 = v54;
    }

    while (1)
    {
      v55 = (&v49->isa + 1);
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v55 >= v54)
      {
        v152 = (v56 - 1);
        v75 = sub_1E4650534(&qword_1ECF741D0, &unk_1E471AF60);
        (*(*(v75 - 8) + 56))(v43, 1, 1, v75);
        v53 = 0;
        goto LABEL_12;
      }

      v53 = *(v133 + 8 * v55);
      v49 = (v49 + 1);
      if (v53)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_33:
    v126 = v48;
    swift_once();
    v48 = v126;
  }

  sub_1E470A0AC(v48, &dword_1E45E0000, qword_1EE2ADC98, "ReadingHistoryUpdate: no forward delta", 38, 2, MEMORY[0x1E69E7CC0]);
  return v1 != 1;
}

id ReadingHistoryUpdate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ReadingHistoryUpdate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1E4653F0C@<D0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR___BDSReadingHistoryUpdate_value);
  v3 = *v2;
  v4 = v2[1];
  *a1 = v3;
  a1[1] = v4;

  return result;
}

uint64_t *sub_1E4653F28@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  v5 = objc_allocWithZone(v2);
  v6 = *a1;
  v7 = a1[1];
  *&v5[OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days] = 0;
  v8 = &v5[OBJC_IVAR___BDSReadingHistoryUpdate_value];
  *v8 = v6;
  *(v8 + 1) = v7;
  v10.receiver = v5;
  v10.super_class = v2;
  result = objc_msgSendSuper2(&v10, sel_init);
  *a2 = result;
  return result;
}

BDSReadingHistoryUpdateInfo_optional __swiftcall BDSReadingHistoryUpdateInfo.init(coder:)(NSCoder coder)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  v5 = v2;
  result.value.update = v3;
  result.value.super.isa = v5;
  result.is_nil = v4;
  return result;
}

id BDSReadingHistoryUpdateInfo.init(coder:)(void *a1)
{
  v2 = a1;
  result = sub_1E4654080(v2);
  if (result)
  {
    *&v1[OBJC_IVAR___BDSReadingHistoryUpdateInfo_update] = result;
    v5.receiver = v1;
    v5.super_class = BDSReadingHistoryUpdateInfo;
    v4 = objc_msgSendSuper2(&v5, sel_init);

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E4654080(void *a1)
{
  sub_1E45E2DE8(0, &qword_1ECF742D8, 0x1E695DEF0);
  v2 = sub_1E470B3CC();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1E4709BDC();
    v6 = v5;
    v7 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    v8 = sub_1E4658620();
    sub_1E465746C(v4, v6);
    if (v8)
    {
      sub_1E46589B8();
      sub_1E470B30C();
      v10 = v17;
      if (v17)
      {
        v11 = v18;
        v12 = type metadata accessor for ReadingHistoryUpdate();
        v13 = objc_allocWithZone(v12);
        *&v13[OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days] = 0;
        v14 = &v13[OBJC_IVAR___BDSReadingHistoryUpdate_value];
        *v14 = v10;
        *(v14 + 1) = v11;
        v16.receiver = v13;
        v16.super_class = v12;
        v15 = objc_msgSendSuper2(&v16, sel_init);
        [v8 finishDecoding];

        return v15;
      }

      [v8 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

Swift::Void __swiftcall BDSReadingHistoryUpdateInfo.encode(with:)(NSCoder with)
{
  v3 = [v1 update];
  sub_1E46542E8(with.super.isa);
}

void sub_1E46542E8(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  sub_1E4658964();

  sub_1E470B2FC();

  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1E470AF0C();
    [a1 encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void _s13BookDataStore27ReadingHistoryServiceStatusC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  sub_1E46585CC();
  sub_1E470B2FC();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1E470AF0C();
    [a1 encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

id BDSReadingHistoryUpdateInfo.init(update:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithUpdate_];

  return v2;
}

id BDSReadingHistoryUpdateInfo.init(update:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR___BDSReadingHistoryUpdateInfo_update) = a1;
  v3.super_class = BDSReadingHistoryUpdateInfo;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t BDSReadingHistoryUpdateInfo.description.getter()
{
  v1 = [v0 update];
  v2 = ReadingHistoryUpdate.description.getter();

  return v2;
}

BDSReadingHistoryUpdateInfo __swiftcall BDSReadingHistoryUpdateInfo.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.update = v2;
  result.super.isa = v1;
  return result;
}

uint64_t sub_1E4654824(uint64_t a1)
{
  v2 = type metadata accessor for ReadingHistoryDay(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4654880(uint64_t a1)
{
  v2 = sub_1E4650A10(&qword_1ECF743D0, type metadata accessor for CKError, &unk_1E471B36C);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1E46548EC(uint64_t a1)
{
  v2 = sub_1E4650A10(&qword_1ECF743D0, type metadata accessor for CKError, &unk_1E471B36C);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1E465495C(uint64_t a1)
{
  v2 = sub_1E4650A10(&qword_1ECF743C8, type metadata accessor for CKError, &unk_1E471B454);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1E46549E8(uint64_t a1)
{
  sub_1E4650A10(&qword_1ECF743C8, type metadata accessor for CKError, &unk_1E471B454);

  return sub_1E4709AEC();
}

uint64_t sub_1E4654A54(uint64_t a1)
{
  v2 = sub_1E4650A10(&qword_1ECF743C8, type metadata accessor for CKError, &unk_1E471B454);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1E4654AC0(void *a1, uint64_t a2)
{
  v4 = sub_1E4650A10(&qword_1ECF743C8, type metadata accessor for CKError, &unk_1E471B454);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1E4654B74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650A10(&qword_1ECF743C8, type metadata accessor for CKError, &unk_1E471B454);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1E4654BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E470B8FC();
  sub_1E470AECC();
  return sub_1E470B91C();
}

void *sub_1E4654C50@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1E4654C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4650A10(&qword_1ECF743C8, type metadata accessor for CKError, &unk_1E471B454);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

unint64_t sub_1E4654D04(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E4654DD0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1E4658ABC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1E4658A0C(v11);
  return v7;
}

unint64_t sub_1E4654DD0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1E4654EDC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1E470B60C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1E4654EDC(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E4654F28(a1, a2);
  sub_1E4655058(&unk_1F5E622C8);
  return v3;
}

void *sub_1E4654F28(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E4655144(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1E470B60C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1E470B00C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1E4655144(v10, 0);
        result = sub_1E470B5BC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1E4655058(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1E46551B8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1E4655144(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1E4650534(&qword_1ECF74398, &qword_1E471B1F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1E46551B8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1E4650534(&qword_1ECF74398, &qword_1E471B1F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1E46552AC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_1E4655300(uint64_t a1)
{
  sub_1E4709CCC();
  sub_1E4650A10(&qword_1ECF75D50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  v2 = sub_1E470AEBC();

  return sub_1E4656D68(a1, v2);
}

unint64_t sub_1E4655398(uint64_t a1)
{
  v2 = sub_1E470B54C();

  return sub_1E4656F28(a1, v2);
}

unint64_t sub_1E46553DC(uint64_t a1, uint64_t a2)
{
  sub_1E470B8FC();
  sub_1E470AFCC();
  v4 = sub_1E470B91C();

  return sub_1E4656FF0(a1, a2, v4);
}

unint64_t sub_1E4655454(uint64_t a1)
{
  v2 = sub_1E470B8EC();

  return sub_1E46570A8(a1, v2);
}

uint64_t sub_1E4655538(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1E4709CCC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1E4650534(&unk_1ECF74388, &qword_1E471B1F0);
  v44 = v4;
  result = sub_1E470B6EC();
  v11 = result;
  if (*(v9 + 16))
  {
    v49 = v5;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v40 = v2;
    v41 = (v6 + 16);
    v42 = v9;
    v43 = v6;
    v46 = (v6 + 32);
    v18 = result + 64;
    v19 = v45;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v23 = (v16 - 1) & v16;
LABEL_15:
      v26 = v22 | (v12 << 6);
      v27 = *(v9 + 48) + *(v43 + 72) * v26;
      v47 = *(v43 + 72);
      v48 = v23;
      if (v44)
      {
        (*v46)(v19, v27, v49);
        v28 = (*(v9 + 56) + 16 * v26);
        v30 = *v28;
        v29 = v28[1];
      }

      else
      {
        (*v41)(v19, v27, v49);
        v31 = (*(v9 + 56) + 16 * v26);
        v30 = *v31;
        v29 = v31[1];
        sub_1E46552AC(*v31, v29);
      }

      sub_1E4650A10(&qword_1ECF75D50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      result = sub_1E470AEBC();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v19 = v45;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v20 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v19 = v45;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v46)(*(v11 + 48) + v47 * v20, v19, v49);
      v21 = (*(v11 + 56) + 16 * v20);
      *v21 = v30;
      v21[1] = v29;
      ++*(v11 + 16);
      v9 = v42;
      v16 = v48;
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v25 = v13[v12];
      ++v24;
      if (v25)
      {
        v22 = __clz(__rbit64(v25));
        v23 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v9 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1E4655920(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ReadingHistoryDay(0);
  v44 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v49 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E4709CCC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v48 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  sub_1E4650534(&qword_1ECF74380, &qword_1E471B1E8);
  v45 = v4;
  result = sub_1E470B6EC();
  v14 = result;
  if (*(v12 + 16))
  {
    v40 = v2;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v9 + 16);
    v42 = v9;
    v46 = (v9 + 32);
    v21 = result + 64;
    v43 = v12;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = v23 | (v15 << 6);
      v27 = *(v12 + 48);
      v47 = *(v9 + 72);
      v28 = v27 + v47 * v26;
      if (v45)
      {
        (*v46)(v48, v28, v8);
        v29 = *(v12 + 56);
        v30 = *(v44 + 72);
        sub_1E465197C(v29 + v30 * v26, v49);
      }

      else
      {
        (*v41)(v48, v28, v8);
        v31 = *(v12 + 56);
        v30 = *(v44 + 72);
        sub_1E4651918(v31 + v30 * v26, v49);
      }

      sub_1E4650A10(&qword_1ECF75D50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      result = sub_1E470AEBC();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v46)((*(v14 + 48) + v47 * v22), v48, v8);
      result = sub_1E465197C(v49, *(v14 + 56) + v30 * v22);
      ++*(v14 + 16);
      v9 = v42;
      v12 = v43;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v12 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v14;
  return result;
}

uint64_t sub_1E4655DC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1E4650534(a3, a4);
  result = sub_1E470B6EC();
  v9 = result;
  if (*(v7 + 16))
  {
    v31 = v5;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v32 = *(*(v7 + 56) + 16 * v21);
      if ((v6 & 1) == 0)
      {
      }

      result = sub_1E470B8EC();
      v23 = -1 << *(v9 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 16 * v17) = v32;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v30 = 1 << *(v7 + 32);
      if (v30 >= 64)
      {
        bzero((v7 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v30;
      }

      *(v7 + 16) = 0;
    }

    v5 = v31;
  }

  else
  {
  }

  *v5 = v9;
  return result;
}

uint64_t sub_1E465602C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1E4650534(&qword_1ECF742C0, &qword_1E471B1B0);
  v36 = v4;
  result = sub_1E470B6EC();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 40 * v21;
      v26 = *(v25 + 8);
      v38 = *v25;
      v39 = *(v25 + 16);
      v37 = *(v25 + 32);
      if ((v36 & 1) == 0)
      {
      }

      sub_1E470B8FC();
      sub_1E470AFCC();
      result = sub_1E470B91C();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 40 * v15;
      *v17 = v38;
      *(v17 + 8) = v26;
      *(v17 + 16) = v39;
      *(v17 + 32) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1E465630C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1E4650534(&qword_1ECF74358, &qword_1E471B1C8);
  v34 = v4;
  result = sub_1E470B6EC();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1E470B8FC();
      sub_1E470AFCC();
      result = sub_1E470B91C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1E46565AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1E4650534(&qword_1ECF742A8, &unk_1E471B198);
  result = sub_1E470B6EC();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 40 * v19);
      if (v4)
      {
        sub_1E46585B4(v21, v32);
      }

      else
      {
        sub_1E4658550(v21, v32);
        v22 = v20;
      }

      result = sub_1E470B41C();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_1E46585B4(v32, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1E4656854(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1E4650534(a3, a4);
  v36 = v6;
  result = sub_1E470B6EC();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_1E470B8FC();
      sub_1E470AFCC();
      result = sub_1E470B91C();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_1E4656B08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1E4650534(a3, a4);
  result = sub_1E470B6EC();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v4;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
        v24 = v22;
        v25 = v23;
      }

      result = sub_1E470B41C();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v33 = 1 << *(v7 + 32);
      if (v33 >= 64)
      {
        bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v33;
      }

      *(v7 + 16) = 0;
    }

    v5 = v34;
  }

  else
  {
  }

  *v5 = v9;
  return result;
}

unint64_t sub_1E4656D68(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_1E4709CCC();
  v5 = *(v4 - 8);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4, v7);
      sub_1E4650A10(&unk_1EE2AEBD0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v17 = sub_1E470AEFC();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1E4656F28(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1E46588B4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1E6916270](v9, a1);
      sub_1E4658910(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1E4656FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1E470B84C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1E46570A8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1E4657114(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1E45E2DE8(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1E470B42C();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

char *sub_1E46571E0()
{
  v1 = v0;
  v2 = sub_1E4709CCC();
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  MEMORY[0x1EEE9AC00](v2, v4);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4650534(&unk_1ECF74388, &qword_1E471B1F0);
  v6 = *v0;
  v7 = sub_1E470B6DC();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v41 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = v40 + 32;
    v36 = v40 + 16;
    v37 = v6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v42 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v39;
        v23 = v40;
        v24 = *(v40 + 72) * v21;
        v25 = v38;
        (*(v40 + 16))(v38, *(v6 + 48) + v24, v39);
        v26 = *(v6 + 56);
        v27 = 16 * v21;
        v28 = (v26 + 16 * v21);
        v29 = *v28;
        v30 = v28[1];
        v31 = v41;
        (*(v23 + 32))(*(v41 + 48) + v24, v25, v22);
        v32 = (*(v31 + 56) + v27);
        v6 = v37;
        *v32 = v29;
        v32[1] = v30;
        result = sub_1E46552AC(v29, v30);
        v16 = v42;
      }

      while (v42);
    }

    v19 = v12;
    v8 = v41;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v20 = *(v34 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v42 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_1E465746C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1E46574C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1E4650534(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E4657528(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&qword_1ECF74200, &qword_1E471AF80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4657598(uint64_t a1)
{
  v2 = sub_1E4650534(&qword_1ECF74200, &qword_1E471AF80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 initializeBufferWithCopyOfBuffer for ReadingGoals.State(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1E465760C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4657654(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _ReadingHistoryUpdateProperties.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for _ReadingHistoryUpdateProperties.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E4657868()
{
  result = qword_1ECF74288;
  if (!qword_1ECF74288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74288);
  }

  return result;
}

unint64_t sub_1E46578C0()
{
  result = qword_1ECF74290;
  if (!qword_1ECF74290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74290);
  }

  return result;
}

unint64_t sub_1E4657918()
{
  result = qword_1ECF74298;
  if (!qword_1ECF74298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74298);
  }

  return result;
}

char *sub_1E465796C()
{
  v1 = v0;
  v2 = type metadata accessor for ReadingHistoryDay(0);
  v38 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1E4709CCC();
  v39 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v5);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4650534(&qword_1ECF74380, &qword_1E471B1E8);
  v7 = *v0;
  v8 = sub_1E470B6DC();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_1E4651918(*(v7 + 56) + v28, v37);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_1E465197C(v27, *(v29 + 56) + v28);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_1E4657C98(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1E4650534(a1, a2);
  v4 = *v2;
  v5 = sub_1E470B6DC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 16 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 16 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void sub_1E4657DEC()
{
  v1 = v0;
  sub_1E4650534(&qword_1ECF742C0, &qword_1E471B1B0);
  v2 = *v0;
  v3 = sub_1E470B6DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 40;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 32);
        v26 = (*(v4 + 48) + v18);
        v27 = *(v22 + 16);
        *v26 = v21;
        v26[1] = v20;
        v28 = *(v4 + 56) + v17;
        *v28 = v23;
        *(v28 + 8) = v24;
        *(v28 + 16) = v27;
        *(v28 + 32) = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1E4657F7C()
{
  v1 = v0;
  sub_1E4650534(&qword_1ECF74358, &qword_1E471B1C8);
  v2 = *v0;
  v3 = sub_1E470B6DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

id sub_1E46580E4()
{
  v1 = v0;
  sub_1E4650534(&qword_1ECF742A8, &unk_1E471B198);
  v2 = *v0;
  v3 = sub_1E470B6DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1E4658550(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1E46585B4(v19, *(v4 + 56) + 40 * v17);
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1E465827C()
{
  v1 = v0;
  sub_1E4650534(&qword_1ECF742B8, &qword_1E471B1A8);
  v2 = *v0;
  v3 = sub_1E470B6DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1E4658400(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1E4650534(a1, a2);
  v4 = *v2;
  v5 = sub_1E470B6DC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
        result = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_1E4658550(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1E46585B4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_1E46585CC()
{
  result = qword_1ECF742D0;
  if (!qword_1ECF742D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF742D0);
  }

  return result;
}

id sub_1E4658620()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1E4709BCC();
  v6[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_1E4709B0C();

    swift_willThrow();
  }

  return v2;
}

id sub_1E46586E0(void *a1)
{
  sub_1E45E2DE8(0, &qword_1ECF742D8, 0x1E695DEF0);
  v2 = sub_1E470B3CC();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1E4709BDC();
    v6 = v5;
    v7 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    v8 = sub_1E4658620();
    sub_1E465746C(v4, v6);
    if (v8)
    {
      sub_1E4658860();
      sub_1E470B30C();
      if (v14 != 2)
      {
        v10 = type metadata accessor for ReadingHistoryServiceStatus();
        v11 = objc_allocWithZone(v10);
        v11[OBJC_IVAR___BDSReadingHistoryServiceStatus_value] = v14 & 1;
        v13.receiver = v11;
        v13.super_class = v10;
        v12 = objc_msgSendSuper2(&v13, sel_init);
        [v8 finishDecoding];

        return v12;
      }

      [v8 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

unint64_t sub_1E4658860()
{
  result = qword_1ECF742E0;
  if (!qword_1ECF742E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF742E0);
  }

  return result;
}

unint64_t sub_1E4658964()
{
  result = qword_1ECF74370;
  if (!qword_1ECF74370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74370);
  }

  return result;
}

unint64_t sub_1E46589B8()
{
  result = qword_1ECF74378;
  if (!qword_1ECF74378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74378);
  }

  return result;
}

uint64_t sub_1E4658A0C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1E4658A58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistoryDay(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4658ABC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1E4658B44(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1E4658DD4()
{
  result = qword_1ECF743F8;
  if (!qword_1ECF743F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF743F8);
  }

  return result;
}

unint64_t sub_1E4658E2C()
{
  swift_getMetatypeMetadata();
  v0 = sub_1E470AF6C();
  v2 = v1;
  sub_1E470B04C();
  v3 = sub_1E470AF7C();
  v5 = v4;

  v6 = sub_1E465F4D4(15, v3, v5, v0, v2);

  return v6;
}

uint64_t CRDTModelSyncManager.SyncError.hashValue.getter()
{
  v1 = *v0;
  sub_1E470B8FC();
  MEMORY[0x1E6916620](v1);
  return sub_1E470B91C();
}

uint64_t sub_1E4658F78(uint64_t a1)
{
  sub_1E470B8FC();
  CRDTModelSyncManager.SyncError.hash(into:)();
  return sub_1E470B91C();
}

uint64_t sub_1E4658FF4@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v4 = type metadata accessor for ModelState(0, v3, *((*MEMORY[0x1E69E7D40] & *v1) + 0x58), *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v10 - v7;

  MutableObservableContainer.value.getter();

  (*(*(v3 - 8) + 16))(a1, v8, v3);
  return (*(v5 + 8))(v8, v4);
}

uint64_t CRDTModelSyncManager.observable.getter()
{
  v1 = type metadata accessor for ModelState(255, *((*MEMORY[0x1E69E7D40] & *v0) + 0x50), *((*MEMORY[0x1E69E7D40] & *v0) + 0x58), *((*MEMORY[0x1E69E7D40] & *v0) + 0x60));
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for MutableObservableContainer(0, v1, WitnessTable, v3);
  sub_1E470B37C();
  return v5;
}

uint64_t sub_1E46592FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v4 = type metadata accessor for ModelState(0, v3, *((*MEMORY[0x1E69E7D40] & *a1) + 0x58), *((*MEMORY[0x1E69E7D40] & *a1) + 0x60));
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v10 - v7;

  MutableObservableContainer.value.getter();

  (*(*(v3 - 8) + 16))(a2, v8, v3);
  return (*(v5 + 8))(v8, v4);
}

uint64_t CRDTModelSyncManager.enableCloudSync.getter()
{
  v1 = qword_1ECF7B600;
  swift_beginAccess();
  return *(v0 + v1);
}

void CRDTModelSyncManager.enableCloudSync.setter(char a1)
{
  v3 = qword_1ECF7B600;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_1E4659530(v4);
}

void sub_1E4659530(char a1)
{
  v2 = a1 & 1;
  v3 = qword_1ECF7B600;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 != v2)
  {
    sub_1E46E8FBC(v4);
  }
}

void (*CRDTModelSyncManager.enableCloudSync.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = qword_1ECF7B600;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_1E465962C;
}

void sub_1E465962C(uint64_t a1)
{
  v1 = *a1;
  CRDTModelSyncManager.enableCloudSync.setter(*(*a1 + 32));

  free(v1);
}

char *CRDTModelSyncManager.__allocating_init(cloudKitController:crdtContext:dataSource:transactionProvider:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for CRDTModelCloudDataManager(0, v5[10], v5[11], v5[12]);
  v10 = a1;
  v11 = a2;
  v12 = a3;
  swift_unknownObjectRetain();
  v13 = sub_1E46E8DDC(v10, v11, v12, a4);
  v14 = objc_allocWithZone(v5);
  v15 = sub_1E46597AC(v13, v11, a4);

  *&v13[qword_1ECF7B630 + 8] = &off_1F5E62608;
  swift_unknownObjectWeakAssign();

  return v15;
}

char *sub_1E46597AC(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v74 = a3;
  v75 = a2;
  v76 = a1;
  ObjectType = swift_getObjectType();
  v5 = *v3;
  v6 = *MEMORY[0x1E69E7D40];
  v78 = sub_1E470A0DC();
  v71 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v7);
  v77 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v73 = &v67 - v11;
  v12 = *((v6 & v5) + 0x50);
  v13 = *((v6 & v5) + 0x58);
  v14 = *((v6 & v5) + 0x60);
  v15 = v13;
  v84 = v14;
  v85 = v13;
  v16 = type metadata accessor for ModelState.Source(0, v12, v13, v14);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v72 = &v67 - v18;
  v83 = type metadata accessor for ModelState(0, v12, v15, v14);
  v79 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83, v19);
  v82 = &v67 - v20;
  v81 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v69 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v80 = &v67 - v26;
  v68 = sub_1E470B35C();
  v27 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v28);
  v30 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1E470B33C();
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v33 = sub_1E470A61C();
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v87[0] = 0;
  v87[1] = 0xE000000000000000;
  sub_1E470B5CC();

  strcpy(v87, "CRDTModelSync.");
  HIBYTE(v87[1]) = -18;
  v35 = sub_1E4658E2C();
  MEMORY[0x1E6915D10](v35);

  v36 = v71;
  sub_1E470A0CC();
  v37 = qword_1ECF745E0;
  sub_1E465E1DC();
  sub_1E470A60C();
  sub_1E470B32C();
  (*(v27 + 104))(v30, *MEMORY[0x1E69E8098], v68);
  v38 = v74;
  v39 = v83;
  *&v4[v37] = sub_1E470B39C();
  v4[qword_1ECF7B600] = 0;
  v40 = v80;
  v41 = v85;
  sub_1E470AA9C();
  v42 = v75;
  *&v4[qword_1ECF745E8] = v75;
  v43 = v81;
  v44 = v69;
  (*(v81 + 16))(v69, v40, v12);
  LOBYTE(v87[0]) = 0;
  v45 = v72;
  (*(v43 + 56))(v72, 1, 2, v12);
  v46 = type metadata accessor for CRDTModelRevisionInfo(0);
  v47 = v73;
  (*(*(v46 - 8) + 56))(v73, 1, 1, v46);
  v75 = v42;
  v48 = v82;
  ModelState.init(model:loaded:source:revisionInfo:)(v44, v87, v45, v47, v12, v41, v84, v82);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for MutableObservableContainer(0, v39, WitnessTable, v50);
  *&v4[qword_1ECF745F0] = sub_1E466A1E0(v48);
  v51 = v76;
  *&v4[qword_1ECF74600] = v76;
  *&v4[qword_1ECF74608] = v38;
  type metadata accessor for ObservableTransaction(0);
  v52 = swift_allocObject();
  swift_getObjectType();
  swift_unknownObjectRetain_n();
  v53 = v51;
  *&v4[qword_1ECF745F8] = sub_1E4669F28(0xD000000000000030, 0x80000001E4717D60, v38, v52);
  v86.receiver = v4;
  v86.super_class = ObjectType;
  v54 = objc_msgSendSuper2(&v86, sel_init);
  v55 = v78;
  sub_1E466A268(*&v54[qword_1ECF745F8], &protocol witness table for ObservableTransaction);
  v56 = v77;
  (*(v36 + 16))(v77, &v54[qword_1ECF7B608], v55);
  v57 = v54;
  v58 = v56;
  v59 = sub_1E470A0BC();
  v60 = sub_1E470B2CC();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_1E45E0000, v59, v60, "CRDTModelSyncManager Init: About to load cloudData", v61, 2u);
    MEMORY[0x1E6917530](v61, -1, -1);
  }

  (*(v36 + 8))(v58, v55);
  v62 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = swift_allocObject();
  v64 = v84;
  v65 = v85;
  v63[2] = v12;
  v63[3] = v65;
  v63[4] = v64;
  v63[5] = v62;

  sub_1E46E8E38(sub_1E465E228, v63);

  swift_unknownObjectRelease();

  (*(v79 + 8))(v82, v83);
  (*(v81 + 8))(v80, v12);

  return v57;
}

void *sub_1E465A03C(void *a1, uint64_t a2)
{
  v3 = sub_1E470A61C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E470A5DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_1E470A5CC();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a1;
    aBlock[4] = sub_1E465E234;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E46C4624;
    aBlock[3] = &unk_1F5E62858;
    v16 = _Block_copy(aBlock);
    v17 = a1;
    v18 = v14;
    sub_1E470A5FC();
    MEMORY[0x1E69160A0](0, v7, v12, v16);
    _Block_release(v16);
    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_1E465A298(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = *MEMORY[0x1E69E7D40];
  v111 = *MEMORY[0x1E69E7D40] & *a1;
  v6 = sub_1E470AA2C();
  v106 = *(v6 - 1);
  v107 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v105 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *((v5 & v4) + 0x50);
  v10 = sub_1E470B47C();
  v109 = *(v10 - 8);
  v110 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v99 - v12;
  v14 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = (&v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v99 - v20;
  v22 = v9;
  v23 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v104 = &v99 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v99 - v33;
  MEMORY[0x1EEE9AC00](v35, v36);
  v108 = &v99 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v114 = &v99 - v40;
  sub_1E4658FF4(&v99 - v40);
  v41 = type metadata accessor for CRDTModelRevisionInfo(0);
  (*(*(v41 - 8) + 56))(v21, 1, 1, v41);
  if (!a2)
  {
    v55 = sub_1E470A0BC();
    v56 = sub_1E470B2CC();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1E45E0000, v55, v56, "CRDTModelSyncManager Init: empty cloudData", v57, 2u);
      MEMORY[0x1E6917530](v57, -1, -1);
    }

    v47 = v22;
    goto LABEL_12;
  }

  v112 = v23;
  v113 = a2;
  sub_1E465ADF0(v17);
  sub_1E465E050(v21, &qword_1ECF74770, &unk_1E471C900);
  sub_1E46574C0(v17, v21, &qword_1ECF74770, &unk_1E471C900);
  v42 = sub_1E470A0BC();
  v43 = sub_1E470B2CC();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_1E45E0000, v42, v43, "CRDTModelSyncManager Init: About to deserialize existing data", v44, 2u);
    MEMORY[0x1E6917530](v44, -1, -1);
  }

  v45 = &v113[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData];
  v46 = *&v113[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData + 8];
  v47 = v22;
  if (v46 >> 60 == 15)
  {
    v52 = sub_1E470A0BC();
    v53 = sub_1E470B2AC();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1E45E0000, v52, v53, "CRDTModelSyncManager Init: couldn't deserialize existing data", v54, 2u);
      MEMORY[0x1E6917530](v54, -1, -1);
    }

    v23 = v112;
    goto LABEL_12;
  }

  v102 = v27;
  v103 = v21;
  v48 = *v45;
  v49 = *(a1 + qword_1ECF745E8);
  sub_1E465DD8C(*v45, v46);
  sub_1E465DD8C(v48, v46);
  v50 = *(*(v111 + 88) + 8);
  v51 = v49;
  sub_1E470ABEC();
  v109 = v48;
  v110 = v46;
  v60 = v112;
  (*(v112 + 56))(v13, 0, 1, v47);
  v61 = v108;
  (*(v60 + 32))(v108, v13, v47);
  sub_1E4658FF4(v34);
  v101 = v50;
  v62 = sub_1E470AB9C();
  v63 = *(v60 + 8);
  v63(v34, v47);
  v64 = *(v60 + 16);
  if ((v62 & 1) == 0)
  {
    v82 = v102;
    v64(v102, v61, v47);
    v83 = v61;
    v84 = sub_1E470A0BC();
    v85 = v47;
    v86 = sub_1E470B2CC();
    v87 = os_log_type_enabled(v84, v86);
    v21 = v103;
    if (v87)
    {
      v88 = swift_slowAlloc();
      v106 = v63;
      v89 = v88;
      v107 = swift_slowAlloc();
      v115[0] = v107;
      *v89 = 136315138;
      v90 = sub_1E470B81C();
      v92 = v91;
      v93 = v82;
      v94 = v106;
      v106(v93, v85);
      v95 = sub_1E4654D04(v90, v92, v115);

      *(v89 + 4) = v95;
      _os_log_impl(&dword_1E45E0000, v84, v86, "CRDTModelSyncManager Init: loaded stored model=%s, no delta", v89, 0xCu);
      v96 = v107;
      sub_1E4658A0C(v107);
      MEMORY[0x1E6917530](v96, -1, -1);
      MEMORY[0x1E6917530](v89, -1, -1);

      sub_1E465DDA0(v109, v110);
      v94(v108, v85);
    }

    else
    {

      sub_1E465DDA0(v109, v110);
      v63(v82, v85);
      v63(v83, v85);
    }

    v47 = v85;
    v23 = v112;
LABEL_12:
    v58 = v114;
    goto LABEL_13;
  }

  v65 = v104;
  v64(v104, v61, v47);
  v66 = v47;
  v67 = sub_1E470A0BC();
  v68 = sub_1E470B2CC();
  v69 = os_log_type_enabled(v67, v68);
  v21 = v103;
  if (v69)
  {
    v70 = swift_slowAlloc();
    v100 = v67;
    v71 = v70;
    v102 = swift_slowAlloc();
    v115[0] = v102;
    *v71 = 136315394;
    LODWORD(v111) = v68;
    v72 = sub_1E470B81C();
    v74 = v73;
    v63(v65, v66);
    v75 = sub_1E4654D04(v72, v74, v115);

    *(v71 + 4) = v75;
    *(v71 + 12) = 2080;
    v58 = v114;
    swift_beginAccess();
    v76 = v63;
    v77 = sub_1E470B81C();
    v79 = sub_1E4654D04(v77, v78, v115);

    *(v71 + 14) = v79;
    v61 = v108;
    v80 = v100;
    _os_log_impl(&dword_1E45E0000, v100, v111, "CRDTModelSyncManager Init: loaded stored model=%s, merging into existing=%s", v71, 0x16u);
    v81 = v102;
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v81, -1, -1);
    MEMORY[0x1E6917530](v71, -1, -1);

    v47 = v66;
  }

  else
  {

    v63(v65, v66);
    v47 = v66;
    v58 = v114;
    v76 = v63;
  }

  v97 = v109;
  swift_beginAccess();
  v98 = v105;
  sub_1E470AA1C();
  swift_endAccess();

  sub_1E465DDA0(v97, v110);
  (*(v106 + 1))(v98, v107);
  v76(v61, v47);
  v23 = v112;
LABEL_13:
  sub_1E465AD3C(a1, v58, v21);
  sub_1E465E050(v21, &qword_1ECF74770, &unk_1E471C900);
  return (*(v23 + 8))(v58, v47);
}

uint64_t sub_1E465AD3C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];
  v6[1] = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v7 = *((v4 & v3) + 0x60);
  v8 = a2;
  v9 = a3;

  MutableObservableContainer.mutate(_:)(sub_1E465E23C, v6);
}

uint64_t sub_1E465ADF0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v37 - v11;
  v13 = &v1[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData];
  v14 = *&v1[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData + 8];
  if (v14 >> 60 == 15)
  {
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v17 = *v13;
    sub_1E46552AC(*v13, *&v1[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData + 8]);
    v18 = sub_1E4709BCC();
    v19 = [v18 bu_sha256];

    v20 = sub_1E470AF1C();
    v22 = v21;

    v37 = 0x2D363532616873;
    v38 = 0xE700000000000000;
    MEMORY[0x1E6915D10](v20, v22);

    sub_1E465DDA0(v17, v14);
    v15 = v37;
    v16 = v38;
  }

  v23 = [v2 systemFields];
  if (v23 && (v24 = v23, v25 = [v23 recordChangeTag], v24, v25))
  {
    v26 = sub_1E470AF1C();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v29 = [v2 modificationDate];
  if (v29)
  {
    v30 = v29;
    sub_1E4709C9C();

    v31 = sub_1E4709CCC();
    (*(*(v31 - 8) + 56))(v7, 0, 1, v31);
  }

  else
  {
    v32 = sub_1E4709CCC();
    (*(*(v32 - 8) + 56))(v7, 1, 1, v32);
  }

  sub_1E46574C0(v7, v12, &unk_1ECF74CD0, &qword_1E471B620);
  if (v16)
  {

LABEL_16:
    v35 = type metadata accessor for CRDTModelRevisionInfo(0);
    sub_1E465E0B0(v12, a1 + *(v35 + 24), &unk_1ECF74CD0, &qword_1E471B620);
    *a1 = v15;
    a1[1] = v16;
    a1[2] = v26;
    a1[3] = v28;
    (*(*(v35 - 8) + 56))(a1, 0, 1, v35);
    return sub_1E465E050(v12, &unk_1ECF74CD0, &qword_1E471B620);
  }

  if (v28)
  {
    goto LABEL_16;
  }

  v33 = sub_1E4709CCC();
  if ((*(*(v33 - 8) + 48))(v12, 1, v33) != 1)
  {
    goto LABEL_16;
  }

  v34 = type metadata accessor for CRDTModelRevisionInfo(0);
  (*(*(v34 - 8) + 56))(a1, 1, 1, v34);
  return sub_1E465E050(v12, &unk_1ECF74CD0, &qword_1E471B620);
}

id CRDTModelSyncManager.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1E470A0DC();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, v1 + qword_1ECF7B608, v3, v6);
  v9 = sub_1E470A0BC();
  v10 = sub_1E470B2CC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1E45E0000, v9, v10, "CRDTModelSyncManager deinit", v11, 2u);
    MEMORY[0x1E6917530](v11, -1, -1);
  }

  (*(v4 + 8))(v8, v3);
  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

uint64_t sub_1E465B348(uint64_t a1)
{
  v2 = qword_1ECF7B608;
  v3 = sub_1E470A0DC();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  return swift_unknownObjectRelease();
}

uint64_t CRDTModelSyncManager.sync(_:isRemote:)(uint64_t a1, char a2)
{
  v5 = sub_1E470A5DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E470A5CC();
  v12 = v2;
  v13 = a1;
  v14 = a2;
  sub_1E470B36C();
  return (*(v6 + 8))(v9, v5);
}

void sub_1E465B560(uint64_t a1, int a2)
{
  v3 = v2;
  v159 = a2;
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v7 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  v8 = type metadata accessor for ModelState.Source(0, v5, v6, v7);
  v155 = *(v8 - 8);
  v156 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v162 = &v140[-v10];
  v160 = type metadata accessor for CRDTModelRevisionInfo(0);
  v157 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160, v11);
  v149 = &v140[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v170 = &v140[-v15];
  v176 = v7;
  v168 = type metadata accessor for ModelState(0, v5, v6, v7);
  v154 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168, v16);
  v169 = &v140[-v17];
  v18 = sub_1E470AB3C();
  v165 = *(v18 - 8);
  v166 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v164 = &v140[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v161 = &v140[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25, v26);
  v158 = &v140[-v27];
  MEMORY[0x1EEE9AC00](v28, v29);
  v171 = &v140[-v30];
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v140[-v33];
  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  v39 = &v140[-v38];
  v40 = [*&v3[qword_1ECF74608] createTransactionWithName_];
  sub_1E4658FF4(v39);
  v163 = *(v6 + 8);
  LOBYTE(v7) = sub_1E470AB9C();
  v41 = *(v21 + 8);
  v172 = v21 + 8;
  v173 = v41;
  v41(v39, v5);
  if ((v7 & 1) == 0)
  {
    type metadata accessor for CRDTModelSyncManager.SyncError(0, v5, v6, v176);
    swift_getWitnessTable();
    swift_allocError();
    *v65 = 0;
    swift_willThrow();

    return;
  }

  v148 = v6;
  v153 = v40;
  v42 = qword_1ECF7B608;
  v43 = *(v21 + 16);
  v152 = a1;
  v145 = v21 + 16;
  v151 = v43;
  v43(v34, a1, v5);
  v44 = v3;
  v45 = sub_1E470A0BC();
  v46 = sub_1E470B2CC();

  v47 = os_log_type_enabled(v45, v46);
  v144 = v21;
  v147 = v42;
  v146 = v3;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v150 = v44;
    v49 = v48;
    v143 = swift_slowAlloc();
    v174 = v143;
    *v49 = 136315394;
    v142 = v45;
    v50 = sub_1E470B81C();
    v141 = v46;
    v52 = v51;
    v53 = v34;
    v54 = v173;
    v173(v53, v5);
    v55 = sub_1E4654D04(v50, v52, &v174);
    v56 = v54;

    *(v49 + 4) = v55;
    *(v49 + 12) = 2080;
    sub_1E4658FF4(v39);
    v57 = sub_1E470B81C();
    v59 = v58;
    v56(v39, v5);
    v60 = sub_1E4654D04(v57, v59, &v174);

    *(v49 + 14) = v60;
    v61 = v142;
    _os_log_impl(&dword_1E45E0000, v142, v141, "CRDTModelSyncManager q_sync: incoming=%s and existing=%s", v49, 0x16u);
    v62 = v143;
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v62, -1, -1);
    v63 = v49;
    v44 = v150;
    v64 = v171;
    MEMORY[0x1E6917530](v63, -1, -1);
  }

  else
  {

    v56 = v173;
    v173(v34, v5);
    v64 = v171;
  }

  sub_1E4658FF4(v39);
  sub_1E470ABDC();
  v56(v39, v5);
  v66 = v164;
  v67 = v165;
  v68 = v166;
  (*(v165 + 104))(v164, *MEMORY[0x1E6995278], v166);
  v69 = v167;
  v70 = sub_1E470A9FC();
  if (!v69)
  {
    v163 = 0;
    v87 = v68;
    v88 = v70;
    v89 = v71;
    (*(v67 + 8))(v66, v87);
    v165 = qword_1ECF745F0;
    v166 = v89;
    v167 = v88;
    sub_1E46552AC(v88, v89);

    v90 = v169;
    MutableObservableContainer.value.getter();

    v91 = *(v168 + 52);
    v92 = v157;
    v93 = 1;
    v94 = &v90[v91];
    v95 = v160;
    v96 = (*(v157 + 48))(v94, 1, v160);
    v97 = v153;
    v98 = v173;
    if (!v96)
    {
      v99 = v149;
      sub_1E465DF90(&v169[v91], v149);
      v100 = sub_1E4709BCC();
      v101 = [v100 bu_sha256];

      v102 = sub_1E470AF1C();
      v150 = v44;
      v104 = v103;

      v174 = 0x2D363532616873;
      v175 = 0xE700000000000000;
      MEMORY[0x1E6915D10](v102, v104);

      v106 = v174;
      v105 = v175;
      v107 = *(v99 + 3);
      v164 = *(v99 + 2);
      v108 = *(v95 + 24);
      v109 = v170;
      sub_1E465E0B0(&v99[v108], v170 + v108, &unk_1ECF74CD0, &qword_1E471B620);

      sub_1E465DFF4(v99);
      v93 = 0;
      *v109 = v106;
      v109[1] = v105;
      v98 = v173;
      v44 = v150;
      v109[2] = v164;
      v109[3] = v107;
      v97 = v153;
      v95 = v160;
    }

    v110 = 1;
    (*(v92 + 56))(v170, v93, 1, v95);
    if (v159)
    {
      v151(v162, v152, v5);
      v110 = 0;
    }

    v111 = v162;
    (*(v144 + 56))(v162, v110, 2, v5);
    v112 = v171;
    v113 = v111;
    v114 = v169;
    v115 = ModelState.updating(model:source:revisionInfo:)(v171, v113, v170, v168);
    MEMORY[0x1EEE9AC00](v115, v116);
    v117 = v148;
    *&v140[-32] = v5;
    *&v140[-24] = v117;
    *&v140[-16] = v176;
    *&v140[-8] = v114;

    MutableObservableContainer.mutate(_:)(sub_1E465E254, &v140[-48]);

    v118 = v158;
    v151(v158, v112, v5);
    v120 = v166;
    v119 = v167;
    sub_1E46552AC(v167, v166);
    sub_1E46552AC(v119, v120);
    v121 = sub_1E470A0BC();
    LODWORD(v165) = sub_1E470B2CC();
    if (!os_log_type_enabled(v121, v165))
    {
      sub_1E465746C(v119, v120);
      sub_1E465746C(v119, v120);

      v98(v118, v5);
LABEL_28:
      v138 = swift_allocObject();
      *(v138 + 16) = v97;
      v139 = v97;
      sub_1E46E8FE4(v119, v120, sub_1E465E1CC, v138);

      sub_1E465746C(v119, v120);
      sub_1E465746C(v119, v120);
      (*(v155 + 8))(v162, v156);
      sub_1E465E050(v170, &qword_1ECF74770, &unk_1E471C900);
      v173(v112, v5);
      (*(v154 + 8))(v169, v168);
      return;
    }

    v164 = v121;
    v150 = v44;
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v174 = v123;
    *v122 = 136315394;
    v124 = sub_1E470B81C();
    v126 = v125;
    v98(v118, v5);
    v127 = sub_1E4654D04(v124, v126, &v174);

    *(v122 + 4) = v127;
    *(v122 + 12) = 2048;
    v128 = v120 >> 62;
    if ((v120 >> 62) > 1)
    {
      v119 = v167;
      if (v128 != 2)
      {
        sub_1E465746C(v167, v120);
        v129 = 0;
        goto LABEL_26;
      }

      v133 = *(v167 + 16);
      v132 = *(v167 + 24);
      sub_1E465746C(v167, v120);
      v134 = __OFSUB__(v132, v133);
      v129 = v132 - v133;
      v135 = v153;
      if (!v134)
      {
        v120 = v166;
LABEL_27:
        *(v122 + 14) = v129;
        sub_1E465746C(v119, v120);
        v137 = v164;
        _os_log_impl(&dword_1E45E0000, v164, v165, "CRDTModelSyncManager q_sync: sending merged=%s as %ld bytes to BCCloudDataManager", v122, 0x16u);
        sub_1E4658A0C(v123);
        MEMORY[0x1E6917530](v123, -1, -1);
        MEMORY[0x1E6917530](v122, -1, -1);

        v112 = v171;
        v97 = v135;
        goto LABEL_28;
      }

      __break(1u);
    }

    else
    {
      v119 = v167;
      if (!v128)
      {
        sub_1E465746C(v167, v120);
        v129 = BYTE6(v120);
LABEL_26:
        v135 = v153;
        goto LABEL_27;
      }

      v136 = HIDWORD(v167);
      sub_1E465746C(v167, v120);
      v134 = __OFSUB__(v136, v119);
      LODWORD(v129) = v136 - v119;
      v135 = v153;
      if (!v134)
      {
        v129 = v129;
        goto LABEL_27;
      }
    }

    __break(1u);
    return;
  }

  (*(v67 + 8))(v66, v68);
  v72 = v161;
  v151(v161, v64, v5);
  v73 = sub_1E470A0BC();
  v74 = sub_1E470B2AC();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v169 = v75;
    v170 = swift_slowAlloc();
    v174 = v170;
    *v75 = 136315138;
    v76 = v176;
    v77 = sub_1E470B81C();
    v79 = v78;
    v80 = v72;
    v81 = v173;
    v173(v80, v5);
    v82 = sub_1E4654D04(v77, v79, &v174);

    v83 = v169;
    *(v169 + 4) = v82;
    v84 = v83;
    _os_log_impl(&dword_1E45E0000, v73, v74, "CRDTModelSyncManager q_sync: couldn't serialize model to sync: %s", v83, 0xCu);
    v85 = v170;
    sub_1E4658A0C(v170);
    MEMORY[0x1E6917530](v85, -1, -1);
    MEMORY[0x1E6917530](v84, -1, -1);

    v86 = v153;
  }

  else
  {

    v130 = v72;
    v81 = v173;
    v173(v130, v5);
    v86 = v153;
    v76 = v176;
  }

  type metadata accessor for CRDTModelSyncManager.SyncError(0, v5, v148, v76);
  swift_getWitnessTable();
  swift_allocError();
  *v131 = 1;
  swift_willThrow();

  v81(v64, v5);
}

id CRDTModelSyncManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1E465C5EC(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v57 = *MEMORY[0x1E69E7D40] & *v2;
  v6 = *((v5 & v4) + 0x50);
  v7 = sub_1E470B47C();
  isa = v7[-1].isa;
  v55 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v47 - v9;
  v11 = *(v6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13, v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  v56 = &v47 - v17;
  v18 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  v51 = *(v18 - 8);
  v19 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v52 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v47 - v23;
  sub_1E465ADF0((&v47 - v23));
  v25 = *(a1 + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData + 8);
  if (v25 >> 60 == 15)
  {
    v29 = sub_1E470A0BC();
    v30 = sub_1E470B2AC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1E45E0000, v29, v30, "CRDTModelSyncManager resolveConflictsFor: couldn't deserialize resolved data", v31, 2u);
      MEMORY[0x1E6917530](v31, -1, -1);
    }

    sub_1E465CC24(v24);
    return sub_1E465E050(v24, &qword_1ECF74770, &unk_1E471C900);
  }

  else
  {
    v49 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v53 = v11;
    v26 = *(a1 + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData);
    v27 = *(v2 + qword_1ECF745E8);
    sub_1E465DD8C(v26, v25);
    sub_1E465DD8C(v26, v25);
    v48 = *(v57 + 88);
    v28 = v27;
    v50 = v26;
    sub_1E470ABEC();
    v32 = v53;
    (*(v53 + 56))(v10, 0, 1, v6);
    v47 = *(v32 + 32);
    isa = (v32 + 32);
    v33 = v56;
    v47(v56, v10, v6);
    v55 = *(v2 + qword_1ECF745E0);
    v34 = v49;
    (*(v32 + 16))(v49, v33, v6);
    v35 = v52;
    sub_1E465E0B0(v24, v52, &qword_1ECF74770, &unk_1E471C900);
    v36 = (*(v32 + 80) + 40) & ~*(v32 + 80);
    v37 = (v12 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = (*(v51 + 80) + v37 + 8) & ~*(v51 + 80);
    v39 = swift_allocObject();
    v41 = v47;
    v40 = v48;
    *(v39 + 2) = v6;
    *(v39 + 3) = v40;
    *(v39 + 4) = *(v57 + 96);
    v41(&v39[v36], v34, v6);
    *&v39[v37] = v2;
    sub_1E46574C0(v35, &v39[v38], &qword_1ECF74770, &unk_1E471C900);
    v42 = swift_allocObject();
    *(v42 + 16) = sub_1E465DDB4;
    *(v42 + 24) = v39;
    aBlock[4] = sub_1E465DE98;
    aBlock[5] = v42;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E46679F4;
    aBlock[3] = &unk_1F5E62790;
    v43 = _Block_copy(aBlock);
    v44 = v2;

    dispatch_sync(v55, v43);
    _Block_release(v43);
    sub_1E465DDA0(v50, v25);
    (*(v53 + 8))(v56, v6);
    sub_1E465E050(v24, &qword_1ECF74770, &unk_1E471C900);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1E465CC24(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v24 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v25 = v3;
  v23 = v4;
  v5 = type metadata accessor for ModelState(0, v3, v24, v4);
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v23 - v7;
  v9 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for CRDTModelRevisionInfo(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E465E0B0(a1, v12, &qword_1ECF74770, &unk_1E471C900);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1E465E050(v12, &qword_1ECF74770, &unk_1E471C900);
  }

  sub_1E465DF2C(v12, v17);

  MutableObservableContainer.value.getter();

  v19 = *(v5 + 52);
  sub_1E465E050(&v8[v19], &qword_1ECF74770, &unk_1E471C900);
  sub_1E465DF90(v17, &v8[v19]);
  v20 = (*(v14 + 56))(&v8[v19], 0, 1, v13);
  MEMORY[0x1EEE9AC00](v20, v21);
  v22 = v24;
  *(&v23 - 4) = v25;
  *(&v23 - 3) = v22;
  *(&v23 - 2) = v23;
  *(&v23 - 1) = v8;

  MutableObservableContainer.mutate(_:)(sub_1E465E254, (&v23 - 6));

  sub_1E465DFF4(v17);
  return (*(v26 + 8))(v8, v5);
}

uint64_t sub_1E465CF64(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v119 = a3;
  v5 = *a2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = sub_1E470AA2C();
  v110 = *(v7 - 8);
  v111 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v109 = &v97[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *((v6 & v5) + 0x50);
  v11 = *((v6 & v5) + 0x58);
  v118 = *((v6 & v5) + 0x60);
  v117 = type metadata accessor for ModelState(0, v10, v11, v118);
  v113 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117, v12);
  v116 = &v97[-v13];
  v112 = v11;
  v14 = *(v11 + 8);
  v106 = *(v14 + 16);
  swift_getAssociatedTypeWitness();
  v105 = sub_1E470B47C();
  MEMORY[0x1EEE9AC00](v105, v15);
  v104 = &v97[-v16];
  v17 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v97[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v97[-v24];
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v97[-v28];
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v97[-v32];
  sub_1E4658FF4(&v97[-v32]);
  v107 = v14;
  LOBYTE(v5) = sub_1E470AB9C();
  v34 = *(v17 + 8);
  v114 = v33;
  v120 = v17 + 8;
  v121 = v34;
  v34(v33, v10);
  v35 = qword_1ECF7B608;
  v108 = v17;
  v36 = *(v17 + 16);
  if (v5)
  {
    v37 = *(v17 + 16);
    v36(v29, a1, v10);
    v103 = a1;
    v101 = v37;
    v37(v25, a1, v10);
    v38 = a2;
    v102 = v35;
    v39 = sub_1E470A0BC();
    v40 = sub_1E470B2CC();

    v41 = os_log_type_enabled(v39, v40);
    v115 = v38;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v122[0] = v100;
      *v42 = 136315650;
      v99 = v39;
      v43 = sub_1E470B81C();
      v45 = v44;
      v98 = v40;
      v121(v29, v10);
      v46 = sub_1E4654D04(v43, v45, v122);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2080;
      v47 = v114;
      sub_1E4658FF4(v114);
      v48 = sub_1E470B81C();
      v50 = v49;
      v51 = v121;
      v121(v47, v10);
      v52 = sub_1E4654D04(v48, v50, v122);

      *(v42 + 14) = v52;
      *(v42 + 22) = 2080;
      sub_1E4658FF4(v47);
      sub_1E470AC1C();
      v51(v47, v10);
      v53 = sub_1E470AF8C();
      v55 = v54;
      v51(v25, v10);
      v56 = sub_1E4654D04(v53, v55, v122);

      *(v42 + 24) = v56;
      v57 = v99;
      _os_log_impl(&dword_1E45E0000, v99, v98, "CRDTModelSyncManager resolveConflictsFor: merging resolved model: incoming=%s vs existing=%s with delta=%s", v42, 0x20u);
      v58 = v100;
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v58, -1, -1);
      MEMORY[0x1E6917530](v42, -1, -1);
    }

    else
    {

      v74 = v121;
      v121(v25, v10);
      v74(v29, v10);
    }

    v75 = v116;
    MutableObservableContainer.value.getter();

    v76 = v109;
    v77 = v103;
    sub_1E470AA1C();
    (*(v110 + 8))(v76, v111);
    v78 = v117;
    v79 = v118;
    v80 = *(v117 + 48);
    v81 = v112;
    v82 = type metadata accessor for ModelState.Source(0, v10, v112, v118);
    (*(*(v82 - 8) + 8))(&v75[v80], v82);
    v101(&v75[v80], v77, v10);
    (*(v108 + 56))(&v75[v80], 0, 2, v10);
    v83 = sub_1E465DEB8(v119, &v75[*(v78 + 52)]);
    v84 = v115;
    MEMORY[0x1EEE9AC00](v83, v85);
    *&v97[-32] = v10;
    *&v97[-24] = v81;
    *&v97[-16] = v79;
    *&v97[-8] = v75;

    MutableObservableContainer.mutate(_:)(sub_1E465DF28, &v97[-48]);

    v86 = v84;
    v87 = sub_1E470A0BC();
    v88 = sub_1E470B2CC();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v122[0] = v90;
      *v89 = 136315138;
      v91 = v114;
      sub_1E4658FF4(v114);
      v92 = sub_1E470B81C();
      v94 = v93;
      v121(v91, v10);
      v95 = sub_1E4654D04(v92, v94, v122);

      *(v89 + 4) = v95;
      _os_log_impl(&dword_1E45E0000, v87, v88, "CRDTModelSyncManager resolveConflictsFor: resolved model=%s", v89, 0xCu);
      sub_1E4658A0C(v90);
      MEMORY[0x1E6917530](v90, -1, -1);
      MEMORY[0x1E6917530](v89, -1, -1);
    }

    return (*(v113 + 8))(v116, v117);
  }

  else
  {
    v36(v21, a1, v10);
    v59 = a2;
    v60 = sub_1E470A0BC();
    v61 = sub_1E470B2CC();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v122[0] = v117;
      *v62 = 136315394;
      LODWORD(v116) = v61;
      v63 = sub_1E470B81C();
      v65 = v64;
      v66 = v121;
      v121(v21, v10);
      v67 = sub_1E4654D04(v63, v65, v122);

      *(v62 + 4) = v67;
      *(v62 + 12) = 2080;
      v68 = v114;
      sub_1E4658FF4(v114);
      v69 = sub_1E470B81C();
      v71 = v70;
      v66(v68, v10);
      v72 = sub_1E4654D04(v69, v71, v122);

      *(v62 + 14) = v72;
      _os_log_impl(&dword_1E45E0000, v60, v116, "CRDTModelSyncManager resolveConflictsFor: incoming=%s has no delta from existing=%s", v62, 0x16u);
      v73 = v117;
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v73, -1, -1);
      MEMORY[0x1E6917530](v62, -1, -1);
    }

    else
    {

      v121(v21, v10);
    }

    return sub_1E465CC24(v119);
  }
}

uint64_t sub_1E465D9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v27[-v14];
  v16 = type metadata accessor for ModelState.Source(0, a4, a5, a6);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v27[-v18];
  v20 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v27[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = type metadata accessor for ModelState(0, a4, a5, a6);
  (*(*(v25 - 8) + 8))(a1, v25);
  swift_beginAccess();
  (*(v20 + 16))(v24, a2, a4);
  v28 = 1;
  (*(v20 + 56))(v19, 2, 2, a4);
  sub_1E465E0B0(a3, v15, &qword_1ECF74770, &unk_1E471C900);
  return ModelState.init(model:loaded:source:revisionInfo:)(v24, &v28, v19, v15, a4, a5, a6, a1);
}

uint64_t sub_1E465DC80(uint64_t a1)
{
  result = sub_1E470A0DC();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E465DD8C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1E46552AC(result, a2);
  }

  return result;
}

uint64_t sub_1E465DDA0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1E465746C(result, a2);
  }

  return result;
}

uint64_t sub_1E465DDB4()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = (*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(sub_1E4650534(&qword_1ECF74770, &unk_1E471C900) - 8);
  v4 = *(v0 + v2);
  v5 = v0 + ((v2 + *(v3 + 80) + 8) & ~*(v3 + 80));

  return sub_1E465CF64(v0 + v1, v4, v5);
}

uint64_t sub_1E465DEA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E465DEB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E465DF2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRDTModelRevisionInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E465DF90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRDTModelRevisionInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E465DFF4(uint64_t a1)
{
  v2 = type metadata accessor for CRDTModelRevisionInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E465E050(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1E4650534(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1E465E0B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1E4650534(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E465E118(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = type metadata accessor for ModelState(0, v3, v4, v5);
  v10 = *(v7 - 8);
  (*(v10 + 8))(a1, v7);
  v8 = *(v10 + 16);

  return v8(a1, v6, v7);
}

unint64_t sub_1E465E1DC()
{
  result = qword_1EE2ACCD0;
  if (!qword_1EE2ACCD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2ACCD0);
  }

  return result;
}

double CRDTModelRevisionInfo.changeToken.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t CRDTModelRevisionInfo.description.getter()
{
  v1 = 0x296C696E28;
  v2 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v16 - v4;
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  if (v0[1])
  {
    v6 = *v0;
    v7 = v0[1];
  }

  else
  {
    v7 = 0xE500000000000000;
    v6 = 0x296C696E28;
  }

  MEMORY[0x1E6915D10](v6, v7);

  MEMORY[0x1E6915D10](8251, 0xE200000000000000);
  if (v0[3])
  {
    v8 = v0[2];
    v9 = v0[3];
  }

  else
  {
    v9 = 0xE500000000000000;
    v8 = 0x296C696E28;
  }

  MEMORY[0x1E6915D10](v8, v9);

  MEMORY[0x1E6915D10](8251, 0xE200000000000000);
  v10 = type metadata accessor for CRDTModelRevisionInfo(0);
  sub_1E465E4A4(v0 + *(v10 + 24), v5);
  v11 = sub_1E4709CCC();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    sub_1E465E050(v5, &unk_1ECF74CD0, &qword_1E471B620);
    v13 = 0xE500000000000000;
  }

  else
  {
    v1 = sub_1E4709C1C();
    v13 = v14;
    (*(v12 + 8))(v5, v11);
  }

  MEMORY[0x1E6915D10](v1, v13);

  return v16[0];
}

uint64_t type metadata accessor for CRDTModelRevisionInfo(uint64_t a1)
{
  result = qword_1EE2AD7F8;
  if (!qword_1EE2AD7F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E465E4A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E465E518()
{
  v1 = 0x684364726F636572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697369766572;
  }
}

uint64_t sub_1E465E58C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E465F364(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E465E5C0(uint64_t a1)
{
  v2 = sub_1E465EEF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E465E5FC(uint64_t a1)
{
  v2 = sub_1E465EEF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CRDTModelRevisionInfo.encode(to:)(void *a1)
{
  v3 = sub_1E4650534(&qword_1ECF74778, &qword_1E471B628);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v9[-v6];
  sub_1E465057C(a1, a1[3]);
  sub_1E465EEF4();
  sub_1E470B93C();
  v9[15] = 0;
  sub_1E470B79C();
  if (!v1)
  {
    v9[14] = 1;
    sub_1E470B79C();
    type metadata accessor for CRDTModelRevisionInfo(0);
    v9[13] = 2;
    sub_1E4709CCC();
    sub_1E465F490(&qword_1ECF74180, MEMORY[0x1E6969538]);
    sub_1E470B7AC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t CRDTModelRevisionInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v21 - v6;
  v8 = sub_1E4650534(&qword_1ECF74788, &qword_1E471B630);
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v21 - v10;
  v12 = type metadata accessor for CRDTModelRevisionInfo(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E465057C(a1, a1[3]);
  sub_1E465EEF4();
  sub_1E470B92C();
  if (v2)
  {
    return sub_1E4658A0C(a1);
  }

  v22 = v12;
  v16 = v24;
  v28 = 0;
  *v15 = sub_1E470B72C();
  v15[1] = v17;
  v21[1] = v17;
  v27 = 1;
  v15[2] = sub_1E470B72C();
  v15[3] = v18;
  sub_1E4709CCC();
  v26 = 2;
  sub_1E465F490(&qword_1ECF741A0, MEMORY[0x1E6969558]);
  v19 = v25;
  sub_1E470B73C();
  (*(v16 + 8))(v11, v19);
  sub_1E465EF48(v7, v15 + *(v22 + 24));
  sub_1E465DF90(v15, v23);
  sub_1E4658A0C(a1);
  return sub_1E465DFF4(v15);
}

BOOL _s13BookDataStore21CRDTModelRevisionInfoV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1E4709CCC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v27 - v11;
  v13 = sub_1E4650534(&qword_1ECF747A8, &unk_1E471B7F0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v27 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (sub_1E470B84C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = a1[3];
  v20 = a2[3];
  if (v19)
  {
    if (!v20 || (a1[2] != a2[2] || v19 != v20) && (sub_1E470B84C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v21 = *(type metadata accessor for CRDTModelRevisionInfo(0) + 24);
  v22 = *(v13 + 48);
  sub_1E465E4A4(a1 + v21, v16);
  sub_1E465E4A4(a2 + v21, &v16[v22]);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) == 1)
  {
    if (v23(&v16[v22], 1, v4) == 1)
    {
      sub_1E465E050(v16, &unk_1ECF74CD0, &qword_1E471B620);
      return 1;
    }

    goto LABEL_20;
  }

  sub_1E465E4A4(v16, v12);
  if (v23(&v16[v22], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_20:
    sub_1E465E050(v16, &qword_1ECF747A8, &unk_1E471B7F0);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v22], v4);
  sub_1E465F490(&unk_1EE2AEBD0, MEMORY[0x1E6969550]);
  v25 = sub_1E470AEFC();
  v26 = *(v5 + 8);
  v26(v8, v4);
  v26(v12, v4);
  sub_1E465E050(v16, &unk_1ECF74CD0, &qword_1E471B620);
  return (v25 & 1) != 0;
}

unint64_t sub_1E465EEF4()
{
  result = qword_1ECF74780;
  if (!qword_1ECF74780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74780);
  }

  return result;
}

uint64_t sub_1E465EF48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E465EFE0(uint64_t a1)
{
  sub_1E465F064();
  if (v1 <= 0x3F)
  {
    sub_1E465F0B4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E465F064()
{
  if (!qword_1EE2ACD40)
  {
    v0 = sub_1E470B47C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2ACD40);
    }
  }
}

void sub_1E465F0B4(uint64_t a1)
{
  if (!qword_1EE2AEBC8)
  {
    sub_1E4709CCC();
    v1 = sub_1E470B47C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2AEBC8);
    }
  }
}

uint64_t getEnumTagSinglePayload for CRDTModelRevisionInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRDTModelRevisionInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E465F260()
{
  result = qword_1ECF74790;
  if (!qword_1ECF74790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74790);
  }

  return result;
}

unint64_t sub_1E465F2B8()
{
  result = qword_1ECF74798;
  if (!qword_1ECF74798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74798);
  }

  return result;
}

unint64_t sub_1E465F310()
{
  result = qword_1ECF747A0;
  if (!qword_1ECF747A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF747A0);
  }

  return result;
}

uint64_t sub_1E465F364(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697369766572 && a2 == 0xEC000000746E6948;
  if (v4 || (sub_1E470B84C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x684364726F636572 && a2 == 0xEF67615465676E61 || (sub_1E470B84C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E4717DA0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E470B84C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E465F490(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1E4709CCC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E465F4D4(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v9 = sub_1E470AFDC();

  sub_1E470B48C();
  v11 = v10;

  if ((v11 & 0x1000000000000000) != 0)
  {
    goto LABEL_28;
  }

  sub_1E470B48C();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_28;
  }

  v14 = (a4 >> 59) & 1;
  v15 = (a5 & 0x1000000000000000) == 0 || (a4 & 0x800000000000000) != 0;
  if ((a5 & 0x1000000000000000) != 0)
  {
    v16 = sub_1E470B02C();
  }

  else
  {
    v16 = 0;
    LOBYTE(v14) = 1;
  }

  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v17 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v18 = v17 << 16;
  if (v14)
  {
    v19 = v18 | 7;
    if ((a5 & 0x1000000000000000) == 0)
    {
      LOBYTE(v20) = 1;
      goto LABEL_16;
    }
  }

  else
  {
    v19 = v18 | 0xB;
  }

  v20 = (a4 & 0x800000000000000) >> 59;
LABEL_16:
  v21 = 4 << v15;
  result = v9;
  if ((v9 & 0xC) == 4 << v20)
  {
    v26 = v19;
    result = sub_1E46637F8(v9, a4, a5);
    v19 = v26;
  }

  if ((v19 & 0xC) == v21)
  {
    v27 = result;
    v19 = sub_1E46637F8(v19, a4, a5);
    result = v27;
    if ((a5 & 0x1000000000000000) == 0)
    {
LABEL_20:
      result = (v19 >> 16) - (result >> 16);
      if ((a3 & 0x1000000000000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_34;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_20;
  }

  if (v17 < result >> 16)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v17 >= v19 >> 16)
  {
    result = sub_1E470B02C();
    if ((a3 & 0x1000000000000000) == 0)
    {
LABEL_21:
      if ((a3 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(a3) & 0xF;
        v25 = __OFADD__(v16, v24);
        v23 = v16 + v24;
        if (!v25)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v23 = v16 + (a2 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v16, a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_26;
        }
      }

      goto LABEL_36;
    }

LABEL_34:
    v28 = result;
    v29 = sub_1E470B00C();
    result = v28;
    v25 = __OFADD__(v16, v29);
    v23 = v16 + v29;
    if (!v25)
    {
LABEL_26:
      v25 = __OFADD__(v23, result);
      result += v23;
      if (!v25)
      {
        MEMORY[0x1E6915CD0](result);
LABEL_28:
        sub_1E470B05C();
        sub_1E466402C();
        sub_1E470AFEC();

        sub_1E470AFEC();
        sub_1E46637AC(v9, a4, a5);
        sub_1E470AFEC();

        return 0;
      }

      goto LABEL_37;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_39:
  __break(1u);
  return result;
}

void sub_1E465F7B4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 type];
  v4 = sub_1E470AF1C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1E465F80C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 protoData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1E4709BDC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1E465F874(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1E4709BCC();
  }

  v4 = v3;
  [v2 setProtoData_];
}

uint64_t sub_1E465F8EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4650534(&qword_1ECF74878, &qword_1E471B980);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v20 - v10;
  v12 = OBJC_IVAR____TtC13BookDataStore19CRDTModelSyncEntity____lazy_storage___logger;
  swift_beginAccess();
  sub_1E46640D4(v2 + v12, v11);
  v13 = sub_1E470A0DC();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return (*(v14 + 32))(a1, v11, v13);
  }

  sub_1E465E050(v11, &qword_1ECF74878, &qword_1E471B980);
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_1E470B5CC();

  strcpy(v20, "CRDTModelSync.");
  HIBYTE(v20[1]) = -18;
  v15 = [v2 type];
  v16 = sub_1E470AF1C();
  v18 = v17;

  MEMORY[0x1E6915D10](v16, v18);

  sub_1E470A0CC();
  (*(v14 + 16))(v7, a1, v13);
  (*(v14 + 56))(v7, 0, 1, v13);
  swift_beginAccess();
  sub_1E4664144(v7, v2 + v12);
  return swift_endAccess();
}

uint64_t sub_1E465FB74(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = v3;
  v8 = [v3 protoData];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1E4709BDC();
    v12 = v11;

    v13 = a3(v10, v12, a1, a2);
    if (v14 >> 60 != 15)
    {
      v15 = v13;
      v16 = v14;
      if (v12 >> 60 != 15)
      {
        sub_1E465DD8C(v13, v14);
        sub_1E465DD8C(v10, v12);
        v17 = sub_1E4663C7C(v15, v16, v10, v12);
        sub_1E465DDA0(v10, v12);
        sub_1E465DDA0(v15, v16);
        if (v17)
        {
          sub_1E4664080();
          swift_allocError();
          *v18 = 1;
          swift_willThrow();
LABEL_11:
          sub_1E465DDA0(v15, v16);
          return sub_1E465DDA0(v10, v12);
        }

LABEL_10:
        v22 = sub_1E4709BCC();
        [v4 setProtoData_];

        goto LABEL_11;
      }

LABEL_9:
      sub_1E465DD8C(v15, v16);
      sub_1E465DD8C(v10, v12);
      sub_1E465DDA0(v15, v16);
      sub_1E465DDA0(v10, v12);
      goto LABEL_10;
    }
  }

  else
  {
    v12 = 0xF000000000000000;
    v19 = a3(0, 0xF000000000000000, a1, a2);
    v10 = 0;
    if (v20 >> 60 != 15)
    {
      v15 = v19;
      v16 = v20;
      goto LABEL_9;
    }
  }

  sub_1E4664080();
  swift_allocError();
  *v21 = 0;
  swift_willThrow();
  return sub_1E465DDA0(v10, v12);
}

void sub_1E465FD84(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E470A0DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v145 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v145 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  MEMORY[0x1EEE9AC00](&v145 - v23, v24);
  v32 = MEMORY[0x1EEE9AC00](v26, &v145 - v25);
  v34 = &v145 - v33;
  if (!a2)
  {
    return;
  }

  v157 = v28;
  v155 = v27;
  v152 = v31;
  v153 = v30;
  v154 = v29;
  v158 = a1;
  v35 = [a1 recordType];
  v36 = sub_1E470AF1C();
  v38 = v37;

  v156 = v36;
  v160 = v36;
  v161 = v38;

  sub_1E470B56C();
  if (!*(a2 + 16) || (v39 = sub_1E4655398(v162), (v40 & 1) == 0))
  {
    sub_1E4658910(v162);

    return;
  }

  v149 = v20;
  v151 = *(*(a2 + 56) + 8 * v39);
  _Block_copy(v151);
  sub_1E4658910(v162);
  v41 = v158;
  swift_getObjectType();
  v42 = swift_conformsToProtocol2();
  if (!v42 || !v41)
  {

    sub_1E465F8EC(v16);
    v59 = sub_1E470A0BC();
    v60 = sub_1E470B2AC();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1E45E0000, v59, v60, "CRDTModelSyncEntity configure(from:) wrong class passed in", v61, 2u);
      MEMORY[0x1E6917530](v61, -1, -1);
    }

    _Block_release(v151);

    (*(v7 + 8))(v16, v6);
    return;
  }

  v43 = v42;
  v150 = v7;
  v147 = v6;
  swift_unknownObjectRetain();
  v44 = [v3 type];
  v45 = sub_1E470AF1C();
  v47 = v46;

  v48 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v48 = v45 & 0xFFFFFFFFFFFFLL;
  }

  v148 = v43;
  if (v48)
  {
    v49 = [v3 type];
    v50 = sub_1E470AF1C();
    v52 = v51;

    ObjectType = swift_getObjectType();
    v54 = *(v43 + 8);
    v145 = ObjectType;
    v55 = v54;
    v146 = (v43 + 8);
    v56 = v54(ObjectType, v43);
    v58 = v157;
    if (v50 == v56 && v52 == v57)
    {
    }

    else
    {
      v63 = sub_1E470B84C();

      if ((v63 & 1) == 0)
      {

        sub_1E465F8EC(v34);
        swift_unknownObjectRetain();
        v86 = v3;
        v87 = sub_1E470A0BC();
        v88 = sub_1E470B2AC();

        swift_unknownObjectRelease();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v162[0] = v90;
          *v89 = 136315394;
          v91 = (v55)(v145, v148);
          v93 = sub_1E4654D04(v91, v92, v162);

          *(v89 + 4) = v93;
          *(v89 + 12) = 2080;
          v94 = [v86 type];
          v95 = sub_1E470AF1C();
          v97 = v96;

          v98 = sub_1E4654D04(v95, v97, v162);

          *(v89 + 14) = v98;
          _os_log_impl(&dword_1E45E0000, v87, v88, "CRDTModelSyncEntity incompatible type %s passed in. Expecting %s", v89, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E6917530](v90, -1, -1);
          MEMORY[0x1E6917530](v89, -1, -1);
          _Block_release(v151);
          swift_unknownObjectRelease();
        }

        else
        {
          _Block_release(v151);

          swift_unknownObjectRelease();
        }

        (*(v150 + 8))(v34, v147);
        return;
      }
    }

    v62 = v148;
  }

  else
  {
    v55 = *(v43 + 8);
    v62 = v43;
    v58 = v157;
  }

  v64 = v158;
  v157 = swift_getObjectType();
  (v55)(v157, v62);
  v65 = sub_1E470AF0C();

  [v3 setType_];

  swift_unknownObjectRetain();
  sub_1E4650534(&unk_1ECF747B0, &unk_1E471B820);
  v66 = sub_1E470AE2C();
  v67 = type metadata accessor for CRDTModelSyncEntity(0);
  v159.receiver = v3;
  v159.super_class = v67;
  objc_msgSendSuper2(&v159, sel_configureFromCloudData_withMergers_, v64, v66);
  swift_unknownObjectRelease();

  sub_1E465F8EC(v58);
  v68 = v3;
  swift_unknownObjectRetain();
  v69 = v68;
  v70 = sub_1E470A0BC();
  v71 = sub_1E470B2CC();
  if (!os_log_type_enabled(v70, v71))
  {

    swift_unknownObjectRelease();
    v70 = v69;
    v74 = v147;
    v85 = v64;
    goto LABEL_41;
  }

  v72 = swift_slowAlloc();
  *v72 = 134218240;
  v73 = [v69 protoData];
  v74 = v147;
  if (!v73)
  {

    v84 = -1;
    goto LABEL_38;
  }

  v75 = v69;
  v76 = v73;
  v77 = sub_1E4709BDC();
  v79 = v78;

  v80 = v79;
  v81 = v79 >> 62;
  if ((v79 >> 62) > 1)
  {
    if (v81 != 2)
    {
      sub_1E465746C(v77, v79);
      v69 = v75;

      v84 = 0;
      goto LABEL_37;
    }

    v100 = *(v77 + 16);
    v99 = *(v77 + 24);
    sub_1E465746C(v77, v80);

    v84 = v99 - v100;
    if (!__OFSUB__(v99, v100))
    {
      v69 = v75;
      goto LABEL_37;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v81)
  {
    sub_1E465746C(v77, v79);
    v69 = v75;

    LODWORD(v84) = HIDWORD(v77) - v77;
    if (!__OFSUB__(HIDWORD(v77), v77))
    {
      v84 = v84;
      goto LABEL_37;
    }

    goto LABEL_70;
  }

  v82 = v77;
  v83 = BYTE6(v79);
  sub_1E465746C(v82, v79);
  v69 = v75;

  v84 = v83;
LABEL_37:
  v74 = v147;
LABEL_38:
  *(v72 + 4) = v84;

  *(v72 + 12) = 2048;
  v101 = (*(v148 + 16))(v157);
  if (v102 >> 60 != 15)
  {
    v132 = v102 >> 62;
    if ((v102 >> 62) > 1)
    {
      goto LABEL_57;
    }

    if (!v132)
    {
      v133 = BYTE6(v102);
      sub_1E465DDA0(v101, v102);
      v103 = v133;
      goto LABEL_40;
    }

    v143 = HIDWORD(v101);
    v144 = v101;
    sub_1E465DDA0(v101, v102);
    LODWORD(v103) = v143 - v144;
    if (!__OFSUB__(v143, v144))
    {
      v103 = v103;
      goto LABEL_40;
    }

LABEL_72:
    __break(1u);
    return;
  }

  v103 = -1;
  while (1)
  {
LABEL_40:
    v85 = v158;
    *(v72 + 14) = v103;
    swift_unknownObjectRelease();
    _os_log_impl(&dword_1E45E0000, v70, v71, "CRDTModelSyncEntity Merging: existing data (%ld bytes) with incoming data (%ld bytes)", v72, 0x16u);
    MEMORY[0x1E6917530](v72, -1, -1);
LABEL_41:

    v104 = *(v150 + 8);
    v150 += 8;
    v146 = v104;
    v104(v58, v74);
    v105 = v85;
    v106 = (*(v148 + 16))(v157);
    v108 = v107;
    MEMORY[0x1EEE9AC00](v106, v107);
    v109 = v156;
    *(&v145 - 4) = v151;
    *(&v145 - 3) = v109;
    *(&v145 - 2) = v38;
    sub_1E465FB74(v110, v111, sub_1E46641B4);

    sub_1E465DDA0(v106, v108);
    v112 = v155;
    sub_1E465F8EC(v155);
    swift_unknownObjectRetain();
    v113 = v69;
    v114 = sub_1E470A0BC();
    v115 = sub_1E470B2CC();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v162[0] = v117;
      *v116 = 136315394;
      v118 = [v105 recordType];
      v119 = sub_1E470AF1C();
      v120 = v74;
      v121 = v69;
      v123 = v122;

      v124 = sub_1E4654D04(v119, v123, v162);
      v69 = v121;
      v74 = v120;

      *(v116 + 4) = v124;
      *(v116 + 12) = 2080;
      v125 = [v113 debugDescription];
      v126 = sub_1E470AF1C();
      v128 = v127;

      v129 = sub_1E4654D04(v126, v128, v162);

      *(v116 + 14) = v129;
      _os_log_impl(&dword_1E45E0000, v114, v115, "CRDTModelSyncEntity Merging: Adopted properties from cloudData: %s %s", v116, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v117, -1, -1);
      MEMORY[0x1E6917530](v116, -1, -1);

      v130 = v155;
      v131 = v120;
    }

    else
    {

      v130 = v112;
      v131 = v74;
    }

    v71 = v146;
    v146(v130, v131);
    v134 = v149;
    sub_1E465F8EC(v149);
    v58 = v69;
    v135 = sub_1E470A0BC();
    LOBYTE(v136) = sub_1E470B2CC();
    if (!os_log_type_enabled(v135, v136))
    {
      swift_unknownObjectRelease();
      _Block_release(v151);

      v135 = v58;
      goto LABEL_65;
    }

    v55 = -1;
    v72 = swift_slowAlloc();
    *v72 = 134217984;
    v137 = [v58 protoData];
    if (!v137)
    {
      break;
    }

    v138 = v137;
    v55 = sub_1E4709BDC();
    v140 = v139;

    v141 = v140;
    v142 = v140 >> 62;
    if ((v140 >> 62) <= 1)
    {
      if (!v142)
      {
        sub_1E465746C(v55, v140);
        v55 = BYTE6(v140);
        break;
      }

      goto LABEL_61;
    }

    if (v142 != 2)
    {
      sub_1E465746C(v55, v140);
      v55 = 0;
      break;
    }

    v38 = *(v55 + 16);
    v70 = *(v55 + 24);
    v101 = sub_1E465746C(v55, v141);
    v55 = v70 - v38;
    if (!__OFSUB__(v70, v38))
    {
      break;
    }

    __break(1u);
LABEL_57:
    if (v132 == 2)
    {
      v136 = *(v101 + 16);
      v135 = *(v101 + 24);
      sub_1E465DDA0(v101, v102);
      v103 = v135 - v136;
      if (__OFSUB__(v135, v136))
      {
        __break(1u);
LABEL_61:
        sub_1E465746C(v55, v141);
        if (__OFSUB__(HIDWORD(v55), v55))
        {
          goto LABEL_71;
        }

        v55 = HIDWORD(v55) - v55;
        break;
      }
    }

    else
    {
      sub_1E465DDA0(v101, v102);
      v103 = 0;
    }
  }

  *(v72 + 4) = v55;

  _os_log_impl(&dword_1E45E0000, v135, v136, "CRDTModelSyncEntity Merging: merged data (%ld bytes)", v72, 0xCu);
  MEMORY[0x1E6917530](v72, -1, -1);
  _Block_release(v151);
  swift_unknownObjectRelease();
  v134 = v149;
LABEL_65:

  v71(v134, v74);
}

BOOL sub_1E46611DC(uint64_t a1, char a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  v7 = 0;
  if (v6 && a1)
  {
    v8 = v6;
    v25.receiver = v3;
    v25.super_class = type metadata accessor for CRDTModelSyncEntity(0);
    swift_unknownObjectRetain();
    if (objc_msgSendSuper2(&v25, sel_isEqualExceptForDate_ignoringEmptySalt_, a1, a2 & 1))
    {
      v9 = [v3 type];
      v10 = sub_1E470AF1C();
      v12 = v11;

      ObjectType = swift_getObjectType();
      if (v10 == (*(v8 + 8))(ObjectType, v8) && v12 == v14)
      {

        goto LABEL_8;
      }

      v15 = sub_1E470B84C();

      if (v15)
      {
LABEL_8:
        v16 = [v3 protoData];
        if (v16)
        {
          v17 = v16;
          v18 = sub_1E4709BDC();
          v20 = v19;
        }

        else
        {
          v18 = 0;
          v20 = 0xF000000000000000;
        }

        v22 = (*(v8 + 16))(ObjectType, v8);
        v23 = v21;
        if (v20 >> 60 == 15)
        {
          swift_unknownObjectRelease();
          if (v23 >> 60 == 15)
          {
            sub_1E465DDA0(v18, v20);
            return 1;
          }
        }

        else
        {
          if (v21 >> 60 != 15)
          {
            sub_1E465DD8C(v18, v20);
            sub_1E465DD8C(v22, v23);
            v7 = sub_1E4663C7C(v18, v20, v22, v23);
            sub_1E465DDA0(v22, v23);
            sub_1E465DDA0(v22, v23);
            sub_1E465DDA0(v18, v20);
            swift_unknownObjectRelease();
            sub_1E465DDA0(v18, v20);
            return v7;
          }

          swift_unknownObjectRelease();
        }

        sub_1E465DDA0(v18, v20);
        sub_1E465DDA0(v22, v23);
        return 0;
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

  return v7;
}