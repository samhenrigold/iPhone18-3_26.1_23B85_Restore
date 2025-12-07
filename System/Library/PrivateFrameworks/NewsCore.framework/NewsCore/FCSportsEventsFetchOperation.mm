@interface FCSportsEventsFetchOperation
- (BOOL)validateOperation;
- (FCSportsEventsFetchOperation)initWithContext:(id)context tagController:(id)controller sportsEventIDs:(id)ds delegate:(id)delegate;
- (id)delegate;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FCSportsEventsFetchOperation

- (FCSportsEventsFetchOperation)initWithContext:(id)context tagController:(id)controller sportsEventIDs:(id)ds delegate:(id)delegate
{
  v32 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  controllerCopy = controller;
  dsCopy = ds;
  delegateCopy = delegate;
  if (!contextCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "context"];
    *buf = 136315906;
    v25 = "[FCSportsEventsFetchOperation initWithContext:tagController:sportsEventIDs:delegate:]";
    v26 = 2080;
    v27 = "FCSportsEventsFetchOperation.m";
    v28 = 1024;
    v29 = 46;
    v30 = 2114;
    v31 = v20;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (controllerCopy)
    {
      goto LABEL_6;
    }
  }

  else if (controllerCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagController"];
    *buf = 136315906;
    v25 = "[FCSportsEventsFetchOperation initWithContext:tagController:sportsEventIDs:delegate:]";
    v26 = 2080;
    v27 = "FCSportsEventsFetchOperation.m";
    v28 = 1024;
    v29 = 47;
    v30 = 2114;
    v31 = v21;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!dsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "sportsEventIDs"];
    *buf = 136315906;
    v25 = "[FCSportsEventsFetchOperation initWithContext:tagController:sportsEventIDs:delegate:]";
    v26 = 2080;
    v27 = "FCSportsEventsFetchOperation.m";
    v28 = 1024;
    v29 = 48;
    v30 = 2114;
    v31 = v22;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v23.receiver = self;
  v23.super_class = FCSportsEventsFetchOperation;
  v15 = [(FCOperation *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_context, context);
    objc_storeStrong(&v16->_tagController, controller);
    objc_storeStrong(&v16->_sportsEventIDs, ds);
    news_core_ConfigurationManager = [contextCopy news_core_ConfigurationManager];
    appConfigurationManager = v16->_appConfigurationManager;
    v16->_appConfigurationManager = news_core_ConfigurationManager;

    objc_storeWeak(&v16->_delegate, delegateCopy);
  }

  return v16;
}

- (BOOL)validateOperation
{
  if (self)
  {
    context = self->_context;
    self = self->_sportsEventIDs;
    v3 = context != 0;
  }

  else
  {
    v3 = 0;
  }

  return [(FCSportsEventsFetchOperation *)self count]&& v3;
}

- (void)performOperation
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(FCRecordChainFetchOperation);
  v4 = v3;
  if (self)
  {
    [(FCRecordChainFetchOperation *)v3 setTopLevelRecordIDs:self->_sportsEventIDs];
    context = self->_context;
  }

  else
  {
    [(FCRecordChainFetchOperation *)v3 setTopLevelRecordIDs:0];
    context = 0;
  }

  [(FCRecordChainFetchOperation *)v4 setContext:context];
  cachePolicy = [(FCSportsEventsFetchOperation *)self cachePolicy];
  [(FCRecordChainFetchOperation *)v4 setCachePolicy:cachePolicy];

  v11[0] = @"SportsEvent";
  v10[0] = @"eventCompetitorTagIDs";
  v10[1] = @"eventLeagueTagID";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v11[1] = @"Tag";
  v12[0] = v7;
  v12[1] = MEMORY[0x1E695E0F0];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [(FCRecordChainFetchOperation *)v4 setLinkKeysByRecordType:v8];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__FCSportsEventsFetchOperation_performOperation__block_invoke;
  v9[3] = &unk_1E7C39358;
  v9[4] = self;
  [(FCRecordChainFetchOperation *)v4 setRecordChainCompletionHandler:v9];
  [(FCOperation *)self associateChildOperation:v4];
  [(FCOperation *)v4 start];
}

void __48__FCSportsEventsFetchOperation_performOperation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v13[5] = MEMORY[0x1E69E9820];
    v13[6] = 3221225472;
    v13[7] = __48__FCSportsEventsFetchOperation_performOperation__block_invoke_2;
    v13[8] = &unk_1E7C36C58;
    v14 = *(a1 + 32);
    v15 = v5;
    [v14 finishedPerformingOperationWithError:v15];
  }

  else
  {
    v7 = [a2 objectForKeyedSubscript:&unk_1F2E6FF00];
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(v8 + 400);
    }

    else
    {
      v9 = 0;
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48__FCSportsEventsFetchOperation_performOperation__block_invoke_10;
    v13[3] = &unk_1E7C3A538;
    v13[4] = v8;
    v10 = v9;
    v11 = [v7 transformRecordsInOrder:v10 withBlock:v13];
    v12 = *(a1 + 32);
    if (v12)
    {
      objc_storeStrong((v12 + 424), v11);
    }

    [*(a1 + 32) finishedPerformingOperationWithError:0];
  }
}

