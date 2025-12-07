@interface CPLSharedBatchStorage
- (BOOL)_keepIgnoredRecord:(id)record shadowingRecord:(id)shadowingRecord inScope:(id)scope error:(id *)error;
- (BOOL)_transferIgnoredRecordToTransientPullRepository:(id)repository error:(id *)error;
- (BOOL)addCloudScopedIdentifier:(id)identifier forLocalScopedIdentifier:(id)scopedIdentifier isFinal:(BOOL)final direction:(unint64_t)direction error:(id *)error;
- (BOOL)hasChangesInScopeWithIdentifier:(id)identifier;
- (BOOL)isRecordWithScopedIdentifierStashed:(id)stashed;
- (BOOL)removeChange:(id)change error:(id *)error;
- (BOOL)stashChange:(id)change error:(id *)error;
- (CPLSharedBatchStorage)initWithTransientRepository:(id)repository scope:(id)scope sharedScope:(id)sharedScope merger:(id)merger;
- (id)_allChangesMatchingChangeType:(unint64_t)type enumerator:(id)enumerator;
- (id)_correctPrivateScopedIdentifierForSharedScopedIdentifier:(id)identifier currentPrivateScopedIdentifier:(id)scopedIdentifier;
- (id)_mergedRecordWithPrivateChange:(id)change sharedScopedIdentifier:(id *)identifier;
- (id)_mergedRecordWithSharedChange:(id)change target:(id)target;
- (id)_privateScopedIdentifierForSharedScopedIdentifier:(id)identifier;
- (id)_remapSharedRecord:(id)record target:(id)target;
- (id)_sharedRecordAsPrivateRecord:(id)record target:(id)target;
- (id)_targetForPrivateScopedIdentifier:(id)identifier;
- (id)_targetForSharedScopedIdentifier:(id)identifier;
- (id)_unionEnumerationWithPrivateRecordEnumeratorGenerator:(id)generator sharedRecordGenerator:(id)recordGenerator;
- (id)_updatePrivateScopedIdentifierForUnknownTarget:(id)target;
- (id)allChangesWithClass:(Class)class relatedScopedIdentifier:(id)identifier;
- (id)allChangesWithClass:(Class)class scopeIdentifier:(id)identifier changeType:(unint64_t)type;
- (id)allChangesWithClass:(Class)class scopeIdentifier:(id)identifier trashed:(BOOL)trashed;
- (id)allChangesWithClass:(Class)class secondaryScopedIdentifier:(id)identifier;
- (id)allChangesWithScopeIdentifier:(id)identifier;
- (id)allNonDeletedChangesWithClass:(Class)class scopeIdentifier:(id)identifier;
- (id)changeWithScopedIdentifier:(id)identifier;
- (id)cloudScopedIdentifierForLocalScopedIdentifier:(id)identifier isFinal:(BOOL *)final;
- (id)firstAvailableCloudScopedIdentifierForProposedCloudScopedIdentifier:(id)identifier;
- (id)localScopedIdentifierForCloudScopedIdentifier:(id)identifier isFinal:(BOOL *)final;
- (id)setupCloudScopedIdentifier:(id)identifier forLocalScopedIdentifier:(id)scopedIdentifier isFinal:(BOOL)final direction:(unint64_t)direction error:(id *)error;
- (unint64_t)effectiveResourceSizeToUploadForUploadIdentifier:(id)identifier;
- (void)beginExtractingBatch;
- (void)cleanupAfterExtractingBatch;
@end

@implementation CPLSharedBatchStorage

- (id)setupCloudScopedIdentifier:(id)identifier forLocalScopedIdentifier:(id)scopedIdentifier isFinal:(BOOL)final direction:(unint64_t)direction error:(id *)error
{
  identifierCopy = identifier;
  scopedIdentifierCopy = scopedIdentifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
  v14 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v13 lineNumber:984 description:{@"%@ should not be used here", v14}];

  abort();
}

- (id)localScopedIdentifierForCloudScopedIdentifier:(id)identifier isFinal:(BOOL *)final
{
  if (final)
  {
    *final = 1;
  }

  return [(CPLSharedBatchStorage *)self _privateScopedIdentifierForSharedScopedIdentifier:identifier];
}

- (id)firstAvailableCloudScopedIdentifierForProposedCloudScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
  v8 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v7 lineNumber:968 description:{@"%@ should not be used here", v8}];

  abort();
}

- (id)cloudScopedIdentifierForLocalScopedIdentifier:(id)identifier isFinal:(BOOL *)final
{
  identifierCopy = identifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
  v9 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v8 lineNumber:964 description:{@"%@ should not be used here", v9}];

  abort();
}

- (BOOL)addCloudScopedIdentifier:(id)identifier forLocalScopedIdentifier:(id)scopedIdentifier isFinal:(BOOL)final direction:(unint64_t)direction error:(id *)error
{
  identifierCopy = identifier;
  scopedIdentifierCopy = scopedIdentifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
  v14 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v13 lineNumber:960 description:{@"%@ should not be used here", v14}];

  abort();
}

- (void)cleanupAfterExtractingBatch
{
  v12 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLStorageOSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      scope = [(CPLEngineTransientRepositoryBatchStorage *)self scope];
      sharedScope = self->_sharedScope;
      *buf = 138412546;
      v9 = scope;
      v10 = 2112;
      v11 = sharedScope;
      _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEBUG, "Finished extracting batch for %@/%@", buf, 0x16u);
    }
  }

  alreadyProcessedChanges = self->_alreadyProcessedChanges;
  self->_alreadyProcessedChanges = 0;

  v7.receiver = self;
  v7.super_class = CPLSharedBatchStorage;
  [(CPLEngineTransientRepositoryBatchStorage *)&v7 cleanupAfterExtractingBatch];
}

- (void)beginExtractingBatch
{
  v13 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CPLSharedBatchStorage;
  [(CPLEngineTransientRepositoryBatchStorage *)&v8 beginExtractingBatch];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  alreadyProcessedChanges = self->_alreadyProcessedChanges;
  self->_alreadyProcessedChanges = v3;

  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLStorageOSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      scope = [(CPLEngineTransientRepositoryBatchStorage *)self scope];
      sharedScope = self->_sharedScope;
      *buf = 138412546;
      v10 = scope;
      v11 = 2112;
      v12 = sharedScope;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "Begin extracting batch for %@/%@", buf, 0x16u);
    }
  }
}

- (BOOL)removeChange:(id)change error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v34.receiver = self;
  v34.super_class = CPLSharedBatchStorage;
  if ([(CPLEngineTransientRepositoryBatchStorage *)&v34 removeChange:changeCopy error:error])
  {
    scopedIdentifier = [changeCopy scopedIdentifier];
    v9 = [(CPLSharedBatchStorage *)self _targetForPrivateScopedIdentifier:scopedIdentifier];

    otherScopedIdentifier = [v9 otherScopedIdentifier];
    if (!otherScopedIdentifier)
    {
      v17 = 1;
LABEL_23:

      goto LABEL_24;
    }

    _ignoredRecord = [changeCopy _ignoredRecord];
    if (_ignoredRecord)
    {
      isMasterChange = [changeCopy isMasterChange];
      scopedIdentifier2 = [_ignoredRecord scopedIdentifier];
      v14 = scopedIdentifier2;
      if (isMasterChange)
      {
        scopedIdentifier3 = [v9 scopedIdentifier];
        v16 = [v14 isEqual:scopedIdentifier3];

        if ((v16 & 1) == 0)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v24 = __CPLStorageOSLogDomain();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              scopedIdentifier4 = [v9 scopedIdentifier];
              *buf = 138412546;
              v36 = _ignoredRecord;
              v37 = 2112;
              v38 = scopedIdentifier4;
              _os_log_impl(&dword_1DC05A000, v24, OS_LOG_TYPE_ERROR, "%@ is incorrectly ignored for %@", buf, 0x16u);
            }
          }

          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
          scopedIdentifier5 = [v9 scopedIdentifier];
          [currentHandler handleFailureInMethod:a2 object:self file:v27 lineNumber:918 description:{@"%@ is incorrectly ignored for %@", _ignoredRecord, scopedIdentifier5}];

          abort();
        }

        if ([v9 targetState] == 1)
        {
          if (![(CPLSharedBatchStorage *)self _transferIgnoredRecordToTransientPullRepository:_ignoredRecord error:error])
          {
            goto LABEL_8;
          }
        }

        else if (![(CPLSharedBatchStorage *)self _keepIgnoredRecord:_ignoredRecord shadowingRecord:changeCopy inScope:self->_sharedScope error:error])
        {
          goto LABEL_8;
        }
      }

      else
      {
        v18 = [scopedIdentifier2 isEqual:otherScopedIdentifier];

        if ((v18 & 1) == 0)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v29 = __CPLStorageOSLogDomain();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              scopedIdentifier6 = [v9 scopedIdentifier];
              *buf = 138412802;
              v36 = _ignoredRecord;
              v37 = 2112;
              v38 = scopedIdentifier6;
              v39 = 2112;
              v40 = otherScopedIdentifier;
              _os_log_impl(&dword_1DC05A000, v29, OS_LOG_TYPE_ERROR, "%@ is incorrectly ignored for %@ - it should be %@", buf, 0x20u);
            }
          }

          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
          scopedIdentifier7 = [v9 scopedIdentifier];
          [currentHandler2 handleFailureInMethod:a2 object:self file:v32 lineNumber:926 description:{@"%@ is incorrectly ignored for %@ - it should be %@", _ignoredRecord, scopedIdentifier7, otherScopedIdentifier}];

          abort();
        }

        if ([v9 shouldUploadToOtherRecord])
        {
          v17 = [(CPLSharedBatchStorage *)self _transferIgnoredRecordToTransientPullRepository:_ignoredRecord error:error];
          goto LABEL_22;
        }

        scope = [(CPLEngineTransientRepositoryBatchStorage *)self scope];
        v20 = [(CPLSharedBatchStorage *)self _keepIgnoredRecord:_ignoredRecord shadowingRecord:changeCopy inScope:scope error:error];

        if (!v20)
        {
LABEL_8:
          v17 = 0;
LABEL_22:

          goto LABEL_23;
        }
      }
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v21 = __CPLStorageOSLogDomain();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v36 = otherScopedIdentifier;
        _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_DEBUG, "Automatically mingling %@", buf, 0xCu);
      }
    }

    transientRepository = [(CPLEngineTransientRepositoryBatchStorage *)self transientRepository];
    v17 = [transientRepository markUnmingledChangeWithScopedIdentifierAsMingled:otherScopedIdentifier error:error];

    goto LABEL_22;
  }

  v17 = 0;
