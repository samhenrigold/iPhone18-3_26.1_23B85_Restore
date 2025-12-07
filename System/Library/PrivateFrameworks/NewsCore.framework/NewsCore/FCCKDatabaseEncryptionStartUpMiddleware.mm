@interface FCCKDatabaseEncryptionStartUpMiddleware
- (id)initWithEncryptionMigrator:(id *)migrator;
- (void)_adoptSentinel:(void *)sentinel secureSentinel:(void *)secureSentinel forDatabase:(void *)database completion:;
- (void)_associateChildOperation:(uint64_t)operation;
- (void)_createSentinelsIfNeededForDatabase:(void *)database completion:;
- (void)_deleteOldDataIfDesiredWithSentinel:(void *)sentinel secureSentinel:(void *)secureSentinel database:(void *)database completion:;
- (void)performStartUpForDatabase:(id)database completion:(id)completion;
@end

@implementation FCCKDatabaseEncryptionStartUpMiddleware

- (id)initWithEncryptionMigrator:(id *)migrator
{
  v4 = a2;
  if (migrator)
  {
    v7.receiver = migrator;
    v7.super_class = FCCKDatabaseEncryptionStartUpMiddleware;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    migrator = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return migrator;
}

- (void)performStartUpForDatabase:(id)database completion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  completionCopy = completion;
  if (!databaseCopy || (WeakRetained = objc_loadWeakRetained(databaseCopy + 2), WeakRetained, !WeakRetained))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't perform encryption startup without an encryption delegate"];
      *buf = 136315906;
      v28 = "[FCCKDatabaseEncryptionStartUpMiddleware performStartUpForDatabase:completion:]";
      v29 = 2080;
      v30 = "FCCKDatabaseEncryptionStartUpMiddleware.m";
      v31 = 1024;
      v32 = 55;
      v33 = 2114;
      v34 = v17;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__FCCKDatabaseEncryptionStartUpMiddleware_performStartUpForDatabase_completion___block_invoke;
  aBlock[3] = &unk_1E7C39710;
  v9 = completionCopy;
  v26 = v9;
  v10 = databaseCopy;
  v25 = v10;
  v11 = _Block_copy(aBlock);
  if (databaseCopy && (v12 = objc_loadWeakRetained(v10 + 2), v12, v12))
  {
    v13 = FCPrivateDataEncryptionLog;
    if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "will fetch desired private database version", buf, 2u);
    }

    v14 = objc_loadWeakRetained(v10 + 2);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __80__FCCKDatabaseEncryptionStartUpMiddleware_performStartUpForDatabase_completion___block_invoke_9;
    v19[3] = &unk_1E7C47B20;
    v15 = &v21;
    v21 = v11;
    v19[4] = self;
    v20 = v10;
    v16 = v11;
    [v14 fetchDesiredVersionForDatabase:v20 completion:v19];
  }

  else
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __80__FCCKDatabaseEncryptionStartUpMiddleware_performStartUpForDatabase_completion___block_invoke_3;
    v22[3] = &unk_1E7C379C8;
    v15 = &v23;
    v23 = v11;
    v18 = v11;
    __80__FCCKDatabaseEncryptionStartUpMiddleware_performStartUpForDatabase_completion___block_invoke_3(v22);
  }
}

void __80__FCCKDatabaseEncryptionStartUpMiddleware_performStartUpForDatabase_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6 = *(a1 + 40);
    v5 = v3;
    v6[2](v6, v5);
  }

  else
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      *(v4 + 8) = 1;
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __80__FCCKDatabaseEncryptionStartUpMiddleware_performStartUpForDatabase_completion___block_invoke_3(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A578];
  v6[0] = @"Encryption startup middleware requires an encryption delegate";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v4 = [v2 errorWithDomain:@"FCErrorDomain" code:16 userInfo:v3];
  (*(v1 + 16))(v1, v4);
}

