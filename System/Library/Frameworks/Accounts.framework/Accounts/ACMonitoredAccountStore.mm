@interface ACMonitoredAccountStore
- (ACMonitoredAccountStore)initWithWithRemoteEndpoint:(id)endpoint effectiveBundleID:(id)d accountTypes:(id)types propertiesToPrefetch:(id)prefetch delegate:(id)delegate;
- (NSArray)monitoredAccounts;
- (id)_allDelegates;
- (id)monitoredAccountWithIdentifier:(id)identifier;
- (void)_accountsListPopulated:(id)populated;
- (void)_lock_accountWasAdded:(id)added;
- (void)_lock_accountWasModified:(id)modified;
- (void)_lock_accountWasRemoved:(id)removed;
- (void)_lock_processAccountsListForNotifications:(id)notifications forType:(id)type;
- (void)_registerAccountMonitorSynchronouslyWithCompletion:(id)completion;
- (void)_registerAccountMonitorWithCompletion:(id)completion;
- (void)_registerForApplicationStateDidChangeNotification;
- (void)_registerForCredentialChangedNotifications;
- (void)_registerNotifyReaders;
- (void)_reregisterForAccountType:(id)type;
- (void)_sendNotificationOfChange;
- (void)addDelegate:(id)delegate;
- (void)credentialsChangedNotification:(id)notification;
- (void)dealloc;
- (void)registerSynchronouslyWithError:(id *)error;
- (void)registerWithCompletion:(id)completion;
- (void)removeDelegate:(id)delegate;
@end

@implementation ACMonitoredAccountStore

- (void)_registerForApplicationStateDidChangeNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__ACMonitoredAccountStore__registerForApplicationStateDidChangeNotification__block_invoke;
  v6[3] = &unk_1E7975608;
  v6[4] = self;
  v4 = [defaultCenter addObserverForName:@"UIApplicationDidBecomeActiveNotification" object:0 queue:0 usingBlock:v6];
  didBecomeActiveObserver = self->_didBecomeActiveObserver;
  self->_didBecomeActiveObserver = v4;
}

- (void)_registerNotifyReaders
{
  v23 = *MEMORY[0x1E69E9840];
  v14 = [MEMORY[0x1E695DFA8] set];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = self->_accountTypesToMonitor;
  v3 = [(NSSet *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = *v19;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v19 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v18 + 1) + 8 * i);
        v7 = [ACNotifyAccountCache suffixForAccountsForAccountType:v6 fetchOptions:0];
        v8 = [ACNotifyAccountCache cacheKeyForSuffix:v7];

        objc_initWeak(&location, self);
        v9 = [ACNotifyReader alloc];
        replyQueue = [(ACAccountStore *)self replyQueue];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __49__ACMonitoredAccountStore__registerNotifyReaders__block_invoke;
        v15[3] = &unk_1E7975518;
        objc_copyWeak(&v16, &location);
        v15[4] = v6;
        v11 = [(ACNotifyReader *)v9 initWithKey:v8 updateQueue:replyQueue updateBlock:v15];
        [(NSSet *)v14 addObject:v11];

        objc_destroyWeak(&v16);
        objc_destroyWeak(&location);
      }

      v3 = [(NSSet *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v3);
  }

  monitoringReaders = self->_monitoringReaders;
  self->_monitoringReaders = v14;
}

- (void)_sendNotificationOfChange
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"ACMonitoredAccountStoreDidChangeNotification" object:self];
}

- (void)_registerForCredentialChangedNotifications
{
  objc_initWeak(&location, self);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__ACMonitoredAccountStore__registerForCredentialChangedNotifications__block_invoke;
  v6[3] = &unk_1E79755E0;
  objc_copyWeak(&v7, &location);
  v4 = [defaultCenter addObserverForName:@"ACAccountCredentialsDidChangeNotification" object:0 queue:0 usingBlock:v6];
  credentialsDidChangeObserver = self->_credentialsDidChangeObserver;
  self->_credentialsDidChangeObserver = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

uint64_t __76__ACMonitoredAccountStore__registerForApplicationStateDidChangeNotification__block_invoke(uint64_t a1)
{
  v2 = _ACLogSystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __76__ACMonitoredAccountStore__registerForApplicationStateDidChangeNotification__block_invoke_cold_1(v2);
  }

  return [*(a1 + 32) _reregisterForAccountType:0];
}

