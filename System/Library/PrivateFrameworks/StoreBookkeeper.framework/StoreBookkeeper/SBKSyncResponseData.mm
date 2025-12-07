@interface SBKSyncResponseData
+ (id)deserializedResponseBodyWithTransaction:(id)transaction responseDictionary:(id)dictionary response:(id)response;
- (SBKSyncResponseData)initWithTransaction:(id)transaction responseDictionary:(id)dictionary response:(id)response;
- (id)description;
- (id)payloadDataForUpdateResponseKey:(id)key;
- (void)_deserializeResponseDictionary:(id)dictionary response:(id)response;
@end

@implementation SBKSyncResponseData

- (void)_deserializeResponseDictionary:(id)dictionary response:(id)response
{
  dictionaryCopy = dictionary;
  v6 = dictionaryCopy;
  if (dictionaryCopy)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __63__SBKSyncResponseData__deserializeResponseDictionary_response___block_invoke;
    v20[3] = &unk_279D22998;
    v7 = dictionaryCopy;
    v21 = v7;
    v8 = MEMORY[0x26D6917A0](v20);
    (v8)[2](v8, self->_deletedKeys, @"peer-ops", @"deletes", &__block_literal_global_201);
    updatedKeys = self->_updatedKeys;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __63__SBKSyncResponseData__deserializeResponseDictionary_response___block_invoke_4;
    v19[3] = &unk_279D229E0;
    v19[4] = self;
    (v8)[2](v8, updatedKeys, @"peer-ops", @"puts", v19);
    (v8)[2](v8, self->_conflictedKeys, @"ops", @"rejected", &__block_literal_global_53);
    successfullyUpdatedKeys = self->_successfullyUpdatedKeys;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __63__SBKSyncResponseData__deserializeResponseDictionary_response___block_invoke_54;
    v18[3] = &unk_279D229E0;
    v18[4] = self;
    (v8)[2](v8, successfullyUpdatedKeys, @"ops", @"put-ok", v18);
    successfullyDeletedKeys = self->_successfullyDeletedKeys;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __63__SBKSyncResponseData__deserializeResponseDictionary_response___block_invoke_2_55;
    v17[3] = &unk_279D229E0;
    v17[4] = self;
    (v8)[2](v8, successfullyDeletedKeys, @"ops", @"deleted-ok", v17);
    v12 = [v7 valueForKey:@"version"];
    syncAnchor = self->_syncAnchor;
    self->_syncAnchor = v12;

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = objc_opt_respondsToSelector();
      v15 = self->_syncAnchor;
      if (v14)
      {
        stringValue = [(NSString *)v15 stringValue];
        v15 = self->_syncAnchor;
      }

      else
      {
        stringValue = 0;
      }

      self->_syncAnchor = stringValue;
    }
  }
}

void __63__SBKSyncResponseData__deserializeResponseDictionary_response___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v30 = a2;
  v9 = a3;
  v27 = a4;
  v10 = a5;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __63__SBKSyncResponseData__deserializeResponseDictionary_response___block_invoke_2;
  v39[3] = &unk_279D22970;
  v11 = v10;
  v40 = v11;
  v12 = MEMORY[0x26D6917A0](v39);
  v13 = [*(a1 + 32) objectForKey:v9];
  objc_opt_class();
  v23 = v11;
  v24 = v9;
  if (objc_opt_isKindOfClass())
  {
    v43[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:{1, v11, v9}];

    v13 = v14;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v13;
  v28 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v28)
  {
    v26 = *v36;
    do
    {
      v15 = 0;
      do
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v15;
        v16 = [*(*(&v35 + 1) + 8 * v15) objectForKey:{v27, v23}];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v17 = [v16 countByEnumeratingWithState:&v31 objects:v41 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v32;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v32 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v31 + 1) + 8 * i);
              v22 = [v21 objectForKey:@"key"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v22 length] && (v12)[2](v12, v21, v22))
              {
                [v30 addObject:v22];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v31 objects:v41 count:16];
          }

          while (v18);
        }

        v15 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v28);
  }
}

