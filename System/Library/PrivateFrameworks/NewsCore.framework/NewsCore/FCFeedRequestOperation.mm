@interface FCFeedRequestOperation
+ (id)feedRequestContentEnvironmentTokenWithContext:(id)context;
+ (void)streamFeedItemsWithContext:(id)context feedRequests:(id)requests feedItemHandler:(id)handler networkEventHandler:(id)eventHandler completionHandler:(id)completionHandler;
- (BOOL)canRetryWithError:(id)error retryAfter:(id *)after;
- (BOOL)validateOperation;
- (FCFeedRequestOperation)init;
- (FCFeedResponse)_failureResponseForRequest:(void *)request error:;
- (NSArray)networkEvents;
- (id)_additionalHTTPHeadersForOrderFeedRequest;
- (id)_countOfDroppedFeeds;
- (unint64_t)maxRetries;
- (void)_gatherAllOrderFeedResponsesWithCompletionHandler:(id *)handler;
- (void)_reportProgressWithFeedItems:(id *)items;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
- (void)prepareOperation;
- (void)resetForRetry;
- (void)setResultHeldArticleRecords:(uint64_t)records;
- (void)setResultHeldIssueRecords:(uint64_t)records;
- (void)setResultHeldTagRecords:(uint64_t)records;
@end

@implementation FCFeedRequestOperation

+ (id)feedRequestContentEnvironmentTokenWithContext:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (!contextCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "contentContext"];
    *buf = 136315906;
    v12 = "+[FCFeedRequestOperation feedRequestContentEnvironmentTokenWithContext:]";
    v13 = 2080;
    v14 = "FCFeedRequestOperation.m";
    v15 = 1024;
    v16 = 90;
    v17 = 2114;
    v18 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v4 = MEMORY[0x1E696AEC0];
  contentEnvironmentToken = [contextCopy contentEnvironmentToken];
  internalContentContext = [contextCopy internalContentContext];
  feedDatabase = [internalContentContext feedDatabase];
  v8 = [v4 stringWithFormat:@"%@-%zd", contentEnvironmentToken, objc_msgSend(feedDatabase, "endpoint")];

  return v8;
}

- (FCFeedRequestOperation)init
{
  v13.receiver = self;
  v13.super_class = FCFeedRequestOperation;
  v2 = [(FCOperation *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    progressReportedFeedItems = v2->_progressReportedFeedItems;
    v2->_progressReportedFeedItems = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    resultFeedResponses = v2->_resultFeedResponses;
    v2->_resultFeedResponses = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    mutableNetworkEvents = v2->_mutableNetworkEvents;
    v2->_mutableNetworkEvents = v7;

    feedRequests = v2->_feedRequests;
    v10 = MEMORY[0x1E695E0F0];
    v2->_feedRequests = MEMORY[0x1E695E0F0];

    feedTransformations = v2->_feedTransformations;
    v2->_feedTransformations = v10;

    v2->_queryBudget = 10;
  }

  return v2;
}

- (BOOL)validateOperation
{
  v51 = *MEMORY[0x1E69E9840];
  context = [(FCFeedRequestOperation *)self context];

  if (!context && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"feed request operation requires a context"];
    *buf = 136315906;
    v44 = "[FCFeedRequestOperation validateOperation]";
    v45 = 2080;
    v46 = "FCFeedRequestOperation.m";
    v47 = 1024;
    v48 = 112;
    v49 = 2114;
    v50 = v34;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  configuration = [(FCFeedRequestOperation *)self configuration];

  if (!configuration && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"feed request operation requires a configuration"];
    *buf = 136315906;
    v44 = "[FCFeedRequestOperation validateOperation]";
    v45 = 2080;
    v46 = "FCFeedRequestOperation.m";
    v47 = 1024;
    v48 = 113;
    v49 = 2114;
    v50 = v35;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  feedRequests = [(FCFeedRequestOperation *)self feedRequests];
  v6 = [feedRequests count];

  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"feed request operation requires at least one request"];
    *buf = 136315906;
    v44 = "[FCFeedRequestOperation validateOperation]";
    v45 = 2080;
    v46 = "FCFeedRequestOperation.m";
    v47 = 1024;
    v48 = 114;
    v49 = 2114;
    v50 = v36;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v7 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  selfCopy = self;
  feedRequests2 = [(FCFeedRequestOperation *)self feedRequests];
  v9 = [feedRequests2 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v39;
    do
    {
      v12 = 0;
      do
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(feedRequests2);
        }

        v13 = *(*(&v38 + 1) + 8 * v12);
        feedID = [v13 feedID];
        if (feedID)
        {
          if ([v7 containsObject:feedID] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"only one feed request is allowed per feedID and feedID %@ is duplicated", feedID];
            *buf = 136315906;
            v44 = "[FCFeedRequestOperation validateOperation]";
            v45 = 2080;
            v46 = "FCFeedRequestOperation.m";
            v47 = 1024;
            v48 = 128;
            v49 = 2114;
            v50 = v27;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }

          [v7 addObject:feedID];
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"feed requests must have a feed ID"];
          *buf = 136315906;
          v44 = "[FCFeedRequestOperation validateOperation]";
          v45 = 2080;
          v46 = "FCFeedRequestOperation.m";
          v47 = 1024;
          v48 = 124;
          v49 = 2114;
          v50 = v24;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

        feedRange = [v13 feedRange];
        v16 = [feedRange top];

        if (!v16 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"feed requests must have a non-nil range top"];
          *buf = 136315906;
          v44 = "[FCFeedRequestOperation validateOperation]";
          v45 = 2080;
          v46 = "FCFeedRequestOperation.m";
          v47 = 1024;
          v48 = 132;
          v49 = 2114;
          v50 = v25;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

        feedRange2 = [v13 feedRange];
        bottom = [feedRange2 bottom];

        if (!bottom && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"feed requests must have a non-nil range bottom"];
          *buf = 136315906;
          v44 = "[FCFeedRequestOperation validateOperation]";
          v45 = 2080;
          v46 = "FCFeedRequestOperation.m";
          v47 = 1024;
          v48 = 133;
          v49 = 2114;
          v50 = v26;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

          if (!feedID)
          {
            goto LABEL_38;
          }
        }

        else if (!feedID)
        {
          goto LABEL_38;
        }

        feedRange3 = [v13 feedRange];
        v20 = [feedRange3 top];
        if (!v20)
        {

LABEL_38:
          LOBYTE(bottom2) = 0;
          goto LABEL_39;
        }

        v21 = v20;
        feedRange4 = [v13 feedRange];
        bottom2 = [feedRange4 bottom];

        if (!bottom2)
        {
          goto LABEL_39;
        }

        ++v12;
      }

      while (v10 != v12);
      v28 = [feedRequests2 countByEnumeratingWithState:&v38 objects:v42 count:16];
      v10 = v28;
      LOBYTE(bottom2) = 1;
    }

    while (v28);
  }

  else
  {
    LOBYTE(bottom2) = 1;
  }

LABEL_39:

  context2 = [(FCFeedRequestOperation *)selfCopy context];
  if (context2)
  {
    configuration2 = [(FCFeedRequestOperation *)selfCopy configuration];
    if (configuration2)
    {
      feedRequests3 = [(FCFeedRequestOperation *)selfCopy feedRequests];
      if ([feedRequests3 count])
      {
        v32 = bottom2;
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (void)prepareOperation
{
  v26 = *MEMORY[0x1E69E9840];
  feedDatabase = [(FCFeedRequestOperation *)self feedDatabase];

  if (!feedDatabase)
  {
    context = [(FCFeedRequestOperation *)self context];
    internalContentContext = [context internalContentContext];
    feedDatabase2 = [internalContentContext feedDatabase];
    [(FCFeedRequestOperation *)self setFeedDatabase:feedDatabase2];
  }

  configuration = [(FCFeedRequestOperation *)self configuration];

  if (!configuration)
  {
    context2 = [(FCFeedRequestOperation *)self context];
    configurationManager = [context2 configurationManager];
    configuration2 = [configurationManager configuration];
    [(FCFeedRequestOperation *)self setConfiguration:configuration2];
  }

  feedRequests = [(FCFeedRequestOperation *)self feedRequests];
  v12 = [feedRequests fc_setByTransformingWithBlock:&__block_literal_global_104];
  if (self)
  {
    objc_storeStrong(&self->_nonExpendableFeedIDs, v12);
  }

  if ([(FCFeedRequestOperation *)self maxCount]>= 0x190)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"max count should be reasonable; pass zero if you don't want a limit"];
      v18 = 136315906;
      v19 = "[FCFeedRequestOperation prepareOperation]";
      v20 = 2080;
      v21 = "FCFeedRequestOperation.m";
      v22 = 1024;
      v23 = 163;
      v24 = 2114;
      v25 = v17;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v18, 0x26u);
    }

    [(FCFeedRequestOperation *)self setMaxCount:0];
  }

  feedRequests2 = [(FCFeedRequestOperation *)self feedRequests];
  if ([feedRequests2 count] == 1)
  {
    feedRequests3 = [(FCFeedRequestOperation *)self feedRequests];
    firstObject = [feedRequests3 firstObject];
    if ([firstObject hasMaxCount])
    {
      maxCount = [(FCFeedRequestOperation *)self maxCount];

      if (maxCount)
      {
        return;
      }

      feedRequests2 = [(FCFeedRequestOperation *)self feedRequests];
      feedRequests3 = [feedRequests2 firstObject];
      -[FCFeedRequestOperation setMaxCount:](self, "setMaxCount:", [feedRequests3 maxCount]);
    }

    else
    {
    }
  }
}

id __42__FCFeedRequestOperation_prepareOperation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isExpendable])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 feedID];
  }

  return v3;
}

