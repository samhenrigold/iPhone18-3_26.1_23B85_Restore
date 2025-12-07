@interface FCPeopleAlsoReadArticlesOperation
- (BOOL)_shouldBypassCache;
- (BOOL)validateOperation;
- (FCPeopleAlsoReadArticlesOperation)init;
- (FCPeopleAlsoReadArticlesOperation)initWithContentContext:(id)context configuration:(id)configuration readingHistory:(id)history cursor:(id)cursor;
- (id)_feedItemFromArticleRecord:(id)record articleListsByArticleID:(id)d;
- (void)_continueOperation;
- (void)_continueOperationWithArticleListIDs:(id)ds;
- (void)_continueOperationWithArticleListIDsNoCache:(id)cache;
- (void)_continueOperationWithCandidateSeedArticleIDs:(id)ds;
- (void)_continueOperationWithSeedArticleIDs:(id)ds;
- (void)operationWillFinishWithError:(id)error;
- (void)prepareOperation;
@end

@implementation FCPeopleAlsoReadArticlesOperation

- (FCPeopleAlsoReadArticlesOperation)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPeopleAlsoReadArticlesOperation init]";
    v10 = 2080;
    v11 = "FCPeopleAlsoReadArticlesOperation.m";
    v12 = 1024;
    v13 = 46;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPeopleAlsoReadArticlesOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPeopleAlsoReadArticlesOperation)initWithContentContext:(id)context configuration:(id)configuration readingHistory:(id)history cursor:(id)cursor
{
  v32 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  configurationCopy = configuration;
  historyCopy = history;
  cursorCopy = cursor;
  if (!contextCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "contentContext"];
    *buf = 136315906;
    v25 = "[FCPeopleAlsoReadArticlesOperation initWithContentContext:configuration:readingHistory:cursor:]";
    v26 = 2080;
    v27 = "FCPeopleAlsoReadArticlesOperation.m";
    v28 = 1024;
    v29 = 54;
    v30 = 2114;
    v31 = v20;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (configurationCopy)
    {
      goto LABEL_6;
    }
  }

  else if (configurationCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "configuration"];
    *buf = 136315906;
    v25 = "[FCPeopleAlsoReadArticlesOperation initWithContentContext:configuration:readingHistory:cursor:]";
    v26 = 2080;
    v27 = "FCPeopleAlsoReadArticlesOperation.m";
    v28 = 1024;
    v29 = 55;
    v30 = 2114;
    v31 = v21;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!historyCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "readingHistory"];
    *buf = 136315906;
    v25 = "[FCPeopleAlsoReadArticlesOperation initWithContentContext:configuration:readingHistory:cursor:]";
    v26 = 2080;
    v27 = "FCPeopleAlsoReadArticlesOperation.m";
    v28 = 1024;
    v29 = 56;
    v30 = 2114;
    v31 = v22;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v23.receiver = self;
  v23.super_class = FCPeopleAlsoReadArticlesOperation;
  v15 = [(FCOperation *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_contentContext, context);
    objc_storeStrong(&v16->_configuration, configuration);
    objc_storeStrong(&v16->_readingHistory, history);
    v17 = [cursorCopy copy];
    cursor = v16->_cursor;
    v16->_cursor = v17;
  }

  return v16;
}

- (BOOL)validateOperation
{
  v13 = *MEMORY[0x1E69E9840];
  feedItemHandler = [(FCPeopleAlsoReadArticlesOperation *)self feedItemHandler];

  if (!feedItemHandler && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"People Also Read operation must have a feed item handler"];
    v5 = 136315906;
    v6 = "[FCPeopleAlsoReadArticlesOperation validateOperation]";
    v7 = 2080;
    v8 = "FCPeopleAlsoReadArticlesOperation.m";
    v9 = 1024;
    v10 = 76;
    v11 = 2114;
    v12 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v5, 0x26u);
  }

  return feedItemHandler != 0;
}

- (void)prepareOperation
{
  date = [MEMORY[0x1E695DF00] date];
  [(FCPeopleAlsoReadArticlesOperation *)self setReferenceDate:date];
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(FCPeopleAlsoReadArticlesOperation *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(FCPeopleAlsoReadArticlesOperation *)self completionHandler];
    (completionHandler2)[2](completionHandler2, errorCopy);
  }
}

