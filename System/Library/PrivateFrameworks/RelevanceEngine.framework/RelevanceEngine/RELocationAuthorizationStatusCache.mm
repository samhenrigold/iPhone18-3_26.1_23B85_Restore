@interface RELocationAuthorizationStatusCache
- (id)_init;
- (int)_cachedStatusForBundleIdentifier:(id)identifier;
- (int)cachedAuthorizationStatusForBundleIdentifier:(id)identifier invalidationUpdateQueue:(id)queue withCallback:(id)callback;
- (void)_q_queue_queryStatusFromCLForBundleIdentifier:(id)identifier;
- (void)_s_queue_addCallbackInfo:(id)info forBundleIdentifier:(id)identifier;
- (void)_s_queue_scheduleUpdatedStatusForBundleIdentifier:(id)identifier;
- (void)_s_queue_updateCacheFromCLWithStatus:(int)status forBundleIdentifier:(id)identifier;
@end

@implementation RELocationAuthorizationStatusCache

- (id)_init
{
  v16.receiver = self;
  v16.super_class = RELocationAuthorizationStatusCache;
  _init = [(RESingleton *)&v16 _init];
  if (_init)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v4 = _init[1];
    _init[1] = dictionary;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6 = _init[2];
    _init[2] = v5;

    v7 = [MEMORY[0x277CBEB58] set];
    v8 = _init[3];
    _init[3] = v7;

    v9 = dispatch_queue_create("com.apple.relevanceengine.scheduleCLAuth", 0);
    v10 = _init[4];
    _init[4] = v9;

    v11 = dispatch_queue_create("com.apple.relevanceengine.queryCLAuth", 0);
    v12 = _init[5];
    _init[5] = v11;

    v13 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    v14 = _init[6];
    _init[6] = v13;
  }

  return _init;
}

- (int)cachedAuthorizationStatusForBundleIdentifier:(id)identifier invalidationUpdateQueue:(id)queue withCallback:(id)callback
{
  identifierCopy = identifier;
  callbackCopy = callback;
  queueCopy = queue;
  v11 = [(RELocationAuthorizationStatusCache *)self _cachedStatusForBundleIdentifier:identifierCopy];
  v12 = objc_alloc_init(_RECallbackAndPreviousStatus);
  [(_RECallbackAndPreviousStatus *)v12 setStatus:v11];
  [(_RECallbackAndPreviousStatus *)v12 setInvalidationCallback:callbackCopy];

  [(_RECallbackAndPreviousStatus *)v12 setQueue:queueCopy];
  schedulingQueue = self->_schedulingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __120__RELocationAuthorizationStatusCache_cachedAuthorizationStatusForBundleIdentifier_invalidationUpdateQueue_withCallback___block_invoke;
  block[3] = &unk_2785FB070;
  block[4] = self;
  v18 = v12;
  v19 = identifierCopy;
  v14 = identifierCopy;
  v15 = v12;
  dispatch_async(schedulingQueue, block);

  return v11;
}

uint64_t __120__RELocationAuthorizationStatusCache_cachedAuthorizationStatusForBundleIdentifier_invalidationUpdateQueue_withCallback___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _s_queue_addCallbackInfo:*(a1 + 40) forBundleIdentifier:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 _s_queue_scheduleUpdatedStatusForBundleIdentifier:v3];
}

- (int)_cachedStatusForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(NSLock *)self->_bundleToStatusCacheLock lock];
  v5 = [(NSMutableDictionary *)self->_bundleToStatusCache objectForKeyedSubscript:identifierCopy];
  v6 = v5;
  if (v5)
  {
    intValue = [v5 intValue];
  }

  else
  {
    [(NSMutableDictionary *)self->_bundleToStatusCache setObject:&unk_283BBD638 forKeyedSubscript:identifierCopy];
    intValue = 0;
  }

  [(NSLock *)self->_bundleToStatusCacheLock unlock];

  return intValue;
}

- (void)_s_queue_addCallbackInfo:(id)info forBundleIdentifier:(id)identifier
{
  infoCopy = info;
  identifierCopy = identifier;
  array = [(NSMutableDictionary *)self->_bundleToCallbackBlocks objectForKeyedSubscript:identifierCopy];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    [(NSMutableDictionary *)self->_bundleToCallbackBlocks setObject:array forKeyedSubscript:identifierCopy];
  }

  [array addObject:infoCopy];
}

- (void)_s_queue_scheduleUpdatedStatusForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([(NSMutableSet *)self->_bundlesAwaitingQuery containsObject:identifierCopy]& 1) == 0)
  {
    v5 = dispatch_time(0, 1000000000);
    queryQueue = self->_queryQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __88__RELocationAuthorizationStatusCache__s_queue_scheduleUpdatedStatusForBundleIdentifier___block_invoke;
    v7[3] = &unk_2785F9AE0;
    v7[4] = self;
    v8 = identifierCopy;
    dispatch_after(v5, queryQueue, v7);
  }
}

- (void)_q_queue_queryStatusFromCLForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [MEMORY[0x277CBFC10] authorizationStatusForBundleIdentifier:identifierCopy];
  schedulingQueue = self->_schedulingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__RELocationAuthorizationStatusCache__q_queue_queryStatusFromCLForBundleIdentifier___block_invoke;
  block[3] = &unk_2785FC560;
  v10 = v5;
  block[4] = self;
  v9 = identifierCopy;
  v7 = identifierCopy;
  dispatch_async(schedulingQueue, block);
}

- (void)_s_queue_updateCacheFromCLWithStatus:(int)status forBundleIdentifier:(id)identifier
{
  v4 = *&status;
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  [(NSLock *)self->_bundleToStatusCacheLock lock];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  [(NSMutableDictionary *)self->_bundleToStatusCache setObject:v7 forKeyedSubscript:identifierCopy];

  [(NSLock *)self->_bundleToStatusCacheLock unlock];
  selfCopy = self;
  v16 = identifierCopy;
  v8 = [(NSMutableDictionary *)self->_bundleToCallbackBlocks objectForKeyedSubscript:identifierCopy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if ([v13 status] != v4)
        {
          queue = [v13 queue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __95__RELocationAuthorizationStatusCache__s_queue_updateCacheFromCLWithStatus_forBundleIdentifier___block_invoke;
          block[3] = &unk_2785FC588;
          block[4] = v13;
          v18 = v4;
          dispatch_async(queue, block);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  [(NSMutableDictionary *)selfCopy->_bundleToCallbackBlocks removeObjectForKey:v16];
  [(NSMutableSet *)selfCopy->_bundlesAwaitingQuery removeObject:v16];
}

void __95__RELocationAuthorizationStatusCache__s_queue_updateCacheFromCLWithStatus_forBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) invalidationCallback];
  v2[2](v2, *(a1 + 40));
}

@end