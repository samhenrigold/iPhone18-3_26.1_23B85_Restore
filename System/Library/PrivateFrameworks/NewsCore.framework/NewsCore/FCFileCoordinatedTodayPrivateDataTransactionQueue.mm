@interface FCFileCoordinatedTodayPrivateDataTransactionQueue
- (BOOL)peekAtTransactionsSyncWithAccessor:(id)accessor;
- (FCFileCoordinatedTodayPrivateDataTransactionQueue)init;
- (FCFileCoordinatedTodayPrivateDataTransactionQueue)initWithFileURL:(id)l;
- (void)dequeueTransactionsWithCompletion:(id)completion;
- (void)enqueueTransaction:(id)transaction withMaxTransactionCount:(unint64_t)count;
@end

@implementation FCFileCoordinatedTodayPrivateDataTransactionQueue

- (FCFileCoordinatedTodayPrivateDataTransactionQueue)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCFileCoordinatedTodayPrivateDataTransactionQueue init]";
    v10 = 2080;
    v11 = "FCFileCoordinatedTodayPrivateDataTransactionQueue.m";
    v12 = 1024;
    v13 = 27;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCFileCoordinatedTodayPrivateDataTransactionQueue init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCFileCoordinatedTodayPrivateDataTransactionQueue)initWithFileURL:(id)l
{
  v23 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "fileURL"];
    *buf = 136315906;
    v16 = "[FCFileCoordinatedTodayPrivateDataTransactionQueue initWithFileURL:]";
    v17 = 2080;
    v18 = "FCFileCoordinatedTodayPrivateDataTransactionQueue.m";
    v19 = 1024;
    v20 = 32;
    v21 = 2114;
    v22 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v14.receiver = self;
  v14.super_class = FCFileCoordinatedTodayPrivateDataTransactionQueue;
  v5 = [(FCFileCoordinatedTodayPrivateDataTransactionQueue *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [[FCFileCoordinatedDictionary alloc] initWithFileURL:lCopy allowedClasses:v9];
    fileCoordinatedDictionary = v5->_fileCoordinatedDictionary;
    v5->_fileCoordinatedDictionary = v10;
  }

  return v5;
}

- (void)enqueueTransaction:(id)transaction withMaxTransactionCount:(unint64_t)count
{
  v21 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  if (!transactionCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "transaction"];
    *buf = 136315906;
    v14 = "[FCFileCoordinatedTodayPrivateDataTransactionQueue enqueueTransaction:withMaxTransactionCount:]";
    v15 = 2080;
    v16 = "FCFileCoordinatedTodayPrivateDataTransactionQueue.m";
    v17 = 1024;
    v18 = 46;
    v19 = 2114;
    v20 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  fileCoordinatedDictionary = [(FCFileCoordinatedTodayPrivateDataTransactionQueue *)self fileCoordinatedDictionary];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __96__FCFileCoordinatedTodayPrivateDataTransactionQueue_enqueueTransaction_withMaxTransactionCount___block_invoke;
  v10[3] = &unk_1E7C47F00;
  v11 = transactionCopy;
  countCopy = count;
  v8 = transactionCopy;
  [fileCoordinatedDictionary writeSyncWithAccessor:v10];
}

- (BOOL)peekAtTransactionsSyncWithAccessor:(id)accessor
{
  v20 = *MEMORY[0x1E69E9840];
  accessorCopy = accessor;
  if (!accessorCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "accessor"];
    *buf = 136315906;
    v13 = "[FCFileCoordinatedTodayPrivateDataTransactionQueue peekAtTransactionsSyncWithAccessor:]";
    v14 = 2080;
    v15 = "FCFileCoordinatedTodayPrivateDataTransactionQueue.m";
    v16 = 1024;
    v17 = 56;
    v18 = 2114;
    v19 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  fileCoordinatedDictionary = [(FCFileCoordinatedTodayPrivateDataTransactionQueue *)self fileCoordinatedDictionary];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__FCFileCoordinatedTodayPrivateDataTransactionQueue_peekAtTransactionsSyncWithAccessor___block_invoke;
  v10[3] = &unk_1E7C38D88;
  v11 = accessorCopy;
  v6 = accessorCopy;
  v7 = [fileCoordinatedDictionary readSyncWithAccessor:v10];

  return v7;
}

void __88__FCFileCoordinatedTodayPrivateDataTransactionQueue_peekAtTransactionsSyncWithAccessor___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 fc_transactions];
  v5 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  (*(v2 + 16))(v2, v4);
}

- (void)dequeueTransactionsWithCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!completionCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completion"];
    *buf = 136315906;
    v11 = "[FCFileCoordinatedTodayPrivateDataTransactionQueue dequeueTransactionsWithCompletion:]";
    v12 = 2080;
    v13 = "FCFileCoordinatedTodayPrivateDataTransactionQueue.m";
    v14 = 1024;
    v15 = 66;
    v16 = 2114;
    v17 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  fileCoordinatedDictionary = [(FCFileCoordinatedTodayPrivateDataTransactionQueue *)self fileCoordinatedDictionary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __87__FCFileCoordinatedTodayPrivateDataTransactionQueue_dequeueTransactionsWithCompletion___block_invoke;
  v8[3] = &unk_1E7C38DB0;
  v9 = completionCopy;
  v6 = completionCopy;
  [fileCoordinatedDictionary writeWithAccessor:v8 completion:0];
}

void __87__FCFileCoordinatedTodayPrivateDataTransactionQueue_dequeueTransactionsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 fc_dequeueTransactions];
  (*(v2 + 16))(v2, v3);
}

@end