@interface HDKeyValueSyncEntity
+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error;
+ (id)decodeSyncObjectWithData:(id)data;
+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error;
+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error;
@end

@implementation HDKeyValueSyncEntity

+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error
{
  end = range.end;
  start = range.start;
  sessionCopy = session;
  profileCopy = profile;
  handlerCopy = handler;
  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  category = [self category];
  v16 = +[HDKeyValueEntity _predicateForCategory:](HDKeyValueEntity, [self category]);
  v17 = [HDKeyValueEntity _entityClassForKeyValueCategory:category];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = -1;
  database = [profileCopy database];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __99__HDKeyValueSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke;
  v28[3] = &unk_27862AEE8;
  v34 = v17;
  v19 = profileCopy;
  v29 = v19;
  v20 = v16;
  v30 = v20;
  v21 = sessionCopy;
  v35 = start;
  v36 = end;
  v31 = v21;
  v33 = &v38;
  v22 = v14;
  v32 = v22;
  v37 = category;
  LODWORD(start) = [(objc_class *)v17 performReadTransactionWithHealthDatabase:database error:error block:v28];

  if (start)
  {
    allValues = [v22 allValues];
    v24 = [handlerCopy sendCodableChange:allValues resultAnchor:v39[3] sequence:0 done:1 error:error];
  }

  else
  {
    v24 = 0;
  }

  _Block_object_dispose(&v38, 8);
  return v24;
}

uint64_t __99__HDKeyValueSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v29[2] = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [*(a1 + 72) entityEncoderForProfile:*(a1 + 32) transaction:v4 purpose:0 encodingOptions:0 authorizationFilter:0];
  v6 = [v5 orderedProperties];
  v29[0] = @"domain";
  v29[1] = @"sync_identity";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v21 = [v6 arrayByAddingObjectsFromArray:v7];

  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *(a1 + 72);
  v11 = *(*(a1 + 64) + 8) + 24;
  v12 = [*(a1 + 32) database];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __99__HDKeyValueSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2;
  v23[3] = &unk_27862AEC0;
  v24 = v5;
  v13 = *(a1 + 56);
  v14 = *(a1 + 96);
  v25 = v13;
  v28 = v14;
  v26 = *(a1 + 32);
  v27 = v4;
  v16 = *(a1 + 80);
  v15 = *(a1 + 88);
  v17 = v4;
  v18 = v5;
  v19 = [v10 enumerateEntitiesForSyncWithProperties:v21 predicate:v9 session:v8 syncAnchorRange:v16 limit:v15 lastSyncAnchor:0 healthDatabase:v11 error:v12 block:{a3, v23}];

  return v19;
}

BOOL __99__HDKeyValueSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = [*(a1 + 32) codableRepresentationForPersistentID:objc_msgSend(a2 row:"persistentID" error:{a3, a4, a5, a6, a7), a4, a8}];
  v11 = HDSQLiteColumnWithNameAsString();
  if ([v11 isEqualToString:&stru_283BF39C8])
  {
  }

  else if (v11)
  {
    v12 = v11;
    v13 = v12;
    goto LABEL_6;
  }

  v12 = [MEMORY[0x277CBEB68] null];
  v13 = 0;
LABEL_6:
  v14 = [*(a1 + 40) objectForKeyedSubscript:v12];
  if (!v14)
  {
    v14 = [[HDCodableCategoryDomainDictionary alloc] initWithCategory:*(a1 + 64) domain:v13];
    [*(a1 + 40) setObject:v14 forKeyedSubscript:v12];
  }

  v15 = HDSQLiteColumnWithNameAsInt64();
  v16 = [*(a1 + 48) syncIdentityManager];
  v17 = [v16 identityForEntityID:v15 transaction:*(a1 + 56) error:a8];

  if (v17)
  {
    [(HDCodableCategoryDomainDictionary *)v14 addKeyValuePairs:v10];
    v18 = [v17 identity];
    v19 = [v18 codableSyncIdentity];
    [(HDCodableCategoryDomainDictionary *)v14 setSyncIdentity:v19];
  }

  return v17 != 0;
}

