@interface SBKSyncRequestData
- (BOOL)_needsConflictDetection;
- (id)_serializableConflictDetectionOrdinalForKey:(id)key;
- (id)_serializableConflictDetectionValue;
- (id)_serializableDeleteItemPayloadDictionaryForKey:(id)key;
- (id)_serializableUpdateItemPayloadDictionaryForKey:(id)key;
- (id)serializableRequestBodyPropertyList;
@end

@implementation SBKSyncRequestData

- (id)_serializableDeleteItemPayloadDictionaryForKey:(id)key
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"op";
  v10[1] = @"key";
  v11[0] = @"delete";
  v11[1] = key;
  v4 = MEMORY[0x277CBEAC0];
  keyCopy = key;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:v10 count:2];
  v7 = [v6 mutableCopy];

  v8 = [(SBKSyncRequestData *)self _serializableConflictDetectionOrdinalForKey:keyCopy];

  if (v8)
  {
    [v7 setObject:v8 forKey:@"ordinal"];
  }

  return v7;
}

- (id)_serializableUpdateItemPayloadDictionaryForKey:(id)key
{
  v17[3] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  syncTransaction = [(SBKSyncRequestData *)self syncTransaction];
  v6 = [syncTransaction keyValuePairForUpdatedKey:keyCopy];
  kvsPayload = [v6 kvsPayload];

  if (kvsPayload)
  {
    sBKDataByDeflatingWithNoZipHeader = [kvsPayload SBKDataByDeflatingWithNoZipHeader];
    v9 = sBKDataByDeflatingWithNoZipHeader;
    if (sBKDataByDeflatingWithNoZipHeader)
    {
      v10 = sBKDataByDeflatingWithNoZipHeader;
    }

    else
    {
      v10 = kvsPayload;
    }

    v11 = v10;

    v16[0] = @"op";
    v16[1] = @"key";
    v17[0] = @"put";
    v17[1] = keyCopy;
    v16[2] = @"value";
    v17[2] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];

    v13 = [v12 mutableCopy];
    v14 = [(SBKSyncRequestData *)self _serializableConflictDetectionOrdinalForKey:keyCopy];
    if (v14)
    {
      [v13 setObject:v14 forKey:@"ordinal"];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_needsConflictDetection
{
  syncTransaction = [(SBKSyncRequestData *)self syncTransaction];
  v3 = [syncTransaction conflictDetectionType] != 0;

  return v3;
}

- (id)_serializableConflictDetectionOrdinalForKey:(id)key
{
  keyCopy = key;
  if ([(SBKSyncRequestData *)self _needsConflictDetection])
  {
    syncTransaction = [(SBKSyncRequestData *)self syncTransaction];
    v6 = [syncTransaction conflictDetectionOrdinalForKey:keyCopy];

    if (v6)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", objc_msgSend(v6, "longLongValue")];
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (id)_serializableConflictDetectionValue
{
  v12[3] = *MEMORY[0x277D85DE8];
  if ([(SBKSyncRequestData *)self _needsConflictDetection])
  {
    v11[0] = &unk_287CA26F0;
    v11[1] = &unk_287CA2708;
    v12[0] = @"none";
    v12[1] = @"ordinal";
    v11[2] = &unk_287CA2720;
    v12[2] = @"version";
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
    v4 = MEMORY[0x277CCABB0];
    syncTransaction = [(SBKSyncRequestData *)self syncTransaction];
    v6 = [v4 numberWithInteger:{objc_msgSend(syncTransaction, "conflictDetectionType")}];
    v7 = [v3 objectForKey:v6];

    if (([(__CFString *)v7 isEqualToString:@"none"]& 1) != 0)
    {
      v8 = 0;
    }

    else
    {
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = @"none";
      }

      v8 = v9;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)serializableRequestBodyPropertyList
{
  v46 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  syncTransaction = [(SBKSyncRequestData *)self syncTransaction];
  keysToUpdate = [syncTransaction keysToUpdate];

  v7 = [keysToUpdate countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v37;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(keysToUpdate);
        }

        v11 = *(*(&v36 + 1) + 8 * i);
        v12 = [(SBKSyncRequestData *)self _serializableUpdateItemPayloadDictionaryForKey:v11];
        if (v12)
        {
          [array addObject:v12];
        }

        else
        {
          v13 = os_log_create("com.apple.amp.StoreBookkeeper", "Default");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v44 = v11;
            _os_log_impl(&dword_26BC19000, v13, OS_LOG_TYPE_DEFAULT, "WARNING: no data was provided for updated key %@, skipping just that item", buf, 0xCu);
          }
        }
      }

      v8 = [keysToUpdate countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v8);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  syncTransaction2 = [(SBKSyncRequestData *)self syncTransaction];
  keysToDelete = [syncTransaction2 keysToDelete];

  v16 = [keysToDelete countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v33;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(keysToDelete);
        }

        v20 = [(SBKSyncRequestData *)self _serializableDeleteItemPayloadDictionaryForKey:*(*(&v32 + 1) + 8 * j)];
        [array2 addObject:v20];
      }

      v17 = [keysToDelete countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v17);
  }

  _serializableConflictDetectionValue = [(SBKSyncRequestData *)self _serializableConflictDetectionValue];
  v22 = [array arrayByAddingObjectsFromArray:array2];
  v40[0] = @"domain";
  syncTransaction3 = [(SBKSyncRequestData *)self syncTransaction];
  domain = [syncTransaction3 domain];
  v41[0] = domain;
  v40[1] = @"version";
  syncTransaction4 = [(SBKSyncRequestData *)self syncTransaction];
  syncAnchor = [syncTransaction4 syncAnchor];
  v40[2] = @"ops";
  v41[1] = syncAnchor;
  v41[2] = v22;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
  v28 = [v27 mutableCopy];

  if ([_serializableConflictDetectionValue length])
  {
    [v28 setObject:_serializableConflictDetectionValue forKey:@"conflict-detection"];
  }

  v29 = os_log_create("com.apple.amp.StoreBookkeeper", "KVS");
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = v28;
    _os_log_impl(&dword_26BC19000, v29, OS_LOG_TYPE_DEFAULT, "Sync request payload (plist): %@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(context);

  return v28;
}

@end