void __80__FCCKDatabaseEncryptionStartUpMiddleware_performStartUpForDatabase_completion___block_invoke_9(uint64_t a1, uint64_t a2, void *a3)
{
  v56[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __80__FCCKDatabaseEncryptionStartUpMiddleware_performStartUpForDatabase_completion___block_invoke_2_10;
    v32[3] = &unk_1E7C37BC0;
    v33 = v5;
    v34 = *(a1 + 48);
    __80__FCCKDatabaseEncryptionStartUpMiddleware_performStartUpForDatabase_completion___block_invoke_2_10(v32);
  }

  else
  {
    v7 = FCPrivateDataEncryptionLog;
    if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = FCCKPrivateDatabaseVersionString(a2);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "did fetch desired private database version with result: %{public}@", &buf, 0xCu);
    }

    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = v10;
    v14 = v12;
    if (v11)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __90__FCCKDatabaseEncryptionStartUpMiddleware__tryToStartUpDatabase_targetVersion_completion___block_invoke;
      aBlock[3] = &unk_1E7C47C88;
      aBlock[4] = v11;
      v31 = v13;
      v15 = v13;
      v41 = v15;
      v16 = v14;
      v42 = v16;
      v17 = _Block_copy(aBlock);
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __90__FCCKDatabaseEncryptionStartUpMiddleware__tryToStartUpDatabase_targetVersion_completion___block_invoke_2;
      v35[3] = &unk_1E7C47B48;
      v39 = a2;
      v37 = v17;
      v35[4] = v11;
      v18 = v15;
      v36 = v18;
      v38 = v16;
      v30 = v17;
      v19 = v35;
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __82__FCCKDatabaseEncryptionStartUpMiddleware__fetchSentinelsWithDatabase_completion___block_invoke;
      v45[3] = &unk_1E7C47B98;
      v20 = v19;
      v46 = v20;
      v21 = v18;
      v22 = _Block_copy(v45);
      v23 = objc_alloc_init(FCCKPrivateFetchRecordsOperation);
      v24 = +[(CKRecordID *)MEMORY[0x1E695BA70]];
      v56[0] = v24;
      v25 = +[(CKRecordID *)MEMORY[0x1E695BA70]];
      v56[1] = v25;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
      [(FCCKPrivateFetchRecordsOperation *)v23 setRecordIDs:v26];

      *&buf = @"version";
      *(&buf + 1) = @"encryptionKey";
      v48 = @"migratedUnencryptedData";
      v49 = @"deletedUnencryptedData";
      v50 = @"migratedSubscriptions";
      v51 = @"deletedSubscriptions";
      v52 = @"migratedToVersion";
      v53 = @"deletedToVersion";
      v54 = @"encryptionKey";
      v55 = @"version";
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&buf count:10];
      [(FCCKPrivateFetchRecordsOperation *)v23 setDesiredKeys:v27];

      [(FCCKPrivateDatabaseOperation *)v23 setSkipPreflight:1];
      [(FCCKPrivateDatabaseOperation *)v23 setHandleIdentityLoss:0];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __82__FCCKDatabaseEncryptionStartUpMiddleware__fetchSentinelsWithDatabase_completion___block_invoke_2;
      v43[3] = &unk_1E7C379A0;
      v44 = v22;
      v28 = v22;
      [(FCCKPrivateFetchRecordsOperation *)v23 setFetchRecordsCompletionBlock:v43];
      v29 = v23;
      [(FCOperation *)v29 setQualityOfService:25];
      [(FCOperation *)v29 setRelativePriority:2];

      [(FCCKPrivateDatabase *)v21 addOperation:v29];
      v13 = v31;
    }
  }
}

uint64_t __80__FCCKDatabaseEncryptionStartUpMiddleware_performStartUpForDatabase_completion___block_invoke_2_10(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCPrivateDataEncryptionLog;
  if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = 138543362;
    v6 = v4;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "failed to fetch desired private database version with error: %{public}@", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void __90__FCCKDatabaseEncryptionStartUpMiddleware__tryToStartUpDatabase_targetVersion_completion___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a1[4];
  v9 = a3;
  v10 = a2;
  v11 = v7;
  v36 = v11;
  if (!v10 || !v8)
  {

    v13 = a1[4];
LABEL_10:
    v26 = v10;
    v27 = v9;
    v28 = v36;
    v29 = v28;
    if (v13)
    {
      if (v10)
      {
        v30 = [(CKRecord *)v26 fc_sentinel_databaseVersion]== 0;
        goto LABEL_15;
      }

      if ([v28 code] == 2)
      {
        v31 = [v29 userInfo];
        v32 = [v31 objectForKeyedSubscript:*MEMORY[0x1E695B798]];

        v33 = +[(CKRecordID *)MEMORY[0x1E695BA70]];
        v34 = [v32 objectForKeyedSubscript:v33];

        v30 = [v34 fc_isCKUnknownItemError];
LABEL_15:

        if (v30)
        {
          [(FCCKPrivateDatabase *)a1[5] reportRecoverableStartUpError:v29];
          v35 = *(a1[6] + 16);
LABEL_19:
          v35();
          goto LABEL_20;
        }

LABEL_18:
        v35 = *(a1[6] + 16);
        goto LABEL_19;
      }
    }

    goto LABEL_18;
  }

  v12 = [v11 fc_hasCKIdentityLostError];

  v13 = a1[4];
  if (!v12)
  {
    goto LABEL_10;
  }

  v14 = a1[6];
  v15 = a1[5];
  v16 = v10;
  v17 = v9;
  v18 = v14;
  if (v13)
  {
    v19 = [(CKRecord *)v16 fc_sentinel_databaseVersion];
    if (v15)
    {
      v15[5] = v19;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __110__FCCKDatabaseEncryptionStartUpMiddleware__handleIdentityLossWithDatabase_sentinel_secureSentinel_completion___block_invoke;
    aBlock[3] = &unk_1E7C47C88;
    v20 = v15;
    v44 = v20;
    v45 = v13;
    v46 = v18;
    v21 = _Block_copy(aBlock);
    v22 = objc_alloc_init(FCCKSecureDatabaseResetOperation);
    [(FCCKSecureDatabaseResetOperation *)v22 setDatabase:v20];
    [(FCCKSecureDatabaseResetOperation *)v22 setDeleteZones:1];
    [(FCCKSecureDatabaseResetOperation *)v22 setRestoreSecureSentinel:0];
    [(FCCKSecureDatabaseResetOperation *)v22 setRestoreZoneContents:0];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __110__FCCKDatabaseEncryptionStartUpMiddleware__handleIdentityLossWithDatabase_sentinel_secureSentinel_completion___block_invoke_3;
    v37[3] = &unk_1E7C47CD8;
    v38 = v16;
    v42 = v21;
    v39 = v17;
    v40 = v13;
    v41 = v20;
    v23 = v21;
    [(FCCKSecureDatabaseResetOperation *)v22 setResetCompletionHandler:v37];
    v24 = v22;
    [(FCOperation *)v24 setQualityOfService:25];
    [(FCOperation *)v24 setRelativePriority:2];

    v25 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
    [v25 addOperation:v24];
  }

LABEL_20:
}

void __90__FCCKDatabaseEncryptionStartUpMiddleware__tryToStartUpDatabase_targetVersion_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v55 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v43 = MEMORY[0x1E69E9820];
    v44 = 3221225472;
    v45 = __90__FCCKDatabaseEncryptionStartUpMiddleware__tryToStartUpDatabase_targetVersion_completion___block_invoke_3;
    v46 = &unk_1E7C3A0B0;
    v50 = *(a1 + 48);
    v47 = v7;
    v48 = v8;
    v49 = v9;
    v50[2](v50, v47, v48, v49);

    v10 = v50;
  }

  else
  {
    if (v7)
    {
      v11 = FCPrivateDataEncryptionLog;
      if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = [(CKRecord *)v7 fc_sentinel_databaseVersion];
        v14 = FCCKPrivateDatabaseVersionString(v13);
        v15 = [(CKRecord *)v7 fc_sentinel_deletedToDatabaseVersion];
        v16 = FCCKPrivateDatabaseVersionString(v15);
        *buf = 138543618;
        v52 = v14;
        v53 = 2114;
        v54 = v16;
        _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "fetched sentinel with database version=%{public}@, cleaned up to version=%{public}@", buf, 0x16u);
      }
    }

    if (*(a1 + 64))
    {
      if (v7 && v8 && [(CKRecord *)v7 fc_sentinel_databaseVersion]>= *(a1 + 64))
      {
        v23 = [(CKRecord *)v7 fc_sentinel_deletedToDatabaseVersion];
        v25 = *(a1 + 32);
        v24 = *(a1 + 40);
        if (v23 >= *(a1 + 64))
        {
          [(FCCKDatabaseEncryptionStartUpMiddleware *)*(a1 + 32) _adoptSentinel:v7 secureSentinel:v8 forDatabase:v24 completion:*(a1 + 56)];
          goto LABEL_17;
        }

        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __90__FCCKDatabaseEncryptionStartUpMiddleware__tryToStartUpDatabase_targetVersion_completion___block_invoke_2_14;
        v31[3] = &unk_1E7C47C88;
        v31[4] = v25;
        v32 = v24;
        v33 = *(a1 + 56);
        [(FCCKDatabaseEncryptionStartUpMiddleware *)v25 _deleteOldDataIfDesiredWithSentinel:v7 secureSentinel:v8 database:v32 completion:v31];

        v10 = v32;
      }

      else
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __90__FCCKDatabaseEncryptionStartUpMiddleware__tryToStartUpDatabase_targetVersion_completion___block_invoke_3_15;
        aBlock[3] = &unk_1E7C47B48;
        v17 = *(a1 + 48);
        v30 = *(a1 + 64);
        v26 = *(a1 + 32);
        v18 = *(&v26 + 1);
        v19 = *(a1 + 56);
        *&v20 = v17;
        *(&v20 + 1) = v19;
        v28 = v26;
        v29 = v20;
        v21 = _Block_copy(aBlock);
        v22 = v21;
        if (v7 && v8)
        {
          (*(v21 + 2))(v21, v7, v8, 0);
        }

        else
        {
          [(FCCKDatabaseEncryptionStartUpMiddleware *)*(a1 + 32) _createSentinelsIfNeededForDatabase:v21 completion:?];
        }

        v10 = v29;
      }
    }

    else
    {
      v34 = MEMORY[0x1E69E9820];
      v35 = 3221225472;
      v36 = __90__FCCKDatabaseEncryptionStartUpMiddleware__tryToStartUpDatabase_targetVersion_completion___block_invoke_13;
      v37 = &unk_1E7C40188;
      v38 = *(a1 + 32);
      v39 = v7;
      v40 = v8;
      v41 = *(a1 + 40);
      v42 = *(a1 + 56);
      [(FCCKDatabaseEncryptionStartUpMiddleware *)v38 _adoptSentinel:v39 secureSentinel:v40 forDatabase:v41 completion:v42];

      v10 = v39;
    }
  }

