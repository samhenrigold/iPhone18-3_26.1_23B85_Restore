@interface FCCKPrivateSaveDatabaseSubscriptionOperation
- (BOOL)validateOperation;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FCCKPrivateSaveDatabaseSubscriptionOperation

- (BOOL)validateOperation
{
  v16 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = FCCKPrivateSaveDatabaseSubscriptionOperation;
  validateOperation = [(FCCKPrivateDatabaseOperation *)&v7 validateOperation];
  subscriptionID = [(FCCKPrivateSaveDatabaseSubscriptionOperation *)self subscriptionID];

  if (!subscriptionID && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't save database subscriptions without a subscription ID"];
    *buf = 136315906;
    v9 = "[FCCKPrivateSaveDatabaseSubscriptionOperation validateOperation]";
    v10 = 2080;
    v11 = "FCCKPrivateSaveDatabaseSubscriptionOperation.m";
    v12 = 1024;
    v13 = 20;
    v14 = 2114;
    v15 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  return subscriptionID && validateOperation;
}

- (void)performOperation
{
  v3 = objc_alloc_init(FCCKPrivateDatabaseCKOperationResults);
  skipPreflight = [(FCCKPrivateDatabaseOperation *)self skipPreflight];
  database = [(FCCKPrivateDatabaseOperation *)self database];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__FCCKPrivateSaveDatabaseSubscriptionOperation_performOperation__block_invoke;
  v9[3] = &unk_1E7C37838;
  v10 = v3;
  selfCopy = self;
  v6 = v3;
  [(FCCKPrivateDatabase *)database enumerateActiveDestinationsWithOptions:skipPreflight handler:v9];

  qualityOfService = [(FCCKPrivateSaveDatabaseSubscriptionOperation *)self qualityOfService];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__FCCKPrivateSaveDatabaseSubscriptionOperation_performOperation__block_invoke_4;
  v8[3] = &unk_1E7C37750;
  v8[4] = self;
  [(FCCKPrivateDatabaseCKOperationResults *)v6 notifyWhenFinishWithQoS:qualityOfService completionHandler:v8];
}

void __64__FCCKPrivateSaveDatabaseSubscriptionOperation_performOperation__block_invoke(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) operationWillStart];
  v4 = objc_alloc_init(MEMORY[0x1E695B968]);
  v5 = [*(a1 + 40) subscriptionID];
  v12[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [v4 setSubscriptionIDs:v6];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__FCCKPrivateSaveDatabaseSubscriptionOperation_performOperation__block_invoke_2;
  v9[3] = &unk_1E7C37810;
  v8 = *(a1 + 32);
  v7 = v8.i64[0];
  v10 = vextq_s8(v8, v8, 8uLL);
  v11 = a2;
  [v4 setFetchSubscriptionCompletionBlock:v9];
  [*(a1 + 40) runChildCKOperation:v4 destination:a2];
}

void __64__FCCKPrivateSaveDatabaseSubscriptionOperation_performOperation__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 allValues];
  v7 = [v6 firstObject];

  if (v7 && ([v7 notificationInfo], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "shouldSendContentAvailable"), objc_msgSend(*(a1 + 32), "notificationInfo"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "shouldSendContentAvailable"), v10, v8, v9 == v11) || (v12 = objc_alloc(MEMORY[0x1E695B8C0]), objc_msgSend(*(a1 + 32), "subscriptionID"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "initWithSubscriptionID:", v13), v13, objc_msgSend(*(a1 + 32), "notificationInfo"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "setNotificationInfo:", v15), v15, !v14))
  {
    v20 = *(a1 + 40);
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
    v24 = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    [v20 operationDidFinishWithItemIDs:v16 resultItems:0 error:v5];
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x1E695B9C8]);
    v25[0] = v14;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    [v16 setSubscriptionsToSave:v17];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __64__FCCKPrivateSaveDatabaseSubscriptionOperation_performOperation__block_invoke_3;
    v21[3] = &unk_1E7C377E8;
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    v22 = v18;
    v23 = v19;
    [v16 setModifySubscriptionsCompletionBlock:v21];
    [*(a1 + 32) runChildCKOperation:v16 destination:*(a1 + 48)];
  }
}

void __64__FCCKPrivateSaveDatabaseSubscriptionOperation_performOperation__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a4;
  v8 = [v4 numberWithInteger:v6];
  v10[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [v5 operationDidFinishWithItemIDs:v9 resultItems:0 error:v7];
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  saveDatabaseSubscriptionCompletionBlock = [(FCCKPrivateSaveDatabaseSubscriptionOperation *)self saveDatabaseSubscriptionCompletionBlock];

  if (saveDatabaseSubscriptionCompletionBlock)
  {
    saveDatabaseSubscriptionCompletionBlock2 = [(FCCKPrivateSaveDatabaseSubscriptionOperation *)self saveDatabaseSubscriptionCompletionBlock];
    (saveDatabaseSubscriptionCompletionBlock2)[2](saveDatabaseSubscriptionCompletionBlock2, errorCopy);
  }
}

@end