@interface FCTagsFetchOperation
- (FCTagsFetchOperation)initWithTagIDs:(id)ds tagRecordSource:(id)source assetManager:(id)manager configuration:(id)configuration delegate:(id)delegate;
- (id)completeFetchOperation;
- (id)fetchChildTagRecordsWithCompletion:(id)completion;
- (id)fetchParentTagRecordsWithCompletion:(id)completion;
- (id)fetchTagRecordsWithCompletion:(id)completion;
- (void)customizeChildOperation:(id)operation forFetchStep:(SEL)step;
@end

@implementation FCTagsFetchOperation

- (id)completeFetchOperation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self)
  {
    heldTagRecords = self->_heldTagRecords;
  }

  else
  {
    heldTagRecords = 0;
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __46__FCTagsFetchOperation_completeFetchOperation__block_invoke;
  v22[3] = &unk_1E7C37B48;
  v22[4] = self;
  v5 = dictionary;
  v23 = v5;
  [(FCHeldRecords *)heldTagRecords enumerateRecordsAndInterestTokensWithBlock:v22];
  if (self)
  {
    heldParentTagRecords = self->_heldParentTagRecords;
  }

  else
  {
    heldParentTagRecords = 0;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __46__FCTagsFetchOperation_completeFetchOperation__block_invoke_2;
  v20[3] = &unk_1E7C37B48;
  v20[4] = self;
  v7 = v5;
  v21 = v7;
  [(FCHeldRecords *)heldParentTagRecords enumerateRecordsAndInterestTokensWithBlock:v20];
  if (self)
  {
    heldChildTagRecords = self->_heldChildTagRecords;
  }

  else
  {
    heldChildTagRecords = 0;
  }

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __46__FCTagsFetchOperation_completeFetchOperation__block_invoke_3;
  v17 = &unk_1E7C37B48;
  selfCopy = self;
  v9 = v7;
  v19 = v9;
  [(FCHeldRecords *)heldChildTagRecords enumerateRecordsAndInterestTokensWithBlock:&v14];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      allValues = [v9 allValues];
      [WeakRetained tagsFetchOperation:self didFetchTags:allValues];
    }
  }

  else
  {
    WeakRetained = 0;
  }

  v12 = v9;

  return v9;
}

void __46__FCTagsFetchOperation_completeFetchOperation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = [FCTag alloc];
  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = v7[65];
  }

  v8 = v7;
  v9 = [v16 base];
  v10 = [v9 identifier];
  v11 = *(a1 + 32);
  if (v11)
  {
    v11 = v11[66];
  }

  v12 = v11;
  v13 = [(FCTag *)v6 initWithTagRecord:v16 assetManager:v8 interestToken:v5 specialTagFeedType:FCSpecialTagFeedTypeForTagID(v10, v12)];

  v14 = *(a1 + 40);
  v15 = [(FCTag *)v13 identifier];
  [v14 setObject:v13 forKey:v15];
}

