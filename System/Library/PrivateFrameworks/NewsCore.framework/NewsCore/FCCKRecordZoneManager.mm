@interface FCCKRecordZoneManager
- (id)initWithDatabase:(void *)database recordZoneNames:;
- (id)recordZoneWithName:(id *)name;
- (void)ensureRecordZoneExistsWithID:(id)d completionHandler:(id)handler;
- (void)prepareRecordZonesForUseWithCompletionHandler:(uint64_t)handler;
@end

@implementation FCCKRecordZoneManager

- (id)initWithDatabase:(void *)database recordZoneNames:
{
  v35 = *MEMORY[0x1E69E9840];
  v27 = a2;
  databaseCopy = database;
  if (self && (v33.receiver = self, v33.super_class = FCCKRecordZoneManager, (v28 = objc_msgSendSuper2(&v33, sel_init)) != 0))
  {
    v24 = a2;
    array = [MEMORY[0x1E695DF70] array];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v25 = databaseCopy;
    obj = databaseCopy;
    v9 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      v12 = *MEMORY[0x1E695B728];
      do
      {
        v13 = 0;
        do
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v29 + 1) + 8 * v13);
          v15 = [objc_alloc(MEMORY[0x1E695BA90]) initWithZoneName:v14 ownerName:v12];
          [array addObject:v15];
          v16 = [[FCCKRecordZone alloc] initWithDatabase:v27 delegate:v28 recordZoneID:v15];
          [dictionary setObject:v16 forKey:v14];

          ++v13;
        }

        while (v10 != v13);
        v10 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v10);
    }

    objc_storeStrong(v28 + 1, v24);
    v17 = v28[2];
    v28[2] = array;
    v18 = array;

    v19 = v28[3];
    v28[3] = dictionary;
    v20 = dictionary;

    v21 = [[FCAsyncSerialQueue alloc] initWithQualityOfService:25];
    v22 = v28[5];
    v28[5] = v21;

    databaseCopy = v25;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (id)recordZoneWithName:(id *)name
{
  if (name)
  {
    name = [name[3] objectForKey:a2];
    v2 = vars8;
  }

  return name;
}

- (void)prepareRecordZonesForUseWithCompletionHandler:(uint64_t)handler
{
  v3 = a2;
  v4 = v3;
  if (handler)
  {
    v5 = *(handler + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __71__FCCKRecordZoneManager_prepareRecordZonesForUseWithCompletionHandler___block_invoke;
    v6[3] = &unk_1E7C466B0;
    v6[4] = handler;
    v7 = v3;
    [v5 enqueueBlock:v6];
  }
}

void __71__FCCKRecordZoneManager_prepareRecordZonesForUseWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__FCCKRecordZoneManager_prepareRecordZonesForUseWithCompletionHandler___block_invoke_2;
  aBlock[3] = &unk_1E7C3F590;
  v4 = v3;
  v17 = v4;
  v18 = *(a1 + 40);
  v5 = _Block_copy(aBlock);
  v6 = v5;
  v7 = *(a1 + 32);
  if (v7 && *(v7 + 32))
  {
    (*(v5 + 2))(v5, 0);
  }

  else
  {
    v8 = objc_alloc_init(FCCKPrivateFetchRecordZonesOperation);
    v9 = v8;
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = *(v10 + 16);
    }

    else
    {
      v11 = 0;
    }

    [(FCCKPrivateFetchRecordZonesOperation *)v8 setRecordZoneIDs:v11];
    [(FCOperation *)v9 setQualityOfService:25];
    [(FCOperation *)v9 setRelativePriority:1];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __71__FCCKRecordZoneManager_prepareRecordZonesForUseWithCompletionHandler___block_invoke_3;
    v14[3] = &unk_1E7C37C88;
    v14[4] = *(a1 + 32);
    v15 = v6;
    [(FCCKPrivateFetchRecordZonesOperation *)v9 setFetchRecordZonesCompletionBlock:v14];
    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = *(v12 + 8);
    }

    else
    {
      v13 = 0;
    }

    [(FCCKPrivateDatabase *)v13 addOperation:v9];
  }
}

void __71__FCCKRecordZoneManager_prepareRecordZonesForUseWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3);
  (*(*(a1 + 40) + 16))();
}