- (NSArray)monitoredAccounts
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__ACMonitoredAccountStore_monitoredAccounts__block_invoke;
  v4[3] = &unk_1E7975428;
  v4[4] = self;
  v2 = ac_unfair_lock_perform_with_result(&self->_monitoredAccountsCacheLock, v4);

  return v2;
}

id __44__ACMonitoredAccountStore_monitoredAccounts__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695DEC8]);
  v3 = [*(*(a1 + 32) + 136) allValues];
  v4 = [v2 initWithArray:v3 copyItems:1];

  return v4;
}

- (ACMonitoredAccountStore)initWithWithRemoteEndpoint:(id)endpoint effectiveBundleID:(id)d accountTypes:(id)types propertiesToPrefetch:(id)prefetch delegate:(id)delegate
{
  typesCopy = types;
  prefetchCopy = prefetch;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = ACMonitoredAccountStore;
  v16 = [(ACAccountStore *)&v22 initWithRemoteEndpoint:endpoint effectiveBundleID:d];
  if (v16)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    accountsByID = v16->_accountsByID;
    v16->_accountsByID = dictionary;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    delegates = v16->_delegates;
    v16->_delegates = weakObjectsHashTable;

    [(NSHashTable *)v16->_delegates addObject:delegateCopy];
    objc_storeStrong(&v16->_accountTypesToMonitor, types);
    objc_storeStrong(&v16->_propertiesToPrefetch, prefetch);
    v16->_monitoredAccountsCacheLock._os_unfair_lock_opaque = 0;
    [(ACMonitoredAccountStore *)v16 _registerForApplicationStateDidChangeNotification];
  }

  return v16;
}

- (void)dealloc
{
  if (self->_credentialsDidChangeObserver)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self->_credentialsDidChangeObserver];
  }

  if (self->_didBecomeActiveObserver)
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 removeObserver:self->_didBecomeActiveObserver];
  }

  v5.receiver = self;
  v5.super_class = ACMonitoredAccountStore;
  [(ACAccountStore *)&v5 dealloc];
}

- (void)registerWithCompletion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = _os_activity_create(&dword_1AC3CD000, "accounts/register-types-to-monitor", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v7 = _ACSignpostLogSystem(v6);
  v8 = _ACSignpostCreate(v7);
  v10 = v9;

  v12 = _ACSignpostLogSystem(v11);
  v13 = v12;
  if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    accountTypesToMonitor = self->_accountTypesToMonitor;
    *buf = 138412290;
    v23 = accountTypesToMonitor;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "RegisterTypesToMonitor", "%@", buf, 0xCu);
  }

  v16 = _ACSignpostLogSystem(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [ACMonitoredAccountStore registerWithCompletion:];
  }

  objc_initWeak(buf, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __50__ACMonitoredAccountStore_registerWithCompletion___block_invoke;
  v18[3] = &unk_1E79753D8;
  v20[1] = v8;
  v20[2] = v10;
  objc_copyWeak(v20, buf);
  v18[4] = self;
  v17 = completionCopy;
  v19 = v17;
  [(ACMonitoredAccountStore *)self _registerAccountMonitorWithCompletion:v18];

  objc_destroyWeak(v20);
  objc_destroyWeak(buf);
  os_activity_scope_leave(&state);
}