- (FCTagsFetchOperation)initWithTagIDs:(id)ds tagRecordSource:(id)source assetManager:(id)manager configuration:(id)configuration delegate:(id)delegate
{
  v35 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  sourceCopy = source;
  managerCopy = manager;
  configurationCopy = configuration;
  delegateCopy = delegate;
  if (!dsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagIDs"];
    *buf = 136315906;
    v28 = "[FCTagsFetchOperation initWithTagIDs:tagRecordSource:assetManager:configuration:delegate:]";
    v29 = 2080;
    v30 = "FCTagsFetchOperation.m";
    v31 = 1024;
    v32 = 45;
    v33 = 2114;
    v34 = v23;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (managerCopy)
    {
      goto LABEL_6;
    }
  }

  else if (managerCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "assetManager"];
    *buf = 136315906;
    v28 = "[FCTagsFetchOperation initWithTagIDs:tagRecordSource:assetManager:configuration:delegate:]";
    v29 = 2080;
    v30 = "FCTagsFetchOperation.m";
    v31 = 1024;
    v32 = 46;
    v33 = 2114;
    v34 = v24;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!sourceCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagRecordSource"];
    *buf = 136315906;
    v28 = "[FCTagsFetchOperation initWithTagIDs:tagRecordSource:assetManager:configuration:delegate:]";
    v29 = 2080;
    v30 = "FCTagsFetchOperation.m";
    v31 = 1024;
    v32 = 47;
    v33 = 2114;
    v34 = v25;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v26.receiver = self;
  v26.super_class = FCTagsFetchOperation;
  v17 = [(FCMultiStepFetchOperation *)&v26 init];
  if (v17)
  {
    v18 = [dsCopy copy];
    tagIDs = v17->_tagIDs;
    v17->_tagIDs = v18;

    objc_storeStrong(&v17->_assetManager, manager);
    objc_storeStrong(&v17->_tagRecordSource, source);
    objc_storeWeak(&v17->_delegate, delegateCopy);
    v20 = [configurationCopy copy];
    configuration = v17->_configuration;
    v17->_configuration = v20;

    [(FCMultiStepFetchOperation *)v17 addFetchStep:sel_fetchTagRecordsWithCompletion_];
    [(FCMultiStepFetchOperation *)v17 addFetchStep:sel_fetchParentTagRecordsWithCompletion_];
    [(FCMultiStepFetchOperation *)v17 addFetchStep:sel_fetchChildTagRecordsWithCompletion_];
  }

  return v17;
}

- (void)customizeChildOperation:(id)operation forFetchStep:(SEL)step
{
  operationCopy = operation;
  v7.receiver = self;
  v7.super_class = FCTagsFetchOperation;
  [(FCMultiStepFetchOperation *)&v7 customizeChildOperation:operationCopy forFetchStep:step];
  if (sel_fetchTagRecordsWithCompletion_ == step && [(FCTagsFetchOperation *)self overrideTargetsCachePolicy])
  {
    [operationCopy setCachePolicy:{-[FCTagsFetchOperation targetsCachePolicy](self, "targetsCachePolicy")}];
    [(FCTagsFetchOperation *)self targetsMaximumCachedAge];
LABEL_7:
    [operationCopy setMaximumCachedAge:?];
    goto LABEL_8;
  }

  if (sel_fetchChildTagRecordsWithCompletion_ == step && [(FCTagsFetchOperation *)self overrideChildrenCachePolicy])
  {
    [operationCopy setCachePolicy:{-[FCTagsFetchOperation childrenCachePolicy](self, "childrenCachePolicy")}];
    [(FCTagsFetchOperation *)self childrenMaximumCachedAge];
    goto LABEL_7;
  }

LABEL_8:
}

- (id)fetchTagRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self)
  {
    v5 = self->_tagRecordSource;
    tagIDs = self->_tagIDs;
  }

  else
  {
    v5 = 0;
    tagIDs = 0;
  }

  v7 = [(FCRecordSource *)v5 fetchOperationForRecordsWithIDs:tagIDs];

  [v7 setCachePolicy:{-[FCFetchOperation cachePolicy](self, "cachePolicy")}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__FCTagsFetchOperation_fetchTagRecordsWithCompletion___block_invoke;
  v10[3] = &unk_1E7C37B98;
  v10[4] = self;
  v11 = completionCopy;
  v8 = completionCopy;
  [v7 setFetchCompletionBlock:v10];

  return v7;
}

