@interface HDDeviceKeyValueStoreManager
- (BOOL)deleteProtectedKVEntriesForDeviceContext:(id)context error:(id *)error;
- (BOOL)enumerateAllEntriesForSyncIdentity:(id)identity protectionCategory:(int64_t)category error:(id *)error enumerationHandler:(id)handler;
- (BOOL)insertOrUpdateData:(id)data forKey:(id)key transaction:(id)transaction domainName:(id)name protectionCategory:(int64_t)category deviceContext:(id)context modificationDate:(id)date error:(id *)self0;
- (BOOL)replaceOldSyncIdentity:(id)identity newSyncIdentity:(id)syncIdentity error:(id *)error;
- (BOOL)setData:(id)data forKey:(id)key domainName:(id)name protectionCategory:(int64_t)category error:(id *)error;
- (BOOL)setDate:(id)date forKey:(id)key domainName:(id)name protectionCategory:(int64_t)category error:(id *)error;
- (BOOL)setNumber:(id)number forKey:(id)key domainName:(id)name protectionCategory:(int64_t)category error:(id *)error;
- (BOOL)setString:(id)string forKey:(id)key domainName:(id)name protectionCategory:(int64_t)category error:(id *)error;
- (BOOL)updateKeyValuePairsForRemoteEntries:(id)entries deviceContexts:(id)contexts error:(id *)error;
- (HDDeviceKeyValueStoreManager)initWithProfile:(id)profile;
- (HDProfile)profile;
- (id)_fetchEntriesForDomain:(void *)domain key:(uint64_t)key protectionCategory:(char)category latest:(uint64_t)latest error:;
- (id)fetchEntryForKey:(id)key domain:(id)domain syncIdentity:(id)identity category:(int64_t)category error:(id *)error;
- (id)mostRecentEntryForDomain:(id)domain key:(id)key protectionCategory:(int64_t)category error:(id *)error;
- (void)_journalOrSetData:(void *)data forKey:(void *)key domainName:(uint64_t)name protectionCategory:(void *)category deviceContext:(void *)context modificationDate:(uint64_t)date error:;
@end

@implementation HDDeviceKeyValueStoreManager

- (HDDeviceKeyValueStoreManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v12.receiver = self;
  v12.super_class = HDDeviceKeyValueStoreManager;
  v5 = [(HDDeviceKeyValueStoreManager *)&v12 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CCD738]);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 initWithName:v8 loggingCategory:*MEMORY[0x277CCC328]];
    observers = v5->_observers;
    v5->_observers = v9;

    objc_storeWeak(&v5->_profile, profileCopy);
  }

  return v5;
}