LABEL_17:
}

- (void)_adoptSentinel:(void *)sentinel secureSentinel:(void *)secureSentinel forDatabase:(void *)database completion:
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = a2;
  sentinelCopy = sentinel;
  secureSentinelCopy = secureSentinel;
  if (self)
  {
    databaseCopy = database;
    fc_sentinel_databaseVersion = [(CKRecord *)v9 fc_sentinel_databaseVersion];
    if (secureSentinelCopy)
    {
      secureSentinelCopy[5] = fc_sentinel_databaseVersion;
      objc_setProperty_atomic(secureSentinelCopy, v14, v9, 64);
    }

    fc_sentinel_databaseVersion2 = [(CKRecord *)v9 fc_sentinel_databaseVersion];
    v16 = FCPrivateDataEncryptionLog;
    v17 = os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT);
    if (fc_sentinel_databaseVersion2)
    {
      if (v17)
      {
        v24 = 138412546;
        v25 = v9;
        v26 = 2112;
        v27 = sentinelCopy;
        _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "Sentinel says migration has finished -- going online with encryption {sentinel: %@, secure sentinel: %@}", &v24, 0x16u);
      }

      fc_sentinel_encryptionKey = [(CKRecord *)v9 fc_sentinel_encryptionKey];
      if (secureSentinelCopy)
      {
        objc_setProperty_atomic(secureSentinelCopy, v19, fc_sentinel_encryptionKey, 48);
      }

      fc_secureSentinel_encryptionKey = [(CKRecord *)sentinelCopy fc_secureSentinel_encryptionKey];
      if (secureSentinelCopy)
      {
        objc_setProperty_atomic(secureSentinelCopy, v21, fc_secureSentinel_encryptionKey, 56);
      }
    }

    else
    {
      if (v17)
      {
        v24 = 138412546;
        v25 = v9;
        v26 = 2112;
        v27 = sentinelCopy;
        _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "Sentinel says migration has not finished -- going online without encryption {sentinel: %@, secure sentinel: %@}", &v24, 0x16u);
      }

      if (secureSentinelCopy)
      {
        objc_setProperty_atomic(secureSentinelCopy, v18, 0, 48);
        objc_setProperty_atomic(secureSentinelCopy, v23, 0, 56);
      }
    }

    databaseCopy[2](databaseCopy, 0);
  }
}

