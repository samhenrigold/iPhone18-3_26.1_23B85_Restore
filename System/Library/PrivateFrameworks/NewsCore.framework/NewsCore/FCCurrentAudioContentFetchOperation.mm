@interface FCCurrentAudioContentFetchOperation
- (BOOL)validateOperation;
- (FCCurrentAudioContentFetchOperation)init;
- (FCCurrentAudioContentFetchOperation)initWithContext:(id)context;
- (id)_promiseConfiguration;
- (id)_promiseContentWithConfiguration:(id)configuration;
- (id)_promisePlaceholderContentWithConfiguration:(id)configuration;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FCCurrentAudioContentFetchOperation

- (FCCurrentAudioContentFetchOperation)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCCurrentAudioContentFetchOperation init]";
    v10 = 2080;
    v11 = "FCCurrentAudioContentFetchOperation.m";
    v12 = 1024;
    v13 = 54;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCCurrentAudioContentFetchOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCCurrentAudioContentFetchOperation)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = FCCurrentAudioContentFetchOperation;
  v6 = [(FCOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

- (BOOL)validateOperation
{
  v13 = *MEMORY[0x1E69E9840];
  if (self && self->_context)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"current magazine content fetch operation requires a context"];
      v5 = 136315906;
      v6 = "[FCCurrentAudioContentFetchOperation validateOperation]";
      v7 = 2080;
      v8 = "FCCurrentAudioContentFetchOperation.m";
      v9 = 1024;
      v10 = 73;
      v11 = 2114;
      v12 = v3;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v5, 0x26u);

      LOBYTE(v2) = 0;
    }
  }

  return v2;
}

- (void)performOperation
{
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__FCCurrentAudioContentFetchOperation_performOperation__block_invoke;
  v13[3] = &unk_1E7C396C0;
  v13[4] = self;
  v3 = [MEMORY[0x1E69B68F8] firstly:v13];
  v4 = zalgo();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__FCCurrentAudioContentFetchOperation_performOperation__block_invoke_2;
  v12[3] = &unk_1E7C3B298;
  v12[4] = self;
  v5 = [v3 thenOn:v4 then:v12];
  v6 = zalgo();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__FCCurrentAudioContentFetchOperation_performOperation__block_invoke_3;
  v11[3] = &unk_1E7C3B6F0;
  v11[4] = self;
  v7 = [v5 thenOn:v6 then:v11];
  v8 = zalgo();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__FCCurrentAudioContentFetchOperation_performOperation__block_invoke_4;
  v10[3] = &unk_1E7C36E50;
  v10[4] = self;
  v9 = [v7 errorOn:v8 error:v10];
}

id __55__FCCurrentAudioContentFetchOperation_performOperation__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = NewsCoreUserDefaults();
  v5 = [v4 BOOLForKey:@"audio_config_enabled"];

  v6 = *(a1 + 32);
  if (v5)
  {
    [v6 _promiseContentWithConfiguration:v3];
  }

  else
  {
    [v6 _promisePlaceholderContentWithConfiguration:v3];
  }
  v7 = ;

  return v7;
}

uint64_t __55__FCCurrentAudioContentFetchOperation_performOperation__block_invoke_3(uint64_t a1, char *newValue)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_setProperty_nonatomic_copy(v3, newValue, newValue, 384);
    v3 = *(a1 + 32);
  }

  [v3 finishedPerformingOperationWithError:0];
  return 0;
}

- (void)operationWillFinishWithError:(id)error
{
  v30 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (!errorCopy)
  {
    v5 = FCOperationLog;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
LABEL_10:

      goto LABEL_11;
    }

    shortOperationDescription = [(FCOperation *)self shortOperationDescription];
    if (self)
    {
      v7 = self->_resultCurrentContent;
      v8 = v7;
      if (v7)
      {
        recentHeadlines = v7->_recentHeadlines;
        goto LABEL_6;
      }
    }

    else
    {
      v8 = 0;
    }

    recentHeadlines = 0;
LABEL_6:
    v10 = recentHeadlines;
    v11 = [(NSArray *)v10 count];
    if (self)
    {
      v12 = self->_resultCurrentContent;
      v13 = v12;
      if (v12)
      {
        featuredHeadlines = v12->_featuredHeadlines;
LABEL_9:
        v15 = featuredHeadlines;
        v24 = 138543874;
        v25 = shortOperationDescription;
        v26 = 2048;
        v27 = v11;
        v28 = 2048;
        v29 = [(NSArray *)v15 count];
        _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ finished with %lu recent headlines, %lu featured headlines", &v24, 0x20u);

        goto LABEL_10;
      }
    }

    else
    {
      v13 = 0;
    }

    featuredHeadlines = 0;
    goto LABEL_9;
  }

