@interface FCCKDatabaseLoggingMiddleware
- (FCCKDatabaseLoggingMiddleware)init;
- (_BYTE)initAllowingNilDesiredKeys:(_BYTE *)result;
- (int64_t)database:(id)database willEnqueueOperation:(id)operation error:(id *)error;
@end

@implementation FCCKDatabaseLoggingMiddleware

- (FCCKDatabaseLoggingMiddleware)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCCKDatabaseLoggingMiddleware init]";
    v10 = 2080;
    v11 = "FCCKDatabaseLoggingMiddleware.m";
    v12 = 1024;
    v13 = 35;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCCKDatabaseLoggingMiddleware init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (_BYTE)initAllowingNilDesiredKeys:(_BYTE *)result
{
  if (result)
  {
    v3.receiver = result;
    v3.super_class = FCCKDatabaseLoggingMiddleware;
    result = objc_msgSendSuper2(&v3, sel_init);
    if (result)
    {
      result[8] = a2;
    }
  }

  return result;
}

- (int64_t)database:(id)database willEnqueueOperation:(id)operation error:(id *)error
{
  v90[2] = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  operationCopy = operation;
  objc_opt_class();
  if (operationCopy && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v50 = operationCopy;
    if (!self || !self->_allowNilDesiredKeys)
    {
      desiredKeys = [v50 desiredKeys];

      if (!desiredKeys && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"No desired keys given for CKQueryOperation: %@", v50];
        *aBlock = 136315906;
        *&aBlock[4] = "[FCCKDatabaseLoggingMiddleware database:willEnqueueOperation:error:]";
        *&aBlock[12] = 2080;
        *&aBlock[14] = "FCCKDatabaseLoggingMiddleware.m";
        *&aBlock[22] = 1024;
        LODWORD(v87) = 56;
        WORD2(v87) = 2114;
        *(&v87 + 6) = v47;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", aBlock, 0x26u);
      }
    }

    objc_opt_class();
  }

  else
  {
    objc_opt_class();
    v50 = 0;
    if (!operationCopy)
    {
LABEL_14:
      v49 = 0;
      goto LABEL_15;
    }
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  v9 = operationCopy;
  if (self && self->_allowNilDesiredKeys)
  {
    v49 = v9;
    v10 = databaseCopy;
    objc_opt_class();
    goto LABEL_17;
  }

  v49 = v9;
  desiredKeys2 = [v9 desiredKeys];
  v45 = desiredKeys2 == 0;

  if (v45 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"No desired keys given for CKFetchRecordsOperation: %@", v49];
    *aBlock = 136315906;
    *&aBlock[4] = "[FCCKDatabaseLoggingMiddleware database:willEnqueueOperation:error:]";
    *&aBlock[12] = 2080;
    *&aBlock[14] = "FCCKDatabaseLoggingMiddleware.m";
    *&aBlock[22] = 1024;
    LODWORD(v87) = 62;
    WORD2(v87) = 2114;
    *(&v87 + 6) = v46;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", aBlock, 0x26u);
  }

LABEL_15:
  v11 = operationCopy;
  v12 = databaseCopy;
  if (!self)
  {
    goto LABEL_81;
  }

  objc_opt_class();
  if (!operationCopy)
  {
    v13 = 0;
    goto LABEL_21;
  }

LABEL_17:
  if (objc_opt_isKindOfClass())
  {
    v13 = operationCopy;
  }

  else
  {
    v13 = 0;
  }

