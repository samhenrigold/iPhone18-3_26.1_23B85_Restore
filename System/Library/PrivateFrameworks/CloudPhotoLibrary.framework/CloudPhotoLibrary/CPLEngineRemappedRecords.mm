@interface CPLEngineRemappedRecords
- (BOOL)addRemappedRecordWithScopedIdentifier:(id)identifier realScopedIdentifier:(id)scopedIdentifier error:(id *)error;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)isRecordWithScopedIdentifierRemapped:(id)remapped;
- (BOOL)removeRemappedRecordWithScopedIdentifier:(id)identifier error:(id *)error;
- (id)_fixupRemappedRecordsAndReturnBestCloudScopedIdentifierFromRemappedScopedIdentifiers:(id)identifiers fallback:(id)fallback;
- (id)realScopedIdentifierForRemappedScopedIdentifier:(id)identifier;
- (id)scopedIdentifiersRemappedToScopedIdentifier:(id)identifier;
- (void)writeTransactionDidFail;
- (void)writeTransactionDidSucceed;
@end

@implementation CPLEngineRemappedRecords

- (void)writeTransactionDidSucceed
{
  v4.receiver = self;
  v4.super_class = CPLEngineRemappedRecords;
  [(CPLEngineStorage *)&v4 writeTransactionDidSucceed];
  perTransactionRemappedScopedIdentifiers = self->_perTransactionRemappedScopedIdentifiers;
  self->_perTransactionRemappedScopedIdentifiers = 0;
}

- (void)writeTransactionDidFail
{
  v4.receiver = self;
  v4.super_class = CPLEngineRemappedRecords;
  [(CPLEngineStorage *)&v4 writeTransactionDidFail];
  perTransactionRemappedScopedIdentifiers = self->_perTransactionRemappedScopedIdentifiers;
  self->_perTransactionRemappedScopedIdentifiers = 0;
}

- (BOOL)isRecordWithScopedIdentifierRemapped:(id)remapped
{
  remappedCopy = remapped;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject isRecordWithScopedIdentifierRemapped:remappedCopy];

  return v6;
}

- (id)scopedIdentifiersRemappedToScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject scopedIdentifiersRemappedToScopedIdentifier:identifierCopy];

  return v6;
}

- (id)realScopedIdentifierForRemappedScopedIdentifier:(id)identifier
{
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_perTransactionRemappedScopedIdentifiers objectForKeyedSubscript:identifierCopy];
  if (!v5)
  {
    v6 = identifierCopy;
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    platformObject = [(CPLEngineStorage *)self platformObject];
    v9 = v6;
    v10 = v9;
    if ([v7 containsObject:v9])
    {
LABEL_7:
      if ((_CPLSilentLogging & 1) == 0)
      {
        v13 = __CPLStorageOSLogDomain_11340();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v28 = v7;
          _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_ERROR, "Infinite remaps: %@", buf, 0xCu);
        }
      }

      v5 = [(CPLEngineRemappedRecords *)self _fixupRemappedRecordsAndReturnBestCloudScopedIdentifierFromRemappedScopedIdentifiers:v7 fallback:v9];
    }

    else
    {
      v5 = v9;
      while (1)
      {
        v11 = [(NSMutableDictionary *)self->_perTransactionRemappedScopedIdentifiers objectForKeyedSubscript:v5];
        if (!v11)
        {
          v11 = [platformObject realScopedIdentifierForRemappedScopedIdentifier:v5];
          if (!v11)
          {
            break;
          }
        }

        v12 = v11;
        [v7 addObject:v5];
        v10 = v12;

        v5 = v10;
        if ([v7 containsObject:v10])
        {
          goto LABEL_7;
        }
      }

      v10 = v5;
    }

    if (!self->_perTransactionRemappedScopedIdentifiers)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      perTransactionRemappedScopedIdentifiers = self->_perTransactionRemappedScopedIdentifiers;
      self->_perTransactionRemappedScopedIdentifiers = v14;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v16 = v7;
    v17 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v23;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [(NSMutableDictionary *)self->_perTransactionRemappedScopedIdentifiers setObject:v5 forKeyedSubscript:*(*(&v22 + 1) + 8 * i), v22];
        }

        v18 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v18);
    }
  }

  return v5;
}