LABEL_24:

  return v17;
}

- (BOOL)_keepIgnoredRecord:(id)record shadowingRecord:(id)shadowingRecord inScope:(id)scope error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  scopeCopy = scope;
  v12 = CPLIgnoredDateForRecord(recordCopy, shadowingRecord, self->_now);
  if ((_CPLSilentLogging & 1) == 0)
  {
    v13 = __CPLStorageOSLogDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      scopedIdentifier = [recordCopy scopedIdentifier];
      v15 = [CPLDateFormatter stringFromDateAgo:v12 now:self->_now];
      v18 = 138543618;
      v19 = scopedIdentifier;
      v20 = 2114;
      v21 = v15;
      _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "Keeping ignored record %{public}@ with ignored date %{public}@", &v18, 0x16u);
    }
  }

  v16 = -[CPLEngineIgnoredRecords addIgnoredRecord:ignoredDate:otherScopeIndex:error:](self->_ignoredRecords, "addIgnoredRecord:ignoredDate:otherScopeIndex:error:", recordCopy, v12, [scopeCopy cloudIndex], error);

  return v16;
}

- (BOOL)_transferIgnoredRecordToTransientPullRepository:(id)repository error:(id *)error
{
  v15 = *MEMORY[0x1E69E9840];
  repositoryCopy = repository;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      scopedIdentifier = [repositoryCopy scopedIdentifier];
      v13 = 138412290;
      v14 = scopedIdentifier;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Automatically mingling previously ignored record %@", &v13, 0xCu);
    }
  }

  v9 = objc_alloc_init(CPLChangeBatch);
  [(CPLChangeBatch *)v9 addRecord:repositoryCopy];
  transientRepository = [(CPLEngineTransientRepositoryBatchStorage *)self transientRepository];
  v11 = [transientRepository appendBatch:v9 alreadyMingled:1 countOfAssetChanges:0 error:error];

  return v11;
}

- (BOOL)hasChangesInScopeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  scope = [(CPLEngineTransientRepositoryBatchStorage *)self scope];
  scopeIdentifier = [scope scopeIdentifier];
  v7 = [identifierCopy isEqualToString:scopeIdentifier];

  if (v7)
  {
    transientRepository = [(CPLEngineTransientRepositoryBatchStorage *)self transientRepository];
    scope2 = [(CPLEngineTransientRepositoryBatchStorage *)self scope];
    if ([transientRepository hasUnmingledChangesForScope:scope2])
    {
      v10 = 1;
    }

    else
    {
      v10 = [transientRepository hasUnmingledChangesForScope:self->_sharedScope];
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CPLSharedBatchStorage;
    v10 = [(CPLEngineTransientRepositoryBatchStorage *)&v12 hasChangesInScopeWithIdentifier:identifierCopy];
  }

  return v10;
}

- (unint64_t)effectiveResourceSizeToUploadForUploadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
  v8 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v7 lineNumber:881 description:{@"%@ should not be used on %@", v8, objc_opt_class()}];

  abort();
}

- (id)changeWithScopedIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLStorageOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = NSStringFromSelector(a2);
      v16 = 138412546;
      v17 = v7;
      v18 = 2112;
      v19 = identifierCopy;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEBUG, "%@ %@", &v16, 0x16u);
    }
  }

  transientRepository = [(CPLEngineTransientRepositoryBatchStorage *)self transientRepository];
  v9 = [transientRepository unmingledChangeWithScopedIdentifier:identifierCopy];

  if (v9)
  {
    v10 = [(CPLSharedBatchStorage *)self _mergedRecordWithPrivateChange:v9 sharedScopedIdentifier:0];
  }

  else
  {
    v11 = [(CPLSharedBatchStorage *)self _targetForPrivateScopedIdentifier:identifierCopy];
    otherScopedIdentifier = [v11 otherScopedIdentifier];
    if (otherScopedIdentifier && (-[CPLEngineTransientRepositoryBatchStorage transientRepository](self, "transientRepository"), v13 = objc_claimAutoreleasedReturnValue(), [v13 unmingledChangeWithScopedIdentifier:otherScopedIdentifier], v14 = objc_claimAutoreleasedReturnValue(), v13, v14))
    {
      v10 = [(CPLSharedBatchStorage *)self _mergedRecordWithSharedChange:v14 target:v11];
    }

    else
    {

      v10 = 0;
    }
  }

  return v10;
}

- (id)allNonDeletedChangesWithClass:(Class)class scopeIdentifier:(id)identifier
{
  v27 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = __CPLStorageOSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = NSStringFromSelector(a2);
      *buf = 138412802;
      v22 = v9;
      v23 = 2112;
      classCopy = class;
      v25 = 2112;
      v26 = identifierCopy;
      _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEBUG, "%@ %@ %@", buf, 0x20u);
    }
  }

  scope = [(CPLEngineTransientRepositoryBatchStorage *)self scope];
  scopeIdentifier = [scope scopeIdentifier];
  v12 = [identifierCopy isEqualToString:scopeIdentifier];

  if (v12)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __71__CPLSharedBatchStorage_allNonDeletedChangesWithClass_scopeIdentifier___block_invoke;
    v18[3] = &unk_1E861B6B0;
    v18[4] = self;
    classCopy2 = class;
    v19 = identifierCopy;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__CPLSharedBatchStorage_allNonDeletedChangesWithClass_scopeIdentifier___block_invoke_2;
    v17[3] = &unk_1E861B700;
    v17[4] = self;
    v17[5] = class;
    v13 = [(CPLSharedBatchStorage *)self _unionEnumerationWithPrivateRecordEnumeratorGenerator:v18 sharedRecordGenerator:v17];
    v14 = [(CPLSharedBatchStorage *)self _allChangesMatchingChangeType:0 enumerator:v13];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = CPLSharedBatchStorage;
    v14 = [(CPLEngineTransientRepositoryBatchStorage *)&v16 allNonDeletedChangesWithClass:class scopeIdentifier:identifierCopy];
  }

  return v14;
}

id __71__CPLSharedBatchStorage_allNonDeletedChangesWithClass_scopeIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transientRepository];
  v3 = [v2 allUnmingledChangesWithClass:*(a1 + 48) scopeIdentifier:*(a1 + 40)];

  return v3;
}

id __71__CPLSharedBatchStorage_allNonDeletedChangesWithClass_scopeIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) transientRepository];
  v3 = *(a1 + 40);
  v4 = [*(*(a1 + 32) + 80) scopeIdentifier];
  v5 = [v2 allUnmingledChangesWithClass:v3 scopeIdentifier:v4];

  return v5;
}

- (id)allChangesWithScopeIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLStorageOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138412546;
      v18 = v7;
      v19 = 2112;
      v20 = identifierCopy;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEBUG, "%@ %@", buf, 0x16u);
    }
  }

  scope = [(CPLEngineTransientRepositoryBatchStorage *)self scope];
  scopeIdentifier = [scope scopeIdentifier];
  v10 = [identifierCopy isEqualToString:scopeIdentifier];

  if (v10)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__CPLSharedBatchStorage_allChangesWithScopeIdentifier___block_invoke;
    v15[3] = &unk_1E861B728;
    v15[4] = self;
    v16 = identifierCopy;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __55__CPLSharedBatchStorage_allChangesWithScopeIdentifier___block_invoke_2;
    v14[3] = &unk_1E861C0F8;
    v14[4] = self;
    v11 = [(CPLSharedBatchStorage *)self _unionEnumerationWithPrivateRecordEnumeratorGenerator:v15 sharedRecordGenerator:v14];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CPLSharedBatchStorage;
    v11 = [(CPLEngineTransientRepositoryBatchStorage *)&v13 allChangesWithScopeIdentifier:identifierCopy];
  }

  return v11;
}

id __55__CPLSharedBatchStorage_allChangesWithScopeIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transientRepository];
  v3 = [v2 allUnmingledChangesWithScopeIdentifier:*(a1 + 40)];

  return v3;
}

id __55__CPLSharedBatchStorage_allChangesWithScopeIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) transientRepository];
  v3 = [*(*(a1 + 32) + 80) scopeIdentifier];
  v4 = [v2 allUnmingledChangesWithScopeIdentifier:v3];

  return v4;
}

- (id)allChangesWithClass:(Class)class secondaryScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
  v9 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v8 lineNumber:832 description:{@"Trying to extract batches using unsupported %@", v9}];

  abort();
}

- (id)allChangesWithClass:(Class)class scopeIdentifier:(id)identifier trashed:(BOOL)trashed
{
  identifierCopy = identifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
  v10 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v9 lineNumber:828 description:{@"Trying to extract batches using unsupported %@", v10}];

  abort();
}