- (void)performOperation
{
  v18 = *MEMORY[0x1E69E9840];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __42__FCFeedRequestOperation_performOperation__block_invoke;
  v12[3] = &unk_1E7C36EA0;
  v12[4] = self;
  v3 = v12;
  if (self)
  {
    prewarmRequestKey = [(FCFeedRequestOperation *)self prewarmRequestKey];

    if (prewarmRequestKey)
    {
      v5 = FCOperationLog;
      if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
        shortOperationDescription = [(FCOperation *)self shortOperationDescription];
        LODWORD(buf) = 138543362;
        *(&buf + 4) = shortOperationDescription;
        _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ will wait for prewarming to finish", &buf, 0xCu);
      }

      context = [(FCFeedRequestOperation *)self context];
      internalContentContext = [context internalContentContext];
      feedPrewarmer = [internalContentContext feedPrewarmer];
      prewarmRequestKey2 = [(FCFeedRequestOperation *)self prewarmRequestKey];
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v14 = __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke_69;
      v15 = &unk_1E7C421E0;
      selfCopy2 = self;
      v17 = v3;
      [feedPrewarmer finishPrewarmingRequestForKey:prewarmRequestKey2 completion:&buf];
    }

    else
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v14 = __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke;
      v15 = &unk_1E7C37BC0;
      selfCopy2 = self;
      v17 = v3;
      __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke(&buf);
    }
  }
}

void __42__FCFeedRequestOperation_performOperation__block_invoke(uint64_t a1)
{
  v61[1] = *MEMORY[0x1E69E9840];
  v2 = a1 + 32;
  v3 = [*(a1 + 32) feedRequests];
  v4 = [v3 fc_dictionaryWithKeySelector:sel_feedID];
  if (*v2)
  {
    objc_storeStrong((*v2 + 488), v4);
  }

  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __42__FCFeedRequestOperation_performOperation__block_invoke_2;
  v52[3] = &unk_1E7C36EC8;
  v52[4] = *(a1 + 32);
  v5 = [MEMORY[0x1E695DF20] fc_dictionary:v52];
  v6 = *(a1 + 32);
  if (v6)
  {
    objc_storeStrong((v6 + 496), v5);
  }

  v7 = [*(a1 + 32) edgeCacheHint];
  v8 = v7 == 0;

  v9 = *(a1 + 32);
  if (v8)
  {
    v37 = [*(a1 + 32) feedDatabase];
    v38 = [v37 endpoint] == 1;

    if (v38)
    {
      v39 = *(a1 + 32);
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __42__FCFeedRequestOperation_performOperation__block_invoke_4;
      v50[3] = &unk_1E7C36E50;
      v50[4] = v39;
      [(FCFeedRequestOperation *)v39 _gatherAllOrderFeedResponsesWithCompletionHandler:v50];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"MultiFeed is no longer supported"];
        *newValue = 136315906;
        *&newValue[4] = "[FCFeedRequestOperation performOperation]_block_invoke";
        *&newValue[12] = 2080;
        *&newValue[14] = "FCFeedRequestOperation.m";
        *&newValue[22] = 1024;
        LODWORD(v56) = 208;
        WORD2(v56) = 2114;
        *(&v56 + 6) = v49;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", newValue, 0x26u);
      }

      v47 = *(a1 + 32);
      v48 = [MEMORY[0x1E696ABC0] fc_notAvailableError];
      [v47 finishedPerformingOperationWithError:v48];
    }
  }

  else
  {
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __42__FCFeedRequestOperation_performOperation__block_invoke_3;
    v51[3] = &unk_1E7C36E50;
    v51[4] = v9;
    v10 = v51;
    if (v9)
    {
      v11 = [v9 feedRequests];
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __78__FCFeedRequestOperation__gatherEdgeCachedFeedResponsesWithCompletionHandler___block_invoke;
      v54[3] = &unk_1E7C421B8;
      v54[4] = v9;
      v12 = [v11 fc_arrayByTransformingWithBlock:v54];

      v13 = objc_alloc_init(FCCKOrderFeedQueryOperation);
      v14 = [v9 context];
      v15 = [v14 internalContentContext];
      v16 = [v15 contentDatabase];
      [(FCCKOrderFeedQueryOperation *)v13 setDatabase:v16];

      if (v13)
      {
        objc_setProperty_nonatomic_copy(v13, v17, v12, 376);
        v18 = [(FCFeedRequestOperation *)v9 _additionalHTTPHeadersForOrderFeedRequest];
        objc_setProperty_nonatomic_copy(v13, v19, v18, 416);
      }

      else
      {
        v18 = [(FCFeedRequestOperation *)v9 _additionalHTTPHeadersForOrderFeedRequest];
      }

      v20 = [v9 edgeCacheHint];
      v22 = v20;
      if (v13)
      {
        objc_setProperty_nonatomic_copy(v13, v21, v20, 424);

        v23 = [v9 maxCount];
        v24 = 4000;
        if (v23)
        {
          v24 = v23;
        }

        v13->_resultsLimit = v24;
        v13->_queryPriority = 300;
      }

      else
      {

        [v9 maxCount];
      }

      v25 = [v9 context];
      v26 = [v25 internalContentContext];

      v27 = [v9 context];
      v28 = [v27 contentStoreFrontID];

      v29 = MEMORY[0x1E69B6E30];
      v30 = [v26 articleRecordSource];
      v31 = [v29 keysForFeedItemAndArticleRecordWithRecordSource:v30];

      if (([v9 options] & 2) != 0)
      {
        v32 = [v26 articleRecordSource];
        v33 = [v32 desiredKeys];
        v34 = [v31 arrayByAddingObjectsFromArray:v33];

        v31 = v34;
      }

      if (([v9 options] & 4) != 0)
      {
        v40 = [v26 tagRecordSource];
        v41 = [v40 desiredKeys];
        v42 = [v31 arrayByAddingObjectsFromArray:v41];

        v61[0] = @"sourceChannelTagID";
        v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:1];
        v31 = v42;
      }

      else
      {
        v36 = 0;
      }

      if (v13)
      {
        objc_setProperty_nonatomic_copy(v13, v35, v31, 384);
        objc_setProperty_nonatomic_copy(v13, v43, v36, 408);
      }

      objc_initWeak(&location, v13);
      *newValue = MEMORY[0x1E69E9820];
      *&newValue[8] = 3221225472;
      *&newValue[16] = __78__FCFeedRequestOperation__gatherEdgeCachedFeedResponsesWithCompletionHandler___block_invoke_2;
      *&v56 = &unk_1E7C42258;
      *(&v56 + 1) = v9;
      objc_copyWeak(v60, &location);
      v44 = v26;
      v57 = v44;
      v45 = v28;
      v58 = v45;
      v59 = v10;
      if (v13)
      {
        objc_setProperty_nonatomic_copy(v13, v46, newValue, 440);
      }

      [v9 associateChildOperation:v13];
      [(FCOperation *)v13 start];

      objc_destroyWeak(v60);
      objc_destroyWeak(&location);
    }
  }
}