- (id)_fetchEntriesForDomain:(void *)domain key:(uint64_t)key protectionCategory:(char)category latest:(uint64_t)latest error:
{
  v38[1] = *MEMORY[0x277D85DE8];
  v11 = a2;
  domainCopy = domain;
  if (self)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__108;
    v36 = __Block_byref_object_dispose__108;
    v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (domainCopy)
    {
      v38[0] = domainCopy;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
    }

    else
    {
      v13 = 0;
    }

    v14 = objc_opt_class();
    profile = [self profile];
    database = [profile database];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __91__HDDeviceKeyValueStoreManager__fetchEntriesForDomain_key_protectionCategory_latest_error___block_invoke;
    v25 = &unk_278622A28;
    v29 = v14;
    v17 = v13;
    v26 = v17;
    categoryCopy = category;
    keyCopy = key;
    v27 = v11;
    v28 = &v32;
    v18 = [v14 performReadTransactionWithHealthDatabase:database error:latest block:&v22];

    if (v18 && [v33[5] count])
    {
      v19 = v33[5];
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    _Block_object_dispose(&v32, 8);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)mostRecentEntryForDomain:(id)domain key:(id)key protectionCategory:(int64_t)category error:(id *)error
{
  v7 = [(HDDeviceKeyValueStoreManager *)self _fetchEntriesForDomain:domain key:key protectionCategory:category latest:1 error:error];
  v8 = v7;
  if (v7)
  {
    if ([v7 count] < 2)
    {
      if ([v8 count] == 1)
      {
        firstObject = [v8 firstObject];
        goto LABEL_11;
      }
    }

    else
    {
      v9 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Multiple storage groups retrieved while fetching the most recent entry."];
      if (v9)
      {
        if (error)
        {
          v10 = v9;
          *error = v9;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  firstObject = 0;
LABEL_11:

  return firstObject;
}

- (BOOL)enumerateAllEntriesForSyncIdentity:(id)identity protectionCategory:(int64_t)category error:(id *)error enumerationHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  v11 = objc_opt_class();
  profile = [(HDDeviceKeyValueStoreManager *)self profile];
  database = [profile database];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __111__HDDeviceKeyValueStoreManager_enumerateAllEntriesForSyncIdentity_protectionCategory_error_enumerationHandler___block_invoke;
  v17[3] = &unk_278622880;
  v19 = handlerCopy;
  v20 = v11;
  v18 = identityCopy;
  v14 = handlerCopy;
  v15 = identityCopy;
  LOBYTE(error) = [v11 performReadTransactionWithHealthDatabase:database error:error block:v17];

  return error;
}

- (id)fetchEntryForKey:(id)key domain:(id)domain syncIdentity:(id)identity category:(int64_t)category error:(id *)error
{
  keyCopy = key;
  domainCopy = domain;
  identityCopy = identity;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__108;
  v33 = __Block_byref_object_dispose__108;
  v34 = 0;
  v14 = objc_opt_class();
  profile = [(HDDeviceKeyValueStoreManager *)self profile];
  database = [profile database];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __84__HDDeviceKeyValueStoreManager_fetchEntryForKey_domain_syncIdentity_category_error___block_invoke;
  v23[3] = &unk_2786228A8;
  v23[4] = self;
  v17 = identityCopy;
  v24 = v17;
  v27 = &v29;
  v28 = v14;
  v18 = keyCopy;
  v25 = v18;
  v19 = domainCopy;
  v26 = v19;
  LODWORD(error) = [v14 performReadTransactionWithHealthDatabase:database error:error block:v23];

  if (error)
  {
    v20 = v30[5];
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  _Block_object_dispose(&v29, 8);

  return v21;
}

uint64_t __84__HDDeviceKeyValueStoreManager_fetchEntryForKey_domain_syncIdentity_category_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) profile];
  v7 = [v6 syncIdentityManager];
  v8 = *(a1 + 40);
  v23 = 0;
  v9 = [v7 concreteIdentityForIdentity:v8 shouldCreate:0 transaction:v5 error:&v23];
  v10 = v23;

  if (v9)
  {
    v11 = *(a1 + 72);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v14 = [v9 entity];
    v22 = v10;
    v15 = [v11 fetchEntryForKey:v12 domain:v13 syncEntityIdentity:objc_msgSend(v14 transaction:"persistentID") error:{v5, &v22}];
    v16 = v22;

    v17 = *(*(a1 + 64) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v15;

    if (v16)
    {
      if (a3)
      {
        v19 = v16;
        v20 = 0;
        *a3 = v16;
      }

      else
      {
        _HKLogDroppedError();
        v20 = 0;
      }

      v10 = v16;
    }

    else
    {
      v10 = 0;
      v20 = 1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)setDate:(id)date forKey:(id)key domainName:(id)name protectionCategory:(int64_t)category error:(id *)error
{
  dateCopy = date;
  keyCopy = key;
  nameCopy = name;
  if (!dateCopy)
  {
    v15 = 0;
    goto LABEL_5;
  }

  v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:dateCopy requiringSecureCoding:0 error:error];
  if (v15)
  {
LABEL_5:
    v16 = [(HDDeviceKeyValueStoreManager *)self setData:v15 forKey:keyCopy domainName:nameCopy protectionCategory:category error:error];

    goto LABEL_6;
  }

  v16 = 0;
LABEL_6:

  return v16;
}

- (BOOL)setNumber:(id)number forKey:(id)key domainName:(id)name protectionCategory:(int64_t)category error:(id *)error
{
  numberCopy = number;
  keyCopy = key;
  nameCopy = name;
  if (!numberCopy)
  {
    v15 = 0;
    goto LABEL_5;
  }

  v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:numberCopy requiringSecureCoding:0 error:error];
  if (v15)
  {
LABEL_5:
    v16 = [(HDDeviceKeyValueStoreManager *)self setData:v15 forKey:keyCopy domainName:nameCopy protectionCategory:category error:error];

    goto LABEL_6;
  }

  v16 = 0;
LABEL_6:

  return v16;
}

- (BOOL)setString:(id)string forKey:(id)key domainName:(id)name protectionCategory:(int64_t)category error:(id *)error
{
  stringCopy = string;
  keyCopy = key;
  nameCopy = name;
  if (!stringCopy)
  {
    v15 = 0;
    goto LABEL_5;
  }

  v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:stringCopy requiringSecureCoding:0 error:error];
  if (v15)
  {
LABEL_5:
    v16 = [(HDDeviceKeyValueStoreManager *)self setData:v15 forKey:keyCopy domainName:nameCopy protectionCategory:category error:error];

    goto LABEL_6;
  }

  v16 = 0;
LABEL_6:

  return v16;
}

- (BOOL)setData:(id)data forKey:(id)key domainName:(id)name protectionCategory:(int64_t)category error:(id *)error
{
  dataCopy = data;
  keyCopy = key;
  nameCopy = name;
  v15 = [HDDeviceContext localProductTypeEnumWithError:error];
  if (v15)
  {
    categoryCopy = category;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__108;
    v31 = __Block_byref_object_dispose__108;
    v32 = 0;
    profile = [(HDDeviceKeyValueStoreManager *)self profile];
    database = [profile database];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __83__HDDeviceKeyValueStoreManager_setData_forKey_domainName_protectionCategory_error___block_invoke;
    v26[3] = &unk_278619398;
    v26[4] = self;
    v26[5] = &v27;
    v18 = [(HDHealthEntity *)HDSyncIdentityEntity performReadTransactionWithHealthDatabase:database error:error block:v26];

    if (v18)
    {
      v19 = [HDDeviceContext alloc];
      unsignedIntValue = [v15 unsignedIntValue];
      v21 = [(HDDeviceContext *)v19 initForLocalDeviceWithType:unsignedIntValue syncIdentity:v28[5]];
      if (v21)
      {
        v22 = [MEMORY[0x277CBEAA8] now];
        v23 = [(HDDeviceKeyValueStoreManager *)self _journalOrSetData:dataCopy forKey:keyCopy domainName:nameCopy protectionCategory:categoryCopy deviceContext:v21 modificationDate:v22 error:error];
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

BOOL __83__HDDeviceKeyValueStoreManager_setData_forKey_domainName_protectionCategory_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) profile];
  v3 = [v2 syncIdentityManager];
  v4 = [v3 currentSyncIdentity];
  v5 = [v4 identity];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (void)_journalOrSetData:(void *)data forKey:(void *)key domainName:(uint64_t)name protectionCategory:(void *)category deviceContext:(void *)context modificationDate:(uint64_t)date error:
{
  if (result)
  {
    v14 = result;
    contextCopy = context;
    categoryCopy = category;
    keyCopy = key;
    dataCopy = data;
    v19 = a2;
    v20 = [[HDInsertOrUpdateDeviceKeyValueEntryOperation alloc] initWithCategory:name key:dataCopy value:v19 domain:keyCopy deviceContext:categoryCopy modificationDate:contextCopy];

    profile = [v14 profile];
    v22 = [(HDJournalableOperation *)v20 performOrJournalWithProfile:profile error:date];

    return v22;
  }

  return result;
}

- (BOOL)deleteProtectedKVEntriesForDeviceContext:(id)context error:(id *)error
{
  contextCopy = context;
  v7 = [HDDeleteAllDeviceContextKeyValueEntriesOperation alloc];
  syncIdentity = [contextCopy syncIdentity];

  v9 = [(HDDeleteAllDeviceContextKeyValueEntriesOperation *)v7 initWithSyncIdentity:syncIdentity];
  profile = [(HDDeviceKeyValueStoreManager *)self profile];
  LOBYTE(error) = [(HDJournalableOperation *)v9 performOrJournalWithProfile:profile error:error];

  return error;
}

- (BOOL)replaceOldSyncIdentity:(id)identity newSyncIdentity:(id)syncIdentity error:(id *)error
{
  syncIdentityCopy = syncIdentity;
  identityCopy = identity;
  v10 = [HDRollSyncIdentityDeviceKeyValueEntriesOperation alloc];
  identity = [identityCopy identity];

  identity2 = [syncIdentityCopy identity];

  v13 = [(HDRollSyncIdentityDeviceKeyValueEntriesOperation *)v10 initWithOldSyncIdentity:identity newSyncIdentity:identity2];
  profile = [(HDDeviceKeyValueStoreManager *)self profile];
  LOBYTE(error) = [(HDJournalableOperation *)v13 performOrJournalWithProfile:profile error:error];

  return error;
}

- (BOOL)insertOrUpdateData:(id)data forKey:(id)key transaction:(id)transaction domainName:(id)name protectionCategory:(int64_t)category deviceContext:(id)context modificationDate:(id)date error:(id *)self0
{
  v53[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  keyCopy = key;
  transactionCopy = transaction;
  nameCopy = name;
  contextCopy = context;
  dateCopy = date;
  categoryCopy = category;
  v19 = objc_opt_class();
  profile = [(HDDeviceKeyValueStoreManager *)self profile];
  syncIdentityManager = [profile syncIdentityManager];
  syncIdentity = [contextCopy syncIdentity];
  v23 = [syncIdentityManager concreteIdentityForIdentity:syncIdentity shouldCreate:1 transaction:transactionCopy error:error];

  if (v23 && (v45 = self, -[HDDeviceKeyValueStoreManager profile](self, "profile"), v24 = objc_claimAutoreleasedReturnValue(), [v24 deviceContextManager], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "insertOrUpdateDeviceContext:transaction:error:", contextCopy, transactionCopy, error), v25, v24, v26))
  {
    entity = [v23 entity];
    v28 = +[HDDeviceContextEntity deviceContextEntityWithSyncIdentity:transaction:error:](HDDeviceContextEntity, "deviceContextEntityWithSyncIdentity:transaction:error:", [entity persistentID], transactionCopy, error);

    if (v28)
    {
      v44 = v28;
      persistentID = [v28 persistentID];
      entity2 = [v23 entity];
      v32 = keyCopy;
      v31 = dataCopy;
      v33 = [v19 setData:dataCopy forKey:keyCopy domain:nameCopy deviceContextID:persistentID syncEntityIdentity:objc_msgSend(entity2 modificationDate:"persistentID") transaction:dateCopy error:{transactionCopy, error}];

      if (v33 == 1)
      {
        v34 = [HDDeviceKeyValueStorageEntry alloc];
        identity = [v23 identity];
        v36 = [(HDDeviceKeyValueStorageEntry *)v34 initWithDomain:nameCopy key:keyCopy value:dataCopy modificationDate:dateCopy syncIdentity:identity category:categoryCopy];

        v37 = [HDDeviceKeyValueStorageGroup alloc];
        v53[0] = v36;
        v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
        v39 = [(HDDeviceKeyValueStorageGroup *)v37 initWithDeviceContext:contextCopy storageEntries:v38];

        observers = v45->_observers;
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __137__HDDeviceKeyValueStoreManager_insertOrUpdateData_forKey_transaction_domainName_protectionCategory_deviceContext_modificationDate_error___block_invoke;
        v50[3] = &unk_2786228D0;
        v51 = v39;
        v52 = nameCopy;
        v41 = v39;
        [(HKObserverSet *)observers notifyObservers:v50];
      }

      v42 = v33 != 0;
      v28 = v44;
    }

    else
    {
      v42 = 0;
      v32 = keyCopy;
      v31 = dataCopy;
    }
  }

  else
  {
    v42 = 0;
    v32 = keyCopy;
    v31 = dataCopy;
  }

  return v42;
}

void __137__HDDeviceKeyValueStoreManager_insertOrUpdateData_forKey_transaction_domainName_protectionCategory_deviceContext_modificationDate_error___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v6 count:1];
  [v4 deviceKeyValueStoreDidUpdateForStorageGroup:v5 domain:{*(a1 + 40), v6, v7}];
}

- (BOOL)updateKeyValuePairsForRemoteEntries:(id)entries deviceContexts:(id)contexts error:(id *)error
{
  entriesCopy = entries;
  v9 = [contexts hk_mapToDictionary:&__block_literal_global_116];
  v10 = entriesCopy;
  v11 = v9;
  v12 = v11;
  if (!self)
  {

LABEL_8:
    v18 = 0;
    goto LABEL_10;
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__108;
  v37 = __Block_byref_object_dispose__108;
  v38 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __83__HDDeviceKeyValueStoreManager__updateRemoteEntries_deviceContextByIdentity_error___block_invoke;
  v29 = &unk_2786229B8;
  selfCopy = self;
  v13 = v11;
  selfCopy2 = v13;
  v32 = &v33;
  [v10 enumerateObjectsUsingBlock:&aBlock];
  v14 = *(v34 + 40);
  if (v14)
  {
    v15 = v14;
    v16 = v15;
    if (error)
    {
      v17 = v15;
      *error = v16;
    }

    else
    {
      _HKLogDroppedError();
    }

    _Block_object_dispose(&v33, 8);
    goto LABEL_8;
  }

  _Block_object_dispose(&v33, 8);
  v19 = v10;
  v20 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __83__HDDeviceKeyValueStoreManager__deleteRemoteEntries_deviceContextByIdentity_error___block_invoke;
  v29 = &unk_278622968;
  v21 = v20;
  selfCopy = v21;
  selfCopy2 = self;
  v22 = _Block_copy(&aBlock);
  v33 = MEMORY[0x277D85DD0];
  v34 = 3221225472;
  v35 = __83__HDDeviceKeyValueStoreManager__deleteRemoteEntries_deviceContextByIdentity_error___block_invoke_318;
  v36 = &unk_278622990;
  v38 = v22;
  v23 = v19;
  v37 = v23;
  v24 = v22;
  v18 = HKWithAutoreleasePool();

LABEL_10:
  return v18;
}

void __89__HDDeviceKeyValueStoreManager_updateKeyValuePairsForRemoteEntries_deviceContexts_error___block_invoke(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 syncIdentity];
  (a3)[2](v5, v7, v6);
}

uint64_t __83__HDDeviceKeyValueStoreManager__deleteRemoteEntries_deviceContextByIdentity_error___block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a4;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__108;
  v36 = __Block_byref_object_dispose__108;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  v8 = [*(a1 + 32) allKeys];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __83__HDDeviceKeyValueStoreManager__deleteRemoteEntries_deviceContextByIdentity_error___block_invoke_2;
  v21 = &unk_278622940;
  v9 = *(a1 + 40);
  v25 = &v28;
  v26 = &v32;
  v22 = v9;
  v27 = a3 ^ 1u;
  v10 = v7;
  v23 = v10;
  v24 = *(a1 + 32);
  [v8 enumerateObjectsUsingBlock:&v18];

  v11 = *(v29 + 24);
  if (!*(v29 + 24))
  {
    v12 = v33[5];
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v14 = [MEMORY[0x277CCA9B8] hk_error:100 description:{@"Error deleting local kv pairs", v18, v19, v20, v21, v22, v23}];
      v15 = v33[5];
      v33[5] = v14;

      v13 = v33[5];
      if (!v13)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    if (a2)
    {
      v16 = v13;
      *a2 = v13;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_8;
  }

LABEL_9:

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  return v11;
}

void __83__HDDeviceKeyValueStoreManager__deleteRemoteEntries_deviceContextByIdentity_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) profile];
  v5 = [v4 deviceKeyValueStoreManager];
  v6 = *(a1 + 72);
  v7 = *(*(a1 + 64) + 8);
  v16 = *(v7 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__HDDeviceKeyValueStoreManager__deleteRemoteEntries_deviceContextByIdentity_error___block_invoke_3;
  v11[3] = &unk_278622918;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v12 = v8;
  v13 = v9;
  v14 = *(a1 + 48);
  v15 = v3;
  v10 = v3;
  LOBYTE(v6) = [v5 enumerateAllEntriesForSyncIdentity:v10 protectionCategory:v6 error:&v16 enumerationHandler:v11];
  objc_storeStrong((v7 + 40), v16);
  *(*(*(a1 + 56) + 8) + 24) = v6;
}