FCSportsEvent *__48__FCSportsEventsFetchOperation_performOperation__block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = v7[49];
  }

  v8 = v7;
  v9 = [v5 eventCompetitorTagIDs];
  v10 = [v8 slowCachedTagsForIDs:v9];

  v11 = [v5 eventCompetitorTagIDs];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __48__FCSportsEventsFetchOperation_performOperation__block_invoke_2_11;
  v38[3] = &unk_1E7C3A4A0;
  v12 = v10;
  v13 = *(a1 + 32);
  v39 = v12;
  v40 = v13;
  v14 = v5;
  v41 = v14;
  v15 = [v11 fc_arrayByTransformingWithBlock:v38];

  v16 = [v15 count];
  v17 = [v14 eventCompetitorTagIDs];
  v18 = [v17 count];

  if (v16 == v18)
  {
    v19 = *(a1 + 32);
    if (v19)
    {
      v19 = v19[49];
    }

    v20 = v19;
    v21 = [v14 eventLeagueTagID];
    v22 = [v20 slowCachedTagForID:v21];

    v23 = [v22 asSports];

    if (v23)
    {
      v23 = v23;
      v24 = [FCSportsEvent alloc];
      v25 = *(a1 + 32);
      if (v25)
      {
        v25 = v25[48];
      }

      v26 = v25;
      v27 = [v26 assetManager];
      v28 = [(FCSportsEvent *)v24 initWithSportsEventRecord:v14 eventCompetitorTags:v15 eventLeagueTag:v23 assetManager:v27 interestToken:v6];
    }

    else
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __48__FCSportsEventsFetchOperation_performOperation__block_invoke_19;
      v32[3] = &unk_1E7C3A510;
      v32[4] = *(a1 + 32);
      v33 = v14;
      v28 = __48__FCSportsEventsFetchOperation_performOperation__block_invoke_19(v32);
    }
  }

  else
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __48__FCSportsEventsFetchOperation_performOperation__block_invoke_14;
    v34[3] = &unk_1E7C3A4E8;
    v35 = v14;
    v29 = v15;
    v30 = *(a1 + 32);
    v36 = v29;
    v37 = v30;
    v28 = __48__FCSportsEventsFetchOperation_performOperation__block_invoke_14(v34);

    v23 = v35;
  }

  return v28;
}

id __48__FCSportsEventsFetchOperation_performOperation__block_invoke_2_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v5 = [v4 isSports];

  if (v5)
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:v3];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__FCSportsEventsFetchOperation_performOperation__block_invoke_3;
    v8[3] = &unk_1E7C3A478;
    v8[4] = *(a1 + 40);
    v9 = v3;
    v10 = *(a1 + 48);
    v6 = __48__FCSportsEventsFetchOperation_performOperation__block_invoke_3(v8);
  }

  return v6;
}

uint64_t __48__FCSportsEventsFetchOperation_performOperation__block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v4 shortOperationDescription];
    v7 = *(a1 + 40);
    v8 = [*(a1 + 48) base];
    v9 = [v8 identifier];
    v10 = 138543874;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    v14 = 2114;
    v15 = v9;
    _os_log_error_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_ERROR, "%{public}@ encountered non-sports tag with id %{public}@ as a competitor tag for sports event with id %{public}@. Ignoring invalid competitor tag.", &v10, 0x20u);
  }

  return 0;
}

uint64_t __48__FCSportsEventsFetchOperation_performOperation__block_invoke_14(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DFD8]);
  v3 = [*(a1 + 32) eventCompetitorTagIDs];
  v4 = [v2 initWithArray:v3];

  v5 = [*(a1 + 40) fc_setByTransformingWithBlock:&__block_literal_global_25];
  v6 = [v4 fc_setByMinusingSet:v5];
  v7 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 48);
    v10 = v7;
    v11 = [v9 shortOperationDescription];
    v12 = [*(a1 + 32) base];
    v13 = [v12 identifier];
    v14 = [v5 allObjects];
    v15 = [v6 allObjects];
    v16 = 138544130;
    v17 = v11;
    v18 = 2114;
    v19 = v13;
    v20 = 2114;
    v21 = v14;
    v22 = 2114;
    v23 = v15;
    _os_log_error_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_ERROR, "%{public}@ failed to fetch all competitor tags for sports event, discarding sports event record with identifier=%{public}@; fetched competitor tags=%{public}@; unfetched competitor tags=%{public}@", &v16, 0x2Au);
  }

  return 0;
}

uint64_t __48__FCSportsEventsFetchOperation_performOperation__block_invoke_19(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v4 shortOperationDescription];
    v7 = [*(a1 + 40) base];
    v8 = [v7 identifier];
    v9 = [*(a1 + 40) eventLeagueTagID];
    v10 = 138543874;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    _os_log_error_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_ERROR, "%{public}@ failed to get league tag for sports event record, sports event discarded; sportsEventRecord identifier=%{public}@, leagueTag identifier=%{public}@", &v10, 0x20u);
  }

  return 0;
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  delegate = [(FCSportsEventsFetchOperation *)&self->super.super.super.isa delegate];

  if (delegate)
  {
    delegate2 = [(FCSportsEventsFetchOperation *)&self->super.super.super.isa delegate];
    v6 = delegate2;
    if (self)
    {
      resultSportsEvents = self->_resultSportsEvents;
    }

    else
    {
      resultSportsEvents = 0;
    }

    [delegate2 sportsEventsFetchOperation:self didFetchSportsEvents:resultSportsEvents];
  }

  fetchCompletionHandler = [(FCSportsEventsFetchOperation *)self fetchCompletionHandler];

  if (fetchCompletionHandler)
  {
    fetchCompletionHandler2 = [(FCSportsEventsFetchOperation *)self fetchCompletionHandler];
    v10 = fetchCompletionHandler2;
    if (self)
    {
      v11 = self->_resultSportsEvents;
    }

    else
    {
      v11 = 0;
    }

    (*(fetchCompletionHandler2 + 16))(fetchCompletionHandler2, v11, errorCopy);
  }
}

- (id)delegate
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 52);
    v1 = vars8;
  }

  return WeakRetained;
}

@end