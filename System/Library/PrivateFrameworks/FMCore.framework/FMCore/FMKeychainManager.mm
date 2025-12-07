@interface FMKeychainManager
+ (id)sharedInstance;
- (BOOL)deleteDataForAccount:(id)account service:(id)service;
- (BOOL)setData:(id)data forAccount:(id)account service:(id)service synchronizable:(int64_t)synchronizable dataProtectionClass:(int64_t)class migratable:(int64_t)migratable;
- (BOOL)setPassword:(id)password forAccount:(id)account service:(id)service;
- (BOOL)setPassword:(id)password forAccount:(id)account service:(id)service synchronizable:(int64_t)synchronizable dataProtectionClass:(int64_t)class migratable:(int64_t)migratable;
- (id)_accessibilityForDataProtectionClass:(int64_t)class migratable:(BOOL)migratable;
- (id)_query:(id)_query error:(id *)error;
- (id)allAccountsForService:(id)service;
- (id)allRecords;
- (id)allServices;
- (id)dataForAccount:(id)account service:(id)service;
- (id)itemForAccount:(id)account service:(id)service error:(id *)error;
- (id)passwordForAccount:(id)account service:(id)service;
- (int)_add:(id)_add;
- (int)_delete:(id)_delete;
- (int)_updateWithQuery:(id)query attributes:(id)attributes;
- (void)_migrateToValueDataIfNeeded:(id)needed account:(id)account service:(id)service;
@end

@implementation FMKeychainManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__FMKeychainManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred != -1)
  {
    dispatch_once(&sharedInstance_pred, block);
  }

  v2 = sharedInstance__sharedInstance;

  return v2;
}

uint64_t __35__FMKeychainManager_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance__sharedInstance = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (BOOL)deleteDataForAccount:(id)account service:(id)service
{
  v6 = MEMORY[0x277CBEB38];
  serviceCopy = service;
  accountCopy = account;
  dictionary = [v6 dictionary];
  [dictionary setObject:serviceCopy forKeyedSubscript:*MEMORY[0x277CDC120]];

  [dictionary setObject:accountCopy forKeyedSubscript:*MEMORY[0x277CDBF20]];
  LOBYTE(accountCopy) = [(FMKeychainManager *)self _delete:dictionary]== 0;

  return accountCopy;
}

- (BOOL)setData:(id)data forAccount:(id)account service:(id)service synchronizable:(int64_t)synchronizable dataProtectionClass:(int64_t)class migratable:(int64_t)migratable
{
  dataCopy = data;
  accountCopy = account;
  serviceCopy = service;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v17 = *MEMORY[0x277CDC120];
  [dictionary setObject:serviceCopy forKeyedSubscript:*MEMORY[0x277CDC120]];
  v18 = *MEMORY[0x277CDBF20];
  [dictionary setObject:accountCopy forKeyedSubscript:*MEMORY[0x277CDBF20]];
  v19 = *MEMORY[0x277CDC5E8];
  v28 = dataCopy;
  [dictionary setObject:dataCopy forKeyedSubscript:*MEMORY[0x277CDC5E8]];
  if (synchronizable != 2)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithBool:synchronizable == 1];
    [dictionary setObject:v20 forKeyedSubscript:*MEMORY[0x277CDC140]];
  }

  if (migratable != 2)
  {
    v21 = [(FMKeychainManager *)self _accessibilityForDataProtectionClass:class migratable:migratable == 1];
    if (v21)
    {
      [dictionary setObject:v21 forKeyedSubscript:*MEMORY[0x277CDBED8]];
    }
  }

  v22 = [(FMKeychainManager *)self _add:dictionary, class];
  if (v22 == -25299)
  {
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v24 = [dictionary mutableCopy];
    [v24 removeObjectForKey:*MEMORY[0x277CDC228]];
    [dictionary2 setObject:serviceCopy forKeyedSubscript:v17];
    [dictionary2 setObject:accountCopy forKeyedSubscript:v18];
    [v24 setObject:v28 forKeyedSubscript:v19];
    v25 = objc_opt_new();
    [v24 setObject:v25 forKeyedSubscript:*MEMORY[0x277CDBFB8]];

    v22 = [(FMKeychainManager *)self _updateWithQuery:dictionary2 attributes:v24];
  }

  return v22 == 0;
}

