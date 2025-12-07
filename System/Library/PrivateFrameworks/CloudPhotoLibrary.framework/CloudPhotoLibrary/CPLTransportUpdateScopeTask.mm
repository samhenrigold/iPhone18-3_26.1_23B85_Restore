@interface CPLTransportUpdateScopeTask
- (BOOL)checkScopeIsValidInTransaction:(id)transaction;
- (void)cancel;
- (void)launch;
@end

@implementation CPLTransportUpdateScopeTask

- (void)cancel
{
  v6.receiver = self;
  v6.super_class = CPLTransportUpdateScopeTask;
  [(CPLEngineSyncTask *)&v6 cancel];
  store = [(CPLEngineScopedTask *)self store];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__CPLTransportUpdateScopeTask_cancel__block_invoke;
  v5[3] = &unk_1E86205E0;
  v5[4] = self;
  v4 = [store performReadTransactionWithBlock:v5];
}

uint64_t __37__CPLTransportUpdateScopeTask_cancel__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 120) cancel];
  v2 = *(*(a1 + 32) + 128);

  return [v2 cancel];
}

- (void)launch
{
  v14.receiver = self;
  v14.super_class = CPLTransportUpdateScopeTask;
  [(CPLEngineSyncTask *)&v14 launch];
  store = [(CPLEngineScopedTask *)self store];
  scopes = [store scopes];
  scope = [(CPLEngineScopedTask *)self scope];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__CPLTransportUpdateScopeTask_launch__block_invoke;
  v10[3] = &unk_1E861F1D0;
  v10[4] = self;
  v11 = scopes;
  v12 = scope;
  v13 = store;
  v6 = store;
  v7 = scope;
  v8 = scopes;
  v9 = [v6 performReadTransactionWithBlock:v10];
}

void __37__CPLTransportUpdateScopeTask_launch__block_invoke(id *a1, uint64_t a2)
{
  v64 = *MEMORY[0x1E69E9840];
  if (![a1[4] checkScopeIsValidInTransaction:a2])
  {
    return;
  }

  if (![a1[4] isCancelled])
  {
    v4 = [a1[5] transportUpdateTaskForScope:a1[6]];
    v5 = [a1[5] flagsForScope:a1[6]];
    if ([v5 valueForFlag:32])
    {
      if ([a1[6] scopeType] != 1)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v6 = __CPLTaskOSLogDomain();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            v7 = [a1[6] scopeIdentifier];
            *buf = 138412290;
            v63 = v7;
            _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEFAULT, "Deleting transport scope for %@", buf, 0xCu);
          }
        }

        v8 = [a1[4] engineLibrary];
        v9 = [v8 transport];

        v10 = [a1[4] transportScope];
        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 3221225472;
        v58[2] = __37__CPLTransportUpdateScopeTask_launch__block_invoke_9;
        v58[3] = &unk_1E861B920;
        v11 = a1[6];
        v47 = a1[4];
        v12 = a1[7];
        v13 = a1[5];
        v14 = a1[6];
        *&v15 = v13;
        *(&v15 + 1) = v14;
        *&v16 = v47;
        *(&v16 + 1) = v12;
        v59 = v16;
        v60 = v15;
        v61 = v4;
        v17 = [v9 deleteTransportScope:v10 scope:v11 completionHandler:v58];
        v18 = a1[4];
        v19 = v18[15];
        v18[15] = v17;

        v20 = a1[4];
        v21 = v20[15];
        v22 = [v9 createGroupForTransportScopeDelete];
        [v20 launchTransportTask:v21 withTransportGroup:v22];

        v23 = *(&v59 + 1);
LABEL_20:

LABEL_27:
        return;
      }
    }

    else if (([v5 valueForFlag:20] & 1) == 0)
    {
      v24 = [a1[4] engineLibrary];
      v9 = [v24 transport];

      v25 = [a1[4] transportScope];
      v26 = [a1[4] scope];
      v27 = [a1[5] scopeChangeForScope:a1[6]];
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __37__CPLTransportUpdateScopeTask_launch__block_invoke_5;
      v54[3] = &unk_1E861B920;
      *&v28 = a1[4];
      *v48 = v28;
      v29 = a1[7];
      v30 = a1[5];
      v31 = a1[6];
      *&v32 = v30;
      *(&v32 + 1) = v31;
      *&v33 = v48[0];
      *(&v33 + 1) = v29;
      v55 = v33;
      v56 = v32;
      v57 = v4;
      v34 = [v9 updateTransportScope:v25 scope:v26 scopeChange:v27 completionHandler:v54];
      v35 = a1[4];
      v36 = v35[16];
      v35[16] = v34;

      v37 = a1[4];
      v38 = v37[16];
      if (v38)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v39 = __CPLTaskOSLogDomain();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v40 = [a1[6] scopeIdentifier];
            *buf = 138412290;
            v63 = v40;
            _os_log_impl(&dword_1DC05A000, v39, OS_LOG_TYPE_DEFAULT, "Dispatching update transport for %@", buf, 0xCu);
          }

          v37 = a1[4];
          v38 = v37[16];
        }

        v41 = [v9 createGroupForTransportScopeUpdate];
        [v37 launchTransportTask:v38 withTransportGroup:v41];

        v23 = *(&v55 + 1);
        goto LABEL_20;
      }
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v42 = __CPLTaskOSLogDomain();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = [a1[6] scopeIdentifier];
        *buf = 138412290;
        v63 = v43;
        _os_log_impl(&dword_1DC05A000, v42, OS_LOG_TYPE_DEFAULT, "Ignoring transport update for %@", buf, 0xCu);
      }
    }

    v44 = a1[7];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __37__CPLTransportUpdateScopeTask_launch__block_invoke_13;
    v50[3] = &unk_1E861B8F8;
    v51 = a1[5];
    v52 = a1[6];
    v53 = v4;
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __37__CPLTransportUpdateScopeTask_launch__block_invoke_3_15;
    v49[3] = &unk_1E86205E0;
    v49[4] = a1[4];
    v45 = [v44 performWriteTransactionWithBlock:v50 completionHandler:v49];

    v9 = v51;
    goto LABEL_27;
  }

  v3 = a1[4];
  v46 = +[CPLErrors operationCancelledError];
  [v3 taskDidFinishWithError:?];
}

