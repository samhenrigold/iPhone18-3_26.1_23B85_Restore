@interface EMAccountRepository
+ (OS_os_log)log;
+ (id)remoteInterface;
- (EMAccountRepository)initWithRemoteConnection:(id)connection;
- (NSArray)allAccounts;
- (NSArray)deliveryAccounts;
- (NSArray)receivingAccounts;
- (id)_currentAccountsByObjectIDMap;
- (id)accountForAccountIdentifier:(id)identifier;
- (id)accountForIdentifier:(id)identifier;
- (void)_currentAccountsByObjectIDMap;
- (void)_fetchAccountsAndObserveChanges;
- (void)_postAccountChangedNotification;
- (void)accountsAdded:(id)added;
- (void)accountsChanged:(id)changed;
- (void)accountsRemoved:(id)removed;
- (void)dealloc;
- (void)requestAccounts;
@end

@implementation EMAccountRepository

+ (id)remoteInterface
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v2 setWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
  v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F461E320];
  [v7 setClasses:v6 forSelector:sel_accountsAdded_ argumentIndex:0 ofReply:0];
  [v7 setClasses:v6 forSelector:sel_accountsRemoved_ argumentIndex:0 ofReply:0];
  [v7 setClasses:v6 forSelector:sel_accountsChanged_ argumentIndex:0 ofReply:0];
  v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4641828];
  [v8 setClasses:v6 forSelector:sel_registerObserver_completionHandler_ argumentIndex:0 ofReply:1];
  v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F461EBF8];
  [v8 setInterface:v9 forSelector:sel_registerObserver_completionHandler_ argumentIndex:1 ofReply:1];

  [v8 setInterface:v7 forSelector:sel_registerObserver_completionHandler_ argumentIndex:0 ofReply:0];

  return v8;
}

- (void)requestAccounts
{
  recoveryHandlerScheduler = self->_recoveryHandlerScheduler;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__EMAccountRepository_requestAccounts__block_invoke;
  v3[3] = &unk_1E826C098;
  v3[4] = self;
  [(EFScheduler *)recoveryHandlerScheduler performBlock:v3];
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__EMAccountRepository_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_0 != -1)
  {
    dispatch_once(&log_onceToken_0, block);
  }

  v2 = log_log_0;

  return v2;
}

- (id)_currentAccountsByObjectIDMap
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_accounts && self->_cancelable)
  {
    v3 = +[EMAccountRepository log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(EMAccountRepository *)self _currentAccountsByObjectIDMap];
    }
  }

  else
  {
    v4 = +[EMAccountRepository log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(EMAccountRepository *)self _currentAccountsByObjectIDMap];
    }

    [(EMAccountRepository *)self _fetchAccountsAndObserveChanges];
  }

  v5 = [(NSMutableDictionary *)self->_accounts copy];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

void __26__EMAccountRepository_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_0;
  log_log_0 = v1;
}

- (void)_fetchAccountsAndObserveChanges
{
  connection = [(EMRepository *)self connection];
  v4 = [connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global];
  observerScheduler = [(EMRepository *)self observerScheduler];
  v6 = [(EMAccountRepository *)self ef_onScheduler:observerScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__EMAccountRepository__fetchAccountsAndObserveChanges__block_invoke_81;
  v7[3] = &unk_1E826C0E0;
  v7[4] = self;
  [v4 registerObserver:v6 completionHandler:v7];
}

void __54__EMAccountRepository__fetchAccountsAndObserveChanges__block_invoke_81(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = +[EMAccountRepository log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = [v9 ef_publicDescription];
      __54__EMAccountRepository__fetchAccountsAndObserveChanges__block_invoke_81_cold_1(v11, v12, &v21, v10);
    }
  }

  else
  {
    v13 = +[EMAccountRepository log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138543362;
      v22 = v7;
      _os_log_impl(&dword_1C6655000, v13, OS_LOG_TYPE_DEFAULT, "Initialized with accounts: %{public}@", &v21, 0xCu);
    }

    v14 = MEMORY[0x1E695DF90];
    v15 = [v7 ef_mapSelector:sel_objectID];
    v16 = [v14 dictionaryWithObjects:v7 forKeys:v15];
    v17 = *(a1 + 32);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v19 = *(a1 + 32);
    v20 = v8;
    v10 = *(v19 + 56);
    *(v19 + 56) = v20;
  }
}

- (EMAccountRepository)initWithRemoteConnection:(id)connection
{
  v19[1] = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v18.receiver = self;
  v18.super_class = EMAccountRepository;
  v5 = [(EMRepository *)&v18 initWithRemoteConnection:connectionCopy];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = MEMORY[0x1E699B978];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.email.%@.recoveryHandler", objc_opt_class()];
    v9 = [v7 serialDispatchQueueSchedulerWithName:v8];
    recoveryHandlerScheduler = v6->_recoveryHandlerScheduler;
    v6->_recoveryHandlerScheduler = v9;

    v19[0] = @"name";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    [EMQuery addValidSortDescriptorKeyPaths:v11 forTargetClass:objc_opt_class()];

    objc_initWeak(&location, v6);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __48__EMAccountRepository_initWithRemoteConnection___block_invoke;
    v15[3] = &unk_1E826C070;
    objc_copyWeak(&v16, &location);
    [connectionCopy addResetHandler:v15];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48__EMAccountRepository_initWithRemoteConnection___block_invoke_2;
    v13[3] = &unk_1E826C070;
    objc_copyWeak(&v14, &location);
    [connectionCopy addRecoveryHandler:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __48__EMAccountRepository_initWithRemoteConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[7];
    WeakRetained[7] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

void __48__EMAccountRepository_initWithRemoteConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[6];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __48__EMAccountRepository_initWithRemoteConnection___block_invoke_3;
    v4[3] = &unk_1E826C098;
    v5 = WeakRetained;
    [v3 performBlock:v4];
  }
}

