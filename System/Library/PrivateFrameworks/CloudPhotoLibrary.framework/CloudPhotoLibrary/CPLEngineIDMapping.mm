@interface CPLEngineIDMapping
- (BOOL)addAddEventForRecordWithLocalScopedIdentifier:(id)identifier direction:(unint64_t)direction error:(id *)error;
- (BOOL)addCloudScopedIdentifier:(id)identifier forLocalScopedIdentifier:(id)scopedIdentifier isFinal:(BOOL)final direction:(unint64_t)direction error:(id *)error;
- (BOOL)addDeleteEventForRecordWithLocalScopedIdentifier:(id)identifier direction:(unint64_t)direction error:(id *)error;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)hasPendingIdentifiers;
- (BOOL)markAllPendingIdentifiersForScopeWithIdentifier:(id)identifier asFinalWithError:(id *)error;
- (BOOL)removeMappingForCloudScopedIdentifier:(id)identifier error:(id *)error;
- (BOOL)resetAllFinalCloudIdentifiersForScopeWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)setFinalCloudScopedIdentifier:(id)identifier forPendingCloudScopedIdentifier:(id)scopedIdentifier error:(id *)error;
- (id)cloudScopedIdentifierForLocalScopedIdentifier:(id)identifier isFinal:(BOOL *)final;
- (id)firstAvailableCloudScopedIdentifierForProposedCloudScopedIdentifier:(id)identifier;
- (id)localScopedIdentifierForCloudScopedIdentifier:(id)identifier isFinal:(BOOL *)final;
- (id)localScopedIdentifierForCloudScopedIdentifierIncludeRemappedRecords:(id)records;
- (id)setupCloudScopedIdentifier:(id)identifier forLocalScopedIdentifier:(id)scopedIdentifier isFinal:(BOOL)final direction:(unint64_t)direction error:(id *)error;
@end

@implementation CPLEngineIDMapping

- (BOOL)resetAllFinalCloudIdentifiersForScopeWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject resetAllFinalCloudIdentifiersForScopeWithIdentifier:identifierCopy error:error];

  return error;
}

- (BOOL)addAddEventForRecordWithLocalScopedIdentifier:(id)identifier direction:(unint64_t)direction error:(id *)error
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject addAddEventForRecordWithLocalScopedIdentifier:identifierCopy direction:direction error:error];

  return error;
}

- (BOOL)addDeleteEventForRecordWithLocalScopedIdentifier:(id)identifier direction:(unint64_t)direction error:(id *)error
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject addDeleteEventForRecordWithLocalScopedIdentifier:identifierCopy direction:direction error:error];

  return error;
}

- (BOOL)removeMappingForCloudScopedIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject removeMappingForCloudScopedIdentifier:identifierCopy error:error];

  return error;
}

- (BOOL)hasPendingIdentifiers
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  hasPendingIdentifiers = [platformObject hasPendingIdentifiers];

  return hasPendingIdentifiers;
}

- (BOOL)markAllPendingIdentifiersForScopeWithIdentifier:(id)identifier asFinalWithError:(id *)error
{
  identifierCopy = identifier;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain_6249();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v11 = 0;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "Marking all pending cloud identifiers as final", v11, 2u);
    }
  }

  platformObject = [(CPLEngineStorage *)self platformObject];
  v9 = [platformObject markAllPendingIdentifiersForScopeWithIdentifier:identifierCopy asFinalWithError:error];

  return v9;
}

- (BOOL)setFinalCloudScopedIdentifier:(id)identifier forPendingCloudScopedIdentifier:(id)scopedIdentifier error:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  scopedIdentifierCopy = scopedIdentifier;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = __CPLStorageOSLogDomain_6249();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v14 = 138412546;
      v15 = scopedIdentifierCopy;
      v16 = 2112;
      v17 = identifierCopy;
      _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEBUG, "Remapping cloud identifier %@ to %@", &v14, 0x16u);
    }
  }

  platformObject = [(CPLEngineStorage *)self platformObject];
  v12 = [platformObject setFinalCloudScopedIdentifier:identifierCopy forPendingCloudScopedIdentifier:scopedIdentifierCopy error:error];

  return v12;
}

- (id)firstAvailableCloudScopedIdentifierForProposedCloudScopedIdentifier:(id)identifier
{
  v18 = 0;
  identifierCopy = identifier;
  scopeIdentifier = [(CPLScopedIdentifier *)identifierCopy scopeIdentifier];
  platformObject = [(CPLEngineStorage *)self platformObject];
  v7 = [platformObject localScopedIdentifierForCloudScopedIdentifier:identifierCopy isFinal:&v18];

  v8 = identifierCopy;
  if (v7)
  {
    v9 = 1;
    v10 = identifierCopy;
    do
    {
      v11 = [CPLScopedIdentifier alloc];
      v12 = objc_alloc(MEMORY[0x1E696AEC0]);
      identifier = [(CPLScopedIdentifier *)identifierCopy identifier];
      v14 = [v12 initWithFormat:@"%@_%lu", identifier, v9];
      v8 = [(CPLScopedIdentifier *)v11 initWithScopeIdentifier:scopeIdentifier identifier:v14];

      platformObject2 = [(CPLEngineStorage *)self platformObject];
      v16 = [platformObject2 localScopedIdentifierForCloudScopedIdentifier:v8 isFinal:&v18];

      ++v9;
      v10 = v8;
    }

    while (v16);
  }

  return v8;
}

