@interface POKeychainJWKSStorageProvider
- (POKeychainJWKSStorageProvider)initWithSystem:(BOOL)system;
- (id)jwksCacheForExtensionIdentifier:(id)identifier;
- (void)setJwksCache:(id)cache forExtensionIdentifier:(id)identifier;
@end

@implementation POKeychainJWKSStorageProvider

- (POKeychainJWKSStorageProvider)initWithSystem:(BOOL)system
{
  v9.receiver = self;
  v9.super_class = POKeychainJWKSStorageProvider;
  v4 = [(POKeychainJWKSStorageProvider *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_isSystem = system;
    v6 = objc_alloc_init(MEMORY[0x277D3D218]);
    keychainHelper = v5->_keychainHelper;
    v5->_keychainHelper = v6;
  }

  return v5;
}

- (id)jwksCacheForExtensionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = PO_LOG_POConfigurationManager(identifierCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POKeychainJWKSStorageProvider jwksCacheForExtensionIdentifier:];
  }

  keychainHelper = [(POKeychainJWKSStorageProvider *)self keychainHelper];
  v12 = 0;
  v7 = [keychainHelper retrieveTokensFromKeychainForService:identifierCopy username:@"com.apple.jwksCache" system:-[POKeychainJWKSStorageProvider isSystem](self returningTokens:"isSystem") metaData:{&v12, 0}];

  v8 = v12;
  if (v7)
  {
    v9 = __65__POKeychainJWKSStorageProvider_jwksCacheForExtensionIdentifier___block_invoke();
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  return v10;
}

id __65__POKeychainJWKSStorageProvider_jwksCacheForExtensionIdentifier___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1004 description:@"JWKS data not found in cache."];
  v1 = PO_LOG_POConfigurationManager(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)setJwksCache:(id)cache forExtensionIdentifier:(id)identifier
{
  cacheCopy = cache;
  identifierCopy = identifier;
  v8 = PO_LOG_POConfigurationManager(identifierCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [POKeychainJWKSStorageProvider setJwksCache:forExtensionIdentifier:];
  }

  keychainHelper = [(POKeychainJWKSStorageProvider *)self keychainHelper];
  isSystem = [(POKeychainJWKSStorageProvider *)self isSystem];
  if (cacheCopy)
  {
    v11 = [keychainHelper addTokens:cacheCopy metaData:0 toKeychainForService:identifierCopy username:@"com.apple.jwksCache" system:isSystem];

    if (v11)
    {
      v12 = __69__POKeychainJWKSStorageProvider_setJwksCache_forExtensionIdentifier___block_invoke();
    }
  }

  else
  {
    v13 = [keychainHelper removeTokensFromKeychainWithService:identifierCopy username:@"com.apple.jwksCache" system:isSystem];

    if (v13 != -25300 && v13)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __69__POKeychainJWKSStorageProvider_setJwksCache_forExtensionIdentifier___block_invoke_11;
      v15[3] = &__block_descriptor_36_e14___NSError_8__0l;
      v16 = v13;
      v14 = __69__POKeychainJWKSStorageProvider_setJwksCache_forExtensionIdentifier___block_invoke_11(v15);
    }
  }
}

id __69__POKeychainJWKSStorageProvider_setJwksCache_forExtensionIdentifier___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save JWKS data in cache."];
  v1 = PO_LOG_POConfigurationManager(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __69__POKeychainJWKSStorageProvider_setJwksCache_forExtensionIdentifier___block_invoke_11(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Error removing jwks data from cache"];
  v2 = PO_LOG_POConfigurationManager(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __69__POKeychainJWKSStorageProvider_setJwksCache_forExtensionIdentifier___block_invoke_11_cold_1();
  }

  return v1;
}

- (void)jwksCacheForExtensionIdentifier:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, v6);
}

- (void)setJwksCache:forExtensionIdentifier:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, v6);
}

void __69__POKeychainJWKSStorageProvider_setJwksCache_forExtensionIdentifier___block_invoke_11_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v1 = [MEMORY[0x277CCABB0] numberWithInt:*(v0 + 32)];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_2(&dword_25E831000, v2, v3, "%{public}@, %{public}@", v4, v5, v6, v7);
}

@end