- (id)allChangesWithClass:(Class)class scopeIdentifier:(id)identifier changeType:(unint64_t)type
{
  v32 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = __CPLStorageOSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = NSStringFromSelector(a2);
      v12 = [CPLRecordChange descriptionForChangeType:type];
      *buf = 138413058;
      v25 = v11;
      v26 = 2112;
      classCopy = class;
      v28 = 2112;
      v29 = identifierCopy;
      v30 = 2112;
      v31 = v12;
      _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEBUG, "%@ %@ %@ %@", buf, 0x2Au);
    }
  }

  scope = [(CPLEngineTransientRepositoryBatchStorage *)self scope];
  scopeIdentifier = [scope scopeIdentifier];
  v15 = [identifierCopy isEqualToString:scopeIdentifier];

  if (v15)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __72__CPLSharedBatchStorage_allChangesWithClass_scopeIdentifier_changeType___block_invoke;
    v21[3] = &unk_1E861B6B0;
    v21[4] = self;
    classCopy2 = class;
    v22 = identifierCopy;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __72__CPLSharedBatchStorage_allChangesWithClass_scopeIdentifier_changeType___block_invoke_2;
    v20[3] = &unk_1E861B700;
    v20[4] = self;
    v20[5] = class;
    v16 = [(CPLSharedBatchStorage *)self _unionEnumerationWithPrivateRecordEnumeratorGenerator:v21 sharedRecordGenerator:v20];
    v17 = [(CPLSharedBatchStorage *)self _allChangesMatchingChangeType:type enumerator:v16];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = CPLSharedBatchStorage;
    v17 = [(CPLEngineTransientRepositoryBatchStorage *)&v19 allChangesWithClass:class scopeIdentifier:identifierCopy changeType:type];
  }

  return v17;
}

id __72__CPLSharedBatchStorage_allChangesWithClass_scopeIdentifier_changeType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transientRepository];
  v3 = [v2 allUnmingledChangesWithClass:*(a1 + 48) scopeIdentifier:*(a1 + 40)];

  return v3;
}

id __72__CPLSharedBatchStorage_allChangesWithClass_scopeIdentifier_changeType___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) transientRepository];
  v3 = *(a1 + 40);
  v4 = [*(*(a1 + 32) + 80) scopeIdentifier];
  v5 = [v2 allUnmingledChangesWithClass:v3 scopeIdentifier:v4];

  return v5;
}

- (id)allChangesWithClass:(Class)class relatedScopedIdentifier:(id)identifier
{
  v49 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = __CPLStorageOSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = NSStringFromSelector(a2);
      *buf = 138412802;
      v44 = v9;
      v45 = 2112;
      classCopy = class;
      v47 = 2112;
      v48 = identifierCopy;
      _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEBUG, "%@ %@ %@", buf, 0x20u);
    }
  }

  scopeIdentifier = [identifierCopy scopeIdentifier];
  scope = [(CPLEngineTransientRepositoryBatchStorage *)self scope];
  scopeIdentifier2 = [scope scopeIdentifier];
  v13 = [scopeIdentifier isEqualToString:scopeIdentifier2];

  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __69__CPLSharedBatchStorage_allChangesWithClass_relatedScopedIdentifier___block_invoke;
    v39[3] = &unk_1E861B6B0;
    v39[4] = self;
    classCopy2 = class;
    v15 = identifierCopy;
    v40 = v15;
    v16 = MEMORY[0x1E128EBA0](v39);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __69__CPLSharedBatchStorage_allChangesWithClass_relatedScopedIdentifier___block_invoke_2;
    v36[3] = &unk_1E861B6D8;
    v36[4] = self;
    v37 = v15;
    classCopy3 = class;
    v17 = MEMORY[0x1E128EBA0](v36);
    v18 = [CPLUnionEnumerator alloc];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __69__CPLSharedBatchStorage_allChangesWithClass_relatedScopedIdentifier___block_invoke_3;
    v33[3] = &unk_1E861B668;
    v35 = v16;
    v33[4] = self;
    v19 = v14;
    v34 = v19;
    v20 = v16;
    v21 = MEMORY[0x1E128EBA0](v33);
    v42[0] = v21;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __69__CPLSharedBatchStorage_allChangesWithClass_relatedScopedIdentifier___block_invoke_5;
    v29[3] = &unk_1E861B668;
    selfCopy = self;
    v32 = v17;
    v30 = v19;
    v22 = v19;
    v23 = v17;
    v24 = MEMORY[0x1E128EBA0](v29);
    v42[1] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
    v26 = [(CPLUnionEnumerator *)v18 initWithEnumeratorGenerators:v25];
  }

  else
  {
    v28.receiver = self;
    v28.super_class = CPLSharedBatchStorage;
    v26 = [(CPLEngineTransientRepositoryBatchStorage *)&v28 allChangesWithClass:class relatedScopedIdentifier:identifierCopy];
  }

  return v26;
}

id __69__CPLSharedBatchStorage_allChangesWithClass_relatedScopedIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transientRepository];
  v3 = [v2 allUnmingledChangesWithClass:*(a1 + 48) relatedScopedIdentifier:*(a1 + 40)];

  return v3;
}

id __69__CPLSharedBatchStorage_allChangesWithClass_relatedScopedIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _targetForPrivateScopedIdentifier:*(a1 + 40)];
  if ([v2 targetState] == 1 || (objc_msgSend(v2, "otherScopedIdentifier"), (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v4 = v3;
    v5 = [*(a1 + 32) transientRepository];
    v6 = [v5 allUnmingledChangesWithClass:*(a1 + 48) relatedScopedIdentifier:v4];
  }

  return v6;
}

CPLMapEnumerator *__69__CPLSharedBatchStorage_allChangesWithClass_relatedScopedIdentifier___block_invoke_3(void *a1)
{
  v2 = [CPLMapEnumerator alloc];
  v3 = (*(a1[6] + 16))();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__CPLSharedBatchStorage_allChangesWithClass_relatedScopedIdentifier___block_invoke_4;
  v7[3] = &unk_1E861B640;
  v4 = a1[5];
  v7[4] = a1[4];
  v8 = v4;
  v5 = [(CPLMapEnumerator *)v2 initWithEnumerator:v3 map:v7];

  return v5;
}

CPLMapEnumerator *__69__CPLSharedBatchStorage_allChangesWithClass_relatedScopedIdentifier___block_invoke_5(uint64_t a1)
{
  v2 = [CPLMapEnumerator alloc];
  v3 = (*(*(a1 + 48) + 16))();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__CPLSharedBatchStorage_allChangesWithClass_relatedScopedIdentifier___block_invoke_6;
  v8[3] = &unk_1E861B640;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v6 = [(CPLMapEnumerator *)v2 initWithEnumerator:v3 map:v8];

  return v6;
}

id __69__CPLSharedBatchStorage_allChangesWithClass_relatedScopedIdentifier___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 scopedIdentifier];
  if ([*(a1 + 32) containsObject:v4])
  {
    v5 = 0;
  }

  else
  {
    v6 = [*(a1 + 40) _targetForSharedScopedIdentifier:v4];
    if ([v3 supportsSharingScopedIdentifier] && (objc_msgSend(*(a1 + 40), "transientRepository"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "scopedIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "unmingledChangeWithScopedIdentifier:", v8), v9 = objc_claimAutoreleasedReturnValue(), v8, v7, v9))
    {
      v10 = *(a1 + 40);
      v13 = v4;
      v5 = [v10 _mergedRecordWithPrivateChange:v9 sharedScopedIdentifier:&v13];
      v11 = v13;

      v4 = v11;
    }

    else
    {
      v5 = [*(a1 + 40) _mergedRecordWithSharedChange:v3 target:v6];
    }
  }

  return v5;
}

id __69__CPLSharedBatchStorage_allChangesWithClass_relatedScopedIdentifier___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v7 = 0;
  v4 = [v3 _mergedRecordWithPrivateChange:a2 sharedScopedIdentifier:&v7];
  v5 = v7;
  if (v5)
  {
    [*(a1 + 40) addObject:v5];
  }

  return v4;
}

- (id)_allChangesMatchingChangeType:(unint64_t)type enumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  if (type == 1024)
  {
    v8 = &__block_literal_global_116;
  }

  else
  {
    if (type)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
      v13 = [CPLRecordChange descriptionForChangeType:type];
      [currentHandler handleFailureInMethod:a2 object:self file:v12 lineNumber:754 description:{@"Trying to extract batches using change type %@", v13}];

      abort();
    }

    v8 = &__block_literal_global_34;
  }

  v9 = [[CPLMapEnumerator alloc] initWithEnumerator:enumeratorCopy map:v8];

  return v9;
}