- (id)dataForAccount:(id)account service:(id)service
{
  v25 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  serviceCopy = service;
  v18 = 0;
  v8 = [(FMKeychainManager *)self itemForAccount:accountCopy service:serviceCopy error:&v18];
  v9 = v18;
  rawData = [v8 rawData];

  if (v9)
  {
    v12 = LogCategory_Unspecified(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v20 = accountCopy;
      v21 = 2112;
      v22 = serviceCopy;
      v23 = 2112;
      v24 = v9;
      _os_log_error_impl(&dword_24A2EE000, v12, OS_LOG_TYPE_ERROR, "dataForAccount a: %@, s: %@ error: %@", buf, 0x20u);
    }

LABEL_11:

    v16 = 0;
    goto LABEL_12;
  }

  v13 = objc_opt_new();

  v15 = LogCategory_Unspecified(v14);
  v12 = v15;
  if (!rawData || rawData == v13)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(FMKeychainManager *)accountCopy dataForAccount:serviceCopy service:v12];
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = accountCopy;
    v21 = 2112;
    v22 = serviceCopy;
    _os_log_impl(&dword_24A2EE000, v12, OS_LOG_TYPE_DEFAULT, "dataForAccount a: %@, s: %@.", buf, 0x16u);
  }

  v16 = rawData;
LABEL_12:

  return v16;
}

- (BOOL)setPassword:(id)password forAccount:(id)account service:(id)service
{
  serviceCopy = service;
  accountCopy = account;
  v10 = [password dataUsingEncoding:4];
  LOBYTE(self) = [(FMKeychainManager *)self setData:v10 forAccount:accountCopy service:serviceCopy];

  return self;
}

- (BOOL)setPassword:(id)password forAccount:(id)account service:(id)service synchronizable:(int64_t)synchronizable dataProtectionClass:(int64_t)class migratable:(int64_t)migratable
{
  serviceCopy = service;
  accountCopy = account;
  v16 = [password dataUsingEncoding:4];
  LOBYTE(migratable) = [(FMKeychainManager *)self setData:v16 forAccount:accountCopy service:serviceCopy synchronizable:synchronizable dataProtectionClass:class migratable:migratable];

  return migratable;
}

- (id)passwordForAccount:(id)account service:(id)service
{
  v4 = [(FMKeychainManager *)self itemForAccount:account service:service error:0];
  password = [v4 password];

  return password;
}

- (id)itemForAccount:(id)account service:(id)service error:(id *)error
{
  accountCopy = account;
  serviceCopy = service;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:serviceCopy forKeyedSubscript:*MEMORY[0x277CDC120]];
  [dictionary setObject:accountCopy forKeyedSubscript:*MEMORY[0x277CDBF20]];
  [dictionary setObject:*MEMORY[0x277CDC438] forKeyedSubscript:*MEMORY[0x277CDC428]];
  [dictionary setObject:*MEMORY[0x277CBED28] forKeyedSubscript:*MEMORY[0x277CDC558]];
  v11 = [(FMKeychainManager *)self _query:dictionary error:error];
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = [[FMInternalKeychainItem alloc] initWithResults:v11];
    [(FMKeychainManager *)self _migrateToValueDataIfNeeded:v11 account:accountCopy service:serviceCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)allServices
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(FMKeychainManager *)self _query:dictionary error:0];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = *MEMORY[0x277CDC120];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) objectForKeyedSubscript:v9];
        [v3 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  allObjects = [v3 allObjects];

  return allObjects;
}

- (id)allAccountsForService:(id)service
{
  v21 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:serviceCopy forKeyedSubscript:*MEMORY[0x277CDC120]];
  v7 = [(FMKeychainManager *)self _query:dictionary error:0];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    v11 = *MEMORY[0x277CDBF20];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) objectForKeyedSubscript:v11];
        [v5 addObject:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  allObjects = [v5 allObjects];

  return allObjects;
}