void __71__FCCKRecordZoneManager_prepareRecordZonesForUseWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    if ([v6 code] == 2)
    {
      v24 = v5;
      v8 = [v6 userInfo];
      v9 = [v8 objectForKey:*MEMORY[0x1E695B798]];

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v30;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v30 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v29 + 1) + 8 * i);
            v16 = [v10 objectForKey:v15];
            if ([v16 code] == 26)
            {
              v17 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneID:v15];
              [v7 addObject:v17];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v12);
      }

      v5 = v24;
    }

    if ([v7 count])
    {
      v18 = objc_alloc_init(FCCKPrivateSaveRecordZonesOperation);
      [(FCCKPrivateSaveRecordZonesOperation *)v18 setRecordZonesToSave:v7];
      [(FCOperation *)v18 setQualityOfService:25];
      [(FCOperation *)v18 setRelativePriority:1];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __71__FCCKRecordZoneManager_prepareRecordZonesForUseWithCompletionHandler___block_invoke_4;
      v25[3] = &unk_1E7C3FEB8;
      v19 = v5;
      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      v26 = v19;
      v27 = v20;
      v28 = v21;
      [(FCCKPrivateSaveRecordZonesOperation *)v18 setSaveRecordZonesCompletionBlock:v25];
      v22 = *(a1 + 32);
      if (v22)
      {
        v23 = *(v22 + 8);
      }

      else
      {
        v23 = 0;
      }

      [(FCCKPrivateDatabase *)v23 addOperation:v18];
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    [(FCAssetHandle *)*(a1 + 32) setFetchOperation:v5];
    (*(*(a1 + 40) + 16))();
  }
}

void __71__FCCKRecordZoneManager_prepareRecordZonesForUseWithCompletionHandler___block_invoke_4(void *a1, void *a2, void *a3)
{
  v10 = a3;
  if (!v10)
  {
    v5 = MEMORY[0x1E695DF90];
    v6 = a1[4];
    v7 = a2;
    v8 = [v5 dictionaryWithDictionary:v6];
    v9 = [v7 fc_dictionaryWithKeySelector:sel_zoneID];

    [v8 addEntriesFromDictionary:v9];
    [(FCAssetHandle *)a1[5] setFetchOperation:v8];
  }

  (*(a1[6] + 16))();
}

- (void)ensureRecordZoneExistsWithID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__FCCKRecordZoneManager_ensureRecordZoneExistsWithID_completionHandler___block_invoke;
  v10[3] = &unk_1E7C40A48;
  v10[4] = self;
  v11 = dCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = dCopy;
  [(FCCKRecordZoneManager *)self prepareRecordZonesForUseWithCompletionHandler:v10];
}

void __72__FCCKRecordZoneManager_ensureRecordZoneExistsWithID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 32);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 objectForKey:*(a1 + 40)];
  v7 = [*(a1 + 40) zoneName];
  v8 = [v7 isEqualToString:@"Subscriptions"];

  if (v8)
  {
    if (!v6)
    {
      v9 = *(a1 + 32);
      if (v9)
      {
        if (*(v9 + 32) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"missing record zone for ID %@", *(a1 + 40)];
          *buf = 136315906;
          v14 = "[FCCKRecordZoneManager ensureRecordZoneExistsWithID:completionHandler:]_block_invoke";
          v15 = 2080;
          v16 = "FCCKRecordZoneManager.m";
          v17 = 1024;
          v18 = 152;
          v19 = 2114;
          v20 = v10;
          v11 = MEMORY[0x1E69E9C10];
LABEL_15:
          _os_log_error_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }
      }
    }
  }

  else if (!v6)
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      if (*(v12 + 32) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"missing record zone for ID %@", *(a1 + 40)];
        *buf = 136315906;
        v14 = "[FCCKRecordZoneManager ensureRecordZoneExistsWithID:completionHandler:]_block_invoke";
        v15 = 2080;
        v16 = "FCCKRecordZoneManager.m";
        v17 = 1024;
        v18 = 156;
        v19 = 2114;
        v20 = v10;
        v11 = MEMORY[0x1E69E9C10];
        goto LABEL_15;
      }
    }
  }

  (*(*(a1 + 48) + 16))();
}

@end