void __42__FCFeedRequestOperation_performOperation__block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [*(a1 + 32) feedRequests];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = objc_alloc_init(FCFeedDatabaseLookup);
        v11 = [v9 feedID];
        [(FCFeedDatabaseLookup *)v10 setFeedID:v11];

        v12 = [v9 feedRange];
        [(FCFeedDatabaseLookup *)v10 setFeedRange:v12];

        -[FCFeedDatabaseLookup setMaxCount:](v10, "setMaxCount:", [v9 maxCount]);
        -[FCFeedDatabaseLookup setCachedOnly:](v10, "setCachedOnly:", [v9 cachedOnly]);
        v13 = [v9 requiredFeature];
        [(FCFeedDatabaseLookup *)v10 setRequiredFeature:v13];

        v14 = [v9 feedID];
        [v3 setObject:v10 forKey:v14];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (void)_gatherAllOrderFeedResponsesWithCompletionHandler:(id *)handler
{
  v134 = *MEMORY[0x1E69E9840];
  v102 = a2;
  handlerCopy = handler;
  if (handler)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    newValue = [MEMORY[0x1E695DF70] array];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    feedRequests = [handler feedRequests];
    v128[0] = MEMORY[0x1E69E9820];
    v128[1] = 3221225472;
    v128[2] = __76__FCFeedRequestOperation__gatherAllOrderFeedResponsesWithCompletionHandler___block_invoke;
    v128[3] = &unk_1E7C421B8;
    v128[4] = handlerCopy;
    v103 = [feedRequests fc_arrayByTransformingWithBlock:v128];

    date = [MEMORY[0x1E695DF00] date];
    LOBYTE(feedRequests) = [handlerCopy maxCount] == 0;
    feedDatabase = [handlerCopy feedDatabase];
    v5 = feedDatabase;
    if (feedRequests)
    {
      [feedDatabase performDatabaseLookups:v103];
    }

    else
    {
      [feedDatabase performDatabaseLookups:v103 boundedByCount:{objc_msgSend(handlerCopy, "maxCount")}];
    }
    v6 = ;

    v7 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      shortOperationDescription = [handlerCopy shortOperationDescription];
      fc_millisecondTimeIntervalUntilNow = [date fc_millisecondTimeIntervalUntilNow];
      v11 = [v103 count];
      *buf = 138543874;
      *&buf[4] = shortOperationDescription;
      *&buf[12] = 2048;
      *&buf[14] = fc_millisecondTimeIntervalUntilNow;
      *&buf[22] = 2048;
      v132 = v11;
      _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ took %llums to lookup %lu feeds in the database", buf, 0x20u);
    }

    feedRequests2 = [handlerCopy feedRequests];
    v13 = [feedRequests2 count] < 3;

    if (v13)
    {
      v14 = FCOperationLog;
      if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
        shortOperationDescription2 = [handlerCopy shortOperationDescription];
        *buf = 138543874;
        *&buf[4] = shortOperationDescription2;
        *&buf[12] = 2114;
        *&buf[14] = v103;
        *&buf[22] = 2114;
        v132 = v6;
        _os_log_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ did perform database lookups: %{public}@,\nresults:%{public}@", buf, 0x20u);
      }
    }

    array = [MEMORY[0x1E695DF70] array];
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    obj = v6;
    v109 = [obj countByEnumeratingWithState:&v124 objects:v130 count:16];
    if (v109)
    {
      v108 = *v125;
      do
      {
        v17 = 0;
        do
        {
          if (*v125 != v108)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v124 + 1) + 8 * v17);
          v19 = [handlerCopy[61] objectForKey:v18];
          v20 = [handlerCopy[62] objectForKey:v18];
          v21 = [obj objectForKey:v18];
          if ([v21 ckFromOrder] && (!objc_msgSend(v20, "hasMaxCount") || (objc_msgSend(v21, "feedItems"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "count"), LODWORD(v23) = v23 < objc_msgSend(v20, "maxCount"), v22, v23)))
          {
            ckFromOrder = [v21 ckFromOrder];
            if ([v21 ckToOrder])
            {
              v25 = [v21 ckToOrder] - 1;
            }

            else
            {
              v25 = 0;
            }

            v26 = [FCFeedRange feedRangeWithMaxOrder:ckFromOrder minOrder:v25];
            feedItems4 = [FCCKOrderFeedUtilities orderFeedRequestForFeedID:v18 feedRange:v26];
            maxCount = [v20 maxCount];
            if (feedItems4)
            {
              if (maxCount >= 0xFFFF)
              {
                v30 = 0xFFFFLL;
              }

              else
              {
                v30 = maxCount;
              }

              if (!maxCount)
              {
                v30 = 0xFFFFLL;
              }

              feedItems4[4] = v30;
            }

            if ([v20 hasMaxCount])
            {
              maxCount2 = [v20 maxCount];
              feedItems = [v21 feedItems];
              v33 = maxCount2 > [feedItems count];

              if (v33)
              {
                maxCount3 = [v20 maxCount];
                feedItems2 = [v21 feedItems];
                v36 = [feedItems2 count];
                if (feedItems4)
                {
                  v37 = maxCount3 - v36;
                  if ((maxCount3 - v36) >= 0xFFFF)
                  {
                    v37 = 0xFFFFLL;
                  }

                  if (maxCount3 == v36)
                  {
                    v37 = 0xFFFFLL;
                  }

                  feedItems4[4] = v37;
                }
              }
            }

            [newValue addObject:feedItems4];
            if (feedItems4)
            {
              v38 = feedItems4[1];
            }

            else
            {
              v38 = 0;
            }

            v39 = v38;
            [dictionary2 setObject:v19 forKey:v39];

            insertionToken = [v21 insertionToken];
            [dictionary setObject:insertionToken forKey:v18];
          }

          else
          {
            v26 = objc_alloc_init(FCFeedResponse);
            [(FCFeedResponse *)v26 setFeedID:v18];
            feedItems3 = [v21 feedItems];
            [(FCFeedResponse *)v26 setFeedItems:feedItems3];

            -[FCFeedResponse setExhaustedRequestRange:](v26, "setExhaustedRequestRange:", [v21 exhaustedRange]);
            [handlerCopy[65] setObject:v26 forKey:v18];
            feedItems4 = [v21 feedItems];
            [array addObjectsFromArray:feedItems4];
          }

          ++v17;
        }

        while (v109 != v17);
        v41 = [obj countByEnumeratingWithState:&v124 objects:v130 count:16];
        v109 = v41;
      }

      while (v41);
    }

    [(FCFeedRequestOperation *)handlerCopy _reportProgressWithFeedItems:array];
    if ([newValue count])
    {
      v42 = handlerCopy;
      v43 = handlerCopy[63];
      if (v43)
      {
        handlerCopy[63] = v43 - 1;
        date2 = [MEMORY[0x1E695DF00] date];
        v45 = objc_alloc_init(FCCKBatchedOrderFeedQueryOperation);
        context = [handlerCopy context];
        internalContentContext = [context internalContentContext];
        contentDatabase = [internalContentContext contentDatabase];
        [(FCCKBatchedOrderFeedQueryOperation *)v45 setDatabase:contentDatabase];

        if (v45)
        {
          objc_setProperty_nonatomic_copy(v45, v49, newValue, 376);
          _additionalHTTPHeadersForOrderFeedRequest = [(FCFeedRequestOperation *)handlerCopy _additionalHTTPHeadersForOrderFeedRequest];
          objc_setProperty_nonatomic_copy(v45, v51, _additionalHTTPHeadersForOrderFeedRequest, 416);
        }

        else
        {
          _additionalHTTPHeadersForOrderFeedRequest = [(FCFeedRequestOperation *)handlerCopy _additionalHTTPHeadersForOrderFeedRequest];
        }

        edgeCacheHint = [handlerCopy edgeCacheHint];
        v54 = edgeCacheHint;
        if (v45)
        {
          objc_setProperty_nonatomic_copy(v45, v53, edgeCacheHint, 424);

          relativePriority = [handlerCopy relativePriority];
          v56 = 300;
          if (!relativePriority)
          {
            v56 = 200;
          }

          if (relativePriority == -1)
          {
            v56 = 100;
          }

          v45->_queryPriority = v56;
        }

        else
        {

          [handlerCopy relativePriority];
        }

        if ([handlerCopy maxCount])
        {
          maxCount4 = [handlerCopy maxCount];
        }

        else
        {
          maxCount4 = 4000;
        }

        if (v45)
        {
          v45->_resultsLimit = maxCount4;
        }

        context2 = [handlerCopy context];
        internalContentContext2 = [context2 internalContentContext];

        context3 = [handlerCopy context];
        contentStoreFrontID = [context3 contentStoreFrontID];

        v82 = MEMORY[0x1E69B6E30];
        articleRecordSource = [internalContentContext2 articleRecordSource];
        v84 = [v82 keysForFeedItemAndArticleRecordWithRecordSource:articleRecordSource];

        array2 = [MEMORY[0x1E695DF70] array];
        if (([handlerCopy options] & 2) != 0)
        {
          articleRecordSource2 = [internalContentContext2 articleRecordSource];
          desiredKeys = [articleRecordSource2 desiredKeys];
          v88 = [v84 arrayByAddingObjectsFromArray:desiredKeys];

          v84 = v88;
        }

        if (([handlerCopy options] & 4) != 0)
        {
          tagRecordSource = [internalContentContext2 tagRecordSource];
          desiredKeys2 = [tagRecordSource desiredKeys];
          v91 = [v84 arrayByAddingObjectsFromArray:desiredKeys2];

          [array2 addObject:@"sourceChannelTagID"];
          v84 = v91;
        }

        if (([handlerCopy options] & 8) != 0)
        {
          issueRecordSource = [internalContentContext2 issueRecordSource];
          desiredKeys3 = [issueRecordSource desiredKeys];
          v95 = [v84 arrayByAddingObjectsFromArray:desiredKeys3];

          [array2 addObject:@"parentIssueID"];
          v84 = v95;
        }

        if (v45)
        {
          objc_setProperty_nonatomic_copy(v45, v92, v84, 384);
          objc_setProperty_nonatomic_copy(v45, v96, array2, 408);
        }

        objc_initWeak(buf, v45);
        v112[0] = MEMORY[0x1E69E9820];
        v112[1] = 3221225472;
        v112[2] = __76__FCFeedRequestOperation__gatherAllOrderFeedResponsesWithCompletionHandler___block_invoke_86;
        v112[3] = &unk_1E7C42230;
        v112[4] = handlerCopy;
        objc_copyWeak(&v119, buf);
        v97 = internalContentContext2;
        v113 = v97;
        v114 = dictionary2;
        v98 = contentStoreFrontID;
        v115 = v98;
        v116 = dictionary;
        v99 = date2;
        v117 = v99;
        v118 = v102;
        if (v45)
        {
          objc_setProperty_nonatomic_copy(v45, v100, v112, 432);
        }

        [handlerCopy associateChildOperation:v45];
        [(FCOperation *)v45 start];

        objc_destroyWeak(&v119);
        objc_destroyWeak(buf);
      }

      else
      {
        v58 = FCOperationLog;
        if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
        {
          v59 = v58;
          shortOperationDescription3 = [handlerCopy shortOperationDescription];
          v61 = [dictionary2 count];
          feedRequests3 = [handlerCopy feedRequests];
          v63 = [feedRequests3 count];
          *buf = 138543874;
          *&buf[4] = shortOperationDescription3;
          *&buf[12] = 2048;
          *&buf[14] = v61;
          *&buf[22] = 2048;
          v132 = v63;
          _os_log_impl(&dword_1B63EF000, v59, OS_LOG_TYPE_DEFAULT, "%{public}@ exceeded query budget, will fail remaining %lu of %lu requests", buf, 0x20u);

          v42 = handlerCopy;
        }

        v64 = MEMORY[0x1E696ABC0];
        errorUserInfo = [v42 errorUserInfo];
        v66 = [v64 fc_exceededQueryBudgetErrorWithAdditionalUserInfo:errorUserInfo];

        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        allValues = [dictionary2 allValues];
        v68 = [allValues countByEnumeratingWithState:&v120 objects:v129 count:16];
        if (v68)
        {
          v69 = *v121;
          do
          {
            for (i = 0; i != v68; ++i)
            {
              if (*v121 != v69)
              {
                objc_enumerationMutation(allValues);
              }

              v71 = *(*(&v120 + 1) + 8 * i);
              v72 = [(FCFeedRequestOperation *)handlerCopy _failureResponseForRequest:v71 error:v66];
              v73 = handlerCopy[65];
              feedID = [v71 feedID];
              [v73 setObject:v72 forKey:feedID];
            }

            v68 = [allValues countByEnumeratingWithState:&v120 objects:v129 count:16];
          }

          while (v68);
        }

        v75 = handlerCopy[65];
        allValues2 = [v75 allValues];
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __45__FCFeedRequestOperation__countOfFailedFeeds__block_invoke;
        v132 = &unk_1E7C42280;
        v133 = handlerCopy;
        [allValues2 fc_countOfObjectsPassingTest:buf];

        if (([handlerCopy options] & 0x10) == 0)
        {
          v77 = handlerCopy[60];
          if ([v77 count] >= 3)
          {
            vcvtmd_u64_f64(vcvtd_n_f64_u64([handlerCopy[60] count], 1uLL));
          }
        }

        v102[2]();
      }
    }

    else
    {
      (v102[2])(v102, 0);
    }
  }
}

