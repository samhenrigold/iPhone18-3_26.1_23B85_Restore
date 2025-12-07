@interface HKTokenKeychainItem
+ (BOOL)_addTokenIdentifiedByName:(id)name data:(id)data synchronizable:(BOOL)synchronizable error:(id *)error;
+ (BOOL)_deleteTokenIdentifiedByName:(id)name error:(id *)error;
+ (BOOL)_isTokenPresentIdentifiedByName:(id)name error:(id *)error;
+ (BOOL)_makeTokenSynchronizableIfNeededIdentifiedByName:(id)name error:(id *)error;
+ (BOOL)_storeTokenIdentifiedByName:(id)name data:(id)data synchronizable:(BOOL)synchronizable error:(id *)error;
+ (BOOL)_updateTokenIdentifiedByName:(id)name data:(id)data synchronizable:(BOOL)synchronizable error:(id *)error;
+ (id)_fetchTokenIdentifiedByName:(id)name error:(id *)error;
+ (id)_identifyingAttributesForKeyIdentifiedByName:(id)name;
+ (id)_keyQueryAttributesForKeyIdentifiedByName:(id)name;
+ (id)_storableAttributesForKeyIdentifiedByName:(id)name data:(id)data modificationDate:(id)date synchronizable:(BOOL)synchronizable;
- (BOOL)deleteWithError:(id *)error;
- (BOOL)isPresentWithError:(id *)error;
- (BOOL)makeTokenSynchronizableIfNeededWithError:(id *)error;
- (BOOL)storeLocalToken:(id)token error:(id *)error;
- (BOOL)storeSynchronizableToken:(id)token error:(id *)error;
- (HKTokenKeychainItem)init;
- (HKTokenKeychainItem)initWithName:(id)name;
- (id)fetchWithError:(id *)error;
@end

@implementation HKTokenKeychainItem

- (HKTokenKeychainItem)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKTokenKeychainItem)initWithName:(id)name
{
  nameCopy = name;
  if (![nameCopy length])
  {
    [HKTokenKeychainItem initWithName:];
  }

  v9.receiver = self;
  v9.super_class = HKTokenKeychainItem;
  v5 = [(HKTokenKeychainItem *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

- (BOOL)isPresentWithError:(id *)error
{
  v5 = objc_opt_class();
  name = self->_name;

  return [v5 _isTokenPresentIdentifiedByName:name error:error];
}

- (BOOL)makeTokenSynchronizableIfNeededWithError:(id *)error
{
  v5 = objc_opt_class();
  name = self->_name;

  return [v5 _makeTokenSynchronizableIfNeededIdentifiedByName:name error:error];
}

- (id)fetchWithError:(id *)error
{
  v3 = [objc_opt_class() _fetchTokenIdentifiedByName:self->_name error:error];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)storeLocalToken:(id)token error:(id *)error
{
  v6 = [token dataUsingEncoding:4];
  LOBYTE(error) = [objc_opt_class() _storeTokenIdentifiedByName:self->_name data:v6 synchronizable:0 error:error];

  return error;
}

- (BOOL)storeSynchronizableToken:(id)token error:(id *)error
{
  v6 = [token dataUsingEncoding:4];
  LOBYTE(error) = [objc_opt_class() _storeTokenIdentifiedByName:self->_name data:v6 synchronizable:1 error:error];

  return error;
}

- (BOOL)deleteWithError:(id *)error
{
  v5 = objc_opt_class();
  name = self->_name;

  return [v5 _deleteTokenIdentifiedByName:name error:error];
}

+ (id)_identifyingAttributesForKeyIdentifiedByName:(id)name
{
  v13[4] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (!nameCopy)
  {
    +[HKTokenKeychainItem _identifyingAttributesForKeyIdentifiedByName:];
  }

  v12[0] = *MEMORY[0x277CDC228];
  tokenKeychainItemSecurityClass = [self tokenKeychainItemSecurityClass];
  v13[0] = tokenKeychainItemSecurityClass;
  v12[1] = *MEMORY[0x277CDBF20];
  v6 = [nameCopy dataUsingEncoding:4];
  v7 = *MEMORY[0x277CDBED8];
  v8 = *MEMORY[0x277CDBF10];
  v13[1] = v6;
  v13[2] = v8;
  v9 = *MEMORY[0x277CDC140];
  v12[2] = v7;
  v12[3] = v9;
  v13[3] = *MEMORY[0x277CDC148];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];

  return v10;
}

+ (id)_keyQueryAttributesForKeyIdentifiedByName:(id)name
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [self _identifyingAttributesForKeyIdentifiedByName:name];
  v4 = [v3 mutableCopy];

  v7 = *MEMORY[0x277CDC558];
  v8[0] = *MEMORY[0x277CBED28];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v4 addEntriesFromDictionary:v5];

  return v4;
}

