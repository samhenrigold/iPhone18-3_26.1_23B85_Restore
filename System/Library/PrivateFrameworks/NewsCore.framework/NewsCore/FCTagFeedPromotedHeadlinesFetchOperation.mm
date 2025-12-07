@interface FCTagFeedPromotedHeadlinesFetchOperation
- (BOOL)validateOperation;
- (FCTagFeedPromotedHeadlinesFetchOperation)initWithConfiguration:(id)configuration cloudContext:(id)context tagID:(id)d expireAfterTimeWindow:(double)window;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FCTagFeedPromotedHeadlinesFetchOperation

- (FCTagFeedPromotedHeadlinesFetchOperation)initWithConfiguration:(id)configuration cloudContext:(id)context tagID:(id)d expireAfterTimeWindow:(double)window
{
  configurationCopy = configuration;
  contextCopy = context;
  dCopy = d;
  v17.receiver = self;
  v17.super_class = FCTagFeedPromotedHeadlinesFetchOperation;
  v14 = [(FCOperation *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_configuration, configuration);
    objc_storeStrong(&v15->_cloudContext, context);
    objc_storeStrong(&v15->_tagID, d);
    v15->_expireAfterTimeWindow = window;
  }

  return v15;
}

- (BOOL)validateOperation
{
  v13 = *MEMORY[0x1E69E9840];
  if (self && self->_tagID)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Promoted headlines operation must have a tag ID"];
      v5 = 136315906;
      v6 = "[FCTagFeedPromotedHeadlinesFetchOperation validateOperation]";
      v7 = 2080;
      v8 = "FCTagFeedPromotedHeadlinesFetchOperation.m";
      v9 = 1024;
      v10 = 60;
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
  v24[1] = *MEMORY[0x1E69E9840];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__FCTagFeedPromotedHeadlinesFetchOperation_performOperation__block_invoke;
  v15[3] = &unk_1E7C37750;
  v15[4] = self;
  v3 = v15;
  if (self)
  {
    v4 = objc_alloc_init(FCRecordChainFetchOperation);
    [(FCRecordChainFetchOperation *)v4 setContext:self->_cloudContext];
    v24[0] = self->_tagID;
    v5 = MEMORY[0x1E695DEC8];
    v6 = v24[0];
    v7 = [v5 arrayWithObjects:v24 count:1];

    [(FCRecordChainFetchOperation *)v4 setTopLevelRecordIDs:v7];
    v22[0] = @"Article";
    v21[0] = @"sourceChannelTagID";
    v21[1] = @"parentIssueID";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    v23[0] = v8;
    v22[1] = @"Tag";
    v20 = @"publisherSpecifiedArticleIDs";
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    v22[2] = @"Issue";
    v23[1] = v9;
    v23[2] = MEMORY[0x1E695E0F0];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
    [(FCRecordChainFetchOperation *)v4 setLinkKeysByRecordType:v10];

    tagID = self->_tagID;
    v11 = tagID;
    v12 = [FCCachePolicy cachePolicyWithSoftMaxAge:300.0];
    v19 = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&tagID count:1];
    [(FCRecordChainFetchOperation *)v4 setCachePoliciesByRecordID:v13];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __87__FCTagFeedPromotedHeadlinesFetchOperation__fetchPinnedHeadlinesWithCompletionHandler___block_invoke;
    v16[3] = &unk_1E7C3F228;
    v14 = v3;
    v16[4] = self;
    v17 = v14;
    [(FCRecordChainFetchOperation *)v4 setRecordChainCompletionHandler:v16];
    [(FCOperation *)self associateChildOperation:v4];
    [(FCOperation *)v4 start];
  }
}

void __60__FCTagFeedPromotedHeadlinesFetchOperation_performOperation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  newValue = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    if (v7)
    {
      objc_setProperty_nonatomic_copy(v7, v5, newValue, 408);
      v7 = *(a1 + 32);
    }

    v8 = 0;
  }

  [v7 finishedPerformingOperationWithError:v8];
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  fetchCompletionHandler = [(FCTagFeedPromotedHeadlinesFetchOperation *)self fetchCompletionHandler];
  if (self)
  {
    resultHeadlines = self->_resultHeadlines;
  }

  else
  {
    resultHeadlines = 0;
  }

  if (resultHeadlines)
  {
    v7 = resultHeadlines;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = fetchCompletionHandler;
  (*(fetchCompletionHandler + 16))(fetchCompletionHandler, v7, errorCopy);
}