uint64_t __83__HDDeviceKeyValueStoreManager__deleteRemoteEntries_deviceContextByIdentity_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    v6 = *(a1 + 40);
    v7 = [v5 key];
    v8 = [v5 domain];
    v9 = [v5 protectionCategory];
    v10 = [*(a1 + 48) objectForKeyedSubscript:*(a1 + 56)];
    v11 = [v5 modificationDate];
    v18 = 0;
    LOBYTE(v9) = [v6 setData:0 forKey:v7 domainName:v8 protectionCategory:v9 deviceContext:v10 modificationDate:v11 error:&v18];
    v12 = v18;

    if ((v9 & 1) == 0)
    {
      v13 = v12;
      if (v13)
      {
        if (a3)
        {
          v14 = v13;
          *a3 = v13;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 40);
        *buf = 138543874;
        v20 = v17;
        v21 = 2114;
        v22 = v5;
        v23 = 2114;
        v24 = v13;
        _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Error deleting key value entry (%{public}@) %{public}@", buf, 0x20u);
      }
    }
  }

  return 1;
}

void __83__HDDeviceKeyValueStoreManager__updateRemoteEntries_deviceContextByIdentity_error___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 syncIdentity];
  v5 = [*(a1 + 32) profile];
  v6 = [v5 syncIdentityManager];
  v7 = [v6 currentSyncIdentity];
  v8 = [v7 identity];
  v9 = [v4 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    v10 = *(a1 + 40);
    v11 = [v3 syncIdentity];
    v12 = [v10 objectForKey:v11];

    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = [v3 value];
      v15 = [v3 key];
      v16 = [v3 domain];
      v17 = [v3 protectionCategory];
      v18 = [v3 modificationDate];
      v19 = *(*(a1 + 48) + 8);
      obj = *(v19 + 40);
      LOBYTE(v13) = [v13 setData:v14 forKey:v15 domainName:v16 protectionCategory:v17 deviceContext:v12 modificationDate:v18 error:&obj];
      objc_storeStrong((v19 + 40), obj);

      if (v13)
      {
        goto LABEL_7;
      }

      _HKInitializeLogging();
      v20 = *MEMORY[0x277CCC328];
      if (!os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v21 = *(a1 + 32);
      v22 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138543618;
      v31 = v21;
      v32 = 2114;
      v33 = v22;
      v23 = "%{public}@: Error updating local key value entry from remote entry %{public}@";
    }

    else
    {
      v24 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Found no corresponding device context for remote key value pair"];
      v25 = *(*(a1 + 48) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = v24;

      _HKInitializeLogging();
      v20 = *MEMORY[0x277CCC328];
      if (!os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
LABEL_7:

        goto LABEL_8;
      }

      v27 = *(a1 + 32);
      v28 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138543618;
      v31 = v27;
      v32 = 2114;
      v33 = v28;
      v23 = "%{public}@: %{public}@";
    }

    _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, v23, buf, 0x16u);
    goto LABEL_7;
  }

