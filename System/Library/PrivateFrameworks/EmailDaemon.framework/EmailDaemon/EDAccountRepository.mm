@interface EDAccountRepository
+ (OS_os_log)log;
- (EDAccountRepository)initWithAccountsProvider:(id)provider hookRegistry:(id)registry;
- (EDPersistenceHookRegistry)hookRegistry;
- (id)allAccounts;
- (id)transformAccounts:(id)accounts;
- (void)accountsAdded:(id)added;
- (void)accountsChanged:(id)changed;
- (void)accountsRemoved:(id)removed;
- (void)allAccountsWithCompletionHandler:(id)handler;
- (void)registerObserver:(id)observer completionHandler:(id)handler;
@end

@implementation EDAccountRepository

- (id)allAccounts
{
  accountsProvider = [(EDAccountRepository *)self accountsProvider];
  mailAccounts = [accountsProvider mailAccounts];

  v5 = [(EDAccountRepository *)self transformAccounts:mailAccounts];

  return v5;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__EDAccountRepository_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken != -1)
  {
    dispatch_once(&log_onceToken, block);
  }

  v2 = log_log;

  return v2;
}

void __26__EDAccountRepository_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log;
  log_log = v1;
}

- (EDAccountRepository)initWithAccountsProvider:(id)provider hookRegistry:(id)registry
{
  v21[1] = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  registryCopy = registry;
  v20.receiver = self;
  v20.super_class = EDAccountRepository;
  v9 = [(EDAccountRepository *)&v20 init];
  if (v9)
  {
    v10 = objc_alloc_init(EDAccountECAccountTransformer);
    transformer = v9->_transformer;
    v9->_transformer = v10;

    objc_storeStrong(&v9->_accountsProvider, provider);
    objc_storeWeak(&v9->_hookRegistry, registryCopy);
    v9->_lock._os_unfair_lock_opaque = 0;
    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    observers = v9->_observers;
    v9->_observers = v12;

    WeakRetained = objc_loadWeakRetained(&v9->_hookRegistry);
    [WeakRetained registerAccountChangeHookResponder:v9];

    v15 = MEMORY[0x1E699AE28];
    v21[0] = *MEMORY[0x1E699AB00];
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [v15 addValidSortDescriptorKeyPaths:v16 forTargetClass:objc_opt_class()];

    v17 = [[EDBiomeBlackPearlLogger alloc] initWithStreamType:0];
    receiveBiomeCollector = v9->_receiveBiomeCollector;
    v9->_receiveBiomeCollector = v17;
  }

  return v9;
}

- (void)registerObserver:(id)observer completionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_observers addObject:observerCopy];
  os_unfair_lock_unlock(&self->_lock);
  v8 = objc_alloc_init(MEMORY[0x1E699B7F8]);
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__EDAccountRepository_registerObserver_completionHandler___block_invoke;
  v13[3] = &unk_1E8250098;
  objc_copyWeak(&v15, &location);
  v9 = observerCopy;
  v14 = v9;
  [v8 addCancelationBlock:v13];
  allAccounts = [(EDAccountRepository *)self allAccounts];
  v11 = +[EDAccountRepository log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [allAccounts count];
    *buf = 134218498;
    v18 = v9;
    v19 = 2048;
    v20 = v12;
    v21 = 2112;
    v22 = allAccounts;
    _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_INFO, "Registered EMAccountRepositoryObserver<%p> - Current observing accounts: Count: %lu\n %@ ", buf, 0x20u);
  }

  handlerCopy[2](handlerCopy, allAccounts, v8, 0);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __58__EDAccountRepository_registerObserver_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 4);
    [*&v3[2]._os_unfair_lock_opaque removeObject:*(a1 + 32)];
    os_unfair_lock_unlock(v3 + 4);
    WeakRetained = v3;
  }
}

- (void)allAccountsWithCompletionHandler:(id)handler
{
  v9 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  allAccounts = [(EDAccountRepository *)self allAccounts];
  v6 = +[EDAccountRepository log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    v8 = [allAccounts count];
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_INFO, "Returning %lu accounts", &v7, 0xCu);
  }

  handlerCopy[2](handlerCopy, allAccounts, 0);
}

- (id)transformAccounts:(id)accounts
{
  accountsCopy = accounts;
  v5 = [accountsCopy ef_filter:&__block_literal_global_0];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__EDAccountRepository_transformAccounts___block_invoke_2;
  v8[3] = &unk_1E82500E0;
  v8[4] = self;
  v6 = [v5 ef_map:v8];

  return v6;
}

uint64_t __41__EDAccountRepository_transformAccounts___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_1F4628C10])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 isLocalAccount] ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

id __41__EDAccountRepository_transformAccounts___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) transformer];
  v5 = [v4 transformAccount:v3];

  return v5;
}

- (void)accountsAdded:(id)added
{
  v19 = *MEMORY[0x1E69E9840];
  addedCopy = added;
  v5 = +[EDAccountRepository log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = addedCopy;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_INFO, "Handling accounts added: %@", buf, 0xCu);
  }

  v6 = [(EDAccountRepository *)self transformAccounts:addedCopy];
  if ([v6 count])
  {
    os_unfair_lock_lock(&self->_lock);
    v7 = [(NSMutableSet *)self->_observers copy];
    os_unfair_lock_unlock(&self->_lock);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v9)
    {
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v12 + 1) + 8 * v11++) accountsAdded:{v6, v12}];
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)accountsRemoved:(id)removed
{
  v23 = *MEMORY[0x1E69E9840];
  removedCopy = removed;
  v5 = +[EDAccountRepository log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v22 = removedCopy;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_INFO, "Handling accounts removed: %@", buf, 0xCu);
  }

  v6 = [(EDAccountRepository *)self transformAccounts:removedCopy];
  if ([v6 count])
  {
    if (_os_feature_enabled_impl())
    {
      v7 = MEMORY[0x1E695DFD8];
      v8 = [removedCopy ef_map:&__block_literal_global_141];
      v9 = [v7 setWithArray:v8];

      receiveBiomeCollector = [(EDAccountRepository *)self receiveBiomeCollector];
      [receiveBiomeCollector deleteEventsForAccountIDs:v9];
    }

    os_unfair_lock_lock(&self->_lock);
    v11 = [(NSMutableSet *)self->_observers copy];
    os_unfair_lock_unlock(&self->_lock);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v13)
    {
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v16 + 1) + 8 * v15++) accountsRemoved:{v6, v16}];
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v13);
    }
  }
}

id __39__EDAccountRepository_accountsRemoved___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];

  return v2;
}

- (void)accountsChanged:(id)changed
{
  v19 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v5 = +[EDAccountRepository log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = changedCopy;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_INFO, "Handling accounts changed: %@", buf, 0xCu);
  }

  v6 = [(EDAccountRepository *)self transformAccounts:changedCopy];
  if ([v6 count])
  {
    os_unfair_lock_lock(&self->_lock);
    v7 = [(NSMutableSet *)self->_observers copy];
    os_unfair_lock_unlock(&self->_lock);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v9)
    {
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v12 + 1) + 8 * v11++) accountsChanged:{v6, v12}];
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (EDPersistenceHookRegistry)hookRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_hookRegistry);

  return WeakRetained;
}

@end