- (void)_continueOperation
{
  configuration = [(FCPeopleAlsoReadArticlesOperation *)self configuration];
  readingHistory = [(FCPeopleAlsoReadArticlesOperation *)self readingHistory];
  v5 = [readingHistory mostRecentlyReadArticlesWithMaxCount:{objc_msgSend(configuration, "seedMaxCount")}];

  referenceDate = [(FCPeopleAlsoReadArticlesOperation *)self referenceDate];
  v7 = [referenceDate dateByAddingTimeInterval:{-objc_msgSend(configuration, "seedMaxIntervalSinceLastReadSeconds")}];

  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __55__FCPeopleAlsoReadArticlesOperation__continueOperation__block_invoke;
  v15 = &unk_1E7C36BC8;
  v16 = v7;
  selfCopy = self;
  v8 = v7;
  v9 = [v5 fc_arrayOfObjectsPassingTest:&v12];
  v10 = [v9 fc_setByTransformingWithBlock:{&__block_literal_global, v12, v13, v14, v15}];
  allObjects = [v10 allObjects];
  [(FCPeopleAlsoReadArticlesOperation *)self _continueOperationWithCandidateSeedArticleIDs:allObjects];
}

uint64_t __55__FCPeopleAlsoReadArticlesOperation__continueOperation__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 lastVisitedAt];
  v5 = [v4 fc_isLaterThanOrEqualTo:*(a1 + 32)];

  if ((v5 & 1) == 0)
  {
    v6 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = v6;
      v9 = [v7 shortOperationDescription];
      v10 = [v3 articleID];
      v11 = [v3 lastVisitedAt];
      v12 = *(a1 + 32);
      v14 = 138544130;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ excluding as a seed %{public}@ because it was last visited at %{public}@, which is prior to the earliest allowed date of %{public}@", &v14, 0x2Au);
    }
  }

  return v5;
}

- (void)_continueOperationWithCandidateSeedArticleIDs:(id)ds
{
  v38[1] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if ([dsCopy count])
  {
    referenceDate = [(FCPeopleAlsoReadArticlesOperation *)self referenceDate];
    configuration = [(FCPeopleAlsoReadArticlesOperation *)self configuration];
    v7 = [referenceDate dateByAddingTimeInterval:{-objc_msgSend(configuration, "seedMaxAgeSeconds")}];

    if ([(FCPeopleAlsoReadArticlesOperation *)self _shouldBypassCache])
    {
      v8 = objc_alloc_init(FCCKContentFetchOperation);
      contentContext = [(FCPeopleAlsoReadArticlesOperation *)self contentContext];
      internalContentContext = [contentContext internalContentContext];
      contentDatabase = [internalContentContext contentDatabase];
      [(FCCKContentFetchOperation *)v8 setDatabase:contentDatabase];

      v13 = [dsCopy fc_arrayByTransformingWithBlock:&__block_literal_global_27];
      if (v8)
      {
        objc_setProperty_nonatomic_copy(v8, v12, v13, 384);
      }

      v38[0] = @"publishDate";
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
      v16 = v14;
      if (v8)
      {
        objc_setProperty_nonatomic_copy(v8, v15, v14, 400);

        v8->_optimizationPolicy = 1;
      }

      else
      {
      }

      v17 = [MEMORY[0x1E695DFA8] set];
      newValue[0] = MEMORY[0x1E69E9820];
      newValue[1] = 3221225472;
      newValue[2] = __83__FCPeopleAlsoReadArticlesOperation__continueOperationWithCandidateSeedArticleIDs___block_invoke_2;
      newValue[3] = &unk_1E7C36C30;
      v34 = v7;
      v18 = v17;
      v35 = v18;
      selfCopy = self;
      v20 = v7;
      if (v8)
      {
        objc_setProperty_nonatomic_copy(v8, v19, newValue, 416);
      }

      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __83__FCPeopleAlsoReadArticlesOperation__continueOperationWithCandidateSeedArticleIDs___block_invoke_34;
      v31[3] = &unk_1E7C36C80;
      v31[4] = self;
      v32 = v18;
      v22 = v18;
      if (v8)
      {
        objc_setProperty_nonatomic_copy(v8, v21, v31, 424);
      }

      [(FCOperation *)self associateChildOperation:v8];
      [(FCOperation *)v8 start];
    }

    else
    {
      v23 = [FCArticleHeadlinesFetchOperation alloc];
      contentContext2 = [(FCPeopleAlsoReadArticlesOperation *)self contentContext];
      v8 = [(FCArticleHeadlinesFetchOperation *)v23 initWithContext:contentContext2 articleIDs:dsCopy ignoreCacheForArticleIDs:MEMORY[0x1E695E0F0]];

      v25 = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __83__FCPeopleAlsoReadArticlesOperation__continueOperationWithCandidateSeedArticleIDs___block_invoke_3_38;
      v28 = &unk_1E7C36CD0;
      selfCopy2 = self;
      v30 = v7;
      v22 = v7;
      [(FCCKContentFetchOperation *)v8 setFetchCompletionBlock:&v25];
      [(FCOperation *)self associateChildOperation:v8, v25, v26, v27, v28, selfCopy2];
      [(FCOperation *)v8 start];
    }
  }

  else
  {
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __83__FCPeopleAlsoReadArticlesOperation__continueOperationWithCandidateSeedArticleIDs___block_invoke;
    v37[3] = &unk_1E7C36EA0;
    v37[4] = self;
    __83__FCPeopleAlsoReadArticlesOperation__continueOperationWithCandidateSeedArticleIDs___block_invoke(v37);
  }
}