void __50__ACMonitoredAccountStore_registerWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  Nanoseconds = _ACSignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
  v8 = _ACSignpostLogSystem(Nanoseconds);
  v9 = v8;
  v10 = *(a1 + 56);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = &stru_1F210E1C8;
    if (v6)
    {
      v11 = v6;
    }

    v19 = 138412546;
    v20 = v5;
    v21 = 2112;
    v22 = *&v11;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v9, OS_SIGNPOST_INTERVAL_END, v10, "RegisterTypesToMonitor", "%@%@", &v19, 0x16u);
  }

  v13 = _ACSignpostLogSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 56);
    v19 = 134218754;
    v20 = v17;
    v18 = &stru_1F210E1C8;
    v21 = 2048;
    v22 = Nanoseconds / 1000000000.0;
    v23 = 2112;
    v24 = v5;
    if (v6)
    {
      v18 = v6;
    }

    v25 = 2112;
    v26 = v18;
    _os_log_debug_impl(&dword_1AC3CD000, v13, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: RegisterTypesToMonitor %@%@", &v19, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v15 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _registerNotifyReaders];
    if (v6 && [(__CFString *)v6 code]== 7)
    {
      v16 = _ACLogSystem(7);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        __50__ACMonitoredAccountStore_registerWithCompletion___block_invoke_cold_1(a1, v16);
      }
    }

    else if (v5)
    {
      [v15 _accountsListPopulated:v5];
      [v15 _registerForCredentialChangedNotifications];
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)registerSynchronouslyWithError:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = _os_activity_create(&dword_1AC3CD000, "accounts/register-types-to-monitor-sync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v7 = _ACSignpostLogSystem(v6);
  v8 = _ACSignpostCreate(v7);
  v10 = v9;

  v12 = _ACSignpostLogSystem(v11);
  v13 = v12;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    accountTypesToMonitor = self->_accountTypesToMonitor;
    LODWORD(buf) = 138412290;
    *(&buf + 4) = accountTypesToMonitor;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "RegisterTypesToMonitorSync", "%@", &buf, 0xCu);
  }

  v16 = _ACSignpostLogSystem(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [ACMonitoredAccountStore registerSynchronouslyWithError:];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58__ACMonitoredAccountStore_registerSynchronouslyWithError___block_invoke;
  v17[3] = &unk_1E7975400;
  v17[6] = v8;
  v17[7] = v10;
  v17[4] = self;
  v17[5] = &buf;
  [(ACMonitoredAccountStore *)self _registerAccountMonitorSynchronouslyWithCompletion:v17];
  if (error)
  {
    *error = *(*(&buf + 1) + 40);
  }

  _Block_object_dispose(&buf, 8);

  os_activity_scope_leave(&state);
}

void __58__ACMonitoredAccountStore_registerSynchronouslyWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  Nanoseconds = _ACSignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v8 = _ACSignpostLogSystem(Nanoseconds);
  v9 = v8;
  v10 = *(a1 + 48);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = &stru_1F210E1C8;
    if (v6)
    {
      v11 = v6;
    }

    v20 = 138412546;
    v21 = v5;
    v22 = 2112;
    v23 = *&v11;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v9, OS_SIGNPOST_INTERVAL_END, v10, "RegisterTypesToMonitorSync", "%@%@", &v20, 0x16u);
  }

  v13 = _ACSignpostLogSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 48);
    v20 = 134218754;
    v21 = v18;
    v19 = &stru_1F210E1C8;
    v22 = 2048;
    v23 = Nanoseconds / 1000000000.0;
    v24 = 2112;
    v25 = v5;
    if (v6)
    {
      v19 = v6;
    }

    v26 = 2112;
    v27 = v19;
    _os_log_debug_impl(&dword_1AC3CD000, v13, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: RegisterTypesToMonitorSync %@%@", &v20, 0x2Au);
  }

  v14 = (a1 + 32);
  [*(a1 + 32) _registerNotifyReaders];
  if (v6 && [(__CFString *)v6 code]== 7)
  {
    v15 = _ACLogSystem(7);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      __58__ACMonitoredAccountStore_registerSynchronouslyWithError___block_invoke_cold_1(a1 + 32, v15);
    }
  }

  else if (v5)
  {
    [*v14 _accountsListPopulated:v5];
    [*v14 _registerForCredentialChangedNotifications];
  }

  v16 = *(*(a1 + 40) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v6;
}

- (id)monitoredAccountWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__ACMonitoredAccountStore_monitoredAccountWithIdentifier___block_invoke;
  v8[3] = &unk_1E7975450;
  v8[4] = self;
  v9 = identifierCopy;
  v5 = identifierCopy;
  v6 = ac_unfair_lock_perform_with_result(&self->_monitoredAccountsCacheLock, v8);

  return v6;
}

id __58__ACMonitoredAccountStore_monitoredAccountWithIdentifier___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 136) objectForKeyedSubscript:*(a1 + 40)];
  v2 = [v1 copy];

  return v2;
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = self->_delegates;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_delegates addObject:delegateCopy];
  objc_sync_exit(v4);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = self->_delegates;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_delegates removeObject:delegateCopy];
  objc_sync_exit(v4);
}