- (void)_deleteOldDataIfDesiredWithSentinel:(void *)sentinel secureSentinel:(void *)secureSentinel database:(void *)database completion:
{
  v9 = a2;
  sentinelCopy = sentinel;
  secureSentinelCopy = secureSentinel;
  databaseCopy = database;
  if (self)
  {
    if (secureSentinelCopy)
    {
      WeakRetained = objc_loadWeakRetained(secureSentinelCopy + 2);
    }

    else
    {
      WeakRetained = 0;
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __114__FCCKDatabaseEncryptionStartUpMiddleware__deleteOldDataIfDesiredWithSentinel_secureSentinel_database_completion___block_invoke;
    v14[3] = &unk_1E7C47C10;
    v19 = databaseCopy;
    v15 = v9;
    v16 = sentinelCopy;
    selfCopy = self;
    v18 = secureSentinelCopy;
    [WeakRetained fetchCleanupToVersionForDatabase:v18 completion:v14];
  }
}

void __90__FCCKDatabaseEncryptionStartUpMiddleware__tryToStartUpDatabase_targetVersion_completion___block_invoke_3_15(uint64_t a1, void *a2, void *a3, void *a4)
{
  v71 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v55[1] = MEMORY[0x1E69E9820];
    v55[2] = 3221225472;
    v55[3] = __90__FCCKDatabaseEncryptionStartUpMiddleware__tryToStartUpDatabase_targetVersion_completion___block_invoke_4;
    v55[4] = &unk_1E7C3A0B0;
    v10 = &v59;
    v11 = *(a1 + 48);
    v59 = v11;
    v12 = &v56;
    v13 = v7;
    v56 = v13;
    v14 = v8;
    v57 = v14;
    v58 = v9;
    v11[2](v11, v13, v14, v58);
  }

  else
  {
    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v52 = __90__FCCKDatabaseEncryptionStartUpMiddleware__tryToStartUpDatabase_targetVersion_completion___block_invoke_5;
    v53 = &unk_1E7C47C88;
    v10 = v55;
    v17 = *(a1 + 64);
    v55[0] = *(a1 + 56);
    v12 = v54;
    v18 = *(a1 + 40);
    v19 = *(a1 + 32);
    v54[0] = v18;
    v54[1] = v19;
    v20 = v7;
    v50 = v8;
    v21 = v15;
    v22 = v51;
    if (v16)
    {
      if ([(CKRecord *)v20 fc_sentinel_databaseVersion]>= v17)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __105__FCCKDatabaseEncryptionStartUpMiddleware__migrateToVersion_sentinel_secureSentinel_database_completion___block_invoke;
        v64 = &unk_1E7C3A060;
        v38 = v22;
        v39 = v22;
        v67 = v39;
        v40 = &v65;
        v41 = v20;
        v65 = v41;
        v66 = v50;
        v42 = v39;
        v22 = v38;
        v43 = v41;
        v44 = &v67;
        v9 = 0;
        v10 = v55;
        v52(v42, v43, v66, 0);
        v45 = v66;
      }

      else
      {
        v49 = v22;
        v23 = [(CKRecord *)v20 fc_sentinel_databaseVersion];
        if (v21)
        {
          v21[4] = v23;
          v21[5] = v17;
          v24 = [(CKRecord *)v20 fc_sentinel_encryptionKey];
          objc_setProperty_atomic(v21, v25, v24, 48);
        }

        else
        {
          v24 = [(CKRecord *)v20 fc_sentinel_encryptionKey];
        }

        v47 = v17;

        v27 = [(CKRecord *)v50 fc_secureSentinel_encryptionKey];
        if (v21)
        {
          objc_setProperty_atomic(v21, v26, v27, 56);
        }

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __105__FCCKDatabaseEncryptionStartUpMiddleware__migrateToVersion_sentinel_secureSentinel_database_completion___block_invoke_2;
        aBlock[3] = &unk_1E7C47B70;
        v28 = v21;
        v61 = v28;
        v46 = &v62;
        v29 = v49;
        v62 = v29;
        v48 = _Block_copy(aBlock);
        v30 = *(v16 + 8);
        v31 = FCPrivateDataEncryptionLog;
        v32 = os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT);
        if (v30)
        {
          if (v32)
          {
            *buf = 138412290;
            *&buf[4] = v20;
            _os_log_impl(&dword_1B63EF000, v31, OS_LOG_TYPE_DEFAULT, "Sentinel is valid and migration is needed: %@", buf, 0xCu);
          }

          v33 = objc_alloc_init(FCCKDatabaseMigrationOperation);
          [(FCCKDatabaseMigrationOperation *)v33 setDatabase:v28];
          [(FCCKDatabaseMigrationOperation *)v33 setMigrator:?];
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __105__FCCKDatabaseEncryptionStartUpMiddleware__migrateToVersion_sentinel_secureSentinel_database_completion___block_invoke_17;
          v64 = &unk_1E7C47BE8;
          v69 = v48;
          v65 = v20;
          v34 = v50;
          v70 = v47;
          v66 = v34;
          v67 = v16;
          v68 = v28;
          v10 = v55;
          if (v33)
          {
            objc_setProperty_nonatomic_copy(v33, v35, buf, 384);
          }

          v36 = v33;
          [(FCOperation *)v36 setQualityOfService:25];
          [(FCOperation *)v36 setRelativePriority:2];

          v37 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
          [v37 addOperation:v36];
        }

        else
        {
          if (v32)
          {
            *buf = 138412546;
            *&buf[4] = v28;
            *&buf[12] = 2112;
            *&buf[14] = v20;
            _os_log_impl(&dword_1B63EF000, v31, OS_LOG_TYPE_DEFAULT, "Sentinel is valid and migration is not needed {database: %@, sentinel: %@}", buf, 0x16u);
          }

          v36 = [v20 copy];
          [(CKRecord *)v36 setFc_sentinel_databaseVersion:v47];
          [(CKRecord *)v36 setFc_sentinel_deletedToDatabaseVersion:v47];
          v52(v29, v36, v50, 0);
          v10 = v55;
        }

        v40 = v46;

        v44 = &v61;
        v12 = v54;
        v45 = v48;
        v22 = v49;
      }
    }
  }
}

