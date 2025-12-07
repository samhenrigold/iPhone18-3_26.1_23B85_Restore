@interface CPLReshareScopeTask
- (CPLReshareScopeTask)initWithEngineLibrary:(id)library session:(id)session clientCacheIdentifier:(id)identifier scope:(id)scope transportScope:(id)transportScope;
- (id)scopesForTask;
- (void)_bumpIgnoredDatesOfRecords:(id)records hasResharedSomeRecords:(BOOL)someRecords;
- (void)_bumpIgnoredDatesOfRejectedRecords:(id)records;
- (void)_doOneIteration;
- (void)cancel;
- (void)launch;
@end

@implementation CPLReshareScopeTask

- (id)scopesForTask
{
  if (self->_primaryScope)
  {
    v7.receiver = self;
    v7.super_class = CPLReshareScopeTask;
    scopesForTask = [(CPLEngineScopedTask *)&v7 scopesForTask];
    scopesForTask2 = [scopesForTask arrayByAddingObject:self->_primaryScope];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CPLReshareScopeTask;
    scopesForTask2 = [(CPLEngineScopedTask *)&v6 scopesForTask];
  }

  return scopesForTask2;
}

- (void)cancel
{
  v8.receiver = self;
  v8.super_class = CPLReshareScopeTask;
  [(CPLEngineSyncTask *)&v8 cancel];
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__CPLReshareScopeTask_cancel__block_invoke;
  v7[3] = &unk_1E861A940;
  v7[4] = self;
  v4 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7243;
  block[3] = &unk_1E861B4E0;
  v10 = v4;
  v5 = queue;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v5, v6);
}

- (void)launch
{
  v8.receiver = self;
  v8.super_class = CPLReshareScopeTask;
  [(CPLEngineSyncTask *)&v8 launch];
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__CPLReshareScopeTask_launch__block_invoke;
  v7[3] = &unk_1E861A940;
  v7[4] = self;
  v4 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7243;
  block[3] = &unk_1E861B4E0;
  v10 = v4;
  v5 = queue;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v5, v6);
}

- (void)_doOneIteration
{
  if ([(CPLEngineSyncTask *)self isCancelled])
  {
    v9 = +[CPLErrors operationCancelledError];
    [(CPLEngineSyncTask *)self taskDidFinishWithError:v9];
  }

  else
  {
    engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
    store = [engineLibrary store];

    scopes = [store scopes];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __38__CPLReshareScopeTask__doOneIteration__block_invoke;
    v10[3] = &unk_1E86200D0;
    v10[4] = self;
    v11 = scopes;
    v12 = store;
    v6 = store;
    v7 = scopes;
    v8 = [v6 performReadTransactionWithBlock:v10];
  }
}

