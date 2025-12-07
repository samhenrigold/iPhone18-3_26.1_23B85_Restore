@interface FCModifyRecordsCommand
+ (id)desiredKeys;
- (BOOL)canCoalesceWithCommand:(id)command;
- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord;
- (FCModifyRecordsCommand)init;
- (FCModifyRecordsCommand)initWithCoder:(id)coder;
- (FCModifyRecordsCommand)initWithLocalRecords:(id)records merge:(BOOL)merge;
- (FCModifyRecordsCommand)initWithLocalRecordsGenerator:(id)generator merge:(BOOL)merge;
- (NSArray)createdOrModifiedRecordIDs;
- (void)_didSaveRecords:(uint64_t)records;
- (void)applyToRemoteRecords:(id)records remoteDeletions:(id)deletions;
- (void)coalesceWithCommand:(id)command;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context delegate:(id)delegate qualityOfService:(int64_t)service;
- (void)handleLocalRecordsFromStream:(void *)stream internalPrivateDataContext:(void *)context delegate:(uint64_t)delegate qualityOfService:;
- (void)localRecords;
@end

@implementation FCModifyRecordsCommand

+ (id)desiredKeys
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "+[FCModifyRecordsCommand desiredKeys]";
    v10 = 2080;
    v11 = "FCModifyRecordsCommand.m";
    v12 = 1024;
    v13 = 50;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "+[FCModifyRecordsCommand desiredKeys]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCModifyRecordsCommand)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCModifyRecordsCommand init]";
    v10 = 2080;
    v11 = "FCModifyRecordsCommand.m";
    v12 = 1024;
    v13 = 55;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCModifyRecordsCommand init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCModifyRecordsCommand)initWithLocalRecordsGenerator:(id)generator merge:(BOOL)merge
{
  generatorCopy = generator;
  v11.receiver = self;
  v11.super_class = FCModifyRecordsCommand;
  v7 = [(FCModifyRecordsCommand *)&v11 init];
  if (v7)
  {
    v8 = [generatorCopy copy];
    localRecordsGenerator = v7->_localRecordsGenerator;
    v7->_localRecordsGenerator = v8;

    v7->_merge = merge;
  }

  return v7;
}

- (FCModifyRecordsCommand)initWithLocalRecords:(id)records merge:(BOOL)merge
{
  mergeCopy = merge;
  v6 = [records copy];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__FCModifyRecordsCommand_initWithLocalRecords_merge___block_invoke;
  aBlock[3] = &unk_1E7C3B578;
  v12 = v6;
  v7 = v6;
  v8 = _Block_copy(aBlock);
  v9 = [(FCModifyRecordsCommand *)self initWithLocalRecordsGenerator:v8 merge:mergeCopy];

  return v9;
}

- (FCModifyRecordsCommand)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"localRecords"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merge"];

  v10 = -[FCModifyRecordsCommand initWithLocalRecords:merge:](self, "initWithLocalRecords:merge:", v8, [v9 BOOLValue]);
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  localRecords = [(FCModifyRecordsCommand *)self localRecords];
  [coderCopy encodeObject:localRecords forKey:@"localRecords"];

  if (self)
  {
    merge = self->_merge;
  }

  else
  {
    merge = 0;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:merge];
  [coderCopy encodeObject:v6 forKey:@"merge"];
}

- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord
{
  v21 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  remoteRecordCopy = remoteRecord;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v14 = "[FCModifyRecordsCommand mergeLocalRecord:withRemoteRecord:]";
    v15 = 2080;
    v16 = "FCModifyRecordsCommand.m";
    v17 = 1024;
    v18 = 106;
    v19 = 2114;
    v20 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v8 = MEMORY[0x1E695DF30];
  v9 = *MEMORY[0x1E695D930];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCModifyRecordsCommand mergeLocalRecord:withRemoteRecord:]"];
  v11 = [v8 exceptionWithName:v9 reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

- (void)localRecords
{
  if (self)
  {
    selfCopy = self;
    v3 = self[3];
    if (!v3)
    {
      v3 = self[2];
      if (v3)
      {
        v4 = v3[2];
        v5 = v3;
        v6 = v4();
        v7 = selfCopy[3];
        selfCopy[3] = v6;

        v3 = selfCopy[3];
      }
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)executeWithContext:(id)context delegate:(id)delegate qualityOfService:(int64_t)service
{
  v25 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  delegateCopy = delegate;
  networkReachability = [contextCopy networkReachability];
  isCloudKitReachable = [networkReachability isCloudKitReachable];

  if (isCloudKitReachable)
  {
    internalPrivateDataContext = [contextCopy internalPrivateDataContext];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__FCModifyRecordsCommand_executeWithContext_delegate_qualityOfService___block_invoke;
    v17[3] = &unk_1E7C3FE20;
    v17[4] = self;
    v18 = contextCopy;
    v19 = delegateCopy;
    serviceCopy = service;
    [internalPrivateDataContext prepareRecordZonesForUseWithCompletionHandler:v17];
  }

  else
  {
    v13 = FCCommandQueueLog;
    if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138543618;
      v22 = v16;
      v23 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> will not execute because CloudKit is not reachable", buf, 0x16u);
    }

    [delegateCopy command:self didFinishWithStatus:1];
  }
}

void __71__FCModifyRecordsCommand_executeWithContext_delegate_qualityOfService___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = FCCommandQueueLog;
    if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_ERROR))
    {
      v13 = v4;
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = *(a1 + 32);
      v17 = 138543874;
      v18 = v15;
      v19 = 2048;
      v20 = v16;
      v21 = 2114;
      v22 = v3;
      _os_log_error_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_ERROR, "<%{public}@ %p> failed to prepare zones for use with error: %{public}@", &v17, 0x20u);
    }

    [*(a1 + 48) command:*(a1 + 32) didFinishWithStatus:{objc_msgSend(*(a1 + 32), "statusForCloudKitError:", v3)}];
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E695DEC8]);
    v6 = [(FCModifyRecordsCommand *)*(a1 + 32) localRecords];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }

    v9 = [v5 initWithArray:v8 copyItems:1];

    v10 = [[FCArrayStream alloc] initWithArray:v9];
    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) internalPrivateDataContext];
    [(FCModifyRecordsCommand *)v11 handleLocalRecordsFromStream:v10 internalPrivateDataContext:v12 delegate:*(a1 + 48) qualityOfService:*(a1 + 56)];
  }
}

- (void)handleLocalRecordsFromStream:(void *)stream internalPrivateDataContext:(void *)context delegate:(uint64_t)delegate qualityOfService:
{
  v9 = a2;
  streamCopy = stream;
  contextCopy = context;
  if (self)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __108__FCModifyRecordsCommand_handleLocalRecordsFromStream_internalPrivateDataContext_delegate_qualityOfService___block_invoke;
    aBlock[3] = &unk_1E7C3FE90;
    aBlock[4] = self;
    v17 = streamCopy;
    delegateCopy = delegate;
    v12 = v9;
    v18 = v12;
    v19 = contextCopy;
    v13 = _Block_copy(aBlock);
    v14 = FCDispatchQueueForQualityOfService(delegate);
    v15 = [v12 fetchMoreResultsWithLimit:100 qualityOfService:delegate callbackQueue:v14 completionHandler:v13];
  }
}