- (void)operationWillFinishWithError:(id)error
{
  v157 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  selfCopy = self;
  if (errorCopy)
  {
    v4 = MEMORY[0x1E695E0F0];
    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    if (self)
    {
      resultFeedResponses = self->_resultFeedResponses;
    }

    else
    {
      resultFeedResponses = 0;
    }

    allValues = [(NSMutableDictionary *)resultFeedResponses allValues];
    array = [MEMORY[0x1E695DF70] array];
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    obj = allValues;
    v8 = [obj countByEnumeratingWithState:&v140 objects:v156 count:16];
    if (v8)
    {
      v9 = *v141;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v141 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v140 + 1) + 8 * i);
          feedItems = [v11 feedItems];
          v13 = feedItems == 0;

          if (!v13)
          {
            feedItems2 = [v11 feedItems];
            [array addObjectsFromArray:feedItems2];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v140 objects:v156 count:16];
      }

      while (v8);
    }

    v15 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      shortOperationDescription = [(FCOperation *)selfCopy shortOperationDescription];
      v18 = [array count];
      v19 = [obj count];
      *buf = 138543874;
      v147 = shortOperationDescription;
      v148 = 2048;
      v149 = v18;
      v150 = 2048;
      *v151 = v19;
      _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ gathered %lu feed items from %lu feeds", buf, 0x20u);
    }

    requestCompletionHandlerWithHeldRecords = [(FCFeedRequestOperation *)selfCopy requestCompletionHandlerWithHeldRecords];
    v21 = requestCompletionHandlerWithHeldRecords == 0;

    if (!v21)
    {
      options = [(FCFeedRequestOperation *)selfCopy options];
      if ((options & 0xE) != 0)
      {
        v23 = objc_opt_new();
        v24 = objc_opt_new();
        v114 = objc_opt_new();
        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        v25 = array;
        v26 = [v25 countByEnumeratingWithState:&v136 objects:v155 count:16];
        if (v26)
        {
          v27 = *v137;
          do
          {
            v28 = 0;
            do
            {
              if (*v137 != v27)
              {
                objc_enumerationMutation(v25);
              }

              v29 = *(*(&v136 + 1) + 8 * v28);
              if ((options & 2) != 0)
              {
                articleID = [*(*(&v136 + 1) + 8 * v28) articleID];
                if (selfCopy)
                {
                  resultHeldArticleRecords = selfCopy->_resultHeldArticleRecords;
                }

                else
                {
                  resultHeldArticleRecords = 0;
                }

                v32 = [(FCHeldRecords *)resultHeldArticleRecords recordWithID:articleID];
                v33 = v32 == 0;

                if (v33)
                {
                  [v23 addObject:articleID];
                }
              }

              if ((options & 4) != 0)
              {
                sourceChannelID = [v29 sourceChannelID];
                if (sourceChannelID)
                {
                  v35 = selfCopy ? selfCopy->_resultHeldTagRecords : 0;
                  v36 = [(FCHeldRecords *)v35 recordWithID:sourceChannelID];
                  v37 = v36 == 0;

                  if (v37)
                  {
                    [v24 addObject:sourceChannelID];
                  }
                }
              }

              if ((options & 8) != 0)
              {
                parentIssueID = [v29 parentIssueID];
                if (parentIssueID)
                {
                  v39 = selfCopy ? selfCopy->_resultHeldTagRecords : 0;
                  v40 = [(FCHeldRecords *)v39 recordWithID:parentIssueID];
                  v41 = v40 == 0;

                  if (v41)
                  {
                    [v114 addObject:parentIssueID];
                  }
                }
              }

              ++v28;
            }

            while (v26 != v28);
            v42 = [v25 countByEnumeratingWithState:&v136 objects:v155 count:16];
            v26 = v42;
          }

          while (v42);
        }

        context = [(FCFeedRequestOperation *)selfCopy context];
        internalContentContext = [context internalContentContext];

        articleRecordSource = [internalContentContext articleRecordSource];
        allObjects = [v23 allObjects];
        v47 = [articleRecordSource cachedRecordsWithIDs:allObjects];

        if (selfCopy)
        {
          v48 = selfCopy;
          v49 = selfCopy->_resultHeldArticleRecords;
        }

        else
        {
          v49 = 0;
          v48 = 0;
        }

        v50 = v48 == 0;
        v51 = v49;
        v52 = [FCHeldRecords heldRecordsByMerging:v51 with:v47];
        [(FCFeedRequestOperation *)selfCopy setResultHeldArticleRecords:v52];

        tagRecordSource = [internalContentContext tagRecordSource];
        allObjects2 = [v24 allObjects];
        v55 = [tagRecordSource cachedRecordsWithIDs:allObjects2];

        if (v50)
        {
          resultHeldTagRecords = 0;
          v56 = selfCopy;
        }

        else
        {
          v56 = selfCopy;
          resultHeldTagRecords = selfCopy->_resultHeldTagRecords;
        }

        v58 = v56 == 0;
        v59 = resultHeldTagRecords;
        v60 = [FCHeldRecords heldRecordsByMerging:v59 with:v55];
        [(FCFeedRequestOperation *)selfCopy setResultHeldTagRecords:v60];

        issueRecordSource = [internalContentContext issueRecordSource];
        allObjects3 = [v114 allObjects];
        v63 = [issueRecordSource cachedRecordsWithIDs:allObjects3];

        if (v58)
        {
          resultHeldIssueRecords = 0;
        }

        else
        {
          resultHeldIssueRecords = selfCopy->_resultHeldIssueRecords;
        }

        v65 = resultHeldIssueRecords;
        v66 = [FCHeldRecords heldRecordsByMerging:v65 with:v63];
        [(FCFeedRequestOperation *)selfCopy setResultHeldIssueRecords:v66];
      }
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v68 = v67;
    v69 = [array copy];
    v132 = 0;
    v133 = &v132;
    v134 = 0x2020000000;
    v135 = 1;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    feedTransformations = [(FCFeedRequestOperation *)selfCopy feedTransformations];
    v71 = [feedTransformations countByEnumeratingWithState:&v128 objects:v154 count:16];
    if (v71)
    {
      v72 = *v129;
      do
      {
        for (j = 0; j != v71; ++j)
        {
          if (*v129 != v72)
          {
            objc_enumerationMutation(feedTransformations);
          }

          v74 = *(*(&v128 + 1) + 8 * j);
          objc_opt_class();
          if (v74 && (objc_opt_isKindOfClass() & 1) != 0)
          {
            v75 = v74;
            v76 = [v75 transformFeedItemsWithResults:v69];
            v127[0] = MEMORY[0x1E69E9820];
            v127[1] = 3221225472;
            v127[2] = __55__FCFeedRequestOperation_operationWillFinishWithError___block_invoke;
            v127[3] = &unk_1E7C3C618;
            v127[4] = &v132;
            v77 = [v76 fc_arrayByTransformingWithBlock:v127];

            v69 = v77;
          }

          else
          {
            [v74 transformFeedItems:v69];
            v75 = 0;
            v69 = v76 = v69;
          }
        }

        v71 = [feedTransformations countByEnumeratingWithState:&v128 objects:v154 count:16];
      }

      while (v71);
    }

    if (v133[3] != 1)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v79 = v78;
      v80 = FCOperationLog;
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        shortOperationDescription2 = [(FCOperation *)selfCopy shortOperationDescription];
        v82 = [array count];
        v83 = [v69 count];
        v84 = FCFeedFilterOptionsToNSString(v133[3]);
        *buf = 138544386;
        v147 = shortOperationDescription2;
        v148 = 2048;
        v149 = v82;
        v150 = 2048;
        *v151 = v83;
        *&v151[8] = 2048;
        *&v151[10] = (fmax(v79 - v68, 0.0) * 1000.0);
        v152 = 2114;
        v153 = v84;
        _os_log_impl(&dword_1B63EF000, v80, OS_LOG_TYPE_DEFAULT, "%{public}@ filtered from %lu to %lu feed items, time=%llums, reasons=%{public}@", buf, 0x34u);
      }
    }

    v85 = v69;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v4 = v85;
    v87 = [v4 countByEnumeratingWithState:&v123 objects:v145 count:16];
    if (v87)
    {
      v88 = *v124;
      do
      {
        for (k = 0; k != v87; ++k)
        {
          if (*v124 != v88)
          {
            objc_enumerationMutation(v4);
          }

          v90 = *(*(&v123 + 1) + 8 * k);
          feedID = [v90 feedID];
          v92 = [dictionary objectForKeyedSubscript:feedID];
          v93 = v92 == 0;

          if (v93)
          {
            feedID3 = [MEMORY[0x1E695DF70] arrayWithObject:v90];
            feedID2 = [v90 feedID];
            [dictionary setObject:feedID3 forKeyedSubscript:feedID2];
          }

          else
          {
            feedID3 = [v90 feedID];
            feedID2 = [dictionary objectForKeyedSubscript:feedID3];
            [feedID2 addObject:v90];
          }
        }

        v87 = [v4 countByEnumeratingWithState:&v123 objects:v145 count:16];
      }

      while (v87);
    }

    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v5 = obj;
    v96 = [v5 countByEnumeratingWithState:&v119 objects:v144 count:16];
    if (v96)
    {
      v97 = *v120;
      do
      {
        for (m = 0; m != v96; ++m)
        {
          if (*v120 != v97)
          {
            objc_enumerationMutation(v5);
          }

          v99 = *(*(&v119 + 1) + 8 * m);
          feedID4 = [v99 feedID];
          v101 = [dictionary objectForKeyedSubscript:feedID4];
          [v99 setFeedItems:v101];
        }

        v96 = [v5 countByEnumeratingWithState:&v119 objects:v144 count:16];
      }

      while (v96);
    }

    _Block_object_dispose(&v132, 8);
    if (selfCopy)
    {
      v102 = selfCopy->_resultFeedResponses;
    }

    else
    {
      v102 = 0;
    }

    v103 = v102;
    v104 = [(NSMutableDictionary *)v103 count];
    feedRequests = [(FCFeedRequestOperation *)selfCopy feedRequests];

    LOBYTE(v104) = v104 == [feedRequests count];
    if ((v104 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v111 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"each feed request must have a corresponding response"];
      *buf = 136315906;
      v147 = "[FCFeedRequestOperation operationWillFinishWithError:]";
      v148 = 2080;
      v149 = "FCFeedRequestOperation.m";
      v150 = 1024;
      *v151 = 345;
      *&v151[4] = 2114;
      *&v151[6] = v111;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    [(FCFeedRequestOperation *)&selfCopy->super.super.super.isa _reportProgressWithFeedItems:v4];
  }

  requestCompletionHandler = [(FCFeedRequestOperation *)selfCopy requestCompletionHandler];

  if (requestCompletionHandler)
  {
    requestCompletionHandler2 = [(FCFeedRequestOperation *)selfCopy requestCompletionHandler];
    (requestCompletionHandler2)[2](requestCompletionHandler2, v5, v4, v113);
  }

  v118[0] = MEMORY[0x1E69E9820];
  v118[1] = 3221225472;
  v118[2] = __55__FCFeedRequestOperation_operationWillFinishWithError___block_invoke_52;
  v118[3] = &unk_1E7C36EC8;
  v118[4] = selfCopy;
  v108 = [MEMORY[0x1E695DF20] fc_dictionary:v118];
  requestCompletionHandlerWithHeldRecords2 = [(FCFeedRequestOperation *)selfCopy requestCompletionHandlerWithHeldRecords];

  if (requestCompletionHandlerWithHeldRecords2)
  {
    requestCompletionHandlerWithHeldRecords3 = [(FCFeedRequestOperation *)selfCopy requestCompletionHandlerWithHeldRecords];
    (requestCompletionHandlerWithHeldRecords3)[2](requestCompletionHandlerWithHeldRecords3, v5, v4, v108, v113);
  }
}