id __66__CPLSharedBatchStorage__allChangesMatchingChangeType_enumerator___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isDelete])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __66__CPLSharedBatchStorage__allChangesMatchingChangeType_enumerator___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isFullRecord])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_unionEnumerationWithPrivateRecordEnumeratorGenerator:(id)generator sharedRecordGenerator:(id)recordGenerator
{
  v26[2] = *MEMORY[0x1E69E9840];
  generatorCopy = generator;
  recordGeneratorCopy = recordGenerator;
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v9 = [CPLUnionEnumerator alloc];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __101__CPLSharedBatchStorage__unionEnumerationWithPrivateRecordEnumeratorGenerator_sharedRecordGenerator___block_invoke;
  v23[3] = &unk_1E861B668;
  v25 = generatorCopy;
  v23[4] = self;
  v10 = v8;
  v24 = v10;
  v11 = generatorCopy;
  v12 = MEMORY[0x1E128EBA0](v23);
  v26[0] = v12;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __101__CPLSharedBatchStorage__unionEnumerationWithPrivateRecordEnumeratorGenerator_sharedRecordGenerator___block_invoke_3;
  v19[3] = &unk_1E861B668;
  selfCopy = self;
  v22 = recordGeneratorCopy;
  v20 = v10;
  v13 = v10;
  v14 = recordGeneratorCopy;
  v15 = MEMORY[0x1E128EBA0](v19);
  v26[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v17 = [(CPLUnionEnumerator *)v9 initWithEnumeratorGenerators:v16];

  return v17;
}

CPLMapEnumerator *__101__CPLSharedBatchStorage__unionEnumerationWithPrivateRecordEnumeratorGenerator_sharedRecordGenerator___block_invoke(void *a1)
{
  v2 = [CPLMapEnumerator alloc];
  v3 = (*(a1[6] + 16))();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __101__CPLSharedBatchStorage__unionEnumerationWithPrivateRecordEnumeratorGenerator_sharedRecordGenerator___block_invoke_2;
  v7[3] = &unk_1E861B640;
  v4 = a1[5];
  v7[4] = a1[4];
  v8 = v4;
  v5 = [(CPLMapEnumerator *)v2 initWithEnumerator:v3 map:v7];

  return v5;
}

CPLMapEnumerator *__101__CPLSharedBatchStorage__unionEnumerationWithPrivateRecordEnumeratorGenerator_sharedRecordGenerator___block_invoke_3(uint64_t a1)
{
  v2 = [CPLMapEnumerator alloc];
  v3 = (*(*(a1 + 48) + 16))();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __101__CPLSharedBatchStorage__unionEnumerationWithPrivateRecordEnumeratorGenerator_sharedRecordGenerator___block_invoke_4;
  v8[3] = &unk_1E861B640;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v6 = [(CPLMapEnumerator *)v2 initWithEnumerator:v3 map:v8];

  return v6;
}

id __101__CPLSharedBatchStorage__unionEnumerationWithPrivateRecordEnumeratorGenerator_sharedRecordGenerator___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 scopedIdentifier];
  if ([*(a1 + 32) containsObject:v4])
  {
    v5 = 0;
  }

  else
  {
    v6 = [*(a1 + 40) _targetForSharedScopedIdentifier:v4];
    v5 = [*(a1 + 40) _mergedRecordWithSharedChange:v3 target:v6];
  }

  return v5;
}

id __101__CPLSharedBatchStorage__unionEnumerationWithPrivateRecordEnumeratorGenerator_sharedRecordGenerator___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v7 = 0;
  v4 = [v3 _mergedRecordWithPrivateChange:a2 sharedScopedIdentifier:&v7];
  v5 = v7;
  if (v5)
  {
    [*(a1 + 40) addObject:v5];
  }

  return v4;
}

- (id)_mergedRecordWithSharedChange:(id)change target:(id)target
{
  v99 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  targetCopy = target;
  scopedIdentifier = [changeCopy scopedIdentifier];
  v9 = [(NSMutableDictionary *)self->_alreadyProcessedChanges objectForKeyedSubscript:scopedIdentifier];
  if (v9)
  {
    v10 = v9;
    v11 = v10;
    goto LABEL_73;
  }

  if ([changeCopy isMasterChange])
  {
    scopedIdentifier2 = [(CPLRecordTarget *)targetCopy scopedIdentifier];
    v13 = [(CPLEngineIgnoredRecords *)self->_ignoredRecords recordWithScopedIdentifier:scopedIdentifier2];
    v14 = [v13 copy];
    if ([changeCopy isDelete])
    {
      if (v13)
      {
        v15 = -[CPLRecordTarget initWithScopedIdentifier:otherScopedIdentifier:targetState:]([CPLRecordTarget alloc], "initWithScopedIdentifier:otherScopedIdentifier:targetState:", scopedIdentifier2, scopedIdentifier, [v13 isDelete] ^ 1);
        targetMapping = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
        [targetMapping setTarget:v15 forRecordWithScopedIdentifier:scopedIdentifier2];

        v17 = v13;
LABEL_7:
        v18 = v17;
LABEL_45:

LABEL_46:
        goto LABEL_58;
      }

      targetState = [(CPLRecordTarget *)targetCopy targetState];
      v18 = 0;
      if (targetState > 1)
      {
        if (targetState != 2)
        {
          if (targetState != 3)
          {
            goto LABEL_46;
          }

          goto LABEL_83;
        }
      }

      else if (targetState)
      {
        if (targetState != 1)
        {
          goto LABEL_46;
        }

LABEL_83:
        v74 = [(CPLEngineCloudCache *)self->_cloudCache recordWithScopedIdentifier:scopedIdentifier2 isFinal:0];
        if (!v74)
        {
          v18 = [(CPLSharedBatchStorage *)self _sharedRecordAsPrivateRecord:changeCopy target:targetCopy];
          goto LABEL_46;
        }

        v18 = v74;
        [(CPLRecordTarget *)v74 setSharingRecordChangeData:0];
        v15 = [[CPLRecordTarget alloc] initWithScopedIdentifier:scopedIdentifier2 otherScopedIdentifier:scopedIdentifier targetState:1];
        [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
        v75 = v89 = 56;
        [v75 setTarget:v15 forRecordWithScopedIdentifier:scopedIdentifier2];

        goto LABEL_45;
      }

      v15 = [[CPLRecordTarget alloc] initWithScopedIdentifier:scopedIdentifier2 otherScopedIdentifier:scopedIdentifier targetState:0];
      targetMapping2 = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
      [targetMapping2 setTarget:v15 forRecordWithScopedIdentifier:scopedIdentifier2];

      v17 = [(CPLSharedBatchStorage *)self _sharedRecordAsPrivateRecord:changeCopy target:targetCopy];
      goto LABEL_7;
    }

    v89 = 56;
    if (!v14)
    {
      if ([(CPLRecordTarget *)targetCopy targetState]!= 1 || ([(CPLEngineCloudCache *)self->_cloudCache recordWithScopedIdentifier:scopedIdentifier2 isFinal:1], (v45 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v14 = 0;
        v24 = 1;
        v25 = 2;
LABEL_43:
        v15 = [[CPLRecordTarget alloc] initWithScopedIdentifier:scopedIdentifier2 otherScopedIdentifier:scopedIdentifier targetState:v25];
        targetMapping3 = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
        [targetMapping3 setTarget:v15 forRecordWithScopedIdentifier:scopedIdentifier2];

        v18 = [(CPLSharedBatchStorage *)self _sharedRecordAsPrivateRecord:changeCopy target:targetCopy];
        if ((v24 & 1) == 0)
        {
          recordChangeData = [(CPLRecordTarget *)v14 recordChangeData];
          [(CPLRecordTarget *)v18 setRecordChangeData:recordChangeData];
        }

        goto LABEL_45;
      }

      v14 = v45;
    }

    v24 = 0;
    v25 = 3;
    goto LABEL_43;
  }

  isDelete = [changeCopy isDelete];
  targetState2 = [(CPLRecordTarget *)targetCopy targetState];
  if (isDelete)
  {
    v14 = 0;
    if (targetState2 <= 1)
    {
      if (targetState2)
      {
        if (targetState2 == 1)
        {
          cloudCache = self->_cloudCache;
          scopedIdentifier3 = [(CPLRecordTarget *)targetCopy scopedIdentifier];
          v23 = [(CPLEngineCloudCache *)cloudCache recordWithScopedIdentifier:scopedIdentifier3 isFinal:0];

          if (v23)
          {
            v18 = v23;
            [(CPLRecordTarget *)v18 setSharingRecordChangeData:0];
LABEL_56:

            goto LABEL_57;
          }

          v77 = [CPLRecordTarget alloc];
          scopedIdentifier4 = [(CPLRecordTarget *)targetCopy scopedIdentifier];
          v79 = [(CPLRecordTarget *)v77 initWithScopedIdentifier:scopedIdentifier4 otherScopedIdentifier:scopedIdentifier targetState:0];

          targetMapping4 = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
          scopedIdentifier5 = [(CPLRecordTarget *)targetCopy scopedIdentifier];
          [targetMapping4 setTarget:v79 forRecordWithScopedIdentifier:scopedIdentifier5];

          selfCopy3 = self;
          v83 = changeCopy;
          v84 = targetCopy;
LABEL_88:
          v18 = [(CPLSharedBatchStorage *)selfCopy3 _sharedRecordAsPrivateRecord:v83 target:v84];

          goto LABEL_56;
        }

        goto LABEL_40;
      }

LABEL_41:
      v18 = [(CPLSharedBatchStorage *)self _sharedRecordAsPrivateRecord:changeCopy target:targetCopy];
LABEL_57:
      v14 = 0;
      goto LABEL_58;
    }

    if (targetState2 == 2)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v36 = __CPLStorageOSLogDomain();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v92 = changeCopy;
          v37 = "%@ has been unshared";
          goto LABEL_51;
        }

LABEL_52:
      }

LABEL_53:
      v55 = [CPLRecordTarget alloc];
      scopedIdentifier6 = [(CPLRecordTarget *)targetCopy scopedIdentifier];
      v23 = [(CPLRecordTarget *)v55 initWithScopedIdentifier:scopedIdentifier6 otherScopedIdentifier:scopedIdentifier targetState:0];

      targetMapping5 = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
      scopedIdentifier7 = [(CPLRecordTarget *)targetCopy scopedIdentifier];
      [targetMapping5 setTarget:v23 forRecordWithScopedIdentifier:scopedIdentifier7];

      selfCopy4 = self;
      v53 = changeCopy;
      v54 = targetCopy;
      goto LABEL_54;
    }

    if (targetState2 == 3)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v36 = __CPLStorageOSLogDomain();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v92 = changeCopy;
          v37 = "%@ has been unshared (will need to clean-up sparse record) ";
LABEL_51:
          _os_log_impl(&dword_1DC05A000, v36, OS_LOG_TYPE_DEFAULT, v37, buf, 0xCu);
          goto LABEL_52;
        }

        goto LABEL_52;
      }

      goto LABEL_53;
    }