- (void)_registerAccountMonitorWithCompletion:(id)completion
{
  completionCopy = completion;
  accountTypesToMonitor = self->_accountTypesToMonitor;
  if (!accountTypesToMonitor)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = @"_accountTypesToMonitor must be non-nil";
    goto LABEL_6;
  }

  if (![(NSSet *)accountTypesToMonitor count])
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = @"_accountTypesToMonitor must not be empty";
LABEL_6:
    v13 = [v10 exceptionWithName:v11 reason:v12 userInfo:0];
    objc_exception_throw(v13);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__ACMonitoredAccountStore__registerAccountMonitorWithCompletion___block_invoke;
  v18[3] = &unk_1E79754A0;
  v18[4] = self;
  v19 = completionCopy;
  v6 = completionCopy;
  v7 = MEMORY[0x1AC5B3C70](v18);
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__ACMonitoredAccountStore__registerAccountMonitorWithCompletion___block_invoke_3;
  v16[3] = &unk_1E79754C8;
  v16[4] = self;
  v17 = v7;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__ACMonitoredAccountStore__registerAccountMonitorWithCompletion___block_invoke_4;
  v14[3] = &unk_1E79754F0;
  v14[4] = self;
  v15 = v17;
  v9 = v17;
  ac_dispatch_remote(remoteAccountStoreSession, v16, v14);
}

void __65__ACMonitoredAccountStore__registerAccountMonitorWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__ACMonitoredAccountStore__registerAccountMonitorWithCompletion___block_invoke_2;
  block[3] = &unk_1E7975478;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __65__ACMonitoredAccountStore__registerAccountMonitorWithCompletion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _connectionFailureError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)_registerAccountMonitorSynchronouslyWithCompletion:(id)completion
{
  completionCopy = completion;
  accountTypesToMonitor = self->_accountTypesToMonitor;
  if (!accountTypesToMonitor)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = @"_accountTypesToMonitor must be non-nil";
    goto LABEL_6;
  }

  if (![(NSSet *)accountTypesToMonitor count])
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = @"_accountTypesToMonitor must not be empty";
LABEL_6:
    v11 = [v8 exceptionWithName:v9 reason:v10 userInfo:0];
    objc_exception_throw(v11);
  }

  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__ACMonitoredAccountStore__registerAccountMonitorSynchronouslyWithCompletion___block_invoke;
  v14[3] = &unk_1E79754C8;
  v14[4] = self;
  v15 = completionCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__ACMonitoredAccountStore__registerAccountMonitorSynchronouslyWithCompletion___block_invoke_2;
  v12[3] = &unk_1E79754F0;
  v12[4] = self;
  v13 = v15;
  v7 = v15;
  ac_dispatch_remote_sync(remoteAccountStoreSession, v14, v12);
}

void __78__ACMonitoredAccountStore__registerAccountMonitorSynchronouslyWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _connectionFailureError];
  (*(v1 + 16))(v1, 0, v2);
}

void __49__ACMonitoredAccountStore__registerNotifyReaders__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _reregisterForAccountType:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_reregisterForAccountType:(id)type
{
  v14 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v5 = _ACLogSystem(typeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = typeCopy;
    _os_log_impl(&dword_1AC3CD000, v5, OS_LOG_TYPE_DEFAULT, "ACMonitoredAccountStore: Fetching accounts of account type %@...", buf, 0xCu);
  }

  if (typeCopy)
  {
    v11 = typeCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    propertiesToPrefetch = self->_propertiesToPrefetch;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__ACMonitoredAccountStore__reregisterForAccountType___block_invoke;
    v9[3] = &unk_1E7975568;
    v9[4] = self;
    v10 = typeCopy;
    [(ACAccountStore *)self accountsWithAccountTypeIdentifiers:v6 preloadedProperties:propertiesToPrefetch completion:v9];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__ACMonitoredAccountStore__reregisterForAccountType___block_invoke_2;
    v8[3] = &unk_1E79755B8;
    v8[4] = self;
    [(ACMonitoredAccountStore *)self _registerAccountMonitorWithCompletion:v8];
  }
}

void __53__ACMonitoredAccountStore__reregisterForAccountType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _ACLogSystem(v6);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __53__ACMonitoredAccountStore__reregisterForAccountType___block_invoke_cold_1(v6, v8);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AC3CD000, v8, OS_LOG_TYPE_DEFAULT, "ACMonitoredAccountStore: Fetched Accounts", buf, 2u);
    }

    v9 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v12 = __53__ACMonitoredAccountStore__reregisterForAccountType___block_invoke_24;
    v13 = &unk_1E7975540;
    v14 = v9;
    v15 = v5;
    v16 = *(a1 + 40);
    v10 = v11;
    os_unfair_lock_lock(v9 + 42);
    v12(v10);
    os_unfair_lock_unlock(v9 + 42);
  }
}