void __37__CPLTransportUpdateScopeTask_launch__block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    if (![v3 isCPLErrorWithCode:1002])
    {
      [*(a1 + 32) taskDidFinishWithError:v4];
      v9 = *(a1 + 32);
      v10 = *(v9 + 120);
      *(v9 + 120) = 0;

      goto LABEL_6;
    }
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __37__CPLTransportUpdateScopeTask_launch__block_invoke_2;
  v12[3] = &unk_1E861B8F8;
  v5 = *(a1 + 40);
  v13 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __37__CPLTransportUpdateScopeTask_launch__block_invoke_4;
  v11[3] = &unk_1E86205E0;
  v11[4] = *(a1 + 32);
  v8 = [v5 performWriteTransactionWithBlock:v12 completionHandler:v11];

  v4 = v13;
LABEL_6:
}

void __37__CPLTransportUpdateScopeTask_launch__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    if (([v3 isCPLErrorWithCode:1002] & 1) == 0 && !objc_msgSend(v4, "isCPLErrorWithCode:", 23))
    {
      [*(a1 + 32) taskDidFinishWithError:v4];
      v9 = *(a1 + 32);
      v10 = *(v9 + 128);
      *(v9 + 128) = 0;

      goto LABEL_6;
    }
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __37__CPLTransportUpdateScopeTask_launch__block_invoke_6;
  v12[3] = &unk_1E861B8F8;
  v5 = *(a1 + 40);
  v13 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __37__CPLTransportUpdateScopeTask_launch__block_invoke_8;
  v11[3] = &unk_1E86205E0;
  v11[4] = *(a1 + 32);
  v8 = [v5 performWriteTransactionWithBlock:v12 completionHandler:v11];

  v4 = v13;
LABEL_6:
}

void __37__CPLTransportUpdateScopeTask_launch__block_invoke_13(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__CPLTransportUpdateScopeTask_launch__block_invoke_2_14;
  v6[3] = &unk_1E861BD28;
  v7 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  [a2 do:v6];
}

void __37__CPLTransportUpdateScopeTask_launch__block_invoke_3_15(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 error];
  [v2 taskDidFinishWithError:v3];
}

void __37__CPLTransportUpdateScopeTask_launch__block_invoke_6(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__CPLTransportUpdateScopeTask_launch__block_invoke_7;
  v6[3] = &unk_1E861BD28;
  v7 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  [a2 do:v6];
}

void __37__CPLTransportUpdateScopeTask_launch__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 error];
  [v3 taskDidFinishWithError:v4];

  v5 = *(a1 + 32);
  v6 = *(v5 + 128);
  *(v5 + 128) = 0;
}

void *__37__CPLTransportUpdateScopeTask_launch__block_invoke_7(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) setScope:*(a1 + 40) hasCompletedTransportUpdate:*(a1 + 48) error:a2];
  if (result)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [v5 setScopeNeedsUpdateFromTransport:v6 error:a2];
  }

  return result;
}

void __37__CPLTransportUpdateScopeTask_launch__block_invoke_2(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__CPLTransportUpdateScopeTask_launch__block_invoke_3;
  v6[3] = &unk_1E861BD28;
  v7 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  [a2 do:v6];
}

void __37__CPLTransportUpdateScopeTask_launch__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 error];
  [v3 taskDidFinishWithError:v4];

  v5 = *(a1 + 32);
  v6 = *(v5 + 120);
  *(v5 + 120) = 0;
}

void *__37__CPLTransportUpdateScopeTask_launch__block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) setScope:*(a1 + 40) hasCompletedTransportUpdate:*(a1 + 48) error:a2];
  if (result)
  {
    v5 = *(a1 + 32);
    if (+[CPLScopeChange supportsStagingScopeForScopeWithType:](CPLScopeChange, "supportsStagingScopeForScopeWithType:", [*(a1 + 40) scopeType]))
    {
      v6 = 68;
    }

    else
    {
      v6 = 4;
    }

    v7 = *(a1 + 40);

    return [v5 setValue:1 forFlag:v6 forScope:v7 error:a2];
  }

  return result;
}

- (BOOL)checkScopeIsValidInTransaction:(id)transaction
{
  v14 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  session = [(CPLEngineSyncTask *)self session];
  shouldDefer = [session shouldDefer];

  if (shouldDefer)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLTaskOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 138412290;
        *&v13[4] = objc_opt_class();
        v8 = *&v13[4];
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Session for %@ has been deferred", v13, 0xCu);
      }
    }

    v9 = [CPLErrors sessionHasBeenDeferredError:*v13];
    [transactionCopy setError:v9];

    v10 = 0;
  }

  else
  {
    error = [transactionCopy error];
    v10 = error == 0;
  }

  return v10;
}

@end