- (void)setResultHeldArticleRecords:(uint64_t)records
{
  if (records)
  {
    objc_storeStrong((records + 528), a2);
  }
}

- (void)setResultHeldTagRecords:(uint64_t)records
{
  if (records)
  {
    objc_storeStrong((records + 536), a2);
  }
}

- (void)setResultHeldIssueRecords:(uint64_t)records
{
  if (records)
  {
    objc_storeStrong((records + 544), a2);
  }
}

id __55__FCFeedRequestOperation_operationWillFinishWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) |= [v3 filteredReasons];
  if ([v3 isFiltered])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 item];
  }

  return v4;
}

- (void)_reportProgressWithFeedItems:(id *)items
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (items)
  {
    date = [MEMORY[0x1E695DF00] date];
    progressHandler = [items progressHandler];
    v6 = _Block_copy(progressHandler);

    if (v6)
    {
      v7 = _Block_copy(v6);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __55__FCFeedRequestOperation__reportProgressWithFeedItems___block_invoke_2;
      v14[3] = &unk_1E7C42320;
      v14[4] = items;
      v8 = [v3 fc_arrayOfObjectsFailingTest:v14];
      if ([v8 count])
      {
        v7[2](v7, v8);
        [items[64] addObjectsFromArray:v8];
        v9 = FCFeedDatabaseLog;
        if (os_log_type_enabled(FCFeedDatabaseLog, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v9;
          operationID = [items operationID];
          fc_millisecondTimeIntervalUntilNow = [date fc_millisecondTimeIntervalUntilNow];
          v13 = [v8 count];
          *buf = 138543874;
          v16 = operationID;
          v17 = 2048;
          v18 = fc_millisecondTimeIntervalUntilNow;
          v19 = 2048;
          v20 = v13;
          _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ took %llums to report %lu feed items via progress handler", buf, 0x20u);
        }
      }
    }
  }
}

void __55__FCFeedRequestOperation_operationWillFinishWithError___block_invoke_52(uint64_t a1, void *a2)
{
  v9 = a2;
  if (([*(a1 + 32) options] & 2) != 0)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 528);
    }

    else
    {
      v4 = 0;
    }

    [v9 setObject:v4 forKeyedSubscript:&unk_1F2E70668];
  }

  if (([*(a1 + 32) options] & 4) != 0)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 536);
    }

    else
    {
      v6 = 0;
    }

    [v9 setObject:v6 forKeyedSubscript:&unk_1F2E70680];
  }

  if (([*(a1 + 32) options] & 8) != 0)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 544);
    }

    else
    {
      v8 = 0;
    }

    [v9 setObject:v8 forKeyedSubscript:&unk_1F2E70698];
  }
}

- (unint64_t)maxRetries
{
  configuration = [(FCFeedRequestOperation *)self configuration];
  maxRetriesForDroppedFeeds = [configuration maxRetriesForDroppedFeeds];

  return maxRetriesForDroppedFeeds;
}

- (BOOL)canRetryWithError:(id)error retryAfter:(id *)after
{
  errorCopy = error;
  v13.receiver = self;
  v13.super_class = FCFeedRequestOperation;
  if ([(FCOperation *)&v13 canRetryWithError:errorCopy retryAfter:after])
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    domain = [errorCopy domain];
    v7 = [domain isEqualToString:@"FCErrorDomain"];
    if (v7)
    {
      code = [errorCopy code];

      if (code != 2)
      {
        LOBYTE(v7) = 0;
        goto LABEL_8;
      }

      v10 = [FCOperationDelayedRetrySignal alloc];
      domain = [(FCFeedRequestOperation *)self configuration];
      [domain delayBeforeRetryingDroppedFeeds];
      *after = [(FCOperationDelayedRetrySignal *)v10 initWithDelay:exp2(v11 * [(FCOperation *)self retryCount])];
    }
  }

LABEL_8:

  return v7;
}

- (void)resetForRetry
{
  if (self)
  {
    [(NSMutableDictionary *)self->_resultFeedResponses removeAllObjects];
    objc_storeStrong(&self->_resultHeldTagRecords, 0);
    objc_storeStrong(&self->_resultHeldArticleRecords, 0);
    objc_storeStrong(&self->_resultHeldIssueRecords, 0);
    self->_queryBudget = 10;
  }

  else
  {

    [0 removeAllObjects];
  }
}

- (NSArray)networkEvents
{
  if (self)
  {
    self = self->_mutableNetworkEvents;
  }

  return self;
}

uint64_t __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ has no prewarm request key", &v7, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke_69(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 successfulRequests];
  if ([v4 count])
  {
  }

  else
  {
    v5 = [v3 failedRequests];
    v6 = [v5 count];

    if (!v6)
    {
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke_2;
      v42[3] = &unk_1E7C37BC0;
      v35 = *(a1 + 40);
      v42[4] = *(a1 + 32);
      v43 = v35;
      __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke_2(v42);
      v18 = v43;
      goto LABEL_21;
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = v7[59];
  }

  v8 = v7;
  v9 = [v3 networkEvents];
  [v8 fc_safelyAddObjectsFromArray:v9];

  v10 = *(a1 + 32);
  if (v10)
  {
    v10 = v10[60];
  }

  v11 = v10;
  v12 = [v3 feedIDs];
  v13 = 2 * [v11 fc_countOfObjectsIntersectingSet:v12];
  v14 = *(a1 + 32);
  if (v14)
  {
    v15 = *(v14 + 480);
  }

  else
  {
    v15 = 0;
  }

  v16 = [v15 count];

  if (v13 < v16)
  {
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke_70;
    v40[3] = &unk_1E7C37BC0;
    v17 = *(a1 + 40);
    v40[4] = *(a1 + 32);
    v41 = v17;
    __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke_70(v40);
    v18 = v41;
LABEL_21:

    goto LABEL_22;
  }

  v19 = [v3 successfulRequests];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke_71;
  v39[3] = &unk_1E7C39890;
  v39[4] = *(a1 + 32);
  v20 = [v19 fc_countOfObjectsPassingTest:v39];

  v21 = [v3 failedRequests];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke_2_73;
  v38[3] = &unk_1E7C39890;
  v38[4] = *(a1 + 32);
  v22 = [v21 fc_countOfObjectsPassingTest:v38];

  if (v20 >= 10 * v22)
  {
    v27 = [v3 successfulRequests];
    v28 = [v27 fc_dictionaryWithKeyBlock:&__block_literal_global_76];

    v29 = [*(a1 + 32) feedRequests];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke_4;
    v36[3] = &unk_1E7C421B8;
    v25 = v28;
    v37 = v25;
    v30 = [v29 fc_arrayByTransformingWithBlock:v36];
    [*(a1 + 32) setFeedRequests:v30];

    [*(a1 + 32) setEdgeCacheHint:0];
    v31 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(a1 + 32);
      v33 = v31;
      v34 = [v32 shortOperationDescription];
      *buf = 138543362;
      v45 = v34;
      _os_log_impl(&dword_1B63EF000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ prewarming finished with enough successful feeds", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v23 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(a1 + 32);
    v25 = v23;
    v26 = [v24 shortOperationDescription];
    *buf = 138543362;
    v45 = v26;
    _os_log_impl(&dword_1B63EF000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ prewarming finished without enough successful feeds", buf, 0xCu);

LABEL_18:
  }

  (*(*(a1 + 40) + 16))();
LABEL_22:
}

uint64_t __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke_2(uint64_t a1)
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
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ found no matching prewarm request", &v7, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke_70(uint64_t a1)
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
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ had insufficient overlap with prewarm request", &v7, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke_71(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = v3[60];
  }

  v4 = v3;
  v5 = [a2 feedID];
  v6 = [v4 containsObject:v5];

  return v6;
}