void __90__FCCKDatabaseEncryptionStartUpMiddleware__tryToStartUpDatabase_targetVersion_completion___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (FCCKDatabaseStartUpResultFromError(v9) == 1)
  {
    v11 = *(a1 + 48);
    v10 = v9;
    v11[2](v11, v10);
  }

  else
  {
    if (v9)
    {
      [(FCCKPrivateDatabase *)*(a1 + 32) reportEncryptionMigrationError:v9];
    }

    [(FCCKDatabaseEncryptionStartUpMiddleware *)*(a1 + 40) _adoptSentinel:v7 secureSentinel:v8 forDatabase:*(a1 + 32) completion:*(a1 + 48)];
  }
}

- (void)_createSentinelsIfNeededForDatabase:(void *)database completion:
{
  v23[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  databaseCopy = database;
  if (self)
  {
    v7 = [MEMORY[0x1E695DEF0] fc_randomDataWithLength:32];
    v8 = [MEMORY[0x1E695DEF0] fc_randomDataWithLength:32];
    v9 = v8;
    if (v7)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v11 = objc_alloc(MEMORY[0x1E695BA60]);
      v12 = +[(CKRecordID *)MEMORY[0x1E695BA70]];
      v13 = [v11 initWithRecordType:@"Sentinel" recordID:v12];

      [(CKRecord *)v13 setFc_sentinel_encryptionKey:v7];
      [(CKRecord *)v13 setFc_sentinel_version:?];
      v14 = [(CKRecord *)MEMORY[0x1E695BA60] secureSentinelRecordWithEncryptionKey:v9];
      v15 = objc_alloc_init(FCCKPrivateSaveRecordsOperation);
      v23[0] = v13;
      v23[1] = v14;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
      [(FCCKPrivateSaveRecordsOperation *)v15 setRecordsToSave:v16];

      [(FCCKPrivateSaveRecordsOperation *)v15 setSavePolicy:0];
      [(FCCKPrivateDatabaseOperation *)v15 setSkipPreflight:1];
      [(FCCKPrivateDatabaseOperation *)v15 setHandleIdentityLoss:0];
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __90__FCCKDatabaseEncryptionStartUpMiddleware__createSentinelsIfNeededForDatabase_completion___block_invoke;
      v21 = &unk_1E7C40AE8;
      v22 = databaseCopy;
      [(FCCKPrivateSaveRecordsOperation *)v15 setSaveRecordsCompletionBlock:&v18];
      v17 = v15;
      [(FCOperation *)v17 setQualityOfService:25, v18, v19, v20, v21];
      [(FCOperation *)v17 setRelativePriority:2];

      [(FCCKPrivateDatabase *)v5 addOperation:v17];
    }
  }
}