LABEL_11:
  fetchCompletionHandler = [(FCCurrentAudioContentFetchOperation *)self fetchCompletionHandler];

  if (fetchCompletionHandler)
  {
    fetchCompletionHandler2 = [(FCCurrentAudioContentFetchOperation *)self fetchCompletionHandler];
    if (self)
    {
      v18 = self->_resultCurrentContent;
      v19 = v18;
      if (v18)
      {
        v20 = v18->_recentHeadlines;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;
      v22 = self->_resultCurrentContent;
      self = v22;
      if (v22)
      {
        v23 = v22->_featuredHeadlines;
LABEL_17:
        (fetchCompletionHandler2)[2](fetchCompletionHandler2, v21, v23, errorCopy);

        goto LABEL_18;
      }
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    v23 = 0;
    goto LABEL_17;
  }

LABEL_18:
}

- (id)_promiseConfiguration
{
  if (self)
  {
    self = self->_context;
  }

  configurationManager = [(FCCurrentAudioContentFetchOperation *)self configurationManager];
  v3 = FCCoreConfigurationPromise(configurationManager);

  return v3;
}

- (id)_promiseContentWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = objc_alloc(MEMORY[0x1E69B68F8]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__FCCurrentAudioContentFetchOperation__promiseContentWithConfiguration___block_invoke;
  v9[3] = &unk_1E7C3B310;
  v9[4] = self;
  v10 = configurationCopy;
  v6 = configurationCopy;
  v7 = [v5 initWithResolver:v9];

  return v7;
}

void __72__FCCurrentAudioContentFetchOperation__promiseContentWithConfiguration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(FCRecordChainFetchOperation);
  v8 = v7;
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 376);
  }

  else
  {
    v10 = 0;
  }

  [(FCRecordChainFetchOperation *)v7 setContext:v10];
  v11 = [*(a1 + 40) audioConfigRecordID];
  v39[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
  [(FCRecordChainFetchOperation *)v8 setTopLevelRecordIDs:v12];

  v37[0] = @"AudioConfig";
  v36[0] = @"latestAudioArticleListID";
  v36[1] = @"featuredAudioArticleListID";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
  v38[0] = v13;
  v37[1] = @"ArticleList";
  v35 = @"articleIDs";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v38[1] = v14;
  v37[2] = @"Article";
  v34[0] = @"sourceChannelTagID";
  v34[1] = @"parentIssueID";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  v38[2] = v15;
  v38[3] = MEMORY[0x1E695E0F0];
  v37[3] = @"Tag";
  v37[4] = @"Issue";
  v38[4] = MEMORY[0x1E695E0F0];
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:5];
  [(FCRecordChainFetchOperation *)v8 setLinkKeysByRecordType:v16];

  v32 = @"AudioConfig";
  v17 = [FCCachePolicy cachePolicyWithSoftMaxAge:3600.0];
  v33 = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  [(FCRecordChainFetchOperation *)v8 setCachePoliciesByRecordType:v18];

  v19 = +[FCEdgeCacheHint edgeCacheHintForAudioContent];
  [(FCRecordChainFetchOperation *)v8 setEdgeCacheHint:v19];

  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __72__FCCurrentAudioContentFetchOperation__promiseContentWithConfiguration___block_invoke_2;
  v27 = &unk_1E7C3B718;
  v30 = v6;
  v20 = *(a1 + 40);
  v21 = *(a1 + 32);
  v28 = v20;
  v29 = v21;
  v31 = v5;
  v22 = v5;
  v23 = v6;
  [(FCRecordChainFetchOperation *)v8 setRecordChainCompletionHandler:&v24];
  [*(a1 + 32) associateChildOperation:{v8, v24, v25, v26, v27}];
  [(FCOperation *)v8 start];
}