uint64_t __83__FCPeopleAlsoReadArticlesOperation__continueOperationWithCandidateSeedArticleIDs___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 shortOperationDescription];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ finishing early because there are no candidate seed article IDs", &v7, 0xCu);
  }

  return [*(a1 + 32) finishedPerformingOperationWithError:0];
}

id __83__FCPeopleAlsoReadArticlesOperation__continueOperationWithCandidateSeedArticleIDs___block_invoke_24(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695BA70];
  v3 = a2;
  v4 = [[v2 alloc] initWithRecordName:v3];

  return v4;
}

void __83__FCPeopleAlsoReadArticlesOperation__continueOperationWithCandidateSeedArticleIDs___block_invoke_2(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = [a2 objectForKey:@"publishDate"];
    if ([v6 fc_isLaterThanOrEqualTo:a1[4]])
    {
      v7 = a1[5];
      v8 = [v5 recordName];
      [v7 addObject:v8];
    }

    else
    {
      v9 = FCOperationLog;
      if (!os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
      {
LABEL_7:

        goto LABEL_8;
      }

      v10 = a1[6];
      v8 = v9;
      v11 = [v10 shortOperationDescription];
      v12 = [v5 recordName];
      v13 = a1[4];
      v14 = 138544130;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = v6;
      v20 = 2114;
      v21 = v13;
      _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ excluding as a seed %{public}@ because it was published at %{public}@, which is prior to the earliest allowed date of %{public}@", &v14, 0x2Au);
    }

    goto LABEL_7;
  }

LABEL_8:
}

void __83__FCPeopleAlsoReadArticlesOperation__continueOperationWithCandidateSeedArticleIDs___block_invoke_34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 fc_isUnknownItemError] & 1) == 0)
  {
    v5 = MEMORY[0x1E69E9820];
    v6 = *(a1 + 32);
    v7 = v4;
    [v6 finishedPerformingOperationWithError:{v7, v5, 3221225472, __83__FCPeopleAlsoReadArticlesOperation__continueOperationWithCandidateSeedArticleIDs___block_invoke_2_35, &unk_1E7C36C58, v6}];
  }

  else
  {
    [*(a1 + 32) _continueOperationWithSeedArticleIDs:*(a1 + 40)];
  }
}

void __83__FCPeopleAlsoReadArticlesOperation__continueOperationWithCandidateSeedArticleIDs___block_invoke_3_38(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status])
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __83__FCPeopleAlsoReadArticlesOperation__continueOperationWithCandidateSeedArticleIDs___block_invoke_4;
    v18 = &unk_1E7C36C58;
    v19 = *(a1 + 32);
    v20 = v3;
    v4 = [v20 error];
    [v19 finishedPerformingOperationWithError:v4];
  }

  else
  {
    v5 = [v3 fetchedObject];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __83__FCPeopleAlsoReadArticlesOperation__continueOperationWithCandidateSeedArticleIDs___block_invoke_5;
    v12 = &unk_1E7C36CA8;
    v6 = *(a1 + 40);
    v7 = *(a1 + 32);
    v13 = v6;
    v14 = v7;
    v8 = [v5 fc_setByTransformingWithBlock:&v9];
    [*(a1 + 32) _continueOperationWithSeedArticleIDs:{v8, v9, v10, v11, v12}];
  }
}

void __83__FCPeopleAlsoReadArticlesOperation__continueOperationWithCandidateSeedArticleIDs___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) error];
  [v1 finishedPerformingOperationWithError:v2];
}

id __83__FCPeopleAlsoReadArticlesOperation__continueOperationWithCandidateSeedArticleIDs___block_invoke_5(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 publishDate];
  v5 = [v4 fc_isLaterThanOrEqualTo:*(a1 + 32)];

  if (v5)
  {
    v6 = [v3 articleID];
  }

  else
  {
    v7 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = v7;
      v10 = [v8 shortOperationDescription];
      v11 = [v3 articleID];
      v12 = [v3 publishDate];
      v13 = *(a1 + 32);
      v15 = 138544130;
      v16 = v10;
      v17 = 2114;
      v18 = v11;
      v19 = 2114;
      v20 = v12;
      v21 = 2114;
      v22 = v13;
      _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ excluding as a seed %{public}@ because it was published at %{public}@, which is prior to the earliest allowed date of %{public}@", &v15, 0x2Au);
    }

    v6 = 0;
  }

  return v6;
}