- (id)_fixupRemappedRecordsAndReturnBestCloudScopedIdentifierFromRemappedScopedIdentifiers:(id)identifiers fallback:(id)fallback
{
  v34 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  fallbackCopy = fallback;
  engineStore = [(CPLEngineStorage *)self engineStore];
  idMapping = [engineStore idMapping];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = identifiersCopy;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
  v12 = fallbackCopy;
  if (v11)
  {
    v13 = v11;
    v14 = *v30;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        v28 = 0;
        v17 = [idMapping localScopedIdentifierForCloudScopedIdentifier:v16 isFinal:&v28];
        if (v17)
        {
          v18 = v17;
          v12 = v16;

          v19 = [v12 copy];
          engineStore2 = [(CPLEngineStorage *)self engineStore];
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __122__CPLEngineRemappedRecords__fixupRemappedRecordsAndReturnBestCloudScopedIdentifierFromRemappedScopedIdentifiers_fallback___block_invoke;
          v26[3] = &unk_1E86205B8;
          v26[4] = self;
          v27 = v19;
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __122__CPLEngineRemappedRecords__fixupRemappedRecordsAndReturnBestCloudScopedIdentifierFromRemappedScopedIdentifiers_fallback___block_invoke_3;
          v24[3] = &unk_1E86205E0;
          v25 = v27;
          v21 = v27;
          v22 = [engineStore2 performWriteTransactionWithBlock:v26 completionHandler:v24];

          goto LABEL_11;
        }
      }

      v13 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    v12 = fallbackCopy;
  }

LABEL_11:

  return v12;
}

void __122__CPLEngineRemappedRecords__fixupRemappedRecordsAndReturnBestCloudScopedIdentifierFromRemappedScopedIdentifiers_fallback___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __122__CPLEngineRemappedRecords__fixupRemappedRecordsAndReturnBestCloudScopedIdentifierFromRemappedScopedIdentifiers_fallback___block_invoke_2;
  v4[3] = &unk_1E8620940;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 do:v4];
}

void __122__CPLEngineRemappedRecords__fixupRemappedRecordsAndReturnBestCloudScopedIdentifierFromRemappedScopedIdentifiers_fallback___block_invoke_3(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 error];

  if (v4 && (_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLStorageOSLogDomain_11340();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [v3 error];
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "Failed to fixup infinite loop for remapped identifiers related to %@: %@", &v8, 0x16u);
    }
  }
}

uint64_t __122__CPLEngineRemappedRecords__fixupRemappedRecordsAndReturnBestCloudScopedIdentifierFromRemappedScopedIdentifiers_fallback___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) platformObject];
  v5 = [v4 removeRemappedRecordWithScopedIdentifier:*(a1 + 40) error:a2];

  return v5;
}

- (BOOL)removeRemappedRecordWithScopedIdentifier:(id)identifier error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v14 = 0;
  v8 = [platformObject removeRemappedRecordWithScopedIdentifier:identifierCopy error:&v14];
  v9 = v14;

  if (v8)
  {
    perTransactionRemappedScopedIdentifiers = self->_perTransactionRemappedScopedIdentifiers;
    self->_perTransactionRemappedScopedIdentifiers = 0;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLStorageOSLogDomain_11340();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v16 = identifierCopy;
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "Failed to discard remapped record %@: %@ - ignoring", buf, 0x16u);
      }
    }

    if (error)
    {
      v12 = v9;
      *error = v9;
    }
  }

  return v8;
}

- (BOOL)addRemappedRecordWithScopedIdentifier:(id)identifier realScopedIdentifier:(id)scopedIdentifier error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  scopedIdentifierCopy = scopedIdentifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v16 = 0;
  v11 = [platformObject addRemappedRecordWithScopedIdentifier:identifierCopy realScopedIdentifier:scopedIdentifierCopy error:&v16];
  v12 = v16;

  if (v11)
  {
    [(NSMutableDictionary *)self->_perTransactionRemappedScopedIdentifiers removeObjectForKey:identifierCopy];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = __CPLStorageOSLogDomain_11340();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v18 = identifierCopy;
        v19 = 2112;
        v20 = scopedIdentifierCopy;
        v21 = 2112;
        v22 = v12;
        _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_ERROR, "Failed to remapped record %@ -> %@: %@ - ignoring", buf, 0x20u);
      }
    }

    if (error)
    {
      v14 = v12;
      *error = v12;
    }
  }

  return v11;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject deleteRecordsForScopeIndex:index maxCount:count deletedCount:deletedCount error:error];

  return error;
}

@end