void __54__FCTagsFetchOperation_fetchTagRecordsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 fetchedObject];
  v4 = *(a1 + 32);
  if (v4)
  {
    objc_storeStrong((v4 + 488), v3);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)fetchParentTagRecordsWithCompletion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  array = [MEMORY[0x1E695DF70] array];
  if ([(FCTagsFetchOperation *)self includeParents])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    if (self)
    {
      heldTagRecords = self->_heldTagRecords;
    }

    else
    {
      heldTagRecords = 0;
    }

    allRecords = [(FCHeldRecords *)heldTagRecords allRecords];
    v8 = [allRecords countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(allRecords);
          }

          parentID = [*(*(&v19 + 1) + 8 * i) parentID];
          if (parentID)
          {
            [array addObject:parentID];
          }
        }

        v9 = [allRecords countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }
  }

  if ([array count])
  {
    if (self)
    {
      tagRecordSource = self->_tagRecordSource;
    }

    else
    {
      tagRecordSource = 0;
    }

    v14 = [(FCRecordSource *)tagRecordSource fetchOperationForRecordsWithIDs:array];
    [v14 setCachePolicy:{-[FCFetchOperation cachePolicy](self, "cachePolicy")}];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __60__FCTagsFetchOperation_fetchParentTagRecordsWithCompletion___block_invoke;
    v17[3] = &unk_1E7C37B98;
    v17[4] = self;
    v18 = completionCopy;
    [v14 setFetchCompletionBlock:v17];
    v15 = v14;
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
    v15 = 0;
  }

  return v15;
}

void __60__FCTagsFetchOperation_fetchParentTagRecordsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 fetchedObject];
  v4 = *(a1 + 32);
  if (v4)
  {
    objc_storeStrong((v4 + 496), v3);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)fetchChildTagRecordsWithCompletion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  array = [MEMORY[0x1E695DF70] array];
  if ([(FCTagsFetchOperation *)self includeChildren])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    if (self)
    {
      heldTagRecords = self->_heldTagRecords;
    }

    else
    {
      heldTagRecords = 0;
    }

    allRecords = [(FCHeldRecords *)heldTagRecords allRecords];
    v8 = [allRecords countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(allRecords);
          }

          channelSectionIDs = [*(*(&v19 + 1) + 8 * i) channelSectionIDs];
          [array addObjectsFromArray:channelSectionIDs];
        }

        v9 = [allRecords countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }
  }

  if ([array count])
  {
    if (self)
    {
      tagRecordSource = self->_tagRecordSource;
    }

    else
    {
      tagRecordSource = 0;
    }

    v14 = [(FCRecordSource *)tagRecordSource fetchOperationForRecordsWithIDs:array];
    [v14 setCachePolicy:{-[FCFetchOperation cachePolicy](self, "cachePolicy")}];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __59__FCTagsFetchOperation_fetchChildTagRecordsWithCompletion___block_invoke;
    v17[3] = &unk_1E7C37B98;
    v17[4] = self;
    v18 = completionCopy;
    [v14 setFetchCompletionBlock:v17];
    v15 = v14;
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
    v15 = 0;
  }

  return v15;
}

void __59__FCTagsFetchOperation_fetchChildTagRecordsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 fetchedObject];
  v4 = *(a1 + 32);
  if (v4)
  {
    objc_storeStrong((v4 + 504), v3);
  }

  (*(*(a1 + 40) + 16))();
}

void __46__FCTagsFetchOperation_completeFetchOperation__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = [FCTag alloc];
  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = v7[65];
  }

  v8 = v7;
  v9 = [v16 base];
  v10 = [v9 identifier];
  v11 = *(a1 + 32);
  if (v11)
  {
    v11 = v11[66];
  }

  v12 = v11;
  v13 = [(FCTag *)v6 initWithTagRecord:v16 assetManager:v8 interestToken:v5 specialTagFeedType:FCSpecialTagFeedTypeForTagID(v10, v12)];

  v14 = *(a1 + 40);
  v15 = [(FCTag *)v13 identifier];
  [v14 setObject:v13 forKey:v15];
}

void __46__FCTagsFetchOperation_completeFetchOperation__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = [FCTag alloc];
  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = v7[65];
  }

  v8 = v7;
  v9 = [v16 base];
  v10 = [v9 identifier];
  v11 = *(a1 + 32);
  if (v11)
  {
    v11 = v11[66];
  }

  v12 = v11;
  v13 = [(FCTag *)v6 initWithTagRecord:v16 assetManager:v8 interestToken:v5 specialTagFeedType:FCSpecialTagFeedTypeForTagID(v10, v12)];

  v14 = *(a1 + 40);
  v15 = [(FCTag *)v13 identifier];
  [v14 setObject:v13 forKey:v15];
}

@end