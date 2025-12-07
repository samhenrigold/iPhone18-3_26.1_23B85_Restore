@interface PreflightCache
+ (id)sharedInstance;
- (BOOL)_isCacheable:(id)cacheable callerUid:(unsigned int)uid;
- (BOOL)_isPolicyCacheable:(int64_t)cacheable;
- (PreflightCache)init;
- (id)acquireBypassAssertionWithReason:(id)reason;
- (id)cachedPreflightResultForKey:(id)key;
- (id)keyForPreflightOfACL:(id)l operation:(id)operation options:(id)options auditToken:(id *)token uid:(unsigned int)uid;
- (id)keyForPreflightOfPolicy:(int64_t)policy options:(id)options auditToken:(id *)token uid:(unsigned int)uid;
- (void)addPreflightResult:(id)result forKey:(id)key;
- (void)invalidateWithReason:(id)reason;
@end

@implementation PreflightCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[PreflightCache sharedInstance];
  }

  v3 = sharedInstance_sharedInstace;

  return v3;
}

uint64_t __32__PreflightCache_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstace = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (PreflightCache)init
{
  v22[8] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = PreflightCache;
  v2 = [(PreflightCache *)&v21 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cache = v2->_cache;
    v2->_cache = v3;

    [(NSCache *)v2->_cache setCountLimit:32];
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    bypassAssertions = v2->_bypassAssertions;
    v2->_bypassAssertions = weakObjectsHashTable;

    v7 = [[BiometryLockoutInvalidationSource alloc] initWithPreflightCache:v2];
    v22[0] = v7;
    v8 = [[DarwinNotificationInvalidationSource alloc] initWithPreflightCache:v2 notificationName:"com.apple.BiometricKit.enrollmentChanged"];
    v22[1] = v8;
    v9 = [[DarwinNotificationInvalidationSource alloc] initWithPreflightCache:v2 notificationName:"com.apple.BiometricKit.systemProtectedConfigUpdated"];
    v22[2] = v9;
    v10 = [[DarwinNotificationInvalidationSource alloc] initWithPreflightCache:v2 notificationName:"com.apple.BiometricKit.userProtectedConfigUpdated"];
    v22[3] = v10;
    v11 = [[DarwinNotificationInvalidationSource alloc] initWithPreflightCache:v2 notificationName:"com.apple.BiometricKit.connectedAccessoriesChanged"];
    v22[4] = v11;
    v12 = +[(LACBiometryHelper *)BiometryHelper];
    if ([v12 biometryType] == 2)
    {
      v13 = [[DarwinNotificationInvalidationSource alloc] initWithPreflightCache:v2 notificationName:"com.apple.tcc.access.changed"];
    }

    else
    {
      v13 = +[(PreflightCacheInvalidationSource *)BiometryLockoutInvalidationSource];
    }

    v14 = v13;
    v22[5] = v13;
    v15 = [[PasscodeInvalidationSource alloc] initWithPreflightCache:v2];
    v22[6] = v15;
    v16 = [NotificationCenterInvalidationSource alloc];
    v17 = [(NotificationCenterInvalidationSource *)v16 initWithPreflightCache:v2 notificationName:*MEMORY[0x277CBE620]];
    v22[7] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:8];
    invalidationSources = v2->_invalidationSources;
    v2->_invalidationSources = v18;
  }

  return v2;
}

- (id)keyForPreflightOfPolicy:(int64_t)policy options:(id)options auditToken:(id *)token uid:(unsigned int)uid
{
  v6 = *&uid;
  v15[3] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if (optionsCopy && [(PreflightCache *)self _isCacheable:optionsCopy callerUid:v6]&& [(PreflightCache *)self _isPolicyCacheable:policy])
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:policy];
    v12 = [MEMORY[0x277CBEA90] dataWithBytes:token length:{32, v11, optionsCopy}];
    v15[2] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)keyForPreflightOfACL:(id)l operation:(id)operation options:(id)options auditToken:(id *)token uid:(unsigned int)uid
{
  v7 = *&uid;
  v19[4] = *MEMORY[0x277D85DE8];
  lCopy = l;
  operationCopy = operation;
  optionsCopy = options;
  v15 = optionsCopy;
  v16 = 0;
  if (lCopy && operationCopy && optionsCopy)
  {
    if ([(PreflightCache *)self _isCacheable:optionsCopy callerUid:v7])
    {
      v19[0] = lCopy;
      v19[1] = operationCopy;
      v19[2] = v15;
      v17 = [MEMORY[0x277CBEA90] dataWithBytes:token length:32];
      v19[3] = v17;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (id)cachedPreflightResultForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSCache *)self->_cache objectForKey:keyCopy];
  v6 = LA_LOG_0(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(PreflightCache *)keyCopy cachedPreflightResultForKey:v5];
  }

  return v5;
}

- (void)addPreflightResult:(id)result forKey:(id)key
{
  resultCopy = result;
  keyCopy = key;
  v8 = keyCopy;
  if (resultCopy && keyCopy)
  {
    v9 = LA_LOG_0(keyCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PreflightCache addPreflightResult:v8 forKey:resultCopy];
    }

    [(NSCache *)self->_cache setObject:resultCopy forKey:v8];
  }
}

- (void)invalidateWithReason:(id)reason
{
  v8 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = LA_LOG_0(reasonCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = reasonCopy;
    _os_log_impl(&dword_238B7F000, v5, OS_LOG_TYPE_DEFAULT, "Invalidating preflight cache (%{public}@)", &v6, 0xCu);
  }

  [(NSCache *)self->_cache removeAllObjects];
}

- (id)acquireBypassAssertionWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = [(PreflightCacheAssertion *)[PreflightCacheBypassAssertion alloc] initWithReason:reasonCopy cache:self];

  [(NSHashTable *)self->_bypassAssertions addObject:v5];

  return v5;
}

- (BOOL)_isPolicyCacheable:(int64_t)cacheable
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:cacheable];
  v4 = [&unk_284B71E58 containsObject:v3];

  return v4 ^ 1;
}

- (BOOL)_isCacheable:(id)cacheable callerUid:(unsigned int)uid
{
  cacheableCopy = cacheable;
  v7 = [cacheableCopy objectForKeyedSubscript:&unk_284B71CA8];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __41__PreflightCache__isCacheable_callerUid___block_invoke;
    v15 = &unk_278A614C0;
    v16 = cacheableCopy;
    uidCopy = uid;
    v9 = __41__PreflightCache__isCacheable_callerUid___block_invoke(&v12);
    v10 = v9 == geteuid() && [(NSHashTable *)self->_bypassAssertions count:v12]== 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __41__PreflightCache__isCacheable_callerUid___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:&unk_284B71CC0];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntValue];
  }

  else
  {
    v4 = *(a1 + 40);
  }

  return v4;
}

- (void)cachedPreflightResultForKey:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v3 = [a2 domain];
  [a2 code];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_238B7F000, v4, v5, "Queried preflight cache for %@: %{public}@[%d]", v6, v7, v8, v9);
}

- (void)addPreflightResult:(uint64_t)a1 forKey:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v3 = [a2 domain];
  [a2 code];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_238B7F000, v4, v5, "Will cache preflight result for %@: %{public}@[%d]", v6, v7, v8, v9);
}

@end