void __38__CPLReshareScopeTask__doOneIteration__block_invoke(id *a1, uint64_t a2)
{
  v81 = *MEMORY[0x1E69E9840];
  v3 = [a1[4] isScopeValidInTransaction:a2];
  v4 = a1[4];
  if (v3)
  {
    v5 = [a1[4] scope];
    if (*(a1[4] + 16))
    {
LABEL_3:
      v6 = [a1[6] ignoredRecords];
      v7 = a1[4];
      v8 = v7[15];
      v9 = [v7 scope];
      v10 = [v9 scopeIdentifier];
      v11 = [v6 ignoredRecordsBeforeDate:v8 scopeIdentifier:v10 maximumCount:100];

      if ([v11 count])
      {
        v63 = v5;
        v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v11, "count")}];
        v13 = [a1[6] cloudCache];
        v62 = a1;
        v66 = [a1[6] remappedRecords];
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v61 = v11;
        v14 = v11;
        v67 = [v14 countByEnumeratingWithState:&v73 objects:v77 count:16];
        if (!v67)
        {
          goto LABEL_25;
        }

        v15 = *v74;
        v64 = *v74;
        v65 = v14;
        while (1)
        {
          for (i = 0; i != v67; i = i + 1)
          {
            if (*v74 != v15)
            {
              objc_enumerationMutation(v14);
            }

            v17 = [*(*(&v73 + 1) + 8 * i) record];
            v18 = [v17 scopedIdentifier];
            v19 = [v13 targetForRecordWithSharedCloudScopedIdentifier:v18];

            if ([v19 targetState])
            {
              if ([v19 targetState] == 1)
              {
                v20 = [v19 scopedIdentifier];
                [v12 setObject:v17 forKeyedSubscript:v20];
              }

              else
              {
                if (_CPLSilentLogging)
                {
                  goto LABEL_23;
                }

                v20 = __CPLTaskOSLogDomain_7245();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                {
                  v28 = [v17 scopedIdentifier];
                  v29 = [v19 scopedIdentifier];
                  *buf = 138412802;
                  *&buf[4] = v28;
                  *&buf[12] = 2112;
                  *&buf[14] = v29;
                  *&buf[22] = 2112;
                  v79 = v19;
                  _os_log_impl(&dword_1DC05A000, v20, OS_LOG_TYPE_DEFAULT, "Skipping ignored record %@ as %@ target is not direct: %@", buf, 0x20u);
                }
              }
            }

            else
            {
              v21 = v13;
              v22 = v12;
              v23 = [v19 scopedIdentifier];
              v20 = [v66 realScopedIdentifierForRemappedScopedIdentifier:v23];

              v24 = [v20 identifier];
              v25 = [v19 scopedIdentifier];
              v26 = [v25 identifier];
              v27 = [v24 isEqualToString:v26];

              if (v27)
              {
                v12 = v22;
                v13 = v21;
                v15 = v64;
                v14 = v65;
              }

              else
              {
                v12 = v22;
                v13 = v21;
                v15 = v64;
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v30 = __CPLTaskOSLogDomain_7245();
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                  {
                    v31 = [v19 scopedIdentifier];
                    *buf = 138412546;
                    *&buf[4] = v31;
                    *&buf[12] = 2112;
                    *&buf[14] = v17;
                    _os_log_impl(&dword_1DC05A000, v30, OS_LOG_TYPE_DEFAULT, "Will delete old remapped %@ to expose %@", buf, 0x16u);
                  }
                }

                v32 = objc_opt_class();
                v33 = [v17 scopedIdentifier];
                v34 = [v32 newDeleteChangeWithScopedIdentifier:v33];
                v35 = [v19 scopedIdentifier];
                [v12 setObject:v34 forKeyedSubscript:v35];

                v14 = v65;
              }
            }

LABEL_23:
          }

          v67 = [v14 countByEnumeratingWithState:&v73 objects:v77 count:16];
          if (!v67)
          {
LABEL_25:

            v36 = [v12 count];
            v37 = v62[4];
            if (v36)
            {
              v38 = v37[18];
              v69[0] = MEMORY[0x1E69E9820];
              v69[1] = 3221225472;
              v69[2] = __38__CPLReshareScopeTask__doOneIteration__block_invoke_18;
              v69[3] = &unk_1E861B2B8;
              v69[4] = v37;
              v70 = v12;
              v5 = v63;
              v71 = v63;
              v72 = v14;
              v39 = v69;
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = __cpl_dispatch_async_block_invoke_7243;
              v79 = &unk_1E861B4E0;
              v80 = v39;
              v40 = v38;
              v41 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
              dispatch_async(v40, v41);
            }

            else
            {
              [v37 _bumpIgnoredDatesOfRecords:v14 hasResharedSomeRecords:0];
              v5 = v63;
            }

            v11 = v61;
            goto LABEL_45;
          }
        }
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v48 = __CPLTaskOSLogDomain_7245();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DC05A000, v48, OS_LOG_TYPE_DEFAULT, "All eligible ignored records have been process", buf, 2u);
        }
      }

      [a1[4] taskDidFinishWithError:0];