- (void)_continueOperationWithSeedArticleIDs:(id)ds
{
  v28 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if ([dsCopy count])
  {
    v5 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      shortOperationDescription = [(FCOperation *)self shortOperationDescription];
      *buf = 138543618;
      v25 = shortOperationDescription;
      v26 = 2048;
      v27 = [dsCopy count];
      _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ querying using %ld seeds", buf, 0x16u);
    }

    configuration = [(FCPeopleAlsoReadArticlesOperation *)self configuration];
    v9 = +[FCAppleAccount sharedAccount];
    contentStoreFrontID = [v9 contentStoreFrontID];

    array = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = dsCopy;
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [configuration candidateArticleListIDForSeedArticleID:*(*(&v18 + 1) + 8 * v16) storeFrontID:{contentStoreFrontID, v18}];
          [array addObject:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v14);
    }

    if ([(FCPeopleAlsoReadArticlesOperation *)self _shouldBypassCache])
    {
      [(FCPeopleAlsoReadArticlesOperation *)self _continueOperationWithArticleListIDsNoCache:array];
    }

    else
    {
      [(FCPeopleAlsoReadArticlesOperation *)self _continueOperationWithArticleListIDs:array];
    }
  }

  else
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __74__FCPeopleAlsoReadArticlesOperation__continueOperationWithSeedArticleIDs___block_invoke;
    v22[3] = &unk_1E7C36EA0;
    v22[4] = self;
    __74__FCPeopleAlsoReadArticlesOperation__continueOperationWithSeedArticleIDs___block_invoke(v22);
  }
}

uint64_t __74__FCPeopleAlsoReadArticlesOperation__continueOperationWithSeedArticleIDs___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 shortOperationDescription];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ finishing early because there are no seed article IDs", &v7, 0xCu);
  }

  return [*(a1 + 32) finishedPerformingOperationWithError:0];
}

- (void)_continueOperationWithArticleListIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    cursor = [(FCPeopleAlsoReadArticlesOperation *)self cursor];
    feedItems = [cursor feedItems];
    v7 = [feedItems fc_dictionaryWithKeyBlock:&__block_literal_global_46];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    v11 = MEMORY[0x1E695DEC8];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __74__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDs___block_invoke_2;
    v40[3] = &unk_1E7C36D18;
    v40[4] = self;
    v12 = dsCopy;
    v41 = v12;
    v13 = dictionary2;
    v42 = v13;
    v28 = dictionary3;
    v43 = v28;
    v29 = v7;
    v44 = v29;
    v14 = dictionary;
    v45 = v14;
    v15 = [v11 fc_array:v40];
    v16 = objc_alloc_init(FCCKBatchedMultiFetchQueryOperation);
    contentContext = [(FCPeopleAlsoReadArticlesOperation *)self contentContext];
    internalContentContext = [contentContext internalContentContext];
    contentDatabase = [internalContentContext contentDatabase];
    [(FCCKBatchedMultiFetchQueryOperation *)v16 setDatabase:contentDatabase];

    [(FCCKBatchedMultiFetchQueryOperation *)v16 setRecordIDs:v15];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __74__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDs___block_invoke_3;
    v39[3] = &unk_1E7C36D40;
    v39[4] = self;
    v20 = [MEMORY[0x1E695DEC8] fc_array:v39];
    [(FCCKBatchedMultiFetchQueryOperation *)v16 setRecordSpecs:v20];

    v21 = objc_opt_new();
    newValue[0] = MEMORY[0x1E69E9820];
    newValue[1] = 3221225472;
    newValue[2] = __74__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDs___block_invoke_4;
    newValue[3] = &unk_1E7C36D68;
    v23 = v21;
    v38 = v23;
    if (v16)
    {
      objc_setProperty_nonatomic_copy(v16, v22, newValue, 448);
    }

    objc_initWeak(&location, v16);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __74__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDs___block_invoke_5;
    v30[3] = &unk_1E7C36E00;
    v30[4] = self;
    v24 = v23;
    v31 = v24;
    v25 = v13;
    v32 = v25;
    v26 = v14;
    v33 = v26;
    v34 = v12;
    objc_copyWeak(&v35, &location);
    if (v16)
    {
      objc_setProperty_nonatomic_copy(v16, v27, v30, 464);
    }

    [(FCOperation *)self associateChildOperation:v16];
    [(FCOperation *)v16 start];
    objc_destroyWeak(&v35);

    objc_destroyWeak(&location);
  }

  else
  {
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __74__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDs___block_invoke;
    v46[3] = &unk_1E7C36EA0;
    v46[4] = self;
    __74__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDs___block_invoke(v46);
  }
}

uint64_t __74__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDs___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 shortOperationDescription];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ finishing early because there are no coreads article list IDs", &v7, 0xCu);
  }

  return [*(a1 + 32) finishedPerformingOperationWithError:0];
}