LABEL_40:
    v18 = 0;
    goto LABEL_58;
  }

  if (!targetState2)
  {
    v26 = [(CPLSharedBatchStorage *)self _updatePrivateScopedIdentifierForUnknownTarget:targetCopy];

    remappedRecords = self->_remappedRecords;
    scopedIdentifier8 = [(CPLRecordTarget *)v26 scopedIdentifier];
    v14 = [(CPLEngineRemappedRecords *)remappedRecords realScopedIdentifierForRemappedScopedIdentifier:scopedIdentifier8];

    identifier = [(CPLRecordTarget *)v14 identifier];
    scopedIdentifier9 = [(CPLRecordTarget *)v26 scopedIdentifier];
    identifier2 = [scopedIdentifier9 identifier];
    v32 = [identifier isEqualToString:identifier2];

    if (!v32)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v69 = __CPLStorageOSLogDomain();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          scopedIdentifier10 = [(CPLRecordTarget *)v26 scopedIdentifier];
          *buf = 138412802;
          v92 = changeCopy;
          v93 = 2112;
          v94 = scopedIdentifier10;
          v95 = 2112;
          v96 = v14;
          _os_log_impl(&dword_1DC05A000, v69, OS_LOG_TYPE_DEFAULT, "%@'s private counterpart %@ is remapped to %@ - ignoring shared record for now", buf, 0x20u);
        }
      }

      v71 = objc_opt_class();
      scopedIdentifier11 = [(CPLRecordTarget *)v26 scopedIdentifier];
      v11 = [v71 newRecordWithScopedIdentifier:scopedIdentifier11];

      identifier3 = [(CPLRecordTarget *)v14 identifier];
      [(CPLRecordTarget *)v11 setRealIdentifier:identifier3];

      [(CPLRecordTarget *)v11 _setIgnoredRecord:changeCopy];
      [(NSMutableDictionary *)self->_alreadyProcessedChanges setObject:v11 forKeyedSubscript:scopedIdentifier];
      v10 = 0;
      targetCopy = v26;
      goto LABEL_72;
    }

    targetCopy = v26;
  }

  targetState3 = [(CPLRecordTarget *)targetCopy targetState];
  v14 = 0;
  if (targetState3 > 1)
  {
    if (targetState3 == 2)
    {
      goto LABEL_41;
    }

    if (targetState3 == 3)
    {
      v38 = self->_cloudCache;
      scopedIdentifier12 = [(CPLRecordTarget *)targetCopy scopedIdentifier];
      v23 = [(CPLEngineCloudCache *)v38 recordWithScopedIdentifier:scopedIdentifier12 isFinal:0];

      if (!v23)
      {
        v85 = [CPLRecordTarget alloc];
        scopedIdentifier13 = [(CPLRecordTarget *)targetCopy scopedIdentifier];
        v79 = [(CPLRecordTarget *)v85 initWithScopedIdentifier:scopedIdentifier13 otherScopedIdentifier:scopedIdentifier targetState:2];

        targetMapping6 = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
        scopedIdentifier14 = [(CPLRecordTarget *)targetCopy scopedIdentifier];
        [targetMapping6 setTarget:v79 forRecordWithScopedIdentifier:scopedIdentifier14];

        selfCopy3 = self;
        v83 = changeCopy;
        v84 = v79;
        goto LABEL_88;
      }

      merger = self->_merger;
      v41 = [(CPLSharedBatchStorage *)self _remapSharedRecord:changeCopy target:targetCopy];
      [(CPLSharedRecordMerger *)merger mergeRecord:v41 isSharedRecord:1 inPrivateRecord:v23];

      scopeIdentifier = [scopedIdentifier scopeIdentifier];
      [(CPLRecordTarget *)v23 setSharingScopeIdentifier:scopeIdentifier];

      v43 = v23;
LABEL_55:
      v18 = v43;
      goto LABEL_56;
    }

    goto LABEL_40;
  }

  if (!targetState3)
  {
    goto LABEL_47;
  }

  if (targetState3 != 1)
  {
    goto LABEL_40;
  }

  v34 = self->_cloudCache;
  scopedIdentifier15 = [(CPLRecordTarget *)targetCopy scopedIdentifier];
  v18 = [(CPLEngineCloudCache *)v34 recordWithScopedIdentifier:scopedIdentifier15 isFinal:0];

  if (!v18)
  {
LABEL_47:
    v48 = [CPLRecordTarget alloc];
    scopedIdentifier16 = [(CPLRecordTarget *)targetCopy scopedIdentifier];
    v23 = [(CPLRecordTarget *)v48 initWithScopedIdentifier:scopedIdentifier16 otherScopedIdentifier:scopedIdentifier targetState:2];

    targetMapping7 = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
    scopedIdentifier17 = [(CPLRecordTarget *)targetCopy scopedIdentifier];
    [targetMapping7 setTarget:v23 forRecordWithScopedIdentifier:scopedIdentifier17];

    selfCopy4 = self;
    v53 = changeCopy;
    v54 = v23;
LABEL_54:
    v43 = [(CPLSharedBatchStorage *)selfCopy4 _sharedRecordAsPrivateRecord:v53 target:v54];
    goto LABEL_55;
  }

  v14 = changeCopy;
LABEL_58:
  v90 = 0;
  v59 = [(CPLRecordTarget *)v18 validateChangeWithError:&v90, v89];
  v60 = v90;
  if ((v59 & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v61 = __CPLStorageOSLogDomain();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v92 = changeCopy;
        v93 = 2112;
        v94 = v18;
        v95 = 2112;
        v96 = targetCopy;
        v97 = 2112;
        v98 = v60;
        _os_log_impl(&dword_1DC05A000, v61, OS_LOG_TYPE_ERROR, "Failed to merge incoming shared %@: %@ (%@): %@", buf, 0x2Au);
      }
    }

    v62 = self->_cloudCache;
    scopedIdentifier18 = [(CPLRecordTarget *)targetCopy scopedIdentifier];
    v64 = [(CPLEngineCloudCache *)v62 recordWithScopedIdentifier:scopedIdentifier18 isFinal:0];

    v18 = v64;
    if (!v64)
    {
      v65 = objc_opt_class();
      scopedIdentifier19 = [(CPLRecordTarget *)targetCopy scopedIdentifier];
      v18 = [v65 newDeleteChangeWithScopedIdentifier:scopedIdentifier19];
    }
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v67 = __CPLStorageOSLogDomain();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v92 = changeCopy;
      v93 = 2112;
      v94 = targetCopy;
      v95 = 2112;
      v96 = v18;
      _os_log_impl(&dword_1DC05A000, v67, OS_LOG_TYPE_DEFAULT, "Merging record with shared change %@ - %@ -> %@", buf, 0x20u);
    }
  }

  if (v14)
  {
    [(CPLRecordTarget *)v18 _setIgnoredRecord:v14];
  }

  [(NSMutableDictionary *)self->_alreadyProcessedChanges setObject:v18 forKeyedSubscript:scopedIdentifier];
  v10 = v18;

  v11 = v10;
LABEL_72:

LABEL_73:

  return v11;
}

- (id)_updatePrivateScopedIdentifierForUnknownTarget:(id)target
{
  v15 = *MEMORY[0x1E69E9840];
  targetCopy = target;
  otherScopedIdentifier = [(CPLRecordTarget *)targetCopy otherScopedIdentifier];
  scopedIdentifier = [(CPLRecordTarget *)targetCopy scopedIdentifier];
  if (otherScopedIdentifier)
  {
    v7 = [(CPLSharedBatchStorage *)self _correctPrivateScopedIdentifierForSharedScopedIdentifier:otherScopedIdentifier currentPrivateScopedIdentifier:scopedIdentifier];
    if (([v7 isEqual:scopedIdentifier] & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v8 = __CPLStorageOSLogDomain();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 138412546;
          v12 = otherScopedIdentifier;
          v13 = 2112;
          v14 = v7;
          _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "Automatically found private scoped identifier of %@ to be %@", &v11, 0x16u);
        }
      }

      v9 = [[CPLRecordTarget alloc] initWithScopedIdentifier:v7 otherScopedIdentifier:otherScopedIdentifier targetState:[(CPLRecordTarget *)targetCopy targetState]];

      targetCopy = v9;
    }
  }

  return targetCopy;
}