LABEL_45:

      goto LABEL_46;
    }

    v42 = [a1[5] scopeForSharingScope:v5];
    v43 = a1[4];
    v44 = v43[16];
    v43[16] = v42;

    v45 = a1[4];
    if (v45[16])
    {
      if (![a1[5] valueForFlag:24 forScope:?])
      {
        v49 = [a1[5] transportScopeForScope:*(a1[4] + 16)];
        if (v49)
        {
          v50 = v49;
          [*(a1[4] + 17) addTransportScope:v49 forScope:*(a1[4] + 16)];
          v51 = [a1[4] engineLibrary];
          v52 = [v51 transport];
          v53 = [v52 createGroupForReshare];
          v54 = a1[4];
          v55 = v54[20];
          v54[20] = v53;

          goto LABEL_3;
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v56 = __CPLTaskOSLogDomain_7245();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            v57 = *(a1[4] + 16);
            *buf = 138412290;
            *&buf[4] = v57;
            _os_log_impl(&dword_1DC05A000, v56, OS_LOG_TYPE_ERROR, "%@ has no transport scope", buf, 0xCu);
          }
        }

        v58 = a1[4];
        v59 = [v58[16] scopeIdentifier];
        v60 = [CPLErrors invalidScopeErrorWithScopeIdentifier:v59];
        [v58 taskDidFinishWithError:v60];

LABEL_46:
        return;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v46 = __CPLTaskOSLogDomain_7245();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = *(a1[4] + 16);
          *buf = 138412546;
          *&buf[4] = v5;
          *&buf[12] = 2112;
          *&buf[14] = v47;
          _os_log_impl(&dword_1DC05A000, v46, OS_LOG_TYPE_DEFAULT, "Won't reshare ignored records for %@ as %@ is not available", buf, 0x16u);
        }
      }

      v45 = a1[4];
    }

    [v45 taskDidFinishWithError:0];
    goto LABEL_46;
  }

  v68 = +[CPLErrors operationCancelledError];
  [v4 taskDidFinishWithError:?];
}

void __38__CPLReshareScopeTask__doOneIteration__block_invoke_18(uint64_t a1)
{
  v2 = [*(a1 + 32) isCancelled];
  v3 = *(a1 + 32);
  if (v2)
  {
    v15 = +[CPLErrors operationCancelledError];
    [v3 taskDidFinishWithError:v15];
  }

  else
  {
    v4 = [*(a1 + 32) engineLibrary];
    v5 = [v4 transport];

    Current = CFAbsoluteTimeGetCurrent();
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = *(v8 + 128);
    v10 = *(a1 + 48);
    v11 = *(v8 + 136);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __38__CPLReshareScopeTask__doOneIteration__block_invoke_2;
    v16[3] = &unk_1E861C460;
    v16[4] = v8;
    v17 = v7;
    v19 = Current;
    v18 = *(a1 + 56);
    v12 = [v5 reshareRecordsTaskWithRecords:v17 sourceScope:v9 destinationScope:v10 transportScopeMapping:v11 completionHandler:v16];
    v13 = *(a1 + 32);
    v14 = *(v13 + 152);
    *(v13 + 152) = v12;

    [*(a1 + 32) launchTransportTask:*(*(a1 + 32) + 152) withTransportGroup:*(*(a1 + 32) + 160)];
  }
}

void __38__CPLReshareScopeTask__doOneIteration__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 144);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __38__CPLReshareScopeTask__doOneIteration__block_invoke_3;
  v11[3] = &unk_1E861B268;
  v11[4] = v5;
  v12 = v3;
  v13 = v4;
  v15 = *(a1 + 56);
  v14 = *(a1 + 48);
  v7 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7243;
  block[3] = &unk_1E861B4E0;
  v17 = v7;
  v8 = v6;
  v9 = v3;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

void __38__CPLReshareScopeTask__doOneIteration__block_invoke_3(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  *(v2 + 152) = 0;

  v4 = *(a1 + 40);
  if (v4)
  {
    if ([v4 isCPLErrorWithCode:18])
    {
      v5 = [*(a1 + 40) userInfo];
      [v5 objectForKeyedSubscript:@"CPLErrorRejectedRecordIdentifiersAndReasons"];
      v6 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

      if ([*&v6 count])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v7 = __CPLTaskOSLogDomain_7245();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            v8 = [*(a1 + 48) count];
            *buf = 134218242;
            v22 = v8;
            v23 = 2114;
            v24 = v6;
            _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "Failed to reshare %lu records - some records have been rejected: %{public}@", buf, 0x16u);
          }
        }

        v9 = *(a1 + 32);
        v10 = [*&v6 allKeys];
        [v9 _bumpIgnoredDatesOfRejectedRecords:v10];

        return;
      }
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v16 = __CPLTaskOSLogDomain_7245();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [*(a1 + 48) count];
        v18 = *(a1 + 40);
        *buf = 134218242;
        v22 = v17;
        v23 = 2112;
        v24 = v18;
        _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_ERROR, "Failed to reshare %lu records: %@", buf, 0x16u);
      }
    }

    [*(a1 + 32) taskDidFinishWithError:*(a1 + 40)];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLTaskOSLogDomain_7245();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [*(a1 + 48) count];
        v13 = CFAbsoluteTimeGetCurrent() - *(a1 + 64);
        v14 = [*(a1 + 48) allKeys];
        *buf = 134218498;
        v22 = v12;
        v23 = 2048;
        v24 = v13;
        v25 = 2114;
        v26 = v14;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "Reshared %lu records successfully in %.1fs:\n%{public}@", buf, 0x20u);
      }
    }

    v15 = *(a1 + 32);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __38__CPLReshareScopeTask__doOneIteration__block_invoke_19;
    v19[3] = &unk_1E8620848;
    v20 = *(a1 + 48);
    [v15 withThroughputReporter:v19];
    [*(a1 + 32) _bumpIgnoredDatesOfRecords:*(a1 + 56) hasResharedSomeRecords:1];
  }
}