void __105__FCCKDatabaseEncryptionStartUpMiddleware__migrateToVersion_sentinel_secureSentinel_database_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v15 = a2;
  if (v7)
  {
    *(v7 + 32) = 0;
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    *(v11 + 40) = 0;
    v12 = *(a1 + 32);
    if (v12)
    {
      objc_setProperty_atomic(v12, v10, 0, 48);
      v14 = *(a1 + 32);
      if (v14)
      {
        objc_setProperty_atomic(v14, v13, 0, 56);
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __105__FCCKDatabaseEncryptionStartUpMiddleware__migrateToVersion_sentinel_secureSentinel_database_completion___block_invoke_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v5 = *(*(a1 + 64) + 16);

    v5();
  }

  else
  {
    v6 = [*(a1 + 32) copy];
    [(CKRecord *)v6 setFc_sentinel_databaseVersion:?];
    v7 = objc_alloc_init(FCCKPrivateSaveRecordsOperation);
    v17[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [(FCCKPrivateSaveRecordsOperation *)v7 setRecordsToSave:v8];

    [(FCCKPrivateSaveRecordsOperation *)v7 setSavePolicy:1];
    [(FCCKPrivateDatabaseOperation *)v7 setSkipPreflight:1];
    [(FCCKPrivateDatabaseOperation *)v7 setHandleIdentityLoss:0];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __105__FCCKDatabaseEncryptionStartUpMiddleware__migrateToVersion_sentinel_secureSentinel_database_completion___block_invoke_2_20;
    v11[3] = &unk_1E7C47BC0;
    v9 = *(a1 + 40);
    v11[4] = *(a1 + 48);
    v12 = v6;
    v13 = v9;
    v14 = *(a1 + 56);
    v16 = *(a1 + 64);
    v15 = *(a1 + 32);
    v10 = v6;
    [(FCCKPrivateSaveRecordsOperation *)v7 setSaveRecordsCompletionBlock:v11];
    [(FCCKDatabaseEncryptionStartUpMiddleware *)*(a1 + 48) _associateChildOperation:v7];
    [(FCCKPrivateDatabase *)*(a1 + 56) addOperation:v7];
  }
}

void __105__FCCKDatabaseEncryptionStartUpMiddleware__migrateToVersion_sentinel_secureSentinel_database_completion___block_invoke_2_20(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if ([a2 count] == 1)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __105__FCCKDatabaseEncryptionStartUpMiddleware__migrateToVersion_sentinel_secureSentinel_database_completion___block_invoke_3;
    v10[3] = &unk_1E7C47B98;
    v11 = *(a1 + 72);
    [(FCCKDatabaseEncryptionStartUpMiddleware *)v6 _deleteOldDataIfDesiredWithSentinel:v7 secureSentinel:v8 database:v9 completion:v10];
  }

  else
  {
    (*(*(a1 + 72) + 16))();
  }
}

- (void)_associateChildOperation:(uint64_t)operation
{
  if (operation)
  {
    v2 = a2;
    [v2 setQualityOfService:25];
    [v2 setRelativePriority:2];
  }
}

void __114__FCCKDatabaseEncryptionStartUpMiddleware__deleteOldDataIfDesiredWithSentinel_secureSentinel_database_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v46 = *(a1 + 64);
    v43 = *(a1 + 32);
    v44 = *(a1 + 40);
    v45 = v5;
    v46[2](v46, v43, v44, v45);
  }

  else
  {
    v6 = [(CKRecord *)*(a1 + 32) fc_sentinel_databaseVersion];
    if (a2 >= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = a2;
    }

    if ([(CKRecord *)*(a1 + 32) fc_sentinel_deletedToDatabaseVersion]>= v7)
    {
      v34 = FCPrivateDataEncryptionLog;
      if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
      {
        v35 = *(a1 + 32);
        v36 = v34;
        v37 = [(CKRecord *)v35 fc_sentinel_deletedToDatabaseVersion];
        v38 = FCCKPrivateDatabaseVersionString(v37);
        LODWORD(block) = 138543362;
        *(&block + 4) = v38;
        _os_log_impl(&dword_1B63EF000, v36, OS_LOG_TYPE_DEFAULT, "Data cleanup is unnecessary because we've cleaned up to version=%{public}@", &block, 0xCu);
      }

      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v8 = *(a1 + 40);
      v10 = *(a1 + 48);
      v9 = *(a1 + 56);
      v11 = *(a1 + 64);
      v12 = *(a1 + 32);
      v42 = v8;
      v13 = v9;
      v40 = v11;
      if (v10)
      {
        v14 = [(CKRecord *)v12 fc_sentinel_deletedToDatabaseVersion];
        v15 = [(CKRecord *)v12 fc_sentinel_deletedToDatabaseVersion];
        if (v13)
        {
          v13[4] = v15;
          v13[5] = [(CKRecord *)v12 fc_sentinel_databaseVersion];
          v16 = [(CKRecord *)v12 fc_sentinel_encryptionKey];
          objc_setProperty_atomic(v13, v17, v16, 48);
        }

        else
        {
          [(CKRecord *)v12 fc_sentinel_databaseVersion];
          v16 = [(CKRecord *)v12 fc_sentinel_encryptionKey];
        }

        v19 = [(CKRecord *)v42 fc_secureSentinel_encryptionKey];
        if (v13)
        {
          objc_setProperty_atomic(v13, v18, v19, 56);
        }

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __113__FCCKDatabaseEncryptionStartUpMiddleware__deleteOldDataUpToVersion_sentinel_secureSentinel_database_completion___block_invoke;
        aBlock[3] = &unk_1E7C47B70;
        v20 = v13;
        v58 = v20;
        v59 = v40;
        v39 = _Block_copy(aBlock);
        v55[0] = 0;
        v55[1] = v55;
        v55[2] = 0x3032000000;
        v55[3] = __Block_byref_object_copy__98;
        v55[4] = __Block_byref_object_dispose__98;
        v56 = 0;
        v53[0] = 0;
        v53[1] = v53;
        v53[2] = 0x3032000000;
        v53[3] = __Block_byref_object_copy__98;
        v53[4] = __Block_byref_object_dispose__98;
        v54 = 0;
        v21 = dispatch_group_create();
        v22 = *(v10 + 8);
        v41 = FCCKDatabaseZoneIDsToDeleteAfterMigration(v14, v7, v22);

        if ([v41 count])
        {
          v23 = objc_alloc_init(FCCKPrivateDeleteRecordZonesOperation);
          [(FCCKPrivateDatabaseOperation *)v23 setDatabase:v20];
          [(FCCKPrivateDeleteRecordZonesOperation *)v23 setRecordZoneIDsToDelete:v41];
          [(FCCKPrivateDatabaseOperation *)v23 setSkipPreflight:1];
          [(FCCKPrivateDatabaseOperation *)v23 setHandleIdentityLoss:0];
          dispatch_group_enter(v21);
          v50[0] = MEMORY[0x1E69E9820];
          v50[1] = 3221225472;
          v50[2] = __113__FCCKDatabaseEncryptionStartUpMiddleware__deleteOldDataUpToVersion_sentinel_secureSentinel_database_completion___block_invoke_25;
          v50[3] = &unk_1E7C47C38;
          v52 = v55;
          v51 = v21;
          [(FCCKPrivateDeleteRecordZonesOperation *)v23 setDeleteRecordZonesCompletionBlock:v50];
          v24 = v23;
          [(FCOperation *)v24 setQualityOfService:25];
          [(FCOperation *)v24 setRelativePriority:2];

          v25 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
          [v25 addOperation:v24];
        }

        v26 = *(v10 + 8);
        v27 = FCCKDatabaseRecordIDsToDeleteAfterMigration(v14, v7, v26);

        if ([v27 count])
        {
          v28 = objc_alloc_init(FCCKPrivateBatchedDeleteRecordsOperation);
          [(FCCKPrivateBatchedDeleteRecordsOperation *)v28 setDatabase:v20];
          [(FCCKPrivateBatchedDeleteRecordsOperation *)v28 setRecordIDsToDelete:v27];
          [(FCCKPrivateBatchedDeleteRecordsOperation *)v28 setSkipPreflight:1];
          [(FCCKPrivateBatchedDeleteRecordsOperation *)v28 setHandleIdentityLoss:0];
          dispatch_group_enter(v21);
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = __113__FCCKDatabaseEncryptionStartUpMiddleware__deleteOldDataUpToVersion_sentinel_secureSentinel_database_completion___block_invoke_2;
          v47[3] = &unk_1E7C47C38;
          v49 = v53;
          v48 = v21;
          [(FCCKPrivateBatchedDeleteRecordsOperation *)v28 setDeleteRecordsCompletionBlock:v47];
          v29 = v28;
          [(FCOperation *)v29 setQualityOfService:25];
          [(FCOperation *)v29 setRelativePriority:2];

          v30 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
          [v30 addOperation:v29];
        }

        v31 = dispatch_get_global_queue(25, 0);
        *&block = MEMORY[0x1E69E9820];
        *(&block + 1) = 3221225472;
        v61 = __113__FCCKDatabaseEncryptionStartUpMiddleware__deleteOldDataUpToVersion_sentinel_secureSentinel_database_completion___block_invoke_3;
        v62 = &unk_1E7C47C60;
        v68 = v55;
        v69 = v53;
        v32 = v12;
        v70 = v7;
        v63 = v32;
        v67 = v39;
        v64 = v42;
        v65 = v10;
        v66 = v20;
        v33 = v39;
        dispatch_group_notify(v21, v31, &block);

        _Block_object_dispose(v53, 8);
        _Block_object_dispose(v55, 8);
      }
    }
  }
}

