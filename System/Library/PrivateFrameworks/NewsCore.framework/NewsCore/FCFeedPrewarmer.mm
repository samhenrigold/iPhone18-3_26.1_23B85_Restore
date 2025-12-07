@interface FCFeedPrewarmer
- (FCFeedPrewarmer)initWithContentContext:(id)context;
- (void)finishPrewarmingRequestForKey:(id)key completion:(id)completion;
- (void)startPrewarmingRequest:(id)request;
@end

@implementation FCFeedPrewarmer

- (FCFeedPrewarmer)initWithContentContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = FCFeedPrewarmer;
  v6 = [(FCFeedPrewarmer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentContext, context);
    v8 = objc_alloc_init(FCThreadSafeMutableDictionary);
    prewarmOperations = v7->_prewarmOperations;
    v7->_prewarmOperations = v8;
  }

  return v7;
}

- (void)startPrewarmingRequest:(id)request
{
  v19 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = [FCFeedPrewarmOperation alloc];
  contentContext = [(FCFeedPrewarmer *)self contentContext];
  v7 = [(FCFeedPrewarmOperation *)v5 initWithPrewarmRequest:requestCopy contentContext:contentContext];

  [(FCOperation *)v7 setQualityOfService:25];
  [(FCOperation *)v7 setRelativePriority:1];
  prewarmOperations = [(FCFeedPrewarmer *)self prewarmOperations];
  requestKey = [requestCopy requestKey];
  [prewarmOperations setObject:v7 forKey:requestKey];

  v10 = FCFeedPrewarmLog;
  if (os_log_type_enabled(FCFeedPrewarmLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    requestKey2 = [requestCopy requestKey];
    operationID = [(FCOperation *)v7 operationID];
    v15 = 138543618;
    v16 = requestKey2;
    v17 = 2114;
    v18 = operationID;
    _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "will prewarm feeds for key=%{public}@, operationID=%{public}@", &v15, 0x16u);
  }

  fc_prewarmQueue = [MEMORY[0x1E696ADC8] fc_prewarmQueue];
  [fc_prewarmQueue addOperation:v7];
}

- (void)finishPrewarmingRequestForKey:(id)key completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  completionCopy = completion;
  prewarmOperations = [(FCFeedPrewarmer *)self prewarmOperations];
  v9 = [prewarmOperations objectForKey:keyCopy];

  if (v9)
  {
    v10 = v9;
    v11 = FCFeedPrewarmLog;
    if (os_log_type_enabled(FCFeedPrewarmLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      operationID = [v10 operationID];
      *buf = 138543618;
      v21 = keyCopy;
      v22 = 2114;
      v23 = operationID;
      _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "will finish prewarm operation for key=%{public}@, operationID=%{public}@", buf, 0x16u);
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __60__FCFeedPrewarmer_finishPrewarmingRequestForKey_completion___block_invoke_4;
    v15[3] = &unk_1E7C43DB0;
    v16 = completionCopy;
    v14 = completionCopy;
    [v10 commitResultsOnceWithCompletionHandler:v15];
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __60__FCFeedPrewarmer_finishPrewarmingRequestForKey_completion___block_invoke;
    v17[3] = &unk_1E7C37BC0;
    v18 = keyCopy;
    v19 = completionCopy;
    v10 = completionCopy;
    __60__FCFeedPrewarmer_finishPrewarmingRequestForKey_completion___block_invoke(v17);

    v14 = v18;
  }
}

void __60__FCFeedPrewarmer_finishPrewarmingRequestForKey_completion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = FCFeedPrewarmLog;
  if (os_log_type_enabled(FCFeedPrewarmLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "found no prewarm operation for key=%{public}@", &v7, 0xCu);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = [FCFeedPrewarmResult alloc];
    v6 = [(FCFeedPrewarmResult *)v5 initWithSuccessfulRequests:MEMORY[0x1E695E0F0] failedRequests:MEMORY[0x1E695E0F0] networkEvents:MEMORY[0x1E695E0F0]];
    (*(v4 + 16))(v4, v6);
  }
}

@end