void __53__ACMonitoredAccountStore__reregisterForAccountType___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _ACLogSystem(v6);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __53__ACMonitoredAccountStore__reregisterForAccountType___block_invoke_cold_1(v6, v8);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AC3CD000, v8, OS_LOG_TYPE_DEFAULT, "ACMonitoredAccountStore: Fetched Accounts", buf, 2u);
    }

    v9 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v12 = __53__ACMonitoredAccountStore__reregisterForAccountType___block_invoke_25;
    v13 = &unk_1E7975590;
    v14 = v9;
    v15 = v5;
    v10 = v11;
    os_unfair_lock_lock(v9 + 42);
    v12(v10);
    os_unfair_lock_unlock(v9 + 42);
  }
}

- (void)_lock_processAccountsListForNotifications:(id)notifications forType:(id)type
{
  v44 = *MEMORY[0x1E69E9840];
  notificationsCopy = notifications;
  typeCopy = type;
  v33 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(notificationsCopy, "count")}];
  allValues = [(NSMutableDictionary *)self->_accountsByID allValues];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = notificationsCopy;
  v7 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v38 + 1) + 8 * i);
        accountsByID = self->_accountsByID;
        identifier = [v11 identifier];
        v14 = [(NSMutableDictionary *)accountsByID objectForKeyedSubscript:identifier];

        if (v14)
        {
          modificationID = [v11 modificationID];
          modificationID2 = [v14 modificationID];
          v17 = [modificationID isEqualToString:modificationID2];

          if ((v17 & 1) == 0)
          {
            [(ACMonitoredAccountStore *)self _lock_accountWasModified:v11];
          }
        }

        else
        {
          [(ACMonitoredAccountStore *)self _lock_accountWasAdded:v11];
        }

        identifier2 = [v11 identifier];
        [v33 addObject:identifier2];
      }

      v8 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v8);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v19 = allValues;
  v20 = [v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v35;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v34 + 1) + 8 * j);
        if (typeCopy)
        {
          accountType = [*(*(&v34 + 1) + 8 * j) accountType];
          identifier3 = [accountType identifier];
          v27 = [typeCopy isEqualToString:identifier3];

          if (!v27)
          {
            continue;
          }
        }

        identifier4 = [v24 identifier];
        v29 = [v33 containsObject:identifier4];

        if ((v29 & 1) == 0)
        {
          [(ACMonitoredAccountStore *)self _lock_accountWasRemoved:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v21);
  }
}

- (void)_accountsListPopulated:(id)populated
{
  populatedCopy = populated;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v8 = __50__ACMonitoredAccountStore__accountsListPopulated___block_invoke;
  v9 = &unk_1E7975590;
  selfCopy = self;
  v5 = populatedCopy;
  v11 = v5;
  v6 = v7;
  os_unfair_lock_lock(&self->_monitoredAccountsCacheLock);
  v8(v6);
  os_unfair_lock_unlock(&self->_monitoredAccountsCacheLock);
}

uint64_t __50__ACMonitoredAccountStore__accountsListPopulated___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 136) removeAllObjects];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        [v7 _setAccountStore:{*(a1 + 32), v11}];
        v8 = *(*(a1 + 32) + 136);
        v9 = [v7 identifier];
        [v8 setObject:v7 forKeyedSubscript:v9];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  return [*(a1 + 32) _sendNotificationOfChange];
}

void __69__ACMonitoredAccountStore__registerForCredentialChangedNotifications__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained credentialsChangedNotification:v3];
}

- (void)credentialsChangedNotification:(id)notification
{
  notificationCopy = notification;
  replyQueue = [(ACAccountStore *)self replyQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__ACMonitoredAccountStore_credentialsChangedNotification___block_invoke;
  v7[3] = &unk_1E7975590;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(replyQueue, v7);
}

void __58__ACMonitoredAccountStore_credentialsChangedNotification___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:@"ACAccountIdentifierKey"];

  v4 = [*(a1 + 40) monitoredAccountWithIdentifier:v3];
  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [*(a1 + 40) _allDelegates];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 accountCredentialChanged:v4];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (id)_allDelegates
{
  v3 = self->_delegates;
  objc_sync_enter(v3);
  allObjects = [(NSHashTable *)self->_delegates allObjects];
  objc_sync_exit(v3);

  return allObjects;
}

