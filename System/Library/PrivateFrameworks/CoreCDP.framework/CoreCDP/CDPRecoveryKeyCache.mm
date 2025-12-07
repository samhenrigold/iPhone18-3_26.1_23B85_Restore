@interface CDPRecoveryKeyCache
+ (id)sharedInstance;
- (BOOL)cacheRecoveryKey:(id)key forAltDSID:(id)d error:(id *)error;
- (CDPRecoveryKeyCache)init;
- (id)fetchRecoveryKeyFromCacheForAltDSID:(id)d;
- (void)deleteCache;
@end

@implementation CDPRecoveryKeyCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[CDPRecoveryKeyCache sharedInstance];
  }

  v3 = sharedInstance_rKCache;

  return v3;
}

uint64_t __37__CDPRecoveryKeyCache_sharedInstance__block_invoke()
{
  sharedInstance_rKCache = objc_alloc_init(CDPRecoveryKeyCache);

  return MEMORY[0x1EEE66BB8]();
}

- (CDPRecoveryKeyCache)init
{
  v6.receiver = self;
  v6.super_class = CDPRecoveryKeyCache;
  v2 = [(CDPRecoveryKeyCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6985DF0]);
    keychainManager = v2->_keychainManager;
    v2->_keychainManager = v3;
  }

  return v2;
}

- (BOOL)cacheRecoveryKey:(id)key forAltDSID:(id)d error:(id *)error
{
  dCopy = d;
  v9 = [key dataUsingEncoding:4];
  v10 = [CDPKeychainItemDescriptor recoveryKeyDescriptorForAltDSID:dCopy];

  v11 = [objc_alloc(MEMORY[0x1E6985DE0]) initWithDescriptor:v10 value:v9];
  keychainManager = self->_keychainManager;
  v18 = 0;
  [(AAFKeychainManager *)keychainManager addOrUpdateKeychainItem:v11 error:&v18];
  v13 = v18;
  v14 = v13;
  if (v13)
  {
    if (error)
    {
      v15 = v13;
      *error = v14;
    }
  }

  else
  {
    v16 = _CDPLogSystem(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [CDPRecoveryKeyCache cacheRecoveryKey:v16 forAltDSID:? error:?];
    }
  }

  return v14 == 0;
}

- (id)fetchRecoveryKeyFromCacheForAltDSID:(id)d
{
  v4 = [CDPKeychainItemDescriptor recoveryKeyDescriptorForAltDSID:d];
  keychainManager = self->_keychainManager;
  v14 = 0;
  v6 = [(AAFKeychainManager *)keychainManager keychainItemForDescriptor:v4 error:&v14];
  v7 = v14;
  v8 = v7;
  if (v7)
  {
    value2 = _CDPLogSystem(v7);
    if (os_log_type_enabled(value2, OS_LOG_TYPE_ERROR))
    {
      [(CDPRecoveryKeyCache *)v8 fetchRecoveryKeyFromCacheForAltDSID:value2];
    }

    v10 = 0;
    goto LABEL_7;
  }

  value = [v6 value];

  if (value)
  {
    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    value2 = [v6 value];
    v10 = [v12 initWithData:value2 encoding:4];
LABEL_7:

    goto LABEL_8;
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (void)deleteCache
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_1DED99000, a2, OS_LOG_TYPE_DEBUG, "Cleared RK cache with error: %@", &v2, 0xCu);
}

- (void)cacheRecoveryKey:(os_log_t)log forAltDSID:error:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138412290;
  v2 = 0;
  _os_log_debug_impl(&dword_1DED99000, log, OS_LOG_TYPE_DEBUG, "Cached RK with error: %@", &v1, 0xCu);
}

- (void)fetchRecoveryKeyFromCacheForAltDSID:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DED99000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch RK from cache: %@", &v2, 0xCu);
}

@end