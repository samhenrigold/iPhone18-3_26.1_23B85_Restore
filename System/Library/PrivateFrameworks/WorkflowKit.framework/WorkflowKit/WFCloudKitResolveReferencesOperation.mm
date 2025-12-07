@interface WFCloudKitResolveReferencesOperation
- (WFCloudKitItemRequest)request;
- (WFCloudKitResolveReferencesOperation)initWithRequest:(id)request records:(id)records operationGroup:(id)group task:(id)task;
- (void)cancel;
- (void)start;
@end

@implementation WFCloudKitResolveReferencesOperation

- (void)start
{
  v52 = *MEMORY[0x1E69E9840];
  v46.receiver = self;
  v46.super_class = WFCloudKitResolveReferencesOperation;
  [(WFCloudKitAsyncOperation *)&v46 start];
  currentQueue = [MEMORY[0x1E696ADC8] currentQueue];
  v3 = getWFCloudKitLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    records = [(WFCloudKitResolveReferencesOperation *)self records];
    v5 = [records count];
    *buf = 136315394;
    v49 = "[WFCloudKitResolveReferencesOperation start]";
    v50 = 2048;
    v51 = v5;
    _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_INFO, "%s Resolve references operation starting for %lu records", buf, 0x16u);
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  selfCopy = self;
  obj = [(WFCloudKitResolveReferencesOperation *)self records];
  v8 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v43;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v43 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v42 + 1) + 8 * i);
        record = [v12 record];
        item = [v12 item];
        properties = [objc_opt_class() properties];
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __45__WFCloudKitResolveReferencesOperation_start__block_invoke;
        v38[3] = &unk_1E83799B8;
        v39 = record;
        v40 = v6;
        v41 = v7;
        v16 = record;
        [properties enumerateKeysAndObjectsUsingBlock:v38];
      }

      v9 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v9);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__WFCloudKitResolveReferencesOperation_start__block_invoke_3;
  aBlock[3] = &unk_1E83799E0;
  aBlock[4] = selfCopy;
  v17 = _Block_copy(aBlock);
  if ([v6 count])
  {
    v18 = getWFCloudKitLogObject();
    v19 = currentQueue;
    v20 = v7;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v21 = [v6 count];
      *buf = 136315394;
      v49 = "[WFCloudKitResolveReferencesOperation start]";
      v50 = 2048;
      v51 = v21;
      _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_INFO, "%s Fetching %lu references.", buf, 0x16u);
    }

    request = [(WFCloudKitResolveReferencesOperation *)selfCopy request];
    allKeys = [v6 allKeys];
    allObjects = [v7 allObjects];
    operationGroup = [(WFCloudKitResolveReferencesOperation *)selfCopy operationGroup];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __45__WFCloudKitResolveReferencesOperation_start__block_invoke_446;
    v31[3] = &unk_1E837AE68;
    v32 = v6;
    v33 = selfCopy;
    v34 = currentQueue;
    v36 = a2;
    v35 = v17;
    v26 = [request fetchRecordIDs:allKeys desiredKeys:allObjects operationGroup:operationGroup completionHandler:v31];
    [(WFCloudKitResolveReferencesOperation *)selfCopy setCurrentOperation:v26];
  }

  else
  {
    (*(v17 + 2))(v17, 0);
    v19 = currentQueue;
    v20 = v7;
  }
}

void __45__WFCloudKitResolveReferencesOperation_start__block_invoke_3(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [*(a1 + 32) records];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 record];
        v11 = [v9 item];
        [WFCloudKitItemRequest hydrateItem:v11 withRecord:v10 resolvedReferences:v3 setNilValues:0];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [*(a1 + 32) finishExecuting];
}

- (WFCloudKitItemRequest)request
{
  WeakRetained = objc_loadWeakRetained(&self->_request);

  return WeakRetained;
}

- (void)cancel
{
  currentOperation = [(WFCloudKitResolveReferencesOperation *)self currentOperation];
  [currentOperation cancel];

  v4.receiver = self;
  v4.super_class = WFCloudKitResolveReferencesOperation;
  [(WFCloudKitResolveReferencesOperation *)&v4 cancel];
}