+ (id)_storableAttributesForKeyIdentifiedByName:(id)name data:(id)data modificationDate:(id)date synchronizable:(BOOL)synchronizable
{
  synchronizableCopy = synchronizable;
  v27[5] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dataCopy = data;
  dateCopy = date;
  v13 = dateCopy;
  if (dataCopy)
  {
    if (dateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[HKTokenKeychainItem _storableAttributesForKeyIdentifiedByName:data:modificationDate:synchronizable:];
    if (v13)
    {
      goto LABEL_3;
    }
  }

  +[HKTokenKeychainItem _storableAttributesForKeyIdentifiedByName:data:modificationDate:synchronizable:];
LABEL_3:
  v14 = [self _identifyingAttributesForKeyIdentifiedByName:nameCopy];
  v15 = [v14 mutableCopy];

  v16 = *MEMORY[0x277CDBFC0];
  v17 = *MEMORY[0x277CBED28];
  v27[0] = *MEMORY[0x277CBED28];
  v18 = *MEMORY[0x277CDC088];
  v26[0] = v16;
  v26[1] = v18;
  date = v13;
  if (!v13)
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  v20 = *MEMORY[0x277CDC0A8];
  v21 = *MEMORY[0x277CDC0C0];
  v27[1] = date;
  v27[2] = v21;
  v22 = *MEMORY[0x277CDC140];
  v26[2] = v20;
  v26[3] = v22;
  v23 = *MEMORY[0x277CBED10];
  if (synchronizableCopy)
  {
    v23 = v17;
  }

  v26[4] = *MEMORY[0x277CDC5E8];
  v27[3] = v23;
  v27[4] = dataCopy;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:5];
  [v15 addEntriesFromDictionary:v24];

  if (!v13)
  {
  }

  return v15;
}

+ (BOOL)_isTokenPresentIdentifiedByName:(id)name error:(id *)error
{
  nameCopy = name;
  v7 = [self _identifyingAttributesForKeyIdentifiedByName:nameCopy];
  v8 = SecItemCopyMatching(v7, 0);
  if (v8 == -25308 || v8 == 0)
  {
    v10 = 1;
  }

  else
  {
    v11 = v8;
    if (v8 != -25300)
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = HKSensitiveLogItem();
      [v12 hk_assignError:error code:3 format:{@"Failed to check for presence of token with name %@, OSStatus: %d", v13, v11}];
    }

    v10 = 0;
  }

  return v10;
}

+ (BOOL)_makeTokenSynchronizableIfNeededIdentifiedByName:(id)name error:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = [self _identifyingAttributesForKeyIdentifiedByName:nameCopy];
  v8 = [v7 mutableCopy];
  v25 = *MEMORY[0x277CDC550];
  v9 = *MEMORY[0x277CBED28];
  v26[0] = *MEMORY[0x277CBED28];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  [v8 setValuesForKeysWithDictionary:v10];

  result = 0;
  v11 = SecItemCopyMatching(v8, &result);
  if (!v11)
  {
    v12 = *MEMORY[0x277CDC140];
    v13 = [result objectForKeyedSubscript:*MEMORY[0x277CDC140]];
    bOOLValue = [v13 BOOLValue];

    if (bOOLValue)
    {
      goto LABEL_8;
    }

    v23 = v12;
    v24 = v9;
    v11 = SecItemUpdate(v7, [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1]);
  }

  if (v11 == -25308)
  {
    v18 = MEMORY[0x277CCA9B8];
    v16 = HKSensitiveLogItem();
    [v18 hk_assignError:error code:6 format:{@"Token is not accessible (device locked?), name: %@", v16, v21}];
LABEL_11:

    v17 = 0;
    goto LABEL_12;
  }

  if (v11)
  {
    if (v11 == -25300)
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = HKSensitiveLogItem();
      [v15 hk_assignError:error code:118 format:{@"No token found for name %@", v16, v21}];
    }

    else
    {
      v19 = MEMORY[0x277CCA9B8];
      v16 = HKSensitiveLogItem();
      [v19 hk_assignError:error code:3 format:{@"Failed to fetch token for name %@, OSStatus: %d", v16, v11}];
    }

    goto LABEL_11;
  }

LABEL_8:
  v17 = 1;
LABEL_12:

  return v17;
}

+ (id)_fetchTokenIdentifiedByName:(id)name error:(id *)error
{
  nameCopy = name;
  v7 = [self _keyQueryAttributesForKeyIdentifiedByName:nameCopy];
  result = 0;
  v8 = SecItemCopyMatching(v7, &result);
  if (v8 == -25308)
  {
    v13 = MEMORY[0x277CCA9B8];
    v12 = HKSensitiveLogItem();
    [v13 hk_assignError:error code:6 format:{@"Token is not accessible (device locked?), name: %@", v12}];
    goto LABEL_7;
  }

  v9 = v8;
  if (v8 == -25300)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = HKSensitiveLogItem();
    [v11 hk_assignError:error code:118 format:{@"No token found for name %@", v12}];
LABEL_7:

    goto LABEL_9;
  }

  if (!v8)
  {
    v10 = result;
    goto LABEL_10;
  }

  v14 = MEMORY[0x277CCA9B8];
  v15 = HKSensitiveLogItem();
  [v14 hk_assignError:error code:3 format:{@"Failed to fetch token for name %@, OSStatus: %d", v15, v9}];