LABEL_21:
  v53 = v13;
  objc_opt_class();
  if (operationCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = operationCopy;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  objc_opt_class();
  if (operationCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v16 = operationCopy;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v52 = v16;
  objc_opt_class();
  if (operationCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v17 = operationCopy;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v51 = v17;
  objc_opt_class();
  if (operationCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v18 = operationCopy;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  objc_opt_class();
  if (operationCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v20 = operationCopy;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  objc_opt_class();
  if (operationCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v22 = operationCopy;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  objc_opt_class();
  if (operationCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v24 = operationCopy;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v27 = v26;
  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 0;
  array = [MEMORY[0x1E695DF70] array];
  if (objc_opt_respondsToSelector())
  {
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = __65__FCCKDatabaseLoggingMiddleware__addLoggersToOperation_database___block_invoke;
    v80[3] = &unk_1E7C3F4C8;
    v81 = array;
    [operationCopy setRequestCompletedBlock:v80];
  }

  objc_initWeak(&location, operationCopy);
  *aBlock = MEMORY[0x1E69E9820];
  *&aBlock[8] = 3221225472;
  *&aBlock[16] = __65__FCCKDatabaseLoggingMiddleware__addLoggersToOperation_database___block_invoke_2;
  *&v87 = &unk_1E7C3F518;
  objc_copyWeak(v90, &location);
  v90[1] = v27;
  v48 = array;
  *(&v87 + 1) = v48;
  v89 = &v82;
  v88 = databaseCopy;
  v29 = _Block_copy(aBlock);
  if (v53)
  {
    *(v83 + 6) = 1;
    fetchRecordsCompletionBlock = [v53 fetchRecordsCompletionBlock];
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __65__FCCKDatabaseLoggingMiddleware__addLoggersToOperation_database___block_invoke_29;
    v76[3] = &unk_1E7C3F540;
    v77 = v29;
    v31 = fetchRecordsCompletionBlock;
    v78 = v31;
    [v53 setFetchRecordsCompletionBlock:v76];
  }

  if (v15)
  {
    *(v83 + 6) = 2;
    modifyRecordsCompletionBlock = [v15 modifyRecordsCompletionBlock];
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __65__FCCKDatabaseLoggingMiddleware__addLoggersToOperation_database___block_invoke_2_31;
    v73[3] = &unk_1E7C3F568;
    v74 = v29;
    v33 = modifyRecordsCompletionBlock;
    v75 = v33;
    [v15 setModifyRecordsCompletionBlock:v73];
  }

  if (v52)
  {
    *(v83 + 6) = 3;
    fetchRecordZonesCompletionBlock = [v52 fetchRecordZonesCompletionBlock];
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __65__FCCKDatabaseLoggingMiddleware__addLoggersToOperation_database___block_invoke_3_33;
    v70[3] = &unk_1E7C3F540;
    v71 = v29;
    v35 = fetchRecordZonesCompletionBlock;
    v72 = v35;
    [v52 setFetchRecordZonesCompletionBlock:v70];
  }

  if (v51)
  {
    *(v83 + 6) = 7;
    fetchRecordZoneChangesCompletionBlock = [v51 fetchRecordZoneChangesCompletionBlock];
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __65__FCCKDatabaseLoggingMiddleware__addLoggersToOperation_database___block_invoke_4;
    v67[3] = &unk_1E7C3F590;
    v68 = v29;
    v37 = fetchRecordZoneChangesCompletionBlock;
    v69 = v37;
    [v51 setFetchRecordZoneChangesCompletionBlock:v67];
  }

  if (v19)
  {
    *(v83 + 6) = 4;
    modifyRecordZonesCompletionBlock = [v19 modifyRecordZonesCompletionBlock];
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __65__FCCKDatabaseLoggingMiddleware__addLoggersToOperation_database___block_invoke_5;
    v64[3] = &unk_1E7C3F5B8;
    v65 = v29;
    v39 = modifyRecordZonesCompletionBlock;
    v66 = v39;
    [v19 setModifyRecordZonesCompletionBlock:v64];
  }

  if (v21)
  {
    *(v83 + 6) = 8;
    fetchDatabaseChangesCompletionBlock = [v21 fetchDatabaseChangesCompletionBlock];
    if (fetchDatabaseChangesCompletionBlock)
    {
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __65__FCCKDatabaseLoggingMiddleware__addLoggersToOperation_database___block_invoke_6;
      v61[3] = &unk_1E7C3F5E0;
      v62 = v29;
      v63 = fetchDatabaseChangesCompletionBlock;
      [v21 setFetchDatabaseChangesCompletionBlock:v61];
    }
  }

  if (v23)
  {
    *(v83 + 6) = 5;
    fetchSubscriptionCompletionBlock = [v23 fetchSubscriptionCompletionBlock];
    if (fetchSubscriptionCompletionBlock)
    {
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __65__FCCKDatabaseLoggingMiddleware__addLoggersToOperation_database___block_invoke_7;
      v58[3] = &unk_1E7C3EF48;
      v59 = v29;
      v60 = fetchSubscriptionCompletionBlock;
      [v23 setFetchSubscriptionCompletionBlock:v58];
    }
  }

  if (v25)
  {
    *(v83 + 6) = 6;
    modifySubscriptionsCompletionBlock = [v25 modifySubscriptionsCompletionBlock];
    if (modifySubscriptionsCompletionBlock)
    {
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __65__FCCKDatabaseLoggingMiddleware__addLoggersToOperation_database___block_invoke_8;
      v55[3] = &unk_1E7C3F5B8;
      v56 = v29;
      v57 = modifySubscriptionsCompletionBlock;
      [v25 setModifySubscriptionsCompletionBlock:v55];
    }
  }

  objc_destroyWeak(v90);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v82, 8);
LABEL_81:

  return 0;
}

void __65__FCCKDatabaseLoggingMiddleware__addLoggersToOperation_database___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__FCCKDatabaseLoggingMiddleware__addLoggersToOperation_database___block_invoke_3;
  v8[3] = &unk_1E7C3F4F0;
  v12 = *(a1 + 64);
  v9 = *(a1 + 32);
  v10 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v11 = v7;
  v6 = v3;
  FCPerformIfNonNil(WeakRetained, v8);
}

void __65__FCCKDatabaseLoggingMiddleware__addLoggersToOperation_database___block_invoke_3(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v38 = a2;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v4 = v3 - *(a1 + 64);
  v39 = a1;
  if (![*(a1 + 32) count])
  {
    v5 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = objc_opt_class();
      v8 = v7;
      v9 = [v38 operationID];
      v10 = [v38 database];
      v11 = [v10 container];
      v12 = [v11 containerIdentifier];
      *buf = 138544130;
      v45 = v7;
      v46 = 2114;
      v47 = v9;
      v48 = 2114;
      v49 = v12;
      v50 = 2048;
      v51 = v4;
      _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ ran against %{public}@ with no requests, total time: %f", buf, 0x2Au);
    }
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = *(a1 + 32);
  v37 = [obj countByEnumeratingWithState:&v40 objects:v56 count:16];
  if (v37)
  {
    v36 = *v41;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v41 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v40 + 1) + 8 * i);
        v15 = [FCNetworkEvent alloc];
        v16 = *(*(*(v39 + 7) + 8) + 24);
        v17 = [v38 operationID];
        v18 = v39[8];
        v19 = [v38 database];
        v20 = [v19 container];
        v21 = [v20 containerIdentifier];
        v22 = [(FCNetworkEvent *)v15 initWithType:v16 ckRequestInfo:v14 operationID:v17 startTime:v21 containerName:*(v39 + 5) error:v18];

        v23 = FCOperationLog;
        if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v23;
          v25 = objc_opt_class();
          v26 = v25;
          v27 = [v38 operationID];
          v28 = [v38 database];
          v29 = [v28 container];
          v30 = [v29 containerIdentifier];
          v31 = [v14 requestUUID];
          [(FCNetworkEvent *)v22 totalDuration];
          *buf = 138544642;
          v45 = v25;
          v46 = 2114;
          v47 = v27;
          v48 = 2114;
          v49 = v30;
          v50 = 2114;
          v51 = *&v31;
          v52 = 2048;
          v53 = v32;
          v54 = 2048;
          v55 = v4;
          _os_log_impl(&dword_1B63EF000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ ran against %{public}@ with request UUID %{public}@, network time: %f, total time: %f", buf, 0x3Eu);
        }

        v33 = *(v39 + 6);
        if (v33)
        {
          v33 = v33[3];
        }

        v34 = v33;
        [v34 logNetworkEvent:v22];
      }

      v37 = [obj countByEnumeratingWithState:&v40 objects:v56 count:16];
    }

    while (v37);
  }
}