void __45__WFCloudKitResolveReferencesOperation_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 type] == 3)
  {
    v7 = [*(a1 + 32) objectForKey:v5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      v9 = [v6 itemClass];
      v10 = *(a1 + 40);
      v11 = [v8 recordID];

      [v10 setObject:v9 forKeyedSubscript:v11];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v22 = v7;
        v12 = [v7 objectsMatchingClass:objc_opt_class()];
        v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v26;
          do
          {
            v16 = 0;
            do
            {
              if (*v26 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v25 + 1) + 8 * v16);
              v18 = [v6 itemClass];
              v19 = *(a1 + 40);
              v20 = [v17 recordID];
              [v19 setObject:v18 forKeyedSubscript:v20];

              ++v16;
            }

            while (v14 != v16);
            v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
          }

          while (v14);
        }

        v7 = v22;
      }
    }

    v21 = [objc_msgSend(v6 "itemClass")];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __45__WFCloudKitResolveReferencesOperation_start__block_invoke_2;
    v23[3] = &unk_1E83798F0;
    v24 = *(a1 + 48);
    [v21 enumerateKeysAndObjectsUsingBlock:v23];
  }
}

void __45__WFCloudKitResolveReferencesOperation_start__block_invoke_446(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = getWFCloudKitLogObject();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 32) allKeys];
      *buf = 136315650;
      v31 = "[WFCloudKitResolveReferencesOperation start]_block_invoke";
      v32 = 2112;
      v33 = v9;
      v34 = 2112;
      v35 = v6;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, "%s Error fetching record IDs: %@, %@", buf, 0x20u);
    }

    v10 = [*(a1 + 40) task];
    [v10 setError:v6];

    [*(a1 + 48) cancelAllOperations];
    [*(a1 + 40) finishExecuting];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v31 = "[WFCloudKitResolveReferencesOperation start]_block_invoke";
      v32 = 2048;
      v33 = [v5 count];
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_INFO, "%s Finished fetching %lu references", buf, 0x16u);
    }

    v11 = objc_opt_new();
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __45__WFCloudKitResolveReferencesOperation_start__block_invoke_447;
    v25 = &unk_1E8379A08;
    v12 = *(a1 + 32);
    v29 = *(a1 + 64);
    v13 = *(a1 + 40);
    v26 = v12;
    v27 = v13;
    v14 = v11;
    v28 = v14;
    [v5 enumerateKeysAndObjectsUsingBlock:&v22];
    if (([*(a1 + 40) isCancelled] & 1) == 0)
    {
      v15 = *(a1 + 48);
      v16 = [WFCloudKitResolveReferencesOperation alloc];
      v17 = [*(a1 + 40) request];
      v18 = [v14 allValues];
      v19 = [*(a1 + 40) operationGroup];
      v20 = [*(a1 + 40) task];
      v21 = [(WFCloudKitResolveReferencesOperation *)v16 initWithRequest:v17 records:v18 operationGroup:v19 task:v20];
      [v15 addOperation:v21];
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __45__WFCloudKitResolveReferencesOperation_start__block_invoke_447(uint64_t a1, void *a2, void *a3)
{
  v15 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectForKeyedSubscript:v6];
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = *(a1 + 56);
    v13 = *(a1 + 40);
    v14 = [v15 recordType];
    [v11 handleFailureInMethod:v12 object:v13 file:@"WFCloudKitItemRequest.m" lineNumber:760 description:{@"Received record not in known WFCloudKitItem types: %@", v14}];
  }

  v8 = [WFCloudKitItemRecord alloc];
  v9 = objc_alloc_init(v7);
  v10 = [(WFCloudKitItemRecord *)v8 initWithRecord:v15 item:v9];
  [*(a1 + 48) setObject:v10 forKeyedSubscript:v6];
}

void __45__WFCloudKitResolveReferencesOperation_start__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (([a3 isIgnoredByDefault] & 1) == 0)
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (WFCloudKitResolveReferencesOperation)initWithRequest:(id)request records:(id)records operationGroup:(id)group task:(id)task
{
  requestCopy = request;
  recordsCopy = records;
  groupCopy = group;
  taskCopy = task;
  v18.receiver = self;
  v18.super_class = WFCloudKitResolveReferencesOperation;
  v14 = [(WFCloudKitResolveReferencesOperation *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_request, requestCopy);
    objc_storeStrong(&v15->_records, records);
    objc_storeStrong(&v15->_operationGroup, group);
    objc_storeStrong(&v15->_task, task);
    v16 = v15;
  }

  return v15;
}

@end