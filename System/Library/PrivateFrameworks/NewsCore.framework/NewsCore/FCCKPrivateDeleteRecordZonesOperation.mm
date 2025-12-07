@interface FCCKPrivateDeleteRecordZonesOperation
- (BOOL)validateOperation;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FCCKPrivateDeleteRecordZonesOperation

- (BOOL)validateOperation
{
  v17 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = FCCKPrivateDeleteRecordZonesOperation;
  validateOperation = [(FCCKPrivateDatabaseOperation *)&v8 validateOperation];
  recordZoneIDsToDelete = [(FCCKPrivateDeleteRecordZonesOperation *)self recordZoneIDsToDelete];
  v5 = [recordZoneIDsToDelete count];

  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't delete zones without zone IDs to delete"];
    *buf = 136315906;
    v10 = "[FCCKPrivateDeleteRecordZonesOperation validateOperation]";
    v11 = 2080;
    v12 = "FCCKPrivateDeleteRecordZonesOperation.m";
    v13 = 1024;
    v14 = 27;
    v15 = 2114;
    v16 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  return v5 && validateOperation;
}

- (void)performOperation
{
  v3 = objc_alloc_init(FCCKPrivateDatabaseCKOperationResults);
  skipPreflight = [(FCCKPrivateDatabaseOperation *)self skipPreflight];
  if ([(FCCKPrivateDeleteRecordZonesOperation *)self secureDatabaseOnly])
  {
    v5 = skipPreflight | 4;
  }

  else
  {
    v5 = skipPreflight;
  }

  database = [(FCCKPrivateDatabaseOperation *)self database];
  recordZoneIDsToDelete = [(FCCKPrivateDeleteRecordZonesOperation *)self recordZoneIDsToDelete];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__FCCKPrivateDeleteRecordZonesOperation_performOperation__block_invoke;
  v11[3] = &unk_1E7C39678;
  v11[4] = self;
  v12 = v3;
  v8 = v3;
  [(FCCKPrivateDatabase *)database enumeratePayloadsWithRecordIDs:0 records:recordZoneIDsToDelete zoneIDs:0 zones:v5 options:v11 payloadHandler:?];

  qualityOfService = [(FCCKPrivateDeleteRecordZonesOperation *)self qualityOfService];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__FCCKPrivateDeleteRecordZonesOperation_performOperation__block_invoke_13;
  v10[3] = &unk_1E7C37750;
  v10[4] = self;
  [(FCCKPrivateDatabaseCKOperationResults *)v8 notifyWhenFinishWithQoS:qualityOfService completionHandler:v10];
}

void __57__FCCKPrivateDeleteRecordZonesOperation_performOperation__block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) secureDatabaseOnly])
  {
    if (v3 && v3[5] == 3)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695B9B0]);
LABEL_8:
      v5 = 0;
      v6 = v3[3];
      goto LABEL_9;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"this delete-zones operation should only go to the secure database"];
      *buf = 136315906;
      v18 = "[FCCKPrivateDeleteRecordZonesOperation performOperation]_block_invoke";
      v19 = 2080;
      v20 = "FCCKPrivateDeleteRecordZonesOperation.m";
      v21 = 1024;
      v22 = 54;
      v23 = 2114;
      v24 = v10;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }
  }

  v4 = objc_alloc_init(MEMORY[0x1E695B9B0]);
  if (v3)
  {
    goto LABEL_8;
  }

  v6 = 0;
  v5 = 1;
LABEL_9:
  v7 = v6;
  [v4 setRecordZoneIDsToDelete:v7];

  [*(a1 + 40) operationWillStart];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __57__FCCKPrivateDeleteRecordZonesOperation_performOperation__block_invoke_7;
  v14 = &unk_1E7C39650;
  v15 = *(a1 + 40);
  v16 = v3;
  v8 = v3;
  [v4 setModifyRecordZonesCompletionBlock:&v11];
  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8[5];
  }

  [*(a1 + 32) runChildCKOperation:v4 destination:{v9, v11, v12, v13, v14}];
}

void __57__FCCKPrivateDeleteRecordZonesOperation_performOperation__block_invoke_7(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a3;
  if ([a2 count] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"shouldn't have any saved zones when deleting zones"];
    v13 = 136315906;
    v14 = "[FCCKPrivateDeleteRecordZonesOperation performOperation]_block_invoke";
    v15 = 2080;
    v16 = "FCCKPrivateDeleteRecordZonesOperation.m";
    v17 = 1024;
    v18 = 63;
    v19 = 2114;
    v20 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v13, 0x26u);
  }

  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (v9)
  {
    v9 = v9[3];
  }

  v11 = v9;
  [v10 operationDidFinishWithItemIDs:v11 resultItems:v8 error:v7];
}

void __57__FCCKPrivateDeleteRecordZonesOperation_performOperation__block_invoke_13(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setResultDeletedRecordZoneIDs:a2];
  [*(a1 + 32) finishedPerformingOperationWithError:v6];
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  deleteRecordZonesCompletionBlock = [(FCCKPrivateDeleteRecordZonesOperation *)self deleteRecordZonesCompletionBlock];

  if (deleteRecordZonesCompletionBlock)
  {
    deleteRecordZonesCompletionBlock2 = [(FCCKPrivateDeleteRecordZonesOperation *)self deleteRecordZonesCompletionBlock];
    resultDeletedRecordZoneIDs = [(FCCKPrivateDeleteRecordZonesOperation *)self resultDeletedRecordZoneIDs];
    (deleteRecordZonesCompletionBlock2)[2](deleteRecordZonesCompletionBlock2, resultDeletedRecordZoneIDs, errorCopy);
  }
}

@end