void __65__FCCKDatabaseLoggingMiddleware__addLoggersToOperation_database___block_invoke_29(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  (*(*(a1 + 32) + 16))();
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

void __65__FCCKDatabaseLoggingMiddleware__addLoggersToOperation_database___block_invoke_2_31(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  (*(*(a1 + 32) + 16))();
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v10, v7, v8);
  }
}

void __65__FCCKDatabaseLoggingMiddleware__addLoggersToOperation_database___block_invoke_3_33(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  (*(*(a1 + 32) + 16))();
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

void __65__FCCKDatabaseLoggingMiddleware__addLoggersToOperation_database___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void __65__FCCKDatabaseLoggingMiddleware__addLoggersToOperation_database___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  (*(*(a1 + 32) + 16))();
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v10, v7, v8);
  }
}

void __65__FCCKDatabaseLoggingMiddleware__addLoggersToOperation_database___block_invoke_6(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v7 = a4;
  (*(*(a1 + 32) + 16))();
  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v9, a3, v7);
  }
}

void __65__FCCKDatabaseLoggingMiddleware__addLoggersToOperation_database___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  (*(*(a1 + 32) + 16))();
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

void __65__FCCKDatabaseLoggingMiddleware__addLoggersToOperation_database___block_invoke_8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  (*(*(a1 + 32) + 16))();
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v10, v7, v8);
  }
}

@end