LABEL_9:
  v10 = 0;
LABEL_10:

  return v10;
}

+ (BOOL)_storeTokenIdentifiedByName:(id)name data:(id)data synchronizable:(BOOL)synchronizable error:(id *)error
{
  synchronizableCopy = synchronizable;
  nameCopy = name;
  dataCopy = data;
  if ([dataCopy length])
  {
    v12 = [self _updateTokenIdentifiedByName:nameCopy data:dataCopy synchronizable:synchronizableCopy error:error];
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = HKSensitiveLogItem();
    [v13 hk_assignError:error code:3 format:{@"Cannot store %@ with an empty token for name %@", v15, v16}];

    v12 = 0;
  }

  return v12;
}

+ (BOOL)_updateTokenIdentifiedByName:(id)name data:(id)data synchronizable:(BOOL)synchronizable error:(id *)error
{
  synchronizableCopy = synchronizable;
  v27[3] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dataCopy = data;
  v12 = [self _identifyingAttributesForKeyIdentifiedByName:nameCopy];
  v26[0] = *MEMORY[0x277CDC088];
  date = [MEMORY[0x277CBEAA8] date];
  v14 = date;
  v15 = MEMORY[0x277CBED28];
  if (!synchronizableCopy)
  {
    v15 = MEMORY[0x277CBED10];
  }

  v16 = *MEMORY[0x277CDC140];
  v17 = *v15;
  v27[0] = date;
  v27[1] = v17;
  v18 = *MEMORY[0x277CDC5E8];
  v26[1] = v16;
  v26[2] = v18;
  v27[2] = dataCopy;
  v19 = SecItemUpdate(v12, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3]);

  if (v19 == -25308)
  {
    v21 = MEMORY[0x277CCA9B8];
    v22 = HKSensitiveLogItem();
    [v21 hk_assignError:error code:6 format:{@"Token is not accessible (device locked?), name: %@", v22, v25}];
LABEL_10:

    v20 = 0;
    goto LABEL_11;
  }

  if (!v19)
  {
    v20 = 1;
    goto LABEL_11;
  }

  if (v19 != -25300)
  {
    v23 = MEMORY[0x277CCA9B8];
    v22 = HKSensitiveLogItem();
    [v23 hk_assignError:error code:3 format:{@"Failed to update token for name %@, OSStatus: %d", v22, v19}];
    goto LABEL_10;
  }

  v20 = [self _addTokenIdentifiedByName:nameCopy data:dataCopy synchronizable:synchronizableCopy error:error];
LABEL_11:

  return v20;
}

+ (BOOL)_addTokenIdentifiedByName:(id)name data:(id)data synchronizable:(BOOL)synchronizable error:(id *)error
{
  synchronizableCopy = synchronizable;
  nameCopy = name;
  v11 = MEMORY[0x277CBEAA8];
  dataCopy = data;
  date = [v11 date];
  v14 = [self _storableAttributesForKeyIdentifiedByName:nameCopy data:dataCopy modificationDate:date synchronizable:synchronizableCopy];

  v15 = SecItemAdd(v14, 0);
  if (v15)
  {
    v16 = v15;
    if (v15 == -25308)
    {
      v17 = MEMORY[0x277CCA9B8];
      v18 = HKSensitiveLogItem();
      [v17 hk_assignError:error code:6 format:{@"Token is not accessible (device locked?), name: %@", v18, v22}];
    }

    else
    {
      v20 = MEMORY[0x277CCA9B8];
      v18 = HKSensitiveLogItem();
      [v20 hk_assignError:error code:3 format:{@"Failed to add token for name %@, OSStatus: %d", v18, v16}];
    }

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

+ (BOOL)_deleteTokenIdentifiedByName:(id)name error:(id *)error
{
  nameCopy = name;
  v7 = [self _keyQueryAttributesForKeyIdentifiedByName:nameCopy];
  v8 = SecItemDelete(v7);
  if (v8 == -25300 || v8 == 0)
  {
    v13 = 1;
  }

  else
  {
    v10 = v8;
    v11 = MEMORY[0x277CCA9B8];
    v12 = HKSensitiveLogItem();
    [v11 hk_assignError:error code:3 format:{@"Failed to delete token for name %@, OSStatus: %d", v12, v10}];

    v13 = 0;
  }

  return v13;
}

- (void)initWithName:.cold.1()
{
  OUTLINED_FUNCTION_0_5();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"name.length > 0" object:? file:? lineNumber:? description:?];
}

+ (void)_identifyingAttributesForKeyIdentifiedByName:.cold.1()
{
  OUTLINED_FUNCTION_0_5();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"name" object:? file:? lineNumber:? description:?];
}

+ (void)_storableAttributesForKeyIdentifiedByName:data:modificationDate:synchronizable:.cold.1()
{
  OUTLINED_FUNCTION_0_5();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"data" object:? file:? lineNumber:? description:?];
}

+ (void)_storableAttributesForKeyIdentifiedByName:data:modificationDate:synchronizable:.cold.2()
{
  OUTLINED_FUNCTION_0_5();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"date" object:? file:? lineNumber:? description:?];
}

@end