- (BOOL)canCoalesceWithCommand:(id)command
{
  commandCopy = command;
  objc_opt_class();
  if (commandCopy && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = commandCopy;
    v6 = v5[8];
    if (self)
    {
      if (v6 == self->_merge)
      {
        if (v5[8])
        {
          v7 = [v5 isMemberOfClass:objc_opt_class()];
        }

        else
        {
          v7 = 1;
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = v6 ^ 1;
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return v7;
}

- (void)coalesceWithCommand:(id)command
{
  v57 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  objc_opt_class();
  v40 = commandCopy;
  if (commandCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = commandCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  localRecords = [(FCModifyRecordsCommand *)self localRecords];
  v8 = [localRecords fc_dictionaryWithKeySelector:sel_recordID];

  v38 = v6;
  localRecords2 = [(FCModifyRecordsCommand *)v6 localRecords];
  v10 = [localRecords2 fc_dictionaryWithKeySelector:sel_recordID];

  v11 = [MEMORY[0x1E695DFA8] set];
  allKeys = [v8 allKeys];
  v13 = allKeys;
  v14 = MEMORY[0x1E695E0F0];
  if (allKeys)
  {
    v15 = allKeys;
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  [v11 addObjectsFromArray:{v15, v38}];

  allKeys2 = [v10 allKeys];
  v17 = allKeys2;
  if (allKeys2)
  {
    v18 = allKeys2;
  }

  else
  {
    v18 = v14;
  }

  [v11 addObjectsFromArray:v18];

  array = [MEMORY[0x1E695DF70] array];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v20 = v11;
  v21 = [v20 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v21)
  {
    v22 = v21;
    selfCopy = self;
    v46 = *v52;
    v43 = v10;
    v44 = v8;
    v41 = v20;
    v42 = array;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v52 != v46)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v51 + 1) + 8 * i);
        v25 = [v8 objectForKey:v24];
        v26 = [v10 objectForKey:v24];
        v27 = v26;
        if (v25)
        {
          v28 = v26 == 0;
        }

        else
        {
          v28 = 1;
        }

        if (!v28)
        {
          if (self && self->_merge)
          {
            v29 = v26;

            v25 = v29;
LABEL_36:
            [array addObject:v29];
            goto LABEL_38;
          }

          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          changedKeys = [v26 changedKeys];
          v31 = [changedKeys countByEnumeratingWithState:&v47 objects:v55 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v48;
            do
            {
              for (j = 0; j != v32; ++j)
              {
                if (*v48 != v33)
                {
                  objc_enumerationMutation(changedKeys);
                }

                v35 = *(*(&v47 + 1) + 8 * j);
                v36 = [v27 objectForKeyedSubscript:v35];
                [v25 setObject:v36 forKeyedSubscript:v35];
              }

              v32 = [changedKeys countByEnumeratingWithState:&v47 objects:v55 count:16];
            }

            while (v32);
          }

          v8 = v44;
          self = selfCopy;
          array = v42;
          v10 = v43;
          v20 = v41;
        }

        if (v25)
        {
          v29 = v25;
        }

        else
        {
          v29 = v27;
        }

        if (v25 | v27)
        {
          goto LABEL_36;
        }

        v25 = 0;
LABEL_38:
      }

      v22 = [v20 countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v22);
  }

  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v37, array, 24);
  }
}

- (void)applyToRemoteRecords:(id)records remoteDeletions:(id)deletions
{
  v41 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  deletionsCopy = deletions;
  localRecords = [(FCModifyRecordsCommand *)self localRecords];
  v8 = [localRecords fc_dictionaryWithKeyBlock:&__block_literal_global_32_0];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = recordsCopy;
  v10 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
    v13 = 0x1EDB0F000uLL;
    v28 = v9;
    v29 = v8;
    v27 = *v36;
    do
    {
      v14 = 0;
      v30 = v11;
      do
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v35 + 1) + 8 * v14);
        v16 = [v8 objectForKeyedSubscript:v15];
        if (v16)
        {
          v17 = [v9 objectForKeyedSubscript:v15];
          if (self && *(&self->super.super.isa + *(v13 + 3436)) == 1)
          {
            [(FCModifyRecordsCommand *)self mergeLocalRecord:v16 withRemoteRecord:v17];
          }

          else
          {
            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            changedKeys = [v16 changedKeys];
            v19 = [changedKeys countByEnumeratingWithState:&v31 objects:v39 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v32;
              do
              {
                for (i = 0; i != v20; ++i)
                {
                  if (*v32 != v21)
                  {
                    objc_enumerationMutation(changedKeys);
                  }

                  v23 = *(*(&v31 + 1) + 8 * i);
                  v24 = [v16 objectForKeyedSubscript:v23];
                  [v17 setObject:v24 forKeyedSubscript:v23];
                }

                v20 = [changedKeys countByEnumeratingWithState:&v31 objects:v39 count:16];
              }

              while (v20);
            }

            v9 = v28;
            v8 = v29;
            v12 = v27;
            v11 = v30;
            v13 = 0x1EDB0F000;
          }
        }

        ++v14;
      }

      while (v14 != v11);
      v11 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v11);
  }

  allKeys = [v8 allKeys];
  [deletionsCopy fc_removeObjectsFromArray:allKeys];
}

- (NSArray)createdOrModifiedRecordIDs
{
  localRecords = [(FCModifyRecordsCommand *)self localRecords];
  v3 = [localRecords fc_arrayByTransformingWithBlock:&__block_literal_global_35_0];

  return v3;
}