void __74__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDs___block_invoke_2(id *a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1[4] contentContext];
  v5 = [v4 internalContentContext];
  v6 = [v5 articleListRecordSource];

  v7 = objc_opt_new();
  [v7 setCachePolicy:4];
  v8 = [a1[4] configuration];
  [v7 setMaximumCachedAge:{objc_msgSend(v8, "candidateArticleListMaxCachedAgeSeconds")}];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = a1[5];
  v9 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    v23 = v7;
    v24 = v6;
    v22 = *v32;
    do
    {
      v12 = 0;
      v25 = v10;
      do
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v31 + 1) + 8 * v12);
        v14 = [v6 cachedRecordWithID:v13];
        if (v14 && ![v6 isRecordStale:v14 withCachePolicy:v7])
        {
          [a1[6] setObject:v14 forKeyedSubscript:v13];
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v15 = [v14 articleIDs];
          v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v28;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v28 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v27 + 1) + 8 * i);
                [a1[7] setObject:v14 forKeyedSubscript:v20];
                v21 = [a1[8] objectForKeyedSubscript:v20];
                if (v21)
                {
                  [a1[9] setObject:v21 forKeyedSubscript:v20];
                }

                else
                {
                  [v3 addObject:v20];
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v17);
          }

          v7 = v23;
          v6 = v24;
          v11 = v22;
          v10 = v25;
        }

        else
        {
          [v3 addObject:v13];
        }

        ++v12;
      }

      while (v12 != v10);
      v10 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v10);
  }
}

void __74__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDs___block_invoke_3(uint64_t a1, void *a2)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v6 = v4;
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v5, @"ArticleList", 16);
  }

  v23[0] = @"articleIDs";
  v23[1] = @"type";
  v23[2] = @"metadata";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  if (v6)
  {
    objc_setProperty_nonatomic_copy(v6, v7, v8, 24);
  }

  v22 = @"articleIDs";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  if (v6)
  {
    objc_setProperty_nonatomic_copy(v6, v9, v10, 32);
  }

  [v3 addObject:v6];
  v11 = objc_opt_new();
  v13 = v11;
  if (v11)
  {
    objc_setProperty_nonatomic_copy(v11, v12, @"Article", 16);
  }

  v14 = MEMORY[0x1E69B6E30];
  v15 = [*(a1 + 32) contentContext];
  v16 = [v15 internalContentContext];
  v17 = [v16 articleRecordSource];
  v18 = [v14 keysForArticleRecordWithRecordSource:v17];
  v20 = v18;
  if (v13)
  {
    objc_setProperty_nonatomic_copy(v13, v19, v18, 24);

    objc_setProperty_nonatomic_copy(v13, v21, MEMORY[0x1E695E0F0], 32);
  }

  else
  {
  }

  [v3 addObject:v13];
}

void __74__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDs___block_invoke_5(id *a1, uint64_t a2, void *a3)
{
  v86 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v75 = MEMORY[0x1E69E9820];
    v76 = 3221225472;
    v77 = __74__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDs___block_invoke_6;
    v78 = &unk_1E7C36C58;
    v79 = a1[4];
    v80 = v4;
    [v79 finishedPerformingOperationWithError:v80];
    v6 = v80;
  }

  else
  {
    v7 = [a1[5] readOnlyArray];
    v8 = [v7 fc_arrayOfObjectsPassingTest:&__block_literal_global_57];
    v9 = [a1[4] contentContext];
    v10 = [v9 internalContentContext];
    v11 = [v10 articleListRecordSource];
    v56 = v8;
    v12 = [v11 saveRecords:v8];

    v13 = MEMORY[0x1E695DEC8];
    v14 = [a1[6] allValues];
    v55 = v12;
    v15 = [v12 allRecords];
    v16 = [v13 fc_arrayByAddingObjectsFromArray:v14 toArray:v15];

    v17 = MEMORY[0x1E695DF20];
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __74__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDs___block_invoke_8;
    v73[3] = &unk_1E7C36EC8;
    v18 = v16;
    v74 = v18;
    v19 = [v17 fc_dictionary:v73];
    v57 = v7;
    v20 = [v7 fc_arrayOfObjectsPassingTest:&__block_literal_global_62];
    v21 = MEMORY[0x1E695DF20];
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __74__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDs___block_invoke_10;
    v68[3] = &unk_1E7C36DB0;
    v69 = a1[7];
    v22 = v20;
    v23 = a1[4];
    v53 = v22;
    v70 = v22;
    v71 = v23;
    v52 = v19;
    v72 = v52;
    v24 = [v21 fc_dictionary:v68];
    v25 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      v26 = a1[4];
      v27 = v25;
      v28 = [v26 shortOperationDescription];
      v29 = [a1[8] count];
      *buf = 138543618;
      v83 = v28;
      v84 = 2048;
      v85 = v29;
      _os_log_impl(&dword_1B63EF000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ accepted %ld seeds", buf, 0x16u);
    }

    v30 = [a1[4] referenceDate];
    v31 = [a1[4] configuration];
    v32 = [v30 dateByAddingTimeInterval:{-objc_msgSend(v31, "candidateMaxAgeSeconds")}];

    v33 = [MEMORY[0x1E695DF70] array];
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __74__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDs___block_invoke_63;
    v62[3] = &unk_1E7C36DD8;
    v63 = a1[8];
    v34 = v24;
    v64 = v34;
    v35 = v32;
    v65 = v35;
    v36 = v33;
    v37 = a1[4];
    v66 = v36;
    v67 = v37;
    v54 = v18;
    [v18 enumerateObjectsUsingBlock:v62];
    v38 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      v39 = a1[4];
      v40 = v38;
      v41 = [v39 shortOperationDescription];
      v42 = [v36 count];
      *buf = 138543618;
      v83 = v41;
      v84 = 2048;
      v85 = v42;
      _os_log_impl(&dword_1B63EF000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ accepted %ld co-reads", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(a1 + 9);
    v44 = [(FCCKBatchedMultiFetchQueryOperation *)WeakRetained networkEvents];
    [a1[4] setNetworkEvents:v44];

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v45 = v36;
    v46 = [v45 countByEnumeratingWithState:&v58 objects:v81 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v59;
      do
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v59 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v50 = *(*(&v58 + 1) + 8 * i);
          v51 = [a1[4] feedItemHandler];
          v51[2](v51, v50);
        }

        v47 = [v45 countByEnumeratingWithState:&v58 objects:v81 count:16];
      }

      while (v47);
    }

    [a1[4] finishedPerformingOperationWithError:0];
    v6 = v57;
  }
}