uint64_t __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke_2_73(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = v3[60];
  }

  v4 = v3;
  v5 = [a2 feedID];
  v6 = [v4 containsObject:v5];

  return v6;
}

id __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 feedID];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = v6;
    v8 = [v3 copy];
    v9 = [v3 feedRange];
    v10 = [v7 feedRange];

    v11 = [v9 feedRangeByIntersectingWithRange:v10];
    [v8 setFeedRange:v11];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __76__FCFeedRequestOperation__gatherAllOrderFeedResponsesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 feedID];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 520);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 objectForKey:v3];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(v8 + 496);
    }

    else
    {
      v9 = 0;
    }

    v7 = [v9 objectForKey:v3];
  }

  return v7;
}

- (FCFeedResponse)_failureResponseForRequest:(void *)request error:
{
  if (self)
  {
    requestCopy = request;
    v5 = a2;
    v6 = objc_alloc_init(FCFeedResponse);
    feedID = [v5 feedID];

    [(FCFeedResponse *)v6 setFeedID:feedID];
    [(FCFeedResponse *)v6 setError:requestCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_additionalHTTPHeadersForOrderFeedRequest
{
  v10[1] = *MEMORY[0x1E69E9840];
  lastObject = [*(self + 472) lastObject];
  v2 = lastObject;
  if (lastObject)
  {
    hTTPResponseHeaders = [lastObject HTTPResponseHeaders];
    v4 = [hTTPResponseHeaders objectForKeyedSubscript:@"X-Apple-News-Retry"];

    if (v4)
    {
      v9 = @"X-Apple-News-Retry";
      v10[0] = v4;
      v5 = MEMORY[0x1E695DF20];
      v6 = v4;
      v7 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];
    }

    else
    {
      v7 = MEMORY[0x1E695E0F8];
    }
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  return v7;
}

void __76__FCFeedRequestOperation__gatherAllOrderFeedResponsesWithCompletionHandler___block_invoke_86(uint64_t a1, void *a2, void *a3)
{
  v132 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v98 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = v6[59];
  }

  v7 = v6;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v9 = [(FCCKBatchedOrderFeedQueryOperation *)WeakRetained networkEvents];
  [v7 addObjectsFromArray:v9];

  if (!v98)
  {
    if (([*(a1 + 32) options] & 2) != 0)
    {
      v11 = [*(a1 + 40) articleRecordSource];
      if (v5)
      {
        v12 = v5[1];
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      v14 = [v11 saveArticleRecords:v13];

      v15 = *(a1 + 32);
      if (v15)
      {
        v15 = v15[66];
      }

      v16 = v15;
      v17 = [FCHeldRecords heldRecordsByMerging:v16 with:v14];
      [(FCFeedRequestOperation *)*(a1 + 32) setResultHeldArticleRecords:v17];
    }

    if (([*(a1 + 32) options] & 4) != 0)
    {
      v18 = [*(a1 + 40) tagRecordSource];
      if (v5)
      {
        v19 = v5[3];
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;
      v21 = [v18 saveTagRecords:v20];

      v22 = *(a1 + 32);
      if (v22)
      {
        v22 = v22[67];
      }

      v23 = v22;
      v24 = [FCHeldRecords heldRecordsByMerging:v23 with:v21];
      [(FCFeedRequestOperation *)*(a1 + 32) setResultHeldTagRecords:v24];
    }

    if (([*(a1 + 32) options] & 8) != 0)
    {
      v25 = [*(a1 + 40) issueRecordSource];
      if (v5)
      {
        v26 = v5[4];
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;
      v28 = [v25 saveRecords:v27];

      v29 = *(a1 + 32);
      if (v29)
      {
        v29 = v29[68];
      }

      v30 = v29;
      v31 = [FCHeldRecords heldRecordsByMerging:v30 with:v28];
      [(FCFeedRequestOperation *)*(a1 + 32) setResultHeldIssueRecords:v31];
    }

    v97 = [MEMORY[0x1E695DF00] date];
    v100 = [MEMORY[0x1E695DF70] array];
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    if (v5)
    {
      v32 = v5[2];
    }

    else
    {
      v32 = 0;
    }

    v96 = v5;
    obj = v32;
    v102 = [obj countByEnumeratingWithState:&v112 objects:v131 count:16];
    v33 = 0;
    if (v102)
    {
      v101 = *v113;
      do
      {
        v34 = 0;
        do
        {
          if (*v113 != v101)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v112 + 1) + 8 * v34);
          v36 = *(a1 + 48);
          if (v35)
          {
            v37 = *(v35 + 16);
          }

          else
          {
            v37 = 0;
          }

          v38 = v37;
          v39 = [v36 objectForKey:v38];

          v40 = [v39 feedID];
          if (v35)
          {
            v41 = *(v35 + 24);
          }

          else
          {
            v41 = 0;
          }

          v42 = v41;
          v108[0] = MEMORY[0x1E69E9820];
          v108[1] = 3221225472;
          v108[2] = __76__FCFeedRequestOperation__gatherAllOrderFeedResponsesWithCompletionHandler___block_invoke_3;
          v108[3] = &unk_1E7C42208;
          v43 = *(a1 + 56);
          v44 = *(a1 + 32);
          v109 = v43;
          v110 = v44;
          v45 = v40;
          v111 = v45;
          v46 = [v42 fc_arrayByTransformingWithBlock:v108];

          if (!v35 || *(v35 + 10) != 1 || [v46 count])
          {
            v103 = v33 + 1;
            v47 = [*(a1 + 32) feedDatabase];
            v48 = [v39 feedID];
            v49 = *(a1 + 64);
            v50 = [v39 feedID];
            v51 = [v49 objectForKey:v50];
            v52 = *(a1 + 72);
            if (!v35)
            {
              LOBYTE(v95) = 0;
              [v47 saveFeedItems:v46 forFeedID:v48 insertionToken:v51 requestDate:v52 reachedToOrder:0 extent:0 reachedEnd:v95];

              v61 = [v39 feedRange];
              v57 = FCFeedItemsCoveredByRange(v46, v61);

              [v100 addObjectsFromArray:v57];
              v33 = v103;
              goto LABEL_43;
            }

            LOBYTE(v95) = *(v35 + 8);
            [v47 saveFeedItems:v46 forFeedID:v48 insertionToken:v51 requestDate:v52 reachedToOrder:*(v35 + 9) extent:*(v35 + 32) reachedEnd:v95];

            v53 = [v39 feedRange];
            v54 = FCFeedItemsCoveredByRange(v46, v53);

            [v100 addObjectsFromArray:v54];
            v33 = v103;
          }

          if (*(v35 + 10) != 1)
          {
            goto LABEL_44;
          }

          v55 = *(a1 + 32);
          v56 = [MEMORY[0x1E696ABC0] fc_feedDroppedError];
          v57 = [(FCFeedRequestOperation *)v55 _failureResponseForRequest:v39 error:v56];

          v58 = *(a1 + 32);
          if (v58)
          {
            v58 = v58[65];
          }

          v59 = v58;
          v60 = [v39 feedID];
          [v59 setObject:v57 forKey:v60];

LABEL_43:
LABEL_44:

          ++v34;
        }

        while (v102 != v34);
        v62 = [obj countByEnumeratingWithState:&v112 objects:v131 count:16];
        v102 = v62;
      }

      while (v62);
    }

    v63 = FCFeedDatabaseLog;
    v5 = v96;
    if (os_log_type_enabled(FCFeedDatabaseLog, OS_LOG_TYPE_DEFAULT))
    {
      v64 = a1;
      v65 = *(a1 + 32);
      v66 = v63;
      v67 = [v65 operationID];
      v68 = [v97 fc_millisecondTimeIntervalUntilNow];
      v69 = v33;
      if (v96)
      {
        v70 = v96[1];
      }

      else
      {
        v70 = 0;
      }

      v71 = v70;
      v72 = [v71 count];
      *buf = 138544130;
      v124 = v67;
      v125 = 2048;
      v126 = v68;
      v127 = 2048;
      v128 = v69;
      v129 = 2048;
      v130 = v72;
      _os_log_impl(&dword_1B63EF000, v66, OS_LOG_TYPE_DEFAULT, "%{public}@ took %llums to save %lu feeds and %lu feed items in the database", buf, 0x2Au);

      a1 = v64;
    }

    [(FCFeedRequestOperation *)*(a1 + 32) _reportProgressWithFeedItems:v100];
    v73 = [(FCFeedRequestOperation *)*(a1 + 32) _countOfDroppedFeeds];
    v74 = v73;
    v75 = *(a1 + 32);
    if (v75)
    {
      if (([*(a1 + 32) options] & 0x10) != 0)
      {
        v79 = *(a1 + 32);
      }

      else
      {
        v76 = [v75 retryCount];
        if (v76 != [v75 maxRetries] || (v77 = 0.5, objc_msgSend(v75[60], "count") <= 2))
        {
          v77 = 0.1;
        }

        v78 = [v75[60] count];
        v79 = *(a1 + 32);
        if (v74 > vcvtmd_u64_f64(v77 * v78))
        {
          v80 = *(a1 + 80);
          v81 = MEMORY[0x1E696ABC0];
          if (v79)
          {
            v79 = v79[60];
          }

          goto LABEL_62;
        }
      }

      if (v79)
      {
        v79 = v79[65];
      }
    }

    else
    {
      v79 = 0;
      if (v73)
      {
        v80 = *(a1 + 80);
        v81 = MEMORY[0x1E696ABC0];
        v5 = v96;
LABEL_62:
        v82 = v79;
        v83 = [v81 fc_requestDroppedErrorForDroppedFeeds:v74 totalFeeds:{objc_msgSend(v82, "count")}];
        (*(v80 + 16))(v80, v83);

LABEL_80:
        v10 = 0;
        goto LABEL_81;
      }

      v5 = v96;
    }

    v84 = v79;
    v85 = [v84 count];
    v86 = [*(a1 + 32) feedRequests];

    v87 = [v86 count];
    if (v85 == v87)
    {
      (*(*(a1 + 80) + 16))();
    }

    else
    {
      if (([*(a1 + 32) options] & 0x10) != 0)
      {
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v88 = *(a1 + 32);
        if (v88)
        {
          v89 = *(v88 + 496);
        }

        else
        {
          v89 = 0;
        }

        v90 = [v89 allValues];
        v91 = [v90 countByEnumeratingWithState:&v104 objects:v122 count:16];
        if (v91)
        {
          v92 = v91;
          v93 = *v105;
          do
          {
            for (i = 0; i != v92; ++i)
            {
              if (*v105 != v93)
              {
                objc_enumerationMutation(v90);
              }

              [*(*(&v104 + 1) + 8 * i) setCachedOnly:1];
            }

            v92 = [v90 countByEnumeratingWithState:&v104 objects:v122 count:16];
          }

          while (v92);
        }
      }

      [(FCFeedRequestOperation *)*(a1 + 32) _gatherAllOrderFeedResponsesWithCompletionHandler:?];
    }

    goto LABEL_80;
  }

  v116 = MEMORY[0x1E69E9820];
  v117 = 3221225472;
  v118 = __76__FCFeedRequestOperation__gatherAllOrderFeedResponsesWithCompletionHandler___block_invoke_2;
  v119 = &unk_1E7C36C58;
  v120 = *(a1 + 32);
  v10 = v98;
  v121 = v98;
  [v120 finishedPerformingOperationWithError:v121];

LABEL_81:
}

id __76__FCFeedRequestOperation__gatherAllOrderFeedResponsesWithCompletionHandler___block_invoke_3(void *a1, void *a2)
{
  v3 = MEMORY[0x1E69B6E30];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2;
  v7 = [v5 context];
  v8 = [v7 internalContentContext];
  v9 = [v8 articleRecordSource];
  v10 = [v3 feedItemFromCKRecord:v6 storefrontID:v4 recordSource:v9];

  [v10 setFeedID:a1[6]];

  return v10;
}

- (id)_countOfDroppedFeeds
{
  selfCopy = self;
  if (self)
  {
    v2 = self[65];
    allValues = [v2 allValues];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __46__FCFeedRequestOperation__countOfDroppedFeeds__block_invoke;
    v5[3] = &unk_1E7C42280;
    v5[4] = selfCopy;
    selfCopy = [allValues fc_countOfObjectsPassingTest:v5];
  }

  return selfCopy;
}

FCCKOrderFeedRequest *__78__FCFeedRequestOperation__gatherEdgeCachedFeedResponsesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 feedRange];
  v5 = v4;
  if (*(a1 + 32))
  {
    v6 = v4;
    v7 = [v6 top];
    v8 = [v7 date];

    v9 = [v6 bottom];

    v10 = [v9 date];

    v11 = [MEMORY[0x1E695DEE8] currentCalendar];
    v12 = [v11 components:62 fromDate:v8];
    [v12 setHour:{objc_msgSend(v12, "hour") + 1}];
    v13 = [v11 dateFromComponents:v12];
    v14 = [v11 components:62 fromDate:v10];
    v15 = [v11 dateFromComponents:v14];
    v16 = [FCFeedRange feedRangeFromDate:v13 toDate:v15];
  }

  else
  {
    v16 = 0;
  }

  v17 = objc_alloc_init(FCCKOrderFeedRequest);
  v19 = [v3 feedID];
  if (v17)
  {
    objc_setProperty_nonatomic_copy(v17, v18, v19, 8);
  }

  v20 = [v16 top];
  v21 = [v20 order];
  if (v17)
  {
    v17->_maxOrder = v21;
  }

  v22 = [v16 bottom];
  v23 = [v22 order];
  if (v17)
  {
    v17->_minOrder = v23;
  }

  v24 = [v3 maxCount];
  if (v17)
  {
    v25 = 0xFFFFLL;
    if (v24 >= 0xFFFF)
    {
      v26 = 0xFFFFLL;
    }

    else
    {
      v26 = v24;
    }

    if (v24)
    {
      v25 = v26;
    }

    v17->_resultsLimit = v25;
  }

  return v17;
}

void __78__FCFeedRequestOperation__gatherEdgeCachedFeedResponsesWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v101 = *MEMORY[0x1E69E9840];
  v83 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = v6[59];
  }

  v7 = v6;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = *(WeakRetained + 54);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  [v7 addObjectsFromArray:v11];

  if (v5)
  {
    v93 = MEMORY[0x1E69E9820];
    v94 = 3221225472;
    v95 = __78__FCFeedRequestOperation__gatherEdgeCachedFeedResponsesWithCompletionHandler___block_invoke_3;
    v96 = &unk_1E7C36C58;
    v97 = *(a1 + 32);
    v98 = v5;
    [v97 finishedPerformingOperationWithError:v98];

    v12 = v5;
    v13 = v83;
    goto LABEL_70;
  }

  v14 = v83;
  if (([*(a1 + 32) options] & 2) != 0)
  {
    v15 = [*(a1 + 40) articleRecordSource];
    if (v83)
    {
      v16 = v83[1];
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v18 = [v15 saveArticleRecords:v17];

    v19 = *(a1 + 32);
    if (v19)
    {
      v19 = v19[66];
    }

    v20 = v19;
    v21 = [FCHeldRecords heldRecordsByMerging:v20 with:v18];
    [(FCFeedRequestOperation *)*(a1 + 32) setResultHeldArticleRecords:v21];

    v14 = v83;
  }

  if (([*(a1 + 32) options] & 4) != 0)
  {
    v22 = [*(a1 + 40) tagRecordSource];
    if (v14)
    {
      v23 = v14[3];
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;
    v25 = [v22 saveTagRecords:v24];

    v26 = *(a1 + 32);
    if (v26)
    {
      v26 = v26[67];
    }

    v27 = v26;
    v28 = [FCHeldRecords heldRecordsByMerging:v27 with:v25];
    [(FCFeedRequestOperation *)*(a1 + 32) setResultHeldTagRecords:v28];

    v14 = v83;
  }

  if (([*(a1 + 32) options] & 8) != 0)
  {
    v29 = [*(a1 + 40) issueRecordSource];
    if (v14)
    {
      v30 = v14[4];
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;
    v32 = [v29 saveRecords:v31];

    v33 = *(a1 + 32);
    if (v33)
    {
      v33 = v33[68];
    }

    v34 = v33;
    v35 = [FCHeldRecords heldRecordsByMerging:v34 with:v32];
    [(FCFeedRequestOperation *)*(a1 + 32) setResultHeldIssueRecords:v35];

    v14 = v83;
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  if (v14)
  {
    v36 = v14[2];
  }

  else
  {
    v36 = 0;
  }

  obj = v36;
  v37 = [obj countByEnumeratingWithState:&v89 objects:v100 count:16];
  if (v37)
  {
    v38 = v37;
    v85 = *v90;
    do
    {
      v39 = 0;
      do
      {
        if (*v90 != v85)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v89 + 1) + 8 * v39);
        v41 = *(a1 + 32);
        if (v41)
        {
          v41 = v41[61];
        }

        v42 = v41;
        if (v40)
        {
          v43 = *(v40 + 16);
        }

        else
        {
          v43 = 0;
        }

        v44 = v43;
        v45 = [v42 objectForKey:v44];

        v46 = [v45 feedRange];
        if (!v40)
        {
          v61 = 0;
          goto LABEL_49;
        }

        if (*(v40 + 10) != 1)
        {
          goto LABEL_48;
        }

        v47 = *(a1 + 32);
        v48 = v40;
        v49 = v48;
        if (v47 && (v50 = v48[3], v51 = [v50 count], v50, v51))
        {
          v52 = [MEMORY[0x1E696ABC0] fc_requestDroppedErrorForDroppedFeeds:1 totalFeeds:{objc_msgSend(v47[60], "count")}];
          v53 = [v47 retryCount];
          if (v53 >= [v47 maxRetries])
          {

LABEL_48:
            v61 = *(v40 + 24);
LABEL_49:
            v62 = v61;
            v86[0] = MEMORY[0x1E69E9820];
            v86[1] = 3221225472;
            v86[2] = __78__FCFeedRequestOperation__gatherEdgeCachedFeedResponsesWithCompletionHandler___block_invoke_4;
            v86[3] = &unk_1E7C39840;
            v63 = *(a1 + 48);
            v64 = *(a1 + 32);
            v87 = v63;
            v88 = v64;
            v65 = [v62 fc_arrayByTransformingWithBlock:v86];

            v66 = FCFeedItemsCoveredByRange(v65, v46);
            v67 = objc_alloc_init(FCFeedResponse);
            v68 = [v45 feedID];
            [(FCFeedResponse *)v67 setFeedID:v68];

            [(FCFeedResponse *)v67 setFeedItems:v66];
            if (v40)
            {
              if (*(v40 + 9))
              {
                v69 = 1;
              }

              else
              {
                v69 = *(v40 + 8);
              }
            }

            else
            {
              v69 = 0;
            }

            [(FCFeedResponse *)v67 setExhaustedRequestRange:v69 & 1];
            v70 = *(a1 + 32);
            if (v70)
            {
              v70 = v70[65];
            }

            v71 = v70;
            v72 = [v45 feedID];
            [v71 setObject:v67 forKey:v72];

            v57 = v87;
            goto LABEL_56;
          }

          v99 = 0;
          v54 = [v47 canRetryWithError:v52 retryAfter:&v99];

          if ((v54 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
        }

        v55 = *(a1 + 32);
        v56 = [MEMORY[0x1E696ABC0] fc_feedDroppedError];
        v57 = [(FCFeedRequestOperation *)v55 _failureResponseForRequest:v45 error:v56];

        v58 = *(a1 + 32);
        if (v58)
        {
          v58 = v58[65];
        }

        v59 = v58;
        v60 = [v45 feedID];
        [v59 setObject:v57 forKey:v60];

LABEL_56:
        ++v39;
      }

      while (v38 != v39);
      v73 = [obj countByEnumeratingWithState:&v89 objects:v100 count:16];
      v38 = v73;
    }

    while (v73);
  }

  v74 = [(FCFeedRequestOperation *)*(a1 + 32) _countOfDroppedFeeds];
  v75 = *(a1 + 32);
  if (v75)
  {
    v76 = *(v75 + 480);
  }

  else
  {
    v76 = 0;
  }

  v77 = [v76 count];
  v78 = *(a1 + 56);
  if (v74 >= v77)
  {
    v79 = MEMORY[0x1E696ABC0];
    v80 = *(a1 + 32);
    if (v80)
    {
      v80 = v80[60];
    }

    v81 = v80;
    v82 = [v79 fc_requestDroppedErrorForDroppedFeeds:1 totalFeeds:{objc_msgSend(v81, "count")}];
    (*(v78 + 16))(v78, v82);
  }

  else
  {
    (*(v78 + 16))(*(a1 + 56), 0);
  }

  v12 = 0;
  v13 = v83;
LABEL_70:
}

id __78__FCFeedRequestOperation__gatherEdgeCachedFeedResponsesWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69B6E30];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 context];
  v7 = [v6 internalContentContext];
  v8 = [v7 articleRecordSource];
  v9 = [v2 feedItemFromCKRecord:v5 storefrontID:v3 recordSource:v8];

  return v9;
}