- (id)allRecords
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(FMKeychainManager *)self _query:dictionary error:0];

  return v4;
}

- (int)_add:(id)_add
{
  _addCopy = _add;
  v4 = *MEMORY[0x277CDC228];
  v5 = [_addCopy objectForKeyedSubscript:*MEMORY[0x277CDC228]];

  if (!v5)
  {
    [_addCopy setObject:*MEMORY[0x277CDC238] forKeyedSubscript:v4];
  }

  v6 = SecItemAdd(_addCopy, 0);
  v7 = v6;
  if (v6 != -25299 && v6)
  {
    v8 = LogCategory_Unspecified(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [FMKeychainManager _add:];
    }
  }

  return v7;
}

- (int)_updateWithQuery:(id)query attributes:(id)attributes
{
  queryCopy = query;
  attributesCopy = attributes;
  v7 = *MEMORY[0x277CDC228];
  v8 = [queryCopy objectForKeyedSubscript:*MEMORY[0x277CDC228]];

  if (!v8)
  {
    [queryCopy setObject:*MEMORY[0x277CDC238] forKeyedSubscript:v7];
  }

  v9 = SecItemUpdate(queryCopy, attributesCopy);
  v10 = v9;
  if (v9)
  {
    v11 = LogCategory_Unspecified(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [FMKeychainManager _updateWithQuery:attributes:];
    }
  }

  return v10;
}

- (int)_delete:(id)_delete
{
  _deleteCopy = _delete;
  v4 = *MEMORY[0x277CDC228];
  v5 = [_deleteCopy objectForKeyedSubscript:*MEMORY[0x277CDC228]];

  if (!v5)
  {
    [_deleteCopy setObject:*MEMORY[0x277CDC238] forKeyedSubscript:v4];
  }

  v6 = SecItemDelete(_deleteCopy);
  v7 = v6;
  if (v6)
  {
    if (v6 == -25300)
    {
      v8 = LogCategory_Unspecified(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [FMKeychainManager _delete:v8];
      }
    }

    else
    {
      v8 = LogCategory_Unspecified(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [FMKeychainManager _delete:];
      }
    }
  }

  return v7;
}

- (id)_query:(id)_query error:(id *)error
{
  v21[1] = *MEMORY[0x277D85DE8];
  _queryCopy = _query;
  v19 = 0;
  v6 = *MEMORY[0x277CDC228];
  v7 = [_queryCopy objectForKeyedSubscript:*MEMORY[0x277CDC228]];

  if (!v7)
  {
    [_queryCopy setObject:*MEMORY[0x277CDC238] forKeyedSubscript:v6];
  }

  v8 = *MEMORY[0x277CDC428];
  v9 = [_queryCopy objectForKeyedSubscript:*MEMORY[0x277CDC428]];

  if (!v9)
  {
    [_queryCopy setObject:*MEMORY[0x277CDC430] forKeyedSubscript:v8];
  }

  v10 = *MEMORY[0x277CDC550];
  v11 = [_queryCopy objectForKeyedSubscript:*MEMORY[0x277CDC550]];

  if (!v11)
  {
    [_queryCopy setObject:*MEMORY[0x277CBED28] forKeyedSubscript:v10];
  }

  v12 = SecItemCopyMatching(_queryCopy, &v19);
  if (v12)
  {
    if (error)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277D07B60];
      v15 = v12 != -25300;
      v20 = *MEMORY[0x277CCA7E8];
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v12 userInfo:0];
      v21[0] = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      *error = [v13 errorWithDomain:v14 code:v15 userInfo:v17];

      error = 0;
    }
  }

  else
  {
    error = v19;
  }

  return error;
}

- (id)_accessibilityForDataProtectionClass:(int64_t)class migratable:(BOOL)migratable
{
  if ((class - 1) > 5)
  {
    v6 = 0;
  }

  else
  {
    v5 = &unk_278FD9D50;
    if (!migratable)
    {
      v5 = &unk_278FD9D80;
    }

    v6 = *v5[class - 1];
  }

  return v6;
}