void __72__FCCurrentAudioContentFetchOperation__promiseContentWithConfiguration___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v29 = *(a1 + 48);
    v28 = v6;
    v29[2](v29, v28);

    v7 = v29;
  }

  else
  {
    v27 = [v5 objectForKeyedSubscript:&unk_1F2E6FFF0];
    v8 = [v5 objectForKeyedSubscript:&unk_1F2E70008];
    v9 = [v5 objectForKeyedSubscript:&unk_1F2E70020];
    v26 = [v5 objectForKeyedSubscript:&unk_1F2E70038];
    v10 = [v5 objectForKeyedSubscript:&unk_1F2E70050];
    v24 = v9;
    v11 = [v9 onlyRecord];
    v25 = v8;
    v12 = [v8 transformRecordsByIDWithBlock:&__block_literal_global_31];
    v14 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v13)
    {
      v13 = v13[47];
    }

    v15 = v13;
    v16 = [v15 assetManager];
    v17 = [v12 allValues];
    v18 = FCHeadlinesByArticleListIDFromHeldRecordsAndArticleLists(v14, v16, v27, v10, v26, v17, 1);

    if ([v11 hasLatestAudioArticleListID])
    {
      v19 = [v11 latestAudioArticleListID];
      v20 = [v18 objectForKeyedSubscript:v19];
    }

    else
    {
      v20 = MEMORY[0x1E695E0F0];
    }

    if ([v11 hasFeaturedAudioArticleListID])
    {
      v21 = [v11 featuredAudioArticleListID];
      v22 = [v18 objectForKeyedSubscript:v21];
    }

    else
    {
      v22 = MEMORY[0x1E695E0F0];
    }

    v23 = [[FCCurrentAudioContent alloc] initWithRecentHeadlines:v20 featuredHeadlines:v22];
    (*(*(a1 + 56) + 16))();

    v7 = v27;
  }
}

FCArticleList *__72__FCCurrentAudioContentFetchOperation__promiseContentWithConfiguration___block_invoke_29(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[FCArticleList alloc] initWithRecord:v5 interestToken:v4];

  return v6;
}

- (id)_promisePlaceholderContentWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = objc_alloc(MEMORY[0x1E69B68F8]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__FCCurrentAudioContentFetchOperation__promisePlaceholderContentWithConfiguration___block_invoke;
  v9[3] = &unk_1E7C3B768;
  v9[4] = self;
  v10 = &unk_1F2E6F900;
  v11 = configurationCopy;
  v6 = configurationCopy;
  v7 = [v5 initWithResolver:v9];

  return v7;
}

void __83__FCCurrentAudioContentFetchOperation__promisePlaceholderContentWithConfiguration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [FCArticleHeadlinesFetchOperation alloc];
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 376);
  }

  else
  {
    v9 = 0;
  }

  v10 = [(FCArticleHeadlinesFetchOperation *)v7 initWithContext:v9 articleIDs:*(a1 + 40) ignoreCacheForArticleIDs:0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__FCCurrentAudioContentFetchOperation__promisePlaceholderContentWithConfiguration___block_invoke_2;
  v13[3] = &unk_1E7C3B740;
  v15 = v6;
  v14 = *(a1 + 48);
  v16 = v5;
  v11 = v5;
  v12 = v6;
  [(FCFetchOperation *)v10 setFetchCompletionBlock:v13];
  [*(a1 + 32) associateChildOperation:v10];
  [(FCOperation *)v10 start];
}

void __83__FCCurrentAudioContentFetchOperation__promisePlaceholderContentWithConfiguration___block_invoke_2(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 status])
  {
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __83__FCCurrentAudioContentFetchOperation__promisePlaceholderContentWithConfiguration___block_invoke_3;
    v25 = &unk_1E7C37778;
    v27 = *(a1 + 40);
    v26 = v3;
    v4 = [v26 error];
    v27[2](v27, v4);

    v5 = v27;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [v3 fetchedObject];
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        v10 = 0;
        do
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * v10);
          v12 = [*(a1 + 32) paidBundleConfig];
          v13 = arc4random_uniform([v12 audioSuggestionsMaxAge]);

          v14 = [MEMORY[0x1E695DF00] date];
          v15 = [v14 dateByAddingTimeInterval:-v13];
          [v11 setPublishDate:v15];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
      }

      while (v8);
    }

    v16 = [FCCurrentAudioContent alloc];
    v17 = [v3 fetchedObject];
    v5 = [(FCCurrentAudioContent *)v16 initWithRecentHeadlines:v17 featuredHeadlines:MEMORY[0x1E695E0F0]];

    (*(*(a1 + 48) + 16))();
  }
}

void __83__FCCurrentAudioContentFetchOperation__promisePlaceholderContentWithConfiguration___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

@end