- (id)_mergedRecordWithPrivateChange:(id)change sharedScopedIdentifier:(id *)identifier
{
  v139 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  scopedIdentifier = [changeCopy scopedIdentifier];
  v9 = [(NSMutableDictionary *)self->_alreadyProcessedChanges objectForKeyedSubscript:scopedIdentifier];
  if (v9)
  {
    v10 = v9;
    goto LABEL_59;
  }

  targetMapping = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
  v12 = [targetMapping targetForRecordWithScopedIdentifier:scopedIdentifier];

  v126 = a2;
  if (![changeCopy isMasterChange])
  {
    if (![changeCopy supportsSharingScopedIdentifier])
    {
      v29 = [[CPLRecordTarget alloc] initWithScopedIdentifier:scopedIdentifier];

      v23 = changeCopy;
      v28 = 0;
      v127 = 0;
      goto LABEL_14;
    }

    if ([changeCopy isDelete])
    {
      v24 = v12;
      if (!v12)
      {
        v24 = [(CPLSharedBatchStorage *)self _targetForPrivateScopedIdentifier:scopedIdentifier];
      }

      v12 = v24;
      otherScopedIdentifier = [v24 otherScopedIdentifier];
      transientRepository = [(CPLEngineTransientRepositoryBatchStorage *)self transientRepository];
      v27 = [transientRepository unmingledChangeWithScopedIdentifier:otherScopedIdentifier];

      v127 = otherScopedIdentifier;
      if (v27)
      {
        v28 = 0;
      }

      else
      {
        v28 = [(CPLEngineIgnoredRecords *)self->_ignoredRecords recordWithScopedIdentifier:otherScopedIdentifier];
        v27 = v28;
        if (!v28)
        {
          targetState = [v12 targetState];
          if (targetState <= 1)
          {
            if (targetState > 1)
            {
              goto LABEL_118;
            }

            v29 = [[CPLRecordTarget alloc] initWithScopedIdentifier:scopedIdentifier otherScopedIdentifier:otherScopedIdentifier targetState:0];

            v23 = changeCopy;
            goto LABEL_153;
          }

          if (targetState == 2)
          {
            v23 = [(CPLEngineCloudCache *)self->_cloudCache recordWithScopedIdentifier:scopedIdentifier isFinal:0];
            if (!v23)
            {
              v23 = changeCopy;
            }

            [v23 setRecordChangeData:0];
LABEL_116:
            v28 = 0;
            if (!v12)
            {
              goto LABEL_15;
            }

            goto LABEL_39;
          }

          if (targetState != 3)
          {
            goto LABEL_118;
          }

          v95 = [(CPLEngineCloudCache *)self->_cloudCache recordWithScopedIdentifier:scopedIdentifier isFinal:0];
          if (v95)
          {
            v23 = v95;
            [v95 setRecordChangeData:0];
            v68 = [CPLRecordTarget alloc];
            v69 = scopedIdentifier;
            v70 = otherScopedIdentifier;
            goto LABEL_82;
          }

LABEL_115:
          v23 = changeCopy;
          goto LABEL_116;
        }
      }

      isDelete = [v27 isDelete];
      v62 = [CPLRecordTarget alloc];
      if (isDelete)
      {
        v63 = [(CPLRecordTarget *)v62 initWithScopedIdentifier:scopedIdentifier otherScopedIdentifier:otherScopedIdentifier targetState:0];

        v23 = changeCopy;
      }

      else
      {
        v63 = [(CPLRecordTarget *)v62 initWithScopedIdentifier:scopedIdentifier otherScopedIdentifier:otherScopedIdentifier targetState:2];

        v23 = [(CPLSharedBatchStorage *)self _sharedRecordAsPrivateRecord:v27 target:v63];
        [v23 setRecordChangeData:0];
      }

      v12 = v63;
LABEL_151:
      if (!v12)
      {
        goto LABEL_15;
      }

      goto LABEL_39;
    }

    scopeIdentifier = [(CPLEngineScope *)self->_sharedScope scopeIdentifier];
    v39 = [changeCopy isSharedInScopeWithIdentifier:scopeIdentifier];

    if (!v39)
    {
      otherScopedIdentifier2 = [v12 otherScopedIdentifier];
      v59 = otherScopedIdentifier2;
      if (otherScopedIdentifier2)
      {
        v60 = otherScopedIdentifier2;
      }

      else
      {
        v82 = [CPLScopedIdentifier alloc];
        scopeIdentifier2 = [(CPLEngineScope *)self->_sharedScope scopeIdentifier];
        identifier = [scopedIdentifier identifier];
        v60 = [(CPLScopedIdentifier *)v82 initWithScopeIdentifier:scopeIdentifier2 identifier:identifier];
      }

      v85 = [(CPLEngineRemappedRecords *)self->_remappedRecords realScopedIdentifierForRemappedScopedIdentifier:v60];
      v86 = v85;
      if (v85)
      {
        v87 = v85;
      }

      else
      {
        v87 = v60;
      }

      v88 = v87;

      transientRepository2 = [(CPLEngineTransientRepositoryBatchStorage *)self transientRepository];
      v127 = v88;
      v28 = [transientRepository2 unmingledChangeWithScopedIdentifier:v88];

      if ([v28 isDelete])
      {

        v28 = 0;
      }

      v29 = [[CPLRecordTarget alloc] initWithScopedIdentifier:scopedIdentifier otherScopedIdentifier:v88 targetState:1];

      v23 = changeCopy;
LABEL_14:
      v12 = v29;
      if (v29)
      {
        goto LABEL_39;
      }

      goto LABEL_15;
    }

    sharingRecordScopedIdentifier = [changeCopy sharingRecordScopedIdentifier];
    identifier2 = [sharingRecordScopedIdentifier identifier];
    v42 = [identifier2 isEqualToString:@"__INVALID__"];

    if (v42)
    {
      if (_CPLSilentLogging)
      {
LABEL_137:
        v111 = [[CPLRecordTarget alloc] initWithScopedIdentifier:scopedIdentifier];

        v23 = [objc_opt_class() newDeleteChangeWithScopedIdentifier:scopedIdentifier];
LABEL_138:
        v28 = 0;
        v127 = 0;
        v12 = v111;
LABEL_150:

        goto LABEL_151;
      }

      v43 = __CPLStorageOSLogDomain();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v130 = scopedIdentifier;
        _os_log_impl(&dword_1DC05A000, v43, OS_LOG_TYPE_DEFAULT, "Sparse private %@ is pointing to an invalid shared record - deleting", buf, 0xCu);
      }

LABEL_136:

      goto LABEL_137;
    }

    if (sharingRecordScopedIdentifier && self->_automaticallyFixBadPrivateAsset)
    {
      identifier3 = [sharingRecordScopedIdentifier identifier];
      identifier4 = [scopedIdentifier identifier];
      v73 = [identifier3 isEqualToString:identifier4];

      if ((v73 & 1) == 0)
      {
        v74 = [CPLScopedIdentifier alloc];
        scopeIdentifier3 = [(CPLEngineScope *)self->_sharedScope scopeIdentifier];
        identifier5 = [scopedIdentifier identifier];
        v77 = [(CPLScopedIdentifier *)v74 initWithScopeIdentifier:scopeIdentifier3 identifier:identifier5];

        v43 = [(CPLEngineRemappedRecords *)self->_remappedRecords realScopedIdentifierForRemappedScopedIdentifier:v77];

        if (!v43 || (-[NSObject identifier](v43, "identifier"), v78 = objc_claimAutoreleasedReturnValue(), [sharingRecordScopedIdentifier identifier], v79 = objc_claimAutoreleasedReturnValue(), v80 = objc_msgSend(v78, "isEqualToString:", v79), v79, v78, (v80 & 1) == 0))
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v112 = __CPLStorageOSLogDomain();
            if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
            {
              identifier6 = [v43 identifier];
              *buf = 138412802;
              v130 = scopedIdentifier;
              v131 = 2112;
              v132 = sharingRecordScopedIdentifier;
              v133 = 2114;
              v134 = identifier6;
              _os_log_impl(&dword_1DC05A000, v112, OS_LOG_TYPE_DEFAULT, "Sparse private %@ is pointing to %@ but the private sparse should be %{public}@ - deleting", buf, 0x20u);
            }
          }

          goto LABEL_136;
        }
      }
    }

    else if (!sharingRecordScopedIdentifier)
    {
      v96 = [CPLScopedIdentifier alloc];
      scopeIdentifier4 = [(CPLEngineScope *)self->_sharedScope scopeIdentifier];
      identifier7 = [scopedIdentifier identifier];
      v91 = [(CPLScopedIdentifier *)v96 initWithScopeIdentifier:scopeIdentifier4 identifier:identifier7];

LABEL_121:
      v99 = [(CPLEngineRemappedRecords *)self->_remappedRecords realScopedIdentifierForRemappedScopedIdentifier:v91];
      v100 = v99;
      if (v99)
      {
        v101 = v99;
      }

      else
      {
        v101 = v91;
      }

      v102 = v101;

      v103 = v102;
      v104 = [(CPLSharedBatchStorage *)self _correctPrivateScopedIdentifierForSharedScopedIdentifier:v102 currentPrivateScopedIdentifier:scopedIdentifier];
      if (([v104 isEqual:scopedIdentifier] & 1) == 0)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v110 = __CPLStorageOSLogDomain();
          if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v130 = scopedIdentifier;
            v131 = 2112;
            v132 = v103;
            v133 = 2112;
            v134 = v104;
            _os_log_impl(&dword_1DC05A000, v110, OS_LOG_TYPE_DEFAULT, "Sparse private %@ is pointing to %@ but the private sparse should be %@ - ignoring", buf, 0x20u);
          }
        }

        v111 = [[CPLRecordTarget alloc] initWithScopedIdentifier:scopedIdentifier];
        v23 = [objc_opt_class() newDeleteChangeWithScopedIdentifier:scopedIdentifier];

        goto LABEL_138;
      }

      v105 = v104;
      [(CPLEngineTransientRepositoryBatchStorage *)self transientRepository];
      v107 = v106 = v103;
      v108 = [v107 unmingledChangeWithScopedIdentifier:v106];

      v127 = v106;
      if (v108)
      {
        v109 = v108;
        v28 = 0;
      }

      else
      {
        v28 = [(CPLEngineIgnoredRecords *)self->_ignoredRecords recordWithScopedIdentifier:v106];
        v109 = v28;
        if (!v28)
        {
          v121 = v105;
          if (!v12)
          {
            v12 = [(CPLSharedBatchStorage *)self _targetForPrivateScopedIdentifier:scopedIdentifier];
          }

          if (([v12 targetState] & 0xFFFFFFFFFFFFFFFELL) != 2 || (-[CPLEngineCloudCache recordWithScopedIdentifier:isFinal:](self->_cloudCache, "recordWithScopedIdentifier:isFinal:", scopedIdentifier, 0), (v122 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v114 = 0;
            v28 = 0;
            goto LABEL_148;
          }

          v123 = v122;
          v125 = [[CPLRecordTarget alloc] initWithScopedIdentifier:scopedIdentifier otherScopedIdentifier:v106 targetState:3];

          v114 = 0;
          v28 = 0;
          v120 = 0;
          v119 = v123;
          goto LABEL_146;
        }
      }

      v114 = v109;
      isDelete2 = [v109 isDelete];
      v116 = [CPLRecordTarget alloc];
      if (isDelete2)
      {
        v117 = [(CPLRecordTarget *)v116 initWithScopedIdentifier:scopedIdentifier otherScopedIdentifier:v127 targetState:0];

LABEL_147:
        v12 = v117;
        v121 = v105;
LABEL_148:
        v23 = [objc_opt_class() newDeleteChangeWithScopedIdentifier:scopedIdentifier];
        goto LABEL_149;
      }

      v117 = [(CPLRecordTarget *)v116 initWithScopedIdentifier:scopedIdentifier otherScopedIdentifier:v127 targetState:3];

      v118 = [(CPLSharedBatchStorage *)self _remapSharedRecord:v114 target:v117];
      if (!v118)
      {
        goto LABEL_147;
      }

      v119 = v118;
      v125 = v117;
      v120 = 1;
      v121 = v105;
LABEL_146:
      [(CPLSharedRecordMerger *)self->_merger mergeRecord:v119 isSharedRecord:v120 inPrivateRecord:changeCopy];
      v23 = changeCopy;

      v12 = v125;
LABEL_149:

      goto LABEL_150;
    }

    v91 = sharingRecordScopedIdentifier;
    goto LABEL_121;
  }

  v13 = [CPLScopedIdentifier alloc];
  scopeIdentifier5 = [(CPLEngineScope *)self->_sharedScope scopeIdentifier];
  identifier8 = [scopedIdentifier identifier];
  v16 = [(CPLScopedIdentifier *)v13 initWithScopeIdentifier:scopeIdentifier5 identifier:identifier8];

  transientRepository3 = [(CPLEngineTransientRepositoryBatchStorage *)self transientRepository];
  v18 = [transientRepository3 unmingledChangeWithScopedIdentifier:v16];

  v127 = v16;
  if (v18)
  {
    goto LABEL_5;
  }

  v33 = [(CPLEngineCloudCache *)self->_cloudCache recordWithScopedIdentifier:scopedIdentifier isFinal:1];
  if (v33)
  {
    v34 = v33;
    sharingRecordChangeData = [v33 sharingRecordChangeData];

    if (sharingRecordChangeData)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v36 = __CPLStorageOSLogDomain();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v130 = v34;
          v131 = 2112;
          v132 = v16;
          _os_log_impl(&dword_1DC05A000, v36, OS_LOG_TYPE_DEFAULT, "Upgrading %@ in cloud cache to shared master %@", buf, 0x16u);
        }
      }

      v18 = [v34 copy];

      [v18 setScopedIdentifier:v16];
      [v18 awakeFromStorage];
      sharingRecordChangeData2 = [v18 sharingRecordChangeData];
      [v18 setRecordChangeData:sharingRecordChangeData2];

      [v18 setSharingRecordChangeData:0];
      if (v18)
      {
LABEL_5:
        isDelete3 = [v18 isDelete];
        isDelete4 = [changeCopy isDelete];
        v21 = [CPLRecordTarget alloc];
        if (isDelete3)
        {
          v22 = [(CPLRecordTarget *)v21 initWithScopedIdentifier:scopedIdentifier otherScopedIdentifier:v16 targetState:isDelete4 ^ 1u];

          v23 = changeCopy;
          [v23 setSharingRecordChangeData:0];
        }

        else
        {
          if (!isDelete4)
          {
            v22 = [(CPLRecordTarget *)v21 initWithScopedIdentifier:scopedIdentifier otherScopedIdentifier:v16 targetState:3];

            v23 = [(CPLSharedBatchStorage *)self _sharedRecordAsPrivateRecord:v18 target:v22];
            recordChangeData = [changeCopy recordChangeData];
            [v23 setRecordChangeData:recordChangeData];

            v28 = changeCopy;
            goto LABEL_37;
          }

          v22 = [(CPLRecordTarget *)v21 initWithScopedIdentifier:scopedIdentifier otherScopedIdentifier:v16 targetState:2];

          v23 = [(CPLSharedBatchStorage *)self _sharedRecordAsPrivateRecord:v18 target:v22];
          [v23 setRecordChangeData:0];
        }

        v28 = 0;
LABEL_37:
        v12 = v22;
        goto LABEL_38;
      }
    }

    else
    {
    }
  }

  v64 = v12;
  if (!v12)
  {
    v64 = [(CPLSharedBatchStorage *)self _targetForPrivateScopedIdentifier:scopedIdentifier];
  }

  v12 = v64;
  targetState2 = [v64 targetState];
  v28 = 0;
  if (targetState2 <= 1)
  {
    if (targetState2)
    {
      if (targetState2 == 1)
      {
        if ([changeCopy isDelete])
        {
          v66 = [[CPLRecordTarget alloc] initWithScopedIdentifier:scopedIdentifier otherScopedIdentifier:v16 targetState:0];

          v12 = v66;
        }

        goto LABEL_115;
      }

LABEL_118:
      v23 = 0;
      if (!v12)
      {
        goto LABEL_15;
      }

      goto LABEL_39;
    }

    v81 = [[CPLRecordTarget alloc] initWithScopedIdentifier:scopedIdentifier otherScopedIdentifier:v16 targetState:1];

    v23 = changeCopy;
    v28 = 0;
    v12 = v81;
LABEL_38:
    if (v12)
    {
      goto LABEL_39;
    }

LABEL_15:
    if ((_CPLSilentLogging & 1) == 0)
    {
      v30 = __CPLStorageOSLogDomain();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v130 = changeCopy;
        _os_log_impl(&dword_1DC05A000, v30, OS_LOG_TYPE_ERROR, "Target for %@ should have been determined by now", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
    [currentHandler handleFailureInMethod:v126 object:self file:v32 lineNumber:450 description:{@"Target for %@ should have been determined by now", changeCopy}];
LABEL_168:

    abort();
  }

  if (targetState2 == 2)
  {
    if ([changeCopy isDelete])
    {
      v23 = [(CPLEngineCloudCache *)self->_cloudCache recordWithScopedIdentifier:scopedIdentifier isFinal:0];
      if (!v23)
      {
        v23 = changeCopy;
      }

      [v23 setRecordChangeData:0];
      v28 = 0;
    }

    else
    {
      v28 = [changeCopy copy];
      v92 = [[CPLRecordTarget alloc] initWithScopedIdentifier:scopedIdentifier otherScopedIdentifier:v16 targetState:3];

      v93 = [(CPLEngineCloudCache *)self->_cloudCache recordWithScopedIdentifier:scopedIdentifier isFinal:0];
      if (v93)
      {
        v23 = v93;
        recordChangeData2 = [changeCopy recordChangeData];
        [v23 setRecordChangeData:recordChangeData2];
      }

      else
      {
        v23 = changeCopy;
      }

      v12 = v92;
    }

    goto LABEL_38;
  }

  if (targetState2 != 3)
  {
    v23 = 0;
    goto LABEL_38;
  }

  if ([changeCopy isDelete])
  {
    v67 = [(CPLEngineCloudCache *)self->_cloudCache recordWithScopedIdentifier:scopedIdentifier isFinal:0];
    if (v67)
    {
      v23 = v67;
      [v67 setRecordChangeData:0];
      v68 = [CPLRecordTarget alloc];
      v69 = scopedIdentifier;
      v70 = v16;
LABEL_82:
      v29 = [(CPLRecordTarget *)v68 initWithScopedIdentifier:v69 otherScopedIdentifier:v70 targetState:2];

LABEL_153:
      v28 = 0;
      goto LABEL_14;
    }

    goto LABEL_115;
  }

  v28 = [changeCopy copy];
  v23 = changeCopy;
  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_39:
  targetMapping2 = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
  [targetMapping2 setTarget:v12 forRecordWithScopedIdentifier:scopedIdentifier];

  if (!v23)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v124 = __CPLStorageOSLogDomain();
      if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v130 = changeCopy;
        _os_log_impl(&dword_1DC05A000, v124, OS_LOG_TYPE_ERROR, "failed to create merged private record from %@", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
    [currentHandler handleFailureInMethod:v126 object:self file:v32 lineNumber:453 description:{@"failed to create merged private record from %@", changeCopy}];
    goto LABEL_168;
  }

  v46 = v12;
  v47 = v127;
  if (identifier)
  {
    v48 = v127;
    *identifier = v127;
    if (v127)
    {
      [(NSMutableDictionary *)self->_alreadyProcessedChanges setObject:v23 forKeyedSubscript:v127];
    }
  }

  [v23 setSharingRecordIdentifier:0];
  v128 = 0;
  v49 = [v23 validateChangeWithError:&v128];
  v50 = v128;
  if ((v49 & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v51 = __CPLStorageOSLogDomain();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v52 = objc_opt_class();
        *buf = 138413314;
        v130 = v52;
        v131 = 2112;
        v132 = scopedIdentifier;
        v133 = 2112;
        v134 = v23;
        v135 = 2112;
        v136 = v46;
        v137 = 2112;
        v138 = v50;
        v53 = v52;
        _os_log_impl(&dword_1DC05A000, v51, OS_LOG_TYPE_ERROR, "Failed to merge incoming private <%@ %@>: %@ (%@): %@", buf, 0x34u);

        v47 = v127;
      }
    }

    v54 = [(CPLEngineCloudCache *)self->_cloudCache recordWithScopedIdentifier:scopedIdentifier isFinal:0];

    v23 = v54;
    if (!v54)
    {
      v23 = [objc_opt_class() newDeleteChangeWithScopedIdentifier:scopedIdentifier];
    }
  }

  [(NSMutableDictionary *)self->_alreadyProcessedChanges setObject:v23 forKeyedSubscript:scopedIdentifier];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v55 = __CPLStorageOSLogDomain();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      v56 = @"no shared record";
      *buf = 138412802;
      if (v47)
      {
        v56 = v47;
      }

      v130 = scopedIdentifier;
      v131 = 2112;
      v132 = v56;
      v133 = 2112;
      v134 = v23;
      _os_log_impl(&dword_1DC05A000, v55, OS_LOG_TYPE_DEBUG, "Merging private record %@/%@ to %@", buf, 0x20u);
    }
  }

  if (v28)
  {
    [v23 _setIgnoredRecord:v28];
  }

  v10 = v23;