- (void)_migrateToValueDataIfNeeded:(id)needed account:(id)account service:(id)service
{
  v50 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  serviceCopy = service;
  v7 = *MEMORY[0x277CDBFB8];
  neededCopy = needed;
  v9 = [neededCopy objectForKeyedSubscript:v7];
  v10 = *MEMORY[0x277CDC5E8];
  v11 = [neededCopy objectForKeyedSubscript:*MEMORY[0x277CDC5E8]];

  v12 = objc_opt_new();
  v13 = [v9 isEqualToData:v12] ^ 1;

  v14 = [v9 length];
  if (v14)
  {
    v15 = (v9 != 0) & v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_opt_new();
  v17 = [v11 isEqualToData:v16];

  if (!v11)
  {
    if (!v15)
    {
      goto LABEL_14;
    }

LABEL_10:
    v19 = objc_opt_new();
    [v19 setObject:v9 forKeyedSubscript:v10];
    v28 = objc_opt_new();
    [v19 setObject:v28 forKeyedSubscript:v7];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v22 = serviceCopy;
    [dictionary setObject:serviceCopy forKeyedSubscript:*MEMORY[0x277CDC120]];
    v23 = accountCopy;
    [dictionary setObject:accountCopy forKeyedSubscript:*MEMORY[0x277CDBF20]];
    v29 = [(FMKeychainManager *)self _updateWithQuery:dictionary attributes:v19];
    v30 = v29;
    v26 = LogCategory_Unspecified(v29);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v35 = v30;
      v36 = 2112;
      v37 = accountCopy;
      v38 = 2112;
      *v39 = serviceCopy;
      v27 = "Migration of keychain item result: %ld, a: %@, s: %@";
      goto LABEL_12;
    }

LABEL_13:

    goto LABEL_17;
  }

  if (v17 & v15)
  {
    goto LABEL_10;
  }

  if (v15)
  {
    v19 = objc_opt_new();
    [v19 setObject:v11 forKeyedSubscript:v10];
    v20 = objc_opt_new();
    [v19 setObject:v20 forKeyedSubscript:v7];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v22 = serviceCopy;
    [dictionary setObject:serviceCopy forKeyedSubscript:*MEMORY[0x277CDC120]];
    v23 = accountCopy;
    [dictionary setObject:accountCopy forKeyedSubscript:*MEMORY[0x277CDBF20]];
    v24 = [(FMKeychainManager *)self _updateWithQuery:dictionary attributes:v19];
    v25 = v24;
    v26 = LogCategory_Unspecified(v24);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v35 = v25;
      v36 = 2112;
      v37 = accountCopy;
      v38 = 2112;
      *v39 = serviceCopy;
      v27 = "Removing any remaining generic attribute of keychain item result: %ld, a: %@, s: %@";
LABEL_12:
      _os_log_impl(&dword_24A2EE000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0x20u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

LABEL_14:
  v19 = LogCategory_Unspecified(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 138414338;
    v22 = serviceCopy;
    v23 = accountCopy;
    v35 = accountCopy;
    v36 = 2112;
    v37 = serviceCopy;
    v38 = 1024;
    *v39 = v9 != 0;
    *&v39[4] = 1024;
    *&v39[6] = v13;
    v40 = 1024;
    v41 = *v39;
    v42 = 1024;
    v43 = v14 != 0;
    v44 = 1024;
    v45 = v11 == 0;
    v46 = 1024;
    v47 = v17;
    v48 = 1024;
    v49 = v45;
    _os_log_impl(&dword_24A2EE000, v19, OS_LOG_TYPE_INFO, "No migration of keychain item required. a: %@, s: %@. notNil: %i, notNewData: %i, notNull: %i, greaterThanZero: %i, dataIsNil: %i, dataIsNewData: %i, dataIsNull: %i.", buf, 0x40u);
  }

  else
  {
    v22 = serviceCopy;
    v23 = accountCopy;
  }

LABEL_17:
}

- (void)dataForAccount:(os_log_t)log service:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_24A2EE000, log, OS_LOG_TYPE_ERROR, "dataForAccount is empty a: %@, s: %@!", &v3, 0x16u);
}

@end