void __108__FCModifyRecordsCommand_handleLocalRecordsFromStream_internalPrivateDataContext_delegate_qualityOfService___block_invoke(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 64);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v41 = __108__FCModifyRecordsCommand_handleLocalRecordsFromStream_internalPrivateDataContext_delegate_qualityOfService___block_invoke_2;
  v42 = &unk_1E7C3FE68;
  v7 = *(a1 + 48);
  v38 = *(a1 + 32);
  v8 = v38.i64[1];
  v9 = *(a1 + 56);
  v10.i64[0] = v7;
  v10.i64[1] = v9;
  v11 = vzip2q_s64(v38, v10);
  v10.i64[1] = v38.i64[0];
  v44 = v11;
  v43 = v10;
  v45 = *(a1 + 64);
  v12 = a2;
  v13 = v5;
  v14 = v40;
  if (v4)
  {
    if ([v12 count])
    {
      v15 = [v13 privateDatabase];
      if (v4[8] == 1)
      {
        v16 = [v12 fc_dictionaryWithKeySelector:sel_recordID];
        v17 = objc_alloc_init(FCCKPrivateFetchRecordsOperation);
        v18 = [v16 allKeys];
        [(FCCKPrivateFetchRecordsOperation *)v17 setRecordIDs:v18];

        [(FCOperation *)v17 setQualityOfService:v6];
        if (v6 == 9)
        {
          v19 = -1;
        }

        else
        {
          v19 = v6 == 33 || v6 == 25;
        }

        [(FCOperation *)v17 setRelativePriority:v19, v15];
        v25 = [objc_opt_class() desiredKeys];
        [(FCCKPrivateFetchRecordsOperation *)v17 setDesiredKeys:v25];

        v26 = [(FCOperation *)v17 operationID];
        v27 = FCCommandQueueLog;
        if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
        {
          v28 = v27;
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          *buf = 138543874;
          *&buf[4] = v30;
          *&buf[12] = 2048;
          *&buf[14] = v4;
          *&buf[22] = 2114;
          v47 = v26;
          _os_log_impl(&dword_1B63EF000, v28, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> will perform fetch operation, operationID=%{public}@", buf, 0x20u);
        }

        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __107__FCModifyRecordsCommand_handleBatchOfLocalRecords_internalPrivateDataContext_qualityOfService_completion___block_invoke;
        v47 = &unk_1E7C3FEE0;
        v48 = v16;
        v49 = v4;
        v52 = v6;
        v51 = v14;
        v15 = v39;
        v31 = v39;
        v50 = v31;
        v32 = v16;
        [(FCCKPrivateFetchRecordsOperation *)v17 setFetchRecordsCompletionBlock:buf];
        [(FCCKPrivateDatabase *)v31 addOperation:v17];
      }

      else
      {
        v17 = objc_alloc_init(FCCKPrivateSaveRecordsOperation);
        [(FCCKPrivateFetchRecordsOperation *)v17 setRecordsToSave:v12];
        [(FCOperation *)v17 setQualityOfService:v6];
        if (v6 == 9)
        {
          v24 = -1;
        }

        else
        {
          v24 = v6 == 33 || v6 == 25;
        }

        [(FCOperation *)v17 setRelativePriority:v24, v38.i64[0]];
        [(FCCKPrivateFetchRecordsOperation *)v17 setSavePolicy:1];
        v33 = [(FCOperation *)v17 operationID];
        v34 = FCCommandQueueLog;
        if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
        {
          v35 = v34;
          v36 = objc_opt_class();
          v37 = NSStringFromClass(v36);
          *buf = 138543874;
          *&buf[4] = v37;
          *&buf[12] = 2048;
          *&buf[14] = v4;
          *&buf[22] = 2114;
          v47 = v33;
          _os_log_impl(&dword_1B63EF000, v35, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> will perform save operation, operationID=%{public}@", buf, 0x20u);
        }

        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __107__FCModifyRecordsCommand_handleBatchOfLocalRecords_internalPrivateDataContext_qualityOfService_completion___block_invoke_42;
        v47 = &unk_1E7C3FEB8;
        v48 = v4;
        v49 = v33;
        v50 = v14;
        v26 = v33;
        [(FCCKPrivateFetchRecordsOperation *)v17 setSaveRecordsCompletionBlock:buf];
        [(FCCKPrivateDatabase *)v15 addOperation:v17];
      }
    }

    else
    {
      v20 = FCCommandQueueLog;
      if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        *buf = 138543618;
        *&buf[4] = v23;
        *&buf[12] = 2048;
        *&buf[14] = v4;
        _os_log_impl(&dword_1B63EF000, v21, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> skipping work because CloudKit is not available", buf, 0x16u);
      }

      v41(v14, 0);
    }
  }
}

void __108__FCModifyRecordsCommand_handleLocalRecordsFromStream_internalPrivateDataContext_delegate_qualityOfService___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2 || ([*(a1 + 32) isFinished] & 1) != 0)
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 40);

    [v4 command:v5 didFinishWithStatus:a2];
  }

  else
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);

    [(FCModifyRecordsCommand *)v6 handleLocalRecordsFromStream:v7 internalPrivateDataContext:v8 delegate:v9 qualityOfService:v10];
  }
}