uint64_t __74__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDs___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 recordType];
  v3 = [v2 isEqualToString:@"ArticleList"];

  return v3;
}

void __74__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDs___block_invoke_8(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [[FCArticleList alloc] initWithRecord:*(*(&v19 + 1) + 8 * v7) interestToken:0];
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v9 = [(FCArticleList *)v8 articleIDs];
        v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v16;
          do
          {
            v13 = 0;
            do
            {
              if (*v16 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [v3 setObject:v8 forKeyedSubscript:*(*(&v15 + 1) + 8 * v13++)];
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v11);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }
}

uint64_t __74__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDs___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = [a2 recordType];
  v3 = [v2 isEqualToString:@"Article"];

  return v3;
}

void __74__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDs___block_invoke_10(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 addEntriesFromDictionary:*(a1 + 32)];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [*(a1 + 48) _feedItemFromArticleRecord:v9 articleListsByArticleID:{*(a1 + 56), v13}];
        v11 = [v9 recordID];
        v12 = [v11 recordName];
        [v3 setObject:v10 forKeyedSubscript:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

void __74__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDs___block_invoke_63(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 base];
  v5 = [v4 identifier];

  if ([*(a1 + 32) containsObject:v5])
  {
    v24 = v5;
    v25 = v3;
    v6 = [v3 articleIDs];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v27 objects:v39 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v28;
      v10 = &FCOperationLog;
      v26 = v6;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = [*(a1 + 40) objectForKeyedSubscript:*(*(&v27 + 1) + 8 * i)];
          v13 = [v12 publishDate];
          v14 = [v13 fc_isLaterThanOrEqualTo:*(a1 + 48)];

          if (v14)
          {
            [*(a1 + 56) addObject:v12];
          }

          else
          {
            v15 = *v10;
            if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
            {
              v16 = *(a1 + 64);
              v17 = v15;
              v18 = [v16 shortOperationDescription];
              v19 = [v12 articleID];
              [v12 publishDate];
              v20 = v9;
              v22 = v21 = v10;
              v23 = *(a1 + 48);
              *buf = 138544130;
              v32 = v18;
              v33 = 2114;
              v34 = v19;
              v35 = 2114;
              v36 = v22;
              v37 = 2114;
              v38 = v23;
              _os_log_impl(&dword_1B63EF000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ excluding as a co-read %{public}@ because it was published at %{public}@, which is prior to the earliest allowed date of %{public}@", buf, 0x2Au);

              v10 = v21;
              v9 = v20;

              v6 = v26;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v27 objects:v39 count:16];
      }

      while (v8);
    }

    v5 = v24;
    v3 = v25;
  }
}

