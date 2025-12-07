@interface FCCheckDraftContentAccessOperation
- (BOOL)validateOperation;
- (FCCheckDraftContentAccessOperation)init;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FCCheckDraftContentAccessOperation

- (FCCheckDraftContentAccessOperation)init
{
  v3.receiver = self;
  v3.super_class = FCCheckDraftContentAccessOperation;
  return [(FCOperation *)&v3 init];
}

- (BOOL)validateOperation
{
  v24 = *MEMORY[0x1E69E9840];
  context = [(FCCheckDraftContentAccessOperation *)self context];

  if (!context && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"check draft content access operation requires context"];
    v16 = 136315906;
    v17 = "[FCCheckDraftContentAccessOperation validateOperation]";
    v18 = 2080;
    v19 = "FCCheckDraftContentAccessOperation.m";
    v20 = 1024;
    v21 = 36;
    v22 = 2114;
    v23 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v16, 0x26u);
  }

  channelMemberships = [(FCCheckDraftContentAccessOperation *)self channelMemberships];

  if (!channelMemberships && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"check draft content access operation requires channel memberships"];
    v16 = 136315906;
    v17 = "[FCCheckDraftContentAccessOperation validateOperation]";
    v18 = 2080;
    v19 = "FCCheckDraftContentAccessOperation.m";
    v20 = 1024;
    v21 = 40;
    v22 = 2114;
    v23 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v16, 0x26u);
  }

  issueIDs = [(FCCheckDraftContentAccessOperation *)self issueIDs];
  if (issueIDs)
  {

LABEL_10:
    v7 = 1;
    goto LABEL_11;
  }

  articleIDs = [(FCCheckDraftContentAccessOperation *)self articleIDs];

  if (articleIDs)
  {
    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"check draft content access operation requires content IDs"];
    v16 = 136315906;
    v17 = "[FCCheckDraftContentAccessOperation validateOperation]";
    v18 = 2080;
    v19 = "FCCheckDraftContentAccessOperation.m";
    v20 = 1024;
    v21 = 44;
    v22 = 2114;
    v23 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v16, 0x26u);
  }

  v7 = 0;
LABEL_11:
  checkAccessCompletion = [(FCCheckDraftContentAccessOperation *)self checkAccessCompletion];

  if (!checkAccessCompletion && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"check draft content access operation requires completion"];
    v16 = 136315906;
    v17 = "[FCCheckDraftContentAccessOperation validateOperation]";
    v18 = 2080;
    v19 = "FCCheckDraftContentAccessOperation.m";
    v20 = 1024;
    v21 = 48;
    v22 = 2114;
    v23 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v16, 0x26u);
  }

  if (context)
  {
    v9 = channelMemberships == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  return checkAccessCompletion && v10;
}

- (void)performOperation
{
  v61 = *MEMORY[0x1E69E9840];
  channelMemberships = [(FCCheckDraftContentAccessOperation *)self channelMemberships];
  articleIDs = [(FCCheckDraftContentAccessOperation *)self articleIDs];
  issueIDs = [(FCCheckDraftContentAccessOperation *)self issueIDs];
  v6 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v7 = articleIDs;
  v8 = [v7 countByEnumeratingWithState:&v49 objects:v60 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v50;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v50 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 addObject:*(*(&v49 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v49 objects:v60 count:16];
    }

    while (v9);
  }

  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  v45 = 0u;
  v12 = issueIDs;
  v13 = [v12 countByEnumeratingWithState:&v45 objects:v59 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v46;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v46 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [v6 addObject:*(*(&v45 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v45 objects:v59 count:16];
    }

    while (v14);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v17 = channelMemberships;
  v18 = [v17 countByEnumeratingWithState:&v41 objects:v58 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v42;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v42 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v41 + 1) + 8 * k);
        draftIssueListID = [v22 draftIssueListID];
        [v6 fc_safelyAddObject:draftIssueListID];

        draftArticleListID = [v22 draftArticleListID];
        [v6 fc_safelyAddObject:draftArticleListID];
      }

      v19 = [v17 countByEnumeratingWithState:&v41 objects:v58 count:16];
    }

    while (v19);
  }

  v25 = objc_opt_new();
  context = [(FCCheckDraftContentAccessOperation *)self context];
  [v25 setContext:context];

  allObjects = [v6 allObjects];
  [v25 setTopLevelRecordIDs:allObjects];

  selfCopy = self;
  v56[0] = @"Article";
  v56[1] = @"ArticleList";
  v57[0] = MEMORY[0x1E695E0F0];
  v57[1] = MEMORY[0x1E695E0F0];
  v57[2] = MEMORY[0x1E695E0F0];
  v56[2] = @"Issue";
  v56[3] = @"IssueList";
  v55 = @"issueIDs";
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
  v57[3] = v28;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:4];
  [v25 setLinkKeysByRecordType:v29];

  v53[0] = @"Article";
  v30 = +[FCCachePolicy ignoreCacheCachePolicy];
  v54[0] = v30;
  v53[1] = @"ArticleList";
  v31 = +[FCCachePolicy ignoreCacheCachePolicy];
  v54[1] = v31;
  v53[2] = @"Issue";
  v32 = +[FCCachePolicy ignoreCacheCachePolicy];
  v54[2] = v32;
  v53[3] = @"IssueList";
  v33 = +[FCCachePolicy ignoreCacheCachePolicy];
  v54[3] = v33;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:4];
  [v25 setCachePoliciesByRecordType:v34];

  [v25 setShouldReturnErrorWhenSomeRecordsMissing:0];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __54__FCCheckDraftContentAccessOperation_performOperation__block_invoke;
  v38[3] = &unk_1E7C417A0;
  v38[4] = selfCopy;
  v39 = v12;
  v40 = v7;
  v35 = v7;
  v36 = v12;
  [v25 setRecordChainCompletionHandler:v38];
  [(FCOperation *)selfCopy associateChildOperation:v25];
  [v25 start];
}

