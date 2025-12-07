@interface HDObjectAuthorizationSyncEntity
+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error;
+ (id)decodeSyncObjectWithData:(id)data;
+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)version;
+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error;
+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error;
@end

@implementation HDObjectAuthorizationSyncEntity

+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error
{
  end = range.end;
  start = range.start;
  v39[6] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  profileCopy = profile;
  handlerCopy = handler;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v39[0] = @"object";
  v39[1] = @"source";
  v39[2] = @"status";
  v39[3] = @"session";
  v39[4] = @"sync_identity";
  v39[5] = @"modification_date";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:6];
  database = [profileCopy database];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = -1;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __110__HDObjectAuthorizationSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke;
  v26[3] = &unk_278625FA0;
  v17 = v15;
  v27 = v17;
  v18 = sessionCopy;
  v33 = start;
  v34 = end;
  v28 = v18;
  v32 = &v35;
  v19 = database;
  v29 = v19;
  v20 = dictionary;
  v30 = v20;
  v21 = profileCopy;
  v31 = v21;
  if ([(HDHealthEntity *)HDObjectAuthorizationEntity performReadTransactionWithHealthDatabase:v19 error:error block:v26])
  {
    allValues = [v20 allValues];
    v23 = [handlerCopy sendCodableChange:allValues resultAnchor:v36[3] sequence:0 done:1 error:error];
  }

  else
  {
    v23 = 0;
  }

  _Block_object_dispose(&v35, 8);
  return v23;
}

BOOL __110__HDObjectAuthorizationSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(*(a1 + 72) + 8) + 24;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __110__HDObjectAuthorizationSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2;
  v15[3] = &unk_2786172E8;
  v9 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  v18 = v5;
  v11 = *(a1 + 80);
  v10 = *(a1 + 88);
  v12 = v5;
  v13 = [(HDHealthEntity *)HDObjectAuthorizationEntity enumerateEntitiesForSyncWithProperties:v6 predicate:0 session:v7 syncAnchorRange:v11 limit:v10 lastSyncAnchor:0 healthDatabase:v8 error:v9 block:a3, v15];

  return v13;
}

BOOL __110__HDObjectAuthorizationSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = HDSQLiteColumnWithNameAsUUID();
  v11 = [*(a1 + 32) objectForKeyedSubscript:v10];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = objc_alloc_init(HDCodableObjectAuthorization);
    v13 = [v10 hk_dataForUUIDBytes];
    [(HDCodableObjectAuthorization *)v12 setObjectUUID:v13];

    [*(a1 + 32) setObject:v12 forKeyedSubscript:v10];
    if (!v12)
    {
      v22 = 1;
      goto LABEL_7;
    }
  }

  v14 = objc_alloc_init(HDCodableObjectSourceAuthorization);
  v15 = HDSQLiteColumnWithNameAsUUID();
  v16 = [v15 hk_dataForUUIDBytes];
  [(HDCodableObjectSourceAuthorization *)v14 setSourceUUID:v16];

  [(HDCodableObjectSourceAuthorization *)v14 setAuthorizationStatus:HDSQLiteColumnWithNameAsInt64()];
  HDSQLiteColumnWithNameAsDouble();
  [(HDCodableObjectSourceAuthorization *)v14 setModificationDate:?];
  v17 = HDSQLiteColumnWithNameAsUUID();
  v18 = [v17 hk_dataForUUIDBytes];
  [(HDCodableObjectSourceAuthorization *)v14 setSessionUUID:v18];

  v19 = HDSQLiteColumnWithNameAsInt64();
  v20 = [*(a1 + 40) syncIdentityManager];
  v21 = [v20 identityForEntityID:v19 transaction:*(a1 + 48) error:a8];

  v22 = v21 != 0;
  if (v21)
  {
    v23 = [v21 identity];
    v24 = [v23 codableSyncIdentity];
    [(HDCodableObjectSourceAuthorization *)v14 setSyncIdentity:v24];

    [(HDCodableObjectAuthorization *)v12 addAuthorizations:v14];
  }

LABEL_7:
  return v22;
}

+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error
{
  sessionCopy = session;
  database = [profile database];
  v11 = [(HDHealthEntity *)HDObjectAuthorizationEntity nextSyncAnchorWithStartAnchor:anchor predicate:0 session:sessionCopy healthDatabase:database error:error];

  return v11;
}