- (id)setupCloudScopedIdentifier:(id)identifier forLocalScopedIdentifier:(id)scopedIdentifier isFinal:(BOOL)final direction:(unint64_t)direction error:(id *)error
{
  finalCopy = final;
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  scopedIdentifierCopy = scopedIdentifier;
  v14 = [(CPLEngineIDMapping *)self firstAvailableCloudScopedIdentifierForProposedCloudScopedIdentifier:identifierCopy];
  if ([v14 isEqual:identifierCopy])
  {
    if (_CPLSilentLogging)
    {
      goto LABEL_14;
    }

    v15 = __CPLStorageOSLogDomain_6249();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_13;
    }

    v16 = " temporarily";
    *v26 = 138412802;
    *&v26[4] = scopedIdentifierCopy;
    if (finalCopy)
    {
      v16 = "";
    }

    *&v26[12] = 2112;
    *&v26[14] = v14;
    *&v26[22] = 2080;
    v27 = v16;
    v17 = "Mapping local identifier %@ to cloud identifier %@%s";
    v18 = v15;
    v19 = OS_LOG_TYPE_DEBUG;
    v20 = 32;
    goto LABEL_12;
  }

  if (_CPLSilentLogging)
  {
    goto LABEL_14;
  }

  v15 = __CPLStorageOSLogDomain_6249();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v21 = " temporarily";
    *v26 = 138413058;
    *&v26[4] = scopedIdentifierCopy;
    *&v26[12] = 2112;
    if (finalCopy)
    {
      v21 = "";
    }

    *&v26[14] = v14;
    *&v26[22] = 2080;
    v27 = v21;
    LOWORD(v28) = 2112;
    *(&v28 + 2) = identifierCopy;
    v17 = "Mapping local identifier %@ to cloud identifier %@%s [%@ was already taken]";
    v18 = v15;
    v19 = OS_LOG_TYPE_DEFAULT;
    v20 = 42;
LABEL_12:
    _os_log_impl(&dword_1DC05A000, v18, v19, v17, v26, v20);
  }

LABEL_13:

LABEL_14:
  v22 = [(CPLEngineStorage *)self platformObject:*v26];
  v23 = [v22 addCloudScopedIdentifier:v14 forLocalScopedIdentifier:scopedIdentifierCopy isFinal:finalCopy direction:direction error:error];

  if (v23)
  {
    v24 = v14;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (BOOL)addCloudScopedIdentifier:(id)identifier forLocalScopedIdentifier:(id)scopedIdentifier isFinal:(BOOL)final direction:(unint64_t)direction error:(id *)error
{
  finalCopy = final;
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  scopedIdentifierCopy = scopedIdentifier;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v14 = __CPLStorageOSLogDomain_6249();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = " temporarily";
      *v19 = 138412802;
      *&v19[4] = scopedIdentifierCopy;
      if (finalCopy)
      {
        v15 = "";
      }

      *&v19[12] = 2112;
      *&v19[14] = identifierCopy;
      v20 = 2080;
      v21 = v15;
      _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEBUG, "Mapping local identifier %@ to cloud identifier %@%s", v19, 0x20u);
    }
  }

  v16 = [(CPLEngineStorage *)self platformObject:*v19];
  v17 = [v16 addCloudScopedIdentifier:identifierCopy forLocalScopedIdentifier:scopedIdentifierCopy isFinal:finalCopy direction:direction error:error];

  return v17;
}

- (id)localScopedIdentifierForCloudScopedIdentifierIncludeRemappedRecords:(id)records
{
  recordsCopy = records;
  v12 = 0;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject localScopedIdentifierForCloudScopedIdentifier:recordsCopy isFinal:&v12];

  if (!v6)
  {
    engineStore = [(CPLEngineStorage *)self engineStore];
    remappedRecords = [engineStore remappedRecords];
    v9 = [remappedRecords realScopedIdentifierForRemappedScopedIdentifier:recordsCopy];

    if (v9 && ([v9 isEqual:recordsCopy] & 1) == 0)
    {
      platformObject2 = [(CPLEngineStorage *)self platformObject];
      v6 = [platformObject2 localScopedIdentifierForCloudScopedIdentifier:v9 isFinal:&v12];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)localScopedIdentifierForCloudScopedIdentifier:(id)identifier isFinal:(BOOL *)final
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v8 = [platformObject localScopedIdentifierForCloudScopedIdentifier:identifierCopy isFinal:final];

  return v8;
}

- (id)cloudScopedIdentifierForLocalScopedIdentifier:(id)identifier isFinal:(BOOL *)final
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v9 = [platformObject cloudScopedIdentifierForLocalScopedIdentifier:identifierCopy isFinal:final];

  if (!v9 && *final)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLStorageOSLogDomain_6249();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = identifierCopy;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "No cloud identifier for %@ means the cloud identifier should not be final", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineIDMapping.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v13 lineNumber:33 description:{@"No cloud identifier for %@ means the cloud identifier should not be final", identifierCopy}];

    abort();
  }

  return v9;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject deleteRecordsForScopeIndex:index maxCount:count deletedCount:deletedCount error:error];

  return error;
}

@end