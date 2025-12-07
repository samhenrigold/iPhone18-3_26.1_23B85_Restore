@interface CHFitnessAppBadgeManager
- (CHFitnessAppBadgeManager)init;
- (int64_t)_badgeCount;
- (int64_t)_loadBadgeCount;
- (void)_launchFitnessApp;
- (void)_storeBadgeCount:(int64_t)count;
- (void)registerProvider:(id)provider;
- (void)requestBadgeUpdate;
- (void)unregisterProvider:(id)provider;
@end

@implementation CHFitnessAppBadgeManager

- (CHFitnessAppBadgeManager)init
{
  v8.receiver = self;
  v8.super_class = CHFitnessAppBadgeManager;
  v2 = [(CHFitnessAppBadgeManager *)&v8 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    providers = v2->_providers;
    v2->_providers = weakObjectsHashTable;

    v5 = HKCreateSerialDispatchQueue();
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v5;
  }

  return v2;
}

- (void)registerProvider:(id)provider
{
  v19 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC270];
  if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138543362;
    v18 = v8;
    _os_log_impl(&dword_243CCD000, v6, OS_LOG_TYPE_DEFAULT, "FitnessAppBadgeManager registerProvider for  %{public}@", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __45__CHFitnessAppBadgeManager_registerProvider___block_invoke;
  v14 = &unk_278DF0230;
  selfCopy = self;
  v16 = providerCopy;
  v10 = providerCopy;
  dispatch_async(serialQueue, &v11);
  [(CHFitnessAppBadgeManager *)self requestBadgeUpdate:v11];
}

- (void)unregisterProvider:(id)provider
{
  providerCopy = provider;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__CHFitnessAppBadgeManager_unregisterProvider___block_invoke;
  v7[3] = &unk_278DF0230;
  v7[4] = self;
  v8 = providerCopy;
  v6 = providerCopy;
  dispatch_async(serialQueue, v7);
}

- (void)requestBadgeUpdate
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__CHFitnessAppBadgeManager_requestBadgeUpdate__block_invoke;
  block[3] = &unk_278DF00F0;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void *__46__CHFitnessAppBadgeManager_requestBadgeUpdate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _loadBadgeCount];
  result = [*(a1 + 32) _badgeCount];
  if (v2 != result)
  {
    [*(a1 + 32) _storeBadgeCount:result];
    v4 = *(a1 + 32);

    return [v4 _launchFitnessApp];
  }

  return result;
}

- (int64_t)_badgeCount
{
  v28 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_serialQueue);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = self->_providers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v20;
    v9 = MEMORY[0x277CCC270];
    *&v5 = 134218242;
    v18 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        badgeCount = [v11 badgeCount];
        _HKInitializeLogging();
        v13 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v13;
          v15 = objc_opt_class();
          v16 = NSStringFromClass(v15);
          *buf = v18;
          v24 = badgeCount;
          v25 = 2114;
          v26 = v16;
          _os_log_impl(&dword_243CCD000, v14, OS_LOG_TYPE_DEFAULT, "FitnessAppBadgeManager got badge count of %zd from provider %{public}@", buf, 0x16u);
        }

        v7 += [v11 badgeCount];
      }

      v6 = [(NSHashTable *)v3 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)_loadBadgeCount
{
  dispatch_assert_queue_V2(self->_serialQueue);
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"FitnessStoredBadgeCount"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)_storeBadgeCount:(int64_t)count
{
  v9 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_serialQueue);
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:count];
  [standardUserDefaults setObject:v5 forKey:@"FitnessStoredBadgeCount"];

  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC270];
  if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    countCopy = count;
    _os_log_impl(&dword_243CCD000, v6, OS_LOG_TYPE_DEFAULT, "FitnessAppBadgeManager stored badge count: %ld", &v7, 0xCu);
  }
}

- (void)_launchFitnessApp
{
  v10[2] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_serialQueue);
  v2 = *MEMORY[0x277D0AC40];
  v9[0] = *MEMORY[0x277D0ABF0];
  v9[1] = v2;
  v10[0] = MEMORY[0x277CBEC38];
  v3 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"fitness-badging://"];
  v10[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v5 = [MEMORY[0x277D0AD60] optionsWithDictionary:v4];
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC270];
  if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_243CCD000, v6, OS_LOG_TYPE_DEFAULT, "FitnessAppBadgeManager launching app", v8, 2u);
  }

  serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  [serviceWithDefaultShellEndpoint openApplication:@"com.apple.Fitness" withOptions:v5 completion:&__block_literal_global_0];
}

void __45__CHFitnessAppBadgeManager__launchFitnessApp__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC270];
    if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_ERROR))
    {
      __45__CHFitnessAppBadgeManager__launchFitnessApp__block_invoke_cold_1(v3, v4);
    }
  }
}

void __45__CHFitnessAppBadgeManager__launchFitnessApp__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138412546;
  v3 = @"com.apple.Fitness";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_243CCD000, a2, OS_LOG_TYPE_ERROR, "Failed to launch application %@ with error: %@", &v2, 0x16u);
}

@end