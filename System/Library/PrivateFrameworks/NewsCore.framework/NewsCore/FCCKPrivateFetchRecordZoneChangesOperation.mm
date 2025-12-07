@interface FCCKPrivateFetchRecordZoneChangesOperation
- (BOOL)validateOperation;
- (id)_configurationForDestination:(int64_t)destination;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FCCKPrivateFetchRecordZoneChangesOperation

- (BOOL)validateOperation
{
  v16 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = FCCKPrivateFetchRecordZoneChangesOperation;
  validateOperation = [(FCCKPrivateDatabaseOperation *)&v7 validateOperation];
  recordZoneID = [(FCCKPrivateFetchRecordZoneChangesOperation *)self recordZoneID];

  if (!recordZoneID && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't fetch zone changes without a zone ID"];
    *buf = 136315906;
    v9 = "[FCCKPrivateFetchRecordZoneChangesOperation validateOperation]";
    v10 = 2080;
    v11 = "FCCKPrivateFetchRecordZoneChangesOperation.m";
    v12 = 1024;
    v13 = 35;
    v14 = 2114;
    v15 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  return recordZoneID && validateOperation;
}

- (void)performOperation
{
  v36[1] = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = &v29;
  if ([(FCCKPrivateDatabaseOperation *)self skipPreflight])
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  v31 = 0x2020000000;
  v32 = 0;
  database = [(FCCKPrivateDatabaseOperation *)self database];
  recordZoneID = [(FCCKPrivateFetchRecordZoneChangesOperation *)self recordZoneID];
  v36[0] = recordZoneID;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __62__FCCKPrivateFetchRecordZoneChangesOperation_performOperation__block_invoke;
  v28[3] = &unk_1E7C3B438;
  v28[4] = &v29;
  [(FCCKPrivateDatabase *)database enumeratePayloadsWithRecordIDs:0 records:v6 zoneIDs:0 zones:v3 options:v28 payloadHandler:?];

  v7 = objc_alloc_init(MEMORY[0x1E695B918]);
  recordZoneID2 = [(FCCKPrivateFetchRecordZoneChangesOperation *)self recordZoneID];
  v35 = recordZoneID2;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  [v7 setRecordZoneIDs:v9];

  [v7 setFetchAllChanges:{-[FCCKPrivateFetchRecordZoneChangesOperation fetchAllChanges](self, "fetchAllChanges")}];
  recordZoneID3 = [(FCCKPrivateFetchRecordZoneChangesOperation *)self recordZoneID];
  v33 = recordZoneID3;
  v11 = [(FCCKPrivateFetchRecordZoneChangesOperation *)self _configurationForDestination:v30[3]];
  v34 = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  [v7 setConfigurationsByRecordZoneID:v12];

  v13 = objc_opt_new();
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __62__FCCKPrivateFetchRecordZoneChangesOperation_performOperation__block_invoke_10;
  v26[3] = &unk_1E7C37FE0;
  v14 = v13;
  v27 = v14;
  [v7 setRecordChangedBlock:v26];
  array = [MEMORY[0x1E695DF70] array];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __62__FCCKPrivateFetchRecordZoneChangesOperation_performOperation__block_invoke_2;
  v24[3] = &unk_1E7C3B460;
  v16 = array;
  v25 = v16;
  [v7 setRecordWithIDWasDeletedBlock:v24];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __62__FCCKPrivateFetchRecordZoneChangesOperation_performOperation__block_invoke_3;
  v20[3] = &unk_1E7C3B488;
  v23 = &v29;
  v20[4] = self;
  v17 = v14;
  v21 = v17;
  v18 = v16;
  v22 = v18;
  [v7 setRecordZoneFetchCompletionBlock:v20];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __62__FCCKPrivateFetchRecordZoneChangesOperation_performOperation__block_invoke_4;
  v19[3] = &unk_1E7C36E50;
  v19[4] = self;
  [v7 setFetchRecordZoneChangesCompletionBlock:v19];
  [(FCCKPrivateDatabaseOperation *)self runChildCKOperation:v7 destination:v30[3]];

  _Block_object_dispose(&v29, 8);
}

void __62__FCCKPrivateFetchRecordZoneChangesOperation_performOperation__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(*(*(a1 + 32) + 8) + 24) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"zone should only map to a single destination"];
    v6 = 136315906;
    v7 = "[FCCKPrivateFetchRecordZoneChangesOperation performOperation]_block_invoke";
    v8 = 2080;
    v9 = "FCCKPrivateFetchRecordZoneChangesOperation.m";
    v10 = 1024;
    v11 = 58;
    v12 = 2114;
    v13 = v5;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v6, 0x26u);

    if (v3)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    goto LABEL_5;
  }

  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = v3[5];