LABEL_59:

  return v10;
}

- (id)_correctPrivateScopedIdentifierForSharedScopedIdentifier:(id)identifier currentPrivateScopedIdentifier:(id)scopedIdentifier
{
  v25 = *MEMORY[0x1E69E9840];
  scopedIdentifierCopy = scopedIdentifier;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [(CPLEngineRemappedRecords *)self->_remappedRecords scopedIdentifiersRemappedToScopedIdentifier:identifier, 0];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v21;
LABEL_3:
    v12 = 0;
    v13 = v10;
    while (1)
    {
      if (*v21 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v20 + 1) + 8 * v12);
      v15 = [CPLScopedIdentifier alloc];
      identifier = [v14 identifier];
      v10 = [(CPLScopedIdentifier *)v15 initRelativeToScopedIdentifier:scopedIdentifierCopy identifier:identifier];

      if ([(CPLEngineCloudCache *)self->_cloudCache hasRecordWithScopedIdentifier:v10])
      {
        break;
      }

      ++v12;
      v13 = v10;
      if (v9 == v12)
      {
        v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    if (v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = 0;
LABEL_13:

    v13 = v10;
  }

  v13 = v13;
  v10 = v13;
LABEL_15:
  if (v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = scopedIdentifierCopy;
  }

  v18 = v17;

  return v17;
}

- (id)_sharedRecordAsPrivateRecord:(id)record target:(id)target
{
  recordCopy = record;
  v7 = [(CPLSharedBatchStorage *)self _remapSharedRecord:recordCopy target:target];
  recordChangeData = [recordCopy recordChangeData];
  [v7 setSharingRecordChangeData:recordChangeData];

  [v7 setRecordChangeData:0];
  scopedIdentifier = [recordCopy scopedIdentifier];

  scopeIdentifier = [scopedIdentifier scopeIdentifier];
  [v7 setSharingScopeIdentifier:scopeIdentifier];

  return v7;
}

- (id)_remapSharedRecord:(id)record target:(id)target
{
  v28 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  targetCopy = target;
  if (!targetCopy)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = __CPLStorageOSLogDomain();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = recordCopy;
        _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_ERROR, "%@ should have a target here", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v19 lineNumber:115 description:{@"%@ should have a target here", recordCopy}];

    abort();
  }

  v9 = targetCopy;
  v23 = 0;
  v10 = [recordCopy translateToClientChangeUsingIDMapping:self error:&v23];
  v11 = v23;
  if (!v10)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v20 = __CPLStorageOSLogDomain();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v25 = recordCopy;
        v26 = 2112;
        v27 = v11;
        _os_log_impl(&dword_1DC05A000, v20, OS_LOG_TYPE_ERROR, "Failed to remap shared record %@: %@", buf, 0x16u);
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
    [currentHandler2 handleFailureInMethod:a2 object:self file:v22 lineNumber:118 description:{@"Failed to remap shared record %@: %@", recordCopy, v11}];

    abort();
  }

  scopedIdentifier = [v10 scopedIdentifier];
  scopedIdentifier2 = [v9 scopedIdentifier];
  v14 = [scopedIdentifier isEqual:scopedIdentifier2];

  if ((v14 & 1) == 0)
  {
    scopedIdentifier3 = [v9 scopedIdentifier];
    [v10 setScopedIdentifier:scopedIdentifier3];

    [v10 awakeFromStorage];
  }

  return v10;
}