BOOL __46__FCFeedRequestOperation__countOfDroppedFeeds__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[60];
  }

  v5 = v4;
  v6 = [v3 feedID];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = [v3 error];
    if (v8)
    {
      v9 = [v3 error];
      v10 = [v9 domain];
      if ([v10 isEqualToString:@"FCErrorDomain"])
      {
        v11 = [v3 error];
        v12 = [v11 code] == 7;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

BOOL __45__FCFeedRequestOperation__countOfFailedFeeds__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[60];
  }

  v5 = v4;
  v6 = [v3 feedID];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = [v3 error];
    v9 = v8 != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __55__FCFeedRequestOperation__reportProgressWithFeedItems___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 512);
  }

  else
  {
    v3 = 0;
  }

  return [v3 containsObject:a2];
}

+ (void)streamFeedItemsWithContext:(id)context feedRequests:(id)requests feedItemHandler:(id)handler networkEventHandler:(id)eventHandler completionHandler:(id)completionHandler
{
  v65 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlerCopy = handler;
  eventHandlerCopy = eventHandler;
  completionHandlerCopy = completionHandler;
  requestsCopy = requests;
  v15 = [requestsCopy fc_subarrayWithMaxCount:400];
  v16 = [requestsCopy fc_subarrayFromCount:400];

  v17 = [v16 count];
  v18 = FCOperationLog;
  v19 = os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_7;
    }

    v20 = v18;
    *buf = 134218240;
    v62 = [v15 count];
    v63 = 2048;
    v64 = [v16 count];
    v21 = "FCFeedRequestOperation will stream %lu feed requests, leaving %lu for a subsequent pass due to request limit";
    v22 = v20;
    v23 = 22;
  }

  else
  {
    if (!v19)
    {
      goto LABEL_7;
    }

    v20 = v18;
    *buf = 134217984;
    v62 = [v15 count];
    v21 = "FCFeedRequestOperation will stream %lu feed requests";
    v22 = v20;
    v23 = 12;
  }

  _os_log_impl(&dword_1B63EF000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);