void __54__FCCheckDraftContentAccessOperation_performOperation__block_invoke(id *a1, void *a2, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3)
  {
    [a1[4] finishedPerformingOperationWithError:a3];
  }

  else
  {
    v6 = objc_opt_new();
    v7 = MEMORY[0x1E695DFD8];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __54__FCCheckDraftContentAccessOperation_performOperation__block_invoke_2;
    v38[3] = &unk_1E7C371F8;
    v27 = v5;
    v25 = v5;
    v39 = v25;
    v8 = [v7 fc_set:v38];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v9 = a1[5];
    v10 = [v9 countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v35;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v34 + 1) + 8 * i);
          v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "containsObject:", v14)}];
          [v6 setObject:v15 forKeyedSubscript:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v34 objects:v41 count:16];
      }

      while (v11);
    }

    v16 = MEMORY[0x1E695DFD8];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __54__FCCheckDraftContentAccessOperation_performOperation__block_invoke_26;
    v32[3] = &unk_1E7C371F8;
    v33 = v25;
    v17 = [v16 fc_set:v32];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = a1;
    v18 = a1[6];
    v19 = [v18 countByEnumeratingWithState:&v28 objects:v40 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v29;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v28 + 1) + 8 * j);
          v24 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v17, "containsObject:", v23, v26)}];
          [v6 setObject:v24 forKeyedSubscript:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v28 objects:v40 count:16];
      }

      while (v20);
    }

    [v26[4] setResultAccessByContentID:v6];
    [v26[4] finishedPerformingOperationWithError:0];

    v5 = v27;
  }
}

void __54__FCCheckDraftContentAccessOperation_performOperation__block_invoke_2(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:&unk_1F2E705C0];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [v4 allRecords];
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v24 + 1) + 8 * i) issueIDs];
        [v3 fc_safelyAddObjects:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v11 = [*(a1 + 32) objectForKeyedSubscript:&unk_1F2E705D8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = [v11 allRecords];
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * j);
        if (([v17 isDraft] & 1) == 0)
        {
          v18 = [v17 base];
          v19 = [v18 identifier];
          [v3 addObject:v19];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }
}

void __54__FCCheckDraftContentAccessOperation_performOperation__block_invoke_26(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:&unk_1F2E705F0];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = [v4 allRecords];
  v6 = [v5 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v36;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v35 + 1) + 8 * i) articleIDs];
        [v3 fc_safelyAddObjects:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v7);
  }

  v11 = [*(a1 + 32) objectForKeyedSubscript:&unk_1F2E705D8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = [v11 allRecords];
  v13 = [v12 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v31 + 1) + 8 * j) allArticleIDs];
        [v3 fc_safelyAddObjects:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v14);
  }

  v18 = [*(a1 + 32) objectForKeyedSubscript:&unk_1F2E70608];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = [v18 allRecords];
  v20 = [v19 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v28;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v27 + 1) + 8 * k);
        if (([v24 isDraft] & 1) == 0)
        {
          v25 = [v24 base];
          v26 = [v25 identifier];
          [v3 addObject:v26];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v21);
  }
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  checkAccessCompletion = [(FCCheckDraftContentAccessOperation *)self checkAccessCompletion];
  resultAccessByContentID = [(FCCheckDraftContentAccessOperation *)self resultAccessByContentID];
  checkAccessCompletion[2](checkAccessCompletion, resultAccessByContentID, errorCopy);
}

@end