- (void)_continueOperationWithArticleListIDsNoCache:(id)cache
{
  cacheCopy = cache;
  if ([cacheCopy count])
  {
    referenceDate = [(FCPeopleAlsoReadArticlesOperation *)self referenceDate];
    configuration = [(FCPeopleAlsoReadArticlesOperation *)self configuration];
    v7 = [referenceDate dateByAddingTimeInterval:{-objc_msgSend(configuration, "candidateMaxAgeSeconds")}];

    v8 = objc_alloc_init(FCCKContentFetchOperation);
    contentContext = [(FCPeopleAlsoReadArticlesOperation *)self contentContext];
    internalContentContext = [contentContext internalContentContext];
    contentDatabase = [internalContentContext contentDatabase];
    [(FCCKContentFetchOperation *)v8 setDatabase:contentDatabase];

    v13 = [cacheCopy fc_arrayByTransformingWithBlock:&__block_literal_global_68];
    if (v8)
    {
      objc_setProperty_nonatomic_copy(v8, v12, v13, 384);
    }

    contentContext2 = [(FCPeopleAlsoReadArticlesOperation *)self contentContext];
    internalContentContext2 = [contentContext2 internalContentContext];
    articleListRecordSource = [internalContentContext2 articleListRecordSource];
    desiredKeys = [articleListRecordSource desiredKeys];
    v19 = desiredKeys;
    if (v8)
    {
      objc_setProperty_nonatomic_copy(v8, v18, desiredKeys, 400);

      v8->_optimizationPolicy = 1;
    }

    else
    {
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    newValue[0] = MEMORY[0x1E69E9820];
    newValue[1] = 3221225472;
    newValue[2] = __81__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDsNoCache___block_invoke_2;
    newValue[3] = &unk_1E7C36E28;
    newValue[4] = self;
    v22 = dictionary;
    v34 = v22;
    if (v8)
    {
      objc_setProperty_nonatomic_copy(v8, v21, newValue, 416);
    }

    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __81__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDsNoCache___block_invoke_4;
    v29 = &unk_1E7C36E78;
    selfCopy = self;
    v31 = v22;
    v32 = v7;
    v23 = v7;
    v25 = v22;
    if (v8)
    {
      objc_setProperty_nonatomic_copy(v8, v24, &v26, 424);
    }

    [(FCOperation *)self associateChildOperation:v8, v26, v27, v28, v29, selfCopy];
    [(FCOperation *)v8 start];
  }

  else
  {
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __81__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDsNoCache___block_invoke;
    v35[3] = &unk_1E7C36EA0;
    v35[4] = self;
    __81__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDsNoCache___block_invoke(v35);
  }
}

uint64_t __81__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDsNoCache___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 shortOperationDescription];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ finishing early because there are no coreads article list IDs", &v7, 0xCu);
  }

  return [*(a1 + 32) finishedPerformingOperationWithError:0];
}

id __81__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDsNoCache___block_invoke_66(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695BA70];
  v3 = a2;
  v4 = [[v2 alloc] initWithRecordName:v3];

  return v4;
}

void __81__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDsNoCache___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) contentContext];
    v5 = [v4 internalContentContext];
    v6 = [v5 articleListRecordSource];
    v7 = [v6 convertRecord:v3];

    v8 = [[FCArticleList alloc] initWithRecord:v7 interestToken:0];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [(FCArticleList *)v8 articleIDs];
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(a1 + 40) setObject:v8 forKeyedSubscript:*(*(&v14 + 1) + 8 * v13++)];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

void __81__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDsNoCache___block_invoke_4(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 fc_isUnknownItemError] & 1) == 0)
  {
    v26[5] = MEMORY[0x1E69E9820];
    v26[6] = 3221225472;
    v26[7] = __81__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDsNoCache___block_invoke_5;
    v26[8] = &unk_1E7C36C58;
    v27 = a1[4];
    v28 = v4;
    [v27 finishedPerformingOperationWithError:v28];
  }

  else if ([a1[5] count])
  {
    v5 = objc_alloc_init(FCCKContentFetchOperation);
    v6 = [a1[4] contentContext];
    v7 = [v6 internalContentContext];
    v8 = [v7 contentDatabase];
    [(FCCKContentFetchOperation *)v5 setDatabase:v8];

    v9 = [a1[5] allKeys];
    v11 = [v9 fc_arrayByTransformingWithBlock:&__block_literal_global_73];
    if (v5)
    {
      objc_setProperty_nonatomic_copy(v5, v10, v11, 384);
    }

    v12 = MEMORY[0x1E69B6E30];
    v13 = [a1[4] contentContext];
    v14 = [v13 internalContentContext];
    v15 = [v14 articleRecordSource];
    v16 = [v12 keysForArticleRecordWithRecordSource:v15];
    v18 = v16;
    if (v5)
    {
      objc_setProperty_nonatomic_copy(v5, v17, v16, 400);

      v5->_optimizationPolicy = 1;
    }

    else
    {
    }

    newValue[0] = MEMORY[0x1E69E9820];
    newValue[1] = 3221225472;
    newValue[2] = __81__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDsNoCache___block_invoke_2_74;
    newValue[3] = &unk_1E7C36C30;
    v19 = a1[5];
    newValue[4] = a1[4];
    v24 = v19;
    v25 = a1[6];
    if (v5)
    {
      objc_setProperty_nonatomic_copy(v5, v20, newValue, 416);
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __81__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDsNoCache___block_invoke_75;
    v22[3] = &unk_1E7C36E50;
    v21 = a1[4];
    v22[4] = v21;
    if (v5)
    {
      objc_setProperty_nonatomic_copy(v5, v20, v22, 424);
      v21 = a1[4];
    }

    [v21 associateChildOperation:v5];
    [(FCOperation *)v5 start];
  }

  else
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __81__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDsNoCache___block_invoke_6;
    v26[3] = &unk_1E7C36EA0;
    v26[4] = a1[4];
    __81__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDsNoCache___block_invoke_6(v26);
  }
}