LABEL_5:
  *(*(*(a1 + 32) + 8) + 24) = v4;
}

id *__62__FCCKPrivateFetchRecordZoneChangesOperation_performOperation__block_invoke_10(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] addObject:a2];
  }

  return result;
}

id *__62__FCCKPrivateFetchRecordZoneChangesOperation_performOperation__block_invoke_2(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] addObject:a2];
  }

  return result;
}

void __62__FCCKPrivateFetchRecordZoneChangesOperation_performOperation__block_invoke_3(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = *(*(*(a1 + 56) + 8) + 24);
    v8 = *(a1 + 32);
    v9 = a3;
    v10 = [v8 previousServerChangeToken];
    v11 = [FCCKPrivateDatabaseServerChangeToken tokenByAddingCKToken:v9 forDestination:v7 toToken:v10];
  }

  else
  {
    v11 = 0;
  }

  [*(a1 + 32) setResultChangedRecords:*(a1 + 40)];
  [*(a1 + 32) setResultDeletedRecordIDs:*(a1 + 48)];
  [*(a1 + 32) setResultServerChangeToken:v11];
  [*(a1 + 32) setResultMoreComing:a5];
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  resultServerChangeToken = [(FCCKPrivateFetchRecordZoneChangesOperation *)self resultServerChangeToken];
  resultMoreComing = [(FCCKPrivateFetchRecordZoneChangesOperation *)self resultMoreComing];
  v18 = errorCopy;
  resultChangedRecords = [(FCCKPrivateFetchRecordZoneChangesOperation *)self resultChangedRecords];
  resultDeletedRecordIDs = [(FCCKPrivateFetchRecordZoneChangesOperation *)self resultDeletedRecordIDs];
  if (v18)
  {
    if (!resultServerChangeToken)
    {
      resultServerChangeToken = [(FCCKPrivateFetchRecordZoneChangesOperation *)self previousServerChangeToken];
    }

    resultMoreComing = [v18 fc_isMissingZoneError] ^ 1;
    previousServerChangeToken = v18;
    goto LABEL_15;
  }

  previousServerChangeToken = [(FCCKPrivateFetchRecordZoneChangesOperation *)self previousServerChangeToken];
  if (previousServerChangeToken)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    if ([standardUserDefaults BOOLForKey:@"simulate_expired_change_tokens"])
    {

LABEL_9:
      previousServerChangeToken = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E695B740] code:21 userInfo:MEMORY[0x1E695E0F8]];
      goto LABEL_11;
    }

    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v12 = [standardUserDefaults2 BOOLForKey:@"simulate_server_side_data_reset"];

    if (v12)
    {
      goto LABEL_9;
    }

    previousServerChangeToken = 0;
  }

LABEL_11:
  previousServerChangeToken2 = [(FCCKPrivateFetchRecordZoneChangesOperation *)self previousServerChangeToken];
  if (previousServerChangeToken2)
  {
  }

  else
  {
    standardUserDefaults3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v15 = [standardUserDefaults3 BOOLForKey:@"simulate_server_side_data_reset"];

    if (v15)
    {

      resultChangedRecords = MEMORY[0x1E695E0F0];
      resultDeletedRecordIDs = MEMORY[0x1E695E0F0];
    }
  }

LABEL_15:
  fetchRecordZoneChangesCompletionBlock = [(FCCKPrivateFetchRecordZoneChangesOperation *)self fetchRecordZoneChangesCompletionBlock];

  if (fetchRecordZoneChangesCompletionBlock)
  {
    fetchRecordZoneChangesCompletionBlock2 = [(FCCKPrivateFetchRecordZoneChangesOperation *)self fetchRecordZoneChangesCompletionBlock];
    (fetchRecordZoneChangesCompletionBlock2)[2](fetchRecordZoneChangesCompletionBlock2, resultChangedRecords, resultDeletedRecordIDs, resultServerChangeToken, resultMoreComing, previousServerChangeToken);
  }
}

- (id)_configurationForDestination:(int64_t)destination
{
  v5 = objc_alloc_init(MEMORY[0x1E695B908]);
  previousServerChangeToken = [(FCCKPrivateFetchRecordZoneChangesOperation *)self previousServerChangeToken];
  v7 = [previousServerChangeToken changeTokenForDestination:destination];
  [v5 setPreviousServerChangeToken:v7];

  desiredKeys = [(FCCKPrivateFetchRecordZoneChangesOperation *)self desiredKeys];
  [v5 setDesiredKeys:desiredKeys];

  [v5 setFetchNewestChangesFirst:{-[FCCKPrivateFetchRecordZoneChangesOperation fetchNewestChangesFirst](self, "fetchNewestChangesFirst")}];

  return v5;
}

@end