LABEL_8:
}

BOOL __91__HDDeviceKeyValueStoreManager__fetchEntriesForDomain_key_protectionCategory_latest_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v24 = 0;
  v9 = [v6 fetchEntriesForKeys:v7 domain:v8 transaction:v5 error:&v24];
  v10 = v24;
  if (v10)
  {
    if (a3)
    {
      v11 = v10;
      v12 = 0;
      *a3 = v10;
    }

    else
    {
      _HKLogDroppedError();
      v12 = 0;
    }
  }

  else if (v9 && [v9 count])
  {
    if (*(a1 + 72) == 1)
    {
      v13 = [v9 hk_firstSortedObjectWithComparison:&__block_literal_global_327];
      v14 = objc_alloc(MEMORY[0x277CBEB18]);
      v25[0] = v13;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
      v16 = [v14 initWithArray:v15];

      v9 = v16;
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __91__HDDeviceKeyValueStoreManager__fetchEntriesForDomain_key_protectionCategory_latest_error___block_invoke_3;
    v20[3] = &unk_278622A00;
    v9 = v9;
    v17 = *(a1 + 64);
    v18 = *(a1 + 48);
    v21 = v9;
    v22 = v18;
    v23 = v17;
    v12 = [HDDeviceContextEntity enumerateDeviceContextWithTransaction:v5 error:a3 enumerationHandler:v20];
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

uint64_t __91__HDDeviceKeyValueStoreManager__fetchEntriesForDomain_key_protectionCategory_latest_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 modificationDate];
  v6 = [v4 modificationDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __91__HDDeviceKeyValueStoreManager__fetchEntriesForDomain_key_protectionCategory_latest_error___block_invoke_3(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v22 = a1;
  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v9 = [v3 syncIdentity];
        v10 = [v8 syncIdentity];
        v11 = [v9 isEqual:v10];

        if (v11)
        {
          v12 = [HDDeviceKeyValueStorageEntry alloc];
          v13 = [v8 domain];
          v14 = [v8 key];
          v15 = [v8 value];
          v16 = [v8 modificationDate];
          v17 = [v8 syncIdentity];
          v18 = [(HDDeviceKeyValueStorageEntry *)v12 initWithDomain:v13 key:v14 value:v15 modificationDate:v16 syncIdentity:v17 category:*(v22 + 48)];
          [v23 addObject:v18];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v5);
  }

  if ([v23 count])
  {
    v19 = *(*(*(v22 + 40) + 8) + 40);
    v20 = [[HDDeviceKeyValueStorageGroup alloc] initWithDeviceContext:v3 storageEntries:v23];
    [v19 addObject:v20];
  }

  return 1;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end