void __38__CPLReshareScopeTask__doOneIteration__block_invoke_19(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 addCompletedWorkItemCount:objc_msgSend(v2 kindOfWork:{"count"), @"records"}];
}

- (void)_bumpIgnoredDatesOfRejectedRecords:(id)records
{
  recordsCopy = records;
  engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
  store = [engineLibrary store];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__CPLReshareScopeTask__bumpIgnoredDatesOfRejectedRecords___block_invoke;
  v11[3] = &unk_1E86205B8;
  v12 = store;
  v13 = recordsCopy;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__CPLReshareScopeTask__bumpIgnoredDatesOfRejectedRecords___block_invoke_3;
  v10[3] = &unk_1E86205E0;
  v10[4] = self;
  v7 = recordsCopy;
  v8 = store;
  v9 = [v8 performWriteTransactionWithBlock:v11 completionHandler:v10];
}

void __58__CPLReshareScopeTask__bumpIgnoredDatesOfRejectedRecords___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__CPLReshareScopeTask__bumpIgnoredDatesOfRejectedRecords___block_invoke_2;
  v4[3] = &unk_1E8620940;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [a2 do:v4];
}

void __58__CPLReshareScopeTask__bumpIgnoredDatesOfRejectedRecords___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v3 error];
    [v5 taskDidFinishWithError:v6];
  }

  else
  {
    v7 = v5[18];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__CPLReshareScopeTask__bumpIgnoredDatesOfRejectedRecords___block_invoke_4;
    v11[3] = &unk_1E861A940;
    v11[4] = v5;
    v8 = v11;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cpl_dispatch_async_block_invoke_7243;
    block[3] = &unk_1E861B4E0;
    v13 = v8;
    v9 = v7;
    v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v9, v10);
  }
}

uint64_t __58__CPLReshareScopeTask__bumpIgnoredDatesOfRejectedRecords___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) ignoredRecords];
  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:21600.0];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v20;
    while (2)
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v19 + 1) + 8 * v11);
        v18 = v12;
        v14 = [v4 setIgnoredDate:v5 forRecordWithScopedIdentifier:v13 error:&v18];
        v9 = v18;

        if (!v14)
        {

          if (a2)
          {
            v15 = v9;
            v16 = 0;
            *a2 = v9;
          }

          else
          {
            v16 = 0;
          }

          goto LABEL_15;
        }

        ++v11;
        v12 = v9;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

  v16 = 1;
LABEL_15:

  return v16;
}

- (void)_bumpIgnoredDatesOfRecords:(id)records hasResharedSomeRecords:(BOOL)someRecords
{
  recordsCopy = records;
  engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
  store = [engineLibrary store];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__CPLReshareScopeTask__bumpIgnoredDatesOfRecords_hasResharedSomeRecords___block_invoke;
  v13[3] = &unk_1E861C438;
  v14 = store;
  v15 = recordsCopy;
  someRecordsCopy = someRecords;
  selfCopy = self;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__CPLReshareScopeTask__bumpIgnoredDatesOfRecords_hasResharedSomeRecords___block_invoke_4;
  v12[3] = &unk_1E86205E0;
  v12[4] = self;
  v9 = recordsCopy;
  v10 = store;
  v11 = [v10 performWriteTransactionWithBlock:v13 completionHandler:v12];
}