- (BOOL)isRecordWithScopedIdentifierStashed:(id)stashed
{
  v4 = [(CPLSharedBatchStorage *)self _targetForPrivateScopedIdentifier:stashed];
  transientRepository = [(CPLEngineTransientRepositoryBatchStorage *)self transientRepository];
  scopedIdentifier = [v4 scopedIdentifier];
  v7 = [transientRepository hasStashedRecordWithScopedIdentifier:scopedIdentifier];

  if (v7)
  {
    LOBYTE(otherScopedIdentifier) = 1;
  }

  else
  {
    otherScopedIdentifier = [v4 otherScopedIdentifier];

    if (otherScopedIdentifier)
    {
      otherScopedIdentifier2 = [v4 otherScopedIdentifier];
      LOBYTE(otherScopedIdentifier) = [transientRepository hasStashedRecordWithScopedIdentifier:otherScopedIdentifier2];
    }
  }

  return otherScopedIdentifier;
}

- (BOOL)stashChange:(id)change error:(id *)error
{
  scopedIdentifier = [change scopedIdentifier];
  v7 = [(CPLSharedBatchStorage *)self _targetForPrivateScopedIdentifier:scopedIdentifier];

  transientRepository = [(CPLEngineTransientRepositoryBatchStorage *)self transientRepository];
  scopedIdentifier2 = [v7 scopedIdentifier];
  v10 = [transientRepository stashChangeWithScopedIdentifier:scopedIdentifier2 error:error];

  if (v10)
  {
    otherScopedIdentifier = [v7 otherScopedIdentifier];

    if (otherScopedIdentifier)
    {
      otherScopedIdentifier2 = [v7 otherScopedIdentifier];
      v13 = [transientRepository stashChangeWithScopedIdentifier:otherScopedIdentifier2 error:error];
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_privateScopedIdentifierForSharedScopedIdentifier:(id)identifier
{
  v3 = [(CPLSharedBatchStorage *)self _targetForSharedScopedIdentifier:identifier];
  scopedIdentifier = [v3 scopedIdentifier];

  return scopedIdentifier;
}

- (id)_targetForSharedScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  targetMapping = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
  v6 = [targetMapping targetForRecordWithOtherScopedIdentifier:identifierCopy];

  if (!v6)
  {
    v6 = [(CPLEngineCloudCache *)self->_cloudCache targetForRecordWithSharedCloudScopedIdentifier:identifierCopy trustRecordChangeData:1];
    targetMapping2 = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
    scopedIdentifier = [v6 scopedIdentifier];
    [targetMapping2 addKnownTarget:v6 forRecordWithScopedIdentifier:scopedIdentifier];
  }

  return v6;
}

- (id)_targetForPrivateScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  targetMapping = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
  v6 = [targetMapping targetForRecordWithScopedIdentifier:identifierCopy];

  if (!v6)
  {
    v6 = [(CPLEngineCloudCache *)self->_cloudCache targetForRecordWithCloudScopedIdentifier:identifierCopy trustRecordChangeData:1];
    targetMapping2 = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
    [targetMapping2 addKnownTarget:v6 forRecordWithScopedIdentifier:identifierCopy];
  }

  return v6;
}

- (CPLSharedBatchStorage)initWithTransientRepository:(id)repository scope:(id)scope sharedScope:(id)sharedScope merger:(id)merger
{
  repositoryCopy = repository;
  sharedScopeCopy = sharedScope;
  mergerCopy = merger;
  v27.receiver = self;
  v27.super_class = CPLSharedBatchStorage;
  v13 = [(CPLEngineTransientRepositoryBatchStorage *)&v27 initWithTransientRepository:repositoryCopy scope:scope];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_sharedScope, sharedScope);
    objc_storeStrong(&v14->_merger, merger);
    engineStore = [repositoryCopy engineStore];
    cloudCache = [engineStore cloudCache];
    cloudCache = v14->_cloudCache;
    v14->_cloudCache = cloudCache;

    ignoredRecords = [engineStore ignoredRecords];
    ignoredRecords = v14->_ignoredRecords;
    v14->_ignoredRecords = ignoredRecords;

    remappedRecords = [engineStore remappedRecords];
    remappedRecords = v14->_remappedRecords;
    v14->_remappedRecords = remappedRecords;

    v22 = objc_alloc_init(MEMORY[0x1E695DF00]);
    now = v14->_now;
    v14->_now = v22;

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v25 = [standardUserDefaults valueForKey:@"CPLAutomaticallyFixBadSparsePrivateAsset"];

    if (v25)
    {
      if (objc_opt_respondsToSelector())
      {
        v14->_automaticallyFixBadPrivateAsset = [v25 BOOLValue];
      }
    }

    else
    {
      v14->_automaticallyFixBadPrivateAsset = 0;
    }
  }

  return v14;
}

@end