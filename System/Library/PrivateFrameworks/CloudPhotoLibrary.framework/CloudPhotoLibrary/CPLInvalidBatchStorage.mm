@interface CPLInvalidBatchStorage
- (BOOL)hasChangesInScopeWithIdentifier:(id)identifier;
- (CPLInvalidBatchStorage)initWithTransientRepository:(id)repository scope:(id)scope;
@end

@implementation CPLInvalidBatchStorage

- (BOOL)hasChangesInScopeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  scope = [(CPLEngineTransientRepositoryBatchStorage *)self scope];
  scopeIdentifier = [scope scopeIdentifier];
  v7 = [identifierCopy isEqualToString:scopeIdentifier];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CPLInvalidBatchStorage;
    v8 = [(CPLEngineTransientRepositoryBatchStorage *)&v10 hasChangesInScopeWithIdentifier:identifierCopy];
  }

  return v8;
}

- (CPLInvalidBatchStorage)initWithTransientRepository:(id)repository scope:(id)scope
{
  v17 = *MEMORY[0x1E69E9840];
  repositoryCopy = repository;
  scopeCopy = scope;
  if ([repositoryCopy hasUnmingledChangesForScope:scopeCopy])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLStorageOSLogDomain_505();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = scopeCopy;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "%@ should have no changes to mingle any more", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineTransientRepositoryBatchStorage.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v13 lineNumber:100 description:{@"%@ should have no changes to mingle any more", scopeCopy}];

    abort();
  }

  v14.receiver = self;
  v14.super_class = CPLInvalidBatchStorage;
  v9 = [(CPLEngineTransientRepositoryBatchStorage *)&v14 initWithTransientRepository:repositoryCopy scope:scopeCopy];

  return v9;
}

@end