void __107__FCModifyRecordsCommand_handleBatchOfLocalRecords_internalPrivateDataContext_qualityOfService_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6 || [v6 fc_isCKUnknownItemError])
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v9 = *(a1 + 32);
    v10 = [v9 countByEnumeratingWithState:&v51 objects:v63 count:16];
    if (!v10)
    {
      goto LABEL_15;
    }

    v11 = v10;
    v12 = *v52;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v52 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v51 + 1) + 8 * i);
        v15 = [*(a1 + 32) objectForKey:v14];
        v16 = [v5 objectForKey:v14];
        if (v16)
        {
          if (![*(a1 + 40) mergeLocalRecord:v15 withRemoteRecord:v16])
          {
            goto LABEL_13;
          }

          v17 = v8;
          v18 = v16;
        }

        else
        {
          v17 = v8;
          v18 = v15;
        }

        [v17 addObject:v18];
LABEL_13:
      }

      v11 = [v9 countByEnumeratingWithState:&v51 objects:v63 count:16];
      if (!v11)
      {
LABEL_15:

        v19 = FCCommandQueueLog;
        if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          v23 = *(a1 + 40);
          v24 = [v5 count];
          v25 = [v8 count];
          *buf = 138544130;
          v56 = v22;
          v57 = 2048;
          v58 = v23;
          v59 = 2048;
          v60 = v24;
          v61 = 2048;
          v62 = v25;
          _os_log_impl(&dword_1B63EF000, v20, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> fetched %lu records, and has %lu records to save after merging", buf, 0x2Au);
        }

        if ([v8 count] == 1)
        {
          v26 = FCCommandQueueLog;
          if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
          {
            v27 = v26;
            v28 = objc_opt_class();
            v29 = NSStringFromClass(v28);
            v30 = *(a1 + 40);
            v31 = [v8 firstObject];
            v32 = [v31 changedKeys];
            *buf = 138543874;
            v56 = v29;
            v57 = 2048;
            v58 = v30;
            v59 = 2114;
            v60 = v32;
            _os_log_impl(&dword_1B63EF000, v27, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> will save record with changed keys: %{public}@", buf, 0x20u);
          }
        }

        if ([v8 count])
        {
          v33 = objc_alloc_init(FCCKPrivateSaveRecordsOperation);
          [(FCCKPrivateSaveRecordsOperation *)v33 setRecordsToSave:v8];
          [(FCOperation *)v33 setQualityOfService:*(a1 + 64)];
          v34 = *(a1 + 64);
          if (v34 == 9)
          {
            v35 = -1;
          }

          else
          {
            v35 = v34 == 33 || v34 == 25;
          }

          [(FCOperation *)v33 setRelativePriority:v35];
          [(FCCKPrivateSaveRecordsOperation *)v33 setSavePolicy:1];
          v37 = [(FCOperation *)v33 operationID];
          v38 = FCCommandQueueLog;
          if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
          {
            v39 = v38;
            v40 = objc_opt_class();
            v41 = NSStringFromClass(v40);
            v42 = *(a1 + 40);
            *buf = 138543874;
            v56 = v41;
            v57 = 2048;
            v58 = v42;
            v59 = 2114;
            v60 = v37;
            _os_log_impl(&dword_1B63EF000, v39, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> will perform save operation, operationID=%{public}@", buf, 0x20u);
          }

          v48[0] = MEMORY[0x1E69E9820];
          v48[1] = 3221225472;
          v48[2] = __107__FCModifyRecordsCommand_handleBatchOfLocalRecords_internalPrivateDataContext_qualityOfService_completion___block_invoke_40;
          v48[3] = &unk_1E7C3FEB8;
          v48[4] = *(a1 + 40);
          v49 = v37;
          v50 = *(a1 + 56);
          v43 = v37;
          [(FCCKPrivateSaveRecordsOperation *)v33 setSaveRecordsCompletionBlock:v48];
          [(FCCKPrivateDatabase *)*(a1 + 48) addOperation:v33];
        }

        else
        {
          (*(*(a1 + 56) + 16))();
        }

        goto LABEL_35;
      }
    }
  }

  v36 = FCCommandQueueLog;
  if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_ERROR))
  {
    v44 = v36;
    v45 = objc_opt_class();
    v46 = NSStringFromClass(v45);
    v47 = *(a1 + 40);
    *buf = 138543874;
    v56 = v46;
    v57 = 2048;
    v58 = v47;
    v59 = 2114;
    v60 = v7;
    _os_log_error_impl(&dword_1B63EF000, v44, OS_LOG_TYPE_ERROR, "<%{public}@ %p> encountered error fetching records: %{public}@", buf, 0x20u);
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), [*(a1 + 40) statusForCloudKitError:v7]);
LABEL_35:
}