+ (id)decodeSyncObjectWithData:(id)data
{
  dataCopy = data;
  v4 = [[HDCodableObjectAuthorization alloc] initWithData:dataCopy];

  return v4;
}

+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error
{
  v101 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  storeCopy = store;
  profileCopy = profile;
  v70 = storeCopy;
  v71 = objc_opt_self();
  syncProvenance = [storeCopy syncProvenance];
  v68 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = objectsCopy;
  v64 = [obj countByEnumeratingWithState:&v85 objects:v100 count:16];
  if (v64)
  {
    v63 = *v86;
    do
    {
      v11 = 0;
      do
      {
        if (*v86 != v63)
        {
          v12 = v11;
          objc_enumerationMutation(obj);
          v11 = v12;
        }

        v65 = v11;
        v13 = *(*(&v85 + 1) + 8 * v11);
        objectUUID = [v13 objectUUID];
        if (objectUUID)
        {
          v67 = [MEMORY[0x277CCAD78] hk_UUIDWithData:?];
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          authorizations = [v13 authorizations];
          v73 = [authorizations countByEnumeratingWithState:&v81 objects:v99 count:16];
          if (!v73)
          {
            goto LABEL_37;
          }

          v72 = *v82;
          while (1)
          {
            for (i = 0; i != v73; ++i)
            {
              if (*v82 != v72)
              {
                objc_enumerationMutation(authorizations);
              }

              v15 = *(*(&v81 + 1) + 8 * i);
              sourceUUID = [v15 sourceUUID];
              if (sourceUUID)
              {
                if ([v15 hasAuthorizationStatus])
                {
                  v17 = [MEMORY[0x277CCAD78] hk_UUIDWithData:sourceUUID];
                  daemon = objc_alloc_init(MEMORY[0x277CCD710]);
                  [daemon setObjectUUID:v67];
                  [daemon setSourceUUID:v17];
                  [daemon setStatus:{objc_msgSend(v15, "authorizationStatus")}];
                  [v15 modificationDate];
                  [daemon setModificationDate:?];
                  v19 = MEMORY[0x277CCAD78];
                  sessionUUID = [v15 sessionUUID];
                  v21 = [v19 hk_UUIDWithData:sessionUUID];
                  [daemon setSessionUUID:v21];

                  *&buf = 0;
                  *(&buf + 1) = &buf;
                  v90 = 0x3032000000;
                  v91 = __Block_byref_object_copy__136;
                  v92 = __Block_byref_object_dispose__136;
                  syncIdentityManager = [profileCopy syncIdentityManager];
                  legacySyncIdentity = [syncIdentityManager legacySyncIdentity];

                  if (![v15 hasSyncIdentity])
                  {
                    goto LABEL_17;
                  }

                  syncIdentity = [v15 syncIdentity];
                  v80 = 0;
                  v24 = [HDSyncIdentity syncIdentityWithCodable:syncIdentity error:&v80];
                  v25 = v80;

                  if (v24)
                  {
                    database = [profileCopy database];
                    p_buf = &buf;
                    v79 = v25;
                    v75[0] = MEMORY[0x277D85DD0];
                    v75[1] = 3221225472;
                    v75[2] = __90__HDObjectAuthorizationEntity__insertCodableObjectAuthorizations_syncStore_profile_error___block_invoke;
                    v75[3] = &unk_278614288;
                    v76 = profileCopy;
                    v27 = v24;
                    v77 = v27;
                    v28 = [(HDHealthEntity *)HDSyncIdentityEntity performWriteTransactionWithHealthDatabase:database error:&v79 block:v75];
                    v29 = v79;

                    if (v28)
                    {
LABEL_17:
                      v30 = MEMORY[0x277CCABB0];
                      entity = [*(*(&buf + 1) + 40) entity];
                      v25 = [v30 numberWithLongLong:{objc_msgSend(entity, "persistentID")}];

                      v32 = [v68 objectForKeyedSubscript:v25];
                      v33 = v32;
                      if (v32)
                      {
                        [v32 addObject:daemon];
                      }

                      else
                      {
                        v38 = objc_alloc(MEMORY[0x277CBEB18]);
                        v98 = daemon;
                        v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v98 count:1];
                        v33 = [v38 initWithArray:v39];
                      }

                      [v68 setObject:v33 forKeyedSubscript:v25];

                      goto LABEL_29;
                    }
                  }

                  else
                  {
                    _HKInitializeLogging();
                    v40 = *MEMORY[0x277CCC328];
                    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
                    {
                      LODWORD(v94) = 138543362;
                      *(&v94 + 4) = v25;
                      _os_log_fault_impl(&dword_228986000, v40, OS_LOG_TYPE_FAULT, "HDObjectAuthorizationSyncEntity SyncIdentity from received codable is nil %{public}@", &v94, 0xCu);
                    }

LABEL_29:
                  }

                  _Block_object_dispose(&buf, 8);

                  goto LABEL_31;
                }

                _HKInitializeLogging();
                v36 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                {
                  v44 = v36;
                  v45 = objc_opt_class();
                  LODWORD(buf) = 138543362;
                  *(&buf + 4) = v45;
                  v46 = v45;
                  _os_log_error_impl(&dword_228986000, v44, OS_LOG_TYPE_ERROR, "%{public}@ is missing authorization status and will be ignored.", &buf, 0xCu);
                }

                v17 = [MEMORY[0x277CCA9B8] hk_error:100 format:@"Missing authorization status"];
                daemon = [profileCopy daemon];
                autoBugCaptureReporter = [daemon autoBugCaptureReporter];
                [autoBugCaptureReporter reportApplyDataFailure:objc_opt_class() duringSyncFromStore:v70 error:v17];
              }

              else
              {
                _HKInitializeLogging();
                v34 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                {
                  v41 = v34;
                  v42 = objc_opt_class();
                  LODWORD(buf) = 138543362;
                  *(&buf + 4) = v42;
                  v43 = v42;
                  _os_log_error_impl(&dword_228986000, v41, OS_LOG_TYPE_ERROR, "%{public}@ is missing a source ID and will be ignored.", &buf, 0xCu);
                }

                v17 = [MEMORY[0x277CCA9B8] hk_error:100 format:@"Missing source ID"];
                daemon = [profileCopy daemon];
                autoBugCaptureReporter2 = [daemon autoBugCaptureReporter];
                [autoBugCaptureReporter2 reportApplyDataFailure:objc_opt_class() duringSyncFromStore:v70 error:v17];
              }

LABEL_31:
            }

            v73 = [authorizations countByEnumeratingWithState:&v81 objects:v99 count:16];
            if (!v73)
            {
              goto LABEL_37;
            }
          }
        }

        _HKInitializeLogging();
        v47 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          v49 = v47;
          v50 = objc_opt_class();
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v50;
          v51 = v50;
          _os_log_error_impl(&dword_228986000, v49, OS_LOG_TYPE_ERROR, "%{public}@ is missing an object ID and will be ignored.", &buf, 0xCu);
        }

        v67 = [MEMORY[0x277CCA9B8] hk_error:100 format:@"Missing Object ID"];
        authorizations = [profileCopy daemon];
        autoBugCaptureReporter3 = [authorizations autoBugCaptureReporter];
        [autoBugCaptureReporter3 reportApplyDataFailure:objc_opt_class() duringSyncFromStore:v70 error:v67];

LABEL_37:
        v11 = v65 + 1;
      }

      while (v65 + 1 != v64);
      v64 = [obj countByEnumeratingWithState:&v85 objects:v100 count:16];
    }

    while (v64);
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v52 = v68;
  v53 = [v52 countByEnumeratingWithState:&v94 objects:&buf count:16];
  if (v53)
  {
    v54 = *v95;
    v55 = 1;
LABEL_41:
    v56 = 0;
    while (1)
    {
      if (*v95 != v54)
      {
        objc_enumerationMutation(v52);
      }

      v57 = *(*(&v94 + 1) + 8 * v56);
      v58 = [v52 objectForKeyedSubscript:v57];
      LOBYTE(v57) = [v71 setObjectAuthorizationRecords:v58 syncProvenance:syncProvenance syncIdentity:objc_msgSend(v57 profile:"intValue") error:{profileCopy, error}];

      if ((v57 & 1) == 0)
      {
        break;
      }

      if (v53 == ++v56)
      {
        v53 = [v52 countByEnumeratingWithState:&v94 objects:&buf count:16];
        if (v53)
        {
          goto LABEL_41;
        }

        goto LABEL_47;
      }
    }
  }

  else
  {
LABEL_47:
    v55 = 0;
  }

  return v55;
}

+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)version
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB98];
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v5 = [v3 setWithArray:v4];

  return v5;
}

@end