- (void)_lock_accountWasAdded:(id)added
{
  v15 = *MEMORY[0x1E69E9840];
  addedCopy = added;
  v5 = _ACLogSystem(addedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = addedCopy;
    _os_log_impl(&dword_1AC3CD000, v5, OS_LOG_TYPE_DEFAULT, "ACMonitoredAccountStore: account was added: %@", buf, 0xCu);
  }

  [addedCopy _setAccountStore:self];
  v6 = [addedCopy copy];
  accountsByID = self->_accountsByID;
  identifier = [addedCopy identifier];
  [(NSMutableDictionary *)accountsByID setObject:v6 forKeyedSubscript:identifier];

  replyQueue = [(ACAccountStore *)self replyQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__ACMonitoredAccountStore__lock_accountWasAdded___block_invoke;
  v11[3] = &unk_1E7975590;
  v11[4] = self;
  v12 = addedCopy;
  v10 = addedCopy;
  dispatch_async(replyQueue, v11);
}

uint64_t __49__ACMonitoredAccountStore__lock_accountWasAdded___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) _allDelegates];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 accountWasAdded:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return [*(a1 + 32) _sendNotificationOfChange];
}

- (void)_lock_accountWasModified:(id)modified
{
  v15 = *MEMORY[0x1E69E9840];
  modifiedCopy = modified;
  v5 = _ACLogSystem(modifiedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = modifiedCopy;
    _os_log_impl(&dword_1AC3CD000, v5, OS_LOG_TYPE_DEFAULT, "ACMonitoredAccountStore: account was modified: %@", buf, 0xCu);
  }

  [modifiedCopy _setAccountStore:self];
  v6 = [modifiedCopy copy];
  accountsByID = self->_accountsByID;
  identifier = [modifiedCopy identifier];
  [(NSMutableDictionary *)accountsByID setObject:v6 forKeyedSubscript:identifier];

  replyQueue = [(ACAccountStore *)self replyQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__ACMonitoredAccountStore__lock_accountWasModified___block_invoke;
  v11[3] = &unk_1E7975590;
  v11[4] = self;
  v12 = modifiedCopy;
  v10 = modifiedCopy;
  dispatch_async(replyQueue, v11);
}

uint64_t __52__ACMonitoredAccountStore__lock_accountWasModified___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) _allDelegates];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 accountWasModified:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return [*(a1 + 32) _sendNotificationOfChange];
}

- (void)_lock_accountWasRemoved:(id)removed
{
  v14 = *MEMORY[0x1E69E9840];
  removedCopy = removed;
  v5 = _ACLogSystem(removedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = removedCopy;
    _os_log_impl(&dword_1AC3CD000, v5, OS_LOG_TYPE_DEFAULT, "ACMonitoredAccountStore: account was removed: %@", buf, 0xCu);
  }

  [removedCopy _setAccountStore:self];
  accountsByID = self->_accountsByID;
  identifier = [removedCopy identifier];
  [(NSMutableDictionary *)accountsByID setObject:0 forKeyedSubscript:identifier];

  replyQueue = [(ACAccountStore *)self replyQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__ACMonitoredAccountStore__lock_accountWasRemoved___block_invoke;
  v10[3] = &unk_1E7975590;
  v10[4] = self;
  v11 = removedCopy;
  v9 = removedCopy;
  dispatch_async(replyQueue, v10);
}

uint64_t __51__ACMonitoredAccountStore__lock_accountWasRemoved___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) _allDelegates];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 accountWasRemoved:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return [*(a1 + 32) _sendNotificationOfChange];
}

void __50__ACMonitoredAccountStore_registerWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 112);
  v3 = 138412290;
  v4 = v2;
  _os_log_fault_impl(&dword_1AC3CD000, a2, OS_LOG_TYPE_FAULT, "Attempted to register account monitor for types client is not authorized to access: %@", &v3, 0xCu);
}

void __58__ACMonitoredAccountStore_registerSynchronouslyWithError___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 112);
  v3 = 138412290;
  v4 = v2;
  _os_log_fault_impl(&dword_1AC3CD000, a2, OS_LOG_TYPE_FAULT, "Attempted to register account monitor for types client is not authorized to access: %@", &v3, 0xCu);
}

void __53__ACMonitoredAccountStore__reregisterForAccountType___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AC3CD000, a2, OS_LOG_TYPE_ERROR, "ACMonitoredAccountStore: Failed to fetch accounts: %@", &v2, 0xCu);
}

@end