void __107__FCModifyRecordsCommand_handleBatchOfLocalRecords_internalPrivateDataContext_qualityOfService_completion___block_invoke_40(uint64_t *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = FCCommandQueueLog;
    if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = a1[4];
      v20 = 138543874;
      v21 = v10;
      v22 = 2048;
      v23 = v11;
      v24 = 2114;
      v25 = v6;
      _os_log_error_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_ERROR, "<%{public}@ %p> encountered error saving records after merge: %{public}@", &v20, 0x20u);
    }
  }

  else
  {
    [(FCModifyRecordsCommand *)a1[4] _didSaveRecords:v5];
  }

  v12 = [a1[4] statusForCloudKitError:v6];
  v13 = FCCommandQueueLog;
  if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = a1[4];
    v18 = a1[5];
    v19 = FCCommandStatusDescription(v12);
    v20 = 138544130;
    v21 = v16;
    v22 = 2048;
    v23 = v17;
    v24 = 2114;
    v25 = v18;
    v26 = 2114;
    v27 = v19;
    _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> did perform save operation, operationID=%{public}@, status=%{public}@", &v20, 0x2Au);
  }

  (*(a1[6] + 16))(a1[6], [a1[4] statusForCloudKitError:v6]);
}

- (void)_didSaveRecords:(uint64_t)records
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (records)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v6 = [bundleIdentifier isEqualToString:@"com.apple.news"];

    if ((v6 & 1) == 0)
    {
      date = [MEMORY[0x1E695DF00] date];
      v8 = MEMORY[0x1E695DFD8];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __42__FCModifyRecordsCommand__didSaveRecords___block_invoke_2;
      v20[3] = &unk_1E7C371F8;
      v21 = v3;
      v9 = [v8 fc_set:v20];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v17;
        do
        {
          v13 = 0;
          do
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = FCZoneLastModifiedExternallySharedPreferenceKey(*(*(&v16 + 1) + 8 * v13));
            v15 = NewsCoreUserDefaults();
            [v15 setObject:date forKey:v14];

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v16 objects:v22 count:16];
        }

        while (v11);
      }
    }
  }
}

void __107__FCModifyRecordsCommand_handleBatchOfLocalRecords_internalPrivateDataContext_qualityOfService_completion___block_invoke_42(uint64_t *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = FCCommandQueueLog;
    if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = a1[4];
      v20 = 138543874;
      v21 = v10;
      v22 = 2048;
      v23 = v11;
      v24 = 2114;
      v25 = v6;
      _os_log_error_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_ERROR, "<%{public}@ %p> encountered error saving records: %{public}@", &v20, 0x20u);
    }
  }

  else
  {
    [(FCModifyRecordsCommand *)a1[4] _didSaveRecords:v5];
  }

  v12 = [a1[4] statusForCloudKitError:v6];
  v13 = FCCommandQueueLog;
  if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = a1[4];
    v18 = a1[5];
    v19 = FCCommandStatusDescription(v12);
    v20 = 138544130;
    v21 = v16;
    v22 = 2048;
    v23 = v17;
    v24 = 2114;
    v25 = v18;
    v26 = 2114;
    v27 = v19;
    _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> did perform save operation, operationID=%{public}@, status=%{public}@", &v20, 0x2Au);
  }

  (*(a1[6] + 16))();
}

void __42__FCModifyRecordsCommand__didSaveRecords___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * v8) recordID];
        v10 = [v9 zoneID];
        v11 = [v10 zoneName];
        [v3 addObject:v11];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

@end