uint64_t __63__SBKSyncResponseData__deserializeResponseDictionary_response___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = [v4 objectForKey:@"reason"];
  v7 = [v6 isEqual:@"oversize"];

  if (v7)
  {
    v8 = os_log_create("com.apple.amp.StoreBookkeeper", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_26BC19000, v8, OS_LOG_TYPE_ERROR, "ERROR: server rejected %@ because the payload was too big.", &v12, 0xCu);
    }
  }

  v9 = [v4 objectForKey:@"reason"];
  v10 = [v9 isEqual:@"conflicted"];

  return v10;
}

uint64_t __63__SBKSyncResponseData__deserializeResponseDictionary_response___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return (*(v1 + 16))();
  }

  else
  {
    return 1;
  }
}

- (id)payloadDataForUpdateResponseKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->_responseOpEntiesByKey objectForKey:key];
  v4 = [v3 objectForKey:@"value"];

  sBKDataByInflatingWithNoZipHeader = [v4 SBKDataByInflatingWithNoZipHeader];
  if (!sBKDataByInflatingWithNoZipHeader)
  {
    sBKDataByInflatingWithNoZipHeader = v4;
  }

  return sBKDataByInflatingWithNoZipHeader;
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v16.receiver = self;
  v16.super_class = SBKSyncResponseData;
  v3 = [(SBKSyncResponseData *)&v16 description];
  syncAnchor = self->_syncAnchor;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](self->_successfullyUpdatedKeys, "count")}];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](self->_successfullyDeletedKeys, "count")}];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](self->_updatedKeys, "count")}];
  v8 = shortArrayDescription(self->_updatedKeys);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](self->_conflictedKeys, "count")}];
  v10 = shortArrayDescription(self->_conflictedKeys);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](self->_deletedKeys, "count")}];
  v12 = shortArrayDescription(self->_deletedKeys);
  v13 = [v15 stringWithFormat:@"%@ response: syncAnchor = %@\n\nput-oks(%@), delete-oks(%@), updatedKeys(%@) = %@\n\nconflictedKeys(%@) = %@\n\ndeletedKeys(%@) = %@\n\n", v3, syncAnchor, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (SBKSyncResponseData)initWithTransaction:(id)transaction responseDictionary:(id)dictionary response:(id)response
{
  transactionCopy = transaction;
  dictionaryCopy = dictionary;
  responseCopy = response;
  v27.receiver = self;
  v27.super_class = SBKSyncResponseData;
  v12 = [(SBKSyncResponseData *)&v27 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_transaction, transaction);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    responseOpEntiesByKey = v13->_responseOpEntiesByKey;
    v13->_responseOpEntiesByKey = dictionary;

    array = [MEMORY[0x277CBEB18] array];
    updatedKeys = v13->_updatedKeys;
    v13->_updatedKeys = array;

    array2 = [MEMORY[0x277CBEB18] array];
    deletedKeys = v13->_deletedKeys;
    v13->_deletedKeys = array2;

    array3 = [MEMORY[0x277CBEB18] array];
    conflictedKeys = v13->_conflictedKeys;
    v13->_conflictedKeys = array3;

    array4 = [MEMORY[0x277CBEB18] array];
    successfullyUpdatedKeys = v13->_successfullyUpdatedKeys;
    v13->_successfullyUpdatedKeys = array4;

    array5 = [MEMORY[0x277CBEB18] array];
    successfullyDeletedKeys = v13->_successfullyDeletedKeys;
    v13->_successfullyDeletedKeys = array5;

    [(SBKSyncResponseData *)v13 _deserializeResponseDictionary:dictionaryCopy response:responseCopy];
  }

  return v13;
}

+ (id)deserializedResponseBodyWithTransaction:(id)transaction responseDictionary:(id)dictionary response:(id)response
{
  responseCopy = response;
  dictionaryCopy = dictionary;
  transactionCopy = transaction;
  v10 = [objc_alloc(objc_opt_class()) initWithTransaction:transactionCopy responseDictionary:dictionaryCopy response:responseCopy];

  return v10;
}

@end