void __87__FCTagFeedPromotedHeadlinesFetchOperation__fetchPinnedHeadlinesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v72 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v56 = MEMORY[0x1E69E9820];
    v57 = 3221225472;
    v58 = __87__FCTagFeedPromotedHeadlinesFetchOperation__fetchPinnedHeadlinesWithCompletionHandler___block_invoke_2;
    v59 = &unk_1E7C37778;
    v61 = *(a1 + 40);
    v60 = v6;
    v61[2](v61, 0, v60);

    v7 = v61;
  }

  else
  {
    v7 = [v5 objectForKeyedSubscript:&unk_1F2E70368];
    v8 = [v5 objectForKeyedSubscript:&unk_1F2E70380];
    v9 = [v5 objectForKeyedSubscript:&unk_1F2E70398];
    v10 = *(a1 + 32);
    if (v10)
    {
      v10 = v10[47];
    }

    v53 = v10;
    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = *(v11 + 384);
    }

    else
    {
      v12 = 0;
    }

    v13 = [v12 tagController];
    v14 = [v13 tagsForTagRecords:v8];

    v15 = *(a1 + 32);
    if (v15)
    {
      v16 = *(v15 + 392);
    }

    else
    {
      v16 = 0;
    }

    v17 = [v14 objectForKey:v16];
    v18 = [MEMORY[0x1E695DF00] date];
    v19 = v18;
    v20 = *(a1 + 32);
    v52 = v14;
    if (v20)
    {
      v21 = *(v20 + 400);
    }

    else
    {
      v21 = 0.0;
    }

    v22 = [v18 fc_dateBySubtractingTimeInterval:v21];

    v23 = [v17 publisherSpecifiedArticleIDsModifiedDate];
    v51 = v22;
    LOBYTE(v22) = [v23 fc_isLaterThan:v22];

    if (v22)
    {
      v24 = *(a1 + 32);
      v49 = v8;
      if (v24)
      {
        v24 = v24[48];
      }

      v25 = v24;
      v26 = [v25 assetManager];
      v27 = MEMORY[0x1E695DFD8];
      v28 = [v17 publisherSpecifiedArticleIDs];
      v29 = [v27 setWithArray:v28];
      v50 = FCHeadlinesByArticleIDFromHeldRecords(v53, v26, v29, v7, v52, v9, 0, 1);

      v30 = FCOperationLog;
      v48 = v9;
      if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *(a1 + 32);
        log = v30;
        v46 = [v31 shortOperationDescription];
        v32 = [v17 fetchDate];
        v33 = [v17 lastModifiedDate];
        v34 = [v17 publisherSpecifiedArticleIDs];
        v35 = [v50 allKeys];
        *buf = 138544386;
        v63 = v46;
        v64 = 2114;
        v65 = v32;
        v66 = 2114;
        v67 = v33;
        v68 = 2114;
        v69 = v34;
        v70 = 2114;
        v71 = v35;
        _os_log_impl(&dword_1B63EF000, log, OS_LOG_TYPE_DEFAULT, "%{public}@ did fetch promoted headlines, tagFetchedAt=%{public}@, tagModifiedAt=%{public}@, tagPromotedArticleIDs=%{public}@, fetchedArticleIDs=%{public}@", buf, 0x34u);
      }

      v36 = *(a1 + 32);
      if (v36)
      {
        v37 = *(v36 + 384);
        v38 = *(v36 + 376);
        v39 = [FCFeedTransformationFilter transformationWithFilterOptions:0x200002118 configuration:v38 context:v37];
      }

      else
      {
        v39 = 0;
      }

      v40 = [v17 publisherSpecifiedArticleIDs];
      v41 = [v50 nf_objectsForKeysWithoutMarker:v40];

      v42 = [v39 transformHeadlines:v41];
      v43 = [v17 publisherSpecifiedArticles];
      v44 = FCAssignHeadlineMetadata(v42, v43, 0);

      (*(*(a1 + 40) + 16))();
      v9 = v48;
      v8 = v49;
    }

    else
    {
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __87__FCTagFeedPromotedHeadlinesFetchOperation__fetchPinnedHeadlinesWithCompletionHandler___block_invoke_14;
      v54[3] = &unk_1E7C37BC0;
      v45 = *(a1 + 40);
      v54[4] = *(a1 + 32);
      v55 = v45;
      __87__FCTagFeedPromotedHeadlinesFetchOperation__fetchPinnedHeadlinesWithCompletionHandler___block_invoke_14(v54);
    }
  }
}

uint64_t __87__FCTagFeedPromotedHeadlinesFetchOperation__fetchPinnedHeadlinesWithCompletionHandler___block_invoke_14(uint64_t a1)
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
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ did will finish early because promoted articles are expired", &v7, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

@end