void __73__CPLReshareScopeTask__bumpIgnoredDatesOfRecords_hasResharedSomeRecords___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__CPLReshareScopeTask__bumpIgnoredDatesOfRecords_hasResharedSomeRecords___block_invoke_2;
  v10[3] = &unk_1E8620940;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  [v3 do:v10];
  if (*(a1 + 56) == 1)
  {
    v4 = *(a1 + 48);
    if ((*(v4 + 168) & 1) == 0)
    {
      *(v4 + 168) = 1;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __73__CPLReshareScopeTask__bumpIgnoredDatesOfRecords_hasResharedSomeRecords___block_invoke_3;
      v7[3] = &unk_1E8620940;
      v5 = *(a1 + 32);
      v6 = *(a1 + 48);
      v8 = v5;
      v9 = v6;
      [v3 do:v7];
    }
  }
}

void __73__CPLReshareScopeTask__bumpIgnoredDatesOfRecords_hasResharedSomeRecords___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v3 error];
    [v5 taskDidFinishWithError:v6];
  }

  else
  {
    v7 = v5[18];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __73__CPLReshareScopeTask__bumpIgnoredDatesOfRecords_hasResharedSomeRecords___block_invoke_5;
    v11[3] = &unk_1E861A940;
    v11[4] = v5;
    v8 = v11;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cpl_dispatch_async_block_invoke_7243;
    block[3] = &unk_1E861B4E0;
    v13 = v8;
    v9 = v7;
    v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v9, v10);
  }
}

uint64_t __73__CPLReshareScopeTask__bumpIgnoredDatesOfRecords_hasResharedSomeRecords___block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) ignoredRecords];
  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:7200.0];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = *(a1 + 40);
  v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v18 = a2;
    v8 = 0;
    v9 = *v22;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [*(*(&v21 + 1) + 8 * v10) record];
        v13 = [v12 scopedIdentifier];
        v20 = v11;
        v14 = [v4 setIgnoredDate:v5 forRecordWithScopedIdentifier:v13 error:&v20];
        v8 = v20;

        if (!v14)
        {

          if (v18)
          {
            v15 = v8;
            v16 = 0;
            *v18 = v8;
          }

          else
          {
            v16 = 0;
          }

          goto LABEL_15;
        }

        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

  v16 = 1;
LABEL_15:

  return v16;
}

uint64_t __73__CPLReshareScopeTask__bumpIgnoredDatesOfRecords_hasResharedSomeRecords___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) scopes];
  if ([v4 setScopeHasChangesToPullFromTransport:*(*(a1 + 40) + 128) error:a2])
  {
    v5 = [*(a1 + 40) scope];
    v6 = [v4 setScopeHasChangesToPullFromTransport:v5 error:a2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CPLReshareScopeTask)initWithEngineLibrary:(id)library session:(id)session clientCacheIdentifier:(id)identifier scope:(id)scope transportScope:(id)transportScope
{
  scopeCopy = scope;
  transportScopeCopy = transportScope;
  v26.receiver = self;
  v26.super_class = CPLReshareScopeTask;
  v14 = [(CPLEngineScopedTask *)&v26 initWithEngineLibrary:library session:session clientCacheIdentifier:identifier scope:scopeCopy transportScope:transportScopeCopy];
  if (v14)
  {
    v15 = _CPLCutoffDate();
    cutoffDate = v14->_cutoffDate;
    v14->_cutoffDate = v15;

    v17 = CPLCopyDefaultSerialQueueAttributes();
    v18 = dispatch_queue_create("engine.sync.reshare", v17);
    queue = v14->_queue;
    v14->_queue = v18;

    v20 = [CPLTransportScopeMapping alloc];
    engineLibrary = [(CPLEngineSyncTask *)v14 engineLibrary];
    transport = [engineLibrary transport];
    v23 = [(CPLTransportScopeMapping *)v20 initWithTranslator:transport];
    transportScopeMapping = v14->_transportScopeMapping;
    v14->_transportScopeMapping = v23;

    [(CPLTransportScopeMapping *)v14->_transportScopeMapping addTransportScope:transportScopeCopy forScope:scopeCopy];
  }

  return v14;
}

@end