void __113__FCCKDatabaseEncryptionStartUpMiddleware__deleteOldDataUpToVersion_sentinel_secureSentinel_database_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v15 = a2;
  if (v7)
  {
    *(v7 + 32) = 0;
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    *(v11 + 40) = 0;
    v12 = *(a1 + 32);
    if (v12)
    {
      objc_setProperty_atomic(v12, v10, 0, 48);
      v14 = *(a1 + 32);
      if (v14)
      {
        objc_setProperty_atomic(v14, v13, 0, 56);
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __113__FCCKDatabaseEncryptionStartUpMiddleware__deleteOldDataUpToVersion_sentinel_secureSentinel_database_completion___block_invoke_25(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

void __113__FCCKDatabaseEncryptionStartUpMiddleware__deleteOldDataUpToVersion_sentinel_secureSentinel_database_completion___block_invoke_2(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

void __113__FCCKDatabaseEncryptionStartUpMiddleware__deleteOldDataUpToVersion_sentinel_secureSentinel_database_completion___block_invoke_3(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 72) + 8) + 40);
  if (v2 && ![v2 fc_isCKUnknownItemError] || (v3 = *(*(*(a1 + 80) + 8) + 40)) != 0 && !objc_msgSend(v3, "fc_isCKUnknownItemError"))
  {
    v7 = *(*(*(a1 + 72) + 8) + 40);
    if (!v7)
    {
      v7 = *(*(*(a1 + 80) + 8) + 40);
    }

    v8 = *(a1 + 56);
    v9 = v7;
    [(FCCKPrivateDatabase *)v8 reportPostMigrationCleanupError:v9];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v4 = [*(a1 + 32) copy];
    [(CKRecord *)v4 setFc_sentinel_deletedToDatabaseVersion:?];
    v5 = objc_alloc_init(FCCKPrivateSaveRecordsOperation);
    v14[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [(FCCKPrivateSaveRecordsOperation *)v5 setRecordsToSave:v6];

    [(FCCKPrivateSaveRecordsOperation *)v5 setSavePolicy:1];
    [(FCCKPrivateDatabaseOperation *)v5 setSkipPreflight:1];
    [(FCCKPrivateDatabaseOperation *)v5 setHandleIdentityLoss:0];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __113__FCCKDatabaseEncryptionStartUpMiddleware__deleteOldDataUpToVersion_sentinel_secureSentinel_database_completion___block_invoke_4;
    v10[3] = &unk_1E7C39B60;
    v13 = *(a1 + 64);
    v11 = *(a1 + 40);
    v12 = *(a1 + 32);
    [(FCCKPrivateSaveRecordsOperation *)v5 setSaveRecordsCompletionBlock:v10];
    [(FCCKDatabaseEncryptionStartUpMiddleware *)*(a1 + 48) _associateChildOperation:v5];
    [(FCCKPrivateDatabase *)*(a1 + 56) addOperation:v5];
  }
}

void __113__FCCKDatabaseEncryptionStartUpMiddleware__deleteOldDataUpToVersion_sentinel_secureSentinel_database_completion___block_invoke_4(void *a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v9 count];
  v7 = a1[6];
  if (v6 == 1)
  {
    v8 = [v9 firstObject];
    (*(v7 + 16))(v7, v8, a1[4], 0);
  }

  else
  {
    (*(v7 + 16))(a1[6], a1[5], a1[4], v5);
  }
}

void __82__FCCKDatabaseEncryptionStartUpMiddleware__fetchSentinelsWithDatabase_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = a2;
  v6 = [v5 allValues];
  v7 = [v6 fc_firstObjectPassingTest:&__block_literal_global_184];

  v8 = [v5 allValues];

  v9 = [v8 fc_firstObjectPassingTest:&__block_literal_global_31_1];

  if (v7 && v9)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    [v10 fc_isCKUnknownItemError];
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t __82__FCCKDatabaseEncryptionStartUpMiddleware__fetchSentinelsWithDatabase_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 recordType];
  v3 = [v2 isEqualToString:@"Sentinel"];

  return v3;
}