LABEL_7:
  v46 = [v15 fc_arrayByTransformingWithBlock:&__block_literal_global_263];
  v24 = MEMORY[0x1E69B6E30];
  internalContentContext = [contextCopy internalContentContext];
  [internalContentContext articleRecordSource];
  v26 = v47 = v15;
  v43 = [v24 keysForFeedItemAndArticleRecordWithRecordSource:v26];

  v27 = FCCurrentQoS();
  v28 = 100;
  v29 = 200;
  if (v27 == 33)
  {
    v29 = 300;
  }

  if (v27 == 25)
  {
    v29 = 300;
  }

  if (v27 != 9)
  {
    v28 = v29;
  }

  v42 = v28;
  contentStoreFrontID = [contextCopy contentStoreFrontID];
  internalContentContext2 = [contextCopy internalContentContext];
  articleRecordSource = [internalContentContext2 articleRecordSource];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __131__FCFeedRequestOperation_Streaming__streamFeedItemsWithContext_feedRequests_feedItemHandler_networkEventHandler_completionHandler___block_invoke_2;
  aBlock[3] = &unk_1E7C422A8;
  v58 = contentStoreFrontID;
  v59 = articleRecordSource;
  v33 = handlerCopy;
  v60 = v33;
  v45 = articleRecordSource;
  v44 = contentStoreFrontID;
  v34 = _Block_copy(aBlock);
  internalContentContext3 = [contextCopy internalContentContext];
  contentDatabase = [internalContentContext3 contentDatabase];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __131__FCFeedRequestOperation_Streaming__streamFeedItemsWithContext_feedRequests_feedItemHandler_networkEventHandler_completionHandler___block_invoke_3;
  v50[3] = &unk_1E7C422F8;
  v51 = v16;
  v52 = contextCopy;
  v53 = completionHandlerCopy;
  v54 = v33;
  v55 = eventHandlerCopy;
  selfCopy = self;
  v37 = eventHandlerCopy;
  v38 = v33;
  v39 = contextCopy;
  v40 = v16;
  v41 = completionHandlerCopy;
  [FCCKOrderFeedQueryOperation streamRecordsWithDatabase:contentDatabase feedRequests:v46 desiredKeys:v43 resultsLimit:4000 queryPriority:v42 articleLinkKeys:MEMORY[0x1E695E0F0] recordHandler:v34 networkEventHandler:v37 completionHandler:v50];
}

void *__131__FCFeedRequestOperation_Streaming__streamFeedItemsWithContext_feedRequests_feedItemHandler_networkEventHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 feedID];
  v4 = [v2 feedRange];
  v5 = [FCCKOrderFeedUtilities orderFeedRequestForFeedID:v3 feedRange:v4];

  v6 = [v2 maxCount];
  if (v5)
  {
    v7 = 0xFFFFLL;
    if (v6 >= 0xFFFF)
    {
      v8 = 0xFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v6)
    {
      v7 = v8;
    }

    v5[4] = v7;
  }

  return v5;
}

void __131__FCFeedRequestOperation_Streaming__streamFeedItemsWithContext_feedRequests_feedItemHandler_networkEventHandler_completionHandler___block_invoke_2(void *a1, void *a2)
{
  v7 = a2;
  v3 = MEMORY[0x1E69B6E30];
  v4 = [v7 recordType];
  LODWORD(v3) = [v3 canCreateFromCKRecordType:v4];

  v5 = v7;
  if (v3)
  {
    v6 = [MEMORY[0x1E69B6E30] feedItemFromCKRecord:v7 storefrontID:a1[4] recordSource:a1[5]];
    if (v6)
    {
      (*(a1[6] + 16))();
    }

    v5 = v7;
  }
}

void __131__FCFeedRequestOperation_Streaming__streamFeedItemsWithContext_feedRequests_feedItemHandler_networkEventHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = *(a1 + 48);
    v12 = v3;
    v13[2](v13, v12);

    v4 = v13;
  }

  else
  {
    if (![*(a1 + 32) count])
    {
      (*(*(a1 + 48) + 16))();
      goto LABEL_6;
    }

    v6 = MEMORY[0x1E69E9820];
    v5 = *(a1 + 72);
    v7 = *(a1 + 40);
    v8 = *(a1 + 32);
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    v11 = *(a1 + 48);
    [v5 streamFeedItemsWithContext:v7 feedRequests:v8 feedItemHandler:v9 networkEventHandler:v10 completionHandler:{v11, v6, 3221225472, __131__FCFeedRequestOperation_Streaming__streamFeedItemsWithContext_feedRequests_feedItemHandler_networkEventHandler_completionHandler___block_invoke_5, &unk_1E7C422D0}];

    v4 = v7;
  }

LABEL_6:
}

@end