@interface ACAccountStore
+ (ACAccountStore)defaultStore;
+ (BOOL)canSaveAccountsOfAccountTypeIdentifier:(id)identifier;
+ (id)_obsoleteAccountTypeIDsToRemove;
+ (int)accountsWithAccountTypeIdentifierExist:(id)exist;
+ (int64_t)countOfAccountsWithAccountTypeIdentifier:(id)identifier;
- (ACAccountStore)initWithRemoteEndpoint:(id)endpoint effectiveBundleID:(id)d;
- (ACRemoteAccountStoreSession)longLivedRemoteAccountStoreSession;
- (ACRemoteAccountStoreSession)remoteAccountStoreSession;
- (BOOL)addClientToken:(id)token forAccount:(id)account;
- (BOOL)hasAccountWithDescription:(id)description;
- (BOOL)isPerformingDataclassActionsForAccount:(id)account error:(id *)error;
- (BOOL)isPushSupportedForAccount:(id)account;
- (BOOL)isTetheredSyncingEnabledForDataclass:(id)dataclass;
- (BOOL)permissionForAccountType:(id)type;
- (BOOL)saveVerifiedAccount:(id)account error:(id *)error;
- (BOOL)triggerKeychainMigrationIfNecessary:(id *)necessary;
- (NSArray)accounts;
- (NSArray)accountsWithAccountType:(ACAccountType *)accountType;
- (id)_cache;
- (id)_createSMTPAccountForServerAccount:(id)account;
- (id)_removeObsoleteOSXServerAccountForMacOS:(id)s;
- (id)_sanitizeOptionsDictionary:(id)dictionary;
- (id)_unsanitizeError:(id)error;
- (id)accessKeysForAccountType:(id)type;
- (id)accountIdentifiersEnabledForDataclass:(id)dataclass;
- (id)accountIdentifiersEnabledToSyncDataclass:(id)dataclass;
- (id)accountTypeWithAccountTypeIdentifier:(id)identifier error:(id *)error;
- (id)accountWithIdentifier:(id)identifier error:(id *)error;
- (id)accountsWithAccountType:(id)type options:(unint64_t)options error:(id *)error;
- (id)accountsWithAccountTypeIdentifiers:(id)identifiers preloadedProperties:(id)properties error:(id *)error;
- (id)allAccountTypes;
- (id)allCredentialItems;
- (id)allDataclasses;
- (id)appPermissionsForAccountType:(id)type;
- (id)childAccountsForAccount:(id)account error:(id *)error;
- (id)childAccountsForAccount:(id)account withTypeIdentifier:(id)identifier;
- (id)clientTokenForAccount:(id)account;
- (id)credentialForAccount:(id)account error:(id *)error;
- (id)credentialForAccount:(id)account serviceID:(id)d error:(id *)error;
- (id)credentialItemForAccount:(id)account serviceName:(id)name;
- (id)dataclassActionsForAccountDeletion:(id)deletion error:(id *)error;
- (id)dataclassActionsForAccountSave:(id)save error:(id *)error;
- (id)displayTypeForAccountWithIdentifier:(id)identifier;
- (id)enabledDataclassesForAccount:(id)account error:(id *)error;
- (id)grantedPermissionsForAccountType:(id)type;
- (id)parentAccountForAccount:(id)account error:(id *)error;
- (id)provisionedDataclassesForAccount:(id)account error:(id *)error;
- (id)supportedDataclassesForAccountType:(id)type;
- (id)syncableDataclassesForAccountType:(id)type;
- (id)tetheredSyncSourceTypeForDataclass:(id)dataclass;
- (unint64_t)generationForCacheSuffix:(id)suffix;
- (unsigned)_uidOfAccountsd;
- (void)_checkSaveRateLimitForAccountType:(id)type;
- (void)_clearAccountCaches;
- (void)_removeObsoleteAccountsInternal:(id)internal completion:(id)completion;
- (void)_removeObsoleteOSXServerAccountForiOS:(id)s;
- (void)_saveAccount:(id)account verify:(BOOL)verify dataclassActions:(id)actions completion:(id)completion;
- (void)accountIdentifiersEnabledForDataclasses:(id)dataclasses withAccountTypeIdentifiers:(id)identifiers completion:(id)completion;
- (void)accountTypeWithIdentifier:(id)identifier completion:(id)completion;
- (void)accountWithIdentifier:(id)identifier completion:(id)completion;
- (void)accounts;
- (void)accountsOnPairedDeviceWithAccountType:(id)type completion:(id)completion;
- (void)accountsOnPairedDeviceWithAccountTypes:(id)types withOptions:(id)options completion:(id)completion;
- (void)accountsWithAccountType:(id)type completion:(id)completion;
- (void)accountsWithAccountType:(id)type options:(unint64_t)options completion:(id)completion;
- (void)accountsWithAccountTypeIdentifiers:(id)identifiers preloadedProperties:(id)properties completion:(id)completion;
- (void)allAccountTypes;
- (void)allCredentialItems;
- (void)allDataclasses;
- (void)cachedAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)canSaveAccount:(id)account withCompletionHandler:(id)handler;
- (void)clearAllPermissionsGrantedForAccountType:(id)type;
- (void)clearGrantedPermissionsForAccountType:(id)type;
- (void)dealloc;
- (void)discoverPropertiesForAccount:(id)account options:(id)options completion:(id)completion;
- (void)handleURL:(id)l;
- (void)insertAccountType:(id)type withCompletionHandler:(id)handler;
- (void)insertCredentialItem:(id)item withCompletionHandler:(id)handler;
- (void)kerberosAccountsForDomainFromURL:(id)l completion:(id)completion;
- (void)migrateCredentialForAccount:(id)account completion:(id)completion;
- (void)notifyRemoteDevicesOfModifiedAccount:(id)account withOptions:(id)options completion:(id)completion;
- (void)notifyRemoteDevicesOfUpdatedCredentials:(id)credentials withOptions:(id)options completion:(id)completion;
- (void)openAuthenticationURL:(id)l forAccount:(id)account shouldConfirm:(BOOL)confirm completion:(id)completion;
- (void)openAuthenticationURLForAccount:(id)account withDelegateClassName:(id)name fromBundleAtPath:(id)path shouldConfirm:(BOOL)confirm completion:(id)completion;
- (void)preloadDataclassOwnersWithCompletion:(id)completion;
- (void)removeAccount:(id)account withDataclassActions:(id)actions completion:(id)completion;
- (void)removeAccount:(id)account withDeleteSync:(BOOL)sync completion:(id)completion;
- (void)removeAccountFromPairedDevice:(id)device withOptions:(id)options completion:(id)completion;
- (void)removeAccountType:(id)type withCompletionHandler:(id)handler;
- (void)removeAccountsFromPairedDeviceWithOptions:(id)options completion:(id)completion;
- (void)removeCredentialItem:(id)item withCompletionHandler:(id)handler;
- (void)removeObsoleteAccounts:(id)accounts;
- (void)renewCredentialsForAccount:(id)account force:(BOOL)force reason:(id)reason completion:(id)completion;
- (void)renewCredentialsForAccount:(id)account options:(id)options completion:(id)completion;
- (void)renewCredentialsForAccount:(id)account services:(id)services completion:(id)completion;
- (void)reportTelemetryForLandmarkEvent:(id)event;
- (void)requestAccessToAccountsWithType:(ACAccountType *)accountType options:(NSDictionary *)options completion:(ACAccountStoreRequestAccessCompletionHandler)completion;
- (void)resetDatabaseToVersion:(id)version withCompletion:(id)completion;
- (void)runAccountMigrationPlugins:(id)plugins;
- (void)saveAccount:(id)account toPairedDeviceWithOptions:(id)options completion:(id)completion;
- (void)saveCredentialItem:(id)item withCompletionHandler:(id)handler;
- (void)scheduleBackupIfNonexistent:(id)nonexistent;
- (void)setCredential:(id)credential forAccount:(id)account serviceID:(id)d error:(id *)error;
- (void)setNotificationsEnabled:(BOOL)enabled;
- (void)setPermissionGranted:(BOOL)granted forBundleID:(id)d onAccountType:(id)type;
- (void)shutdownAccountsD:(id)d;
- (void)verifyCredentialsForAccount:(id)account options:(id)options completion:(id)completion;
- (void)verifyCredentialsForAccount:(id)account saveWhenAuthorized:(BOOL)authorized withHandler:(id)handler;
- (void)visibleTopLevelAccountsWithAccountTypeIdentifiers:(id)identifiers completion:(id)completion;
@end

@implementation ACAccountStore

void __30__ACAccountStore_defaultStore__block_invoke()
{
  if (!sharedAccountStore)
  {
    sharedAccountStore = objc_alloc_init(ACAccountStore);

    MEMORY[0x1EEE66BB8]();
  }
}

+ (ACAccountStore)defaultStore
{
  if (defaultStore_onceToken != -1)
  {
    +[ACAccountStore defaultStore];
  }

  v3 = sharedAccountStore;

  return v3;
}

- (id)_cache
{
  _testCache = [(ACAccountStore *)self _testCache];

  if (_testCache)
  {
    [(ACAccountStore *)self _testCache];
  }

  else
  {
    +[ACAccountStoreCache sharedCache];
  }
  v4 = ;

  return v4;
}

- (ACRemoteAccountStoreSession)remoteAccountStoreSession
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__ACAccountStore_remoteAccountStoreSession__block_invoke;
  v4[3] = &unk_1E7975B28;
  v4[4] = self;
  v2 = ac_unfair_lock_perform_with_result_0(&self->_remoteAccountStoreSessionLock, v4);

  return v2;
}

id __43__ACAccountStore_remoteAccountStoreSession__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[4])
  {
    v3 = [[ACRemoteAccountStoreSession alloc] initWithListenerEndpoint:*(*(a1 + 32) + 24)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v6 = *(a1 + 32);
    v7 = v6[4];
    v8 = [v6 effectiveBundleID];
    [v7 setEffectiveBundleID:v8];

    v2 = *(a1 + 32);
  }

  objc_initWeak(&location, v2);
  v9 = *(*(a1 + 32) + 48);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__ACAccountStore_remoteAccountStoreSession__block_invoke_2;
  v12[3] = &unk_1E7975B00;
  objc_copyWeak(&v13, &location);
  [v9 scheduleExpiration:v12];
  v10 = *(*(a1 + 32) + 32);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v10;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self->_daemonAccountStoreDidChangeObserver];

  v4.receiver = self;
  v4.super_class = ACAccountStore;
  [(ACAccountStore *)&v4 dealloc];
}

void __43__ACAccountStore_remoteAccountStoreSession__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v5 = __43__ACAccountStore_remoteAccountStoreSession__block_invoke_3;
    v6 = &unk_1E7975AD8;
    v7 = WeakRetained;
    v3 = v4;
    os_unfair_lock_lock(v2 + 10);
    v5(v3);
    os_unfair_lock_unlock(v2 + 10);
  }
}

void __43__ACAccountStore_remoteAccountStoreSession__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  *(v1 + 32) = 0;
}

- (ACAccountStore)initWithRemoteEndpoint:(id)endpoint effectiveBundleID:(id)d
{
  endpointCopy = endpoint;
  dCopy = d;
  v27.receiver = self;
  v27.super_class = ACAccountStore;
  v9 = [(ACAccountStore *)&v27 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("ACAccountStoreReply", v10);
    replyQueue = v9->_replyQueue;
    v9->_replyQueue = v11;

    objc_storeStrong(&v9->_effectiveBundleID, d);
    objc_storeStrong(&v9->_endpoint, endpoint);
    v9->_remoteAccountStoreSessionLock._os_unfair_lock_opaque = 0;
    v13 = [ACTimedExpirer expirerWithTimeout:ACRemoteConnectionTimeout];
    remoteAccountStoreSessionExpirer = v9->_remoteAccountStoreSessionExpirer;
    v9->_remoteAccountStoreSessionExpirer = v13;

    v9->_longLivedRemoteAccountStoreSessionLock._os_unfair_lock_opaque = 0;
    v15 = [ACTimedExpirer expirerWithTimeout:ACRemoteConnectionTimeout];
    longLivedRemoteAccountStoreSessionExpirer = v9->_longLivedRemoteAccountStoreSessionExpirer;
    v9->_longLivedRemoteAccountStoreSessionExpirer = v15;

    v17 = objc_opt_new();
    accountCache = v9->_accountCache;
    v9->_accountCache = v17;

    objc_initWeak(&location, v9);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v20 = +[ACNotificationRebroadcaster sharedRebroadcaster];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __59__ACAccountStore_initWithRemoteEndpoint_effectiveBundleID___block_invoke;
    v24[3] = &unk_1E79755E0;
    objc_copyWeak(&v25, &location);
    v21 = [defaultCenter addObserverForName:@"ACDAccountStoreDidChangeNotification" object:v20 queue:0 usingBlock:v24];
    daemonAccountStoreDidChangeObserver = v9->_daemonAccountStoreDidChangeObserver;
    v9->_daemonAccountStoreDidChangeObserver = v21;

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __59__ACAccountStore_initWithRemoteEndpoint_effectiveBundleID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _clearAccountCaches];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__ACAccountStore_initWithRemoteEndpoint_effectiveBundleID___block_invoke_2;
    v6[3] = &unk_1E7975590;
    v7 = v5;
    v8 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

void __59__ACAccountStore_initWithRemoteEndpoint_effectiveBundleID___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) userInfo];
  [v3 postNotificationName:@"ACAccountStoreDidChangeNotification" object:v4 userInfo:v5];

  objc_autoreleasePoolPop(v2);
}

- (void)_clearAccountCaches
{
  obj = self->_accountCache;
  objc_sync_enter(obj);
  [(NSMutableDictionary *)self->_accountCache removeAllObjects];
  objc_sync_exit(obj);
}

- (ACRemoteAccountStoreSession)longLivedRemoteAccountStoreSession
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__ACAccountStore_longLivedRemoteAccountStoreSession__block_invoke;
  v4[3] = &unk_1E7975B28;
  v4[4] = self;
  v2 = ac_unfair_lock_perform_with_result_0(&self->_longLivedRemoteAccountStoreSessionLock, v4);

  return v2;
}

id __52__ACAccountStore_longLivedRemoteAccountStoreSession__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[7])
  {
    v3 = [[ACRemoteAccountStoreSession alloc] initWithListenerEndpoint:*(*(a1 + 32) + 24)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    *(v4 + 56) = v3;

    v6 = *(a1 + 32);
    v7 = v6[7];
    v8 = [v6 effectiveBundleID];
    [v7 setEffectiveBundleID:v8];

    v2 = *(a1 + 32);
  }

  objc_initWeak(&location, v2);
  v9 = *(*(a1 + 32) + 72);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__ACAccountStore_longLivedRemoteAccountStoreSession__block_invoke_2;
  v12[3] = &unk_1E7975B00;
  objc_copyWeak(&v13, &location);
  [v9 scheduleExpiration:v12];
  v10 = *(*(a1 + 32) + 56);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v10;
}

void __52__ACAccountStore_longLivedRemoteAccountStoreSession__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v5 = __52__ACAccountStore_longLivedRemoteAccountStoreSession__block_invoke_3;
    v6 = &unk_1E7975AD8;
    v7 = WeakRetained;
    v3 = v4;
    os_unfair_lock_lock(v2 + 16);
    v5(v3);
    os_unfair_lock_unlock(v2 + 16);
  }
}

void __52__ACAccountStore_longLivedRemoteAccountStoreSession__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  *(v1 + 56) = 0;
}

- (void)setNotificationsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  [remoteAccountStoreSession setNotificationsEnabled:enabledCopy];

  longLivedRemoteAccountStoreSession = [(ACAccountStore *)self longLivedRemoteAccountStoreSession];
  [longLivedRemoteAccountStoreSession setNotificationsEnabled:enabledCopy];
}

- (id)accountWithIdentifier:(id)identifier error:(id *)error
{
  v57 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = _os_activity_create(&dword_1AC3CD000, "accounts/account-with-identifier-sync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v9 = _ACSignpostLogSystem(v8);
  v10 = _ACSignpostCreate(v9);
  v12 = v11;

  v14 = _ACSignpostLogSystem(v13);
  v15 = v14;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = identifierCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v10, "AccountWithIdentifierSync", "%@", &buf, 0xCu);
  }

  v17 = _ACSignpostLogSystem(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore accountWithIdentifier:error:];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__0;
  v55 = __Block_byref_object_dispose__0;
  v56 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__0;
  v41 = __Block_byref_object_dispose__0;
  v42 = 0;
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __46__ACAccountStore_accountWithIdentifier_error___block_invoke;
  v33[3] = &unk_1E7975B78;
  v19 = identifierCopy;
  v34 = v19;
  p_buf = &buf;
  v36 = &v37;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __46__ACAccountStore_accountWithIdentifier_error___block_invoke_66;
  v32[3] = &unk_1E7975BA0;
  v32[4] = self;
  v32[5] = &v37;
  ac_dispatch_remote_sync(remoteAccountStoreSession, v33, v32);

  [*(*(&buf + 1) + 40) _setAccountStore:self];
  if (error)
  {
    *error = v38[5];
  }

  Nanoseconds = _ACSignpostGetNanoseconds(v10, v12);
  v21 = _ACSignpostLogSystem(Nanoseconds);
  v22 = v21;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    v23 = *(*(&buf + 1) + 40);
    v24 = v38[5];
    if (*&v24 == 0.0)
    {
      *&v24 = COERCE_DOUBLE(&stru_1F210E1C8);
    }

    *v44 = 138412546;
    v45 = v23;
    v46 = 2112;
    v47 = *&v24;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v22, OS_SIGNPOST_INTERVAL_END, v10, "AccountWithIdentifierSync", "%@%@", v44, 0x16u);
  }

  v26 = _ACSignpostLogSystem(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v29 = *(*(&buf + 1) + 40);
    v30 = v38[5];
    *v44 = 134218754;
    v45 = v10;
    v46 = 2048;
    v47 = Nanoseconds / 1000000000.0;
    v48 = 2112;
    v49 = v29;
    if (v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = &stru_1F210E1C8;
    }

    v50 = 2112;
    v51 = v31;
    _os_log_debug_impl(&dword_1AC3CD000, v26, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AccountWithIdentifierSync %@%@", v44, 0x2Au);
  }

  v27 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  return v27;
}

uint64_t __46__ACAccountStore_accountWithIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2;
  v4[3] = &unk_1E7975B50;
  v5 = *(a1 + 40);
  return [a2 accountWithIdentifier:v2 handler:v4];
}

void __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _ACLogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v7;
}

uint64_t __46__ACAccountStore_accountWithIdentifier_error___block_invoke_66(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _connectionFailureError];

  return MEMORY[0x1EEE66BB8]();
}

- (void)accountWithIdentifier:(id)identifier completion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1AC3CD000, "accounts/account-with-identifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  if (completionCopy)
  {
    v10 = _ACSignpostLogSystem(v9);
    v11 = _ACSignpostCreate(v10);
    v13 = v12;

    v15 = _ACSignpostLogSystem(v14);
    v16 = v15;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 138412290;
      v34 = identifierCopy;
      _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "AccountWithIdentifier", "%@", buf, 0xCu);
    }

    v18 = _ACSignpostLogSystem(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [ACAccountStore accountWithIdentifier:completion:];
    }

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __51__ACAccountStore_accountWithIdentifier_completion___block_invoke;
    v28[3] = &unk_1E7975BF0;
    v28[4] = self;
    v30 = v11;
    v31 = v13;
    v29 = completionCopy;
    v19 = MEMORY[0x1AC5B3C70](v28);
    remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __51__ACAccountStore_accountWithIdentifier_completion___block_invoke_71;
    v24[3] = &unk_1E7975C40;
    v25 = identifierCopy;
    selfCopy = self;
    v27 = v19;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __51__ACAccountStore_accountWithIdentifier_completion___block_invoke_73;
    v22[3] = &unk_1E79754F0;
    v21 = v27;
    v22[4] = self;
    v23 = v21;
    ac_dispatch_remote(remoteAccountStoreSession, v24, v22);
  }

  os_activity_scope_leave(&state);
}

void __51__ACAccountStore_accountWithIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__ACAccountStore_accountWithIdentifier_completion___block_invoke_2;
  block[3] = &unk_1E7975BC8;
  v14 = *(a1 + 48);
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

uint64_t __51__ACAccountStore_accountWithIdentifier_completion___block_invoke_2(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  Nanoseconds = _ACSignpostGetNanoseconds(a1[7], a1[8]);
  v3 = _ACSignpostLogSystem(Nanoseconds);
  v4 = v3;
  v5 = a1[7];
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v6 = a1[4];
    v7 = a1[5];
    if (!v7)
    {
      v7 = &stru_1F210E1C8;
    }

    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = *&v7;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v4, OS_SIGNPOST_INTERVAL_END, v5, "AccountWithIdentifier", "%@%@", &v15, 0x16u);
  }

  v9 = _ACSignpostLogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = a1[7];
    v12 = a1[4];
    v13 = a1[5];
    v15 = 134218754;
    v16 = v11;
    v14 = &stru_1F210E1C8;
    v17 = 2048;
    v18 = Nanoseconds / 1000000000.0;
    v19 = 2112;
    v20 = v12;
    if (v13)
    {
      v14 = v13;
    }

    v21 = 2112;
    v22 = v14;
    _os_log_debug_impl(&dword_1AC3CD000, v9, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AccountWithIdentifier %@%@", &v15, 0x2Au);
  }

  return (*(a1[6] + 16))();
}

void __51__ACAccountStore_accountWithIdentifier_completion___block_invoke_71(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__ACAccountStore_accountWithIdentifier_completion___block_invoke_2_72;
  v5[3] = &unk_1E7975C18;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 accountWithIdentifier:v3 handler:v5];
}

void __51__ACAccountStore_accountWithIdentifier_completion___block_invoke_2_72(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = _ACLogSystem(a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  else
  {
    [a2 _setAccountStore:*(a1 + 32)];
  }

  (*(*(a1 + 40) + 16))();
}

void __51__ACAccountStore_accountWithIdentifier_completion___block_invoke_73(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _connectionFailureError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)cachedAccountWithIdentifier:(id)identifier completion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1AC3CD000, "accounts/cached-account-with-identifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v10 = _ACSignpostLogSystem(v9);
  v11 = _ACSignpostCreate(v10);
  v13 = v12;

  v15 = _ACSignpostLogSystem(v14);
  v16 = v15;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 138412290;
    v32 = identifierCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "CachedAccountWithIdentifier", "%@", buf, 0xCu);
  }

  v18 = _ACSignpostLogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore cachedAccountWithIdentifier:completion:];
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __57__ACAccountStore_cachedAccountWithIdentifier_completion___block_invoke;
  v26[3] = &unk_1E7975BF0;
  v26[4] = self;
  v28 = v11;
  v29 = v13;
  v19 = completionCopy;
  v27 = v19;
  v20 = MEMORY[0x1AC5B3C70](v26);
  v21 = self->_accountCache;
  objc_sync_enter(v21);
  v22 = [(NSMutableDictionary *)self->_accountCache objectForKeyedSubscript:identifierCopy];
  objc_sync_exit(v21);

  if (v22)
  {
    (v20)[2](v20, v22, 0);
  }

  else
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __57__ACAccountStore_cachedAccountWithIdentifier_completion___block_invoke_74;
    v23[3] = &unk_1E7975C68;
    v23[4] = self;
    v24 = identifierCopy;
    v25 = v20;
    [(ACAccountStore *)self accountWithIdentifier:v24 completion:v23];
  }

  os_activity_scope_leave(&state);
}

void __57__ACAccountStore_cachedAccountWithIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__ACAccountStore_cachedAccountWithIdentifier_completion___block_invoke_2;
  block[3] = &unk_1E7975BC8;
  v14 = *(a1 + 48);
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

uint64_t __57__ACAccountStore_cachedAccountWithIdentifier_completion___block_invoke_2(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  Nanoseconds = _ACSignpostGetNanoseconds(a1[7], a1[8]);
  v3 = _ACSignpostLogSystem(Nanoseconds);
  v4 = v3;
  v5 = a1[7];
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v6 = a1[4];
    v7 = a1[5];
    if (!v7)
    {
      v7 = &stru_1F210E1C8;
    }

    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = *&v7;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v4, OS_SIGNPOST_INTERVAL_END, v5, "CachedAccountWithIdentifier", "%@%@", &v15, 0x16u);
  }

  v9 = _ACSignpostLogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = a1[7];
    v12 = a1[4];
    v13 = a1[5];
    v15 = 134218754;
    v16 = v11;
    v14 = &stru_1F210E1C8;
    v17 = 2048;
    v18 = Nanoseconds / 1000000000.0;
    v19 = 2112;
    v20 = v12;
    if (v13)
    {
      v14 = v13;
    }

    v21 = 2112;
    v22 = v14;
    _os_log_debug_impl(&dword_1AC3CD000, v9, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: CachedAccountWithIdentifier %@%@", &v15, 0x2Au);
  }

  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

void __57__ACAccountStore_cachedAccountWithIdentifier_completion___block_invoke_74(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7 && !v5)
  {
    v6 = *(a1[4] + 16);
    objc_sync_enter(v6);
    [*(a1[4] + 16) setObject:v7 forKeyedSubscript:a1[5]];
    objc_sync_exit(v6);
  }

  (*(a1[6] + 16))();
}

- (id)accountTypeWithAccountTypeIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = _os_activity_create(&dword_1AC3CD000, "accounts/account-type-with-identifier-sync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__0;
  v29 = __Block_byref_object_dispose__0;
  _cache = [(ACAccountStore *)self _cache];
  v30 = [_cache cachedAccountTypeWithIdentifier:identifierCopy];

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  v9 = v26[5];
  if (!v9)
  {
    remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61__ACAccountStore_accountTypeWithAccountTypeIdentifier_error___block_invoke;
    v14[3] = &unk_1E7975CB8;
    v15 = identifierCopy;
    selfCopy = self;
    v17 = &v25;
    v18 = &v19;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61__ACAccountStore_accountTypeWithAccountTypeIdentifier_error___block_invoke_76;
    v13[3] = &unk_1E7975BA0;
    v13[4] = self;
    v13[5] = &v19;
    ac_dispatch_remote_sync(remoteAccountStoreSession, v14, v13);

    v9 = v26[5];
  }

  [v9 setAccountStore:self];
  if (error)
  {
    *error = v20[5];
  }

  v11 = v26[5];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  os_activity_scope_leave(&state);

  return v11;
}

uint64_t __61__ACAccountStore_accountTypeWithAccountTypeIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__ACAccountStore_accountTypeWithAccountTypeIdentifier_error___block_invoke_2;
  v4[3] = &unk_1E7975C90;
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  return [a2 accountTypeWithIdentifier:v2 handler:v4];
}

void __61__ACAccountStore_accountTypeWithAccountTypeIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = _ACLogSystem(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v10 = [*(a1 + 32) _cache];
    [v10 cacheAccountType:*(*(*(a1 + 40) + 8) + 40)];
  }

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
}

uint64_t __61__ACAccountStore_accountTypeWithAccountTypeIdentifier_error___block_invoke_76(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _connectionFailureError];

  return MEMORY[0x1EEE66BB8]();
}

- (void)accountTypeWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1AC3CD000, "accounts/account-type-with-identifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  if (completionCopy)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __55__ACAccountStore_accountTypeWithIdentifier_completion___block_invoke;
    v20[3] = &unk_1E7975CE0;
    v20[4] = self;
    v21 = completionCopy;
    v9 = MEMORY[0x1AC5B3C70](v20);
    _cache = [(ACAccountStore *)self _cache];
    v11 = [_cache cachedAccountTypeWithIdentifier:identifierCopy];

    if (v11)
    {
      [v11 setAccountStore:self];
      (v9)[2](v9, v11, 0);
    }

    else
    {
      remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __55__ACAccountStore_accountTypeWithIdentifier_completion___block_invoke_3;
      v15[3] = &unk_1E7975D30;
      v16 = identifierCopy;
      selfCopy = self;
      v18 = 0;
      v19 = v9;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __55__ACAccountStore_accountTypeWithIdentifier_completion___block_invoke_77;
      v13[3] = &unk_1E79754F0;
      v13[4] = self;
      v14 = v19;
      ac_dispatch_remote(remoteAccountStoreSession, v15, v13);
    }
  }

  os_activity_scope_leave(&state);
}

void __55__ACAccountStore_accountTypeWithIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__ACAccountStore_accountTypeWithIdentifier_completion___block_invoke_2;
  block[3] = &unk_1E7975478;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __55__ACAccountStore_accountTypeWithIdentifier_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__ACAccountStore_accountTypeWithIdentifier_completion___block_invoke_4;
  v6[3] = &unk_1E7975D08;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v5;
  v8 = *(a1 + 56);
  [a2 accountTypeWithIdentifier:v4 handler:v6];
}

void __55__ACAccountStore_accountTypeWithIdentifier_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = _ACLogSystem(a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  else
  {
    [a2 setAccountStore:*(a1 + 32)];
    v6 = [*(a1 + 32) _cache];
    [v6 cacheAccountType:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
}

void __55__ACAccountStore_accountTypeWithIdentifier_completion___block_invoke_77(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _connectionFailureError];
  (*(v1 + 16))(v1, 0, v2);
}

- (NSArray)accounts
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = _os_activity_create(&dword_1AC3CD000, "accounts/all-accounts-sync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v5 = _ACSignpostLogSystem(v4);
  v6 = _ACSignpostCreate(v5);
  v8 = v7;

  v10 = _ACSignpostLogSystem(v9);
  v11 = v10;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v6, "AllAccountsSync", &unk_1AC43804B, buf, 2u);
  }

  v13 = _ACSignpostLogSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore accounts];
  }

  *buf = 0;
  v34 = buf;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__0;
  v37 = __Block_byref_object_dispose__0;
  v38 = 0;
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __26__ACAccountStore_accounts__block_invoke;
  v32[3] = &unk_1E7975D80;
  v32[4] = buf;
  ac_dispatch_remote_sync(remoteAccountStoreSession, v32, &__block_literal_global_81);

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = *(v34 + 5);
  v16 = [v15 countByEnumeratingWithState:&v28 objects:v48 count:16];
  if (v16)
  {
    v17 = *v29;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v28 + 1) + 8 * i) _setAccountStore:{self, v28}];
      }

      v16 = [v15 countByEnumeratingWithState:&v28 objects:v48 count:16];
    }

    while (v16);
  }

  Nanoseconds = _ACSignpostGetNanoseconds(v6, v8);
  v20 = _ACSignpostLogSystem(Nanoseconds);
  v21 = v20;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    v22 = *(v34 + 5);
    *v40 = 138412546;
    v41 = v22;
    v42 = 2112;
    v43 = COERCE_DOUBLE(&stru_1F210E1C8);
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v21, OS_SIGNPOST_INTERVAL_END, v6, "AllAccountsSync", "%@%@", v40, 0x16u);
  }

  v24 = _ACSignpostLogSystem(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *v40 = 134218754;
    v27 = *(v34 + 5);
    v41 = v6;
    v42 = 2048;
    v43 = Nanoseconds / 1000000000.0;
    v44 = 2112;
    v45 = v27;
    v46 = 2112;
    v47 = &stru_1F210E1C8;
    _os_log_debug_impl(&dword_1AC3CD000, v24, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AllAccountsSync %@%@", v40, 0x2Au);
  }

  v25 = *(v34 + 5);
  _Block_object_dispose(buf, 8);

  os_activity_scope_leave(&state);

  return v25;
}

uint64_t __26__ACAccountStore_accounts__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __26__ACAccountStore_accounts__block_invoke_2;
  v3[3] = &unk_1E7975D58;
  v3[4] = *(a1 + 32);
  return [a2 accountsWithHandler:v3];
}

void __26__ACAccountStore_accounts__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = _ACLogSystem(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

void __26__ACAccountStore_accounts__block_invoke_79(uint64_t a1)
{
  v1 = _ACLogSystem(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __26__ACAccountStore_accounts__block_invoke_79_cold_1();
  }
}

- (NSArray)accountsWithAccountType:(ACAccountType *)accountType
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = accountType;
  v5 = _os_activity_create(&dword_1AC3CD000, "accounts/accounts-with-type-sync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  identifier = [(ACAccountType *)v4 identifier];
  v7 = [ACNotifyAccountCache suffixForAccountsForAccountType:identifier fetchOptions:1];

  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__0;
  v47 = __Block_byref_object_dispose__0;
  _cache = [(ACAccountStore *)self _cache];
  v48 = [_cache cachedAccountsForSuffix:v7];

  if (v44[5])
  {
    p_super = _ACLogSystem(v9);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
    {
      [(ACAccountType *)v4 identifier];
      objc_claimAutoreleasedReturnValue();
      [ACAccountStore accountsWithAccountType:];
    }
  }

  else
  {
    v11 = _ACSignpostLogSystem(v9);
    v12 = _ACSignpostCreate(v11);
    v14 = v13;

    v16 = _ACSignpostLogSystem(v15);
    v17 = v16;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 138412290;
      v52 = v4;
      _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v12, "AccountsWithTypeSync", "%@", buf, 0xCu);
    }

    v19 = _ACSignpostLogSystem(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [ACAccountStore accountsWithAccountType:];
    }

    remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __42__ACAccountStore_accountsWithAccountType___block_invoke;
    v38[3] = &unk_1E7975DF0;
    v42 = &v43;
    v39 = v4;
    selfCopy = self;
    v41 = v7;
    ac_dispatch_remote_sync(remoteAccountStoreSession, v38, &__block_literal_global_85);

    Nanoseconds = _ACSignpostGetNanoseconds(v12, v14);
    v22 = _ACSignpostLogSystem(Nanoseconds);
    v23 = v22;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      v24 = v44[5];
      *buf = 138412546;
      v52 = v24;
      v53 = 2112;
      v54 = COERCE_DOUBLE(&stru_1F210E1C8);
      _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v23, OS_SIGNPOST_INTERVAL_END, v12, "AccountsWithTypeSync", "%@%@", buf, 0x16u);
    }

    v26 = _ACSignpostLogSystem(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218754;
      v33 = v44[5];
      v52 = v12;
      v53 = 2048;
      v54 = Nanoseconds / 1000000000.0;
      v55 = 2112;
      v56 = v33;
      v57 = 2112;
      v58 = &stru_1F210E1C8;
      _os_log_debug_impl(&dword_1AC3CD000, v26, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AccountsWithTypeSync %@%@", buf, 0x2Au);
    }

    p_super = &v39->super;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v27 = v44[5];
  v28 = [v27 countByEnumeratingWithState:&v34 objects:v50 count:16];
  if (v28)
  {
    v29 = *v35;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v35 != v29)
        {
          objc_enumerationMutation(v27);
        }

        [*(*(&v34 + 1) + 8 * i) _setAccountStore:{self, v34}];
      }

      v28 = [v27 countByEnumeratingWithState:&v34 objects:v50 count:16];
    }

    while (v28);
  }

  v31 = v44[5];
  _Block_object_dispose(&v43, 8);

  os_activity_scope_leave(&state);

  return v31;
}

void __42__ACAccountStore_accountsWithAccountType___block_invoke(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__ACAccountStore_accountsWithAccountType___block_invoke_2;
  v6[3] = &unk_1E7975DC8;
  v3 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  v5 = *(a1 + 48);
  v4 = v5;
  v7 = v5;
  [a2 accountsWithAccountType:v3 handler:v6];
}

void __42__ACAccountStore_accountsWithAccountType___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = _ACLogSystem(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __42__ACAccountStore_accountsWithAccountType___block_invoke_2_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    v10 = [*(a1 + 32) _cache];
    [v10 cacheAccounts:v6 forSuffix:*(a1 + 40)];
  }
}

void __42__ACAccountStore_accountsWithAccountType___block_invoke_83(uint64_t a1)
{
  v1 = _ACLogSystem(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __26__ACAccountStore_accounts__block_invoke_79_cold_1();
  }
}

- (id)accountsWithAccountType:(id)type options:(unint64_t)options error:(id *)error
{
  v75 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v9 = _os_activity_create(&dword_1AC3CD000, "accounts/accounts-with-type-with-options-sync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  identifier = [typeCopy identifier];
  v11 = [ACNotifyAccountCache suffixForAccountsForAccountType:identifier fetchOptions:options];

  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__0;
  v63 = __Block_byref_object_dispose__0;
  _cache = [(ACAccountStore *)self _cache];
  v64 = [_cache cachedAccountsForSuffix:v11];

  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__0;
  v57 = __Block_byref_object_dispose__0;
  v58 = 0;
  if (v60[5])
  {
    v14 = _ACLogSystem(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [typeCopy identifier];
      objc_claimAutoreleasedReturnValue();
      [ACAccountStore accountsWithAccountType:];
    }
  }

  else
  {
    v15 = _ACSignpostLogSystem(v13);
    v16 = _ACSignpostCreate(v15);
    v18 = v17;

    v20 = _ACSignpostLogSystem(v19);
    v21 = v20;
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 138412546;
      v68 = typeCopy;
      v69 = 2048;
      optionsCopy = options;
      _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v16, "AccountsWithTypeSync", "%@: %lu", buf, 0x16u);
    }

    v23 = _ACSignpostLogSystem(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v68 = v16;
      v69 = 2112;
      optionsCopy = typeCopy;
      v71 = 2048;
      optionsCopy2 = options;
      _os_log_debug_impl(&dword_1AC3CD000, v23, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: AccountsWithTypeSync %@: %lu", buf, 0x20u);
    }

    remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __56__ACAccountStore_accountsWithAccountType_options_error___block_invoke;
    v46[3] = &unk_1E7975E40;
    optionsCopy3 = options;
    v50 = &v53;
    v51 = &v59;
    v47 = typeCopy;
    selfCopy = self;
    v49 = v11;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __56__ACAccountStore_accountsWithAccountType_options_error___block_invoke_86;
    v45[3] = &unk_1E7975BA0;
    v45[4] = self;
    v45[5] = &v53;
    ac_dispatch_remote_sync(remoteAccountStoreSession, v46, v45);

    Nanoseconds = _ACSignpostGetNanoseconds(v16, v18);
    v26 = _ACSignpostLogSystem(Nanoseconds);
    v27 = v26;
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      v28 = v60[5];
      v29 = v54[5];
      if (!v29)
      {
        v29 = &stru_1F210E1C8;
      }

      *buf = 138412546;
      v68 = v28;
      v69 = 2112;
      optionsCopy = v29;
      _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v27, OS_SIGNPOST_INTERVAL_END, v16, "AccountsWithTypeSync", "%@%@", buf, 0x16u);
    }

    v31 = _ACSignpostLogSystem(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v38 = v60[5];
      v39 = v54[5];
      *buf = 134218754;
      v68 = v16;
      v69 = 2048;
      *&optionsCopy = Nanoseconds / 1000000000.0;
      v71 = 2112;
      optionsCopy2 = v38;
      if (v39)
      {
        v40 = v39;
      }

      else
      {
        v40 = &stru_1F210E1C8;
      }

      v73 = 2112;
      v74 = v40;
      _os_log_debug_impl(&dword_1AC3CD000, v31, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AccountsWithTypeSync %@%@", buf, 0x2Au);
    }

    v14 = v47;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v32 = v60[5];
  v33 = [v32 countByEnumeratingWithState:&v41 objects:v66 count:16];
  if (v33)
  {
    v34 = *v42;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v42 != v34)
        {
          objc_enumerationMutation(v32);
        }

        [*(*(&v41 + 1) + 8 * i) _setAccountStore:{self, v41}];
      }

      v33 = [v32 countByEnumeratingWithState:&v41 objects:v66 count:16];
    }

    while (v33);
  }

  if (error)
  {
    *error = v54[5];
  }

  v36 = v60[5];
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v59, 8);
  os_activity_scope_leave(&state);

  return v36;
}

void __56__ACAccountStore_accountsWithAccountType_options_error___block_invoke(uint64_t a1, void *a2)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__ACAccountStore_accountsWithAccountType_options_error___block_invoke_2;
  v8[3] = &unk_1E7975E18;
  v3 = *(a1 + 72);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v10 = *(a1 + 64);
  v8[4] = v4;
  v7 = *(a1 + 48);
  v6 = v7;
  v9 = v7;
  [a2 accountsWithAccountType:v5 options:v3 completion:v8];
}

void __56__ACAccountStore_accountsWithAccountType_options_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = _ACLogSystem(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __42__ACAccountStore_accountsWithAccountType___block_invoke_2_cold_1();
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    v10 = [*(a1 + 32) _cache];
    [v10 cacheAccounts:v6 forSuffix:*(a1 + 40)];
  }
}

uint64_t __56__ACAccountStore_accountsWithAccountType_options_error___block_invoke_86(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _connectionFailureError];

  return MEMORY[0x1EEE66BB8]();
}

- (void)accountsWithAccountType:(id)type completion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1AC3CD000, "accounts/accounts-with-type", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  if (completionCopy)
  {
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __53__ACAccountStore_accountsWithAccountType_completion___block_invoke;
    v37[3] = &unk_1E79754A0;
    v37[4] = self;
    v38 = completionCopy;
    v9 = MEMORY[0x1AC5B3C70](v37);
    identifier = [typeCopy identifier];
    v11 = [ACNotifyAccountCache suffixForAccountsForAccountType:identifier fetchOptions:1];

    _cache = [(ACAccountStore *)self _cache];
    v13 = [_cache cachedAccountsForSuffix:v11];

    if (v13)
    {
      v15 = _ACLogSystem(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [typeCopy identifier];
        objc_claimAutoreleasedReturnValue();
        [ACAccountStore accountsWithAccountType:completion:];
      }

      (v9)[2](v9, v13, 0);
    }

    else
    {
      v16 = _ACSignpostLogSystem(v14);
      v17 = _ACSignpostCreate(v16);
      v19 = v18;

      v21 = _ACSignpostLogSystem(v20);
      v22 = v21;
      if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
      {
        *buf = 138412290;
        v41 = typeCopy;
        _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v17, "AccountsWithType", "%@", buf, 0xCu);
      }

      v24 = _ACSignpostLogSystem(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [ACAccountStore accountsWithAccountType:completion:];
      }

      remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __53__ACAccountStore_accountsWithAccountType_completion___block_invoke_87;
      v30[3] = &unk_1E7975E90;
      v31 = typeCopy;
      selfCopy = self;
      v33 = v11;
      v35 = v17;
      v36 = v19;
      v34 = v9;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __53__ACAccountStore_accountsWithAccountType_completion___block_invoke_89;
      v26[3] = &unk_1E7975EB8;
      v28 = v17;
      v29 = v19;
      v26[4] = self;
      v27 = v34;
      ac_dispatch_remote(remoteAccountStoreSession, v30, v26);
    }
  }

  os_activity_scope_leave(&state);
}

void __53__ACAccountStore_accountsWithAccountType_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v19 + 1) + 8 * v10++) _setAccountStore:*(a1 + 32)];
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v11 = *(*(a1 + 32) + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__ACAccountStore_accountsWithAccountType_completion___block_invoke_2;
  block[3] = &unk_1E7975478;
  v12 = *(a1 + 40);
  v17 = v6;
  v18 = v12;
  v16 = v5;
  v13 = v6;
  v14 = v5;
  dispatch_async(v11, block);
}

void __53__ACAccountStore_accountsWithAccountType_completion___block_invoke_87(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__ACAccountStore_accountsWithAccountType_completion___block_invoke_2_88;
  v6[3] = &unk_1E7975E68;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v5;
  v9 = *(a1 + 64);
  v8 = *(a1 + 56);
  [a2 accountsWithAccountType:v4 handler:v6];
}

void __53__ACAccountStore_accountsWithAccountType_completion___block_invoke_2_88(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _ACLogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  v9 = [*(a1 + 32) _cache];
  [v9 cacheAccounts:v5 forSuffix:*(a1 + 40)];

  Nanoseconds = _ACSignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
  v11 = _ACSignpostLogSystem(Nanoseconds);
  v12 = v11;
  v13 = *(a1 + 56);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v14 = &stru_1F210E1C8;
    if (v7)
    {
      v14 = v7;
    }

    v19 = 138412546;
    v20 = v5;
    v21 = 2112;
    v22 = *&v14;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v12, OS_SIGNPOST_INTERVAL_END, v13, "AccountsWithType", "%@%@", &v19, 0x16u);
  }

  v16 = _ACSignpostLogSystem(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 56);
    v19 = 134218754;
    v20 = v17;
    v18 = &stru_1F210E1C8;
    v21 = 2048;
    v22 = Nanoseconds / 1000000000.0;
    v23 = 2112;
    v24 = v5;
    if (v7)
    {
      v18 = v7;
    }

    v25 = 2112;
    v26 = v18;
    _os_log_debug_impl(&dword_1AC3CD000, v16, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AccountsWithType %@%@", &v19, 0x2Au);
  }

  (*(*(a1 + 48) + 16))();
}

void __53__ACAccountStore_accountsWithAccountType_completion___block_invoke_89(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  Nanoseconds = _ACSignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v5 = _ACSignpostLogSystem(Nanoseconds);
  v6 = v5;
  v7 = *(a1 + 48);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = &stru_1F210E1C8;
    if (v3)
    {
      v8 = v3;
    }

    v15 = 138412546;
    v16 = 0;
    v17 = 2112;
    v18 = *&v8;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v6, OS_SIGNPOST_INTERVAL_END, v7, "AccountsWithType", "%@%@", &v15, 0x16u);
  }

  v10 = _ACSignpostLogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 48);
    v15 = 134218754;
    v16 = v13;
    v14 = &stru_1F210E1C8;
    v17 = 2048;
    v18 = Nanoseconds / 1000000000.0;
    v19 = 2112;
    v20 = 0;
    if (v3)
    {
      v14 = v3;
    }

    v21 = 2112;
    v22 = v14;
    _os_log_debug_impl(&dword_1AC3CD000, v10, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AccountsWithType %@%@", &v15, 0x2Au);
  }

  v11 = *(a1 + 40);
  v12 = [*(a1 + 32) _connectionFailureError];
  (*(v11 + 16))(v11, 0, v12);
}

- (void)accountsWithAccountType:(id)type options:(unint64_t)options completion:(id)completion
{
  v50 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  completionCopy = completion;
  v10 = _os_activity_create(&dword_1AC3CD000, "accounts/accounts-with-type-with-options", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  if (completionCopy)
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __61__ACAccountStore_accountsWithAccountType_options_completion___block_invoke;
    v41[3] = &unk_1E79754A0;
    v41[4] = self;
    v42 = completionCopy;
    v11 = MEMORY[0x1AC5B3C70](v41);
    identifier = [typeCopy identifier];
    v13 = [ACNotifyAccountCache suffixForAccountsForAccountType:identifier fetchOptions:options];

    _cache = [(ACAccountStore *)self _cache];
    v15 = [_cache cachedAccountsForSuffix:v13];

    if (v15)
    {
      v17 = _ACLogSystem(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [typeCopy identifier];
        objc_claimAutoreleasedReturnValue();
        [ACAccountStore accountsWithAccountType:completion:];
      }

      (v11)[2](v11, v15, 0);
    }

    else
    {
      v18 = _ACSignpostLogSystem(v16);
      v19 = _ACSignpostCreate(v18);
      v28 = v20;
      v21 = v19;

      v23 = _ACSignpostLogSystem(v22);
      v24 = v23;
      if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        *buf = 138412546;
        v45 = typeCopy;
        v46 = 2048;
        optionsCopy = options;
        _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v21, "AccountsWithType", "%@: %lu", buf, 0x16u);
      }

      v26 = _ACSignpostLogSystem(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218498;
        v45 = v21;
        v46 = 2112;
        optionsCopy = typeCopy;
        v48 = 2048;
        optionsCopy2 = options;
        _os_log_debug_impl(&dword_1AC3CD000, v26, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: AccountsWithType %@: %lu", buf, 0x20u);
      }

      remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __61__ACAccountStore_accountsWithAccountType_options_completion___block_invoke_90;
      v33[3] = &unk_1E7975EE0;
      optionsCopy3 = options;
      v34 = typeCopy;
      selfCopy = self;
      v36 = v13;
      v39 = v21;
      v40 = v28;
      v37 = v11;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __61__ACAccountStore_accountsWithAccountType_options_completion___block_invoke_92;
      v29[3] = &unk_1E7975EB8;
      v31 = v21;
      v32 = v28;
      v29[4] = self;
      v30 = v37;
      ac_dispatch_remote(remoteAccountStoreSession, v33, v29);
    }
  }

  os_activity_scope_leave(&state);
}

void __61__ACAccountStore_accountsWithAccountType_options_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v19 + 1) + 8 * v10++) _setAccountStore:*(a1 + 32)];
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v11 = *(*(a1 + 32) + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__ACAccountStore_accountsWithAccountType_options_completion___block_invoke_2;
  block[3] = &unk_1E7975478;
  v12 = *(a1 + 40);
  v17 = v6;
  v18 = v12;
  v16 = v5;
  v13 = v6;
  v14 = v5;
  dispatch_async(v11, block);
}

void __61__ACAccountStore_accountsWithAccountType_options_completion___block_invoke_90(uint64_t a1, void *a2)
{
  v4 = *(a1 + 64);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__ACAccountStore_accountsWithAccountType_options_completion___block_invoke_2_91;
  v7[3] = &unk_1E7975E68;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7[4] = *(a1 + 40);
  v8 = v6;
  v10 = *(a1 + 72);
  v9 = *(a1 + 56);
  [a2 accountsWithAccountType:v5 options:v4 completion:v7];
}

void __61__ACAccountStore_accountsWithAccountType_options_completion___block_invoke_2_91(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _ACLogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  v9 = [*(a1 + 32) _cache];
  [v9 cacheAccounts:v5 forSuffix:*(a1 + 40)];

  Nanoseconds = _ACSignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
  v11 = _ACSignpostLogSystem(Nanoseconds);
  v12 = v11;
  v13 = *(a1 + 56);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v14 = &stru_1F210E1C8;
    if (v7)
    {
      v14 = v7;
    }

    v19 = 138412546;
    v20 = v5;
    v21 = 2112;
    v22 = *&v14;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v12, OS_SIGNPOST_INTERVAL_END, v13, "AccountsWithType", "%@%@", &v19, 0x16u);
  }

  v16 = _ACSignpostLogSystem(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 56);
    v19 = 134218754;
    v20 = v17;
    v18 = &stru_1F210E1C8;
    v21 = 2048;
    v22 = Nanoseconds / 1000000000.0;
    v23 = 2112;
    v24 = v5;
    if (v7)
    {
      v18 = v7;
    }

    v25 = 2112;
    v26 = v18;
    _os_log_debug_impl(&dword_1AC3CD000, v16, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AccountsWithType %@%@", &v19, 0x2Au);
  }

  (*(*(a1 + 48) + 16))();
}

void __61__ACAccountStore_accountsWithAccountType_options_completion___block_invoke_92(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  Nanoseconds = _ACSignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v5 = _ACSignpostLogSystem(Nanoseconds);
  v6 = v5;
  v7 = *(a1 + 48);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = &stru_1F210E1C8;
    if (v3)
    {
      v8 = v3;
    }

    v15 = 138412546;
    v16 = 0;
    v17 = 2112;
    v18 = *&v8;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v6, OS_SIGNPOST_INTERVAL_END, v7, "AccountsWithType", "%@%@", &v15, 0x16u);
  }

  v10 = _ACSignpostLogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 48);
    v15 = 134218754;
    v16 = v13;
    v14 = &stru_1F210E1C8;
    v17 = 2048;
    v18 = Nanoseconds / 1000000000.0;
    v19 = 2112;
    v20 = 0;
    if (v3)
    {
      v14 = v3;
    }

    v21 = 2112;
    v22 = v14;
    _os_log_debug_impl(&dword_1AC3CD000, v10, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AccountsWithType %@%@", &v15, 0x2Au);
  }

  v11 = *(a1 + 40);
  v12 = [*(a1 + 32) _connectionFailureError];
  (*(v11 + 16))(v11, 0, v12);
}

- (void)accountsWithAccountTypeIdentifiers:(id)identifiers preloadedProperties:(id)properties completion:(id)completion
{
  v50 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  propertiesCopy = properties;
  completionCopy = completion;
  v11 = _os_activity_create(&dword_1AC3CD000, "accounts/accounts-with-types", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  if (completionCopy)
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __84__ACAccountStore_accountsWithAccountTypeIdentifiers_preloadedProperties_completion___block_invoke;
    v41[3] = &unk_1E79754A0;
    v41[4] = self;
    v42 = completionCopy;
    v28 = MEMORY[0x1AC5B3C70](v41);
    v12 = [identifiersCopy count];
    if (v12 == 1 && (v12 = [propertiesCopy count]) == 0)
    {
      firstObject = [identifiersCopy firstObject];
      v13 = [ACNotifyAccountCache suffixForAccountsForAccountType:firstObject fetchOptions:1];

      _cache = [(ACAccountStore *)self _cache];
      v24 = [_cache cachedAccountsForSuffix:v13];

      if (v24)
      {
        v27 = _ACLogSystem(v12);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          [identifiersCopy firstObject];
          objc_claimAutoreleasedReturnValue();
          [ACAccountStore accountsWithAccountType:completion:];
        }

        (v28)[2](v28, v24, 0);
        goto LABEL_11;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = _ACSignpostLogSystem(v12);
    v15 = _ACSignpostCreate(v14);
    v17 = v16;

    v19 = _ACSignpostLogSystem(v18);
    v20 = v19;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 138412546;
      v45 = identifiersCopy;
      v46 = 2112;
      v47 = propertiesCopy;
      _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v15, "AccountsWithTypesWithProperties", "%@: %@", buf, 0x16u);
    }

    v22 = _ACSignpostLogSystem(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v45 = v15;
      v46 = 2112;
      v47 = identifiersCopy;
      v48 = 2112;
      v49 = propertiesCopy;
      _os_log_debug_impl(&dword_1AC3CD000, v22, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: AccountsWithTypesWithProperties %@: %@", buf, 0x20u);
    }

    remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __84__ACAccountStore_accountsWithAccountTypeIdentifiers_preloadedProperties_completion___block_invoke_93;
    v33[3] = &unk_1E7975F08;
    v34 = identifiersCopy;
    v35 = propertiesCopy;
    v13 = v13;
    v36 = v13;
    selfCopy = self;
    v39 = v15;
    v40 = v17;
    v38 = v28;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __84__ACAccountStore_accountsWithAccountTypeIdentifiers_preloadedProperties_completion___block_invoke_95;
    v29[3] = &unk_1E7975EB8;
    v31 = v15;
    v32 = v17;
    v29[4] = self;
    v30 = v38;
    ac_dispatch_remote(remoteAccountStoreSession, v33, v29);

    v24 = 0;
LABEL_11:
  }

  os_activity_scope_leave(&state);
}

void __84__ACAccountStore_accountsWithAccountTypeIdentifiers_preloadedProperties_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v19 + 1) + 8 * v10++) _setAccountStore:*(a1 + 32)];
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v11 = *(*(a1 + 32) + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__ACAccountStore_accountsWithAccountTypeIdentifiers_preloadedProperties_completion___block_invoke_2;
  block[3] = &unk_1E7975478;
  v12 = *(a1 + 40);
  v17 = v6;
  v18 = v12;
  v16 = v5;
  v13 = v6;
  v14 = v5;
  dispatch_async(v11, block);
}

void __84__ACAccountStore_accountsWithAccountTypeIdentifiers_preloadedProperties_completion___block_invoke_93(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__ACAccountStore_accountsWithAccountTypeIdentifiers_preloadedProperties_completion___block_invoke_2_94;
  v9[3] = &unk_1E7975E68;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v10 = v6;
  v11 = v7;
  v13 = *(a1 + 72);
  v12 = v8;
  [a2 accountsWithAccountTypeIdentifiers:v4 preloadedProperties:v5 completion:v9];
}

void __84__ACAccountStore_accountsWithAccountTypeIdentifiers_preloadedProperties_completion___block_invoke_2_94(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _ACLogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  if (*(a1 + 32))
  {
    v9 = [*(a1 + 40) _cache];
    [v9 cacheAccounts:v5 forSuffix:*(a1 + 32)];
  }

  Nanoseconds = _ACSignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
  v11 = _ACSignpostLogSystem(Nanoseconds);
  v12 = v11;
  v13 = *(a1 + 56);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v14 = &stru_1F210E1C8;
    if (v7)
    {
      v14 = v7;
    }

    v20 = 138412546;
    v21 = v5;
    v22 = 2112;
    v23 = *&v14;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v12, OS_SIGNPOST_INTERVAL_END, v13, "AccountsWithTypesWithProperties", "%@%@", &v20, 0x16u);
  }

  v16 = _ACSignpostLogSystem(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 56);
    v20 = 134218754;
    v21 = v18;
    v19 = &stru_1F210E1C8;
    v22 = 2048;
    v23 = Nanoseconds / 1000000000.0;
    v24 = 2112;
    v25 = v5;
    if (v7)
    {
      v19 = v7;
    }

    v26 = 2112;
    v27 = v19;
    _os_log_debug_impl(&dword_1AC3CD000, v16, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AccountsWithTypesWithProperties %@%@", &v20, 0x2Au);
  }

  if (v5 | v7)
  {
    v17 = v5;
  }

  else
  {
    v17 = MEMORY[0x1E695E0F0];
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v17, v7);
}

void __84__ACAccountStore_accountsWithAccountTypeIdentifiers_preloadedProperties_completion___block_invoke_95(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  Nanoseconds = _ACSignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v5 = _ACSignpostLogSystem(Nanoseconds);
  v6 = v5;
  v7 = *(a1 + 48);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = &stru_1F210E1C8;
    if (v3)
    {
      v8 = v3;
    }

    v15 = 138412546;
    v16 = 0;
    v17 = 2112;
    v18 = *&v8;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v6, OS_SIGNPOST_INTERVAL_END, v7, "AccountsWithTypesWithProperties", "%@%@", &v15, 0x16u);
  }

  v10 = _ACSignpostLogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 48);
    v15 = 134218754;
    v16 = v13;
    v14 = &stru_1F210E1C8;
    v17 = 2048;
    v18 = Nanoseconds / 1000000000.0;
    v19 = 2112;
    v20 = 0;
    if (v3)
    {
      v14 = v3;
    }

    v21 = 2112;
    v22 = v14;
    _os_log_debug_impl(&dword_1AC3CD000, v10, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AccountsWithTypesWithProperties %@%@", &v15, 0x2Au);
  }

  v11 = *(a1 + 40);
  v12 = [*(a1 + 32) _connectionFailureError];
  (*(v11 + 16))(v11, 0, v12);
}

- (id)accountsWithAccountTypeIdentifiers:(id)identifiers preloadedProperties:(id)properties error:(id *)error
{
  v78 = *MEMORY[0x1E69E9840];
  *&v8 = COERCE_DOUBLE(identifiers);
  *&v43 = COERCE_DOUBLE(properties);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v42 = _os_activity_create(&dword_1AC3CD000, "accounts/accounts-with-types-sync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v42, &state);
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__0;
  v66 = __Block_byref_object_dispose__0;
  v67 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__0;
  v60 = __Block_byref_object_dispose__0;
  v61 = 0;
  v9 = [(__CFString *)v8 count];
  if (v9 == 1 && (v9 = [(__CFString *)v43 count]) == 0)
  {
    firstObject = [(__CFString *)v8 firstObject];
    v10 = [ACNotifyAccountCache suffixForAccountsForAccountType:firstObject fetchOptions:1];

    _cache = [(ACAccountStore *)self _cache];
    v37 = [_cache cachedAccountsForSuffix:v10];
    v38 = v63[5];
    v63[5] = v37;
  }

  else
  {
    v10 = 0;
  }

  if (v63[5])
  {
    v11 = _ACLogSystem(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(__CFString *)v8 firstObject];
      objc_claimAutoreleasedReturnValue();
      [ACAccountStore accountsWithAccountType:];
    }
  }

  else
  {
    v12 = _ACSignpostLogSystem(v9);
    v13 = _ACSignpostCreate(v12);
    v15 = v14;

    v17 = _ACSignpostLogSystem(v16);
    v18 = v17;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 138412546;
      v71 = v8;
      v72 = 2112;
      v73 = *&v43;
      _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v13, "AccountsWithTypesWithPropertiesSync", "%@: %@", buf, 0x16u);
    }

    v20 = _ACSignpostLogSystem(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v71 = v13;
      v72 = 2112;
      v73 = *&v8;
      v74 = 2112;
      v75 = v43;
      _os_log_debug_impl(&dword_1AC3CD000, v20, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: AccountsWithTypesWithPropertiesSync %@: %@", buf, 0x20u);
    }

    remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __79__ACAccountStore_accountsWithAccountTypeIdentifiers_preloadedProperties_error___block_invoke;
    v49[3] = &unk_1E7975F30;
    v50 = v8;
    v51 = v43;
    v54 = &v56;
    v55 = &v62;
    v52 = v10;
    selfCopy = self;
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __79__ACAccountStore_accountsWithAccountTypeIdentifiers_preloadedProperties_error___block_invoke_96;
    v48[3] = &unk_1E7975F58;
    v48[5] = &v62;
    v48[6] = &v56;
    v48[4] = self;
    ac_dispatch_remote_sync(remoteAccountStoreSession, v49, v48);

    Nanoseconds = _ACSignpostGetNanoseconds(v13, v15);
    v23 = _ACSignpostLogSystem(Nanoseconds);
    v24 = v23;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      v25 = v63[5];
      v26 = v57[5];
      if (*&v26 == 0.0)
      {
        *&v26 = COERCE_DOUBLE(&stru_1F210E1C8);
      }

      *buf = 138412546;
      v71 = v25;
      v72 = 2112;
      v73 = *&v26;
      _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v24, OS_SIGNPOST_INTERVAL_END, v13, "AccountsWithTypesWithPropertiesSync", "%@%@", buf, 0x16u);
    }

    v28 = _ACSignpostLogSystem(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v39 = v63[5];
      v40 = v57[5];
      *buf = 134218754;
      v71 = v13;
      v72 = 2048;
      v73 = Nanoseconds / 1000000000.0;
      v74 = 2112;
      v75 = v39;
      if (v40)
      {
        v41 = v40;
      }

      else
      {
        v41 = &stru_1F210E1C8;
      }

      v76 = 2112;
      v77 = v41;
      _os_log_debug_impl(&dword_1AC3CD000, v28, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AccountsWithTypesWithPropertiesSync %@%@", buf, 0x2Au);
    }

    v11 = v50;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v29 = v63[5];
  v30 = [v29 countByEnumeratingWithState:&v44 objects:v69 count:16];
  if (v30)
  {
    v31 = *v45;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v45 != v31)
        {
          objc_enumerationMutation(v29);
        }

        [*(*(&v44 + 1) + 8 * i) _setAccountStore:{self, v42}];
      }

      v30 = [v29 countByEnumeratingWithState:&v44 objects:v69 count:16];
    }

    while (v30);
  }

  if (error)
  {
    *error = v57[5];
  }

  v33 = v63[5];

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v62, 8);

  os_activity_scope_leave(&state);

  return v33;
}

void __79__ACAccountStore_accountsWithAccountTypeIdentifiers_preloadedProperties_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__ACAccountStore_accountsWithAccountTypeIdentifiers_preloadedProperties_error___block_invoke_2;
  v8[3] = &unk_1E7975E18;
  v11 = *(a1 + 64);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9 = v6;
  v10 = v7;
  [a2 accountsWithAccountTypeIdentifiers:v4 preloadedProperties:v5 completion:v8];
}

void __79__ACAccountStore_accountsWithAccountTypeIdentifiers_preloadedProperties_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _ACLogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  if (v5 | v7)
  {
    v9 = v5;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v9);
  if (*(a1 + 32))
  {
    v10 = [*(a1 + 40) _cache];
    [v10 cacheAccounts:v5 forSuffix:*(a1 + 32)];
  }
}

uint64_t __79__ACAccountStore_accountsWithAccountTypeIdentifiers_preloadedProperties_error___block_invoke_96(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _connectionFailureError];

  return MEMORY[0x1EEE66BB8]();
}

- (void)accountsOnPairedDeviceWithAccountType:(id)type completion:(id)completion
{
  v6 = MEMORY[0x1E695DFD8];
  completionCopy = completion;
  identifier = [type identifier];
  v8 = [v6 setWithObject:identifier];
  [(ACAccountStore *)self accountsOnPairedDeviceWithAccountTypes:v8 withOptions:0 completion:completionCopy];
}

- (void)accountsOnPairedDeviceWithAccountTypes:(id)types withOptions:(id)options completion:(id)completion
{
  v43 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  optionsCopy = options;
  completionCopy = completion;
  v11 = _os_activity_create(&dword_1AC3CD000, "accounts/accounts-on-paired-device-with-types", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  if (completionCopy)
  {
    v13 = _ACSignpostLogSystem(v12);
    v14 = _ACSignpostCreate(v13);
    v16 = v15;

    v18 = _ACSignpostLogSystem(v17);
    v19 = v18;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 138412546;
      v38 = typesCopy;
      v39 = 2112;
      v40 = optionsCopy;
      _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v14, "AccountsOnPairedDeviceWithTypes", "%@ (options: %@)", buf, 0x16u);
    }

    v21 = _ACSignpostLogSystem(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v38 = v14;
      v39 = 2112;
      v40 = typesCopy;
      v41 = 2112;
      v42 = optionsCopy;
      _os_log_debug_impl(&dword_1AC3CD000, v21, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: AccountsOnPairedDeviceWithTypes %@ (options: %@)", buf, 0x20u);
    }

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __80__ACAccountStore_accountsOnPairedDeviceWithAccountTypes_withOptions_completion___block_invoke;
    v32[3] = &unk_1E7975F80;
    v32[4] = self;
    v34 = v14;
    v35 = v16;
    v33 = completionCopy;
    v22 = MEMORY[0x1AC5B3C70](v32);
    remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __80__ACAccountStore_accountsOnPairedDeviceWithAccountTypes_withOptions_completion___block_invoke_98;
    v27[3] = &unk_1E7975D30;
    v28 = typesCopy;
    v29 = optionsCopy;
    selfCopy = self;
    v31 = v22;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __80__ACAccountStore_accountsOnPairedDeviceWithAccountTypes_withOptions_completion___block_invoke_100;
    v25[3] = &unk_1E79754F0;
    v24 = v31;
    v25[4] = self;
    v26 = v24;
    ac_dispatch_remote(remoteAccountStoreSession, v27, v25);
  }

  os_activity_scope_leave(&state);
}

void __80__ACAccountStore_accountsOnPairedDeviceWithAccountTypes_withOptions_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__ACAccountStore_accountsOnPairedDeviceWithAccountTypes_withOptions_completion___block_invoke_2;
  block[3] = &unk_1E7975BC8;
  v14 = *(a1 + 48);
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

uint64_t __80__ACAccountStore_accountsOnPairedDeviceWithAccountTypes_withOptions_completion___block_invoke_2(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  Nanoseconds = _ACSignpostGetNanoseconds(a1[7], a1[8]);
  v3 = _ACSignpostLogSystem(Nanoseconds);
  v4 = v3;
  v5 = a1[7];
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v6 = a1[4];
    v7 = a1[5];
    if (!v7)
    {
      v7 = &stru_1F210E1C8;
    }

    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = *&v7;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v4, OS_SIGNPOST_INTERVAL_END, v5, "AccountsOnPairedDeviceWithTypes", "%@%@", &v15, 0x16u);
  }

  v9 = _ACSignpostLogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = a1[7];
    v12 = a1[4];
    v13 = a1[5];
    v15 = 134218754;
    v16 = v11;
    v14 = &stru_1F210E1C8;
    v17 = 2048;
    v18 = Nanoseconds / 1000000000.0;
    v19 = 2112;
    v20 = v12;
    if (v13)
    {
      v14 = v13;
    }

    v21 = 2112;
    v22 = v14;
    _os_log_debug_impl(&dword_1AC3CD000, v9, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AccountsOnPairedDeviceWithTypes %@%@", &v15, 0x2Au);
  }

  return (*(a1[6] + 16))();
}

void __80__ACAccountStore_accountsOnPairedDeviceWithAccountTypes_withOptions_completion___block_invoke_98(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__ACAccountStore_accountsOnPairedDeviceWithAccountTypes_withOptions_completion___block_invoke_2_99;
  v6[3] = &unk_1E79754A0;
  v5 = a1[7];
  v6[4] = a1[6];
  v7 = v5;
  [a2 accountsOnPairedDeviceWithAccountTypes:v3 withOptions:v4 handler:v6];
}

void __80__ACAccountStore_accountsOnPairedDeviceWithAccountTypes_withOptions_completion___block_invoke_2_99(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _ACLogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v9 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v13 + 1) + 8 * i) _setAccountStore:*(a1 + 32)];
        }

        v10 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __80__ACAccountStore_accountsOnPairedDeviceWithAccountTypes_withOptions_completion___block_invoke_100(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _connectionFailureError];
  (*(v1 + 16))(v1, 0, v2);
}

- (id)allDataclasses
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = _os_activity_create(&dword_1AC3CD000, "accounts/all-dataclasses", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v5 = _ACSignpostLogSystem(v4);
  v6 = _ACSignpostCreate(v5);
  v8 = v7;

  v10 = _ACSignpostLogSystem(v9);
  v11 = v10;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v6, "AllDataclasses", &unk_1AC43804B, buf, 2u);
  }

  v13 = _ACSignpostLogSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore allDataclasses];
  }

  *buf = 0;
  v26 = buf;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__0;
  v29 = __Block_byref_object_dispose__0;
  v30 = 0;
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __32__ACAccountStore_allDataclasses__block_invoke;
  v24[3] = &unk_1E7975D80;
  v24[4] = buf;
  ac_dispatch_remote_sync(remoteAccountStoreSession, v24, 0);

  Nanoseconds = _ACSignpostGetNanoseconds(v6, v8);
  v16 = _ACSignpostLogSystem(Nanoseconds);
  v17 = v16;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    v18 = *(v26 + 5);
    *v32 = 138412546;
    v33 = v18;
    v34 = 2112;
    v35 = COERCE_DOUBLE(&stru_1F210E1C8);
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v17, OS_SIGNPOST_INTERVAL_END, v6, "AllDataclasses", "%@%@", v32, 0x16u);
  }

  v20 = _ACSignpostLogSystem(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *v32 = 134218754;
    v23 = *(v26 + 5);
    v33 = v6;
    v34 = 2048;
    v35 = Nanoseconds / 1000000000.0;
    v36 = 2112;
    v37 = v23;
    v38 = 2112;
    v39 = &stru_1F210E1C8;
    _os_log_debug_impl(&dword_1AC3CD000, v20, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AllDataclasses %@%@", v32, 0x2Au);
  }

  v21 = *(v26 + 5);
  _Block_object_dispose(buf, 8);

  os_activity_scope_leave(&state);

  return v21;
}

uint64_t __32__ACAccountStore_allDataclasses__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__ACAccountStore_allDataclasses__block_invoke_2;
  v3[3] = &unk_1E7975D58;
  v3[4] = *(a1 + 32);
  return [a2 dataclassesWithHandler:v3];
}

void __32__ACAccountStore_allDataclasses__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = _ACLogSystem(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (id)allAccountTypes
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = _os_activity_create(&dword_1AC3CD000, "accounts/all-account-types", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__0;
  v39 = __Block_byref_object_dispose__0;
  _cache = [(ACAccountStore *)self _cache];
  cachedAllAccountTypes = [_cache cachedAllAccountTypes];

  v6 = v36[5];
  if (!v6)
  {
    v7 = _ACSignpostLogSystem(v5);
    v8 = _ACSignpostCreate(v7);
    v10 = v9;

    v12 = _ACSignpostLogSystem(v11);
    v13 = v12;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "AllAccountTypes", &unk_1AC43804B, buf, 2u);
    }

    v15 = _ACSignpostLogSystem(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [ACAccountStore allAccountTypes];
    }

    remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __33__ACAccountStore_allAccountTypes__block_invoke;
    v34[3] = &unk_1E7975FD0;
    v34[4] = self;
    v34[5] = &v35;
    ac_dispatch_remote_sync(remoteAccountStoreSession, v34, 0);

    Nanoseconds = _ACSignpostGetNanoseconds(v8, v10);
    v18 = _ACSignpostLogSystem(Nanoseconds);
    v19 = v18;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      v20 = v36[5];
      *buf = 138412546;
      v44 = v20;
      v45 = 2112;
      v46 = COERCE_DOUBLE(&stru_1F210E1C8);
      _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v19, OS_SIGNPOST_INTERVAL_END, v8, "AllAccountTypes", "%@%@", buf, 0x16u);
    }

    v22 = _ACSignpostLogSystem(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218754;
      v29 = v36[5];
      v44 = v8;
      v45 = 2048;
      v46 = Nanoseconds / 1000000000.0;
      v47 = 2112;
      v48 = v29;
      v49 = 2112;
      v50 = &stru_1F210E1C8;
      _os_log_debug_impl(&dword_1AC3CD000, v22, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AllAccountTypes %@%@", buf, 0x2Au);
    }

    v6 = v36[5];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v23 = v6;
  v24 = [v23 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v24)
  {
    v25 = *v31;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(v23);
        }

        [*(*(&v30 + 1) + 8 * i) setAccountStore:{self, v30}];
      }

      v24 = [v23 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v24);
  }

  v27 = v36[5];
  _Block_object_dispose(&v35, 8);

  os_activity_scope_leave(&state);

  return v27;
}

uint64_t __33__ACAccountStore_allAccountTypes__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__ACAccountStore_allAccountTypes__block_invoke_2;
  v3[3] = &unk_1E7975FA8;
  v4 = *(a1 + 32);
  return [a2 accountTypesWithHandler:v3];
}

void __33__ACAccountStore_allAccountTypes__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = _ACLogSystem(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  else
  {
    v8 = [a2 copy];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = [*(a1 + 32) _cache];
    [v11 cacheAllAccountTypes:*(*(*(a1 + 40) + 8) + 40)];
  }
}

- (void)visibleTopLevelAccountsWithAccountTypeIdentifiers:(id)identifiers completion:(id)completion
{
  v39 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1AC3CD000, "accounts/all-account-types", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  if (!identifiersCopy)
  {
    v23 = @"accountTypeIDs must be non-nil";
    goto LABEL_13;
  }

  v9 = [identifiersCopy count];
  if (!v9)
  {
    v23 = @"accountTypeIDs must not be empty";
LABEL_13:
    v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v23 userInfo:0];
    objc_exception_throw(v24);
  }

  if (completionCopy)
  {
    v10 = _ACSignpostLogSystem(v9);
    v11 = _ACSignpostCreate(v10);
    v13 = v12;

    v15 = _ACSignpostLogSystem(v14);
    v16 = v15;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 138412290;
      v38 = identifiersCopy;
      _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "VisibleAccountsWithTypes", "%@", buf, 0xCu);
    }

    v18 = _ACSignpostLogSystem(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [ACAccountStore visibleTopLevelAccountsWithAccountTypeIdentifiers:completion:];
    }

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __79__ACAccountStore_visibleTopLevelAccountsWithAccountTypeIdentifiers_completion___block_invoke;
    v31[3] = &unk_1E7975E68;
    v31[4] = self;
    v34 = v11;
    v35 = v13;
    v19 = identifiersCopy;
    v32 = v19;
    v33 = completionCopy;
    v20 = MEMORY[0x1AC5B3C70](v31);
    remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __79__ACAccountStore_visibleTopLevelAccountsWithAccountTypeIdentifiers_completion___block_invoke_108;
    v27[3] = &unk_1E7975C40;
    v28 = v19;
    selfCopy = self;
    v30 = v20;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __79__ACAccountStore_visibleTopLevelAccountsWithAccountTypeIdentifiers_completion___block_invoke_110;
    v25[3] = &unk_1E79754F0;
    v22 = v30;
    v25[4] = self;
    v26 = v22;
    ac_dispatch_remote(remoteAccountStoreSession, v27, v25);
  }

  os_activity_scope_leave(&state);
}

void __79__ACAccountStore_visibleTopLevelAccountsWithAccountTypeIdentifiers_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 80);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__ACAccountStore_visibleTopLevelAccountsWithAccountTypeIdentifiers_completion___block_invoke_2;
  v11[3] = &unk_1E7975FF8;
  v16 = *(a1 + 56);
  v12 = *(a1 + 40);
  v13 = v6;
  v8 = *(a1 + 48);
  v14 = v5;
  v15 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, v11);
}

uint64_t __79__ACAccountStore_visibleTopLevelAccountsWithAccountTypeIdentifiers_completion___block_invoke_2(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  Nanoseconds = _ACSignpostGetNanoseconds(a1[8], a1[9]);
  v3 = _ACSignpostLogSystem(Nanoseconds);
  v4 = v3;
  v5 = a1[8];
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v6 = a1[4];
    v7 = a1[5];
    if (!v7)
    {
      v7 = &stru_1F210E1C8;
    }

    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = *&v7;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v4, OS_SIGNPOST_INTERVAL_END, v5, "VisibleAccountsWithTypes", "%@%@", &v15, 0x16u);
  }

  v9 = _ACSignpostLogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = a1[8];
    v12 = a1[4];
    v13 = a1[5];
    v15 = 134218754;
    v16 = v11;
    v14 = &stru_1F210E1C8;
    v17 = 2048;
    v18 = Nanoseconds / 1000000000.0;
    v19 = 2112;
    v20 = v12;
    if (v13)
    {
      v14 = v13;
    }

    v21 = 2112;
    v22 = v14;
    _os_log_debug_impl(&dword_1AC3CD000, v9, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: VisibleAccountsWithTypes %@%@", &v15, 0x2Au);
  }

  return (*(a1[7] + 16))();
}

void __79__ACAccountStore_visibleTopLevelAccountsWithAccountTypeIdentifiers_completion___block_invoke_108(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __79__ACAccountStore_visibleTopLevelAccountsWithAccountTypeIdentifiers_completion___block_invoke_2_109;
  v5[3] = &unk_1E79754A0;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 visibleTopLevelAccountsWithAccountTypeIdentifiers:v3 completion:v5];
}

void __79__ACAccountStore_visibleTopLevelAccountsWithAccountTypeIdentifiers_completion___block_invoke_2_109(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _ACLogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v9 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v13 + 1) + 8 * i) _setAccountStore:*(a1 + 32)];
        }

        v10 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __79__ACAccountStore_visibleTopLevelAccountsWithAccountTypeIdentifiers_completion___block_invoke_110(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _connectionFailureError];
  (*(v1 + 16))(v1, 0, v2);
}

- (BOOL)hasAccountWithDescription:(id)description
{
  v41 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v5 = _os_activity_create(&dword_1AC3CD000, "accounts/has-account-with-description", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    LODWORD(buf) = 138412290;
    *(&buf + 4) = descriptionCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "HasAccountWithDescription", "%@", &buf, 0xCu);
  }

  v15 = _ACSignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore hasAccountWithDescription:];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v39 = 0x2020000000;
  v40 = 0;
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __44__ACAccountStore_hasAccountWithDescription___block_invoke;
  v28[3] = &unk_1E7976048;
  v17 = descriptionCopy;
  v29 = v17;
  p_buf = &buf;
  ac_dispatch_remote_sync(remoteAccountStoreSession, v28, 0);

  Nanoseconds = _ACSignpostGetNanoseconds(v8, v10);
  v19 = _ACSignpostLogSystem(Nanoseconds);
  v20 = v19;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    if (*(*(&buf + 1) + 24))
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    *v32 = 138543362;
    v33 = v21;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v20, OS_SIGNPOST_INTERVAL_END, v8, "HasAccountWithDescription", "%{public}@", v32, 0xCu);
  }

  v23 = _ACSignpostLogSystem(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v26 = *(*(&buf + 1) + 24);
    *v32 = 134218498;
    v33 = v8;
    if (v26)
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    v34 = 2048;
    v35 = Nanoseconds / 1000000000.0;
    v36 = 2114;
    v37 = v27;
    _os_log_debug_impl(&dword_1AC3CD000, v23, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: HasAccountWithDescription %{public}@", v32, 0x20u);
  }

  v24 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  return v24 & 1;
}

uint64_t __44__ACAccountStore_hasAccountWithDescription___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__ACAccountStore_hasAccountWithDescription___block_invoke_2;
  v4[3] = &unk_1E7976020;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [a2 accountExistsWithDescription:v2 completion:v4];
}

- (void)kerberosAccountsForDomainFromURL:(id)l completion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  lCopy = l;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1AC3CD000, "accounts/kerberos-accounts", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  if (completionCopy)
  {
    v10 = _ACSignpostLogSystem(v9);
    v11 = _ACSignpostCreate(v10);
    v13 = v12;

    v15 = _ACSignpostLogSystem(v14);
    v16 = v15;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 138412290;
      v33 = lCopy;
      _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "KerberosAccounts", "%@", buf, 0xCu);
    }

    v18 = _ACSignpostLogSystem(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [ACAccountStore kerberosAccountsForDomainFromURL:completion:];
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __62__ACAccountStore_kerberosAccountsForDomainFromURL_completion___block_invoke;
    v27[3] = &unk_1E7975F80;
    v27[4] = self;
    v29 = v11;
    v30 = v13;
    v28 = completionCopy;
    v19 = MEMORY[0x1AC5B3C70](v27);
    remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __62__ACAccountStore_kerberosAccountsForDomainFromURL_completion___block_invoke_119;
    v24[3] = &unk_1E79754C8;
    v25 = lCopy;
    v26 = v19;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __62__ACAccountStore_kerberosAccountsForDomainFromURL_completion___block_invoke_2;
    v22[3] = &unk_1E79754F0;
    v21 = v26;
    v22[4] = self;
    v23 = v21;
    ac_dispatch_remote(remoteAccountStoreSession, v24, v22);
  }

  os_activity_scope_leave(&state);
}

void __62__ACAccountStore_kerberosAccountsForDomainFromURL_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _ACLogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v21 + 1) + 8 * i) _setAccountStore:*(a1 + 32)];
        }

        v10 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }
  }

  v13 = *(*(a1 + 32) + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__ACAccountStore_kerberosAccountsForDomainFromURL_completion___block_invoke_118;
  block[3] = &unk_1E7975BC8;
  v20 = *(a1 + 48);
  v17 = v5;
  v18 = v7;
  v19 = *(a1 + 40);
  v14 = v7;
  v15 = v5;
  dispatch_async(v13, block);
}

uint64_t __62__ACAccountStore_kerberosAccountsForDomainFromURL_completion___block_invoke_118(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  Nanoseconds = _ACSignpostGetNanoseconds(a1[7], a1[8]);
  v3 = _ACSignpostLogSystem(Nanoseconds);
  v4 = v3;
  v5 = a1[7];
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v6 = a1[4];
    v7 = a1[5];
    if (!v7)
    {
      v7 = &stru_1F210E1C8;
    }

    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = *&v7;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v4, OS_SIGNPOST_INTERVAL_END, v5, "KerberosAccounts", "%@%@", &v15, 0x16u);
  }

  v9 = _ACSignpostLogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = a1[7];
    v12 = a1[4];
    v13 = a1[5];
    v15 = 134218754;
    v16 = v11;
    v14 = &stru_1F210E1C8;
    v17 = 2048;
    v18 = Nanoseconds / 1000000000.0;
    v19 = 2112;
    v20 = v12;
    if (v13)
    {
      v14 = v13;
    }

    v21 = 2112;
    v22 = v14;
    _os_log_debug_impl(&dword_1AC3CD000, v9, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: KerberosAccounts %@%@", &v15, 0x2Au);
  }

  return (*(a1[6] + 16))();
}

void __62__ACAccountStore_kerberosAccountsForDomainFromURL_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _connectionFailureError];
  (*(v1 + 16))(v1, 0, v2);
}

- (BOOL)isPushSupportedForAccount:(id)account
{
  v41 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v5 = _os_activity_create(&dword_1AC3CD000, "accounts/push-supported", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    LODWORD(buf) = 138412290;
    *(&buf + 4) = accountCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PushSupported", "%@", &buf, 0xCu);
  }

  v15 = _ACSignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore isPushSupportedForAccount:];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v39 = 0x2020000000;
  v40 = 0;
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __44__ACAccountStore_isPushSupportedForAccount___block_invoke;
  v28[3] = &unk_1E7976048;
  v17 = accountCopy;
  v29 = v17;
  p_buf = &buf;
  ac_dispatch_remote_sync(remoteAccountStoreSession, v28, 0);

  Nanoseconds = _ACSignpostGetNanoseconds(v8, v10);
  v19 = _ACSignpostLogSystem(Nanoseconds);
  v20 = v19;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    if (*(*(&buf + 1) + 24))
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    *v32 = 138543362;
    v33 = v21;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v20, OS_SIGNPOST_INTERVAL_END, v8, "PushSupported", "%{public}@", v32, 0xCu);
  }

  v23 = _ACSignpostLogSystem(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v26 = *(*(&buf + 1) + 24);
    *v32 = 134218498;
    v33 = v8;
    if (v26)
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    v34 = 2048;
    v35 = Nanoseconds / 1000000000.0;
    v36 = 2114;
    v37 = v27;
    _os_log_debug_impl(&dword_1AC3CD000, v23, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: PushSupported %{public}@", v32, 0x20u);
  }

  v24 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  return v24 & 1;
}

uint64_t __44__ACAccountStore_isPushSupportedForAccount___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__ACAccountStore_isPushSupportedForAccount___block_invoke_2;
  v4[3] = &unk_1E7976020;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [a2 isPushSupportedForAccount:v2 completion:v4];
}

+ (int)accountsWithAccountTypeIdentifierExist:(id)exist
{
  v34 = *MEMORY[0x1E69E9840];
  existCopy = exist;
  v5 = _os_activity_create(&dword_1AC3CD000, "accounts/accounts-with-type-exist", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v25.opaque[0] = 0;
  v25.opaque[1] = 0;
  os_activity_scope_enter(v5, &v25);
  v7 = _ACSignpostLogSystem(v6);
  v8 = _ACSignpostCreate(v7);
  v10 = v9;

  v12 = _ACSignpostLogSystem(v11);
  v13 = v12;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 138412290;
    v27 = existCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "AccountsWithTypeExist", "%@", buf, 0xCu);
  }

  v15 = _ACSignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    +[ACAccountStore accountsWithAccountTypeIdentifierExist:];
  }

  if ([self countOfAccountsWithAccountTypeIdentifier:existCopy] > 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  Nanoseconds = _ACSignpostGetNanoseconds(v8, v10);
  v18 = _ACSignpostLogSystem(Nanoseconds);
  v19 = v18;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v16];
    *buf = 138412546;
    v27 = v20;
    v28 = 2112;
    v29 = COERCE_DOUBLE(&stru_1F210E1C8);
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v19, OS_SIGNPOST_INTERVAL_END, v8, "AccountsWithTypeExist", "%@%@", buf, 0x16u);
  }

  v22 = _ACSignpostLogSystem(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v16];
    *buf = 134218754;
    v27 = v8;
    v28 = 2048;
    v29 = Nanoseconds / 1000000000.0;
    v30 = 2112;
    v31 = v24;
    v32 = 2112;
    v33 = &stru_1F210E1C8;
    _os_log_debug_impl(&dword_1AC3CD000, v22, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AccountsWithTypeExist %@%@", buf, 0x2Au);
  }

  os_activity_scope_leave(&v25);
  return v16;
}

+ (int64_t)countOfAccountsWithAccountTypeIdentifier:(id)identifier
{
  v36 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = _os_activity_create(&dword_1AC3CD000, "accounts/accounts-with-type-count", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v27.opaque[0] = 0;
  v27.opaque[1] = 0;
  os_activity_scope_enter(v4, &v27);
  v6 = _ACSignpostLogSystem(v5);
  v7 = _ACSignpostCreate(v6);
  v9 = v8;

  v11 = _ACSignpostLogSystem(v10);
  v12 = v11;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 138412290;
    v29 = identifierCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v7, "AccountsWithTypeCount", "%@", buf, 0xCu);
  }

  v14 = _ACSignpostLogSystem(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    +[ACAccountStore countOfAccountsWithAccountTypeIdentifier:];
  }

  v15 = objc_alloc_init(ACAccountStore);
  v16 = [(ACAccountStore *)v15 accountTypeWithAccountTypeIdentifier:identifierCopy];
  v17 = [(ACAccountStore *)v15 accountsWithAccountType:v16];
  v18 = [v17 count];

  Nanoseconds = _ACSignpostGetNanoseconds(v7, v9);
  v20 = _ACSignpostLogSystem(Nanoseconds);
  v21 = v20;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    v22 = [MEMORY[0x1E696AD98] numberWithInteger:v18];
    *buf = 138412546;
    v29 = v22;
    v30 = 2112;
    v31 = COERCE_DOUBLE(&stru_1F210E1C8);
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v21, OS_SIGNPOST_INTERVAL_END, v7, "AccountsWithTypeCount", "%@%@", buf, 0x16u);
  }

  v24 = _ACSignpostLogSystem(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v26 = [MEMORY[0x1E696AD98] numberWithInteger:v18];
    *buf = 134218754;
    v29 = v7;
    v30 = 2048;
    v31 = Nanoseconds / 1000000000.0;
    v32 = 2112;
    v33 = v26;
    v34 = 2112;
    v35 = &stru_1F210E1C8;
    _os_log_debug_impl(&dword_1AC3CD000, v24, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AccountsWithTypeCount %@%@", buf, 0x2Au);
  }

  os_activity_scope_leave(&v27);
  return v18;
}

- (void)insertAccountType:(id)type withCompletionHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_1AC3CD000, "accounts/insert-account-type", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  if (!typeCopy)
  {
    v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Account type must be non-nil" userInfo:0];
    objc_exception_throw(v24);
  }

  v10 = _ACSignpostLogSystem(v9);
  v11 = _ACSignpostCreate(v10);
  v13 = v12;

  v15 = _ACSignpostLogSystem(v14);
  v16 = v15;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 138412290;
    v36 = typeCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "InsertAccountType", "%@", buf, 0xCu);
  }

  v18 = _ACSignpostLogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore insertAccountType:withCompletionHandler:];
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __58__ACAccountStore_insertAccountType_withCompletionHandler___block_invoke;
  v30[3] = &unk_1E7976098;
  v30[4] = self;
  v32 = v11;
  v33 = v13;
  v19 = handlerCopy;
  v31 = v19;
  v20 = MEMORY[0x1AC5B3C70](v30);
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __58__ACAccountStore_insertAccountType_withCompletionHandler___block_invoke_124;
  v27[3] = &unk_1E79754C8;
  v22 = typeCopy;
  v28 = v22;
  v29 = v20;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __58__ACAccountStore_insertAccountType_withCompletionHandler___block_invoke_3;
  v25[3] = &unk_1E79754F0;
  v23 = v29;
  v25[4] = self;
  v26 = v23;
  ac_dispatch_remote(remoteAccountStoreSession, v27, v25);

  os_activity_scope_leave(&state);
}

void __58__ACAccountStore_insertAccountType_withCompletionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__ACAccountStore_insertAccountType_withCompletionHandler___block_invoke_2;
  block[3] = &unk_1E7976070;
  v11 = *(a1 + 48);
  v12 = a2;
  v9 = v5;
  v10 = *(a1 + 40);
  v7 = v5;
  dispatch_async(v6, block);
}

uint64_t __58__ACAccountStore_insertAccountType_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  Nanoseconds = _ACSignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v3 = _ACSignpostLogSystem(Nanoseconds);
  v4 = v3;
  v5 = *(a1 + 48);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    if (*(a1 + 64))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v7 = *(a1 + 32);
    if (!v7)
    {
      v7 = &stru_1F210E1C8;
    }

    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = *&v7;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v4, OS_SIGNPOST_INTERVAL_END, v5, "InsertAccountType", "%@%@", &v15, 0x16u);
  }

  v9 = _ACSignpostLogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 48);
    v12 = @"NO";
    v13 = *(a1 + 32);
    if (*(a1 + 64))
    {
      v12 = @"YES";
    }

    v15 = 134218754;
    v16 = v11;
    v14 = &stru_1F210E1C8;
    v17 = 2048;
    v18 = Nanoseconds / 1000000000.0;
    v19 = 2112;
    v20 = v12;
    if (v13)
    {
      v14 = v13;
    }

    v21 = 2112;
    v22 = v14;
    _os_log_debug_impl(&dword_1AC3CD000, v9, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: InsertAccountType %@%@", &v15, 0x2Au);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 64), *(a1 + 32));
  }

  return result;
}

void __58__ACAccountStore_insertAccountType_withCompletionHandler___block_invoke_124(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__ACAccountStore_insertAccountType_withCompletionHandler___block_invoke_2_125;
  v5[3] = &unk_1E79760C0;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v6 = *(a1 + 32);
  [a2 insertAccountType:v4 withHandler:v5];
}

uint64_t __58__ACAccountStore_insertAccountType_withCompletionHandler___block_invoke_2_125(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v5 = *(a1 + 32);
    v6 = [a2 objectID];
    [v5 setObjectID:v6];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void __58__ACAccountStore_insertAccountType_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _connectionFailureError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)removeAccountType:(id)type withCompletionHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_1AC3CD000, "accounts/remove-account-type", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  if (!typeCopy)
  {
    v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Account type must be non-nil" userInfo:0];
    objc_exception_throw(v24);
  }

  v10 = _ACSignpostLogSystem(v9);
  v11 = _ACSignpostCreate(v10);
  v13 = v12;

  v15 = _ACSignpostLogSystem(v14);
  v16 = v15;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 138412290;
    v36 = typeCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "RemoveAccountType", "%@", buf, 0xCu);
  }

  v18 = _ACSignpostLogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore removeAccountType:withCompletionHandler:];
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __58__ACAccountStore_removeAccountType_withCompletionHandler___block_invoke;
  v30[3] = &unk_1E7976098;
  v30[4] = self;
  v32 = v11;
  v33 = v13;
  v19 = handlerCopy;
  v31 = v19;
  v20 = MEMORY[0x1AC5B3C70](v30);
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __58__ACAccountStore_removeAccountType_withCompletionHandler___block_invoke_126;
  v27[3] = &unk_1E79754C8;
  v22 = typeCopy;
  v28 = v22;
  v29 = v20;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __58__ACAccountStore_removeAccountType_withCompletionHandler___block_invoke_3;
  v25[3] = &unk_1E79754F0;
  v23 = v29;
  v25[4] = self;
  v26 = v23;
  ac_dispatch_remote(remoteAccountStoreSession, v27, v25);

  os_activity_scope_leave(&state);
}

void __58__ACAccountStore_removeAccountType_withCompletionHandler___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  Nanoseconds = _ACSignpostGetNanoseconds(a1[6], a1[7]);
  v7 = _ACSignpostLogSystem(Nanoseconds);
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = @"NO";
    if (a2)
    {
      v10 = @"YES";
    }

    v11 = &stru_1F210E1C8;
    if (v5)
    {
      v11 = v5;
    }

    v18 = 138412546;
    v19 = v10;
    v20 = 2112;
    v21 = *&v11;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v8, OS_SIGNPOST_INTERVAL_END, v9, "RemoveAccountType", "%@%@", &v18, 0x16u);
  }

  v13 = _ACSignpostLogSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = a1[6];
    v16 = @"NO";
    if (a2)
    {
      v16 = @"YES";
    }

    v18 = 134218754;
    v19 = v15;
    v17 = &stru_1F210E1C8;
    v20 = 2048;
    v21 = Nanoseconds / 1000000000.0;
    v22 = 2112;
    v23 = v16;
    if (v5)
    {
      v17 = v5;
    }

    v24 = 2112;
    v25 = v17;
    _os_log_debug_impl(&dword_1AC3CD000, v13, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: RemoveAccountType %@%@", &v18, 0x2Au);
  }

  v14 = a1[5];
  if (v14)
  {
    (*(v14 + 16))(v14, a2, v5);
  }
}

void __58__ACAccountStore_removeAccountType_withCompletionHandler___block_invoke_126(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__ACAccountStore_removeAccountType_withCompletionHandler___block_invoke_2;
  v4[3] = &unk_1E79760E8;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 removeAccountType:v3 withHandler:v4];
}

void __58__ACAccountStore_removeAccountType_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _connectionFailureError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)removeAccount:(id)account withDeleteSync:(BOOL)sync completion:(id)completion
{
  syncCopy = sync;
  v8 = MEMORY[0x1E696AD98];
  completionCopy = completion;
  accountCopy = account;
  v10 = [v8 numberWithBool:syncCopy];
  [accountCopy setAccountProperty:v10 forKey:@"AccountSyncDelete"];

  [(ACAccountStore *)self removeAccount:accountCopy withDataclassActions:0 completion:completionCopy];
}

- (void)removeAccount:(id)account withDataclassActions:(id)actions completion:(id)completion
{
  v50 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  actionsCopy = actions;
  completionCopy = completion;
  v11 = _os_activity_create(&dword_1AC3CD000, "accounts/remove-account", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  if (!accountCopy)
  {
    v34 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Account must be non-nil" userInfo:0];
    objc_exception_throw(v34);
  }

  v13 = _ACSignpostLogSystem(v12);
  v14 = _ACSignpostCreate(v13);
  v16 = v15;

  v18 = _ACSignpostLogSystem(v17);
  v19 = v18;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    accountType = [accountCopy accountType];
    identifier = [accountType identifier];
    *buf = 138543362;
    v47 = identifier;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v14, "RemoveAccount", " AccountType=%{public,signpost.telemetry:string1,name=AccountType}@ ", buf, 0xCu);
  }

  v23 = _ACSignpostLogSystem(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    accountType2 = [accountCopy accountType];
    identifier2 = [accountType2 identifier];
    *buf = 134218242;
    v47 = v14;
    v48 = 2114;
    v49 = identifier2;
    _os_log_debug_impl(&dword_1AC3CD000, v23, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: RemoveAccount  AccountType=%{public,signpost.telemetry:string1,name=AccountType}@ ", buf, 0x16u);
  }

  v25 = _ACLogSystem(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v47 = accountCopy;
    _os_log_impl(&dword_1AC3CD000, v25, OS_LOG_TYPE_DEFAULT, "Starting removal of account %@.", buf, 0xCu);
  }

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __64__ACAccountStore_removeAccount_withDataclassActions_completion___block_invoke;
  v41[3] = &unk_1E7976098;
  v41[4] = self;
  v43 = v14;
  v44 = v16;
  v26 = completionCopy;
  v42 = v26;
  v27 = MEMORY[0x1AC5B3C70](v41);
  longLivedRemoteAccountStoreSession = [(ACAccountStore *)self longLivedRemoteAccountStoreSession];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __64__ACAccountStore_removeAccount_withDataclassActions_completion___block_invoke_135;
  v37[3] = &unk_1E7975C40;
  v29 = accountCopy;
  v38 = v29;
  v30 = actionsCopy;
  v39 = v30;
  v40 = v27;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __64__ACAccountStore_removeAccount_withDataclassActions_completion___block_invoke_2;
  v35[3] = &unk_1E79754F0;
  v31 = v40;
  v35[4] = self;
  v36 = v31;
  ac_dispatch_remote(longLivedRemoteAccountStoreSession, v37, v35);

  os_activity_scope_leave(&state);
}

void __64__ACAccountStore_removeAccount_withDataclassActions_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _ACLogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    *buf = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_1AC3CD000, v6, OS_LOG_TYPE_DEFAULT, "Completed account removal: %@ - %@.", buf, 0x16u);
  }

  v8 = *(*(a1 + 32) + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__ACAccountStore_removeAccount_withDataclassActions_completion___block_invoke_134;
  block[3] = &unk_1E7976110;
  v14 = *(a1 + 48);
  v15 = a2;
  v9 = *(a1 + 40);
  v12 = v5;
  v13 = v9;
  v10 = v5;
  dispatch_async(v8, block);
}

uint64_t __64__ACAccountStore_removeAccount_withDataclassActions_completion___block_invoke_134(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  Nanoseconds = _ACSignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v3 = _ACSignpostLogSystem(Nanoseconds);
  v4 = v3;
  v5 = *(a1 + 48);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    if (*(a1 + 64))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v13 = 138543362;
    v14 = v6;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v4, OS_SIGNPOST_INTERVAL_END, v5, "RemoveAccount", "%{public}@", &v13, 0xCu);
  }

  v8 = _ACSignpostLogSystem(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 48);
    v11 = *(a1 + 64);
    v13 = 134218498;
    v14 = v10;
    if (v11)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v15 = 2048;
    v16 = Nanoseconds / 1000000000.0;
    v17 = 2114;
    v18 = v12;
    _os_log_debug_impl(&dword_1AC3CD000, v8, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: RemoveAccount %{public}@", &v13, 0x20u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 64), *(a1 + 32));
  }

  return result;
}

void __64__ACAccountStore_removeAccount_withDataclassActions_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _connectionFailureError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)canSaveAccount:(id)account withCompletionHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_1AC3CD000, "accounts/can-save-account", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  if (!accountCopy)
  {
    v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Account must be non-nil" userInfo:0];
    objc_exception_throw(v24);
  }

  v10 = _ACSignpostLogSystem(v9);
  v11 = _ACSignpostCreate(v10);
  v13 = v12;

  v15 = _ACSignpostLogSystem(v14);
  v16 = v15;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "CanSaveAccount", &unk_1AC43804B, buf, 2u);
  }

  v18 = _ACSignpostLogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore canSaveAccount:withCompletionHandler:];
  }

  v20 = _ACLogSystem(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = accountCopy;
    _os_log_impl(&dword_1AC3CD000, v20, OS_LOG_TYPE_DEFAULT, "Checking save eligibility of account %@.", buf, 0xCu);
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __55__ACAccountStore_canSaveAccount_withCompletionHandler___block_invoke;
  v30[3] = &unk_1E7976098;
  v30[4] = self;
  v32 = v11;
  v33 = v13;
  v21 = handlerCopy;
  v31 = v21;
  v22 = MEMORY[0x1AC5B3C70](v30);
  if ([accountCopy isDirty])
  {
    remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __55__ACAccountStore_canSaveAccount_withCompletionHandler___block_invoke_137;
    v27[3] = &unk_1E79754C8;
    v28 = accountCopy;
    v29 = v22;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __55__ACAccountStore_canSaveAccount_withCompletionHandler___block_invoke_2;
    v25[3] = &unk_1E79754F0;
    v25[4] = self;
    v26 = v29;
    ac_dispatch_remote(remoteAccountStoreSession, v27, v25);
  }

  else
  {
    v22[2](v22, 1, 0);
  }

  os_activity_scope_leave(&state);
}

void __55__ACAccountStore_canSaveAccount_withCompletionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _ACLogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    *buf = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_1AC3CD000, v6, OS_LOG_TYPE_DEFAULT, "Completed checking save eligibility: %@ - %@.", buf, 0x16u);
  }

  v8 = *(*(a1 + 32) + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__ACAccountStore_canSaveAccount_withCompletionHandler___block_invoke_136;
  block[3] = &unk_1E7976110;
  v14 = *(a1 + 48);
  v15 = a2;
  v9 = *(a1 + 40);
  v12 = v5;
  v13 = v9;
  v10 = v5;
  dispatch_async(v8, block);
}

uint64_t __55__ACAccountStore_canSaveAccount_withCompletionHandler___block_invoke_136(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  Nanoseconds = _ACSignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v3 = _ACSignpostLogSystem(Nanoseconds);
  v4 = v3;
  v5 = *(a1 + 48);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    if (*(a1 + 64))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v13 = 138543362;
    v14 = v6;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v4, OS_SIGNPOST_INTERVAL_END, v5, "CanSaveAccount", "%{public}@", &v13, 0xCu);
  }

  v8 = _ACSignpostLogSystem(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 48);
    v11 = *(a1 + 64);
    v13 = 134218498;
    v14 = v10;
    if (v11)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v15 = 2048;
    v16 = Nanoseconds / 1000000000.0;
    v17 = 2114;
    v18 = v12;
    _os_log_debug_impl(&dword_1AC3CD000, v8, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: CanSaveAccount %{public}@", &v13, 0x20u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 64), *(a1 + 32));
  }

  return result;
}

void __55__ACAccountStore_canSaveAccount_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _connectionFailureError];
  (*(v1 + 16))(v1, 0, v2);
}

+ (BOOL)canSaveAccountsOfAccountTypeIdentifier:(id)identifier
{
  v34 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = _os_activity_create(&dword_1AC3CD000, "accounts/can-save-accounts-with-type", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v27.opaque[0] = 0;
  v27.opaque[1] = 0;
  os_activity_scope_enter(v4, &v27);
  v6 = _ACSignpostLogSystem(v5);
  v7 = _ACSignpostCreate(v6);
  v9 = v8;

  v11 = _ACSignpostLogSystem(v10);
  v12 = v11;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 138412290;
    v29 = identifierCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v7, "CanSaveAccountsWithType", "%@", buf, 0xCu);
  }

  v14 = _ACSignpostLogSystem(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    +[ACAccountStore canSaveAccountsOfAccountTypeIdentifier:];
  }

  v15 = objc_alloc_init(ACAccountStore);
  v16 = [(ACAccountStore *)v15 accountTypeWithAccountTypeIdentifier:identifierCopy];
  if ([v16 supportsMultipleAccounts])
  {
    v17 = 1;
  }

  else
  {
    identifier = [v16 identifier];
    v17 = [ACAccountStore countOfAccountsWithAccountTypeIdentifier:identifier]< 1;
  }

  Nanoseconds = _ACSignpostGetNanoseconds(v7, v9);
  v20 = _ACSignpostLogSystem(Nanoseconds);
  v21 = v20;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    v22 = @"NO";
    if (v17)
    {
      v22 = @"YES";
    }

    *buf = 138543362;
    v29 = v22;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v21, OS_SIGNPOST_INTERVAL_END, v7, "CanSaveAccountsWithType", "%{public}@", buf, 0xCu);
  }

  v24 = _ACSignpostLogSystem(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v26 = @"NO";
    *buf = 134218498;
    v29 = v7;
    if (v17)
    {
      v26 = @"YES";
    }

    v30 = 2048;
    v31 = Nanoseconds / 1000000000.0;
    v32 = 2114;
    v33 = v26;
    _os_log_debug_impl(&dword_1AC3CD000, v24, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: CanSaveAccountsWithType %{public}@", buf, 0x20u);
  }

  os_activity_scope_leave(&v27);
  return v17;
}

- (void)_saveAccount:(id)account verify:(BOOL)verify dataclassActions:(id)actions completion:(id)completion
{
  v63 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  actionsCopy = actions;
  completionCopy = completion;
  v11 = _os_activity_create(&dword_1AC3CD000, "accounts/save-account", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  if (!accountCopy)
  {
    v39 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Account must be non-nil" userInfo:0];
    objc_exception_throw(v39);
  }

  v13 = _ACSignpostLogSystem(v12);
  v14 = _ACSignpostCreate(v13);
  v16 = v15;

  v18 = _ACSignpostLogSystem(v17);
  v19 = v18;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    accountType = [accountCopy accountType];
    identifier = [accountType identifier];
    *buf = 138543618;
    v58 = identifier;
    v59 = 2112;
    v60 = accountCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v14, "SaveAccount", " AccountType=%{public,signpost.telemetry:string1,name=AccountType}@ (account: %@)", buf, 0x16u);
  }

  v23 = _ACSignpostLogSystem(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    accountType2 = [accountCopy accountType];
    identifier2 = [accountType2 identifier];
    *buf = 134218498;
    v58 = v14;
    v59 = 2114;
    v60 = identifier2;
    v61 = 2112;
    v62 = accountCopy;
    _os_log_debug_impl(&dword_1AC3CD000, v23, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: SaveAccount  AccountType=%{public,signpost.telemetry:string1,name=AccountType}@ (account: %@)", buf, 0x20u);
  }

  v25 = _ACLogSystem(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v58 = accountCopy;
    _os_log_impl(&dword_1AC3CD000, v25, OS_LOG_TYPE_DEFAULT, "Starting save for account %@.", buf, 0xCu);
  }

  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __66__ACAccountStore__saveAccount_verify_dataclassActions_completion___block_invoke;
  v52[3] = &unk_1E7976098;
  v52[4] = self;
  v54 = v14;
  v55 = v16;
  v26 = completionCopy;
  v53 = v26;
  v27 = MEMORY[0x1AC5B3C70](v52);
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __66__ACAccountStore__saveAccount_verify_dataclassActions_completion___block_invoke_139;
  v49[3] = &unk_1E7976138;
  v28 = v27;
  v51 = v28;
  v49[4] = self;
  v29 = accountCopy;
  v50 = v29;
  v30 = MEMORY[0x1AC5B3C70](v49);
  isDirty = [v29 isDirty];
  if (isDirty)
  {
    v32 = _ACLogSystem(isDirty);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      [ACAccountStore _saveAccount:verify:dataclassActions:completion:];
    }

    accountType3 = [v29 accountType];
    identifier3 = [accountType3 identifier];
    [(ACAccountStore *)self _checkSaveRateLimitForAccountType:identifier3];

    longLivedRemoteAccountStoreSession = [(ACAccountStore *)self longLivedRemoteAccountStoreSession];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __66__ACAccountStore__saveAccount_verify_dataclassActions_completion___block_invoke_141;
    v44[3] = &unk_1E7976160;
    v45 = v29;
    verifyCopy = verify;
    v46 = actionsCopy;
    v47 = v30;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __66__ACAccountStore__saveAccount_verify_dataclassActions_completion___block_invoke_2;
    v42[3] = &unk_1E79754F0;
    v42[4] = self;
    v43 = v28;
    ac_dispatch_remote(longLivedRemoteAccountStoreSession, v44, v42);
  }

  else
  {
    v36 = _ACLogSystem(isDirty);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      [ACAccountStore _saveAccount:verify:dataclassActions:completion:];
    }

    (*(v28 + 2))(v28, 1, 0);
  }

  os_activity_scope_leave(&state);
}

void __66__ACAccountStore__saveAccount_verify_dataclassActions_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _ACLogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    *buf = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_1AC3CD000, v6, OS_LOG_TYPE_DEFAULT, "Completed account save: %@ - %@.", buf, 0x16u);
  }

  v8 = *(*(a1 + 32) + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__ACAccountStore__saveAccount_verify_dataclassActions_completion___block_invoke_138;
  block[3] = &unk_1E7976110;
  v14 = *(a1 + 48);
  v15 = a2;
  v9 = *(a1 + 40);
  v12 = v5;
  v13 = v9;
  v10 = v5;
  dispatch_async(v8, block);
}

uint64_t __66__ACAccountStore__saveAccount_verify_dataclassActions_completion___block_invoke_138(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  Nanoseconds = _ACSignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v3 = _ACSignpostLogSystem(Nanoseconds);
  v4 = v3;
  v5 = *(a1 + 48);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    if (*(a1 + 64))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v13 = 138543362;
    v14 = v6;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v4, OS_SIGNPOST_INTERVAL_END, v5, "SaveAccount", "%{public}@", &v13, 0xCu);
  }

  v8 = _ACSignpostLogSystem(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 48);
    v11 = *(a1 + 64);
    v13 = 134218498;
    v14 = v10;
    if (v11)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v15 = 2048;
    v16 = Nanoseconds / 1000000000.0;
    v17 = 2114;
    v18 = v12;
    _os_log_debug_impl(&dword_1AC3CD000, v8, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: SaveAccount %{public}@", &v13, 0x20u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 64), *(a1 + 32));
  }

  return result;
}

void __66__ACAccountStore__saveAccount_verify_dataclassActions_completion___block_invoke_139(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = *(a1 + 32);
    v6 = a3;
    [v5 _clearAccountCaches];
    [*(a1 + 40) _setObjectID:v12];
    [*(a1 + 40) _clearCachedChildAccounts];
    [*(a1 + 40) _setAccountStore:*(a1 + 32)];
    [*(a1 + 40) _clearDirtyProperties];
    v7 = *(a1 + 48);
    v8 = [*(a1 + 32) _unsanitizeError:v6];

    (*(v7 + 16))(v7, 1, v8);
  }

  else
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 32);
    v11 = a3;
    v8 = [v10 _unsanitizeError:v11];

    (*(v9 + 16))(v9, 0, v8);
  }
}

void __66__ACAccountStore__saveAccount_verify_dataclassActions_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _connectionFailureError];
  (*(v1 + 16))(v1, 0, v2);
}

- (BOOL)saveVerifiedAccount:(id)account error:(id *)error
{
  v62 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v7 = _os_activity_create(&dword_1AC3CD000, "accounts/save-verified-account", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  if (!accountCopy)
  {
    v38 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Account must be non-nil" userInfo:0];
    objc_exception_throw(v38);
  }

  v9 = _ACSignpostLogSystem(v8);
  v10 = _ACSignpostCreate(v9);
  v12 = v11;

  v14 = _ACSignpostLogSystem(v13);
  v15 = v14;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    accountType = [accountCopy accountType];
    identifier = [accountType identifier];
    *buf = 138543618;
    *&buf[4] = identifier;
    *&buf[12] = 2112;
    *&buf[14] = accountCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v10, "SaveAccount", " AccountType=%{public,signpost.telemetry:string1,name=AccountType}@ (account: %@)", buf, 0x16u);
  }

  v19 = _ACSignpostLogSystem(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    accountType2 = [accountCopy accountType];
    identifier2 = [accountType2 identifier];
    *buf = 134218498;
    *&buf[4] = v10;
    *&buf[12] = 2114;
    *&buf[14] = identifier2;
    *&buf[22] = 2112;
    v59 = accountCopy;
    _os_log_debug_impl(&dword_1AC3CD000, v19, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: SaveAccount  AccountType=%{public,signpost.telemetry:string1,name=AccountType}@ (account: %@)", buf, 0x20u);
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 1;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v59 = __Block_byref_object_copy__0;
  v60 = __Block_byref_object_dispose__0;
  v61 = 0;
  isDirty = [accountCopy isDirty];
  if (isDirty)
  {
    accountType3 = [accountCopy accountType];
    identifier3 = [accountType3 identifier];
    [(ACAccountStore *)self _checkSaveRateLimitForAccountType:identifier3];

    longLivedRemoteAccountStoreSession = [(ACAccountStore *)self longLivedRemoteAccountStoreSession];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __44__ACAccountStore_saveVerifiedAccount_error___block_invoke;
    v40[3] = &unk_1E79761B0;
    v43 = &v45;
    v44 = buf;
    v41 = accountCopy;
    selfCopy = self;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __44__ACAccountStore_saveVerifiedAccount_error___block_invoke_3;
    v39[3] = &unk_1E7975F58;
    v39[5] = &v45;
    v39[6] = buf;
    v39[4] = self;
    ac_dispatch_remote_sync(longLivedRemoteAccountStoreSession, v40, v39);

    v24 = v41;
  }

  else
  {
    v24 = _ACLogSystem(isDirty);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [ACAccountStore saveVerifiedAccount:error:];
    }
  }

  if (error)
  {
    *error = *(*&buf[8] + 40);
  }

  Nanoseconds = _ACSignpostGetNanoseconds(v10, v12);
  v26 = _ACSignpostLogSystem(Nanoseconds);
  v27 = v26;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    if (*(v46 + 24))
    {
      v28 = @"YES";
    }

    else
    {
      v28 = @"NO";
    }

    v29 = *(*&buf[8] + 40);
    if (*&v29 == 0.0)
    {
      *&v29 = COERCE_DOUBLE(&stru_1F210E1C8);
    }

    *v50 = 138412546;
    v51 = v28;
    v52 = 2112;
    v53 = *&v29;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v27, OS_SIGNPOST_INTERVAL_END, v10, "SaveAccount", "%@%@", v50, 0x16u);
  }

  v31 = _ACSignpostLogSystem(v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    v36 = @"NO";
    v37 = *(*&buf[8] + 40);
    if (*(v46 + 24))
    {
      v36 = @"YES";
    }

    *v50 = 134218754;
    v51 = v10;
    v52 = 2048;
    v53 = Nanoseconds / 1000000000.0;
    v54 = 2112;
    v55 = v36;
    if (!v37)
    {
      v37 = &stru_1F210E1C8;
    }

    v56 = 2112;
    v57 = v37;
    _os_log_debug_impl(&dword_1AC3CD000, v31, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: SaveAccount %@%@", v50, 0x2Au);
  }

  v32 = *(v46 + 24);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v45, 8);
  os_activity_scope_leave(&state);

  return v32 & 1;
}

void __44__ACAccountStore_saveVerifiedAccount_error___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v2 = *(a1 + 32);
  v5 = *(a1 + 48);
  v3[2] = __44__ACAccountStore_saveVerifiedAccount_error___block_invoke_2;
  v3[3] = &unk_1E7976188;
  v4 = vextq_s8(v2, v2, 8uLL);
  [a2 saveAccount:v2.i64[0] verify:0 dataclassActions:0 completion:v3];
}

void __44__ACAccountStore_saveVerifiedAccount_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = *(a1 + 32);
    v6 = a3;
    [v5 _clearAccountCaches];
    [*(a1 + 40) _setObjectID:v12];
    [*(a1 + 40) _clearCachedChildAccounts];
    [*(a1 + 40) _setAccountStore:*(a1 + 32)];
    [*(a1 + 40) _clearDirtyProperties];
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v7 = *(a1 + 32);
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v7 = *(a1 + 32);
    v8 = a3;
  }

  v9 = [v7 _unsanitizeError:a3];

  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

uint64_t __44__ACAccountStore_saveVerifiedAccount_error___block_invoke_3(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = 0;
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _connectionFailureError];

  return MEMORY[0x1EEE66BB8]();
}

- (void)_checkSaveRateLimitForAccountType:(id)type
{
  typeCopy = type;
  if (_checkSaveRateLimitForAccountType__onceToken != -1)
  {
    [ACAccountStore _checkSaveRateLimitForAccountType:];
  }

  if (_checkSaveRateLimitForAccountType__saveRateLimiter)
  {
    v4 = [_checkSaveRateLimitForAccountType__saveRateLimiter reservePerformActionForKey:typeCopy];
    if ((v4 & 1) == 0)
    {
      v5 = _ACLogSystem(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(ACAccountStore *)typeCopy _checkSaveRateLimitForAccountType:v5];
      }
    }
  }
}

uint64_t __52__ACAccountStore__checkSaveRateLimitForAccountType___block_invoke()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    _checkSaveRateLimitForAccountType__saveRateLimiter = [[ACRateLimiter alloc] initWithMaximum:60 inTimeInterval:60.0];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

- (void)requestAccessToAccountsWithType:(ACAccountType *)accountType options:(NSDictionary *)options completion:(ACAccountStoreRequestAccessCompletionHandler)completion
{
  v48 = *MEMORY[0x1E69E9840];
  v8 = accountType;
  v9 = options;
  v10 = completion;
  v11 = _os_activity_create(&dword_1AC3CD000, "accounts/request-access", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  accessKeys = [(ACAccountType *)v8 accessKeys];
  v13 = [accessKeys count];

  if (v9 != 0 && v13 == 0)
  {
    v15 = @"Access options are not permitted for this account type. The options argument must be nil.";
LABEL_6:
    v14 = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:v15];
    goto LABEL_7;
  }

  if (!v9 && v13)
  {
    v15 = @"Access options are required for this account type.";
    goto LABEL_6;
  }

LABEL_7:
  v16 = _ACSignpostLogSystem(v14);
  v17 = _ACSignpostCreate(v16);
  v19 = v18;

  v21 = _ACSignpostLogSystem(v20);
  v22 = v21;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 138412546;
    v43 = v8;
    v44 = 2112;
    v45 = v9;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v17, "RequestAccessToAccountType", "%@ : %@", buf, 0x16u);
  }

  v24 = _ACSignpostLogSystem(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v43 = v17;
    v44 = 2112;
    v45 = v8;
    v46 = 2112;
    v47 = v9;
    _os_log_debug_impl(&dword_1AC3CD000, v24, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: RequestAccessToAccountType %@ : %@", buf, 0x20u);
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __69__ACAccountStore_requestAccessToAccountsWithType_options_completion___block_invoke;
  v37[3] = &unk_1E7976098;
  v37[4] = self;
  v39 = v17;
  v40 = v19;
  v25 = v10;
  v38 = v25;
  v26 = MEMORY[0x1AC5B3C70](v37);
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __69__ACAccountStore_requestAccessToAccountsWithType_options_completion___block_invoke_153;
  v33[3] = &unk_1E7975C40;
  v28 = v8;
  v34 = v28;
  v29 = v9;
  v35 = v29;
  v36 = v26;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __69__ACAccountStore_requestAccessToAccountsWithType_options_completion___block_invoke_3;
  v31[3] = &unk_1E79754F0;
  v30 = v36;
  v31[4] = self;
  v32 = v30;
  ac_dispatch_remote(remoteAccountStoreSession, v33, v31);

  os_activity_scope_leave(&state);
}

void __69__ACAccountStore_requestAccessToAccountsWithType_options_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__ACAccountStore_requestAccessToAccountsWithType_options_completion___block_invoke_2;
  block[3] = &unk_1E7976070;
  v11 = *(a1 + 48);
  v12 = a2;
  v9 = v5;
  v10 = *(a1 + 40);
  v7 = v5;
  dispatch_async(v6, block);
}

uint64_t __69__ACAccountStore_requestAccessToAccountsWithType_options_completion___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  Nanoseconds = _ACSignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v3 = _ACSignpostLogSystem(Nanoseconds);
  v4 = v3;
  v5 = *(a1 + 48);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    if (*(a1 + 64))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v7 = *(a1 + 32);
    if (!v7)
    {
      v7 = &stru_1F210E1C8;
    }

    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = *&v7;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v4, OS_SIGNPOST_INTERVAL_END, v5, "RequestAccessToAccountType", "%@%@", &v15, 0x16u);
  }

  v9 = _ACSignpostLogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 48);
    v12 = @"NO";
    v13 = *(a1 + 32);
    if (*(a1 + 64))
    {
      v12 = @"YES";
    }

    v15 = 134218754;
    v16 = v11;
    v14 = &stru_1F210E1C8;
    v17 = 2048;
    v18 = Nanoseconds / 1000000000.0;
    v19 = 2112;
    v20 = v12;
    if (v13)
    {
      v14 = v13;
    }

    v21 = 2112;
    v22 = v14;
    _os_log_debug_impl(&dword_1AC3CD000, v9, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: RequestAccessToAccountType %@%@", &v15, 0x2Au);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 64), *(a1 + 32));
  }

  return result;
}

void __69__ACAccountStore_requestAccessToAccountsWithType_options_completion___block_invoke_153(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__ACAccountStore_requestAccessToAccountsWithType_options_completion___block_invoke_2_154;
  v7[3] = &unk_1E79760E8;
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  [v4 requestAccessForAccountTypeWithIdentifier:v5 options:v6 withHandler:v7];
}

uint64_t __69__ACAccountStore_requestAccessToAccountsWithType_options_completion___block_invoke_2_154(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);
    v6 = 0;
  }

  else
  {
    v6 = [a2 BOOLValue];
    v4 = *(v3 + 16);
    v5 = v3;
    a3 = 0;
  }

  return v4(v5, v6, a3);
}

void __69__ACAccountStore_requestAccessToAccountsWithType_options_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _connectionFailureError];
  (*(v1 + 16))(v1, 0, v2);
}

- (id)accessKeysForAccountType:(id)type
{
  v44 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v5 = _os_activity_create(&dword_1AC3CD000, "accounts/request-access", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    LODWORD(buf) = 138412290;
    *(&buf + 4) = typeCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "AccessKeysForAccountType", "%@", &buf, 0xCu);
  }

  v15 = _ACSignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore accessKeysForAccountType:];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__0;
  v42 = __Block_byref_object_dispose__0;
  v43 = 0;
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __43__ACAccountStore_accessKeysForAccountType___block_invoke;
  v27[3] = &unk_1E7976048;
  v17 = typeCopy;
  v28 = v17;
  p_buf = &buf;
  ac_dispatch_remote_sync(remoteAccountStoreSession, v27, 0);

  Nanoseconds = _ACSignpostGetNanoseconds(v8, v10);
  v19 = _ACSignpostLogSystem(Nanoseconds);
  v20 = v19;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    v21 = *(*(&buf + 1) + 40);
    *v31 = 138412546;
    v32 = v21;
    v33 = 2112;
    v34 = COERCE_DOUBLE(&stru_1F210E1C8);
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v20, OS_SIGNPOST_INTERVAL_END, v8, "AccessKeysForAccountType", "%@%@", v31, 0x16u);
  }

  v23 = _ACSignpostLogSystem(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *v31 = 134218754;
    v26 = *(*(&buf + 1) + 40);
    v32 = v8;
    v33 = 2048;
    v34 = Nanoseconds / 1000000000.0;
    v35 = 2112;
    v36 = v26;
    v37 = 2112;
    v38 = &stru_1F210E1C8;
    _os_log_debug_impl(&dword_1AC3CD000, v23, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AccessKeysForAccountType %@%@", v31, 0x2Au);
  }

  v24 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  os_activity_scope_leave(&state);

  return v24;
}

uint64_t __43__ACAccountStore_accessKeysForAccountType___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__ACAccountStore_accessKeysForAccountType___block_invoke_2;
  v4[3] = &unk_1E79761D8;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [a2 accessKeysForAccountType:v2 handler:v4];
}

void __43__ACAccountStore_accessKeysForAccountType___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = _ACLogSystem(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (id)appPermissionsForAccountType:(id)type
{
  v44 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v5 = _os_activity_create(&dword_1AC3CD000, "accounts/app-permissions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    LODWORD(buf) = 138412290;
    *(&buf + 4) = typeCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "AppPermissionsForAccountType", "%@", &buf, 0xCu);
  }

  v15 = _ACSignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore appPermissionsForAccountType:];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__0;
  v42 = __Block_byref_object_dispose__0;
  v43 = 0;
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __47__ACAccountStore_appPermissionsForAccountType___block_invoke;
  v27[3] = &unk_1E7976048;
  v17 = typeCopy;
  v28 = v17;
  p_buf = &buf;
  ac_dispatch_remote_sync(remoteAccountStoreSession, v27, 0);

  Nanoseconds = _ACSignpostGetNanoseconds(v8, v10);
  v19 = _ACSignpostLogSystem(Nanoseconds);
  v20 = v19;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    v21 = *(*(&buf + 1) + 40);
    *v31 = 138412546;
    v32 = v21;
    v33 = 2112;
    v34 = COERCE_DOUBLE(&stru_1F210E1C8);
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v20, OS_SIGNPOST_INTERVAL_END, v8, "AppPermissionsForAccountType", "%@%@", v31, 0x16u);
  }

  v23 = _ACSignpostLogSystem(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *v31 = 134218754;
    v26 = *(*(&buf + 1) + 40);
    v32 = v8;
    v33 = 2048;
    v34 = Nanoseconds / 1000000000.0;
    v35 = 2112;
    v36 = v26;
    v37 = 2112;
    v38 = &stru_1F210E1C8;
    _os_log_debug_impl(&dword_1AC3CD000, v23, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AppPermissionsForAccountType %@%@", v31, 0x2Au);
  }

  v24 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  os_activity_scope_leave(&state);

  return v24;
}

uint64_t __47__ACAccountStore_appPermissionsForAccountType___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__ACAccountStore_appPermissionsForAccountType___block_invoke_2;
  v4[3] = &unk_1E7976200;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [a2 appPermissionsForAccountType:v2 withHandler:v4];
}

void __47__ACAccountStore_appPermissionsForAccountType___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = _ACLogSystem(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (void)setPermissionGranted:(BOOL)granted forBundleID:(id)d onAccountType:(id)type
{
  grantedCopy = granted;
  v49 = *MEMORY[0x1E69E9840];
  dCopy = d;
  typeCopy = type;
  v10 = _os_activity_create(&dword_1AC3CD000, "accounts/set-permission-granted", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  v12 = _ACSignpostLogSystem(v11);
  v13 = _ACSignpostCreate(v12);
  v15 = v14;

  v17 = _ACSignpostLogSystem(v16);
  v18 = v17;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    v19 = @"NO";
    *buf = 138412802;
    if (grantedCopy)
    {
      v19 = @"YES";
    }

    v42 = v19;
    v43 = 2112;
    v44 = dCopy;
    v45 = 2112;
    v46 = typeCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v13, "PermitBundleWithAccountType", "%@: %@ -> %@", buf, 0x20u);
  }

  v21 = _ACSignpostLogSystem(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v32 = @"NO";
    *buf = 134218754;
    v42 = v13;
    if (grantedCopy)
    {
      v32 = @"YES";
    }

    v43 = 2112;
    v44 = v32;
    v45 = 2112;
    v46 = dCopy;
    v47 = 2112;
    v48 = typeCopy;
    _os_log_debug_impl(&dword_1AC3CD000, v21, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: PermitBundleWithAccountType %@: %@ -> %@", buf, 0x2Au);
  }

  v22 = dispatch_semaphore_create(0);
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __65__ACAccountStore_setPermissionGranted_forBundleID_onAccountType___block_invoke;
  v35[3] = &unk_1E7976250;
  v39 = grantedCopy;
  v24 = dCopy;
  v36 = v24;
  v25 = typeCopy;
  v37 = v25;
  v38 = v22;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __65__ACAccountStore_setPermissionGranted_forBundleID_onAccountType___block_invoke_158;
  v33[3] = &unk_1E7976278;
  v26 = v38;
  v34 = v26;
  ac_dispatch_remote(remoteAccountStoreSession, v35, v33);

  dispatch_semaphore_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
  Nanoseconds = _ACSignpostGetNanoseconds(v13, v15);
  v28 = _ACSignpostLogSystem(Nanoseconds);
  v29 = v28;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v29, OS_SIGNPOST_INTERVAL_END, v13, "PermitBundleWithAccountType", &unk_1AC43804B, buf, 2u);
  }

  v31 = _ACSignpostLogSystem(v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore setPermissionGranted:forBundleID:onAccountType:];
  }

  os_activity_scope_leave(&state);
}

void __65__ACAccountStore_setPermissionGranted_forBundleID_onAccountType___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = *(a1 + 56);
  v5 = a2;
  v6 = [v3 numberWithBool:v4];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__ACAccountStore_setPermissionGranted_forBundleID_onAccountType___block_invoke_2;
  v9[3] = &unk_1E7976228;
  v10 = *(a1 + 48);
  [v5 setPermissionGranted:v6 forBundleID:v7 onAccountType:v8 withHandler:v9];
}

void __65__ACAccountStore_setPermissionGranted_forBundleID_onAccountType___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = _ACLogSystem(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)clearAllPermissionsGrantedForAccountType:(id)type
{
  v33 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v5 = _os_activity_create(&dword_1AC3CD000, "accounts/clear-permission-granted", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    *buf = 138412290;
    v32 = typeCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "ClearPermissionsForAccountType", "%@", buf, 0xCu);
  }

  v15 = _ACSignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore clearAllPermissionsGrantedForAccountType:];
  }

  v16 = dispatch_semaphore_create(0);
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __59__ACAccountStore_clearAllPermissionsGrantedForAccountType___block_invoke;
  v27[3] = &unk_1E79762A0;
  v18 = typeCopy;
  v28 = v18;
  v29 = v16;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __59__ACAccountStore_clearAllPermissionsGrantedForAccountType___block_invoke_159;
  v25[3] = &unk_1E7976278;
  v19 = v29;
  v26 = v19;
  ac_dispatch_remote(remoteAccountStoreSession, v27, v25);

  dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
  Nanoseconds = _ACSignpostGetNanoseconds(v8, v10);
  v21 = _ACSignpostLogSystem(Nanoseconds);
  v22 = v21;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v22, OS_SIGNPOST_INTERVAL_END, v8, "ClearPermissionsForAccountType", &unk_1AC43804B, buf, 2u);
  }

  v24 = _ACSignpostLogSystem(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore clearAllPermissionsGrantedForAccountType:];
  }

  os_activity_scope_leave(&state);
}

void __59__ACAccountStore_clearAllPermissionsGrantedForAccountType___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__ACAccountStore_clearAllPermissionsGrantedForAccountType___block_invoke_2;
  v4[3] = &unk_1E7976228;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 clearAllPermissionsGrantedForAccountType:v3 withHandler:v4];
}

void __59__ACAccountStore_clearAllPermissionsGrantedForAccountType___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = _ACLogSystem(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)permissionForAccountType:(id)type
{
  v41 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v5 = _os_activity_create(&dword_1AC3CD000, "accounts/permission-for-type", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    LODWORD(buf) = 138412290;
    *(&buf + 4) = typeCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PermissionForAccountType", "%@", &buf, 0xCu);
  }

  v15 = _ACSignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore permissionForAccountType:];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v39 = 0x2020000000;
  v40 = 0;
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __43__ACAccountStore_permissionForAccountType___block_invoke;
  v28[3] = &unk_1E7976048;
  v17 = typeCopy;
  v29 = v17;
  p_buf = &buf;
  ac_dispatch_remote_sync(remoteAccountStoreSession, v28, 0);

  Nanoseconds = _ACSignpostGetNanoseconds(v8, v10);
  v19 = _ACSignpostLogSystem(Nanoseconds);
  v20 = v19;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    if (*(*(&buf + 1) + 24))
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    *v32 = 138543362;
    v33 = v21;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v20, OS_SIGNPOST_INTERVAL_END, v8, "PermissionForAccountType", "%{public}@", v32, 0xCu);
  }

  v23 = _ACSignpostLogSystem(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v26 = *(*(&buf + 1) + 24);
    *v32 = 134218498;
    v33 = v8;
    if (v26)
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    v34 = 2048;
    v35 = Nanoseconds / 1000000000.0;
    v36 = 2114;
    v37 = v27;
    _os_log_debug_impl(&dword_1AC3CD000, v23, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: PermissionForAccountType %{public}@", v32, 0x20u);
  }

  v24 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  return v24 & 1;
}

uint64_t __43__ACAccountStore_permissionForAccountType___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__ACAccountStore_permissionForAccountType___block_invoke_2;
  v4[3] = &unk_1E79762C8;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [a2 permissionForAccountType:v2 withHandler:v4];
}

void __43__ACAccountStore_permissionForAccountType___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = _ACLogSystem(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  }
}

- (id)grantedPermissionsForAccountType:(id)type
{
  v44 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v5 = _os_activity_create(&dword_1AC3CD000, "accounts/granted-permissions-for-type", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    LODWORD(buf) = 138412290;
    *(&buf + 4) = typeCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "GrantedPermissionsForAccountType", "%@", &buf, 0xCu);
  }

  v15 = _ACSignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore grantedPermissionsForAccountType:];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__0;
  v42 = __Block_byref_object_dispose__0;
  v43 = 0;
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __51__ACAccountStore_grantedPermissionsForAccountType___block_invoke;
  v27[3] = &unk_1E7976048;
  v17 = typeCopy;
  v28 = v17;
  p_buf = &buf;
  ac_dispatch_remote_sync(remoteAccountStoreSession, v27, 0);

  Nanoseconds = _ACSignpostGetNanoseconds(v8, v10);
  v19 = _ACSignpostLogSystem(Nanoseconds);
  v20 = v19;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    v21 = *(*(&buf + 1) + 40);
    *v31 = 138412546;
    v32 = v21;
    v33 = 2112;
    v34 = COERCE_DOUBLE(&stru_1F210E1C8);
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v20, OS_SIGNPOST_INTERVAL_END, v8, "GrantedPermissionsForAccountType", "%@%@", v31, 0x16u);
  }

  v23 = _ACSignpostLogSystem(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *v31 = 134218754;
    v26 = *(*(&buf + 1) + 40);
    v32 = v8;
    v33 = 2048;
    v34 = Nanoseconds / 1000000000.0;
    v35 = 2112;
    v36 = v26;
    v37 = 2112;
    v38 = &stru_1F210E1C8;
    _os_log_debug_impl(&dword_1AC3CD000, v23, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: GrantedPermissionsForAccountType %@%@", v31, 0x2Au);
  }

  v24 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  os_activity_scope_leave(&state);

  return v24;
}

uint64_t __51__ACAccountStore_grantedPermissionsForAccountType___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__ACAccountStore_grantedPermissionsForAccountType___block_invoke_2;
  v4[3] = &unk_1E79761D8;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [a2 grantedPermissionsForAccountType:v2 withHandler:v4];
}

void __51__ACAccountStore_grantedPermissionsForAccountType___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = _ACLogSystem(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (void)clearGrantedPermissionsForAccountType:(id)type
{
  v33 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v5 = _os_activity_create(&dword_1AC3CD000, "accounts/clear-granted-permissions-for-type", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    *buf = 138412290;
    v32 = typeCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "ClearGrantedPermissionsForAccountType", "%@", buf, 0xCu);
  }

  v15 = _ACSignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore clearGrantedPermissionsForAccountType:];
  }

  v16 = dispatch_semaphore_create(0);
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __56__ACAccountStore_clearGrantedPermissionsForAccountType___block_invoke;
  v27[3] = &unk_1E79762A0;
  v18 = typeCopy;
  v28 = v18;
  v29 = v16;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __56__ACAccountStore_clearGrantedPermissionsForAccountType___block_invoke_160;
  v25[3] = &unk_1E7976278;
  v19 = v29;
  v26 = v19;
  ac_dispatch_remote(remoteAccountStoreSession, v27, v25);

  dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
  Nanoseconds = _ACSignpostGetNanoseconds(v8, v10);
  v21 = _ACSignpostLogSystem(Nanoseconds);
  v22 = v21;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v22, OS_SIGNPOST_INTERVAL_END, v8, "ClearGrantedPermissionsForAccountType", &unk_1AC43804B, buf, 2u);
  }

  v24 = _ACSignpostLogSystem(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore clearGrantedPermissionsForAccountType:];
  }

  os_activity_scope_leave(&state);
}

void __56__ACAccountStore_clearGrantedPermissionsForAccountType___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__ACAccountStore_clearGrantedPermissionsForAccountType___block_invoke_2;
  v4[3] = &unk_1E7976278;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 clearGrantedPermissionsForAccountType:v3 withHandler:v4];
}

void __56__ACAccountStore_clearGrantedPermissionsForAccountType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _ACLogSystem(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)verifyCredentialsForAccount:(id)account saveWhenAuthorized:(BOOL)authorized withHandler:(id)handler
{
  authorizedCopy = authorized;
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = @"ACShouldSave";
  v8 = MEMORY[0x1E696AD98];
  handlerCopy = handler;
  accountCopy = account;
  v11 = [v8 numberWithBool:authorizedCopy];
  v14[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [(ACAccountStore *)self verifyCredentialsForAccount:accountCopy options:v12 completion:handlerCopy];
}

- (void)verifyCredentialsForAccount:(id)account options:(id)options completion:(id)completion
{
  v59 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  optionsCopy = options;
  completionCopy = completion;
  v11 = _os_activity_create(&dword_1AC3CD000, "accounts/verify-credentials", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  if (!accountCopy)
  {
    v39 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Account must be non-nil" userInfo:0];
    objc_exception_throw(v39);
  }

  v40 = completionCopy;
  [accountCopy _setAccountStore:self];
  v12 = [(ACAccountStore *)self _sanitizeOptionsDictionary:optionsCopy];

  v14 = _ACSignpostLogSystem(v13);
  v15 = _ACSignpostCreate(v14);
  v17 = v16;

  v19 = _ACSignpostLogSystem(v18);
  v20 = v19;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    accountType = [accountCopy accountType];
    identifier = [accountType identifier];
    v23 = [v12 objectForKeyedSubscript:@"ACShouldSave"];
    bOOLValue = [v23 BOOLValue];
    *buf = 138543874;
    v54 = identifier;
    v55 = 1026;
    *v56 = bOOLValue;
    *&v56[4] = 2112;
    *&v56[6] = accountCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v15, "VerifyCredentials", " AccountType=%{public,signpost.telemetry:string1,name=AccountType}@  ShouldSave=%{public,signpost.telemetry:number1,name=ShouldSave}d  enableTelemetry=YES (account: %@)", buf, 0x1Cu);
  }

  v26 = _ACSignpostLogSystem(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    accountType2 = [accountCopy accountType];
    identifier2 = [accountType2 identifier];
    v37 = [v12 objectForKeyedSubscript:@"ACShouldSave"];
    bOOLValue2 = [v37 BOOLValue];
    *buf = 134218754;
    v54 = v15;
    v55 = 2114;
    *v56 = identifier2;
    *&v56[8] = 1026;
    *&v56[10] = bOOLValue2;
    v57 = 2112;
    v58 = accountCopy;
    _os_log_debug_impl(&dword_1AC3CD000, v26, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: VerifyCredentials  AccountType=%{public,signpost.telemetry:string1,name=AccountType}@  ShouldSave=%{public,signpost.telemetry:number1,name=ShouldSave}d  enableTelemetry=YES (account: %@)", buf, 0x26u);
  }

  v28 = _ACLogSystem(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v54 = accountCopy;
    _os_log_impl(&dword_1AC3CD000, v28, OS_LOG_TYPE_DEFAULT, "Starting credential verification for account %@.", buf, 0xCu);
  }

  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __65__ACAccountStore_verifyCredentialsForAccount_options_completion___block_invoke;
  v48[3] = &unk_1E7975BF0;
  v48[4] = self;
  v50 = v15;
  v51 = v17;
  v29 = v40;
  v49 = v29;
  v30 = MEMORY[0x1AC5B3C70](v48);
  longLivedRemoteAccountStoreSession = [(ACAccountStore *)self longLivedRemoteAccountStoreSession];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __65__ACAccountStore_verifyCredentialsForAccount_options_completion___block_invoke_163;
  v43[3] = &unk_1E7975D30;
  v32 = accountCopy;
  v44 = v32;
  v33 = v12;
  v45 = v33;
  selfCopy = self;
  v47 = v30;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __65__ACAccountStore_verifyCredentialsForAccount_options_completion___block_invoke_3;
  v41[3] = &unk_1E79754F0;
  v34 = v47;
  v41[4] = self;
  v42 = v34;
  ac_dispatch_remote(longLivedRemoteAccountStoreSession, v43, v41);

  os_activity_scope_leave(&state);
}

void __65__ACAccountStore_verifyCredentialsForAccount_options_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _ACLogSystem(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_1AC3CD000, v7, OS_LOG_TYPE_DEFAULT, "Completed account credential verification: %@ - %@.", buf, 0x16u);
  }

  v8 = *(*(a1 + 32) + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__ACAccountStore_verifyCredentialsForAccount_options_completion___block_invoke_162;
  block[3] = &unk_1E79762F0;
  v16 = *(a1 + 48);
  v13 = v6;
  v9 = *(a1 + 40);
  v14 = v5;
  v15 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v8, block);
}

uint64_t __65__ACAccountStore_verifyCredentialsForAccount_options_completion___block_invoke_162(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  Nanoseconds = _ACSignpostGetNanoseconds(a1[7], a1[8]);
  v3 = _ACSignpostLogSystem(Nanoseconds);
  v4 = v3;
  v5 = a1[7];
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    if (a1[4])
    {
      v6 = @"NO";
    }

    else
    {
      v6 = @"YES";
    }

    v13 = 138543362;
    v14 = v6;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v4, OS_SIGNPOST_INTERVAL_END, v5, "VerifyCredentials", "%{public}@", &v13, 0xCu);
  }

  v8 = _ACSignpostLogSystem(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = a1[7];
    v11 = a1[4];
    v13 = 134218498;
    v14 = v10;
    if (v11)
    {
      v12 = @"NO";
    }

    else
    {
      v12 = @"YES";
    }

    v15 = 2048;
    v16 = Nanoseconds / 1000000000.0;
    v17 = 2114;
    v18 = v12;
    _os_log_debug_impl(&dword_1AC3CD000, v8, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: VerifyCredentials %{public}@", &v13, 0x20u);
  }

  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[5], a1[4]);
  }

  return result;
}

void __65__ACAccountStore_verifyCredentialsForAccount_options_completion___block_invoke_163(void *a1, void *a2)
{
  v5 = a1[4];
  v4 = a1[5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__ACAccountStore_verifyCredentialsForAccount_options_completion___block_invoke_2;
  v9[3] = &unk_1E7975C68;
  v6 = v4;
  v7 = a1[6];
  v8 = a1[7];
  v10 = v6;
  v11 = v7;
  v12 = v8;
  [a2 verifyCredentialsForAccount:v5 options:v6 completion:v9];
}

void __65__ACAccountStore_verifyCredentialsForAccount_options_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:@"ACShouldSave"];
  v8 = [v7 BOOLValue];

  if (!v6 && v8)
  {
    [v11 _clearCachedCredentials];
  }

  [v11 _setAccountStore:*(a1 + 40)];
  v9 = *(a1 + 48);
  v10 = [*(a1 + 40) _unsanitizeError:v6];

  (*(v9 + 16))(v9, v11, v10);
}

void __65__ACAccountStore_verifyCredentialsForAccount_options_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _connectionFailureError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)renewCredentialsForAccount:(id)account options:(id)options completion:(id)completion
{
  v70 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  optionsCopy = options;
  completionCopy = completion;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v48 = _os_activity_create(&dword_1AC3CD000, "accounts/renew-credentials", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v48, &state);
  if (!accountCopy)
  {
    v47 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Account must be non-nil" userInfo:0];
    objc_exception_throw(v47);
  }

  accountStore = [accountCopy accountStore];
  if (accountStore)
  {
    accountStore2 = [accountCopy accountStore];
    v12 = [accountStore2 isEqual:self];

    if ((v12 & 1) == 0)
    {
      v14 = _ACLogSystem(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        accountStore3 = [accountCopy accountStore];
        *buf = 138412802;
        v64 = accountCopy;
        v65 = 2112;
        *v66 = accountStore3;
        *&v66[8] = 2112;
        *v67 = self;
        _os_log_error_impl(&dword_1AC3CD000, v14, OS_LOG_TYPE_ERROR, "Account %@ associated with store %@, renewing credentials on store %@", buf, 0x20u);
      }
    }
  }

  [accountCopy _setAccountStore:self];
  v15 = [(ACAccountStore *)self _sanitizeOptionsDictionary:optionsCopy];

  v17 = _ACSignpostLogSystem(v16);
  v18 = _ACSignpostCreate(v17);
  v49 = v19;
  v20 = v18;

  v22 = _ACSignpostLogSystem(v21);
  v23 = v22;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    accountType = [accountCopy accountType];
    identifier = [accountType identifier];
    v26 = [v15 objectForKeyedSubscript:@"ShouldForce"];
    bOOLValue = [v26 BOOLValue];
    v28 = [v15 objectForKeyedSubscript:@"ShouldAvoidUI"];
    bOOLValue2 = [v28 BOOLValue];
    *buf = 138544130;
    v64 = identifier;
    v65 = 1026;
    *v66 = bOOLValue;
    *&v66[4] = 1026;
    *&v66[6] = bOOLValue2;
    *v67 = 2112;
    *&v67[2] = accountCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v20, "RenewCredentials", " AccountType=%{public,signpost.telemetry:string1,name=AccountType}@  ShouldForce=%{public,signpost.telemetry:number1,name=ShouldForce}d  ShouldAvoidUI=%{public,signpost.telemetry:number2,name=ShouldAvoidUI}d  enableTelemetry=YES (account: %@)", buf, 0x22u);
  }

  v31 = _ACSignpostLogSystem(v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    accountType2 = [accountCopy accountType];
    identifier2 = [accountType2 identifier];
    v42 = [v15 objectForKeyedSubscript:@"ShouldForce"];
    bOOLValue3 = [v42 BOOLValue];
    v44 = [v15 objectForKeyedSubscript:@"ShouldAvoidUI"];
    bOOLValue4 = [v44 BOOLValue];
    *buf = 134219010;
    v64 = v20;
    v65 = 2114;
    *v66 = identifier2;
    *&v66[8] = 1026;
    *v67 = bOOLValue3;
    *&v67[4] = 1026;
    *&v67[6] = bOOLValue4;
    v68 = 2112;
    v69 = accountCopy;
    _os_log_debug_impl(&dword_1AC3CD000, v31, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: RenewCredentials  AccountType=%{public,signpost.telemetry:string1,name=AccountType}@  ShouldForce=%{public,signpost.telemetry:number1,name=ShouldForce}d  ShouldAvoidUI=%{public,signpost.telemetry:number2,name=ShouldAvoidUI}d  enableTelemetry=YES (account: %@)", buf, 0x2Cu);
  }

  v33 = _ACLogSystem(v32);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v64 = accountCopy;
    _os_log_impl(&dword_1AC3CD000, v33, OS_LOG_TYPE_DEFAULT, "Starting credential renewal for account %@.", buf, 0xCu);
  }

  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __64__ACAccountStore_renewCredentialsForAccount_options_completion___block_invoke;
  v58[3] = &unk_1E7976340;
  v58[4] = self;
  v60 = v20;
  v61 = v49;
  v34 = completionCopy;
  v59 = v34;
  v35 = MEMORY[0x1AC5B3C70](v58);
  longLivedRemoteAccountStoreSession = [(ACAccountStore *)self longLivedRemoteAccountStoreSession];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __64__ACAccountStore_renewCredentialsForAccount_options_completion___block_invoke_166;
  v53[3] = &unk_1E7976390;
  v37 = accountCopy;
  v54 = v37;
  v38 = v15;
  v55 = v38;
  selfCopy = self;
  v57 = v35;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __64__ACAccountStore_renewCredentialsForAccount_options_completion___block_invoke_3;
  v51[3] = &unk_1E79754F0;
  v39 = v57;
  v51[4] = self;
  v52 = v39;
  ac_dispatch_remote(longLivedRemoteAccountStoreSession, v53, v51);

  os_activity_scope_leave(&state);
}

void __64__ACAccountStore_renewCredentialsForAccount_options_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _ACLogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v16 = a2;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_1AC3CD000, v6, OS_LOG_TYPE_DEFAULT, "Completed account credential renewal: %ld - %@.", buf, 0x16u);
  }

  v7 = *(*(a1 + 32) + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__ACAccountStore_renewCredentialsForAccount_options_completion___block_invoke_164;
  block[3] = &unk_1E7976318;
  v13 = *(a1 + 48);
  v14 = a2;
  v8 = *(a1 + 40);
  v11 = v5;
  v12 = v8;
  v9 = v5;
  dispatch_async(v7, block);
}

uint64_t __64__ACAccountStore_renewCredentialsForAccount_options_completion___block_invoke_164(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  Nanoseconds = _ACSignpostGetNanoseconds(a1[6], a1[7]);
  v3 = _ACSignpostLogSystem(Nanoseconds);
  v4 = v3;
  v5 = a1[6];
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    if (a1[8])
    {
      v6 = @"NO";
    }

    else
    {
      v6 = @"YES";
    }

    v13 = 138543362;
    v14 = v6;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v4, OS_SIGNPOST_INTERVAL_END, v5, "RenewCredentials", "%{public}@", &v13, 0xCu);
  }

  v8 = _ACSignpostLogSystem(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = a1[6];
    v11 = a1[8];
    v13 = 134218498;
    v14 = v10;
    if (v11)
    {
      v12 = @"NO";
    }

    else
    {
      v12 = @"YES";
    }

    v15 = 2048;
    v16 = Nanoseconds / 1000000000.0;
    v17 = 2114;
    v18 = v12;
    _os_log_debug_impl(&dword_1AC3CD000, v8, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: RenewCredentials %{public}@", &v13, 0x20u);
  }

  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, a1[8], a1[4]);
  }

  return result;
}

void __64__ACAccountStore_renewCredentialsForAccount_options_completion___block_invoke_166(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__ACAccountStore_renewCredentialsForAccount_options_completion___block_invoke_2;
  v7[3] = &unk_1E7976368;
  v8 = v4;
  v6 = *(a1 + 56);
  v9 = *(a1 + 48);
  v10 = v6;
  [a2 renewCredentialsForAccount:v8 options:v5 completion:v7];
}

void __64__ACAccountStore_renewCredentialsForAccount_options_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 _clearCachedCredentials];
  v8 = *(a1 + 48);
  v9 = [v7 intValue];

  v10 = [*(a1 + 40) _unsanitizeError:v6];

  (*(v8 + 16))(v8, v9, v10);
}

void __64__ACAccountStore_renewCredentialsForAccount_options_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _connectionFailureError];
  (*(v1 + 16))(v1, 2, v2);
}

- (void)renewCredentialsForAccount:(id)account force:(BOOL)force reason:(id)reason completion:(id)completion
{
  forceCopy = force;
  accountCopy = account;
  reasonCopy = reason;
  completionCopy = completion;
  v12 = objc_opt_new();
  v13 = [MEMORY[0x1E696AD98] numberWithBool:forceCopy];
  [v12 setObject:v13 forKey:@"ShouldForce"];

  if (reasonCopy)
  {
    [v12 setObject:reasonCopy forKey:@"ReasonString"];
  }

  [(ACAccountStore *)self renewCredentialsForAccount:accountCopy options:v12 completion:completionCopy];
}

- (void)renewCredentialsForAccount:(id)account services:(id)services completion:(id)completion
{
  completionCopy = completion;
  servicesCopy = services;
  accountCopy = account;
  v11 = objc_opt_new();
  [v11 setObject:servicesCopy forKey:@"Services"];

  [(ACAccountStore *)self renewCredentialsForAccount:accountCopy options:v11 completion:completionCopy];
}

- (void)migrateCredentialForAccount:(id)account completion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1AC3CD000, "accounts/migrate-credentials", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  if (!accountCopy)
  {
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Account must be non-nil" userInfo:0];
    objc_exception_throw(v21);
  }

  accountStore = [accountCopy accountStore];
  if (accountStore)
  {
    accountStore2 = [accountCopy accountStore];
    v11 = [accountStore2 isEqual:self];

    if ((v11 & 1) == 0)
    {
      v13 = _ACLogSystem(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        accountStore3 = [accountCopy accountStore];
        *buf = 138412802;
        v32 = accountCopy;
        v33 = 2112;
        v34 = accountStore3;
        v35 = 2112;
        selfCopy = self;
        _os_log_error_impl(&dword_1AC3CD000, v13, OS_LOG_TYPE_ERROR, "Account %@ associated with store %@, renewing credentials on store %@", buf, 0x20u);
      }
    }
  }

  v14 = _ACLogSystem([accountCopy _setAccountStore:self]);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = accountCopy;
    _os_log_impl(&dword_1AC3CD000, v14, OS_LOG_TYPE_DEFAULT, "Starting credential migration for account %@.", buf, 0xCu);
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __57__ACAccountStore_migrateCredentialForAccount_completion___block_invoke;
  v28[3] = &unk_1E79763E0;
  v28[4] = self;
  v15 = completionCopy;
  v29 = v15;
  v16 = MEMORY[0x1AC5B3C70](v28);
  longLivedRemoteAccountStoreSession = [(ACAccountStore *)self longLivedRemoteAccountStoreSession];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __57__ACAccountStore_migrateCredentialForAccount_completion___block_invoke_2;
  v24[3] = &unk_1E7976430;
  v18 = accountCopy;
  v25 = v18;
  selfCopy2 = self;
  v27 = v16;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __57__ACAccountStore_migrateCredentialForAccount_completion___block_invoke_4;
  v22[3] = &unk_1E79754F0;
  v19 = v27;
  v22[4] = self;
  v23 = v19;
  ac_dispatch_remote(longLivedRemoteAccountStoreSession, v24, v22);

  os_activity_scope_leave(&state);
}

void __57__ACAccountStore_migrateCredentialForAccount_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _ACLogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    *buf = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_1AC3CD000, v6, OS_LOG_TYPE_DEFAULT, "Completed account credential migration: %@ - %@.", buf, 0x16u);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 80);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__ACAccountStore_migrateCredentialForAccount_completion___block_invoke_167;
    block[3] = &unk_1E79763B8;
    v12 = v8;
    v13 = a2;
    v11 = v5;
    dispatch_async(v9, block);
  }
}

void __57__ACAccountStore_migrateCredentialForAccount_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__ACAccountStore_migrateCredentialForAccount_completion___block_invoke_3;
  v6[3] = &unk_1E7976408;
  v7 = v4;
  v5 = *(a1 + 48);
  v8 = *(a1 + 40);
  v9 = v5;
  [a2 migrateCredentialForAccount:v7 completion:v6];
}

void __57__ACAccountStore_migrateCredentialForAccount_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 _clearCachedCredentials];
  v7 = *(a1 + 48);
  v8 = [*(a1 + 40) _unsanitizeError:v6];

  (*(v7 + 16))(v7, a2, v8);
}

void __57__ACAccountStore_migrateCredentialForAccount_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _connectionFailureError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)runAccountMigrationPlugins:(id)plugins
{
  pluginsCopy = plugins;
  v5 = _os_activity_create(&dword_1AC3CD000, "accounts/migrate-accounts", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v7 = _ACLogSystem(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AC3CD000, v7, OS_LOG_TYPE_DEFAULT, "Starting account migration plugins", buf, 2u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __45__ACAccountStore_runAccountMigrationPlugins___block_invoke;
  v16[3] = &unk_1E79763E0;
  v16[4] = self;
  v8 = pluginsCopy;
  v17 = v8;
  v9 = MEMORY[0x1AC5B3C70](v16);
  longLivedRemoteAccountStoreSession = [(ACAccountStore *)self longLivedRemoteAccountStoreSession];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __45__ACAccountStore_runAccountMigrationPlugins___block_invoke_2;
  v14[3] = &unk_1E7976480;
  v15 = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__ACAccountStore_runAccountMigrationPlugins___block_invoke_4;
  v12[3] = &unk_1E79754F0;
  v11 = v15;
  v12[4] = self;
  v13 = v11;
  ac_dispatch_remote(longLivedRemoteAccountStoreSession, v14, v12);

  os_activity_scope_leave(&state);
}

void __45__ACAccountStore_runAccountMigrationPlugins___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _ACLogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    *buf = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_1AC3CD000, v6, OS_LOG_TYPE_DEFAULT, "Completed account migration: %@ - %@.", buf, 0x16u);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 80);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__ACAccountStore_runAccountMigrationPlugins___block_invoke_168;
    block[3] = &unk_1E79763B8;
    v12 = v8;
    v13 = a2;
    v11 = v5;
    dispatch_async(v9, block);
  }
}

void __45__ACAccountStore_runAccountMigrationPlugins___block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__ACAccountStore_runAccountMigrationPlugins___block_invoke_3;
  v3[3] = &unk_1E7976458;
  v4 = *(a1 + 32);
  [a2 runAccountMigrationPlugins:v3];
}

void __45__ACAccountStore_runAccountMigrationPlugins___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _connectionFailureError];
  (*(v1 + 16))(v1, 0, v2);
}

- (id)credentialForAccount:(id)account error:(id *)error
{
  v62 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v7 = _os_activity_create(&dword_1AC3CD000, "accounts/credential-for-account", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v9 = _ACSignpostLogSystem(v8);
  v10 = _ACSignpostCreate(v9);
  v12 = v11;

  v14 = _ACSignpostLogSystem(v13);
  v15 = v14;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = accountCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v10, "CredentialForAccount", "%@", &buf, 0xCu);
  }

  v17 = _ACSignpostLogSystem(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore credentialForAccount:error:];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__0;
  v60 = __Block_byref_object_dispose__0;
  _cache = [(ACAccountStore *)self _cache];
  credentialCache = [_cache credentialCache];
  v61 = [credentialCache cachedCredentialForAccount:accountCopy serviceID:0];

  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__0;
  v46 = __Block_byref_object_dispose__0;
  v47 = 0;
  if (*(*(&buf + 1) + 40))
  {
    v21 = _ACLogSystem(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [ACAccountStore credentialForAccount:error:];
    }
  }

  else
  {
    remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __45__ACAccountStore_credentialForAccount_error___block_invoke;
    v38[3] = &unk_1E7975B78;
    v39 = accountCopy;
    v40 = &v42;
    p_buf = &buf;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __45__ACAccountStore_credentialForAccount_error___block_invoke_170;
    v37[3] = &unk_1E7975BA0;
    v37[4] = self;
    v37[5] = &v42;
    ac_dispatch_remote_sync(remoteAccountStoreSession, v38, v37);

    v21 = v39;
  }

  [*(*(&buf + 1) + 40) _setOwningAccount:accountCopy];
  if (*(*(&buf + 1) + 40))
  {
    _cache2 = [(ACAccountStore *)self _cache];
    credentialCache2 = [_cache2 credentialCache];
    [credentialCache2 cacheCredential:*(*(&buf + 1) + 40) forAccount:accountCopy serviceID:0];
  }

  if (error)
  {
    *error = v43[5];
  }

  Nanoseconds = _ACSignpostGetNanoseconds(v10, v12);
  v26 = _ACSignpostLogSystem(Nanoseconds);
  v27 = v26;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    v28 = *(*(&buf + 1) + 40);
    v29 = v43[5];
    if (*&v29 == 0.0)
    {
      *&v29 = COERCE_DOUBLE(&stru_1F210E1C8);
    }

    *v49 = 138412546;
    v50 = v28;
    v51 = 2112;
    v52 = *&v29;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v27, OS_SIGNPOST_INTERVAL_END, v10, "CredentialForAccount", "%@%@", v49, 0x16u);
  }

  v31 = _ACSignpostLogSystem(v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    v34 = *(*(&buf + 1) + 40);
    v35 = v43[5];
    *v49 = 134218754;
    v50 = v10;
    v51 = 2048;
    v52 = Nanoseconds / 1000000000.0;
    v53 = 2112;
    v54 = v34;
    if (v35)
    {
      v36 = v35;
    }

    else
    {
      v36 = &stru_1F210E1C8;
    }

    v55 = 2112;
    v56 = v36;
    _os_log_debug_impl(&dword_1AC3CD000, v31, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: CredentialForAccount %@%@", v49, 0x2Au);
  }

  v32 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v42, 8);

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  return v32;
}

void __45__ACAccountStore_credentialForAccount_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__ACAccountStore_credentialForAccount_error___block_invoke_2;
  v6[3] = &unk_1E79764A8;
  v7 = *(a1 + 40);
  [v4 credentialForAccountWithIdentifier:v5 handler:v6];
}

void __45__ACAccountStore_credentialForAccount_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = _ACLogSystem(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }

    v10 = 32;
  }

  else
  {
    v10 = 40;
    a3 = a2;
  }

  objc_storeStrong((*(*(a1 + v10) + 8) + 40), a3);
}

uint64_t __45__ACAccountStore_credentialForAccount_error___block_invoke_170(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _connectionFailureError];

  return MEMORY[0x1EEE66BB8]();
}

- (id)credentialForAccount:(id)account serviceID:(id)d error:(id *)error
{
  v66 = *MEMORY[0x1E69E9840];
  *&v8 = COERCE_DOUBLE(account);
  dCopy = d;
  v10 = _os_activity_create(&dword_1AC3CD000, "accounts/credential-for-account", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  v12 = _ACSignpostLogSystem(v11);
  v13 = _ACSignpostCreate(v12);
  v15 = v14;

  v17 = _ACSignpostLogSystem(v16);
  v18 = v17;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 138412546;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = dCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v13, "CredentialForAccountWithServiceID", "%@ : %@", buf, 0x16u);
  }

  v20 = _ACSignpostLogSystem(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    *&buf[4] = v13;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    *&buf[22] = 2112;
    v63 = dCopy;
    _os_log_debug_impl(&dword_1AC3CD000, v20, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: CredentialForAccountWithServiceID %@ : %@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v63 = __Block_byref_object_copy__0;
  v64 = __Block_byref_object_dispose__0;
  _cache = [(ACAccountStore *)self _cache];
  credentialCache = [_cache credentialCache];
  v65 = [credentialCache cachedCredentialForAccount:v8 serviceID:dCopy];

  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__0;
  v51 = __Block_byref_object_dispose__0;
  v52 = 0;
  if (*(*&buf[8] + 40))
  {
    v24 = _ACLogSystem(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = *(*&buf[8] + 40);
      *v54 = 138412802;
      v55 = v25;
      v56 = 2112;
      v57 = *&v8;
      v58 = 2112;
      v59 = dCopy;
      _os_log_debug_impl(&dword_1AC3CD000, v24, OS_LOG_TYPE_DEBUG, "@Returning cached credential %@ for account %@, serviceID %@", v54, 0x20u);
    }
  }

  else
  {
    remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __55__ACAccountStore_credentialForAccount_serviceID_error___block_invoke;
    v42[3] = &unk_1E79764D0;
    v43 = v8;
    v44 = dCopy;
    v45 = &v47;
    v46 = buf;
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __55__ACAccountStore_credentialForAccount_serviceID_error___block_invoke_171;
    v41[3] = &unk_1E7975BA0;
    v41[4] = self;
    v41[5] = &v47;
    ac_dispatch_remote_sync(remoteAccountStoreSession, v42, v41);

    v24 = v43;
  }

  [*(*&buf[8] + 40) _setOwningAccount:v8];
  if (*(*&buf[8] + 40))
  {
    _cache2 = [(ACAccountStore *)self _cache];
    credentialCache2 = [_cache2 credentialCache];
    [credentialCache2 cacheCredential:*(*&buf[8] + 40) forAccount:v8 serviceID:dCopy];
  }

  if (error)
  {
    *error = v48[5];
  }

  Nanoseconds = _ACSignpostGetNanoseconds(v13, v15);
  v30 = _ACSignpostLogSystem(Nanoseconds);
  v31 = v30;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    v32 = *(*&buf[8] + 40);
    v33 = v48[5];
    if (*&v33 == 0.0)
    {
      *&v33 = COERCE_DOUBLE(&stru_1F210E1C8);
    }

    *v54 = 138412546;
    v55 = v32;
    v56 = 2112;
    v57 = *&v33;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v31, OS_SIGNPOST_INTERVAL_END, v13, "CredentialForAccountWithServiceID", "%@%@", v54, 0x16u);
  }

  v35 = _ACSignpostLogSystem(v34);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    v38 = *(*&buf[8] + 40);
    v39 = v48[5];
    *v54 = 134218754;
    v55 = v13;
    v56 = 2048;
    v57 = Nanoseconds / 1000000000.0;
    v58 = 2112;
    v59 = v38;
    if (v39)
    {
      v40 = v39;
    }

    else
    {
      v40 = &stru_1F210E1C8;
    }

    v60 = 2112;
    v61 = v40;
    _os_log_debug_impl(&dword_1AC3CD000, v35, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: CredentialForAccountWithServiceID %@%@", v54, 0x2Au);
  }

  v36 = *(*&buf[8] + 40);
  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(buf, 8);
  os_activity_scope_leave(&state);

  return v36;
}

uint64_t __55__ACAccountStore_credentialForAccount_serviceID_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__ACAccountStore_credentialForAccount_serviceID_error___block_invoke_2;
  v5[3] = &unk_1E79764A8;
  v6 = *(a1 + 48);
  return [a2 credentialForAccount:v2 serviceID:v3 handler:v5];
}

void __55__ACAccountStore_credentialForAccount_serviceID_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = _ACLogSystem(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }

    v10 = 32;
  }

  else
  {
    v10 = 40;
    a3 = a2;
  }

  objc_storeStrong((*(*(a1 + v10) + 8) + 40), a3);
}

uint64_t __55__ACAccountStore_credentialForAccount_serviceID_error___block_invoke_171(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _connectionFailureError];

  return MEMORY[0x1EEE66BB8]();
}

- (void)setCredential:(id)credential forAccount:(id)account serviceID:(id)d error:(id *)error
{
  v62 = *MEMORY[0x1E69E9840];
  credentialCopy = credential;
  accountCopy = account;
  dCopy = d;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v40 = _os_activity_create(&dword_1AC3CD000, "accounts/set-credential-for-account", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v40, &state);
  v14 = _ACSignpostLogSystem(v13);
  v15 = _ACSignpostCreate(v14);
  v17 = v16;

  v19 = _ACSignpostLogSystem(v18);
  v20 = v19;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 138412802;
    *&buf[4] = credentialCopy;
    *&buf[12] = 2112;
    *&buf[14] = accountCopy;
    *&buf[22] = 2112;
    v60 = dCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v15, "SetCredentialForAccountWithServiceID", "%@ -> %@ : %@", buf, 0x20u);
  }

  v22 = _ACSignpostLogSystem(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    *&buf[4] = v15;
    *&buf[12] = 2112;
    *&buf[14] = credentialCopy;
    *&buf[22] = 2112;
    v60 = accountCopy;
    LOWORD(v61) = 2112;
    *(&v61 + 2) = dCopy;
    _os_log_debug_impl(&dword_1AC3CD000, v22, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: SetCredentialForAccountWithServiceID %@ -> %@ : %@", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v60 = __Block_byref_object_copy__0;
  *&v61 = __Block_byref_object_dispose__0;
  *(&v61 + 1) = 0;
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  v25 = identifier == 0;

  if (v25)
  {
    v27 = _ACLogSystem(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      [ACAccountStore setCredential:callStackSymbols forAccount:v58 serviceID:v27 error:?];
    }
  }

  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __59__ACAccountStore_setCredential_forAccount_serviceID_error___block_invoke;
  v43[3] = &unk_1E79764F8;
  v30 = credentialCopy;
  v44 = v30;
  v31 = accountCopy;
  v45 = v31;
  v32 = dCopy;
  selfCopy = self;
  v48 = buf;
  v46 = v32;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __59__ACAccountStore_setCredential_forAccount_serviceID_error___block_invoke_173;
  v42[3] = &unk_1E7975BA0;
  v42[4] = self;
  v42[5] = buf;
  ac_dispatch_remote_sync(remoteAccountStoreSession, v43, v42);

  if (error)
  {
    *error = *(*&buf[8] + 40);
  }

  Nanoseconds = _ACSignpostGetNanoseconds(v15, v17);
  v34 = _ACSignpostLogSystem(Nanoseconds);
  v35 = v34;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
  {
    v36 = *(*&buf[8] + 40);
    if (*&v36 == 0.0)
    {
      *&v36 = COERCE_DOUBLE(&stru_1F210E1C8);
    }

    *v50 = 138412546;
    v51 = @"COMPLETE";
    v52 = 2112;
    v53 = *&v36;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v35, OS_SIGNPOST_INTERVAL_END, v15, "SetCredentialForAccountWithServiceID", "%@%@", v50, 0x16u);
  }

  v38 = _ACSignpostLogSystem(v37);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    v39 = *(*&buf[8] + 40);
    *v50 = 134218754;
    v51 = v15;
    v52 = 2048;
    v53 = Nanoseconds / 1000000000.0;
    v55 = @"COMPLETE";
    v54 = 2112;
    if (!v39)
    {
      v39 = &stru_1F210E1C8;
    }

    v56 = 2112;
    v57 = v39;
    _os_log_debug_impl(&dword_1AC3CD000, v38, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: SetCredentialForAccountWithServiceID %@%@", v50, 0x2Au);
  }

  _Block_object_dispose(buf, 8);
  os_activity_scope_leave(&state);
}

void __59__ACAccountStore_setCredential_forAccount_serviceID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__ACAccountStore_setCredential_forAccount_serviceID_error___block_invoke_2;
  v8[3] = &unk_1E7976020;
  v8[4] = *(a1 + 64);
  [a2 setCredential:v3 forAccount:v4 serviceID:v5 completion:v8];
  v6 = [*(a1 + 56) _cache];
  v7 = [v6 credentialCache];
  [v7 clearCachedCredentialsForAccount:*(a1 + 40)];
}

void __59__ACAccountStore_setCredential_forAccount_serviceID_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = _ACLogSystem(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }
}

uint64_t __59__ACAccountStore_setCredential_forAccount_serviceID_error___block_invoke_173(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _connectionFailureError];

  return MEMORY[0x1EEE66BB8]();
}

- (id)allCredentialItems
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = _os_activity_create(&dword_1AC3CD000, "accounts/all-credential-items", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v5 = _ACSignpostLogSystem(v4);
  v6 = _ACSignpostCreate(v5);
  v8 = v7;

  v10 = _ACSignpostLogSystem(v9);
  v11 = v10;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v6, "AllCredentialItems", &unk_1AC43804B, buf, 2u);
  }

  v13 = _ACSignpostLogSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore allCredentialItems];
  }

  *buf = 0;
  v26 = buf;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__0;
  v29 = __Block_byref_object_dispose__0;
  v30 = 0;
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __36__ACAccountStore_allCredentialItems__block_invoke;
  v24[3] = &unk_1E7975D80;
  v24[4] = buf;
  ac_dispatch_remote_sync(remoteAccountStoreSession, v24, 0);

  Nanoseconds = _ACSignpostGetNanoseconds(v6, v8);
  v16 = _ACSignpostLogSystem(Nanoseconds);
  v17 = v16;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    v18 = *(v26 + 5);
    *v32 = 138412546;
    v33 = v18;
    v34 = 2112;
    v35 = COERCE_DOUBLE(&stru_1F210E1C8);
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v17, OS_SIGNPOST_INTERVAL_END, v6, "AllCredentialItems", "%@%@", v32, 0x16u);
  }

  v20 = _ACSignpostLogSystem(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *v32 = 134218754;
    v23 = *(v26 + 5);
    v33 = v6;
    v34 = 2048;
    v35 = Nanoseconds / 1000000000.0;
    v36 = 2112;
    v37 = v23;
    v38 = 2112;
    v39 = &stru_1F210E1C8;
    _os_log_debug_impl(&dword_1AC3CD000, v20, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AllCredentialItems %@%@", v32, 0x2Au);
  }

  v21 = *(v26 + 5);
  _Block_object_dispose(buf, 8);

  os_activity_scope_leave(&state);

  return v21;
}

uint64_t __36__ACAccountStore_allCredentialItems__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__ACAccountStore_allCredentialItems__block_invoke_2;
  v3[3] = &unk_1E7975D58;
  v3[4] = *(a1 + 32);
  return [a2 credentialItemsWithCompletion:v3];
}

void __36__ACAccountStore_allCredentialItems__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = _ACLogSystem(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (id)credentialItemForAccount:(id)account serviceName:(id)name
{
  v49 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  nameCopy = name;
  v8 = _os_activity_create(&dword_1AC3CD000, "accounts/credential-item-for-account", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v10 = _ACSignpostLogSystem(v9);
  v11 = _ACSignpostCreate(v10);
  v13 = v12;

  v15 = _ACSignpostLogSystem(v14);
  v16 = v15;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 138412546;
    *&buf[4] = accountCopy;
    *&buf[12] = 2112;
    *&buf[14] = nameCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "CredentialItemsForAccountWithServiceName", "%@ : %@", buf, 0x16u);
  }

  v18 = _ACSignpostLogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = accountCopy;
    *&buf[22] = 2112;
    v46 = nameCopy;
    _os_log_debug_impl(&dword_1AC3CD000, v18, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: CredentialItemsForAccountWithServiceName %@ : %@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v46 = __Block_byref_object_copy__0;
  v47 = __Block_byref_object_dispose__0;
  v48 = 0;
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __55__ACAccountStore_credentialItemForAccount_serviceName___block_invoke;
  v31[3] = &unk_1E7976548;
  v20 = accountCopy;
  v32 = v20;
  v21 = nameCopy;
  selfCopy = self;
  v35 = buf;
  v33 = v21;
  ac_dispatch_remote_sync(remoteAccountStoreSession, v31, 0);

  Nanoseconds = _ACSignpostGetNanoseconds(v11, v13);
  v23 = _ACSignpostLogSystem(Nanoseconds);
  v24 = v23;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    v25 = *(*&buf[8] + 40);
    *v37 = 138412546;
    v38 = v25;
    v39 = 2112;
    v40 = COERCE_DOUBLE(&stru_1F210E1C8);
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v24, OS_SIGNPOST_INTERVAL_END, v11, "CredentialItemsForAccountWithServiceName", "%@%@", v37, 0x16u);
  }

  v27 = _ACSignpostLogSystem(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    *v37 = 134218754;
    v30 = *(*&buf[8] + 40);
    v38 = v11;
    v39 = 2048;
    v40 = Nanoseconds / 1000000000.0;
    v41 = 2112;
    v42 = v30;
    v43 = 2112;
    v44 = &stru_1F210E1C8;
    _os_log_debug_impl(&dword_1AC3CD000, v27, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: CredentialItemsForAccountWithServiceName %@%@", v37, 0x2Au);
  }

  v28 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  os_activity_scope_leave(&state);

  return v28;
}

uint64_t __55__ACAccountStore_credentialItemForAccount_serviceName___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__ACAccountStore_credentialItemForAccount_serviceName___block_invoke_2;
  v5[3] = &unk_1E7976520;
  v6 = *(a1 + 48);
  return [a2 credentialItemForAccount:v2 serviceName:v3 completion:v5];
}

void __55__ACAccountStore_credentialItemForAccount_serviceName___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = _ACLogSystem(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    [*(*(*(a1 + 40) + 8) + 40) setAccountStore:*(a1 + 32)];
  }
}

- (void)insertCredentialItem:(id)item withCompletionHandler:(id)handler
{
  v47 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_1AC3CD000, "accounts/insert-credential-item", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v10 = _ACSignpostLogSystem(v9);
  v11 = _ACSignpostCreate(v10);
  v13 = v12;

  v15 = _ACSignpostLogSystem(v14);
  v16 = v15;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 138412290;
    v42 = itemCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "InsertCredentialItem", "%@", buf, 0xCu);
  }

  v18 = _ACSignpostLogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore insertCredentialItem:withCompletionHandler:];
  }

  if (!itemCopy)
  {
    v30 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Credential item must be non-nil" userInfo:0];
    objc_exception_throw(v30);
  }

  accountStore = [itemCopy accountStore];
  if (accountStore)
  {
    accountStore2 = [itemCopy accountStore];
    v21 = [accountStore2 isEqual:self];

    if ((v21 & 1) == 0)
    {
      v23 = _ACLogSystem(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        accountStore3 = [itemCopy accountStore];
        *buf = 138412802;
        v42 = itemCopy;
        v43 = 2112;
        v44 = accountStore3;
        v45 = 2112;
        selfCopy = self;
        _os_log_error_impl(&dword_1AC3CD000, v23, OS_LOG_TYPE_ERROR, "Credential item %@ associated with store %@, inserting credential item on store %@", buf, 0x20u);
      }
    }
  }

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __61__ACAccountStore_insertCredentialItem_withCompletionHandler___block_invoke;
  v36[3] = &unk_1E7976098;
  v36[4] = self;
  v38 = v11;
  v39 = v13;
  v24 = handlerCopy;
  v37 = v24;
  v25 = MEMORY[0x1AC5B3C70](v36);
  [itemCopy setAccountStore:self];
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __61__ACAccountStore_insertCredentialItem_withCompletionHandler___block_invoke_181;
  v33[3] = &unk_1E79754C8;
  v27 = itemCopy;
  v34 = v27;
  v35 = v25;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __61__ACAccountStore_insertCredentialItem_withCompletionHandler___block_invoke_3;
  v31[3] = &unk_1E79754F0;
  v28 = v35;
  v31[4] = self;
  v32 = v28;
  ac_dispatch_remote(remoteAccountStoreSession, v33, v31);

  os_activity_scope_leave(&state);
}

void __61__ACAccountStore_insertCredentialItem_withCompletionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__ACAccountStore_insertCredentialItem_withCompletionHandler___block_invoke_2;
  block[3] = &unk_1E7976070;
  v11 = *(a1 + 48);
  v12 = a2;
  v9 = v5;
  v10 = *(a1 + 40);
  v7 = v5;
  dispatch_async(v6, block);
}

uint64_t __61__ACAccountStore_insertCredentialItem_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  Nanoseconds = _ACSignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v3 = _ACSignpostLogSystem(Nanoseconds);
  v4 = v3;
  v5 = *(a1 + 48);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    if (*(a1 + 64))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v7 = *(a1 + 32);
    if (!v7)
    {
      v7 = &stru_1F210E1C8;
    }

    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = *&v7;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v4, OS_SIGNPOST_INTERVAL_END, v5, "InsertCredentialItem", "%@%@", &v15, 0x16u);
  }

  v9 = _ACSignpostLogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 48);
    v12 = @"NO";
    v13 = *(a1 + 32);
    if (*(a1 + 64))
    {
      v12 = @"YES";
    }

    v15 = 134218754;
    v16 = v11;
    v14 = &stru_1F210E1C8;
    v17 = 2048;
    v18 = Nanoseconds / 1000000000.0;
    v19 = 2112;
    v20 = v12;
    if (v13)
    {
      v14 = v13;
    }

    v21 = 2112;
    v22 = v14;
    _os_log_debug_impl(&dword_1AC3CD000, v9, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: InsertCredentialItem %@%@", &v15, 0x2Au);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 64), *(a1 + 32));
  }

  return result;
}

void __61__ACAccountStore_insertCredentialItem_withCompletionHandler___block_invoke_181(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__ACAccountStore_insertCredentialItem_withCompletionHandler___block_invoke_2_182;
  v4[3] = &unk_1E7976570;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 insertCredentialItem:v3 completion:v4];
}

void __61__ACAccountStore_insertCredentialItem_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _connectionFailureError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)saveCredentialItem:(id)item withCompletionHandler:(id)handler
{
  v39 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_1AC3CD000, "accounts/save-credential-item", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  if (!itemCopy)
  {
    v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Credential item must be non-nil" userInfo:0];
    objc_exception_throw(v25);
  }

  v10 = _ACSignpostLogSystem(v9);
  v11 = _ACSignpostCreate(v10);
  v13 = v12;

  v15 = _ACSignpostLogSystem(v14);
  v16 = v15;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 138412290;
    v38 = itemCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "SaveCredentialItem", "%@", buf, 0xCu);
  }

  v18 = _ACSignpostLogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore saveCredentialItem:withCompletionHandler:];
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __59__ACAccountStore_saveCredentialItem_withCompletionHandler___block_invoke;
  v31[3] = &unk_1E7976598;
  v31[4] = self;
  v34 = v11;
  v35 = v13;
  v19 = handlerCopy;
  v33 = v19;
  v20 = itemCopy;
  v32 = v20;
  v21 = MEMORY[0x1AC5B3C70](v31);
  isDirty = [v20 isDirty];
  if (isDirty)
  {
    v23 = _ACLogSystem(isDirty);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [ACAccountStore saveCredentialItem:withCompletionHandler:];
    }

    remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __59__ACAccountStore_saveCredentialItem_withCompletionHandler___block_invoke_183;
    v28[3] = &unk_1E79754C8;
    v29 = v20;
    v30 = v21;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __59__ACAccountStore_saveCredentialItem_withCompletionHandler___block_invoke_2;
    v26[3] = &unk_1E79754F0;
    v26[4] = self;
    v27 = v19;
    ac_dispatch_remote(remoteAccountStoreSession, v28, v26);
  }

  else if (v19)
  {
    (*(v19 + 2))(v19, 1, 0);
  }

  os_activity_scope_leave(&state);
}

void __59__ACAccountStore_saveCredentialItem_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    Nanoseconds = _ACSignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
    v16 = _ACSignpostLogSystem(Nanoseconds);
    v17 = v16;
    v18 = *(a1 + 56);
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      v19 = &stru_1F210E1C8;
      if (v7)
      {
        v19 = v7;
      }

      v26 = 138412546;
      v27 = @"NO";
      v28 = 2112;
      v29 = *&v19;
      _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v17, OS_SIGNPOST_INTERVAL_END, v18, "SaveCredentialItem", "%@%@", &v26, 0x16u);
    }

    v21 = _ACSignpostLogSystem(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v24 = *(a1 + 56);
      v26 = 134218754;
      v27 = v24;
      v25 = &stru_1F210E1C8;
      v28 = 2048;
      v29 = Nanoseconds / 1000000000.0;
      v30 = 2112;
      v31 = @"NO";
      if (v7)
      {
        v25 = v7;
      }

      v32 = 2112;
      v33 = v25;
      _os_log_debug_impl(&dword_1AC3CD000, v21, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: SaveCredentialItem %@%@", &v26, 0x2Au);
    }

    v22 = *(a1 + 48);
    if (v22)
    {
      v23 = [*(a1 + 32) _unsanitizeError:v7];
      (*(v22 + 16))(v22, 0, v23);
    }
  }

  else
  {
    [*(a1 + 40) setAccountStore:*(a1 + 32)];
    [*(a1 + 40) setObjectID:v5];
    [*(a1 + 40) clearDirtyProperties];
    v8 = _ACSignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
    v9 = _ACSignpostLogSystem(v8);
    v10 = v9;
    v11 = *(a1 + 56);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v26 = 138543362;
      v27 = @"YES";
      _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v10, OS_SIGNPOST_INTERVAL_END, v11, "SaveCredentialItem", "%{public}@", &v26, 0xCu);
    }

    v13 = _ACSignpostLogSystem(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __59__ACAccountStore_saveCredentialItem_withCompletionHandler___block_invoke_cold_1();
    }

    v14 = *(a1 + 48);
    if (v14)
    {
      (*(v14 + 16))(v14, 1, 0);
    }
  }
}

void __59__ACAccountStore_saveCredentialItem_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) _connectionFailureError];
    (*(v1 + 16))(v1, 0, v2);
  }
}

- (void)removeCredentialItem:(id)item withCompletionHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_1AC3CD000, "accounts/remove-credential-item", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  if (!itemCopy)
  {
    v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Credential item must be non-nil" userInfo:0];
    objc_exception_throw(v25);
  }

  v10 = _ACSignpostLogSystem(v9);
  v11 = _ACSignpostCreate(v10);
  v13 = v12;

  v15 = _ACSignpostLogSystem(v14);
  v16 = v15;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 138412290;
    v37 = itemCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "RemoveCredentialItem", "%@", buf, 0xCu);
  }

  v18 = _ACSignpostLogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore removeCredentialItem:withCompletionHandler:];
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __61__ACAccountStore_removeCredentialItem_withCompletionHandler___block_invoke;
  v31[3] = &unk_1E7976098;
  v31[4] = self;
  v19 = handlerCopy;
  v32 = v19;
  v33 = v11;
  v34 = v13;
  v20 = MEMORY[0x1AC5B3C70](v31);
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __61__ACAccountStore_removeCredentialItem_withCompletionHandler___block_invoke_184;
  v28[3] = &unk_1E79754C8;
  v22 = itemCopy;
  v29 = v22;
  v23 = v20;
  v30 = v23;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __61__ACAccountStore_removeCredentialItem_withCompletionHandler___block_invoke_2;
  v26[3] = &unk_1E79754F0;
  v24 = v19;
  v26[4] = self;
  v27 = v24;
  ac_dispatch_remote(remoteAccountStoreSession, v28, v26);

  os_activity_scope_leave(&state);
}

void __61__ACAccountStore_removeCredentialItem_withCompletionHandler___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (a1[5])
  {
    v5 = (a1 + 6);
    Nanoseconds = _ACSignpostGetNanoseconds(a1[6], a1[7]);
    v7 = Nanoseconds / 1000000000.0;
    v8 = _ACSignpostLogSystem(Nanoseconds);
    v9 = v8;
    v10 = a1[6];
    v11 = v10 - 1;
    if (v4)
    {
      if (((&(*v5)->isa + 2) == 0 || v11 < 0xFFFFFFFFFFFFFFFDLL) && os_signpost_enabled(v8))
      {
        v18 = 138412546;
        v19 = @"NO";
        v20 = 2112;
        v21 = *&v4;
        _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v9, OS_SIGNPOST_INTERVAL_END, v10, "RemoveCredentialItem", "%@%@", &v18, 0x16u);
      }

      v13 = _ACSignpostLogSystem(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v17 = *v5;
        v18 = 134218754;
        v19 = v17;
        v20 = 2048;
        v21 = v7;
        v22 = 2112;
        v23 = @"NO";
        v24 = 2112;
        v25 = v4;
        _os_log_debug_impl(&dword_1AC3CD000, v13, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: RemoveCredentialItem %@%@", &v18, 0x2Au);
      }

      v14 = *(a1[5] + 16);
    }

    else
    {
      if (((&(*v5)->isa + 2) == 0 || v11 < 0xFFFFFFFFFFFFFFFDLL) && os_signpost_enabled(v8))
      {
        v18 = 138543362;
        v19 = @"YES";
        _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v9, OS_SIGNPOST_INTERVAL_END, v10, "RemoveCredentialItem", "%{public}@", &v18, 0xCu);
      }

      v16 = _ACSignpostLogSystem(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __61__ACAccountStore_removeCredentialItem_withCompletionHandler___block_invoke_cold_1();
      }

      v14 = *(a1[5] + 16);
    }

    v14();
  }
}

void __61__ACAccountStore_removeCredentialItem_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) _connectionFailureError];
    (*(v1 + 16))(v1, 0, v2);
  }
}

- (id)parentAccountForAccount:(id)account error:(id *)error
{
  v59 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v7 = _os_activity_create(&dword_1AC3CD000, "accounts/parent-account-for-account", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__0;
  v48 = __Block_byref_object_dispose__0;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__0;
  v42 = __Block_byref_object_dispose__0;
  v43 = 0;
  identifier = [accountCopy identifier];
  v9 = identifier;
  if (identifier)
  {
    v10 = _ACSignpostLogSystem(identifier);
    v11 = _ACSignpostCreate(v10);
    v13 = v12;

    v15 = _ACSignpostLogSystem(v14);
    v16 = v15;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 138412290;
      v52 = accountCopy;
      _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ParentAccountForAccount", "%@", buf, 0xCu);
    }

    v18 = _ACSignpostLogSystem(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [ACAccountStore parentAccountForAccount:error:];
    }

    remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __48__ACAccountStore_parentAccountForAccount_error___block_invoke;
    v34[3] = &unk_1E7975B78;
    v35 = v9;
    v36 = &v44;
    v37 = &v38;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __48__ACAccountStore_parentAccountForAccount_error___block_invoke_185;
    v33[3] = &unk_1E7975BA0;
    v33[4] = self;
    v33[5] = &v38;
    ac_dispatch_remote_sync(remoteAccountStoreSession, v34, v33);

    [v45[5] _setAccountStore:self];
    if (error)
    {
      *error = v39[5];
    }

    Nanoseconds = _ACSignpostGetNanoseconds(v11, v13);
    v21 = _ACSignpostLogSystem(Nanoseconds);
    v22 = v21;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      v23 = v45[5];
      v24 = v39[5];
      if (*&v24 == 0.0)
      {
        *&v24 = COERCE_DOUBLE(&stru_1F210E1C8);
      }

      *buf = 138412546;
      v52 = v23;
      v53 = 2112;
      v54 = *&v24;
      _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v22, OS_SIGNPOST_INTERVAL_END, v11, "ParentAccountForAccount", "%@%@", buf, 0x16u);
    }

    v26 = _ACSignpostLogSystem(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v30 = v45[5];
      v31 = v39[5];
      *buf = 134218754;
      v52 = v11;
      v53 = 2048;
      v54 = Nanoseconds / 1000000000.0;
      v55 = 2112;
      v56 = v30;
      if (v31)
      {
        v32 = v31;
      }

      else
      {
        v32 = &stru_1F210E1C8;
      }

      v57 = 2112;
      v58 = v32;
      _os_log_debug_impl(&dword_1AC3CD000, v26, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: ParentAccountForAccount %@%@", buf, 0x2Au);
    }

    v27 = v45[5];
  }

  else
  {
    v28 = _ACLogSystem(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [ACAccountStore parentAccountForAccount:error:];
    }

    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.accounts" code:6 userInfo:0];
      *error = v27 = 0;
    }

    else
    {
      v27 = 0;
    }
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  os_activity_scope_leave(&state);

  return v27;
}

uint64_t __48__ACAccountStore_parentAccountForAccount_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__ACAccountStore_parentAccountForAccount_error___block_invoke_2;
  v4[3] = &unk_1E7975B50;
  v5 = *(a1 + 40);
  return [a2 parentAccountForAccountWithIdentifier:v2 handler:v4];
}

void __48__ACAccountStore_parentAccountForAccount_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _ACLogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v7;
}

uint64_t __48__ACAccountStore_parentAccountForAccount_error___block_invoke_185(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _connectionFailureError];

  return MEMORY[0x1EEE66BB8]();
}

- (id)childAccountsForAccount:(id)account error:(id *)error
{
  v71 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v7 = _os_activity_create(&dword_1AC3CD000, "accounts/child-accounts-for-account", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__0;
  v59 = __Block_byref_object_dispose__0;
  v60 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__0;
  v53 = __Block_byref_object_dispose__0;
  v54 = 0;
  identifier = [accountCopy identifier];
  v9 = identifier;
  if (identifier)
  {
    v10 = _ACSignpostLogSystem(identifier);
    spid = _ACSignpostCreate(v10);
    v12 = v11;

    v14 = _ACSignpostLogSystem(v13);
    v15 = v14;
    v38 = spid - 1;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 138412290;
      v63 = accountCopy;
      _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v15, OS_SIGNPOST_INTERVAL_BEGIN, spid, "ChildAccountForAccounts", "%@", buf, 0xCu);
    }

    v17 = _ACSignpostLogSystem(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [ACAccountStore childAccountsForAccount:error:];
    }

    remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __48__ACAccountStore_childAccountsForAccount_error___block_invoke;
    v45[3] = &unk_1E7975B78;
    v46 = v9;
    v47 = &v55;
    v48 = &v49;
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __48__ACAccountStore_childAccountsForAccount_error___block_invoke_186;
    v44[3] = &unk_1E7975BA0;
    v44[4] = self;
    v44[5] = &v49;
    ac_dispatch_remote_sync(remoteAccountStoreSession, v45, v44);

    v19 = accountCopy;
    v20 = v7;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v21 = v56[5];
    v22 = [v21 countByEnumeratingWithState:&v40 objects:v70 count:16];
    if (v22)
    {
      v23 = *v41;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v41 != v23)
          {
            objc_enumerationMutation(v21);
          }

          [*(*(&v40 + 1) + 8 * i) _setAccountStore:{self, v38}];
        }

        v22 = [v21 countByEnumeratingWithState:&v40 objects:v70 count:16];
      }

      while (v22);
    }

    v7 = v20;
    accountCopy = v19;
    if (error)
    {
      *error = v50[5];
    }

    Nanoseconds = _ACSignpostGetNanoseconds(spid, v12);
    v26 = _ACSignpostLogSystem(Nanoseconds);
    v27 = v26;
    if (v38 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      v28 = v56[5];
      v29 = v50[5];
      if (*&v29 == 0.0)
      {
        *&v29 = COERCE_DOUBLE(&stru_1F210E1C8);
      }

      *buf = 138412546;
      v63 = v28;
      v64 = 2112;
      v65 = *&v29;
      _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v27, OS_SIGNPOST_INTERVAL_END, spid, "ChildAccountForAccounts", "%@%@", buf, 0x16u);
    }

    v31 = _ACSignpostLogSystem(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v35 = v56[5];
      v36 = v50[5];
      *buf = 134218754;
      v63 = spid;
      v64 = 2048;
      v65 = Nanoseconds / 1000000000.0;
      v66 = 2112;
      v67 = v35;
      if (v36)
      {
        v37 = v36;
      }

      else
      {
        v37 = &stru_1F210E1C8;
      }

      v68 = 2112;
      v69 = v37;
      _os_log_debug_impl(&dword_1AC3CD000, v31, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: ChildAccountForAccounts %@%@", buf, 0x2Au);
    }

    v32 = v56[5];
  }

  else
  {
    v33 = _ACLogSystem(0);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [ACAccountStore parentAccountForAccount:error:];
    }

    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.accounts" code:6 userInfo:0];
      *error = v32 = 0;
    }

    else
    {
      v32 = 0;
    }
  }

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v55, 8);

  os_activity_scope_leave(&state);

  return v32;
}

uint64_t __48__ACAccountStore_childAccountsForAccount_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__ACAccountStore_childAccountsForAccount_error___block_invoke_2;
  v4[3] = &unk_1E79765C0;
  v5 = *(a1 + 40);
  return [a2 childAccountsForAccountWithIdentifier:v2 handler:v4];
}

void __48__ACAccountStore_childAccountsForAccount_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _ACLogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v7;
}

uint64_t __48__ACAccountStore_childAccountsForAccount_error___block_invoke_186(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _connectionFailureError];

  return MEMORY[0x1EEE66BB8]();
}

- (id)childAccountsForAccount:(id)account withTypeIdentifier:(id)identifier
{
  v27[1] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  identifierCopy = identifier;
  v27[0] = identifierCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v9 = [(ACAccountStore *)self accountsWithAccountTypeIdentifiers:v8 error:0];

  v10 = MEMORY[0x1E696AE18];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __61__ACAccountStore_childAccountsForAccount_withTypeIdentifier___block_invoke;
  v24[3] = &unk_1E79765E8;
  v11 = accountCopy;
  v25 = v11;
  v12 = [v10 predicateWithBlock:v24];
  v13 = [v9 filteredArrayUsingPredicate:v12];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v20 + 1) + 8 * i) _setAccountStore:{self, v20}];
      }

      v16 = [v14 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v16);
  }

  return v14;
}

uint64_t __61__ACAccountStore_childAccountsForAccount_withTypeIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 parentAccountIdentifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (id)enabledDataclassesForAccount:(id)account error:(id *)error
{
  v57 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v7 = _os_activity_create(&dword_1AC3CD000, "accounts/enabled-dataclasses-for-account", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v9 = _ACSignpostLogSystem(v8);
  v10 = _ACSignpostCreate(v9);
  v12 = v11;

  v14 = _ACSignpostLogSystem(v13);
  v15 = v14;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = accountCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v10, "EnabledDataclassesForAccount", "%@", &buf, 0xCu);
  }

  v17 = _ACSignpostLogSystem(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore enabledDataclassesForAccount:error:];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__0;
  v55 = __Block_byref_object_dispose__0;
  v56 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__0;
  v41 = __Block_byref_object_dispose__0;
  v42 = 0;
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __53__ACAccountStore_enabledDataclassesForAccount_error___block_invoke;
  v33[3] = &unk_1E7975B78;
  v19 = accountCopy;
  v34 = v19;
  p_buf = &buf;
  v36 = &v37;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __53__ACAccountStore_enabledDataclassesForAccount_error___block_invoke_190;
  v32[3] = &unk_1E7975BA0;
  v32[4] = self;
  v32[5] = &v37;
  ac_dispatch_remote_sync(remoteAccountStoreSession, v33, v32);

  if (error)
  {
    *error = v38[5];
  }

  Nanoseconds = _ACSignpostGetNanoseconds(v10, v12);
  v21 = _ACSignpostLogSystem(Nanoseconds);
  v22 = v21;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    v23 = *(*(&buf + 1) + 40);
    v24 = v38[5];
    if (*&v24 == 0.0)
    {
      *&v24 = COERCE_DOUBLE(&stru_1F210E1C8);
    }

    *v44 = 138412546;
    v45 = v23;
    v46 = 2112;
    v47 = *&v24;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v22, OS_SIGNPOST_INTERVAL_END, v10, "EnabledDataclassesForAccount", "%@%@", v44, 0x16u);
  }

  v26 = _ACSignpostLogSystem(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v29 = *(*(&buf + 1) + 40);
    v30 = v38[5];
    *v44 = 134218754;
    v45 = v10;
    v46 = 2048;
    v47 = Nanoseconds / 1000000000.0;
    v48 = 2112;
    v49 = v29;
    if (v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = &stru_1F210E1C8;
    }

    v50 = 2112;
    v51 = v31;
    _os_log_debug_impl(&dword_1AC3CD000, v26, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: EnabledDataclassesForAccount %@%@", v44, 0x2Au);
  }

  v27 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  return v27;
}

void __53__ACAccountStore_enabledDataclassesForAccount_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__ACAccountStore_enabledDataclassesForAccount_error___block_invoke_2;
  v6[3] = &unk_1E7976610;
  v7 = *(a1 + 40);
  [v4 enabledDataclassesForAccountWithIdentifier:v5 handler:v6];
}

void __53__ACAccountStore_enabledDataclassesForAccount_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _ACLogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v7;
}

uint64_t __53__ACAccountStore_enabledDataclassesForAccount_error___block_invoke_190(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _connectionFailureError];

  return MEMORY[0x1EEE66BB8]();
}

- (id)provisionedDataclassesForAccount:(id)account error:(id *)error
{
  v57 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v7 = _os_activity_create(&dword_1AC3CD000, "accounts/provisioned-dataclasses-for-account", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v9 = _ACSignpostLogSystem(v8);
  v10 = _ACSignpostCreate(v9);
  v12 = v11;

  v14 = _ACSignpostLogSystem(v13);
  v15 = v14;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = accountCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v10, "ProvisionedDataclassesForAccount", "%@", &buf, 0xCu);
  }

  v17 = _ACSignpostLogSystem(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore provisionedDataclassesForAccount:error:];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__0;
  v55 = __Block_byref_object_dispose__0;
  v56 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__0;
  v41 = __Block_byref_object_dispose__0;
  v42 = 0;
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __57__ACAccountStore_provisionedDataclassesForAccount_error___block_invoke;
  v33[3] = &unk_1E7975B78;
  v19 = accountCopy;
  v34 = v19;
  p_buf = &buf;
  v36 = &v37;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __57__ACAccountStore_provisionedDataclassesForAccount_error___block_invoke_191;
  v32[3] = &unk_1E7975BA0;
  v32[4] = self;
  v32[5] = &v37;
  ac_dispatch_remote_sync(remoteAccountStoreSession, v33, v32);

  if (error)
  {
    *error = v38[5];
  }

  Nanoseconds = _ACSignpostGetNanoseconds(v10, v12);
  v21 = _ACSignpostLogSystem(Nanoseconds);
  v22 = v21;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    v23 = *(*(&buf + 1) + 40);
    v24 = v38[5];
    if (*&v24 == 0.0)
    {
      *&v24 = COERCE_DOUBLE(&stru_1F210E1C8);
    }

    *v44 = 138412546;
    v45 = v23;
    v46 = 2112;
    v47 = *&v24;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v22, OS_SIGNPOST_INTERVAL_END, v10, "ProvisionedDataclassesForAccount", "%@%@", v44, 0x16u);
  }

  v26 = _ACSignpostLogSystem(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v29 = *(*(&buf + 1) + 40);
    v30 = v38[5];
    *v44 = 134218754;
    v45 = v10;
    v46 = 2048;
    v47 = Nanoseconds / 1000000000.0;
    v48 = 2112;
    v49 = v29;
    if (v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = &stru_1F210E1C8;
    }

    v50 = 2112;
    v51 = v31;
    _os_log_debug_impl(&dword_1AC3CD000, v26, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: ProvisionedDataclassesForAccount %@%@", v44, 0x2Au);
  }

  v27 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  return v27;
}

void __57__ACAccountStore_provisionedDataclassesForAccount_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__ACAccountStore_provisionedDataclassesForAccount_error___block_invoke_2;
  v6[3] = &unk_1E7976610;
  v7 = *(a1 + 40);
  [v4 provisionedDataclassesForAccountWithIdentifier:v5 handler:v6];
}

void __57__ACAccountStore_provisionedDataclassesForAccount_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _ACLogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v7;
}

uint64_t __57__ACAccountStore_provisionedDataclassesForAccount_error___block_invoke_191(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _connectionFailureError];

  return MEMORY[0x1EEE66BB8]();
}

- (id)supportedDataclassesForAccountType:(id)type
{
  v44 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v5 = _os_activity_create(&dword_1AC3CD000, "accounts/supported-dataclasses-for-account", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    LODWORD(buf) = 138412290;
    *(&buf + 4) = typeCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "SupportedDataclassesForAccountType", "%@", &buf, 0xCu);
  }

  v15 = _ACSignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore supportedDataclassesForAccountType:];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__0;
  v42 = __Block_byref_object_dispose__0;
  v43 = 0;
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __53__ACAccountStore_supportedDataclassesForAccountType___block_invoke;
  v27[3] = &unk_1E7976048;
  v17 = typeCopy;
  v28 = v17;
  p_buf = &buf;
  ac_dispatch_remote_sync(remoteAccountStoreSession, v27, 0);

  Nanoseconds = _ACSignpostGetNanoseconds(v8, v10);
  v19 = _ACSignpostLogSystem(Nanoseconds);
  v20 = v19;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    v21 = *(*(&buf + 1) + 40);
    *v31 = 138412546;
    v32 = v21;
    v33 = 2112;
    v34 = COERCE_DOUBLE(&stru_1F210E1C8);
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v20, OS_SIGNPOST_INTERVAL_END, v8, "SupportedDataclassesForAccountType", "%@%@", v31, 0x16u);
  }

  v23 = _ACSignpostLogSystem(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *v31 = 134218754;
    v26 = *(*(&buf + 1) + 40);
    v32 = v8;
    v33 = 2048;
    v34 = Nanoseconds / 1000000000.0;
    v35 = 2112;
    v36 = v26;
    v37 = 2112;
    v38 = &stru_1F210E1C8;
    _os_log_debug_impl(&dword_1AC3CD000, v23, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: SupportedDataclassesForAccountType %@%@", v31, 0x2Au);
  }

  v24 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  os_activity_scope_leave(&state);

  return v24;
}

uint64_t __53__ACAccountStore_supportedDataclassesForAccountType___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__ACAccountStore_supportedDataclassesForAccountType___block_invoke_2;
  v4[3] = &unk_1E79761D8;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [a2 supportedDataclassesForAccountType:v2 handler:v4];
}

void __53__ACAccountStore_supportedDataclassesForAccountType___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = _ACLogSystem(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (id)syncableDataclassesForAccountType:(id)type
{
  v44 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v5 = _os_activity_create(&dword_1AC3CD000, "accounts/syncable-dataclasses-for-account", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    LODWORD(buf) = 138412290;
    *(&buf + 4) = typeCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "SyncableDataclassesForAccountType", "%@", &buf, 0xCu);
  }

  v15 = _ACSignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore syncableDataclassesForAccountType:];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__0;
  v42 = __Block_byref_object_dispose__0;
  v43 = 0;
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __52__ACAccountStore_syncableDataclassesForAccountType___block_invoke;
  v27[3] = &unk_1E7976048;
  v17 = typeCopy;
  v28 = v17;
  p_buf = &buf;
  ac_dispatch_remote_sync(remoteAccountStoreSession, v27, 0);

  Nanoseconds = _ACSignpostGetNanoseconds(v8, v10);
  v19 = _ACSignpostLogSystem(Nanoseconds);
  v20 = v19;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    v21 = *(*(&buf + 1) + 40);
    *v31 = 138412546;
    v32 = v21;
    v33 = 2112;
    v34 = COERCE_DOUBLE(&stru_1F210E1C8);
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v20, OS_SIGNPOST_INTERVAL_END, v8, "SyncableDataclassesForAccountType", "%@%@", v31, 0x16u);
  }

  v23 = _ACSignpostLogSystem(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *v31 = 134218754;
    v26 = *(*(&buf + 1) + 40);
    v32 = v8;
    v33 = 2048;
    v34 = Nanoseconds / 1000000000.0;
    v35 = 2112;
    v36 = v26;
    v37 = 2112;
    v38 = &stru_1F210E1C8;
    _os_log_debug_impl(&dword_1AC3CD000, v23, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: SyncableDataclassesForAccountType %@%@", v31, 0x2Au);
  }

  v24 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  os_activity_scope_leave(&state);

  return v24;
}

uint64_t __52__ACAccountStore_syncableDataclassesForAccountType___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__ACAccountStore_syncableDataclassesForAccountType___block_invoke_2;
  v4[3] = &unk_1E79761D8;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [a2 syncableDataclassesForAccountType:v2 handler:v4];
}

void __52__ACAccountStore_syncableDataclassesForAccountType___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = _ACLogSystem(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (id)displayTypeForAccountWithIdentifier:(id)identifier
{
  v45 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = _os_activity_create(&dword_1AC3CD000, "accounts/display-type-for-account", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    LODWORD(buf) = 138412290;
    *(&buf + 4) = identifierCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "DisplayTypeForAccount", "%@", &buf, 0xCu);
  }

  v15 = _ACSignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore displayTypeForAccountWithIdentifier:];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__0;
  v43 = __Block_byref_object_dispose__0;
  v44 = 0;
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __54__ACAccountStore_displayTypeForAccountWithIdentifier___block_invoke;
  v27[3] = &unk_1E7976660;
  v17 = identifierCopy;
  selfCopy = self;
  p_buf = &buf;
  v28 = v17;
  ac_dispatch_remote_sync(remoteAccountStoreSession, v27, 0);

  Nanoseconds = _ACSignpostGetNanoseconds(v8, v10);
  v19 = _ACSignpostLogSystem(Nanoseconds);
  v20 = v19;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    v21 = *(*(&buf + 1) + 40);
    *v32 = 138412546;
    v33 = v21;
    v34 = 2112;
    v35 = COERCE_DOUBLE(&stru_1F210E1C8);
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v20, OS_SIGNPOST_INTERVAL_END, v8, "DisplayTypeForAccount", "%@%@", v32, 0x16u);
  }

  v23 = _ACSignpostLogSystem(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *v32 = 134218754;
    v26 = *(*(&buf + 1) + 40);
    v33 = v8;
    v34 = 2048;
    v35 = Nanoseconds / 1000000000.0;
    v36 = 2112;
    v37 = v26;
    v38 = 2112;
    v39 = &stru_1F210E1C8;
    _os_log_debug_impl(&dword_1AC3CD000, v23, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: DisplayTypeForAccount %@%@", v32, 0x2Au);
  }

  v24 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  os_activity_scope_leave(&state);

  return v24;
}

uint64_t __54__ACAccountStore_displayTypeForAccountWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__ACAccountStore_displayTypeForAccountWithIdentifier___block_invoke_2;
  v4[3] = &unk_1E7976638;
  v5 = *(a1 + 40);
  return [a2 displayAccountTypeForAccountWithIdentifier:v2 handler:v4];
}

void __54__ACAccountStore_displayTypeForAccountWithIdentifier___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = _ACLogSystem(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    [*(*(*(a1 + 40) + 8) + 40) setAccountStore:*(a1 + 32)];
  }
}

- (id)accountIdentifiersEnabledForDataclass:(id)dataclass
{
  v44 = *MEMORY[0x1E69E9840];
  dataclassCopy = dataclass;
  v5 = _os_activity_create(&dword_1AC3CD000, "accounts/account-identifiers-enabled-for-dataclass", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    LODWORD(buf) = 138412290;
    *(&buf + 4) = dataclassCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "AccountsEnabledForDataclass", "%@", &buf, 0xCu);
  }

  v15 = _ACSignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore accountIdentifiersEnabledForDataclass:];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__0;
  v42 = __Block_byref_object_dispose__0;
  v43 = 0;
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __56__ACAccountStore_accountIdentifiersEnabledForDataclass___block_invoke;
  v27[3] = &unk_1E7976048;
  v17 = dataclassCopy;
  v28 = v17;
  p_buf = &buf;
  ac_dispatch_remote_sync(remoteAccountStoreSession, v27, 0);

  Nanoseconds = _ACSignpostGetNanoseconds(v8, v10);
  v19 = _ACSignpostLogSystem(Nanoseconds);
  v20 = v19;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    v21 = *(*(&buf + 1) + 40);
    *v31 = 138412546;
    v32 = v21;
    v33 = 2112;
    v34 = COERCE_DOUBLE(&stru_1F210E1C8);
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v20, OS_SIGNPOST_INTERVAL_END, v8, "AccountsEnabledForDataclass", "%@%@", v31, 0x16u);
  }

  v23 = _ACSignpostLogSystem(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *v31 = 134218754;
    v26 = *(*(&buf + 1) + 40);
    v32 = v8;
    v33 = 2048;
    v34 = Nanoseconds / 1000000000.0;
    v35 = 2112;
    v36 = v26;
    v37 = 2112;
    v38 = &stru_1F210E1C8;
    _os_log_debug_impl(&dword_1AC3CD000, v23, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AccountsEnabledForDataclass %@%@", v31, 0x2Au);
  }

  v24 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  os_activity_scope_leave(&state);

  return v24;
}

uint64_t __56__ACAccountStore_accountIdentifiersEnabledForDataclass___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__ACAccountStore_accountIdentifiersEnabledForDataclass___block_invoke_2;
  v4[3] = &unk_1E7975D58;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [a2 accountIdentifiersEnabledForDataclass:v2 handler:v4];
}

void __56__ACAccountStore_accountIdentifiersEnabledForDataclass___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = _ACLogSystem(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (id)accountIdentifiersEnabledToSyncDataclass:(id)dataclass
{
  v44 = *MEMORY[0x1E69E9840];
  dataclassCopy = dataclass;
  v5 = _os_activity_create(&dword_1AC3CD000, "accounts/account-identifiers-enabled-sync-dataclass", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    LODWORD(buf) = 138412290;
    *(&buf + 4) = dataclassCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "AccountsEnabledToSyncDataclass", "%@", &buf, 0xCu);
  }

  v15 = _ACSignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore accountIdentifiersEnabledToSyncDataclass:];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__0;
  v42 = __Block_byref_object_dispose__0;
  v43 = 0;
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __59__ACAccountStore_accountIdentifiersEnabledToSyncDataclass___block_invoke;
  v27[3] = &unk_1E7976048;
  v17 = dataclassCopy;
  v28 = v17;
  p_buf = &buf;
  ac_dispatch_remote_sync(remoteAccountStoreSession, v27, 0);

  Nanoseconds = _ACSignpostGetNanoseconds(v8, v10);
  v19 = _ACSignpostLogSystem(Nanoseconds);
  v20 = v19;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    v21 = *(*(&buf + 1) + 40);
    *v31 = 138412546;
    v32 = v21;
    v33 = 2112;
    v34 = COERCE_DOUBLE(&stru_1F210E1C8);
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v20, OS_SIGNPOST_INTERVAL_END, v8, "AccountsEnabledToSyncDataclass", "%@%@", v31, 0x16u);
  }

  v23 = _ACSignpostLogSystem(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *v31 = 134218754;
    v26 = *(*(&buf + 1) + 40);
    v32 = v8;
    v33 = 2048;
    v34 = Nanoseconds / 1000000000.0;
    v35 = 2112;
    v36 = v26;
    v37 = 2112;
    v38 = &stru_1F210E1C8;
    _os_log_debug_impl(&dword_1AC3CD000, v23, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AccountsEnabledToSyncDataclass %@%@", v31, 0x2Au);
  }

  v24 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  os_activity_scope_leave(&state);

  return v24;
}

uint64_t __59__ACAccountStore_accountIdentifiersEnabledToSyncDataclass___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__ACAccountStore_accountIdentifiersEnabledToSyncDataclass___block_invoke_2;
  v4[3] = &unk_1E7975D58;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [a2 accountIdentifiersEnabledToSyncDataclass:v2 handler:v4];
}

void __59__ACAccountStore_accountIdentifiersEnabledToSyncDataclass___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = _ACLogSystem(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (void)preloadDataclassOwnersWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _os_activity_create(&dword_1AC3CD000, "accounts/preload-dataclass-owners", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PreloadDataclassOwners", &unk_1AC43804B, buf, 2u);
  }

  v15 = _ACSignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore preloadDataclassOwnersWithCompletion:];
  }

  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __55__ACAccountStore_preloadDataclassOwnersWithCompletion___block_invoke;
  v22[3] = &unk_1E79766D8;
  v22[4] = self;
  v24 = v8;
  v25 = v10;
  v23 = completionCopy;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __55__ACAccountStore_preloadDataclassOwnersWithCompletion___block_invoke_192;
  v18[3] = &unk_1E79766B0;
  v18[4] = self;
  v20 = v8;
  v21 = v10;
  v17 = v23;
  v19 = v17;
  ac_dispatch_remote(remoteAccountStoreSession, v22, v18);

  os_activity_scope_leave(&state);
}

void __55__ACAccountStore_preloadDataclassOwnersWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__ACAccountStore_preloadDataclassOwnersWithCompletion___block_invoke_2;
  v4[3] = &unk_1E79766B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  v5 = v3;
  [a2 preloadDataclassOwnersWithCompletion:v4];
}

void __55__ACAccountStore_preloadDataclassOwnersWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__ACAccountStore_preloadDataclassOwnersWithCompletion___block_invoke_3;
  v6[3] = &unk_1E7976688;
  v9 = *(a1 + 48);
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __55__ACAccountStore_preloadDataclassOwnersWithCompletion___block_invoke_3(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  Nanoseconds = _ACSignpostGetNanoseconds(a1[6], a1[7]);
  v3 = _ACSignpostLogSystem(Nanoseconds);
  v4 = v3;
  v5 = a1[6];
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v6 = a1[4];
    if (!v6)
    {
      v6 = &stru_1F210E1C8;
    }

    v13 = 138412546;
    v14 = 0;
    v15 = 2112;
    v16 = *&v6;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v4, OS_SIGNPOST_INTERVAL_END, v5, "PreloadDataclassOwners", "%@%@", &v13, 0x16u);
  }

  v8 = _ACSignpostLogSystem(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = a1[6];
    v11 = a1[4];
    v13 = 134218754;
    v14 = v10;
    v12 = &stru_1F210E1C8;
    v15 = 2048;
    v16 = Nanoseconds / 1000000000.0;
    v17 = 2112;
    v18 = 0;
    if (v11)
    {
      v12 = v11;
    }

    v19 = 2112;
    v20 = v12;
    _os_log_debug_impl(&dword_1AC3CD000, v8, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: PreloadDataclassOwners %@%@", &v13, 0x2Au);
  }

  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, a1[4]);
  }

  return result;
}

void __55__ACAccountStore_preloadDataclassOwnersWithCompletion___block_invoke_192(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 80);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__ACAccountStore_preloadDataclassOwnersWithCompletion___block_invoke_2_193;
  v4[3] = &unk_1E7976688;
  v4[4] = v2;
  v6 = *(a1 + 48);
  v5 = v1;
  dispatch_sync(v3, v4);
}

void __55__ACAccountStore_preloadDataclassOwnersWithCompletion___block_invoke_2_193(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _connectionFailureError];
  Nanoseconds = _ACSignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v4 = _ACSignpostLogSystem(Nanoseconds);
  v5 = v4;
  v6 = *(a1 + 48);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = &stru_1F210E1C8;
    if (v2)
    {
      v7 = v2;
    }

    v13 = 138412546;
    v14 = 0;
    v15 = 2112;
    v16 = *&v7;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v5, OS_SIGNPOST_INTERVAL_END, v6, "PreloadDataclassOwners", "%@%@", &v13, 0x16u);
  }

  v9 = _ACSignpostLogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 48);
    v13 = 134218754;
    v14 = v11;
    v12 = &stru_1F210E1C8;
    v15 = 2048;
    v16 = Nanoseconds / 1000000000.0;
    v17 = 2112;
    v18 = 0;
    if (v2)
    {
      v12 = v2;
    }

    v19 = 2112;
    v20 = v12;
    _os_log_debug_impl(&dword_1AC3CD000, v9, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: PreloadDataclassOwners %@%@", &v13, 0x2Au);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v2);
  }
}

- (id)dataclassActionsForAccountSave:(id)save error:(id *)error
{
  v57 = *MEMORY[0x1E69E9840];
  saveCopy = save;
  v7 = _os_activity_create(&dword_1AC3CD000, "accounts/dataclass-actions-for-account-save", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v9 = _ACSignpostLogSystem(v8);
  v10 = _ACSignpostCreate(v9);
  v12 = v11;

  v14 = _ACSignpostLogSystem(v13);
  v15 = v14;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = saveCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v10, "DataclassActionsForAccountSave", "%@", &buf, 0xCu);
  }

  v17 = _ACSignpostLogSystem(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore dataclassActionsForAccountSave:error:];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__0;
  v55 = __Block_byref_object_dispose__0;
  v56 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__0;
  v41 = __Block_byref_object_dispose__0;
  v42 = 0;
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __55__ACAccountStore_dataclassActionsForAccountSave_error___block_invoke;
  v33[3] = &unk_1E7975B78;
  v19 = saveCopy;
  v34 = v19;
  p_buf = &buf;
  v36 = &v37;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __55__ACAccountStore_dataclassActionsForAccountSave_error___block_invoke_194;
  v32[3] = &unk_1E7975BA0;
  v32[4] = self;
  v32[5] = &v37;
  ac_dispatch_remote_sync(remoteAccountStoreSession, v33, v32);

  if (error)
  {
    *error = v38[5];
  }

  Nanoseconds = _ACSignpostGetNanoseconds(v10, v12);
  v21 = _ACSignpostLogSystem(Nanoseconds);
  v22 = v21;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    v23 = *(*(&buf + 1) + 40);
    v24 = v38[5];
    if (*&v24 == 0.0)
    {
      *&v24 = COERCE_DOUBLE(&stru_1F210E1C8);
    }

    *v44 = 138412546;
    v45 = v23;
    v46 = 2112;
    v47 = *&v24;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v22, OS_SIGNPOST_INTERVAL_END, v10, "DataclassActionsForAccountSave", "%@%@", v44, 0x16u);
  }

  v26 = _ACSignpostLogSystem(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v29 = *(*(&buf + 1) + 40);
    v30 = v38[5];
    *v44 = 134218754;
    v45 = v10;
    v46 = 2048;
    v47 = Nanoseconds / 1000000000.0;
    v48 = 2112;
    v49 = v29;
    if (v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = &stru_1F210E1C8;
    }

    v50 = 2112;
    v51 = v31;
    _os_log_debug_impl(&dword_1AC3CD000, v26, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: DataclassActionsForAccountSave %@%@", v44, 0x2Au);
  }

  v27 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  return v27;
}

uint64_t __55__ACAccountStore_dataclassActionsForAccountSave_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__ACAccountStore_dataclassActionsForAccountSave_error___block_invoke_2;
  v4[3] = &unk_1E7976700;
  v5 = *(a1 + 40);
  return [a2 dataclassActionsForAccountSave:v2 completion:v4];
}

void __55__ACAccountStore_dataclassActionsForAccountSave_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _ACLogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __55__ACAccountStore_dataclassActionsForAccountSave_error___block_invoke_2_cold_1();
    }
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v7;
}

uint64_t __55__ACAccountStore_dataclassActionsForAccountSave_error___block_invoke_194(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _connectionFailureError];

  return MEMORY[0x1EEE66BB8]();
}

- (id)dataclassActionsForAccountDeletion:(id)deletion error:(id *)error
{
  v57 = *MEMORY[0x1E69E9840];
  deletionCopy = deletion;
  v7 = _os_activity_create(&dword_1AC3CD000, "accounts/dataclass-actions-for-account-deletion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v9 = _ACSignpostLogSystem(v8);
  v10 = _ACSignpostCreate(v9);
  v12 = v11;

  v14 = _ACSignpostLogSystem(v13);
  v15 = v14;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = deletionCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v10, "DataclassActionsForAccountDeletion", "%@", &buf, 0xCu);
  }

  v17 = _ACSignpostLogSystem(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore dataclassActionsForAccountDeletion:error:];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__0;
  v55 = __Block_byref_object_dispose__0;
  v56 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__0;
  v41 = __Block_byref_object_dispose__0;
  v42 = 0;
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __59__ACAccountStore_dataclassActionsForAccountDeletion_error___block_invoke;
  v33[3] = &unk_1E7975B78;
  v19 = deletionCopy;
  v34 = v19;
  p_buf = &buf;
  v36 = &v37;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __59__ACAccountStore_dataclassActionsForAccountDeletion_error___block_invoke_195;
  v32[3] = &unk_1E7975BA0;
  v32[4] = self;
  v32[5] = &v37;
  ac_dispatch_remote_sync(remoteAccountStoreSession, v33, v32);

  if (error)
  {
    *error = v38[5];
  }

  Nanoseconds = _ACSignpostGetNanoseconds(v10, v12);
  v21 = _ACSignpostLogSystem(Nanoseconds);
  v22 = v21;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    v23 = *(*(&buf + 1) + 40);
    v24 = v38[5];
    if (*&v24 == 0.0)
    {
      *&v24 = COERCE_DOUBLE(&stru_1F210E1C8);
    }

    *v44 = 138412546;
    v45 = v23;
    v46 = 2112;
    v47 = *&v24;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v22, OS_SIGNPOST_INTERVAL_END, v10, "DataclassActionsForAccountDeletion", "%@%@", v44, 0x16u);
  }

  v26 = _ACSignpostLogSystem(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v29 = *(*(&buf + 1) + 40);
    v30 = v38[5];
    *v44 = 134218754;
    v45 = v10;
    v46 = 2048;
    v47 = Nanoseconds / 1000000000.0;
    v48 = 2112;
    v49 = v29;
    if (v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = &stru_1F210E1C8;
    }

    v50 = 2112;
    v51 = v31;
    _os_log_debug_impl(&dword_1AC3CD000, v26, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: DataclassActionsForAccountDeletion %@%@", v44, 0x2Au);
  }

  v27 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  return v27;
}

uint64_t __59__ACAccountStore_dataclassActionsForAccountDeletion_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__ACAccountStore_dataclassActionsForAccountDeletion_error___block_invoke_2;
  v4[3] = &unk_1E7976700;
  v5 = *(a1 + 40);
  return [a2 dataclassActionsForAccountDeletion:v2 completion:v4];
}

void __59__ACAccountStore_dataclassActionsForAccountDeletion_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _ACLogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __55__ACAccountStore_dataclassActionsForAccountSave_error___block_invoke_2_cold_1();
    }
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v7;
}

uint64_t __59__ACAccountStore_dataclassActionsForAccountDeletion_error___block_invoke_195(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _connectionFailureError];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isPerformingDataclassActionsForAccount:(id)account error:(id *)error
{
  v54 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v7 = _os_activity_create(&dword_1AC3CD000, "accounts/is-performingdataclass-actions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v9 = _ACSignpostLogSystem(v8);
  v10 = _ACSignpostCreate(v9);
  v12 = v11;

  v14 = _ACSignpostLogSystem(v13);
  v15 = v14;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = accountCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v10, "IsPerformingDataclassActions", "%@", &buf, 0xCu);
  }

  v17 = _ACSignpostLogSystem(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore isPerformingDataclassActionsForAccount:error:];
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__0;
  v52 = __Block_byref_object_dispose__0;
  v53 = 0;
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __63__ACAccountStore_isPerformingDataclassActionsForAccount_error___block_invoke;
  v32[3] = &unk_1E7975B78;
  v19 = accountCopy;
  v33 = v19;
  v34 = &v36;
  p_buf = &buf;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __63__ACAccountStore_isPerformingDataclassActionsForAccount_error___block_invoke_196;
  v31[3] = &unk_1E7975BA0;
  v31[4] = self;
  v31[5] = &buf;
  ac_dispatch_remote_sync(remoteAccountStoreSession, v32, v31);

  if (error)
  {
    *error = *(*(&buf + 1) + 40);
  }

  Nanoseconds = _ACSignpostGetNanoseconds(v10, v12);
  v21 = _ACSignpostLogSystem(Nanoseconds);
  v22 = v21;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    if (*(v37 + 24))
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    v24 = *(*(&buf + 1) + 40);
    if (*&v24 == 0.0)
    {
      *&v24 = COERCE_DOUBLE(&stru_1F210E1C8);
    }

    *v41 = 138412546;
    v42 = v23;
    v43 = 2112;
    v44 = *&v24;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v22, OS_SIGNPOST_INTERVAL_END, v10, "IsPerformingDataclassActions", "%@%@", v41, 0x16u);
  }

  v26 = _ACSignpostLogSystem(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v29 = @"NO";
    v30 = *(*(&buf + 1) + 40);
    if (*(v37 + 24))
    {
      v29 = @"YES";
    }

    *v41 = 134218754;
    v42 = v10;
    v43 = 2048;
    v44 = Nanoseconds / 1000000000.0;
    v45 = 2112;
    v46 = v29;
    if (!v30)
    {
      v30 = &stru_1F210E1C8;
    }

    v47 = 2112;
    v48 = v30;
    _os_log_debug_impl(&dword_1AC3CD000, v26, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: IsPerformingDataclassActions %@%@", v41, 0x2Au);
  }

  v27 = *(v37 + 24);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v36, 8);
  os_activity_scope_leave(&state);

  return v27 & 1;
}

uint64_t __63__ACAccountStore_isPerformingDataclassActionsForAccount_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__ACAccountStore_isPerformingDataclassActionsForAccount_error___block_invoke_2;
  v4[3] = &unk_1E7976728;
  v5 = *(a1 + 40);
  return [a2 isPerformingDataclassActionsForAccount:v2 completion:v4];
}

void __63__ACAccountStore_isPerformingDataclassActionsForAccount_error___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = _ACLogSystem(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __63__ACAccountStore_isPerformingDataclassActionsForAccount_error___block_invoke_2_cold_1();
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;
}

uint64_t __63__ACAccountStore_isPerformingDataclassActionsForAccount_error___block_invoke_196(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _connectionFailureError];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isTetheredSyncingEnabledForDataclass:(id)dataclass
{
  v44 = *MEMORY[0x1E69E9840];
  dataclassCopy = dataclass;
  v5 = _os_activity_create(&dword_1AC3CD000, "accounts/is-tethered-syncing-enabled-for-dataclasse", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    *buf = 138412290;
    v37 = dataclassCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "IsThetheredSyncingEnabledForDataclass", "%@", buf, 0xCu);
  }

  v15 = _ACSignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore isTetheredSyncingEnabledForDataclass:];
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __55__ACAccountStore_isTetheredSyncingEnabledForDataclass___block_invoke;
  v28[3] = &unk_1E7976048;
  v17 = dataclassCopy;
  v29 = v17;
  v30 = &v31;
  ac_dispatch_remote_sync(remoteAccountStoreSession, v28, 0);

  Nanoseconds = _ACSignpostGetNanoseconds(v8, v10);
  v19 = _ACSignpostLogSystem(Nanoseconds);
  v20 = v19;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    if (*(v32 + 24))
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    *buf = 138412546;
    v37 = v21;
    v38 = 2112;
    v39 = COERCE_DOUBLE(&stru_1F210E1C8);
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v20, OS_SIGNPOST_INTERVAL_END, v8, "IsThetheredSyncingEnabledForDataclass", "%@%@", buf, 0x16u);
  }

  v23 = _ACSignpostLogSystem(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v26 = *(v32 + 24);
    *buf = 134218754;
    v37 = v8;
    if (v26)
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    v38 = 2048;
    v39 = Nanoseconds / 1000000000.0;
    v40 = 2112;
    v41 = v27;
    v42 = 2112;
    v43 = &stru_1F210E1C8;
    _os_log_debug_impl(&dword_1AC3CD000, v23, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: IsThetheredSyncingEnabledForDataclass %@%@", buf, 0x2Au);
  }

  v24 = *(v32 + 24);
  _Block_object_dispose(&v31, 8);
  os_activity_scope_leave(&state);

  return v24 & 1;
}

uint64_t __55__ACAccountStore_isTetheredSyncingEnabledForDataclass___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__ACAccountStore_isTetheredSyncingEnabledForDataclass___block_invoke_2;
  v4[3] = &unk_1E7976020;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [a2 isTetheredSyncingEnabledForDataclass:v2 completion:v4];
}

- (id)tetheredSyncSourceTypeForDataclass:(id)dataclass
{
  v44 = *MEMORY[0x1E69E9840];
  dataclassCopy = dataclass;
  v5 = _os_activity_create(&dword_1AC3CD000, "accounts/is-tethered-syncing-enabled-for-dataclass", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    LODWORD(buf) = 138412290;
    *(&buf + 4) = dataclassCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "ThetheredSyncSourceTypeForDataclass", "%@", &buf, 0xCu);
  }

  v15 = _ACSignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore tetheredSyncSourceTypeForDataclass:];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__0;
  v42 = __Block_byref_object_dispose__0;
  v43 = 0;
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __53__ACAccountStore_tetheredSyncSourceTypeForDataclass___block_invoke;
  v27[3] = &unk_1E7976048;
  v17 = dataclassCopy;
  v28 = v17;
  p_buf = &buf;
  ac_dispatch_remote_sync(remoteAccountStoreSession, v27, 0);

  Nanoseconds = _ACSignpostGetNanoseconds(v8, v10);
  v19 = _ACSignpostLogSystem(Nanoseconds);
  v20 = v19;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    v21 = *(*(&buf + 1) + 40);
    *v31 = 138412546;
    v32 = v21;
    v33 = 2112;
    v34 = COERCE_DOUBLE(&stru_1F210E1C8);
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v20, OS_SIGNPOST_INTERVAL_END, v8, "ThetheredSyncSourceTypeForDataclass", "%@%@", v31, 0x16u);
  }

  v23 = _ACSignpostLogSystem(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *v31 = 134218754;
    v26 = *(*(&buf + 1) + 40);
    v32 = v8;
    v33 = 2048;
    v34 = Nanoseconds / 1000000000.0;
    v35 = 2112;
    v36 = v26;
    v37 = 2112;
    v38 = &stru_1F210E1C8;
    _os_log_debug_impl(&dword_1AC3CD000, v23, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: ThetheredSyncSourceTypeForDataclass %@%@", v31, 0x2Au);
  }

  v24 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  os_activity_scope_leave(&state);

  return v24;
}

uint64_t __53__ACAccountStore_tetheredSyncSourceTypeForDataclass___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__ACAccountStore_tetheredSyncSourceTypeForDataclass___block_invoke_2;
  v4[3] = &unk_1E7976750;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [a2 tetheredSyncSourceTypeForDataclass:v2 completion:v4];
}

- (void)accountIdentifiersEnabledForDataclasses:(id)dataclasses withAccountTypeIdentifiers:(id)identifiers completion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  dataclassesCopy = dataclasses;
  identifiersCopy = identifiers;
  completionCopy = completion;
  v11 = _os_activity_create(&dword_1AC3CD000, "accounts/accounts-enabled-for-dataclasses-of-type", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  if (!dataclassesCopy)
  {
    v12 = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The dataclasses argument cannot be nil"];
  }

  if (!identifiersCopy)
  {
    v12 = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The accountTypes argument cannot be nil"];
  }

  if (completionCopy)
  {
    v13 = _ACSignpostLogSystem(v12);
    v14 = _ACSignpostCreate(v13);
    v16 = v15;

    v18 = _ACSignpostLogSystem(v17);
    v19 = v18;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 138412546;
      v37 = dataclassesCopy;
      v38 = 2112;
      v39 = identifiersCopy;
      _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v14, "AccountsEnabledForDataclasses", "%@ : %@", buf, 0x16u);
    }

    v21 = _ACSignpostLogSystem(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v37 = v14;
      v38 = 2112;
      v39 = dataclassesCopy;
      v40 = 2112;
      v41 = identifiersCopy;
      _os_log_debug_impl(&dword_1AC3CD000, v21, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: AccountsEnabledForDataclasses %@ : %@", buf, 0x20u);
    }

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __96__ACAccountStore_accountIdentifiersEnabledForDataclasses_withAccountTypeIdentifiers_completion___block_invoke;
    v31[3] = &unk_1E7975F80;
    v31[4] = self;
    v33 = v14;
    v34 = v16;
    v32 = completionCopy;
    v22 = MEMORY[0x1AC5B3C70](v31);
    remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __96__ACAccountStore_accountIdentifiersEnabledForDataclasses_withAccountTypeIdentifiers_completion___block_invoke_204;
    v27[3] = &unk_1E7975C40;
    v28 = dataclassesCopy;
    v29 = identifiersCopy;
    v30 = v22;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __96__ACAccountStore_accountIdentifiersEnabledForDataclasses_withAccountTypeIdentifiers_completion___block_invoke_2_205;
    v25[3] = &unk_1E79754F0;
    v24 = v30;
    v25[4] = self;
    v26 = v24;
    ac_dispatch_remote(remoteAccountStoreSession, v27, v25);
  }

  os_activity_scope_leave(&state);
}

void __96__ACAccountStore_accountIdentifiersEnabledForDataclasses_withAccountTypeIdentifiers_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__ACAccountStore_accountIdentifiersEnabledForDataclasses_withAccountTypeIdentifiers_completion___block_invoke_2;
  block[3] = &unk_1E7975BC8;
  v14 = *(a1 + 48);
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

uint64_t __96__ACAccountStore_accountIdentifiersEnabledForDataclasses_withAccountTypeIdentifiers_completion___block_invoke_2(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  Nanoseconds = _ACSignpostGetNanoseconds(a1[7], a1[8]);
  v3 = _ACSignpostLogSystem(Nanoseconds);
  v4 = v3;
  v5 = a1[7];
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v6 = a1[4];
    v7 = a1[5];
    if (!v7)
    {
      v7 = &stru_1F210E1C8;
    }

    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = *&v7;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v4, OS_SIGNPOST_INTERVAL_END, v5, "AccountsEnabledForDataclasses", "%@%@", &v15, 0x16u);
  }

  v9 = _ACSignpostLogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = a1[7];
    v12 = a1[4];
    v13 = a1[5];
    v15 = 134218754;
    v16 = v11;
    v14 = &stru_1F210E1C8;
    v17 = 2048;
    v18 = Nanoseconds / 1000000000.0;
    v19 = 2112;
    v20 = v12;
    if (v13)
    {
      v14 = v13;
    }

    v21 = 2112;
    v22 = v14;
    _os_log_debug_impl(&dword_1AC3CD000, v9, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AccountsEnabledForDataclasses %@%@", &v15, 0x2Au);
  }

  return (*(a1[6] + 16))();
}

void __96__ACAccountStore_accountIdentifiersEnabledForDataclasses_withAccountTypeIdentifiers_completion___block_invoke_2_205(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _connectionFailureError];
  (*(v1 + 16))(v1, 0, v2);
}

- (id)clientTokenForAccount:(id)account
{
  v49 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v5 = _os_activity_create(&dword_1AC3CD000, "accounts/client-token-for-account", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    LODWORD(buf) = 138412290;
    *(&buf + 4) = accountCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "ClientTokenForAccount", "%@", &buf, 0xCu);
  }

  v15 = _ACSignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore clientTokenForAccount:];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__0;
  v47 = __Block_byref_object_dispose__0;
  v48 = 0;
  v16 = dispatch_semaphore_create(0);
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __40__ACAccountStore_clientTokenForAccount___block_invoke;
  v31[3] = &unk_1E7976660;
  v18 = accountCopy;
  v32 = v18;
  p_buf = &buf;
  v33 = v16;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __40__ACAccountStore_clientTokenForAccount___block_invoke_3;
  v29[3] = &unk_1E7976278;
  v19 = v33;
  v30 = v19;
  ac_dispatch_remote(remoteAccountStoreSession, v31, v29);

  dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
  Nanoseconds = _ACSignpostGetNanoseconds(v8, v10);
  v21 = _ACSignpostLogSystem(Nanoseconds);
  v22 = v21;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    v23 = *(*(&buf + 1) + 40);
    *v36 = 138412546;
    v37 = v23;
    v38 = 2112;
    v39 = COERCE_DOUBLE(&stru_1F210E1C8);
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v22, OS_SIGNPOST_INTERVAL_END, v8, "ClientTokenForAccount", "%@%@", v36, 0x16u);
  }

  v25 = _ACSignpostLogSystem(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *v36 = 134218754;
    v28 = *(*(&buf + 1) + 40);
    v37 = v8;
    v38 = 2048;
    v39 = Nanoseconds / 1000000000.0;
    v40 = 2112;
    v41 = v28;
    v42 = 2112;
    v43 = &stru_1F210E1C8;
    _os_log_debug_impl(&dword_1AC3CD000, v25, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: ClientTokenForAccount %@%@", v36, 0x2Au);
  }

  v26 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  os_activity_scope_leave(&state);

  return v26;
}

void __40__ACAccountStore_clientTokenForAccount___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__ACAccountStore_clientTokenForAccount___block_invoke_2;
  v8[3] = &unk_1E7976778;
  v7 = *(a1 + 40);
  v6 = v7;
  v9 = v7;
  [v4 clientTokenForAccountIdentifier:v5 completion:v8];
}

void __40__ACAccountStore_clientTokenForAccount___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)addClientToken:(id)token forAccount:(id)account
{
  v50 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  accountCopy = account;
  v8 = _os_activity_create(&dword_1AC3CD000, "accounts/add-client-token", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v10 = _ACSignpostLogSystem(v9);
  v11 = _ACSignpostCreate(v10);
  v13 = v12;

  v15 = _ACSignpostLogSystem(v14);
  v16 = v15;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 138412546;
    *&buf[4] = tokenCopy;
    *&buf[12] = 2112;
    *&buf[14] = accountCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "AddClientTokenForAccount", "%@ -> %@", buf, 0x16u);
  }

  v18 = _ACSignpostLogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = tokenCopy;
    *&buf[22] = 2112;
    v49 = accountCopy;
    _os_log_debug_impl(&dword_1AC3CD000, v18, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: AddClientTokenForAccount %@ -> %@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v49) = 0;
  v19 = dispatch_semaphore_create(0);
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __44__ACAccountStore_addClientToken_forAccount___block_invoke;
  v36[3] = &unk_1E7976548;
  v21 = tokenCopy;
  v37 = v21;
  v22 = accountCopy;
  v38 = v22;
  v40 = buf;
  v39 = v19;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __44__ACAccountStore_addClientToken_forAccount___block_invoke_3;
  v34[3] = &unk_1E7976278;
  v23 = v39;
  v35 = v23;
  ac_dispatch_remote(remoteAccountStoreSession, v36, v34);

  dispatch_semaphore_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
  Nanoseconds = _ACSignpostGetNanoseconds(v11, v13);
  v25 = _ACSignpostLogSystem(Nanoseconds);
  v26 = v25;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    if (*(*&buf[8] + 24))
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    *v42 = 138543362;
    v43 = v27;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v26, OS_SIGNPOST_INTERVAL_END, v11, "AddClientTokenForAccount", "%{public}@", v42, 0xCu);
  }

  v29 = _ACSignpostLogSystem(v28);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    v32 = *(*&buf[8] + 24);
    *v42 = 134218498;
    v43 = v11;
    if (v32)
    {
      v33 = @"YES";
    }

    else
    {
      v33 = @"NO";
    }

    v44 = 2048;
    v45 = Nanoseconds / 1000000000.0;
    v46 = 2114;
    v47 = v33;
    _os_log_debug_impl(&dword_1AC3CD000, v29, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AddClientTokenForAccount %{public}@", v42, 0x20u);
  }

  v30 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
  os_activity_scope_leave(&state);

  return v30 & 1;
}

void __44__ACAccountStore_addClientToken_forAccount___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 identifier];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__ACAccountStore_addClientToken_forAccount___block_invoke_2;
  v9[3] = &unk_1E79767A0;
  v8 = *(a1 + 48);
  v7 = v8;
  v10 = v8;
  [v5 addClientToken:v3 forAccountIdentifier:v6 completion:v9];
}

- (void)discoverPropertiesForAccount:(id)account options:(id)options completion:(id)completion
{
  v52 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  optionsCopy = options;
  completionCopy = completion;
  v11 = _os_activity_create(&dword_1AC3CD000, "accounts/discover-properties-for-account", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  if (!accountCopy)
  {
    v33 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Account must be non-nil" userInfo:0];
    objc_exception_throw(v33);
  }

  v12 = [(ACAccountStore *)self _sanitizeOptionsDictionary:optionsCopy];

  v14 = _ACSignpostLogSystem(v13);
  v15 = _ACSignpostCreate(v14);
  v17 = v16;

  v19 = _ACSignpostLogSystem(v18);
  v20 = v19;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    accountType = [accountCopy accountType];
    identifier = [accountType identifier];
    *buf = 138543618;
    v47 = identifier;
    v48 = 2112;
    v49 = accountCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v15, "DiscoverProperties", " AccountType=%{public,signpost.telemetry:string1,name=AccountType}@  enableTelemetry=YES (account: %@)", buf, 0x16u);
  }

  v24 = _ACSignpostLogSystem(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    accountType2 = [accountCopy accountType];
    identifier2 = [accountType2 identifier];
    *buf = 134218498;
    v47 = v15;
    v48 = 2114;
    v49 = identifier2;
    v50 = 2112;
    v51 = accountCopy;
    _os_log_debug_impl(&dword_1AC3CD000, v24, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: DiscoverProperties  AccountType=%{public,signpost.telemetry:string1,name=AccountType}@  enableTelemetry=YES (account: %@)", buf, 0x20u);
  }

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __66__ACAccountStore_discoverPropertiesForAccount_options_completion___block_invoke;
  v41[3] = &unk_1E79767C8;
  v43 = v15;
  v44 = v17;
  v25 = completionCopy;
  v41[4] = self;
  v42 = v25;
  v26 = MEMORY[0x1AC5B3C70](v41);
  longLivedRemoteAccountStoreSession = [(ACAccountStore *)self longLivedRemoteAccountStoreSession];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __66__ACAccountStore_discoverPropertiesForAccount_options_completion___block_invoke_2;
  v36[3] = &unk_1E7976390;
  v28 = accountCopy;
  v37 = v28;
  v29 = v12;
  v38 = v29;
  selfCopy = self;
  v40 = v26;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __66__ACAccountStore_discoverPropertiesForAccount_options_completion___block_invoke_4;
  v34[3] = &unk_1E79754F0;
  v30 = v40;
  v34[4] = self;
  v35 = v30;
  ac_dispatch_remote(longLivedRemoteAccountStoreSession, v36, v34);

  os_activity_scope_leave(&state);
}

void __66__ACAccountStore_discoverPropertiesForAccount_options_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  Nanoseconds = _ACSignpostGetNanoseconds(a1[6], a1[7]);
  v8 = _ACSignpostLogSystem(Nanoseconds);
  v9 = v8;
  v10 = a1[6];
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = @"NO";
    if (!v6)
    {
      v11 = @"YES";
    }

    *buf = 138543362;
    v23 = v11;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v9, OS_SIGNPOST_INTERVAL_END, v10, "DiscoverProperties", "%{public}@", buf, 0xCu);
  }

  v13 = _ACSignpostLogSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v16 = a1[6];
    *buf = 134218498;
    v23 = v16;
    if (v6)
    {
      v17 = @"NO";
    }

    else
    {
      v17 = @"YES";
    }

    v24 = 2048;
    v25 = Nanoseconds / 1000000000.0;
    v26 = 2114;
    v27 = v17;
    _os_log_debug_impl(&dword_1AC3CD000, v13, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: DiscoverProperties %{public}@", buf, 0x20u);
  }

  v14 = a1[5];
  if (v14)
  {
    v15 = *(a1[4] + 80);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__ACAccountStore_discoverPropertiesForAccount_options_completion___block_invoke_206;
    block[3] = &unk_1E7975478;
    v21 = v14;
    v19 = v5;
    v20 = v6;
    dispatch_async(v15, block);
  }
}

void __66__ACAccountStore_discoverPropertiesForAccount_options_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__ACAccountStore_discoverPropertiesForAccount_options_completion___block_invoke_3;
  v7[3] = &unk_1E79767F0;
  v6 = *(a1 + 56);
  v7[4] = *(a1 + 48);
  v8 = v6;
  [a2 discoverPropertiesForAccount:v4 options:v5 completion:v7];
}

void __66__ACAccountStore_discoverPropertiesForAccount_options_completion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 _unsanitizeError:a3];
  (*(v4 + 16))(v4, v6, v7);
}

void __66__ACAccountStore_discoverPropertiesForAccount_options_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _connectionFailureError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)openAuthenticationURL:(id)l forAccount:(id)account shouldConfirm:(BOOL)confirm completion:(id)completion
{
  v50 = *MEMORY[0x1E69E9840];
  lCopy = l;
  accountCopy = account;
  completionCopy = completion;
  v13 = _os_activity_create(&dword_1AC3CD000, "accounts/open-authentication-url", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v13, &state);
  if (!accountCopy)
  {
    v30 = @"Account must be non-nil";
    goto LABEL_11;
  }

  if (!lCopy)
  {
    v30 = @"URL must be non-nil";
LABEL_11:
    v31 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v30 userInfo:0];
    objc_exception_throw(v31);
  }

  v15 = _ACSignpostLogSystem(v14);
  v16 = _ACSignpostCreate(v15);
  v18 = v17;

  v20 = _ACSignpostLogSystem(v19);
  v21 = v20;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 138412546;
    v45 = lCopy;
    v46 = 2112;
    v47 = accountCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v16, "OpenAuthURLForAccount", "%@ -> %@", buf, 0x16u);
  }

  v23 = _ACSignpostLogSystem(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v45 = v16;
    v46 = 2112;
    v47 = lCopy;
    v48 = 2112;
    v49 = accountCopy;
    _os_log_debug_impl(&dword_1AC3CD000, v23, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: OpenAuthURLForAccount %@ -> %@", buf, 0x20u);
  }

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __76__ACAccountStore_openAuthenticationURL_forAccount_shouldConfirm_completion___block_invoke;
  v39[3] = &unk_1E7976098;
  v39[4] = self;
  v41 = v16;
  v42 = v18;
  v24 = completionCopy;
  v40 = v24;
  v25 = MEMORY[0x1AC5B3C70](v39);
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __76__ACAccountStore_openAuthenticationURL_forAccount_shouldConfirm_completion___block_invoke_210;
  v34[3] = &unk_1E7976160;
  v27 = lCopy;
  v35 = v27;
  v28 = accountCopy;
  v36 = v28;
  confirmCopy = confirm;
  v37 = v25;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __76__ACAccountStore_openAuthenticationURL_forAccount_shouldConfirm_completion___block_invoke_2_211;
  v32[3] = &unk_1E79754F0;
  v29 = v37;
  v32[4] = self;
  v33 = v29;
  ac_dispatch_remote(remoteAccountStoreSession, v34, v32);

  os_activity_scope_leave(&state);
}

void __76__ACAccountStore_openAuthenticationURL_forAccount_shouldConfirm_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__ACAccountStore_openAuthenticationURL_forAccount_shouldConfirm_completion___block_invoke_2;
  block[3] = &unk_1E7976070;
  v11 = *(a1 + 48);
  v12 = a2;
  v9 = v5;
  v10 = *(a1 + 40);
  v7 = v5;
  dispatch_async(v6, block);
}

uint64_t __76__ACAccountStore_openAuthenticationURL_forAccount_shouldConfirm_completion___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  Nanoseconds = _ACSignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v3 = _ACSignpostLogSystem(Nanoseconds);
  v4 = v3;
  v5 = *(a1 + 48);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    if (*(a1 + 64))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v7 = *(a1 + 32);
    if (!v7)
    {
      v7 = &stru_1F210E1C8;
    }

    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = *&v7;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v4, OS_SIGNPOST_INTERVAL_END, v5, "OpenAuthURLForAccount", "%@%@", &v15, 0x16u);
  }

  v9 = _ACSignpostLogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 48);
    v12 = @"NO";
    v13 = *(a1 + 32);
    if (*(a1 + 64))
    {
      v12 = @"YES";
    }

    v15 = 134218754;
    v16 = v11;
    v14 = &stru_1F210E1C8;
    v17 = 2048;
    v18 = Nanoseconds / 1000000000.0;
    v19 = 2112;
    v20 = v12;
    if (v13)
    {
      v14 = v13;
    }

    v21 = 2112;
    v22 = v14;
    _os_log_debug_impl(&dword_1AC3CD000, v9, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: OpenAuthURLForAccount %@%@", &v15, 0x2Au);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 64), *(a1 + 32));
  }

  return result;
}

void __76__ACAccountStore_openAuthenticationURL_forAccount_shouldConfirm_completion___block_invoke_2_211(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _connectionFailureError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)openAuthenticationURLForAccount:(id)account withDelegateClassName:(id)name fromBundleAtPath:(id)path shouldConfirm:(BOOL)confirm completion:(id)completion
{
  confirmCopy = confirm;
  v61 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  nameCopy = name;
  pathCopy = path;
  completionCopy = completion;
  v15 = _os_activity_create(&dword_1AC3CD000, "accounts/open-authentication-url-with-info", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v15, &state);
  if (!accountCopy)
  {
    v35 = @"Account must be non-nil";
    goto LABEL_17;
  }

  if (!nameCopy)
  {
    v35 = @"Auth delegate class name must be non-nil";
    goto LABEL_17;
  }

  if (!pathCopy)
  {
    v35 = @"Bundle path must be non-nil";
LABEL_17:
    v36 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v35 userInfo:0];
    objc_exception_throw(v36);
  }

  v17 = _ACSignpostLogSystem(v16);
  v18 = _ACSignpostCreate(v17);
  v20 = v19;

  v22 = _ACSignpostLogSystem(v21);
  v23 = v22;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    v24 = @"NO";
    *buf = 138413058;
    v52 = nameCopy;
    if (confirmCopy)
    {
      v24 = @"YES";
    }

    v53 = 2112;
    v54 = pathCopy;
    v55 = 2112;
    v56 = v24;
    v57 = 2112;
    v58 = accountCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v18, "OpenAuthURLForAccount", "%@,%@,%@ -> %@", buf, 0x2Au);
  }

  v26 = _ACSignpostLogSystem(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v34 = @"NO";
    *buf = 134219010;
    v52 = v18;
    if (confirmCopy)
    {
      v34 = @"YES";
    }

    v53 = 2112;
    v54 = nameCopy;
    v55 = 2112;
    v56 = pathCopy;
    v57 = 2112;
    v58 = v34;
    v59 = 2112;
    v60 = accountCopy;
    _os_log_debug_impl(&dword_1AC3CD000, v26, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: OpenAuthURLForAccount %@,%@,%@ -> %@", buf, 0x34u);
  }

  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __114__ACAccountStore_openAuthenticationURLForAccount_withDelegateClassName_fromBundleAtPath_shouldConfirm_completion___block_invoke;
  v46[3] = &unk_1E7976840;
  v46[4] = self;
  v48 = v18;
  v49 = v20;
  v27 = completionCopy;
  v47 = v27;
  v28 = MEMORY[0x1AC5B3C70](v46);
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __114__ACAccountStore_openAuthenticationURLForAccount_withDelegateClassName_fromBundleAtPath_shouldConfirm_completion___block_invoke_219;
  v40[3] = &unk_1E7976868;
  v30 = accountCopy;
  v41 = v30;
  v31 = nameCopy;
  v42 = v31;
  v32 = pathCopy;
  v43 = v32;
  v45 = confirmCopy;
  v44 = v28;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __114__ACAccountStore_openAuthenticationURLForAccount_withDelegateClassName_fromBundleAtPath_shouldConfirm_completion___block_invoke_2_220;
  v38[3] = &unk_1E79754F0;
  v33 = v44;
  v38[4] = self;
  v39 = v33;
  ac_dispatch_remote(remoteAccountStoreSession, v40, v38);

  os_activity_scope_leave(&state);
}

void __114__ACAccountStore_openAuthenticationURLForAccount_withDelegateClassName_fromBundleAtPath_shouldConfirm_completion___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 32) + 80);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __114__ACAccountStore_openAuthenticationURLForAccount_withDelegateClassName_fromBundleAtPath_shouldConfirm_completion___block_invoke_2;
  v13[3] = &unk_1E7976818;
  v17 = *(a1 + 48);
  v18 = a2;
  v14 = v8;
  v10 = *(a1 + 40);
  v15 = v7;
  v16 = v10;
  v11 = v7;
  v12 = v8;
  dispatch_async(v9, v13);
}

uint64_t __114__ACAccountStore_openAuthenticationURLForAccount_withDelegateClassName_fromBundleAtPath_shouldConfirm_completion___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  Nanoseconds = _ACSignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
  v3 = _ACSignpostLogSystem(Nanoseconds);
  v4 = v3;
  v5 = *(a1 + 56);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    if (*(a1 + 72))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v7 = *(a1 + 32);
    if (!v7)
    {
      v7 = &stru_1F210E1C8;
    }

    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = *&v7;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v4, OS_SIGNPOST_INTERVAL_END, v5, "OpenAuthURLForAccount", "%@%@", &v15, 0x16u);
  }

  v9 = _ACSignpostLogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 56);
    v12 = @"NO";
    v13 = *(a1 + 32);
    if (*(a1 + 72))
    {
      v12 = @"YES";
    }

    v15 = 134218754;
    v16 = v11;
    v14 = &stru_1F210E1C8;
    v17 = 2048;
    v18 = Nanoseconds / 1000000000.0;
    v19 = 2112;
    v20 = v12;
    if (v13)
    {
      v14 = v13;
    }

    v21 = 2112;
    v22 = v14;
    _os_log_debug_impl(&dword_1AC3CD000, v9, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: OpenAuthURLForAccount %@%@", &v15, 0x2Au);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 72), *(a1 + 40), *(a1 + 32));
  }

  return result;
}

void __114__ACAccountStore_openAuthenticationURLForAccount_withDelegateClassName_fromBundleAtPath_shouldConfirm_completion___block_invoke_2_220(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _connectionFailureError];
  (*(v1 + 16))(v1, 0, 0, v2);
}

- (void)notifyRemoteDevicesOfModifiedAccount:(id)account withOptions:(id)options completion:(id)completion
{
  v41 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  optionsCopy = options;
  completionCopy = completion;
  v11 = _os_activity_create(&dword_1AC3CD000, "accounts/paired-update-account", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  v13 = _ACSignpostLogSystem(v12);
  v14 = _ACSignpostCreate(v13);
  v16 = v15;

  v18 = _ACSignpostLogSystem(v17);
  v19 = v18;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 138412546;
    v36 = accountCopy;
    v37 = 2112;
    v38 = optionsCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v14, "NotifyRemoteOfModifiedAccount", "%@ (%@)", buf, 0x16u);
  }

  v21 = _ACSignpostLogSystem(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v36 = v14;
    v37 = 2112;
    v38 = accountCopy;
    v39 = 2112;
    v40 = optionsCopy;
    _os_log_debug_impl(&dword_1AC3CD000, v21, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: NotifyRemoteOfModifiedAccount %@ (%@)", buf, 0x20u);
  }

  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __78__ACAccountStore_notifyRemoteDevicesOfModifiedAccount_withOptions_completion___block_invoke;
  v27[3] = &unk_1E7975E90;
  v23 = accountCopy;
  v28 = v23;
  v24 = optionsCopy;
  v29 = v24;
  selfCopy = self;
  v32 = v14;
  v33 = v16;
  v25 = completionCopy;
  v31 = v25;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __78__ACAccountStore_notifyRemoteDevicesOfModifiedAccount_withOptions_completion___block_invoke_221;
  v26[3] = &__block_descriptor_48_e17_v16__0__NSError_8l;
  v26[4] = v14;
  v26[5] = v16;
  ac_dispatch_remote(remoteAccountStoreSession, v27, v26);

  os_activity_scope_leave(&state);
}

void __78__ACAccountStore_notifyRemoteDevicesOfModifiedAccount_withOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__ACAccountStore_notifyRemoteDevicesOfModifiedAccount_withOptions_completion___block_invoke_2;
  v6[3] = &unk_1E7976098;
  v5 = *(a1 + 56);
  v6[4] = *(a1 + 48);
  v8 = *(a1 + 64);
  v7 = v5;
  [a2 notifyRemoteDevicesOfModifiedAccount:v3 withChangeType:@"changed" options:v4 completion:v6];
}

void __78__ACAccountStore_notifyRemoteDevicesOfModifiedAccount_withOptions_completion___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _ACLogSystem(v5);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_1AC3CD000, v7, OS_LOG_TYPE_DEFAULT, "Notified successfully!", &v20, 2u);
  }

  Nanoseconds = _ACSignpostGetNanoseconds(a1[6], a1[7]);
  v9 = _ACSignpostLogSystem(Nanoseconds);
  v10 = v9;
  v11 = a1[6];
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v12 = @"NO";
    if (a2)
    {
      v12 = @"YES";
    }

    v13 = &stru_1F210E1C8;
    if (v5)
    {
      v13 = v5;
    }

    v20 = 138412546;
    v21 = v12;
    v22 = 2112;
    v23 = *&v13;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v10, OS_SIGNPOST_INTERVAL_END, v11, "NotifyRemoteOfModifiedAccount", "%@%@", &v20, 0x16u);
  }

  v15 = _ACSignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17 = a1[6];
    v18 = @"NO";
    if (a2)
    {
      v18 = @"YES";
    }

    v20 = 134218754;
    v21 = v17;
    v19 = &stru_1F210E1C8;
    v22 = 2048;
    v23 = Nanoseconds / 1000000000.0;
    v24 = 2112;
    v25 = v18;
    if (v5)
    {
      v19 = v5;
    }

    v26 = 2112;
    v27 = v19;
    _os_log_debug_impl(&dword_1AC3CD000, v15, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: NotifyRemoteOfModifiedAccount %@%@", &v20, 0x2Au);
  }

  v16 = a1[5];
  if (v16)
  {
    (*(v16 + 16))(v16, a2, v5);
  }
}

void __78__ACAccountStore_notifyRemoteDevicesOfModifiedAccount_withOptions_completion___block_invoke_221(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _ACLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __78__ACAccountStore_notifyRemoteDevicesOfModifiedAccount_withOptions_completion___block_invoke_221_cold_1();
  }

  Nanoseconds = _ACSignpostGetNanoseconds(*(a1 + 32), *(a1 + 40));
  v6 = _ACSignpostLogSystem(Nanoseconds);
  v7 = v6;
  v8 = *(a1 + 32);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = &stru_1F210E1C8;
    if (v3)
    {
      v9 = v3;
    }

    v14 = 138412546;
    v15 = @"NO";
    v16 = 2112;
    v17 = *&v9;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v7, OS_SIGNPOST_INTERVAL_END, v8, "NotifyRemoteOfModifiedAccount", "%@%@", &v14, 0x16u);
  }

  v11 = _ACSignpostLogSystem(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 32);
    v14 = 134218754;
    v15 = v12;
    v13 = &stru_1F210E1C8;
    v16 = 2048;
    v17 = Nanoseconds / 1000000000.0;
    v18 = 2112;
    v19 = @"NO";
    if (v3)
    {
      v13 = v3;
    }

    v20 = 2112;
    v21 = v13;
    _os_log_debug_impl(&dword_1AC3CD000, v11, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: NotifyRemoteOfModifiedAccount %@%@", &v14, 0x2Au);
  }
}

- (void)notifyRemoteDevicesOfUpdatedCredentials:(id)credentials withOptions:(id)options completion:(id)completion
{
  v41 = *MEMORY[0x1E69E9840];
  credentialsCopy = credentials;
  optionsCopy = options;
  completionCopy = completion;
  v11 = _os_activity_create(&dword_1AC3CD000, "accounts/notify-remote-updated-credentials", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  v13 = _ACSignpostLogSystem(v12);
  v14 = _ACSignpostCreate(v13);
  v16 = v15;

  v18 = _ACSignpostLogSystem(v17);
  v19 = v18;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 138412546;
    v36 = credentialsCopy;
    v37 = 2112;
    v38 = optionsCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v14, "NotifyRemoteOfUpdatedCredentials", "%@ (%@)", buf, 0x16u);
  }

  v21 = _ACSignpostLogSystem(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v36 = v14;
    v37 = 2112;
    v38 = credentialsCopy;
    v39 = 2112;
    v40 = optionsCopy;
    _os_log_debug_impl(&dword_1AC3CD000, v21, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: NotifyRemoteOfUpdatedCredentials %@ (%@)", buf, 0x20u);
  }

  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __81__ACAccountStore_notifyRemoteDevicesOfUpdatedCredentials_withOptions_completion___block_invoke;
  v27[3] = &unk_1E7975E90;
  v23 = credentialsCopy;
  v28 = v23;
  v24 = optionsCopy;
  v29 = v24;
  selfCopy = self;
  v32 = v14;
  v33 = v16;
  v25 = completionCopy;
  v31 = v25;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __81__ACAccountStore_notifyRemoteDevicesOfUpdatedCredentials_withOptions_completion___block_invoke_222;
  v26[3] = &__block_descriptor_48_e17_v16__0__NSError_8l;
  v26[4] = v14;
  v26[5] = v16;
  ac_dispatch_remote(remoteAccountStoreSession, v27, v26);

  os_activity_scope_leave(&state);
}

void __81__ACAccountStore_notifyRemoteDevicesOfUpdatedCredentials_withOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __81__ACAccountStore_notifyRemoteDevicesOfUpdatedCredentials_withOptions_completion___block_invoke_2;
  v6[3] = &unk_1E7976098;
  v5 = *(a1 + 56);
  v6[4] = *(a1 + 48);
  v8 = *(a1 + 64);
  v7 = v5;
  [a2 notifyRemoteDevicesOfModifiedAccount:v3 withChangeType:@"auth" options:v4 completion:v6];
}

void __81__ACAccountStore_notifyRemoteDevicesOfUpdatedCredentials_withOptions_completion___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _ACLogSystem(v5);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_1AC3CD000, v7, OS_LOG_TYPE_DEFAULT, "Notified of credential update successfully!", &v20, 2u);
  }

  Nanoseconds = _ACSignpostGetNanoseconds(a1[6], a1[7]);
  v9 = _ACSignpostLogSystem(Nanoseconds);
  v10 = v9;
  v11 = a1[6];
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v12 = @"NO";
    if (a2)
    {
      v12 = @"YES";
    }

    v13 = &stru_1F210E1C8;
    if (v5)
    {
      v13 = v5;
    }

    v20 = 138412546;
    v21 = v12;
    v22 = 2112;
    v23 = *&v13;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v10, OS_SIGNPOST_INTERVAL_END, v11, "NotifyRemoteOfUpdatedCredentials", "%@%@", &v20, 0x16u);
  }

  v15 = _ACSignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17 = a1[6];
    v18 = @"NO";
    if (a2)
    {
      v18 = @"YES";
    }

    v20 = 134218754;
    v21 = v17;
    v19 = &stru_1F210E1C8;
    v22 = 2048;
    v23 = Nanoseconds / 1000000000.0;
    v24 = 2112;
    v25 = v18;
    if (v5)
    {
      v19 = v5;
    }

    v26 = 2112;
    v27 = v19;
    _os_log_debug_impl(&dword_1AC3CD000, v15, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: NotifyRemoteOfUpdatedCredentials %@%@", &v20, 0x2Au);
  }

  v16 = a1[5];
  if (v16)
  {
    (*(v16 + 16))(v16, a2, v5);
  }
}

void __81__ACAccountStore_notifyRemoteDevicesOfUpdatedCredentials_withOptions_completion___block_invoke_222(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _ACLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __81__ACAccountStore_notifyRemoteDevicesOfUpdatedCredentials_withOptions_completion___block_invoke_222_cold_1();
  }

  Nanoseconds = _ACSignpostGetNanoseconds(*(a1 + 32), *(a1 + 40));
  v6 = _ACSignpostLogSystem(Nanoseconds);
  v7 = v6;
  v8 = *(a1 + 32);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = &stru_1F210E1C8;
    if (v3)
    {
      v9 = v3;
    }

    v14 = 138412546;
    v15 = @"NO";
    v16 = 2112;
    v17 = *&v9;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v7, OS_SIGNPOST_INTERVAL_END, v8, "NotifyRemoteOfUpdatedCredentials", "%@%@", &v14, 0x16u);
  }

  v11 = _ACSignpostLogSystem(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 32);
    v14 = 134218754;
    v15 = v12;
    v13 = &stru_1F210E1C8;
    v16 = 2048;
    v17 = Nanoseconds / 1000000000.0;
    v18 = 2112;
    v19 = @"NO";
    if (v3)
    {
      v13 = v3;
    }

    v20 = 2112;
    v21 = v13;
    _os_log_debug_impl(&dword_1AC3CD000, v11, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: NotifyRemoteOfUpdatedCredentials %@%@", &v14, 0x2Au);
  }
}

- (void)saveAccount:(id)account toPairedDeviceWithOptions:(id)options completion:(id)completion
{
  v46 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  optionsCopy = options;
  completionCopy = completion;
  v11 = _os_activity_create(&dword_1AC3CD000, "accounts/paired-save-account", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  if (!accountCopy)
  {
    v28 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Account must be non-nil" userInfo:0];
    objc_exception_throw(v28);
  }

  v13 = _ACSignpostLogSystem(v12);
  v14 = _ACSignpostCreate(v13);
  v16 = v15;

  v18 = _ACSignpostLogSystem(v17);
  v19 = v18;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 138412546;
    v41 = accountCopy;
    v42 = 2112;
    v43 = optionsCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v14, "SaveAccountToPairedDevice", "%@ (%@)", buf, 0x16u);
  }

  v21 = _ACSignpostLogSystem(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v41 = v14;
    v42 = 2112;
    v43 = accountCopy;
    v44 = 2112;
    v45 = optionsCopy;
    _os_log_debug_impl(&dword_1AC3CD000, v21, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: SaveAccountToPairedDevice %@ (%@)", buf, 0x20u);
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __67__ACAccountStore_saveAccount_toPairedDeviceWithOptions_completion___block_invoke;
  v35[3] = &unk_1E7976098;
  v35[4] = self;
  v37 = v14;
  v38 = v16;
  v22 = completionCopy;
  v36 = v22;
  v23 = MEMORY[0x1AC5B3C70](v35);
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __67__ACAccountStore_saveAccount_toPairedDeviceWithOptions_completion___block_invoke_223;
  v31[3] = &unk_1E7975C40;
  v25 = accountCopy;
  v32 = v25;
  v26 = optionsCopy;
  v33 = v26;
  v34 = v23;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __67__ACAccountStore_saveAccount_toPairedDeviceWithOptions_completion___block_invoke_225;
  v29[3] = &unk_1E79754F0;
  v27 = v34;
  v29[4] = self;
  v30 = v27;
  ac_dispatch_remote(remoteAccountStoreSession, v31, v29);

  os_activity_scope_leave(&state);
}

void __67__ACAccountStore_saveAccount_toPairedDeviceWithOptions_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__ACAccountStore_saveAccount_toPairedDeviceWithOptions_completion___block_invoke_2;
  block[3] = &unk_1E7976070;
  v11 = *(a1 + 48);
  v12 = a2;
  v9 = v5;
  v10 = *(a1 + 40);
  v7 = v5;
  dispatch_async(v6, block);
}

uint64_t __67__ACAccountStore_saveAccount_toPairedDeviceWithOptions_completion___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  Nanoseconds = _ACSignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v3 = _ACSignpostLogSystem(Nanoseconds);
  v4 = v3;
  v5 = *(a1 + 48);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    if (*(a1 + 64))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v7 = *(a1 + 32);
    if (!v7)
    {
      v7 = &stru_1F210E1C8;
    }

    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = *&v7;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v4, OS_SIGNPOST_INTERVAL_END, v5, "SaveAccountToPairedDevice", "%@%@", &v15, 0x16u);
  }

  v9 = _ACSignpostLogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 48);
    v12 = @"NO";
    v13 = *(a1 + 32);
    if (*(a1 + 64))
    {
      v12 = @"YES";
    }

    v15 = 134218754;
    v16 = v11;
    v14 = &stru_1F210E1C8;
    v17 = 2048;
    v18 = Nanoseconds / 1000000000.0;
    v19 = 2112;
    v20 = v12;
    if (v13)
    {
      v14 = v13;
    }

    v21 = 2112;
    v22 = v14;
    _os_log_debug_impl(&dword_1AC3CD000, v9, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: SaveAccountToPairedDevice %@%@", &v15, 0x2Au);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 64), *(a1 + 32));
  }

  return result;
}

void __67__ACAccountStore_saveAccount_toPairedDeviceWithOptions_completion___block_invoke_223(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__ACAccountStore_saveAccount_toPairedDeviceWithOptions_completion___block_invoke_2_224;
  v5[3] = &unk_1E7976458;
  v6 = *(a1 + 48);
  [a2 saveAccount:v3 toPairedDeviceWithOptions:v4 completion:v5];
}

void __67__ACAccountStore_saveAccount_toPairedDeviceWithOptions_completion___block_invoke_2_224(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _ACLogSystem(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1AC3CD000, v6, OS_LOG_TYPE_DEFAULT, "Notified successfully!", v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __67__ACAccountStore_saveAccount_toPairedDeviceWithOptions_completion___block_invoke_225(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _connectionFailureError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)removeAccountsFromPairedDeviceWithOptions:(id)options completion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1AC3CD000, "accounts/paired-remove-accounts", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v10 = _ACSignpostLogSystem(v9);
  v11 = _ACSignpostCreate(v10);
  v13 = v12;

  v15 = _ACSignpostLogSystem(v14);
  v16 = v15;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 138412290;
    v35 = optionsCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "RemoveAccountsFromPairedDevice", "(%@)", buf, 0xCu);
  }

  v18 = _ACSignpostLogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore removeAccountsFromPairedDeviceWithOptions:completion:];
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __71__ACAccountStore_removeAccountsFromPairedDeviceWithOptions_completion___block_invoke;
  v29[3] = &unk_1E7976098;
  v29[4] = self;
  v31 = v11;
  v32 = v13;
  v19 = completionCopy;
  v30 = v19;
  v20 = MEMORY[0x1AC5B3C70](v29);
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __71__ACAccountStore_removeAccountsFromPairedDeviceWithOptions_completion___block_invoke_226;
  v26[3] = &unk_1E79754C8;
  v22 = optionsCopy;
  v27 = v22;
  v28 = v20;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __71__ACAccountStore_removeAccountsFromPairedDeviceWithOptions_completion___block_invoke_228;
  v24[3] = &unk_1E79754F0;
  v23 = v28;
  v24[4] = self;
  v25 = v23;
  ac_dispatch_remote(remoteAccountStoreSession, v26, v24);

  os_activity_scope_leave(&state);
}

void __71__ACAccountStore_removeAccountsFromPairedDeviceWithOptions_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__ACAccountStore_removeAccountsFromPairedDeviceWithOptions_completion___block_invoke_2;
  block[3] = &unk_1E7976070;
  v11 = *(a1 + 48);
  v12 = a2;
  v9 = v5;
  v10 = *(a1 + 40);
  v7 = v5;
  dispatch_async(v6, block);
}

uint64_t __71__ACAccountStore_removeAccountsFromPairedDeviceWithOptions_completion___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  Nanoseconds = _ACSignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v3 = _ACSignpostLogSystem(Nanoseconds);
  v4 = v3;
  v5 = *(a1 + 48);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    if (*(a1 + 64))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v7 = *(a1 + 32);
    if (!v7)
    {
      v7 = &stru_1F210E1C8;
    }

    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = *&v7;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v4, OS_SIGNPOST_INTERVAL_END, v5, "RemoveAccountsFromPairedDevice", "%@%@", &v15, 0x16u);
  }

  v9 = _ACSignpostLogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 48);
    v12 = @"NO";
    v13 = *(a1 + 32);
    if (*(a1 + 64))
    {
      v12 = @"YES";
    }

    v15 = 134218754;
    v16 = v11;
    v14 = &stru_1F210E1C8;
    v17 = 2048;
    v18 = Nanoseconds / 1000000000.0;
    v19 = 2112;
    v20 = v12;
    if (v13)
    {
      v14 = v13;
    }

    v21 = 2112;
    v22 = v14;
    _os_log_debug_impl(&dword_1AC3CD000, v9, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: RemoveAccountsFromPairedDevice %@%@", &v15, 0x2Au);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 64), *(a1 + 32));
  }

  return result;
}

void __71__ACAccountStore_removeAccountsFromPairedDeviceWithOptions_completion___block_invoke_226(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__ACAccountStore_removeAccountsFromPairedDeviceWithOptions_completion___block_invoke_2_227;
  v4[3] = &unk_1E7976458;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 removeAccountsFromPairedDeviceWithOptions:v3 completion:v4];
}

void __71__ACAccountStore_removeAccountsFromPairedDeviceWithOptions_completion___block_invoke_2_227(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _ACLogSystem(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1AC3CD000, v6, OS_LOG_TYPE_DEFAULT, "Removed successfully!", v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __71__ACAccountStore_removeAccountsFromPairedDeviceWithOptions_completion___block_invoke_228(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _connectionFailureError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)removeAccountFromPairedDevice:(id)device withOptions:(id)options completion:(id)completion
{
  v45 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  optionsCopy = options;
  completionCopy = completion;
  v11 = _os_activity_create(&dword_1AC3CD000, "accounts/paired-remove-account", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  v13 = _ACSignpostLogSystem(v12);
  v14 = _ACSignpostCreate(v13);
  v16 = v15;

  v18 = _ACSignpostLogSystem(v17);
  v19 = v18;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 138412546;
    v40 = deviceCopy;
    v41 = 2112;
    v42 = optionsCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v14, "RemoveAccountFromPairedDevice", "%@ (%@)", buf, 0x16u);
  }

  v21 = _ACSignpostLogSystem(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v40 = v14;
    v41 = 2112;
    v42 = deviceCopy;
    v43 = 2112;
    v44 = optionsCopy;
    _os_log_debug_impl(&dword_1AC3CD000, v21, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: RemoveAccountFromPairedDevice %@ (%@)", buf, 0x20u);
  }

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __71__ACAccountStore_removeAccountFromPairedDevice_withOptions_completion___block_invoke;
  v34[3] = &unk_1E7976098;
  v34[4] = self;
  v36 = v14;
  v37 = v16;
  v22 = completionCopy;
  v35 = v22;
  v23 = MEMORY[0x1AC5B3C70](v34);
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __71__ACAccountStore_removeAccountFromPairedDevice_withOptions_completion___block_invoke_229;
  v30[3] = &unk_1E7975C40;
  v25 = deviceCopy;
  v31 = v25;
  v26 = optionsCopy;
  v32 = v26;
  v33 = v23;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __71__ACAccountStore_removeAccountFromPairedDevice_withOptions_completion___block_invoke_231;
  v28[3] = &unk_1E79754F0;
  v27 = v33;
  v28[4] = self;
  v29 = v27;
  ac_dispatch_remote(remoteAccountStoreSession, v30, v28);

  os_activity_scope_leave(&state);
}

void __71__ACAccountStore_removeAccountFromPairedDevice_withOptions_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__ACAccountStore_removeAccountFromPairedDevice_withOptions_completion___block_invoke_2;
  block[3] = &unk_1E7976070;
  v11 = *(a1 + 48);
  v12 = a2;
  v9 = v5;
  v10 = *(a1 + 40);
  v7 = v5;
  dispatch_async(v6, block);
}

uint64_t __71__ACAccountStore_removeAccountFromPairedDevice_withOptions_completion___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  Nanoseconds = _ACSignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v3 = _ACSignpostLogSystem(Nanoseconds);
  v4 = v3;
  v5 = *(a1 + 48);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    if (*(a1 + 64))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v7 = *(a1 + 32);
    if (!v7)
    {
      v7 = &stru_1F210E1C8;
    }

    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = *&v7;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v4, OS_SIGNPOST_INTERVAL_END, v5, "RemoveAccountFromPairedDevice", "%@%@", &v15, 0x16u);
  }

  v9 = _ACSignpostLogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 48);
    v12 = @"NO";
    v13 = *(a1 + 32);
    if (*(a1 + 64))
    {
      v12 = @"YES";
    }

    v15 = 134218754;
    v16 = v11;
    v14 = &stru_1F210E1C8;
    v17 = 2048;
    v18 = Nanoseconds / 1000000000.0;
    v19 = 2112;
    v20 = v12;
    if (v13)
    {
      v14 = v13;
    }

    v21 = 2112;
    v22 = v14;
    _os_log_debug_impl(&dword_1AC3CD000, v9, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: RemoveAccountFromPairedDevice %@%@", &v15, 0x2Au);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 64), *(a1 + 32));
  }

  return result;
}

void __71__ACAccountStore_removeAccountFromPairedDevice_withOptions_completion___block_invoke_229(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__ACAccountStore_removeAccountFromPairedDevice_withOptions_completion___block_invoke_2_230;
  v5[3] = &unk_1E7976458;
  v6 = *(a1 + 48);
  [a2 removeAccountFromPairedDevice:v3 withOptions:v4 completion:v5];
}

void __71__ACAccountStore_removeAccountFromPairedDevice_withOptions_completion___block_invoke_2_230(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _ACLogSystem(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1AC3CD000, v6, OS_LOG_TYPE_DEFAULT, "Removed successfully!", v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __71__ACAccountStore_removeAccountFromPairedDevice_withOptions_completion___block_invoke_231(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _connectionFailureError];
  (*(v1 + 16))(v1, 0, v2);
}

- (BOOL)triggerKeychainMigrationIfNecessary:(id *)necessary
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = _os_activity_create(&dword_1AC3CD000, "accounts/trigger-keychain-migration", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "TriggerMigration", &unk_1AC43804B, buf, 2u);
  }

  v15 = _ACSignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore triggerKeychainMigrationIfNecessary:];
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  *buf = 0;
  v31 = buf;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__0;
  v34 = __Block_byref_object_dispose__0;
  v35 = 0;
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __54__ACAccountStore_triggerKeychainMigrationIfNecessary___block_invoke;
  v29[3] = &unk_1E79768B0;
  v29[4] = &v36;
  v29[5] = buf;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __54__ACAccountStore_triggerKeychainMigrationIfNecessary___block_invoke_232;
  v28[3] = &unk_1E7975F58;
  v28[5] = &v36;
  v28[6] = buf;
  v28[4] = self;
  ac_dispatch_remote_sync(remoteAccountStoreSession, v29, v28);

  if (necessary)
  {
    *necessary = *(v31 + 5);
  }

  Nanoseconds = _ACSignpostGetNanoseconds(v8, v10);
  v18 = _ACSignpostLogSystem(Nanoseconds);
  v19 = v18;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    if (*(v37 + 24))
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v21 = *(v31 + 5);
    if (*&v21 == 0.0)
    {
      *&v21 = COERCE_DOUBLE(&stru_1F210E1C8);
    }

    *v41 = 138412546;
    v42 = v20;
    v43 = 2112;
    v44 = *&v21;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v19, OS_SIGNPOST_INTERVAL_END, v8, "TriggerMigration", "%@%@", v41, 0x16u);
  }

  v23 = _ACSignpostLogSystem(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v26 = @"NO";
    v27 = *(v31 + 5);
    if (*(v37 + 24))
    {
      v26 = @"YES";
    }

    *v41 = 134218754;
    v42 = v8;
    v43 = 2048;
    v44 = Nanoseconds / 1000000000.0;
    v45 = 2112;
    v46 = v26;
    if (!v27)
    {
      v27 = &stru_1F210E1C8;
    }

    v47 = 2112;
    v48 = v27;
    _os_log_debug_impl(&dword_1AC3CD000, v23, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: TriggerMigration %@%@", v41, 0x2Au);
  }

  v24 = *(v37 + 24);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v36, 8);
  os_activity_scope_leave(&state);

  return v24 & 1;
}

uint64_t __54__ACAccountStore_triggerKeychainMigrationIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__ACAccountStore_triggerKeychainMigrationIfNecessary___block_invoke_2;
  v3[3] = &unk_1E7976728;
  v4 = *(a1 + 32);
  return [a2 triggerKeychainMigrationIfNecessary:v3];
}

void __54__ACAccountStore_triggerKeychainMigrationIfNecessary___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = _ACLogSystem(v5);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1AC3CD000, v7, OS_LOG_TYPE_DEFAULT, "Keychain migrated successfully!", v10, 2u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
}

uint64_t __54__ACAccountStore_triggerKeychainMigrationIfNecessary___block_invoke_232(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = 0;
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _connectionFailureError];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_obsoleteAccountTypeIDsToRemove
{
  if (_obsoleteAccountTypeIDsToRemove_onceToken != -1)
  {
    +[ACAccountStore _obsoleteAccountTypeIDsToRemove];
  }

  v3 = _obsoleteAccountTypeIDsToRemove__obsolteAccountTypeIDs;

  return v3;
}

void __49__ACAccountStore__obsoleteAccountTypeIDsToRemove__block_invoke()
{
  v2[8] = *MEMORY[0x1E69E9840];
  if (!_obsoleteAccountTypeIDsToRemove__obsolteAccountTypeIDs)
  {
    v2[0] = @"com.apple.twitter";
    v2[1] = @"com.apple.facebook";
    v2[2] = @"com.apple.sinaweibo";
    v2[3] = @"com.apple.account.tencentweibo";
    v2[4] = @"com.apple.flickr";
    v2[5] = @"com.apple.vimeo";
    v2[6] = @"com.apple.linkedin";
    v2[7] = @"com.apple.account.osxserver";
    v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:8];
    v1 = _obsoleteAccountTypeIDsToRemove__obsolteAccountTypeIDs;
    _obsoleteAccountTypeIDsToRemove__obsolteAccountTypeIDs = v0;
  }
}

- (void)removeObsoleteAccounts:(id)accounts
{
  v26 = *MEMORY[0x1E69E9840];
  accountsCopy = accounts;
  v5 = _os_activity_create(&dword_1AC3CD000, "accounts/remove-obsolete-accounts", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "RemoveObsoleteAccounts", &unk_1AC43804B, buf, 2u);
  }

  v15 = _ACSignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore removeObsoleteAccounts:];
  }

  v16 = +[ACAccountStore _obsoleteAccountTypeIDsToRemove];
  v17 = _ACLogSystem(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v16;
    _os_log_impl(&dword_1AC3CD000, v17, OS_LOG_TYPE_DEFAULT, "Will remove obsolete accounts with type identifiers %@", buf, 0xCu);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __41__ACAccountStore_removeObsoleteAccounts___block_invoke;
  v19[3] = &unk_1E7975F80;
  v19[4] = self;
  v21 = v8;
  v22 = v10;
  v18 = accountsCopy;
  v20 = v18;
  [(ACAccountStore *)self accountsWithAccountTypeIdentifiers:v16 completion:v19];

  os_activity_scope_leave(&state);
}

void __41__ACAccountStore_removeObsoleteAccounts___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 mutableCopy];
  v7 = _ACLogSystem(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_1AC3CD000, v7, OS_LOG_TYPE_DEFAULT, "Fetched obsolete accounts %@ error %@", buf, 0x16u);
  }

  v8 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__ACAccountStore_removeObsoleteAccounts___block_invoke_235;
  v9[3] = &unk_1E7976098;
  v9[4] = v8;
  v11 = *(a1 + 48);
  v10 = *(a1 + 40);
  [v8 _removeObsoleteAccountsInternal:v6 completion:v9];
}

void __41__ACAccountStore_removeObsoleteAccounts___block_invoke_235(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__ACAccountStore_removeObsoleteAccounts___block_invoke_2;
  block[3] = &unk_1E7976070;
  v11 = *(a1 + 48);
  v12 = a2;
  v9 = v5;
  v10 = *(a1 + 40);
  v7 = v5;
  dispatch_async(v6, block);
}

uint64_t __41__ACAccountStore_removeObsoleteAccounts___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  Nanoseconds = _ACSignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v3 = _ACSignpostLogSystem(Nanoseconds);
  v4 = v3;
  v5 = *(a1 + 48);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    if (*(a1 + 64))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v7 = *(a1 + 32);
    if (!v7)
    {
      v7 = &stru_1F210E1C8;
    }

    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = *&v7;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v4, OS_SIGNPOST_INTERVAL_END, v5, "RemoveObsoleteAccounts", "%@%@", &v15, 0x16u);
  }

  v9 = _ACSignpostLogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 48);
    v12 = @"NO";
    v13 = *(a1 + 32);
    if (*(a1 + 64))
    {
      v12 = @"YES";
    }

    v15 = 134218754;
    v16 = v11;
    v14 = &stru_1F210E1C8;
    v17 = 2048;
    v18 = Nanoseconds / 1000000000.0;
    v19 = 2112;
    v20 = v12;
    if (v13)
    {
      v14 = v13;
    }

    v21 = 2112;
    v22 = v14;
    _os_log_debug_impl(&dword_1AC3CD000, v9, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: RemoveObsoleteAccounts %@%@", &v15, 0x2Au);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 64), *(a1 + 32));
  }

  return result;
}

- (void)_removeObsoleteAccountsInternal:(id)internal completion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  internalCopy = internal;
  completionCopy = completion;
  firstObject = [internalCopy firstObject];
  if (firstObject)
  {
    v30 = 0;
    v9 = [(ACAccountStore *)self dataclassActionsForAccountDeletion:firstObject error:&v30];
    v10 = v30;
    v11 = _ACLogSystem(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v32 = firstObject;
      v33 = 2112;
      v34 = v9;
      v35 = 2112;
      v36 = v10;
      _os_log_impl(&dword_1AC3CD000, v11, OS_LOG_TYPE_DEFAULT, "Gathered account %@ potential dataclass actions for deletion %@ error %@", buf, 0x20u);
    }

    v20 = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __61__ACAccountStore__removeObsoleteAccountsInternal_completion___block_invoke;
    v27[3] = &unk_1E79768D8;
    v13 = v12;
    v28 = v13;
    v14 = firstObject;
    v29 = v14;
    [v9 enumerateKeysAndObjectsUsingBlock:v27];
    accountType = [v14 accountType];
    identifier = [accountType identifier];
    v17 = [identifier isEqualToString:@"com.apple.account.osxserver"];

    if (v17)
    {
      v18 = [(ACAccountStore *)self _removeObsoleteOSXServerAccountForiOS:v14];
    }

    v19 = _ACLogSystem(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v32 = v14;
      v33 = 2112;
      v34 = v13;
      _os_log_impl(&dword_1AC3CD000, v19, OS_LOG_TYPE_DEFAULT, "Will remove obsolete account %@ with dataclass actions %@", buf, 0x16u);
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __61__ACAccountStore__removeObsoleteAccountsInternal_completion___block_invoke_237;
    v21[3] = &unk_1E7976900;
    v22 = v14;
    v23 = 0;
    selfCopy = self;
    v25 = internalCopy;
    v26 = completionCopy;
    [(ACAccountStore *)self removeAccount:v22 withDataclassActions:v13 completion:v21];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }
}

void __61__ACAccountStore__removeObsoleteAccountsInternal_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      if ([v11 type] == 3)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v11;

    if (!v13)
    {
      goto LABEL_12;
    }

    [*(a1 + 32) setObject:v13 forKeyedSubscript:v5];
  }

  else
  {
LABEL_9:

LABEL_12:
    v13 = _ACLogSystem(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __61__ACAccountStore__removeObsoleteAccountsInternal_completion___block_invoke_cold_1();
    }
  }
}

void __61__ACAccountStore__removeObsoleteAccountsInternal_completion___block_invoke_237(uint64_t a1, uint64_t a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _ACLogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    *buf = 138412802;
    v30 = v7;
    v31 = 2112;
    v32 = v8;
    v33 = 2112;
    v34 = v5;
    _os_log_impl(&dword_1AC3CD000, v6, OS_LOG_TYPE_DEFAULT, "Did remove obsolete account %@ with success %@ error %@", buf, 0x20u);
  }

  if (a2)
  {
    v22 = v5;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = *(a1 + 40);
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        v13 = 0;
        do
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * v13);
          v15 = *(a1 + 48);
          v23 = 0;
          v16 = [v15 saveVerifiedAccount:v14 error:&v23];
          v17 = v23;
          v18 = _ACLogSystem(v17);
          v19 = v18;
          if (v16)
          {
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v20 = [v14 accountType];
              v21 = [v20 identifier];
              *buf = 138412290;
              v30 = v21;
              _os_log_impl(&dword_1AC3CD000, v19, OS_LOG_TYPE_DEFAULT, "Successfully saved macOSServer child account: %@", buf, 0xCu);
            }
          }

          else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v30 = v17;
            _os_log_error_impl(&dword_1AC3CD000, v19, OS_LOG_TYPE_ERROR, "Failed to save macOSServer child account. Error: %@", buf, 0xCu);
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v11);
    }

    v5 = v22;
  }

  [*(a1 + 56) removeObjectAtIndex:0];
  [*(a1 + 48) _removeObsoleteAccountsInternal:*(a1 + 56) completion:*(a1 + 64)];
}

- (id)_removeObsoleteOSXServerAccountForMacOS:(id)s
{
  v131 = *MEMORY[0x1E69E9840];
  sCopy = s;
  v85 = objc_opt_new();
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  obj = [sCopy childAccounts];
  v89 = [obj countByEnumeratingWithState:&v115 objects:v130 count:16];
  if (v89)
  {
    v87 = *v116;
    v91 = sCopy;
    do
    {
      for (i = 0; i != v89; i = v61 + 1)
      {
        if (*v116 != v87)
        {
          objc_enumerationMutation(obj);
        }

        v94 = *(*(&v115 + 1) + 8 * i);
        v5 = [v94 objectForKeyedSubscript:@"Hostname"];
        v6 = v5;
        v90 = i;
        if (v5)
        {
          v7 = v5;
        }

        else
        {
          v7 = [sCopy objectForKeyedSubscript:@"Hostname"];
        }

        v8 = v7;

        accountType = [v94 accountType];
        v10 = [(ACAccountStore *)self accountsWithAccountType:accountType];

        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v111 objects:v129 count:16];
        v92 = v8;
        v93 = v11;
        if (v12)
        {
          v13 = v12;
          v14 = *v112;
          while (2)
          {
            v15 = 0;
            do
            {
              if (*v112 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v111 + 1) + 8 * v15);
              parentAccount = [v16 parentAccount];
              if (parentAccount || ([v16 objectForKeyedSubscript:@"Hostname"], parentAccount = objc_claimAutoreleasedReturnValue(), objc_msgSend(parentAccount, "compare:options:", v8, 1)))
              {
              }

              else
              {
                username = [v16 username];
                username2 = [v94 username];
                if (![username compare:username2 options:1])
                {

                  v8 = v92;
                  v11 = v93;
LABEL_41:
                  identifier2 = _ACLogSystem(v23);
                  if (os_log_type_enabled(identifier2, OS_LOG_TYPE_DEFAULT))
                  {
                    identifier = [v16 identifier];
                    *buf = 138412290;
                    v128 = identifier;
                    _os_log_impl(&dword_1AC3CD000, identifier2, OS_LOG_TYPE_DEFAULT, "Found a matching existing account %@", buf, 0xCu);
                  }

                  portableCopy = v11;
                  sCopy = v91;
                  v61 = v90;
                  goto LABEL_71;
                }

                username3 = [v16 username];
                qualifiedUsername = [v91 qualifiedUsername];
                v22 = [username3 compare:qualifiedUsername options:1];

                v8 = v92;
                v11 = v93;
                if (!v22)
                {
                  goto LABEL_41;
                }
              }

              ++v15;
            }

            while (v13 != v15);
            v24 = [v11 countByEnumeratingWithState:&v111 objects:v129 count:16];
            v13 = v24;
            if (v24)
            {
              continue;
            }

            break;
          }
        }

        portableCopy = [v94 portableCopy];
        [portableCopy setAuthenticationType:0];
        [portableCopy setParentAccount:0];
        uUID = [MEMORY[0x1E696AFB0] UUID];
        uUIDString = [uUID UUIDString];
        [portableCopy setIdentifier:uUIDString];

        sCopy = v91;
        internalCredential = [v91 internalCredential];
        v29 = [internalCredential copy];
        [portableCopy setCredential:v29];

        internalCredential2 = [v91 internalCredential];
        credentialType = [internalCredential2 credentialType];
        v32 = [credentialType copy];
        [portableCopy setCredentialType:v32];

        authenticationType = [v91 authenticationType];
        v34 = [authenticationType copy];
        [portableCopy setAuthenticationType:v34];

        [portableCopy setSupportsAuthentication:{objc_msgSend(v91, "supportsAuthentication")}];
        [portableCopy setAuthenticated:{objc_msgSend(v91, "isAuthenticated")}];
        username4 = [v91 username];
        v36 = [username4 copy];
        [portableCopy setUsername:v36];

        accountDescription = [v91 accountDescription];
        v38 = [accountDescription copy];
        [portableCopy setAccountDescription:v38];

        v39 = MEMORY[0x1E696AEC0];
        owningBundleID = [v91 owningBundleID];
        v41 = [v39 stringWithFormat:@"%@.migrator", owningBundleID];
        [portableCopy setOwningBundleID:v41];

        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        enabledDataclasses = [v94 enabledDataclasses];
        v43 = [enabledDataclasses countByEnumeratingWithState:&v107 objects:v126 count:16];
        if (v43)
        {
          v44 = v43;
          v45 = *v108;
          do
          {
            for (j = 0; j != v44; ++j)
            {
              if (*v108 != v45)
              {
                objc_enumerationMutation(enabledDataclasses);
              }

              [portableCopy setEnabled:1 forDataclass:*(*(&v107 + 1) + 8 * j)];
            }

            v44 = [enabledDataclasses countByEnumeratingWithState:&v107 objects:v126 count:16];
          }

          while (v44);
        }

        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        provisionedDataclasses = [v94 provisionedDataclasses];
        v48 = [provisionedDataclasses countByEnumeratingWithState:&v103 objects:v125 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v104;
          do
          {
            for (k = 0; k != v49; ++k)
            {
              if (*v104 != v50)
              {
                objc_enumerationMutation(provisionedDataclasses);
              }

              [portableCopy setProvisioned:1 forDataclass:*(*(&v103 + 1) + 8 * k)];
            }

            v49 = [provisionedDataclasses countByEnumeratingWithState:&v103 objects:v125 count:16];
          }

          while (v49);
        }

        accountType2 = [v94 accountType];
        identifier2 = [accountType2 identifier];

        if ([identifier2 isEqualToString:@"com.apple.account.IMAP"])
        {
          v123[0] = @"ACPropertyFullName";
          v123[1] = @"EmailAliases";
          v124[0] = @"ACPropertyFullName";
          v124[1] = @"EmailAliases";
          v123[2] = @"imapHostname";
          v123[3] = @"EmailAddress";
          v124[2] = @"Hostname";
          v124[3] = @"IdentityEmailAddress";
          v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v124 forKeys:v123 count:4];
          dataclassProperties = [v91 dataclassProperties];
          v56 = [dataclassProperties objectForKeyedSubscript:@"com.apple.Dataclass.Mail"];
          if (v56)
          {
            dataclassProperties2 = [v91 dataclassProperties];
            v58 = [dataclassProperties2 objectForKeyedSubscript:@"com.apple.Dataclass.Mail"];
            v59 = [v58 mutableCopy];
          }

          else
          {
            v59 = objc_opt_new();
          }

          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v67 = v54;
          v68 = [v67 countByEnumeratingWithState:&v99 objects:v122 count:16];
          if (v68)
          {
            v69 = v68;
            v70 = *v100;
            do
            {
              for (m = 0; m != v69; ++m)
              {
                if (*v100 != v70)
                {
                  objc_enumerationMutation(v67);
                }

                v72 = *(*(&v99 + 1) + 8 * m);
                v73 = [v59 objectForKeyedSubscript:v72];

                if (v73)
                {
                  v74 = [v59 objectForKeyedSubscript:v72];
                  v75 = [v67 objectForKeyedSubscript:v72];
                  [portableCopy setAccountProperty:v74 forKey:v75];
                }
              }

              v69 = [v67 countByEnumeratingWithState:&v99 objects:v122 count:16];
            }

            while (v69);
            goto LABEL_68;
          }

          goto LABEL_69;
        }

        v61 = v90;
        v11 = v93;
        if ([identifier2 isEqualToString:@"com.apple.account.SMTP"])
        {
          v120[0] = @"EmailAddress";
          v120[1] = @"smtpHostname";
          v121[0] = @"IdentityEmailAddress";
          v121[1] = @"Hostname";
          v120[2] = @"smtpRequiresSSL";
          v121[2] = @"SSLEnabled";
          v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v121 forKeys:v120 count:3];
          dataclassProperties3 = [v91 dataclassProperties];
          v64 = [dataclassProperties3 objectForKeyedSubscript:@"com.apple.Dataclass.Mail"];
          if (v64)
          {
            dataclassProperties4 = [v91 dataclassProperties];
            v66 = [dataclassProperties4 objectForKeyedSubscript:@"com.apple.Dataclass.Mail"];
            v59 = [v66 mutableCopy];
          }

          else
          {
            v59 = objc_opt_new();
          }

          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v67 = v62;
          v76 = [v67 countByEnumeratingWithState:&v95 objects:v119 count:16];
          if (v76)
          {
            v77 = v76;
            v78 = *v96;
            do
            {
              for (n = 0; n != v77; ++n)
              {
                if (*v96 != v78)
                {
                  objc_enumerationMutation(v67);
                }

                v80 = *(*(&v95 + 1) + 8 * n);
                v81 = [v59 objectForKeyedSubscript:v80];

                if (v81)
                {
                  v82 = [v59 objectForKeyedSubscript:v80];
                  v83 = [v67 objectForKeyedSubscript:v80];
                  [portableCopy setAccountProperty:v82 forKey:v83];
                }
              }

              v77 = [v67 countByEnumeratingWithState:&v95 objects:v119 count:16];
            }

            while (v77);
LABEL_68:
            sCopy = v91;
          }

LABEL_69:

          v61 = v90;
          v8 = v92;
          v11 = v93;
        }

        [v85 addObject:portableCopy];
LABEL_71:
      }

      v89 = [obj countByEnumeratingWithState:&v115 objects:v130 count:16];
    }

    while (v89);
  }

  return v85;
}

- (void)_removeObsoleteOSXServerAccountForiOS:(id)s
{
  v105 = *MEMORY[0x1E69E9840];
  sCopy = s;
  v4 = [sCopy accountPropertyForKey:@"MCAccountIsManaged"];
  bOOLValue = [v4 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v71 = objc_opt_new();
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    obj = [sCopy childAccounts];
    v66 = sCopy;
    v70 = [obj countByEnumeratingWithState:&v94 objects:v104 count:16];
    if (v70)
    {
      v69 = *v95;
      do
      {
        v6 = 0;
        do
        {
          if (*v95 != v69)
          {
            objc_enumerationMutation(obj);
          }

          v72 = v6;
          v7 = *(*(&v94 + 1) + 8 * v6);
          enabledDataclasses = [v7 enabledDataclasses];
          v9 = [enabledDataclasses copy];

          provisionedDataclasses = [v7 provisionedDataclasses];
          v11 = [provisionedDataclasses copy];

          [v7 setAuthenticationType:0];
          [v7 setParentAccount:0];
          internalCredential = [sCopy internalCredential];
          v13 = [internalCredential copy];
          [v7 setCredential:v13];

          internalCredential2 = [sCopy internalCredential];
          credentialType = [internalCredential2 credentialType];
          v16 = [credentialType copy];
          [v7 setCredentialType:v16];

          authenticationType = [sCopy authenticationType];
          v18 = [authenticationType copy];
          [v7 setAuthenticationType:v18];

          [v7 setSupportsAuthentication:{objc_msgSend(sCopy, "supportsAuthentication")}];
          [v7 setAuthenticated:{objc_msgSend(sCopy, "isAuthenticated")}];
          username = [sCopy username];
          v20 = [username copy];
          [v7 setUsername:v20];

          accountDescription = [sCopy accountDescription];
          v22 = [accountDescription copy];
          [v7 setAccountDescription:v22];

          v23 = MEMORY[0x1E696AEC0];
          owningBundleID = [sCopy owningBundleID];
          v25 = [v23 stringWithFormat:@"%@.migrator", owningBundleID];
          [v7 setOwningBundleID:v25];

          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v26 = v9;
          v27 = [v26 countByEnumeratingWithState:&v90 objects:v103 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v91;
            do
            {
              for (i = 0; i != v28; ++i)
              {
                if (*v91 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                [v7 setEnabled:1 forDataclass:*(*(&v90 + 1) + 8 * i)];
              }

              v28 = [v26 countByEnumeratingWithState:&v90 objects:v103 count:16];
            }

            while (v28);
          }

          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v31 = v11;
          v32 = [v31 countByEnumeratingWithState:&v86 objects:v102 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v87;
            do
            {
              for (j = 0; j != v33; ++j)
              {
                if (*v87 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                [v7 setProvisioned:1 forDataclass:*(*(&v86 + 1) + 8 * j)];
              }

              v33 = [v31 countByEnumeratingWithState:&v86 objects:v102 count:16];
            }

            while (v33);
          }

          accountType = [v7 accountType];
          identifier = [accountType identifier];

          if ([identifier isEqualToString:@"com.apple.account.IMAPMail"])
          {
            v38 = [(ACAccountStore *)self accountTypeWithAccountTypeIdentifier:@"com.apple.account.IMAP"];
            [v7 setAccountType:v38];

            v39 = [v7 objectForKeyedSubscript:@"Hostname"];
            v40 = v39;
            if (v39)
            {
              v41 = v39;
            }

            else
            {
              v41 = [sCopy objectForKeyedSubscript:@"Hostname"];
            }

            v42 = v41;

            v43 = MEMORY[0x1E696AEC0];
            username2 = [sCopy username];
            v45 = [v43 stringWithFormat:@"%@:%@", v42, username2];

            [v7 setAccountProperty:v45 forKey:@"SMTPIdentifier"];
            [v7 setAccountProperty:@"IMAPAccount" forKey:@"Class"];
            [v7 setAccountProperty:@"IMAP" forKey:@"Protocol"];
            [v7 setAccountProperty:&unk_1F2118928 forKey:@"SSLEnabled"];
            if ([sCopy isEnabledForDataclass:@"com.apple.Dataclass.Notes"])
            {
              [v7 setEnabled:1 forDataclass:@"com.apple.Dataclass.Notes"];
            }

            if ([sCopy isProvisionedForDataclass:@"com.apple.Dataclass.Notes"])
            {
              [v7 setProvisioned:1 forDataclass:@"com.apple.Dataclass.Notes"];
            }

            v46 = [(ACAccountStore *)self _createSMTPAccountForServerAccount:sCopy];
            [v71 addObject:v46];
          }

          if ([identifier isEqualToString:@"com.apple.account.IMAPNotes"])
          {
            v84 = 0u;
            v85 = 0u;
            v82 = 0u;
            v83 = 0u;
            childAccounts = [sCopy childAccounts];
            v76 = [childAccounts countByEnumeratingWithState:&v82 objects:v101 count:16];
            if (v76)
            {
              v75 = *v83;
              v68 = identifier;
              while (2)
              {
                for (k = 0; k != v76; ++k)
                {
                  if (*v83 != v75)
                  {
                    objc_enumerationMutation(childAccounts);
                  }

                  v48 = *(*(&v82 + 1) + 8 * k);
                  accountType2 = [v48 accountType];
                  identifier2 = [accountType2 identifier];
                  if ([identifier2 isEqualToString:@"com.apple.account.IMAPMail"])
                  {

LABEL_42:
                    [v7 setParentAccount:v48];
                    [v7 setAuthenticationType:@"parent"];
                    sCopy = v66;
                    identifier = v68;
                    if ([v66 isProvisionedForDataclass:@"com.apple.Dataclass.Notes"])
                    {
                      [v7 setProvisioned:1 forDataclass:@"com.apple.Dataclass.Notes"];
                    }

                    goto LABEL_44;
                  }

                  accountType3 = [v48 accountType];
                  identifier3 = [accountType3 identifier];
                  v53 = [identifier3 isEqualToString:@"com.apple.account.IMAP"];

                  if (v53)
                  {
                    goto LABEL_42;
                  }
                }

                sCopy = v66;
                identifier = v68;
                v76 = [childAccounts countByEnumeratingWithState:&v82 objects:v101 count:16];
                if (v76)
                {
                  continue;
                }

                break;
              }
            }

LABEL_44:
          }

          [v71 addObject:v7];

          v6 = v72 + 1;
        }

        while (v72 + 1 != v70);
        v70 = [obj countByEnumeratingWithState:&v94 objects:v104 count:16];
      }

      while (v70);
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v54 = v71;
    v55 = [v54 countByEnumeratingWithState:&v78 objects:v100 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v79;
      do
      {
        for (m = 0; m != v56; ++m)
        {
          if (*v79 != v57)
          {
            objc_enumerationMutation(v54);
          }

          v59 = *(*(&v78 + 1) + 8 * m);
          v77 = 0;
          v60 = [(ACAccountStore *)self saveVerifiedAccount:v59 error:&v77];
          v61 = v77;
          v62 = _ACLogSystem(v61);
          v63 = v62;
          if (v60)
          {
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              accountType4 = [v59 accountType];
              identifier4 = [accountType4 identifier];
              *buf = 138412290;
              v99 = identifier4;
              _os_log_impl(&dword_1AC3CD000, v63, OS_LOG_TYPE_DEFAULT, "Successfully saved macOSServer child account: %@", buf, 0xCu);
            }
          }

          else if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v99 = v61;
            _os_log_error_impl(&dword_1AC3CD000, v63, OS_LOG_TYPE_ERROR, "Failed to save macOSServer child account. Error: %@", buf, 0xCu);
          }
        }

        v56 = [v54 countByEnumeratingWithState:&v78 objects:v100 count:16];
      }

      while (v56);
    }

    sCopy = v66;
  }
}

- (id)_createSMTPAccountForServerAccount:(id)account
{
  accountCopy = account;
  v5 = [ACAccount alloc];
  v6 = [(ACAccountStore *)self accountTypeWithAccountTypeIdentifier:@"com.apple.account.SMTP"];
  v7 = [(ACAccount *)v5 initWithAccountType:v6];

  internalCredential = [accountCopy internalCredential];
  v9 = [internalCredential copy];
  [(ACAccount *)v7 setCredential:v9];

  credentialType = [accountCopy credentialType];
  [(ACAccount *)v7 setCredentialType:credentialType];

  username = [accountCopy username];
  [(ACAccount *)v7 setUsername:username];

  [(ACAccount *)v7 setAuthenticated:1];
  [(ACAccount *)v7 setSupportsAuthentication:1];
  accountDescription = [accountCopy accountDescription];
  [(ACAccount *)v7 setAccountDescription:accountDescription];

  [(ACAccount *)v7 setActive:1];
  [(ACAccount *)v7 setEnabled:1 forDataclass:@"com.apple.Dataclass.Mail"];
  [(ACAccount *)v7 setProvisioned:1 forDataclass:@"com.apple.Dataclass.Mail"];
  dataclassProperties = [accountCopy dataclassProperties];
  v14 = [dataclassProperties objectForKeyedSubscript:@"com.apple.Dataclass.Mail"];
  if (v14)
  {
    dataclassProperties2 = [accountCopy dataclassProperties];
    v16 = [dataclassProperties2 objectForKeyedSubscript:@"com.apple.Dataclass.Mail"];
    v17 = [v16 mutableCopy];
  }

  else
  {
    v17 = objc_opt_new();
  }

  v18 = [v17 objectForKeyedSubscript:@"OutgoingMailServerAuthentication"];
  [(ACAccount *)v7 setAccountProperty:v18 forKey:@"AuthenticationScheme"];

  v19 = [v17 objectForKeyedSubscript:@"smtpHostname"];
  [(ACAccount *)v7 setAccountProperty:v19 forKey:@"Hostname"];

  v20 = [v17 objectForKeyedSubscript:@"smtpPort"];
  [(ACAccount *)v7 setAccountProperty:v20 forKey:@"PortNumber"];

  v21 = [v17 objectForKeyedSubscript:@"smtpRequiresSSL"];
  [(ACAccount *)v7 setAccountProperty:v21 forKey:@"SSLEnabled"];

  [(ACAccount *)v7 setAccountProperty:@"SMTPAccount" forKey:@"Class"];
  [(ACAccount *)v7 setAccountProperty:@"SMTP" forKey:@"Protocol"];
  [(ACAccount *)v7 setAccountProperty:&unk_1F2118928 forKey:@"ShouldUseAuthentication"];

  return v7;
}

- (void)handleURL:(id)l
{
  v29 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = _os_activity_create(&dword_1AC3CD000, "accounts/handle-url", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    *buf = 138412290;
    v28 = lCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "HandleURL", "%@", buf, 0xCu);
  }

  v15 = _ACSignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore handleURL:];
  }

  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __28__ACAccountStore_handleURL___block_invoke;
  v22[3] = &unk_1E7976928;
  v23 = lCopy;
  v24 = v8;
  v25 = v10;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __28__ACAccountStore_handleURL___block_invoke_252;
  v18[3] = &unk_1E7976950;
  v17 = v23;
  v19 = v17;
  v20 = v8;
  v21 = v10;
  ac_dispatch_remote(remoteAccountStoreSession, v22, v18);

  os_activity_scope_leave(&state);
}

void __28__ACAccountStore_handleURL___block_invoke(void *a1, void *a2)
{
  [a2 handleURL:a1[4]];
  Nanoseconds = _ACSignpostGetNanoseconds(a1[5], a1[6]);
  v4 = _ACSignpostLogSystem(Nanoseconds);
  v5 = v4;
  v6 = a1[5];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v5, OS_SIGNPOST_INTERVAL_END, v6, "HandleURL", &unk_1AC43804B, v9, 2u);
  }

  v8 = _ACSignpostLogSystem(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __28__ACAccountStore_handleURL___block_invoke_cold_1();
  }
}

void __28__ACAccountStore_handleURL___block_invoke_252(uint64_t a1)
{
  v2 = _ACLogSystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __28__ACAccountStore_handleURL___block_invoke_252_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  Nanoseconds = _ACSignpostGetNanoseconds(*(a1 + 40), *(a1 + 48));
  v10 = _ACSignpostLogSystem(Nanoseconds);
  v11 = v10;
  v12 = *(a1 + 40);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v11, OS_SIGNPOST_INTERVAL_END, v12, "HandleURL", &unk_1AC43804B, v15, 2u);
  }

  v14 = _ACSignpostLogSystem(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __28__ACAccountStore_handleURL___block_invoke_cold_1();
  }
}

- (void)reportTelemetryForLandmarkEvent:(id)event
{
  eventCopy = event;
  v5 = _ACLogSystem(eventCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [ACAccountStore reportTelemetryForLandmarkEvent:];
  }

  _connectionFailureError = [(ACAccountStore *)self _connectionFailureError];
  eventCopy[2](eventCopy, 0, _connectionFailureError);
}

- (void)scheduleBackupIfNonexistent:(id)nonexistent
{
  nonexistentCopy = nonexistent;
  v5 = _os_activity_create(&dword_1AC3CD000, "accounts/schedule-backup", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "ScheduleBackup", &unk_1AC43804B, buf, 2u);
  }

  v15 = _ACSignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore scheduleBackupIfNonexistent:];
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __46__ACAccountStore_scheduleBackupIfNonexistent___block_invoke;
  v24[3] = &unk_1E7976098;
  v24[4] = self;
  v26 = v8;
  v27 = v10;
  v16 = nonexistentCopy;
  v25 = v16;
  v17 = MEMORY[0x1AC5B3C70](v24);
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __46__ACAccountStore_scheduleBackupIfNonexistent___block_invoke_253;
  v22[3] = &unk_1E7976480;
  v23 = v17;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __46__ACAccountStore_scheduleBackupIfNonexistent___block_invoke_255;
  v20[3] = &unk_1E79754F0;
  v19 = v23;
  v20[4] = self;
  v21 = v19;
  ac_dispatch_remote(remoteAccountStoreSession, v22, v20);

  os_activity_scope_leave(&state);
}

void __46__ACAccountStore_scheduleBackupIfNonexistent___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__ACAccountStore_scheduleBackupIfNonexistent___block_invoke_2;
  block[3] = &unk_1E7976070;
  v11 = *(a1 + 48);
  v12 = a2;
  v9 = v5;
  v10 = *(a1 + 40);
  v7 = v5;
  dispatch_async(v6, block);
}

uint64_t __46__ACAccountStore_scheduleBackupIfNonexistent___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  Nanoseconds = _ACSignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v3 = _ACSignpostLogSystem(Nanoseconds);
  v4 = v3;
  v5 = *(a1 + 48);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    if (*(a1 + 64))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v7 = *(a1 + 32);
    if (!v7)
    {
      v7 = &stru_1F210E1C8;
    }

    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = *&v7;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v4, OS_SIGNPOST_INTERVAL_END, v5, "ScheduleBackup", "%@%@", &v15, 0x16u);
  }

  v9 = _ACSignpostLogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 48);
    v12 = @"NO";
    v13 = *(a1 + 32);
    if (*(a1 + 64))
    {
      v12 = @"YES";
    }

    v15 = 134218754;
    v16 = v11;
    v14 = &stru_1F210E1C8;
    v17 = 2048;
    v18 = Nanoseconds / 1000000000.0;
    v19 = 2112;
    v20 = v12;
    if (v13)
    {
      v14 = v13;
    }

    v21 = 2112;
    v22 = v14;
    _os_log_debug_impl(&dword_1AC3CD000, v9, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: ScheduleBackup %@%@", &v15, 0x2Au);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 64), *(a1 + 32));
  }

  return result;
}

void __46__ACAccountStore_scheduleBackupIfNonexistent___block_invoke_253(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__ACAccountStore_scheduleBackupIfNonexistent___block_invoke_2_254;
  v3[3] = &unk_1E7976458;
  v4 = *(a1 + 32);
  [a2 scheduleBackupIfNonexistent:v3];
}

void __46__ACAccountStore_scheduleBackupIfNonexistent___block_invoke_2_254(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _ACLogSystem(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__ACAccountStore_accountWithIdentifier_error___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1AC3CD000, v6, OS_LOG_TYPE_DEFAULT, "Backup scheduled (if nonexistent) successfully!", v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __46__ACAccountStore_scheduleBackupIfNonexistent___block_invoke_255(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _connectionFailureError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)resetDatabaseToVersion:(id)version withCompletion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1AC3CD000, "accounts/reset-database-to-version", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v10 = _ACSignpostLogSystem(v9);
  v11 = _ACSignpostCreate(v10);
  v13 = v12;

  v15 = _ACSignpostLogSystem(v14);
  v16 = v15;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 138412290;
    v35 = versionCopy;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ResetDatabaseToVersion", "%@", buf, 0xCu);
  }

  v18 = _ACSignpostLogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore resetDatabaseToVersion:withCompletion:];
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __56__ACAccountStore_resetDatabaseToVersion_withCompletion___block_invoke;
  v29[3] = &unk_1E7976098;
  v29[4] = self;
  v31 = v11;
  v32 = v13;
  v19 = completionCopy;
  v30 = v19;
  v20 = MEMORY[0x1AC5B3C70](v29);
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __56__ACAccountStore_resetDatabaseToVersion_withCompletion___block_invoke_256;
  v26[3] = &unk_1E79754C8;
  v22 = versionCopy;
  v27 = v22;
  v28 = v20;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __56__ACAccountStore_resetDatabaseToVersion_withCompletion___block_invoke_2_257;
  v24[3] = &unk_1E79754F0;
  v23 = v28;
  v24[4] = self;
  v25 = v23;
  ac_dispatch_remote_sync(remoteAccountStoreSession, v26, v24);

  os_activity_scope_leave(&state);
}

void __56__ACAccountStore_resetDatabaseToVersion_withCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__ACAccountStore_resetDatabaseToVersion_withCompletion___block_invoke_2;
  block[3] = &unk_1E7976070;
  v11 = *(a1 + 48);
  v12 = a2;
  v9 = v5;
  v10 = *(a1 + 40);
  v7 = v5;
  dispatch_async(v6, block);
}

uint64_t __56__ACAccountStore_resetDatabaseToVersion_withCompletion___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  Nanoseconds = _ACSignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v3 = _ACSignpostLogSystem(Nanoseconds);
  v4 = v3;
  v5 = *(a1 + 48);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    if (*(a1 + 64))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v7 = *(a1 + 32);
    if (!v7)
    {
      v7 = &stru_1F210E1C8;
    }

    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = *&v7;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v4, OS_SIGNPOST_INTERVAL_END, v5, "ResetDatabaseToVersion", "%@%@", &v15, 0x16u);
  }

  v9 = _ACSignpostLogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 48);
    v12 = @"NO";
    v13 = *(a1 + 32);
    if (*(a1 + 64))
    {
      v12 = @"YES";
    }

    v15 = 134218754;
    v16 = v11;
    v14 = &stru_1F210E1C8;
    v17 = 2048;
    v18 = Nanoseconds / 1000000000.0;
    v19 = 2112;
    v20 = v12;
    if (v13)
    {
      v14 = v13;
    }

    v21 = 2112;
    v22 = v14;
    _os_log_debug_impl(&dword_1AC3CD000, v9, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: ResetDatabaseToVersion %@%@", &v15, 0x2Au);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 64), *(a1 + 32));
  }

  return result;
}

void __56__ACAccountStore_resetDatabaseToVersion_withCompletion___block_invoke_2_257(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _connectionFailureError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)shutdownAccountsD:(id)d
{
  dCopy = d;
  v5 = _os_activity_create(&dword_1AC3CD000, "accounts/shutdown-accountsd", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "ShutdownAccountsd", &unk_1AC43804B, buf, 2u);
  }

  v15 = _ACSignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore shutdownAccountsD:];
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __36__ACAccountStore_shutdownAccountsD___block_invoke;
  v24[3] = &unk_1E7976098;
  v24[4] = self;
  v26 = v8;
  v27 = v10;
  v16 = dCopy;
  v25 = v16;
  v17 = MEMORY[0x1AC5B3C70](v24);
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __36__ACAccountStore_shutdownAccountsD___block_invoke_258;
  v22[3] = &unk_1E7976480;
  v23 = v17;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __36__ACAccountStore_shutdownAccountsD___block_invoke_2_259;
  v20[3] = &unk_1E79754F0;
  v19 = v23;
  v20[4] = self;
  v21 = v19;
  ac_dispatch_remote_sync(remoteAccountStoreSession, v22, v20);

  os_activity_scope_leave(&state);
}

void __36__ACAccountStore_shutdownAccountsD___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__ACAccountStore_shutdownAccountsD___block_invoke_2;
  block[3] = &unk_1E7976070;
  v11 = *(a1 + 48);
  v12 = a2;
  v9 = v5;
  v10 = *(a1 + 40);
  v7 = v5;
  dispatch_async(v6, block);
}

uint64_t __36__ACAccountStore_shutdownAccountsD___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  Nanoseconds = _ACSignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v3 = _ACSignpostLogSystem(Nanoseconds);
  v4 = v3;
  v5 = *(a1 + 48);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    if (*(a1 + 64))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v7 = *(a1 + 32);
    if (!v7)
    {
      v7 = &stru_1F210E1C8;
    }

    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = *&v7;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v4, OS_SIGNPOST_INTERVAL_END, v5, "ShutdownAccountsd", "%@%@", &v15, 0x16u);
  }

  v9 = _ACSignpostLogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 48);
    v12 = @"NO";
    v13 = *(a1 + 32);
    if (*(a1 + 64))
    {
      v12 = @"YES";
    }

    v15 = 134218754;
    v16 = v11;
    v14 = &stru_1F210E1C8;
    v17 = 2048;
    v18 = Nanoseconds / 1000000000.0;
    v19 = 2112;
    v20 = v12;
    if (v13)
    {
      v14 = v13;
    }

    v21 = 2112;
    v22 = v14;
    _os_log_debug_impl(&dword_1AC3CD000, v9, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: ShutdownAccountsd %@%@", &v15, 0x2Au);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 64), *(a1 + 32));
  }

  return result;
}

void __36__ACAccountStore_shutdownAccountsD___block_invoke_2_259(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _connectionFailureError];
  (*(v1 + 16))(v1, 0, v2);
}

- (unint64_t)generationForCacheSuffix:(id)suffix
{
  suffixCopy = suffix;
  _cache = [(ACAccountStore *)self _cache];
  v6 = [_cache generationForCacheSuffix:suffixCopy];

  return v6;
}

- (unsigned)_uidOfAccountsd
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  remoteAccountStoreSession = [(ACAccountStore *)self remoteAccountStoreSession];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__ACAccountStore__uidOfAccountsd__block_invoke;
  v4[3] = &unk_1E7975D80;
  v4[4] = &v5;
  ac_dispatch_remote_sync(remoteAccountStoreSession, v4, &__block_literal_global_262);

  LODWORD(remoteAccountStoreSession) = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return remoteAccountStoreSession;
}

uint64_t __33__ACAccountStore__uidOfAccountsd__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__ACAccountStore__uidOfAccountsd__block_invoke_2;
  v3[3] = &unk_1E7976978;
  v3[4] = *(a1 + 32);
  return [a2 uidOfAccountsd:v3];
}

- (id)_sanitizeOptionsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"AllowedSSLCertificates"];
  if (v4)
  {
    v5 = [dictionaryCopy mutableCopy];
    v6 = serializeSecCertificates(v4);
    [v5 setObject:v6 forKeyedSubscript:@"AllowedSSLCertificates"];
  }

  else
  {
    v5 = dictionaryCopy;
  }

  return v5;
}

- (id)_unsanitizeError:(id)error
{
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"NSURLErrorFailingURLPeerTrustErrorKey_AC_SANITIZED"];

  domain = [errorCopy domain];
  v7 = *MEMORY[0x1E696A978];
  v8 = [domain isEqualToString:*MEMORY[0x1E696A978]];

  if (v8)
  {
    v9 = v5 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = errorCopy;
  }

  else
  {
    userInfo2 = [errorCopy userInfo];
    v12 = [userInfo2 mutableCopy];

    [v12 setObject:0 forKeyedSubscript:@"NSURLErrorFailingURLPeerTrustErrorKey_AC_SANITIZED"];
    v13 = SecTrustDeserialize();
    [v12 setObject:v13 forKeyedSubscript:*MEMORY[0x1E696A988]];

    v14 = [v12 objectForKeyedSubscript:@"NSErrorPeerCertificateChainKey_AC_SANITIZED"];
    v15 = v14;
    if (v14)
    {
      [v12 setObject:0 forKeyedSubscript:@"NSErrorPeerCertificateChainKey_AC_SANITIZED"];
      v16 = unserializeSecCertificates(v15);
      v17 = [v16 objectForKeyedSubscript:@"c"];
      [v12 setObject:v17 forKeyedSubscript:@"NSErrorPeerCertificateChainKey"];
    }

    v18 = [v12 objectForKeyedSubscript:@"NSErrorClientCertificateChainKey_AC_SANITIZED"];
    if (v18)
    {
      [v12 setObject:0 forKeyedSubscript:@"NSErrorClientCertificateChainKey_AC_SANITIZED"];
      v19 = unserializeSecCertificates(v18);
      v20 = [v19 objectForKeyedSubscript:@"c"];
      [v12 setObject:v20 forKeyedSubscript:@"NSErrorClientCertificateChainKey"];
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:v7 code:objc_msgSend(errorCopy userInfo:{"code"), v12}];
  }

  return v10;
}

- (void)accounts
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __26__ACAccountStore_accounts__block_invoke_79_cold_1()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)accountsWithAccountType:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9(v1, 5.778e-34, v2, v3);
  OUTLINED_FUNCTION_12(&dword_1AC3CD000, "@Returning cached accounts of type %@: %@", v4, v5);
}

- (void)accountsWithAccountType:completion:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_10(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12(&dword_1AC3CD000, "@Returning cached accounts of type %@: %@", v4, v5);
}

- (void)allDataclasses
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)allAccountTypes
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)canSaveAccount:withCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_saveAccount:verify:dataclassActions:completion:.cold.1()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_saveAccount:verify:dataclassActions:completion:.cold.2()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)saveVerifiedAccount:error:.cold.1()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_checkSaveRateLimitForAccountType:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(_checkSaveRateLimitForAccountType__saveRateLimiter, "maximum")}];
  v5 = MEMORY[0x1E696AD98];
  [_checkSaveRateLimitForAccountType__saveRateLimiter timeInterval];
  v7 = [v5 numberWithDouble:v6 / 60.0];
  v8 = 138543874;
  v9 = a1;
  v10 = 2114;
  v11 = v4;
  v12 = 2114;
  v13 = v7;
  _os_log_fault_impl(&dword_1AC3CD000, a2, OS_LOG_TYPE_FAULT, " %{public}@: Exceeded %{public}@ saves per %{public}@ minute(s)", &v8, 0x20u);
}

- (void)setPermissionGranted:forBundleID:onAccountType:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)clearAllPermissionsGrantedForAccountType:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)clearGrantedPermissionsForAccountType:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)credentialForAccount:error:.cold.2()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x1E69E9840]);
  *v3 = 138412546;
  *&v3[4] = *(v0 + 40);
  *&v3[12] = 2112;
  *&v3[14] = v1;
  OUTLINED_FUNCTION_1_0(&dword_1AC3CD000, v1, v2, "@Returning cached credential %@ for account %@", *v3, *&v3[8], *&v3[16]);
}

- (void)setCredential:(os_log_t)log forAccount:serviceID:error:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 136380931;
  *(buf + 4) = "[ACAccountStore setCredential:forAccount:serviceID:error:]";
  *(buf + 6) = 2113;
  *(buf + 14) = a1;
  _os_log_fault_impl(&dword_1AC3CD000, log, OS_LOG_TYPE_FAULT, "%{private}s called without an account type identifier! %{private}@", buf, 0x16u);
}

- (void)allCredentialItems
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)saveCredentialItem:withCompletionHandler:.cold.2()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__ACAccountStore_saveCredentialItem_withCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __61__ACAccountStore_removeCredentialItem_withCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)parentAccountForAccount:error:.cold.2()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)preloadDataclassOwnersWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __78__ACAccountStore_notifyRemoteDevicesOfModifiedAccount_withOptions_completion___block_invoke_221_cold_1()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __81__ACAccountStore_notifyRemoteDevicesOfUpdatedCredentials_withOptions_completion___block_invoke_222_cold_1()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)triggerKeychainMigrationIfNecessary:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)removeObsoleteAccounts:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __61__ACAccountStore__removeObsoleteAccountsInternal_completion___block_invoke_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1AC3CD000, v1, OS_LOG_TYPE_ERROR, "Could not find acceptable action for dataclass %@ for removal of account %@. Probably orphaning data.", v2, 0x16u);
}

void __28__ACAccountStore_handleURL___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __28__ACAccountStore_handleURL___block_invoke_252_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_1_1(&dword_1AC3CD000, a2, a3, "Failed to handle URL: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)reportTelemetryForLandmarkEvent:.cold.1()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)scheduleBackupIfNonexistent:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)shutdownAccountsD:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end