void __81__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDsNoCache___block_invoke_6(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 shortOperationDescription];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ finishing early because none of the coreads article lists exist", &v6, 0xCu);
  }
}

id __81__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDsNoCache___block_invoke_71(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695BA70];
  v3 = a2;
  v4 = [[v2 alloc] initWithRecordName:v3];

  return v4;
}

void __81__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDsNoCache___block_invoke_2_74(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) _feedItemFromArticleRecord:a2 articleListsByArticleID:*(a1 + 40)];
  v4 = [v3 publishDate];
  v5 = [v4 fc_isLaterThanOrEqualTo:*(a1 + 48)];

  if (v5)
  {
    v6 = [*(a1 + 32) feedItemHandler];
    (v6)[2](v6, v3);
  }

  else
  {
    v7 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v8 shortOperationDescription];
      v11 = [v3 articleID];
      v12 = [v3 publishDate];
      v13 = *(a1 + 48);
      v14 = 138544130;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      v18 = 2114;
      v19 = v12;
      v20 = 2114;
      v21 = v13;
      _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ excluding as a co-read %{public}@ because it was published at %{public}@, which is prior to the earliest allowed date of %{public}@", &v14, 0x2Au);
    }
  }
}

void __81__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDsNoCache___block_invoke_75(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 fc_isUnknownItemError] & 1) == 0)
  {
    v5 = MEMORY[0x1E69E9820];
    v6 = *(a1 + 32);
    v7 = v4;
    [v6 finishedPerformingOperationWithError:{v7, v5, 3221225472, __81__FCPeopleAlsoReadArticlesOperation__continueOperationWithArticleListIDsNoCache___block_invoke_2_76, &unk_1E7C36C58, v6}];
  }

  else
  {
    [*(a1 + 32) finishedPerformingOperationWithError:0];
  }
}

- (id)_feedItemFromArticleRecord:(id)record articleListsByArticleID:(id)d
{
  dCopy = d;
  v7 = MEMORY[0x1E69B6E30];
  recordCopy = record;
  contentContext = [(FCPeopleAlsoReadArticlesOperation *)self contentContext];
  contentStoreFrontID = [contentContext contentStoreFrontID];
  contentContext2 = [(FCPeopleAlsoReadArticlesOperation *)self contentContext];
  internalContentContext = [contentContext2 internalContentContext];
  articleRecordSource = [internalContentContext articleRecordSource];
  v14 = [v7 feedItemFromCKRecord:recordCopy storefrontID:contentStoreFrontID recordSource:articleRecordSource];

  if (v14)
  {
    articleID = [v14 articleID];
    v16 = [dCopy objectForKeyedSubscript:articleID];

    if (v16)
    {
      identifier = [v16 identifier];
      [v14 addSurfacedByArticleListID:identifier];

      editorialMetadata = [v16 editorialMetadata];
      articleMetadata = [editorialMetadata articleMetadata];
      articleID2 = [v14 articleID];
      v21 = [articleMetadata objectForKeyedSubscript:articleID2];

      [v21 conditionalScore];
      [v14 applyConditionalScore:?];
    }
  }

  return v14;
}

- (BOOL)_shouldBypassCache
{
  v15 = *MEMORY[0x1E69E9840];
  IsMemoryConstrained = FCProcessIsMemoryConstrained();
  if (IsMemoryConstrained)
  {
    cursor = [(FCPeopleAlsoReadArticlesOperation *)self cursor];

    if (cursor)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"People Also Read operation should have no cursor if bypassing the cache"];
        v7 = 136315906;
        v8 = "[FCPeopleAlsoReadArticlesOperation _shouldBypassCache]";
        v9 = 2080;
        v10 = "FCPeopleAlsoReadArticlesOperation.m";
        v11 = 1024;
        v12 = 512;
        v13 = 2114;
        v14 = v6;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v7, 0x26u);
      }
    }
  }

  return IsMemoryConstrained;
}

@end