uint64_t __82__FCCKDatabaseEncryptionStartUpMiddleware__fetchSentinelsWithDatabase_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 recordType];
  v3 = [v2 isEqualToString:@"SentinelSecure"];

  return v3;
}

void __90__FCCKDatabaseEncryptionStartUpMiddleware__createSentinelsIfNeededForDatabase_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  v5 = a2;
  v6 = [v5 fc_firstObjectPassingTest:&__block_literal_global_36_1];
  v7 = [v5 fc_firstObjectPassingTest:&__block_literal_global_38_4];

  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *MEMORY[0x1E695B7C0];
    v9 = +[(CKRecordID *)MEMORY[0x1E695BA70]];
    v6 = [v12 fc_underlyingCKErrorUserInfoValueForKey:v8 forItemID:v9];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v10 = *MEMORY[0x1E695B7C0];
  v11 = +[(CKRecordID *)MEMORY[0x1E695BA70]];
  v7 = [v12 fc_underlyingCKErrorUserInfoValueForKey:v10 forItemID:v11];

LABEL_3:
  (*(*(a1 + 32) + 16))();
}

uint64_t __90__FCCKDatabaseEncryptionStartUpMiddleware__createSentinelsIfNeededForDatabase_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 recordType];
  v3 = [v2 isEqualToString:@"Sentinel"];

  return v3;
}

uint64_t __90__FCCKDatabaseEncryptionStartUpMiddleware__createSentinelsIfNeededForDatabase_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 recordType];
  v3 = [v2 isEqualToString:@"SentinelSecure"];

  return v3;
}

void __110__FCCKDatabaseEncryptionStartUpMiddleware__handleIdentityLossWithDatabase_sentinel_secureSentinel_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v10 = a4;
  v11 = *(a1 + 32);
  if (v11)
  {
    *(v11 + 40) = 0;
    v12 = *(a1 + 32);
    if (v12)
    {
      objc_setProperty_atomic(v12, v9, 0, 48);
      v14 = *(a1 + 32);
      if (v14)
      {
        objc_setProperty_atomic(v14, v13, 0, 56);
      }
    }
  }

  if (v8 || ![(CKRecord *)v7 fc_sentinel_databaseVersion])
  {
    [(FCCKDatabaseEncryptionStartUpMiddleware *)*(a1 + 40) _adoptSentinel:v7 secureSentinel:v8 forDatabase:*(a1 + 32) completion:*(a1 + 48)];
  }

  else
  {
    v16 = *(a1 + 48);
    v15 = v10;
    v16[2](v16, v15);
  }
}

void __110__FCCKDatabaseEncryptionStartUpMiddleware__handleIdentityLossWithDatabase_sentinel_secureSentinel_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([(CKRecord *)*(a1 + 32) fc_sentinel_databaseVersion])
  {
    v5 = *(a1 + 48);
    v4 = *(a1 + 56);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __110__FCCKDatabaseEncryptionStartUpMiddleware__handleIdentityLossWithDatabase_sentinel_secureSentinel_completion___block_invoke_4;
    v7[3] = &unk_1E7C47C88;
    v8 = v4;
    v6 = *(a1 + 64);
    v9 = *(a1 + 48);
    v10 = v6;
    [(FCCKDatabaseEncryptionStartUpMiddleware *)v5 _createSentinelsIfNeededForDatabase:v8 completion:v7];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

void __110__FCCKDatabaseEncryptionStartUpMiddleware__handleIdentityLossWithDatabase_sentinel_secureSentinel_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v9 = [(CKRecord *)v5 fc_sentinel_encryptionKey];
    v10 = *(a1 + 32);
    if (v10)
    {
      objc_setProperty_atomic(v10, v8, v9, 48);
    }

    v12 = [(CKRecord *)v7 fc_secureSentinel_encryptionKey];
    v13 = *(a1 + 32);
    if (v13)
    {
      objc_setProperty_atomic(v13, v11, v12, 56);
    }

    v14 = objc_alloc_init(FCCKSecureDatabaseResetOperation);
    [(FCCKSecureDatabaseResetOperation *)v14 setDatabase:*(a1 + 32)];
    [(FCCKSecureDatabaseResetOperation *)v14 setDeleteZones:0];
    [(FCCKSecureDatabaseResetOperation *)v14 setRestoreSecureSentinel:0];
    [(FCCKSecureDatabaseResetOperation *)v14 setRestoreZoneContents:1];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __110__FCCKDatabaseEncryptionStartUpMiddleware__handleIdentityLossWithDatabase_sentinel_secureSentinel_completion___block_invoke_5;
    v16[3] = &unk_1E7C47CB0;
    v19 = *(a1 + 48);
    v17 = v5;
    v18 = v7;
    [(FCCKSecureDatabaseResetOperation *)v14 setResetCompletionHandler:v16];
    [(FCCKDatabaseEncryptionStartUpMiddleware *)*(a1 + 40) _associateChildOperation:v14];
    v15 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
    [v15 addOperation:v14];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

@end