+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  sessionCopy = session;
  category = [self category];
  v13 = [HDKeyValueEntity _entityClassForKeyValueCategory:category];
  v14 = [HDKeyValueEntity _predicateForCategory:category];
  database = [profileCopy database];

  v16 = [(objc_class *)v13 nextSyncAnchorWithStartAnchor:anchor predicate:v14 session:sessionCopy healthDatabase:database error:error];
  return v16;
}

+ (id)decodeSyncObjectWithData:(id)data
{
  dataCopy = data;
  v4 = [[HDCodableCategoryDomainDictionary alloc] initWithData:dataCopy];

  return v4;
}

+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error
{
  v67 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  storeCopy = store;
  profileCopy = profile;
  category = [self category];
  v46 = [HDKeyValueEntity _entityClassForKeyValueCategory:category];
  v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v15 = objectsCopy;
  v54 = [v15 countByEnumeratingWithState:&v59 objects:v66 count:16];
  if (!v54)
  {

    v16 = storeCopy;
    goto LABEL_37;
  }

  v50 = v14;
  v53 = *v60;
  v52 = 1;
  v16 = storeCopy;
  v48 = profileCopy;
  v49 = v15;
  do
  {
    v17 = 0;
    do
    {
      if (*v60 != v53)
      {
        objc_enumerationMutation(v15);
      }

      v18 = *(*(&v59 + 1) + 8 * v17);
      if (([v18 hasCategory] & 1) == 0)
      {
        _HKInitializeLogging();
        v20 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "ignoring synced dictionary with missing category", buf, 2u);
        }

        v21 = MEMORY[0x277CCA9B8];
        v22 = @"Missing Category";
        goto LABEL_16;
      }

      if ([v18 category] != category)
      {
        _HKInitializeLogging();
        v23 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          v38 = v23;
          category2 = [v18 category];
          *buf = 134217984;
          v65 = category2;
          _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "ignoring synced dictionary with incorrect category %ld", buf, 0xCu);
        }

        v24 = MEMORY[0x277CCA9B8];
        category3 = [v18 category];
        v21 = v24;
        v22 = @"Incorrect Category %ld";
LABEL_16:
        keyValuePairs = [v21 hk_error:100 format:{v22, category3}];
        daemon = [profileCopy daemon];
        autoBugCaptureReporter = [daemon autoBugCaptureReporter];
        [autoBugCaptureReporter reportApplyDataFailure:objc_opt_class() duringSyncFromStore:v16 error:keyValuePairs];

        goto LABEL_17;
      }

      v19 = v15;
      if (v52)
      {
        v52 = -[objc_class _insertCodableCategoryDomainDictionary:provenance:profile:error:](v46, "_insertCodableCategoryDomainDictionary:provenance:profile:error:", v18, [v16 syncProvenance], profileCopy, error);
      }

      else
      {
        v52 = 0;
      }

      v28 = category;
      domain = [v18 domain];

      if (domain)
      {
        domain2 = [v18 domain];
        [v50 addObject:domain2];
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      keyValuePairs = [v18 keyValuePairs];
      v31 = [keyValuePairs countByEnumeratingWithState:&v55 objects:v63 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v56;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v56 != v33)
            {
              objc_enumerationMutation(keyValuePairs);
            }

            v35 = *(*(&v55 + 1) + 8 * i);
            v36 = [v35 key];

            if (v36)
            {
              v37 = [v35 key];
              [v13 addObject:v37];
            }
          }

          v32 = [keyValuePairs countByEnumeratingWithState:&v55 objects:v63 count:16];
        }

        while (v32);
        v16 = storeCopy;
        profileCopy = v48;
        category = v28;
        v15 = v49;
      }

      else
      {
        v15 = v19;
      }

LABEL_17:

      ++v17;
    }

    while (v17 != v54);
    v40 = [v15 countByEnumeratingWithState:&v59 objects:v66 count:16];
    v54 = v40;
  }

  while (v40);

  v14 = v50;
  if (v52)
  {
LABEL_37:
    allObjects = [v14 allObjects];
    [self didReceiveValuesForDomainNames:allObjects profile:profileCopy];

    allObjects2 = [v13 allObjects];
    [self didReceiveValuesForKeys:allObjects2 profile:profileCopy];

    v41 = 0;
    goto LABEL_38;
  }

  v41 = 1;
LABEL_38:

  return v41;
}

@end