void __48__EMAccountRepository_initWithRemoteConnection___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_lock_lock(v2 + 8);
  [*(a1 + 32) _fetchAccountsAndObserveChanges];

  os_unfair_lock_unlock(v2 + 8);
}

- (void)dealloc
{
  [(EFCancelable *)self->_cancelable cancel];
  v3.receiver = self;
  v3.super_class = EMAccountRepository;
  [(EMAccountRepository *)&v3 dealloc];
}

void __54__EMAccountRepository__fetchAccountsAndObserveChanges__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[EMAccountRepository log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __54__EMAccountRepository__fetchAccountsAndObserveChanges__block_invoke_cold_1(v2, v3);
  }
}

- (NSArray)allAccounts
{
  v8[1] = *MEMORY[0x1E69E9840];
  _currentAccountsByObjectIDMap = [(EMAccountRepository *)self _currentAccountsByObjectIDMap];
  allValues = [_currentAccountsByObjectIDMap allValues];

  v4 = [EMAccount sortDescriptorForNameAscending:1];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v6 = [allValues sortedArrayUsingDescriptors:v5];

  return v6;
}

- (NSArray)receivingAccounts
{
  v13[1] = *MEMORY[0x1E69E9840];
  allAccounts = [(EMAccountRepository *)self allAccounts];
  v3 = [EMQuery alloc];
  v4 = objc_opt_class();
  v5 = +[EMAccount predicateForReceivingAccounts];
  v6 = [EMAccount sortDescriptorForNameAscending:1];
  v13[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v8 = [(EMQuery *)v3 initWithTargetClass:v4 predicate:v5 sortDescriptors:v7];

  predicate = [(EMQuery *)v8 predicate];
  v10 = [allAccounts filteredArrayUsingPredicate:predicate];

  v11 = [v10 ef_map:&__block_literal_global_88];

  return v11;
}

- (NSArray)deliveryAccounts
{
  receivingAccounts = [(EMAccountRepository *)self receivingAccounts];
  v3 = [receivingAccounts ef_compactMap:&__block_literal_global_91];

  return v3;
}

id __39__EMAccountRepository_deliveryAccounts__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 deliveryAccount];

  return v2;
}

- (id)accountForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    _currentAccountsByObjectIDMap = [(EMAccountRepository *)self _currentAccountsByObjectIDMap];
    v6 = [_currentAccountsByObjectIDMap objectForKeyedSubscript:identifierCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)accountForAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[EMObjectID alloc] initWithRepresentedObjectID:identifierCopy];
  v6 = [(EMAccountRepository *)self accountForIdentifier:v5];

  return v6;
}

- (void)accountsAdded:(id)added
{
  v12 = *MEMORY[0x1E69E9840];
  addedCopy = added;
  v5 = +[EMAccountRepository log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = addedCopy;
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "Processing added accounts: %{public}@", &v10, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  accounts = self->_accounts;
  v7 = MEMORY[0x1E695DF20];
  v8 = [addedCopy ef_mapSelector:sel_objectID];
  v9 = [v7 dictionaryWithObjects:addedCopy forKeys:v8];
  [(NSMutableDictionary *)accounts addEntriesFromDictionary:v9];

  os_unfair_lock_unlock(&self->_lock);
  [(EMAccountRepository *)self _postAccountChangedNotification];
}

- (void)accountsRemoved:(id)removed
{
  v10 = *MEMORY[0x1E69E9840];
  removedCopy = removed;
  v5 = +[EMAccountRepository log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = removedCopy;
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "Processing removed accounts: %{public}@", &v8, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  accounts = self->_accounts;
  v7 = [removedCopy ef_mapSelector:sel_objectID];
  [(NSMutableDictionary *)accounts removeObjectsForKeys:v7];

  os_unfair_lock_unlock(&self->_lock);
  [(EMAccountRepository *)self _postAccountChangedNotification];
}

- (void)accountsChanged:(id)changed
{
  v20 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v4 = +[EMAccountRepository log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = changedCopy;
    _os_log_impl(&dword_1C6655000, v4, OS_LOG_TYPE_DEFAULT, "Processing changed accounts: %{public}@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = changedCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        accounts = self->_accounts;
        objectID = [v9 objectID];
        [(NSMutableDictionary *)accounts setObject:v9 forKeyedSubscript:objectID];
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  [(EMAccountRepository *)self _postAccountChangedNotification];
}

- (void)_postAccountChangedNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"EMAccountsChangedNotification" object:0];
}

void __54__EMAccountRepository__fetchAccountsAndObserveChanges__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1C6655000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch accounts %{public}@", &v2, 0xCu);
}

void __54__EMAccountRepository__fetchAccountsAndObserveChanges__block_invoke_81_cold_1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C6655000, log, OS_LOG_TYPE_ERROR, "EMAccountRepository<%p> Registering observer for account changes failed with error: %{public}@", buf, 0x16u);
}

- (void)_currentAccountsByObjectIDMap
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  selfCopy = self;
  _os_log_debug_impl(&dword_1C6655000, a2, OS_LOG_TYPE_DEBUG, "EMAccountRepository<%p> Registering observer for account changes", &v2, 0xCu);
}

@end