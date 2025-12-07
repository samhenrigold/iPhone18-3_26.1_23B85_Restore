@interface SSAccountStore
+ (BOOL)URLResponseAllowsSilentAuthentication:(id)authentication;
+ (BOOL)_accountDictionaryRepresentsActiveAccount:(id)account inKeyValueStore:(id)store;
+ (BOOL)_accountDictionaryRepresentsActiveLockerAccount:(id)account inKeyValueStore:(id)store;
+ (BOOL)_allowSilentPasswordAuthForAccount:(id)account withOptions:(id)options;
+ (BOOL)_copyKVSDatabaseWithError:(id *)error;
+ (BOOL)_shouldRemoveAccountDictionaryWithoutMigration:(id)migration reason:(id *)reason;
+ (BOOL)areAccountStoreChangedNotificationsDisabled;
+ (BOOL)isExpiredForTokenType:(int64_t)type;
+ (BOOL)migrateToAccountsFramework;
+ (BOOL)unitTestModeEnabled;
+ (id)_backingAccountForAccount:(id)account;
+ (id)_copyKVSDatabasePath;
+ (id)_createAuthenticationContextForAccount:(id)account silentAuthentication:(BOOL)authentication options:(id)options;
+ (id)_createAuthenticationController;
+ (id)_createUpdatedAccount:(id)account withAuthenticationResults:(id)results options:(id)options;
+ (id)_hashedDescriptionFromAccountDictionary:(id)dictionary;
+ (id)_migrateAccountDictionary:(id)dictionary fromKeyValueStore:(id)store originalActiveDSID:(id)d originalActiveLockerDSID:(id)iD logKey:(id)key error:(id *)error;
+ (id)_refreshAccount:(id)account;
+ (id)_unitTestAccountsAccessQueue;
+ (id)defaultStore;
+ (id)existingDefaultStore;
+ (void)_addAccountToUnitTestStore:(id)store;
+ (void)_cleanupActiveAccountsAfterMigrationWithActiveDSID:(id)d activeLockerDSID:(id)iD;
+ (void)_disableAccountStoreChangedNotifications;
+ (void)_enableAccountStoreChangedNotifications;
+ (void)_excludeCopyKVSDatabasePathFromBackups;
+ (void)_postAccountsChangedDarwinNotification;
+ (void)_postAccountsChangedInternalDarwinNotification;
+ (void)_removeAccountDictionary:(id)dictionary fromKeyValueStore:(id)store;
+ (void)_removeAccountFromUnitTestStore:(id)store;
+ (void)_setActiveAccountIsManagedAppleIDPreference:(BOOL)preference;
+ (void)resetExpirationForTokenType:(int64_t)type;
+ (void)setAuthenticationStartedDate:(id)date;
+ (void)setUnitTestModeEnabled:(BOOL)enabled;
- (BOOL)authenticationController:(id)controller shouldContinueWithAuthenticationResults:(id)results error:(id)error forContext:(id)context;
- (BOOL)isAuthenticationActive;
- (BOOL)isExpired;
- (BOOL)isExpiredForTokenType:(int64_t)type;
- (BOOL)removeAccount:(id)account error:(id *)error;
- (BOOL)repairAccountWithBrokenDSID:(id)d;
- (BOOL)saveAccount:(id)account verifyCredentials:(BOOL)credentials error:(id *)error;
- (NSArray)accounts;
- (SSAccount)activeAccount;
- (SSAccount)activeLockerAccount;
- (SSAccount)activeSandboxAccount;
- (SSAccount)demoAccount;
- (SSAccount)localiTunesAccount;
- (SSAccountStore)init;
- (SSKeyValueStore)keyValueStore;
- (SSPromise)accountsPromise;
- (SSPromise)localAccount;
- (id)_buyParamsForBuyParamsString:(id)string;
- (id)_cachedAccounts;
- (id)_convertPasswordToPET:(id)t forAccount:(id)account options:(id)options;
- (id)_optionsForProxiedAuthenticationWithVerifyCredentialsOptions:(id)options;
- (id)_saveAccount:(id)account verifyCredentials:(BOOL)credentials;
- (id)_saveAccountInUnitTestMode:(id)mode ignoreValidationErrors:(BOOL)errors;
- (id)_shouldCreateNewAccountForAccount:(id)account options:(id)options;
- (id)_updateAccountWithAuthKitViaPromptAuth:(id)auth store:(id)store options:(id)options;
- (id)_updateAccountWithAuthKitViaSilentAuth:(id)auth options:(id)options;
- (id)_updateAccountWithAuthKitViaSilentPETAuth:(id)auth options:(id)options;
- (id)_updateAccountWithAuthKitViaSilentPasswordAuth:(id)auth options:(id)options;
- (id)accountWithAccountName:(id)name;
- (id)accountWithAccountName:(id)name scope:(int64_t)scope;
- (id)accountWithAltDSID:(id)d;
- (id)accountWithAltDSID:(id)d scope:(int64_t)scope;
- (id)accountWithAltDSID:(id)d uniqueIdentifier:(id)identifier accountName:(id)name scope:(int64_t)scope;
- (id)accountWithUniqueIdentifier:(id)identifier;
- (id)accountWithUniqueIdentifier:(id)identifier reloadIfNecessary:(BOOL)necessary;
- (id)accountWithUniqueIdentifier:(id)identifier scope:(int64_t)scope;
- (id)addAccount:(id)account;
- (id)iTunesStoreAccountType;
- (id)iTunesStoreAccountTypePromise;
- (id)setActiveAccount:(id)account;
- (id)setActiveLockerAccount:(id)account;
- (id)updateAccountWithAuthKit:(id)kit store:(id)store options:(id)options;
- (void)_postAccountStoreChangeNotification;
- (void)_postActiveAccountChangedNotification;
- (void)_postAuthenticationActivityNotification;
- (void)_recordAnalyticsForMetricsDialogEvent:(id)event withTopic:(id)topic;
- (void)_setCachedAccounts:(id)accounts;
- (void)clearCachedAccounts;
- (void)dealloc;
- (void)getDefaultAccountNameUsingBlock:(id)block;
- (void)removeAccount:(id)account completion:(id)completion;
- (void)removeAllAccountsWithCompletion:(id)completion;
- (void)removeCookiesForAccount:(id)account logKey:(id)key;
- (void)resetExpiration;
- (void)resetExpirationForTokenType:(int64_t)type;
- (void)resetLocalAccount;
- (void)saveAccount:(id)account verifyCredentials:(BOOL)credentials completion:(id)completion;
- (void)setAccountCredits:(id)credits forAccountWithUniqueIdentifier:(id)identifier;
- (void)setDefaultAccountName:(id)name completionBlock:(id)block;
- (void)signOutAccount:(id)account completion:(id)completion;
- (void)signOutAllAccountsWithCompletionBlock:(id)block;
@end

@implementation SSAccountStore

+ (id)defaultStore
{
  pthread_mutex_lock(&__DefaultStoreLock);
  if (!__DefaultStore)
  {
    v2 = objc_alloc_init(SSAccountStore);
    v3 = __DefaultStore;
    __DefaultStore = v2;
  }

  pthread_mutex_unlock(&__DefaultStoreLock);
  v4 = __DefaultStore;

  return v4;
}

- (SSAccountStore)init
{
  v16.receiver = self;
  v16.super_class = SSAccountStore;
  v2 = [(SSAccountStore *)&v16 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, __AccountsChanged, @"com.apple.itunesstored.accountschanged", 0, CFNotificationSuspensionBehaviorCoalesce);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, __AccountsChangedInternal, @"com.apple.itunesstored.accountschanged.internal", 0, CFNotificationSuspensionBehaviorCoalesce);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, __ActiveAccountChanged, @"com.apple.StoreServices.SSAccountStore.activeaccountchanged", 0, CFNotificationSuspensionBehaviorCoalesce);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, __AuthenticationStateChanged, @"com.apple.StoreServices.authbegin", 0, CFNotificationSuspensionBehaviorCoalesce);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, __AuthenticationStateChanged, @"com.apple.StoreServices.authfail", 0, CFNotificationSuspensionBehaviorCoalesce);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, __AuthenticationStateChanged, @"com.apple.StoreServices.authfinish", 0, CFNotificationSuspensionBehaviorCoalesce);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, __AuthenticationStateChanged, @"com.apple.StoreServices.authsubmit", 0, CFNotificationSuspensionBehaviorCoalesce);
    v4 = MEMORY[0x1E69E96A8];
    v5 = dispatch_queue_create("com.apple.StoreServices.SSAccountStore.accountsCache", MEMORY[0x1E69E96A8]);
    accountsCacheAccessQueue = v2->_accountsCacheAccessQueue;
    v2->_accountsCacheAccessQueue = v5;

    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    backingAccountStore = v2->_backingAccountStore;
    v2->_backingAccountStore = defaultStore;

    v9 = dispatch_queue_create("com.apple.StoreServices.SSAccountStore.fetchAccounts", v4);
    fetchAccountsQueue = v2->_fetchAccountsQueue;
    v2->_fetchAccountsQueue = v9;

    v11 = dispatch_queue_create("com.apple.StoreServices.SSAccountStore.metricsQueue", 0);
    metricsQueue = v2->_metricsQueue;
    v2->_metricsQueue = v11;

    v13 = dispatch_queue_create("com.apple.StoreServices.SSAccountStore.notificationQueue", 0);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v13;
  }

  return v2;
}

- (SSAccount)activeAccount
{
  v24 = *MEMORY[0x1E69E9840];
  accounts = [(SSAccountStore *)self accounts];
  v3 = [accounts _ss_firstObjectPassingTest:&__block_literal_global_192];

  v4 = +[SSLogConfig sharedAccountsConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v8 = objc_opt_class();
    v9 = v8;
    hashedDescription = [v3 hashedDescription];
    v20 = 138543618;
    v21 = v8;
    v22 = 2114;
    v23 = hashedDescription;
    v11 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1D48BA000, oSLogObject, 2, "%{public}@: Someone is attempting to get the active account. activeAccount = %{public}@", &v20, 22);

    if (!v11)
    {
      goto LABEL_13;
    }

    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:4];
    free(v11);
    SSFileLog(v4, @"%@", v12, v13, v14, v15, v16, v17, oSLogObject);
  }

LABEL_13:
  v18 = [v3 copy];

  return v18;
}

- (NSArray)accounts
{
  v96 = *MEMORY[0x1E69E9840];
  _cachedAccounts = [(SSAccountStore *)self _cachedAccounts];
  v4 = +[SSLogConfig sharedAccountsConfig];
  v5 = v4;
  if (!_cachedAccounts)
  {
    if (!v4)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      LODWORD(v19) = shouldLog | 2;
    }

    else
    {
      LODWORD(v19) = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v19 = v19;
    }

    else
    {
      v19 &= 2u;
    }

    if (v19)
    {
      *v92 = 138543362;
      *&v92[4] = objc_opt_class();
      v21 = *&v92[4];
      v22 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_1D48BA000, oSLogObject, 1, "%{public}@: There no cached accounts. We'll load the accounts now from the backing store synchronously.", v92, 12);

      if (v22)
      {
        v23 = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:4];
        free(v22);
        SSFileLog(v5, @"%@", v24, v25, v26, v27, v28, v29, v23);
      }
    }

    else
    {
    }

    if ([objc_opt_class() unitTestModeEnabled])
    {
      v30 = +[SSLogConfig sharedAccountsConfig];
      if (!v30)
      {
        v30 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v30 shouldLog];
      if ([v30 shouldLogToDisk])
      {
        LODWORD(v32) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v32) = shouldLog2;
      }

      oSLogObject2 = [v30 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
      {
        v32 = v32;
      }

      else
      {
        v32 &= 2u;
      }

      if (v32)
      {
        v34 = objc_opt_class();
        *v92 = 138543362;
        *&v92[4] = v34;
        v35 = v34;
        LODWORD(v83) = 12;
        v36 = _os_log_send_and_compose_impl(v32, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 2, "%{public}@: Unit test mode is enabled. We won't go to the backing account store.", v92, v83);

        if (!v36)
        {
LABEL_40:

          *v92 = 0;
          *&v92[8] = v92;
          *&v92[16] = 0x3032000000;
          v93 = __Block_byref_object_copy__19;
          v94 = __Block_byref_object_dispose__19;
          v95 = 0;
          _unitTestAccountsAccessQueue = [objc_opt_class() _unitTestAccountsAccessQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __26__SSAccountStore_accounts__block_invoke;
          block[3] = &unk_1E84AC2A8;
          block[4] = v92;
          dispatch_sync(_unitTestAccountsAccessQueue, block);

          if (*(*&v92[8] + 40))
          {
            v44 = *(*&v92[8] + 40);
          }

          else
          {
            v44 = MEMORY[0x1E695E0F0];
          }

          [(SSAccountStore *)self _setCachedAccounts:v44];
          _cachedAccounts = *(*&v92[8] + 40);
          _Block_object_dispose(v92, 8);

          goto LABEL_80;
        }

        oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v36 encoding:4];
        free(v36);
        SSFileLog(v30, @"%@", v37, v38, v39, v40, v41, v42, oSLogObject2);
      }

      goto LABEL_40;
    }

    backingAccountStore = [(SSAccountStore *)self backingAccountStore];
    v46 = [backingAccountStore _ss_accountTypeWithIdentifier:*MEMORY[0x1E6959930] error:0];

    backingAccountStore2 = [(SSAccountStore *)self backingAccountStore];
    v89 = 0;
    v48 = [backingAccountStore2 accountsWithAccountType:v46 options:1 error:&v89];
    v84 = v89;

    if (v48)
    {
LABEL_58:
      v63 = [v48 _ss_map:&__block_literal_global_8];
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v64 = [v63 countByEnumeratingWithState:&v85 objects:v91 count:16];
      if (v64)
      {
        v65 = *v86;
        do
        {
          for (i = 0; i != v64; ++i)
          {
            if (*v86 != v65)
            {
              objc_enumerationMutation(v63);
            }

            v67 = *(*(&v85 + 1) + 8 * i);
            if ([v67 hasBrokenDSID])
            {
              [(SSAccountStore *)self repairAccountWithBrokenDSID:v67];
            }
          }

          v64 = [v63 countByEnumeratingWithState:&v85 objects:v91 count:16];
        }

        while (v64);
      }

      v68 = +[SSLogConfig sharedAccountsConfig];
      if (!v68)
      {
        v68 = +[SSLogConfig sharedConfig];
      }

      shouldLog3 = [v68 shouldLog];
      if ([v68 shouldLogToDisk])
      {
        v70 = shouldLog3 | 2;
      }

      else
      {
        v70 = shouldLog3;
      }

      oSLogObject3 = [v68 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
      {
        v72 = v70;
      }

      else
      {
        v72 = v70 & 2;
      }

      if (v72)
      {
        v73 = objc_opt_class();
        *v92 = 138543362;
        *&v92[4] = v73;
        v74 = v73;
        LODWORD(v83) = 12;
        v75 = _os_log_send_and_compose_impl(v72, 0, 0, 0, &dword_1D48BA000, oSLogObject3, 1, "%{public}@: Caching the accounts.", v92, v83);

        if (!v75)
        {
LABEL_79:

          [(SSAccountStore *)self _setCachedAccounts:v63];
          _cachedAccounts = v63;

          goto LABEL_80;
        }

        oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v75 encoding:4];
        free(v75);
        SSFileLog(v68, @"%@", v76, v77, v78, v79, v80, v81, oSLogObject3);
      }

      goto LABEL_79;
    }

    v49 = +[SSLogConfig sharedAccountsConfig];
    if (!v49)
    {
      v49 = +[SSLogConfig sharedConfig];
    }

    shouldLog4 = [v49 shouldLog];
    if ([v49 shouldLogToDisk])
    {
      v51 = shouldLog4 | 2;
    }

    else
    {
      v51 = shouldLog4;
    }

    oSLogObject4 = [v49 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
    {
      v53 = v51;
    }

    else
    {
      v53 = v51 & 2;
    }

    if (v53)
    {
      v54 = objc_opt_class();
      *v92 = 138543618;
      *&v92[4] = v54;
      *&v92[12] = 2114;
      *&v92[14] = v84;
      v55 = v54;
      LODWORD(v83) = 22;
      v56 = _os_log_send_and_compose_impl(v53, 0, 0, 0, &dword_1D48BA000, oSLogObject4, 16, "%{public}@: Failed to fetch the backing accounts. error = %{public}@", v92, v83);

      if (!v56)
      {
LABEL_57:

        goto LABEL_58;
      }

      oSLogObject4 = [MEMORY[0x1E696AEC0] stringWithCString:v56 encoding:4];
      free(v56);
      SSFileLog(v49, @"%@", v57, v58, v59, v60, v61, v62, oSLogObject4);
    }

    goto LABEL_57;
  }

  if (!v4)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog5 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    LODWORD(v7) = shouldLog5 | 2;
  }

  else
  {
    LODWORD(v7) = shouldLog5;
  }

  oSLogObject5 = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_INFO))
  {
    v7 = v7;
  }

  else
  {
    v7 &= 2u;
  }

  if (v7)
  {
    *v92 = 138543362;
    *&v92[4] = objc_opt_class();
    v9 = *&v92[4];
    v10 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_1D48BA000, oSLogObject5, 1, "%{public}@: Returning cached accounts.", v92, 12);

    if (v10)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
      free(v10);
      SSFileLog(v5, @"%@", v12, v13, v14, v15, v16, v17, v11);
    }
  }

  else
  {
  }

LABEL_80:

  return _cachedAccounts;
}

- (id)_cachedAccounts
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__19;
  v11 = __Block_byref_object_dispose__19;
  v12 = 0;
  accountsCacheAccessQueue = [(SSAccountStore *)self accountsCacheAccessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__SSAccountStore__cachedAccounts__block_invoke;
  v6[3] = &unk_1E84ABFD8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(accountsCacheAccessQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __33__SSAccountStore__cachedAccounts__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isInProcessCacheDisabled])
  {
    v2 = +[SSLogConfig sharedAccountsConfig];
    if (!v2)
    {
      v2 = +[SSLogConfig sharedConfig];
    }

    v3 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      LODWORD(v4) = v3 | 2;
    }

    else
    {
      LODWORD(v4) = v3;
    }

    v5 = [v2 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v4 = v4;
    }

    else
    {
      v4 &= 2u;
    }

    if (v4)
    {
      v18 = 138543362;
      v19 = objc_opt_class();
      v6 = v19;
      v7 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_1D48BA000, v5, 1, "%{public}@: The in-process accounts cache is disabled.", &v18, 12);

      if (!v7)
      {
LABEL_14:

        return;
      }

      v5 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:4];
      free(v7);
      SSFileLog(v2, @"%@", v8, v9, v10, v11, v12, v13, v5);
    }

    goto LABEL_14;
  }

  v17 = [*(a1 + 32) accountsCache];
  v14 = [v17 copy];
  v15 = *(*(a1 + 40) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;
}

+ (BOOL)unitTestModeEnabled
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  _unitTestAccountsAccessQueue = [self _unitTestAccountsAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SSAccountStore_unitTestModeEnabled__block_invoke;
  block[3] = &unk_1E84AC2A8;
  block[4] = &v5;
  dispatch_sync(_unitTestAccountsAccessQueue, block);

  LOBYTE(_unitTestAccountsAccessQueue) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return _unitTestAccountsAccessQueue;
}

+ (id)_unitTestAccountsAccessQueue
{
  if (_unitTestAccountsAccessQueue_onceToken != -1)
  {
    +[SSAccountStore _unitTestAccountsAccessQueue];
  }

  v3 = _unitTestAccountsAccessQueue_sUnitTestAccountsAccessQueue;

  return v3;
}

void __46__SSAccountStore__unitTestAccountsAccessQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.StoreServices.SSAccountStore.unitTestAccountsAccessQueue", MEMORY[0x1E69E96A8]);
  v1 = _unitTestAccountsAccessQueue_sUnitTestAccountsAccessQueue;
  _unitTestAccountsAccessQueue_sUnitTestAccountsAccessQueue = v0;
}

SSAccount *__26__SSAccountStore_accounts__block_invoke_186(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[SSAccount alloc] initWithBackingAccount:v2];

  return v3;
}

- (SSPromise)localAccount
{
  iTunesStoreAccountTypePromise = [(SSAccountStore *)self iTunesStoreAccountTypePromise];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__SSAccountStore_localAccount__block_invoke;
  v6[3] = &unk_1E84AE8C0;
  v6[4] = self;
  v4 = [iTunesStoreAccountTypePromise thenWithBlock:v6];

  return v4;
}

- (id)iTunesStoreAccountTypePromise
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__19;
  v15 = __Block_byref_object_dispose__19;
  v16 = 0;
  if (iTunesStoreAccountTypePromise_onceToken != -1)
  {
    [SSAccountStore iTunesStoreAccountTypePromise];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__SSAccountStore_iTunesStoreAccountTypePromise__block_invoke_2;
  block[3] = &unk_1E84AC2A8;
  block[4] = &v11;
  dispatch_sync(iTunesStoreAccountTypePromise_accountTypeQueue, block);
  v3 = v12[5];
  if (!v3)
  {
    v4 = objc_alloc_init(SSPromise);
    v5 = v12[5];
    v12[5] = v4;

    [v12[5] addSuccessBlock:&__block_literal_global_205];
    backingAccountStore = [(SSAccountStore *)self backingAccountStore];
    completionHandlerAdapter = [v12[5] completionHandlerAdapter];
    [backingAccountStore accountTypeWithIdentifier:*MEMORY[0x1E6959930] completion:completionHandlerAdapter];

    v3 = v12[5];
  }

  v8 = v3;
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __47__SSAccountStore_iTunesStoreAccountTypePromise__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.StoreServices.SSAccountStore.sAccountType", 0);
  v1 = iTunesStoreAccountTypePromise_accountTypeQueue;
  iTunesStoreAccountTypePromise_accountTypeQueue = v0;
}

void __47__SSAccountStore_iTunesStoreAccountTypePromise__block_invoke_2(uint64_t a1)
{
  if (iTunesStoreAccountTypePromise_sAccountType)
  {
    v2 = [SSPromise promiseWithResult:?];
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

SSPromise *__30__SSAccountStore_localAccount__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 backingAccountStore];
  v5 = [v4 ams_localiTunesAccountForAccountType:v3];

  v6 = objc_alloc_init(SSPromise);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __30__SSAccountStore_localAccount__block_invoke_2;
  v14[3] = &unk_1E84AE898;
  v7 = v6;
  v15 = v7;
  [v5 addSuccessBlock:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __30__SSAccountStore_localAccount__block_invoke_3;
  v12[3] = &unk_1E84AD730;
  v8 = v7;
  v13 = v8;
  [v5 addErrorBlock:v12];
  v9 = v13;
  v10 = v8;

  return v8;
}

void __47__SSAccountStore_iTunesStoreAccountTypePromise__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = iTunesStoreAccountTypePromise_accountTypeQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__SSAccountStore_iTunesStoreAccountTypePromise__block_invoke_4;
  block[3] = &unk_1E84AC050;
  v6 = v2;
  v4 = v2;
  dispatch_sync(v3, block);
}

void __30__SSAccountStore_localAccount__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[SSAccount alloc] initWithBackingAccount:v3];

  [v2 finishWithResult:v4];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.itunesstored.accountschanged", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.itunesstored.accountschanged.internal", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.StoreServices.SSAccountStore.activeaccountchanged", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.StoreServices.authbegin", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.StoreServices.authfail", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.StoreServices.authfinish", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.StoreServices.authsubmit", 0);
  v4.receiver = self;
  v4.super_class = SSAccountStore;
  [(SSAccountStore *)&v4 dealloc];
}

- (SSKeyValueStore)keyValueStore
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_keyValueStore)
  {
    v3 = objc_alloc_init(SSKeyValueStore);
    keyValueStore = selfCopy->_keyValueStore;
    selfCopy->_keyValueStore = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_keyValueStore;

  return v5;
}

void __26__SSAccountStore_accounts__block_invoke(uint64_t a1)
{
  v5 = [sUnitTestAccounts allValues];
  v2 = [v5 copy];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (SSPromise)accountsPromise
{
  v3 = objc_alloc_init(SSPromise);
  objc_initWeak(&location, self);
  fetchAccountsQueue = [(SSAccountStore *)self fetchAccountsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SSAccountStore_accountsPromise__block_invoke;
  block[3] = &unk_1E84AD870;
  objc_copyWeak(&v9, &location);
  v5 = v3;
  v8 = v5;
  dispatch_async(fetchAccountsQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v5;
}

void __33__SSAccountStore_accountsPromise__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained accounts];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 finishWithResult:v2 error:0];
  }

  else
  {
    v4 = SSError(@"SSErrorDomain", 100, 0, 0);
    [v3 finishWithResult:0 error:v4];
  }
}

- (id)accountWithAccountName:(id)name
{
  v22 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  [(SSAccountStore *)self accounts];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v18;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v17 + 1) + 8 * v10);
      accountName = [v11 accountName];
      v13 = [accountName isEqualToString:nameCopy];

      if (v13)
      {
        v14 = v11;

        v8 = v14;
        if (![v14 accountScope])
        {
          break;
        }
      }

      if (v7 == ++v10)
      {
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        v14 = v8;
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = [v14 copy];

  return v15;
}

- (id)accountWithAccountName:(id)name scope:(int64_t)scope
{
  v23 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (scope == 1)
  {
    v7 = [MEMORY[0x1E6959A48] ams_sharedAccountStoreForMediaType:*MEMORY[0x1E698C4C8]];
    v8 = [v7 ams_iTunesAccountWithUsername:nameCopy];
    if (v8)
    {
      v9 = [[SSAccount alloc] initWithBackingAccount:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    [(SSAccountStore *)self accounts];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v21 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          accountName = [v14 accountName];
          if ([accountName isEqualToString:nameCopy])
          {
            accountScope = [v14 accountScope];

            if (accountScope == scope)
            {
              v11 = v14;
              goto LABEL_15;
            }
          }

          else
          {
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

LABEL_15:

    v9 = [v11 copy];
  }

  return v9;
}

- (id)accountWithAltDSID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  [(SSAccountStore *)self accounts];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v18;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v17 + 1) + 8 * v10);
      altDSID = [v11 altDSID];
      v13 = [altDSID isEqualToString:dCopy];

      if (v13)
      {
        v14 = v11;

        v8 = v14;
        if (![v14 accountScope])
        {
          break;
        }
      }

      if (v7 == ++v10)
      {
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        v14 = v8;
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = [v14 copy];

  return v15;
}

- (id)accountWithAltDSID:(id)d scope:(int64_t)scope
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (scope == 1)
  {
    v7 = [MEMORY[0x1E6959A48] ams_sharedAccountStoreForMediaType:*MEMORY[0x1E698C4C8]];
    v8 = [v7 ams_iTunesAccountWithAltDSID:dCopy];
    if (v8)
    {
      v9 = [[SSAccount alloc] initWithBackingAccount:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    [(SSAccountStore *)self accounts];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v21 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          altDSID = [v14 altDSID];
          if ([altDSID isEqualToString:dCopy])
          {
            accountScope = [v14 accountScope];

            if (accountScope == scope)
            {
              v11 = v14;
              goto LABEL_15;
            }
          }

          else
          {
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

LABEL_15:

    v9 = [v11 copy];
  }

  return v9;
}

- (id)accountWithAltDSID:(id)d uniqueIdentifier:(id)identifier accountName:(id)name scope:(int64_t)scope
{
  identifierCopy = identifier;
  nameCopy = name;
  v12 = nameCopy;
  if (d || identifierCopy || nameCopy)
  {
    v14 = [(SSAccountStore *)self accountWithAltDSID:d scope:scope];
    if (!v14)
    {
      v14 = [(SSAccountStore *)self accountWithUniqueIdentifier:identifierCopy scope:scope];
      if (!v14)
      {
        v14 = [(SSAccountStore *)self accountWithAccountName:v12 scope:scope];
      }
    }

    v13 = v14;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)accountWithUniqueIdentifier:(id)identifier
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    [(SSAccountStore *)self accounts];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = v20 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v18;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        uniqueIdentifier = [v11 uniqueIdentifier];
        v13 = [uniqueIdentifier isEqualToNumber:identifierCopy];

        if (v13)
        {
          v14 = v11;

          v8 = v14;
          if (![v14 accountScope])
          {
            break;
          }
        }

        if (v7 == ++v10)
        {
          v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
          v14 = v8;
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = [v14 copy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)accountWithUniqueIdentifier:(id)identifier scope:(int64_t)scope
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (scope == 1)
  {
    v7 = [MEMORY[0x1E6959A48] ams_sharedAccountStoreForMediaType:*MEMORY[0x1E698C4C8]];
    v8 = [v7 ams_iTunesAccountWithDSID:identifierCopy];
    if (v8)
    {
      v9 = [[SSAccount alloc] initWithBackingAccount:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    [(SSAccountStore *)self accounts];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v21 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          uniqueIdentifier = [v14 uniqueIdentifier];
          if ([uniqueIdentifier isEqual:identifierCopy])
          {
            accountScope = [v14 accountScope];

            if (accountScope == scope)
            {
              v11 = v14;
              goto LABEL_15;
            }
          }

          else
          {
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

LABEL_15:

    v9 = [v11 copy];
  }

  return v9;
}

- (SSAccount)localiTunesAccount
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  accounts = [(SSAccountStore *)self accounts];
  v3 = [accounts countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(accounts);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        backingAccount = [v6 backingAccount];
        ams_isLocalAccount = [backingAccount ams_isLocalAccount];

        if (ams_isLocalAccount)
        {
          v3 = [v6 copy];
          goto LABEL_11;
        }
      }

      v3 = [accounts countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (SSAccount)activeSandboxAccount
{
  v2 = [MEMORY[0x1E6959A48] ams_sharedAccountStoreForMediaType:*MEMORY[0x1E698C4C8]];
  ams_activeiTunesAccount = [v2 ams_activeiTunesAccount];

  if (ams_activeiTunesAccount)
  {
    v4 = [[SSAccount alloc] initWithBackingAccount:ams_activeiTunesAccount];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SSAccount)activeLockerAccount
{
  v23 = *MEMORY[0x1E69E9840];
  activeAccount = [(SSAccountStore *)self activeAccount];
  if ([activeAccount isActiveLockerAccount])
  {
    v3 = [activeAccount copy];
  }

  else
  {
    v3 = 0;
  }

  v4 = +[SSLogConfig sharedAccountsConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v8 = objc_opt_class();
    v9 = v8;
    hashedDescription = [v3 hashedDescription];
    v19 = 138543618;
    v20 = v8;
    v21 = 2114;
    v22 = hashedDescription;
    v11 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1D48BA000, oSLogObject, 2, "%{public}@: Someone is attempting to get the active locker account. activeLockerAccount = %{public}@", &v19, 22);

    if (!v11)
    {
      goto LABEL_16;
    }

    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:4];
    free(v11);
    SSFileLog(v4, @"%@", v12, v13, v14, v15, v16, v17, oSLogObject);
  }

LABEL_16:

  return v3;
}

- (BOOL)isExpired
{
  v2 = objc_opt_class();

  return [v2 isExpired];
}

- (void)resetLocalAccount
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedAccountsConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v34 = 138543362;
    v35 = objc_opt_class();
    v7 = v35;
    v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, oSLogObject, 0, "%{public}@: Resetting all properties on the local iTunes account.", &v34, 12);

    if (!v8)
    {
      goto LABEL_13;
    }

    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
  }

LABEL_13:
  localAccount = [(SSAccountStore *)self localAccount];
  v16 = [localAccount resultWithError:0];

  [v16 setStoreFrontIdentifier:0];
  v33 = 0;
  v17 = [(SSAccountStore *)self saveAccount:v16 verifyCredentials:0 error:&v33];
  v18 = v33;
  if (!v17)
  {
    v19 = +[SSLogConfig sharedAccountsConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      LODWORD(v21) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v21) = shouldLog2;
    }

    oSLogObject2 = [v19 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v21 = v21;
    }

    else
    {
      v21 &= 2u;
    }

    if (v21)
    {
      v23 = objc_opt_class();
      v34 = 138543618;
      v35 = v23;
      v36 = 2114;
      v37 = v18;
      v24 = v23;
      LODWORD(v32) = 22;
      v25 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 16, "%{public}@: Failed to reset all properties on the local iTunes account. error = %{public}@", &v34, v32);

      if (!v25)
      {
LABEL_26:

        goto LABEL_27;
      }

      oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v25 encoding:4];
      free(v25);
      SSFileLog(v19, @"%@", v26, v27, v28, v29, v30, v31, oSLogObject2);
    }

    goto LABEL_26;
  }

LABEL_27:
}

+ (BOOL)URLResponseAllowsSilentAuthentication:(id)authentication
{
  authenticationCopy = authentication;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (authenticationCopy && (isKindOfClass & 1) != 0)
  {
    itunes_allHeaderFields = [authenticationCopy itunes_allHeaderFields];
    v7 = [itunes_allHeaderFields objectForKeyedSubscript:@"X-Apple-Allow-Auth-Types"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 componentsSeparatedByString:@" "];
      v5 = [v8 containsObject:@"silent"];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)iTunesStoreAccountType
{
  iTunesStoreAccountTypePromise = [(SSAccountStore *)self iTunesStoreAccountTypePromise];
  v3 = [iTunesStoreAccountTypePromise resultWithError:0];

  return v3;
}

- (BOOL)authenticationController:(id)controller shouldContinueWithAuthenticationResults:(id)results error:(id)error forContext:(id)context
{
  errorCopy = error;
  contextCopy = context;
  clientInfo = [contextCopy clientInfo];
  if (!clientInfo)
  {
    clientInfo = objc_alloc_init(MEMORY[0x1E695DF90]);
    [contextCopy setClientInfo:clientInfo];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [clientInfo objectForKey:@"metricsAuthenticationAttempts"];
    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [clientInfo setObject:v10 forKey:@"metricsAuthenticationAttempts"];
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = errorCopy;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v12 setObject:@"authenticate" forKey:@"targetId"];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v15 = v14;

  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", (v15 * 1000.0)];
  [v12 setObject:v16 forKey:@"responseTime"];
  if (v11)
  {
    [v12 setObject:@"failure" forKey:@"result"];
    code = [v11 code];
    v18 = @"unknown";
    if (code == -7006)
    {
      v18 = @"invalidCredentials";
    }

    if (code == -7010)
    {
      v18 = @"badServerResponse";
    }

    if (code == -7028)
    {
      v19 = @"maxNumberOfAttemptsReached";
    }

    else
    {
      v19 = v18;
    }

    v20 = @"reason";
  }

  else
  {
    v19 = @"success";
    v20 = @"result";
  }

  [v12 setObject:v19 forKey:v20];

  if (v12)
  {
    [v10 addObject:v12];
  }

  return v11 == 0;
}

+ (BOOL)areAccountStoreChangedNotificationsDisabled
{
  v2 = CFPreferencesCopyAppValue(@"AccountsChangedNotificationsSuppressionStarted", @"com.apple.itunesstored");
  if (v2)
  {
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceReferenceDate];
    v5 = v4;
    [v2 timeIntervalSinceReferenceDate];
    v7 = v5 - v6;

    v8 = v7 <= 60.0 && v7 >= 0.0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)clearCachedAccounts
{
  location[3] = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedAccountsConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (v5)
  {
    LODWORD(location[0]) = 138543362;
    *(location + 4) = objc_opt_class();
    v7 = *(location + 4);
    v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, oSLogObject, 1, "%{public}@: Clearing the in-process account cache.", location, 12);

    if (v8)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
      free(v8);
      SSFileLog(v3, @"%@", v10, v11, v12, v13, v14, v15, v9);
    }
  }

  else
  {
  }

  objc_initWeak(location, self);
  accountsCacheAccessQueue = [(SSAccountStore *)self accountsCacheAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SSAccountStore_clearCachedAccounts__block_invoke;
  block[3] = &unk_1E84AD820;
  objc_copyWeak(&v18, location);
  dispatch_barrier_async(accountsCacheAccessQueue, block);

  objc_destroyWeak(&v18);
  objc_destroyWeak(location);
}

void __37__SSAccountStore_clearCachedAccounts__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAccountsCache:0];
}

+ (id)existingDefaultStore
{
  pthread_mutex_lock(&__DefaultStoreLock);
  v2 = __DefaultStore;
  pthread_mutex_unlock(&__DefaultStoreLock);

  return v2;
}

- (BOOL)repairAccountWithBrokenDSID:(id)d
{
  v122 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy)
  {
    [(SSAccountStore *)a2 repairAccountWithBrokenDSID:?];
  }

  if (([dCopy isLocalAccount] & 1) == 0 && objc_msgSend(dCopy, "hasBrokenDSID"))
  {
    v6 = SSGenerateLogCorrelationString();
    v7 = +[SSLogConfig sharedAccountsConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = shouldLog | 2;
    }

    else
    {
      LODWORD(v9) = shouldLog;
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      v12 = v11;
      hashedDescription = [dCopy hashedDescription];
      v114 = 138543874;
      v115 = v11;
      v116 = 2114;
      v117 = v6;
      v118 = 2114;
      v119 = hashedDescription;
      v14 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_1D48BA000, oSLogObject, 1, "%{public}@: [%{public}@] %{public}@ has a broken DSID. Attempting to repair it.", &v114, 32);

      if (!v14)
      {
        goto LABEL_17;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:4];
      free(v14);
      SSFileLog(v7, @"%@", v15, v16, v17, v18, v19, v20, oSLogObject);
    }

LABEL_17:
    v21 = +[SSLogConfig sharedAccountsConfig];
    if (!v21)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      LODWORD(v23) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v23) = shouldLog2;
    }

    oSLogObject2 = [v21 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v23 = v23;
    }

    else
    {
      v23 &= 2u;
    }

    if (v23)
    {
      v25 = objc_opt_class();
      v114 = 138543618;
      v115 = v25;
      v116 = 2114;
      v117 = v6;
      v26 = v25;
      LODWORD(v109) = 22;
      v27 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 1, "%{public}@: [%{public}@] Attempting to find a valid DSID on a corresponding IDMS account.", &v114, v109);

      if (!v27)
      {
        goto LABEL_29;
      }

      oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v27 encoding:4];
      free(v27);
      SSFileLog(v21, @"%@", v28, v29, v30, v31, v32, v33, oSLogObject2);
    }

LABEL_29:
    backingAccountStore = [(SSAccountStore *)self backingAccountStore];
    backingAccount = [dCopy backingAccount];
    v36 = [backingAccountStore _ss_IDMSAccountForAccount:backingAccount error:0];

    _ss_DSID = [v36 _ss_DSID];
    if (_ss_DSID)
    {
LABEL_30:
      v38 = _ss_DSID;
      goto LABEL_46;
    }

    v40 = +[SSLogConfig sharedAccountsConfig];
    if (!v40)
    {
      v40 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v40 shouldLog];
    if ([v40 shouldLogToDisk])
    {
      v42 = shouldLog3 | 2;
    }

    else
    {
      v42 = shouldLog3;
    }

    oSLogObject3 = [v40 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
    {
      v44 = v42;
    }

    else
    {
      v44 = v42 & 2;
    }

    if (v44)
    {
      v45 = objc_opt_class();
      v114 = 138543618;
      v115 = v45;
      v116 = 2114;
      v117 = v6;
      v46 = v45;
      LODWORD(v109) = 22;
      v47 = _os_log_send_and_compose_impl(v44, 0, 0, 0, &dword_1D48BA000, oSLogObject3, 1, "%{public}@: [%{public}@] Attempting to find a valid DSID on a corresponding iCloud account.", &v114, v109);

      if (!v47)
      {
        goto LABEL_44;
      }

      oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v47 encoding:4];
      free(v47);
      SSFileLog(v40, @"%@", v48, v49, v50, v51, v52, v53, oSLogObject3);
    }

LABEL_44:
    backingAccountStore2 = [(SSAccountStore *)self backingAccountStore];
    backingAccount2 = [dCopy backingAccount];
    v56 = [backingAccountStore2 _ss_iCloudAccountForAccount:backingAccount2 error:0];

    _ss_DSID2 = [v56 _ss_DSID];
    if (_ss_DSID2)
    {
      v38 = _ss_DSID2;
      v36 = v56;
LABEL_46:
      [dCopy setUniqueIdentifier:v38];
      v113 = 0;
      LODWORD(v39) = [(SSAccountStore *)self saveAccount:dCopy verifyCredentials:0 error:&v113];
      v111 = v113;
      v58 = +[SSLogConfig sharedAccountsConfig];
      v59 = v58;
      v112 = v36;
      if (v39)
      {
        v60 = v6;
        if (!v58)
        {
          v59 = +[SSLogConfig sharedConfig];
        }

        shouldLog4 = [v59 shouldLog];
        if ([v59 shouldLogToDisk])
        {
          v62 = shouldLog4 | 2;
        }

        else
        {
          v62 = shouldLog4;
        }

        oSLogObject4 = [v59 OSLogObject];
        if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
        {
          v64 = v62;
        }

        else
        {
          v64 = v62 & 2;
        }

        if (v64)
        {
          v65 = objc_opt_class();
          v66 = v65;
          hashedDescription2 = [dCopy hashedDescription];
          v114 = 138543874;
          v115 = v65;
          v116 = 2114;
          v117 = v60;
          v118 = 2114;
          v119 = hashedDescription2;
          LODWORD(v109) = 32;
          v68 = _os_log_send_and_compose_impl(v64, 0, 0, 0, &dword_1D48BA000, oSLogObject4, 0, "%{public}@: [%{public}@] Successfully repaired an account's broken DSID. account = %{public}@", &v114, v109);

          v6 = v60;
          if (!v68)
          {
            v69 = v111;
            v36 = v112;
            goto LABEL_73;
          }

          v69 = v111;
LABEL_67:
          oSLogObject4 = [MEMORY[0x1E696AEC0] stringWithCString:v68 encoding:4];
          free(v68);
          SSFileLog(v59, @"%@", v75, v76, v77, v78, v79, v80, oSLogObject4);
LABEL_71:

          goto LABEL_72;
        }

        v6 = v60;
      }

      else
      {
        v70 = v6;
        if (!v58)
        {
          v59 = +[SSLogConfig sharedConfig];
        }

        shouldLog5 = [v59 shouldLog];
        if ([v59 shouldLogToDisk])
        {
          shouldLog5 |= 2u;
        }

        oSLogObject4 = [v59 OSLogObject];
        if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
        {
          v72 = shouldLog5;
        }

        else
        {
          v72 = shouldLog5 & 2;
        }

        if (v72)
        {
          v73 = objc_opt_class();
          v110 = v73;
          hashedDescription3 = [dCopy hashedDescription];
          v114 = 138544130;
          v115 = v73;
          v116 = 2114;
          v117 = v70;
          v118 = 2114;
          v119 = hashedDescription3;
          v120 = 2114;
          v69 = v111;
          v121 = v111;
          LODWORD(v109) = 42;
          v68 = _os_log_send_and_compose_impl(v72, 0, 0, 0, &dword_1D48BA000, oSLogObject4, 16, "%{public}@: [%{public}@] We found a valid DSID, but we failed to save the account with the new DSID. account = %{public}@ | error = %{public}@", &v114, v109);

          v6 = v70;
          if (!v68)
          {
LABEL_72:
            v36 = v112;
LABEL_73:

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v6 = v70;
      }

      v69 = v111;
      goto LABEL_71;
    }

    v82 = +[SSLogConfig sharedAccountsConfig];
    if (!v82)
    {
      v82 = +[SSLogConfig sharedConfig];
    }

    shouldLog6 = [v82 shouldLog];
    if ([v82 shouldLogToDisk])
    {
      LODWORD(v84) = shouldLog6 | 2;
    }

    else
    {
      LODWORD(v84) = shouldLog6;
    }

    oSLogObject5 = [v82 OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_INFO))
    {
      v84 = v84;
    }

    else
    {
      v84 &= 2u;
    }

    if (v84)
    {
      v86 = objc_opt_class();
      v114 = 138543618;
      v115 = v86;
      v116 = 2114;
      v117 = v6;
      v87 = v86;
      LODWORD(v109) = 22;
      v88 = _os_log_send_and_compose_impl(v84, 0, 0, 0, &dword_1D48BA000, oSLogObject5, 1, "%{public}@: [%{public}@] Attempting to find a valid DSID on a corresponding AppleAuthentication account.", &v114, v109);

      if (!v88)
      {
        goto LABEL_89;
      }

      oSLogObject5 = [MEMORY[0x1E696AEC0] stringWithCString:v88 encoding:4];
      free(v88);
      SSFileLog(v82, @"%@", v89, v90, v91, v92, v93, v94, oSLogObject5);
    }

LABEL_89:
    backingAccountStore3 = [(SSAccountStore *)self backingAccountStore];
    backingAccount3 = [dCopy backingAccount];
    v36 = [backingAccountStore3 _ss_appleAuthenticationAccountForAccount:backingAccount3 error:0];

    _ss_DSID = [v36 _ss_DSID];
    if (!_ss_DSID)
    {
      v38 = +[SSLogConfig sharedAccountsConfig];
      if (!v38)
      {
        v38 = +[SSLogConfig sharedConfig];
      }

      shouldLog7 = [v38 shouldLog];
      if ([v38 shouldLogToDisk])
      {
        v98 = shouldLog7 | 2;
      }

      else
      {
        v98 = shouldLog7;
      }

      oSLogObject6 = [v38 OSLogObject];
      if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
      {
        v39 = v98;
      }

      else
      {
        v39 = v98 & 2;
      }

      if (v39)
      {
        v100 = objc_opt_class();
        v114 = 138543618;
        v115 = v100;
        v116 = 2114;
        v117 = v6;
        v101 = v100;
        LODWORD(v109) = 22;
        v102 = _os_log_send_and_compose_impl(v39, 0, 0, 0, &dword_1D48BA000, oSLogObject6, 16, "%{public}@: [%{public}@] Failed to find a valid DSID. Unable to repair the account.", &v114, v109);

        if (!v102)
        {
          LOBYTE(v39) = 0;
          goto LABEL_75;
        }

        v69 = [MEMORY[0x1E696AEC0] stringWithCString:v102 encoding:4];
        free(v102);
        SSFileLog(v38, @"%@", v103, v104, v105, v106, v107, v108, v69);
        LOBYTE(v39) = 0;
      }

      else
      {
        v69 = oSLogObject6;
      }

LABEL_74:

LABEL_75:
      goto LABEL_76;
    }

    goto LABEL_30;
  }

  LOBYTE(v39) = 1;
LABEL_76:

  return v39;
}

+ (void)resetExpirationForTokenType:(int64_t)type
{
  if (type == 1)
  {
    v3 = [@"LastAuthTime" stringByAppendingFormat:@"-%@", @"InAppPurchase"];
  }

  else
  {
    v3 = @"LastAuthTime";
  }

  CFPreferencesSetAppValue(v3, [MEMORY[0x1E695DF00] date], @"com.apple.itunesstored");

  CFPreferencesAppSynchronize(@"com.apple.itunesstored");
}

- (id)accountWithUniqueIdentifier:(id)identifier reloadIfNecessary:(BOOL)necessary
{
  necessary = [(SSAccountStore *)self accountWithUniqueIdentifier:identifier, necessary];
  v5 = [necessary copy];

  return v5;
}

- (void)getDefaultAccountNameUsingBlock:(id)block
{
  blockCopy = block;
  keyValueStore = [(SSAccountStore *)self keyValueStore];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__SSAccountStore_getDefaultAccountNameUsingBlock___block_invoke;
  v7[3] = &unk_1E84AE870;
  v8 = blockCopy;
  v6 = blockCopy;
  [keyValueStore getValueForDomain:@"com.apple.itunesstored" key:@"DefaultAccountName" usingBlock:v7];
}

uint64_t __50__SSAccountStore_getDefaultAccountNameUsingBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)isAuthenticationActive
{
  v2 = CFPreferencesCopyAppValue(@"AuthenticationStarted", @"com.apple.itunesstored");
  if (v2)
  {
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceReferenceDate];
    v5 = v4;
    [v2 timeIntervalSinceReferenceDate];
    v7 = v5 - v6;

    v8 = v7 <= 600.0 && v7 >= 0.0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isExpiredForTokenType:(int64_t)type
{
  CFPreferencesAppSynchronize(@"com.apple.itunesstored");
  if (type == 1)
  {
    v5 = [@"LastAuthTime" stringByAppendingFormat:@"-%@", @"InAppPurchase"];
  }

  else
  {
    v5 = @"LastAuthTime";
  }

  v6 = CFPreferencesCopyAppValue(v5, @"com.apple.itunesstored");
  if (v6)
  {
    Current = CFAbsoluteTimeGetCurrent();
    [v6 timeIntervalSinceReferenceDate];
    v9 = v8;
    [self tokenExpirationInterval];
    v11 = Current > v9 + v10;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (SSAccount)demoAccount
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  accounts = [(SSAccountStore *)self accounts];
  v3 = [accounts countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(accounts);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        backingAccount = [v6 backingAccount];
        ams_isDemoAccount = [backingAccount ams_isDemoAccount];

        if (ams_isDemoAccount)
        {
          v3 = [v6 copy];
          goto LABEL_11;
        }
      }

      v3 = [accounts countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

+ (BOOL)migrateToAccountsFramework
{
  v231 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(SSKeyValueStore);
  accountDictionaries = [(SSKeyValueStore *)v3 accountDictionaries];
  if (![accountDictionaries count])
  {
    v120 = +[SSLogConfig sharedAccountsMigrationConfig];
    if (!v120)
    {
      v120 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v120 shouldLog];
    if ([v120 shouldLogToDisk])
    {
      v122 = shouldLog | 2;
    }

    else
    {
      v122 = shouldLog;
    }

    oSLogObject = [v120 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v124 = v122;
    }

    else
    {
      v124 = v122 & 2;
    }

    if (v124)
    {
      v222 = 138543362;
      v223 = objc_opt_class();
      v125 = v223;
      v126 = _os_log_send_and_compose_impl(v124, 0, 0, 0, &dword_1D48BA000, oSLogObject, 0, "%{public}@: There are no accounts that need migrating to Accounts.framework.", &v222, 12);

      if (!v126)
      {
LABEL_120:

        [self _excludeCopyKVSDatabasePathFromBackups];
        LOBYTE(v119) = 0;
        goto LABEL_184;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v126 encoding:4];
      free(v126);
      SSFileLog(v120, @"%@", v127, v128, v129, v130, v131, v132, oSLogObject);
    }

    goto LABEL_120;
  }

  if (+[SSDevice deviceIsInternalBuild])
  {
    [self _copyKVSDatabaseWithError:0];
  }

  v4 = +[SSLogConfig sharedAccountsMigrationConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = shouldLog2 | 2;
  }

  else
  {
    v6 = shouldLog2;
  }

  oSLogObject2 = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    v8 = v6;
  }

  else
  {
    v8 = v6 & 2;
  }

  if (v8)
  {
    v222 = 138543362;
    v223 = objc_opt_class();
    v9 = v223;
    v10 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 1, "%{public}@: Disabling the in-process cache.", &v222, 12);

    if (!v10)
    {
      goto LABEL_16;
    }

    oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
    free(v10);
    SSFileLog(v4, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject2);
  }

LABEL_16:
  v17 = +[SSAccountStore defaultStore];
  accountsCacheAccessQueue = [v17 accountsCacheAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__SSAccountStore_migrateToAccountsFramework__block_invoke;
  block[3] = &unk_1E84AC050;
  v202 = v17;
  v221 = v202;
  dispatch_sync(accountsCacheAccessQueue, block);

  v19 = +[SSLogConfig sharedAccountsMigrationConfig];
  if (!v19)
  {
    v19 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v19 shouldLog];
  if ([v19 shouldLogToDisk])
  {
    v21 = shouldLog3 | 2;
  }

  else
  {
    v21 = shouldLog3;
  }

  oSLogObject3 = [v19 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v21;
  }

  else
  {
    v23 = v21 & 2;
  }

  if (!v23)
  {
    goto LABEL_27;
  }

  v24 = objc_opt_class();
  v25 = v24;
  v26 = [accountDictionaries count];
  v222 = 138543618;
  v223 = v24;
  v224 = 2048;
  v225 = v26;
  LODWORD(v198) = 22;
  v27 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &dword_1D48BA000, oSLogObject3, 0, "%{public}@: Migrating %ld account(s).", &v222, v198);

  if (v27)
  {
    oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v27 encoding:4];
    free(v27);
    SSFileLog(v19, @"%@", v28, v29, v30, v31, v32, v33, oSLogObject3);
LABEL_27:
  }

  v34 = [(SSKeyValueStore *)v3 iTunesValueForKey:@"DSPersonID" usedDomain:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v34 = 0;
  }

  v35 = [(SSKeyValueStore *)v3 iTunesValueForKey:@"ActiveLockerAccountID" usedDomain:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v35 = 0;
  }

  v218 = 0u;
  v219 = 0u;
  v216 = 0u;
  v217 = 0u;
  v36 = accountDictionaries;
  v203 = v35;
  v204 = v3;
  v209 = [v36 countByEnumeratingWithState:&v216 objects:v230 count:16];
  if (!v209)
  {

    v119 = 0;
    goto LABEL_123;
  }

  v201 = v34;
  v200 = 0;
  v207 = *v217;
  selfCopy = self;
  v208 = v36;
  do
  {
    for (i = 0; i != v209; ++i)
    {
      if (*v217 != v207)
      {
        objc_enumerationMutation(v36);
      }

      v38 = *(*(&v216 + 1) + 8 * i);
      v39 = SSGenerateLogCorrelationString();
      v215 = 0;
      v40 = [self _shouldRemoveAccountDictionaryWithoutMigration:v38 reason:&v215];
      v41 = v215;
      if (v40)
      {
        v205 = v38;
        v42 = v3;
        v43 = v41;
        v44 = +[SSLogConfig sharedAccountsMigrationConfig];
        if (!v44)
        {
          v44 = +[SSLogConfig sharedConfig];
        }

        shouldLog4 = [v44 shouldLog];
        if ([v44 shouldLogToDisk])
        {
          v46 = shouldLog4 | 2;
        }

        else
        {
          v46 = shouldLog4;
        }

        oSLogObject4 = [v44 OSLogObject];
        if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
        {
          v48 = v46;
        }

        else
        {
          v48 = v46 & 2;
        }

        if (v48)
        {
          v49 = objc_opt_class();
          v222 = 138543874;
          v223 = v49;
          v224 = 2114;
          v225 = v39;
          v226 = 2112;
          v50 = v43;
          v227 = v43;
          v51 = v49;
          LODWORD(v198) = 32;
          v52 = _os_log_send_and_compose_impl(v48, 0, 0, 0, &dword_1D48BA000, oSLogObject4, 0, "%{public}@: [%{public}@] Removing an account from the KVS without migrating it because %@.", &v222, v198);

          v3 = v42;
          v53 = v205;
          if (v52)
          {
            oSLogObject4 = [MEMORY[0x1E696AEC0] stringWithCString:v52 encoding:4];
            free(v52);
            SSFileLog(v44, @"%@", v54, v55, v56, v57, v58, v59, oSLogObject4);
            goto LABEL_73;
          }
        }

        else
        {
          v50 = v43;
          v3 = v42;
          v53 = v205;
LABEL_73:
        }

        [self _removeAccountDictionary:v53 fromKeyValueStore:v3];
        goto LABEL_92;
      }

      v206 = v41;
      accounts = [v202 accounts];
      v61 = [accounts _ss_map:&__block_literal_global_228];

      v62 = +[SSLogConfig sharedAccountsMigrationConfig];
      if (!v62)
      {
        v62 = +[SSLogConfig sharedConfig];
      }

      shouldLog5 = [v62 shouldLog];
      if ([v62 shouldLogToDisk])
      {
        v64 = shouldLog5 | 2;
      }

      else
      {
        v64 = shouldLog5;
      }

      oSLogObject5 = [v62 OSLogObject];
      if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
      {
        v66 = v64;
      }

      else
      {
        v66 = v64 & 2;
      }

      if (v66)
      {
        v67 = objc_opt_class();
        v68 = v67;
        v69 = [selfCopy _hashedDescriptionFromAccountDictionary:v38];
        v222 = 138544130;
        v223 = v67;
        v3 = v204;
        v224 = 2114;
        v225 = v39;
        v226 = 2114;
        v227 = v69;
        v228 = 2112;
        v229 = v61;
        LODWORD(v198) = 42;
        v70 = _os_log_send_and_compose_impl(v66, 0, 0, 0, &dword_1D48BA000, oSLogObject5, 0, "%{public}@: [%{public}@] Beginning migration of %{public}@. currentAccounts = %@", &v222, v198);

        self = selfCopy;
        if (!v70)
        {
          goto LABEL_61;
        }

        oSLogObject5 = [MEMORY[0x1E696AEC0] stringWithCString:v70 encoding:4];
        free(v70);
        SSFileLog(v62, @"%@", v71, v72, v73, v74, v75, v76, oSLogObject5);
      }

LABEL_61:
      v214 = 0;
      v77 = [self _migrateAccountDictionary:v38 fromKeyValueStore:v3 originalActiveDSID:v201 originalActiveLockerDSID:v203 logKey:v39 error:&v214];
      v78 = v214;
      v79 = +[SSLogConfig sharedAccountsMigrationConfig];
      v80 = v79;
      if (!v77)
      {
        if (!v79)
        {
          v80 = +[SSLogConfig sharedConfig];
        }

        shouldLog6 = [v80 shouldLog];
        if ([v80 shouldLogToDisk])
        {
          shouldLog6 |= 2u;
        }

        oSLogObject6 = [v80 OSLogObject];
        if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
        {
          v95 = shouldLog6;
        }

        else
        {
          v95 = shouldLog6 & 2;
        }

        if (v95)
        {
          v96 = objc_opt_class();
          v222 = 138543874;
          v223 = v96;
          v224 = 2114;
          v225 = v39;
          v226 = 2112;
          v227 = v78;
          v97 = v96;
          LODWORD(v198) = 32;
          v98 = _os_log_send_and_compose_impl(v95, 0, 0, 0, &dword_1D48BA000, oSLogObject6, 16, "%{public}@: [%{public}@] Failed to migrate the account. We won't remove it from the KVS. error = %@", &v222, v198);

          v50 = v206;
          if (!v98)
          {
LABEL_90:

            self = selfCopy;
            goto LABEL_91;
          }

          oSLogObject6 = [MEMORY[0x1E696AEC0] stringWithCString:v98 encoding:4];
          free(v98);
          SSFileLog(v80, @"%@", v99, v100, v101, v102, v103, v104, oSLogObject6);
        }

        else
        {
          v50 = v206;
        }

        goto LABEL_90;
      }

      if (!v79)
      {
        v80 = +[SSLogConfig sharedConfig];
      }

      shouldLog7 = [v80 shouldLog];
      if ([v80 shouldLogToDisk])
      {
        shouldLog7 |= 2u;
      }

      oSLogObject7 = [v80 OSLogObject];
      if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEFAULT))
      {
        v83 = shouldLog7;
      }

      else
      {
        v83 = shouldLog7 & 2;
      }

      if (!v83)
      {
        v50 = v206;
        goto LABEL_86;
      }

      v84 = objc_opt_class();
      v222 = 138543618;
      v223 = v84;
      v224 = 2114;
      v225 = v39;
      v85 = v84;
      LODWORD(v198) = 22;
      v86 = _os_log_send_and_compose_impl(v83, 0, 0, 0, &dword_1D48BA000, oSLogObject7, 0, "%{public}@: [%{public}@] Successfully migrated the account. Removing it from the KVS.", &v222, v198);

      v50 = v206;
      if (v86)
      {
        oSLogObject7 = [MEMORY[0x1E696AEC0] stringWithCString:v86 encoding:4];
        free(v86);
        SSFileLog(v80, @"%@", v87, v88, v89, v90, v91, v92, oSLogObject7);
LABEL_86:
      }

      self = selfCopy;
      v3 = v204;
      [selfCopy _removeAccountDictionary:v38 fromKeyValueStore:v204];
      v200 = 1;
LABEL_91:

LABEL_92:
      v36 = v208;
    }

    v209 = [v208 countByEnumeratingWithState:&v216 objects:v230 count:16];
  }

  while (v209);

  if (v200)
  {
    v105 = +[SSLogConfig sharedAccountsMigrationConfig];
    v34 = v201;
    if (!v105)
    {
      v105 = +[SSLogConfig sharedConfig];
    }

    shouldLog8 = [v105 shouldLog];
    if ([v105 shouldLogToDisk])
    {
      v107 = shouldLog8 | 2;
    }

    else
    {
      v107 = shouldLog8;
    }

    oSLogObject8 = [v105 OSLogObject];
    if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_INFO))
    {
      v109 = v107;
    }

    else
    {
      v109 = v107 & 2;
    }

    if (v109)
    {
      v110 = objc_opt_class();
      v222 = 138543362;
      v223 = v110;
      v111 = v110;
      LODWORD(v198) = 12;
      v112 = _os_log_send_and_compose_impl(v109, 0, 0, 0, &dword_1D48BA000, oSLogObject8, 1, "%{public}@: Ensuring that we have only a single active account after migration.", &v222, v198);

      if (v112)
      {
        oSLogObject8 = [MEMORY[0x1E696AEC0] stringWithCString:v112 encoding:4];
        free(v112);
        SSFileLog(v105, @"%@", v113, v114, v115, v116, v117, v118, oSLogObject8);
        goto LABEL_106;
      }
    }

    else
    {
LABEL_106:
    }

    [self _cleanupActiveAccountsAfterMigrationWithActiveDSID:v201 activeLockerDSID:v203];
    v119 = 1;
  }

  else
  {
    v119 = 0;
    v34 = v201;
  }

LABEL_123:
  v133 = +[SSLogConfig sharedAccountsMigrationConfig];
  if (!v133)
  {
    v133 = +[SSLogConfig sharedConfig];
  }

  shouldLog9 = [v133 shouldLog];
  if ([v133 shouldLogToDisk])
  {
    v135 = shouldLog9 | 2;
  }

  else
  {
    v135 = shouldLog9;
  }

  oSLogObject9 = [v133 OSLogObject];
  if (os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_INFO))
  {
    v137 = v135;
  }

  else
  {
    v137 = v135 & 2;
  }

  if (v137)
  {
    v138 = objc_opt_class();
    v222 = 138543362;
    v223 = v138;
    v139 = v138;
    LODWORD(v198) = 12;
    v140 = _os_log_send_and_compose_impl(v137, 0, 0, 0, &dword_1D48BA000, oSLogObject9, 1, "%{public}@: Migration is complete. Clearing the in-process cache and re-enabling it.", &v222, v198);

    if (v140)
    {
      oSLogObject9 = [MEMORY[0x1E696AEC0] stringWithCString:v140 encoding:4];
      free(v140);
      SSFileLog(v133, @"%@", v141, v142, v143, v144, v145, v146, oSLogObject9);
      goto LABEL_134;
    }
  }

  else
  {
LABEL_134:
  }

  accountsCacheAccessQueue2 = [v202 accountsCacheAccessQueue];
  v212[0] = MEMORY[0x1E69E9820];
  v212[1] = 3221225472;
  v212[2] = __44__SSAccountStore_migrateToAccountsFramework__block_invoke_229;
  v212[3] = &unk_1E84AC050;
  v148 = v202;
  v213 = v148;
  dispatch_sync(accountsCacheAccessQueue2, v212);

  v149 = +[SSLogConfig sharedAccountsMigrationConfig];
  v150 = v149;
  v151 = v34;
  if (!v119)
  {
    if (!v149)
    {
      v150 = +[SSLogConfig sharedConfig];
    }

    shouldLog10 = [v150 shouldLog];
    if ([v150 shouldLogToDisk])
    {
      shouldLog10 |= 2u;
    }

    oSLogObject10 = [v150 OSLogObject];
    if (os_log_type_enabled(oSLogObject10, OS_LOG_TYPE_INFO))
    {
      v166 = shouldLog10;
    }

    else
    {
      v166 = shouldLog10 & 2;
    }

    if (v166)
    {
      v167 = objc_opt_class();
      v222 = 138543362;
      v223 = v167;
      v168 = v167;
      LODWORD(v198) = 12;
      v169 = _os_log_send_and_compose_impl(v166, 0, 0, 0, &dword_1D48BA000, oSLogObject10, 1, "%{public}@: We didn't migrate any accounts, so we aren't posting a com.apple.itunesstored.accountschanged (and its internal varient) notification.", &v222, v198);

      if (!v169)
      {
LABEL_159:

        goto LABEL_160;
      }

      oSLogObject10 = [MEMORY[0x1E696AEC0] stringWithCString:v169 encoding:4];
      free(v169);
      SSFileLog(v150, @"%@", v170, v171, v172, v173, v174, v175, oSLogObject10);
    }

    goto LABEL_159;
  }

  if (!v149)
  {
    v150 = +[SSLogConfig sharedConfig];
  }

  shouldLog11 = [v150 shouldLog];
  if ([v150 shouldLogToDisk])
  {
    shouldLog11 |= 2u;
  }

  oSLogObject11 = [v150 OSLogObject];
  if (os_log_type_enabled(oSLogObject11, OS_LOG_TYPE_INFO))
  {
    v154 = shouldLog11;
  }

  else
  {
    v154 = shouldLog11 & 2;
  }

  if (v154)
  {
    v155 = objc_opt_class();
    v222 = 138543362;
    v223 = v155;
    v156 = v155;
    LODWORD(v198) = 12;
    v157 = _os_log_send_and_compose_impl(v154, 0, 0, 0, &dword_1D48BA000, oSLogObject11, 1, "%{public}@: Posting a com.apple.itunesstored.accountschanged (and its internal varient) notification now that migration is complete.", &v222, v198);

    if (v157)
    {
      oSLogObject11 = [MEMORY[0x1E696AEC0] stringWithCString:v157 encoding:4];
      free(v157);
      SSFileLog(v150, @"%@", v158, v159, v160, v161, v162, v163, oSLogObject11);
      goto LABEL_146;
    }
  }

  else
  {
LABEL_146:
  }

  [self _postAccountsChangedInternalDarwinNotification];
  [self _postAccountsChangedDarwinNotification];
LABEL_160:
  accountDictionaries2 = [(SSKeyValueStore *)v3 accountDictionaries];
  v211[0] = MEMORY[0x1E69E9820];
  v211[1] = 3221225472;
  v211[2] = __44__SSAccountStore_migrateToAccountsFramework__block_invoke_230;
  v211[3] = &__block_descriptor_40_e32___NSString_16__0__NSDictionary_8l;
  v211[4] = self;
  v177 = [accountDictionaries2 _ss_map:v211];

  v178 = [v177 count];
  v179 = +[SSLogConfig sharedAccountsMigrationConfig];
  v180 = v179;
  if (v178)
  {
    if (!v179)
    {
      v180 = +[SSLogConfig sharedConfig];
    }

    shouldLog12 = [v180 shouldLog];
    if ([v180 shouldLogToDisk])
    {
      shouldLog12 |= 2u;
    }

    oSLogObject12 = [v180 OSLogObject];
    if (os_log_type_enabled(oSLogObject12, OS_LOG_TYPE_ERROR))
    {
      v183 = shouldLog12;
    }

    else
    {
      v183 = shouldLog12 & 2;
    }

    if (v183)
    {
      v184 = objc_opt_class();
      v222 = 138543618;
      v223 = v184;
      v224 = 2112;
      v225 = v177;
      v185 = v184;
      LODWORD(v198) = 22;
      v186 = _os_log_send_and_compose_impl(v183, 0, 0, 0, &dword_1D48BA000, oSLogObject12, 16, "%{public}@: After migration, the KVS contains the following accounts: %@", &v222, v198);
      goto LABEL_179;
    }

LABEL_181:
  }

  else
  {
    if (!v179)
    {
      v180 = +[SSLogConfig sharedConfig];
    }

    shouldLog13 = [v180 shouldLog];
    if ([v180 shouldLogToDisk])
    {
      shouldLog13 |= 2u;
    }

    oSLogObject12 = [v180 OSLogObject];
    if (os_log_type_enabled(oSLogObject12, OS_LOG_TYPE_INFO))
    {
      v188 = shouldLog13;
    }

    else
    {
      v188 = shouldLog13 & 2;
    }

    if (!v188)
    {
      goto LABEL_181;
    }

    v189 = objc_opt_class();
    v222 = 138543362;
    v223 = v189;
    v185 = v189;
    LODWORD(v198) = 12;
    v186 = _os_log_send_and_compose_impl(v188, 0, 0, 0, &dword_1D48BA000, oSLogObject12, 1, "%{public}@: After migration, there are no accounts remaining in the KVS.", &v222, v198);
LABEL_179:
    v190 = v186;

    if (v190)
    {
      v3 = v204;
      oSLogObject12 = [MEMORY[0x1E696AEC0] stringWithCString:v190 encoding:4];
      free(v190);
      SSFileLog(v180, @"%@", v191, v192, v193, v194, v195, v196, oSLogObject12);
      goto LABEL_181;
    }

    v3 = v204;
  }

LABEL_184:
  return v119;
}

uint64_t __44__SSAccountStore_migrateToAccountsFramework__block_invoke_229(uint64_t a1)
{
  [*(a1 + 32) setAccountsCache:0];
  v2 = *(a1 + 32);

  return [v2 setInProcessCacheDisabled:0];
}

- (BOOL)removeAccount:(id)account error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__19;
  v39 = __Block_byref_object_dispose__19;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v7 = dispatch_semaphore_create(0);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __38__SSAccountStore_removeAccount_error___block_invoke;
  v27[3] = &unk_1E84AE928;
  v29 = &v35;
  v30 = &v31;
  v8 = v7;
  v28 = v8;
  [(SSAccountStore *)self removeAccount:accountCopy completion:v27];
  v9 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v8, v9))
  {
    v10 = +[SSLogConfig sharedAccountsConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v11) = [v10 shouldLog];
    shouldLogToDisk = [v10 shouldLogToDisk];
    oSLogObject = [v10 OSLogObject];
    v14 = oSLogObject;
    if (shouldLogToDisk)
    {
      LODWORD(v11) = v11 | 2;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v15 = objc_opt_class();
      accountName = [accountCopy accountName];
      v17 = SSHashIfNeeded(accountName);
      v41 = 138543618;
      v42 = v15;
      v43 = 2114;
      v44 = v17;
      v18 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_1D48BA000, v14, 16, "%{public}@: Timed out while trying to remove %{public}@.", &v41, 22);

      if (!v18)
      {
LABEL_13:

        goto LABEL_14;
      }

      v14 = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:4];
      free(v18);
      SSFileLog(v10, @"%@", v19, v20, v21, v22, v23, v24, v14);
    }

    goto LABEL_13;
  }

LABEL_14:
  if (error)
  {
    *error = v36[5];
  }

  v25 = *(v32 + 24);

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  return v25 & 1;
}

void __38__SSAccountStore_removeAccount_error___block_invoke(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)removeAccount:(id)account completion:(id)completion
{
  v49 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  v8 = +[SSLogConfig sharedAccountsConfig];
  v9 = v8;
  if (accountCopy)
  {
    if (!v8)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      LODWORD(v11) = shouldLog | 2;
    }

    else
    {
      LODWORD(v11) = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v13 = objc_opt_class();
      v14 = v13;
      accountName = [accountCopy accountName];
      v16 = SSHashIfNeeded(accountName);
      v45 = 138543618;
      v46 = v13;
      v47 = 2114;
      v48 = v16;
      v17 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_1D48BA000, oSLogObject, 0, "%{public}@: Removing %{public}@.", &v45, 22);

      if (!v17)
      {
        goto LABEL_14;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:4];
      free(v17);
      SSFileLog(v9, @"%@", v18, v19, v20, v21, v22, v23, oSLogObject);
    }

LABEL_14:
    unitTestModeEnabled = [objc_opt_class() unitTestModeEnabled];
    v25 = objc_opt_class();
    v26 = v25;
    if (unitTestModeEnabled)
    {
      [v25 _removeAccountFromUnitTestStore:accountCopy];
      __AccountsChangedInternal();
      if (([objc_opt_class() areAccountStoreChangedNotificationsDisabled] & 1) == 0)
      {
        __AccountsChanged();
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1, 0);
      }
    }

    else
    {
      v38 = [objc_opt_class() _backingAccountForAccount:accountCopy];
      backingAccountStore = [(SSAccountStore *)self backingAccountStore];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __43__SSAccountStore_removeAccount_completion___block_invoke;
      v41[3] = &unk_1E84AE950;
      v44 = v26;
      v42 = v38;
      v43 = completionCopy;
      v40 = v38;
      [backingAccountStore removeAccount:v40 withCompletionHandler:v41];
    }

    goto LABEL_35;
  }

  if (!v8)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    LODWORD(v28) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v28) = shouldLog2;
  }

  oSLogObject2 = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v28 = v28;
  }

  else
  {
    v28 &= 2u;
  }

  if (v28)
  {
    v45 = 138543362;
    v46 = objc_opt_class();
    v30 = v46;
    v31 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 16, "%{public}@: Someone is attempting to remove a nil acount.", &v45, 12);

    if (!v31)
    {
      goto LABEL_31;
    }

    oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v31 encoding:4];
    free(v31);
    SSFileLog(v9, @"%@", v32, v33, v34, v35, v36, v37, oSLogObject2);
  }

LABEL_31:
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, 0);
  }

LABEL_35:
}

void __43__SSAccountStore_removeAccount_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = +[SSLogConfig sharedAccountsConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = v8;
    }

    else
    {
      v10 = v8 & 2;
    }

    if (v10)
    {
      v11 = objc_opt_class();
      v12 = a1[4];
      v13 = v11;
      v14 = [v12 description];
      v15 = SSHashIfNeeded(v14);
      v24 = 138543874;
      v25 = v11;
      v26 = 2114;
      v27 = v15;
      v28 = 2112;
      v29 = v5;
      v16 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_1D48BA000, v9, 16, "%{public}@: Failed to remove %{public}@. error = %@", &v24, 32);

      if (!v16)
      {
LABEL_14:

        goto LABEL_15;
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:4];
      free(v16);
      SSFileLog(v6, @"%@", v17, v18, v19, v20, v21, v22, v9);
    }

    goto LABEL_14;
  }

LABEL_15:
  v23 = a1[5];
  if (v23)
  {
    (*(v23 + 16))(v23, a2, v5);
  }
}

- (void)removeAllAccountsWithCompletion:(id)completion
{
  completionCopy = completion;
  accounts = [(SSAccountStore *)self accounts];
  objc_initWeak(&location, self);
  v6 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__SSAccountStore_removeAllAccountsWithCompletion___block_invoke;
  v9[3] = &unk_1E84AE9A0;
  objc_copyWeak(&v12, &location);
  v10 = accounts;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = accounts;
  dispatch_async(v6, v9);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __50__SSAccountStore_removeAllAccountsWithCompletion___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = dispatch_group_create();
  v4 = dispatch_queue_create("com.apple.StoreServices.SSAccountStore.removeAccountsQueue", MEMORY[0x1E69E96A8]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v28 = a1;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __50__SSAccountStore_removeAllAccountsWithCompletion___block_invoke_2;
        block[3] = &unk_1E84AC028;
        block[4] = WeakRetained;
        block[5] = v10;
        dispatch_group_async(v3, v4, block);
      }

      v7 = [v5 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v7);
  }

  v11 = dispatch_time(0, 300000000000);
  if (dispatch_group_wait(v3, v11))
  {
    v12 = +[SSLogConfig sharedAccountsConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    v13 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
    }

    v15 = [v12 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = v14;
    }

    else
    {
      v16 = v14 & 2;
    }

    if (v16)
    {
      v17 = objc_opt_class();
      v18 = *(v28 + 32);
      v34 = 138543618;
      v35 = v17;
      v36 = 2112;
      v37 = v18;
      v19 = v17;
      v20 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_1D48BA000, v15, 16, "%{public}@: Timed out while removing accounts %@.", &v34, 22);

      if (!v20)
      {
LABEL_21:

        goto LABEL_22;
      }

      v15 = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:4];
      free(v20);
      SSFileLog(v12, @"%@", v21, v22, v23, v24, v25, v26, v15);
    }

    goto LABEL_21;
  }

LABEL_22:
  v27 = *(v28 + 40);
  if (v27)
  {
    (*(v27 + 16))();
  }
}

void __50__SSAccountStore_removeAllAccountsWithCompletion___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = dispatch_semaphore_create(0);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __50__SSAccountStore_removeAllAccountsWithCompletion___block_invoke_3;
  v23[3] = &unk_1E84AE978;
  v5 = v2;
  v24 = v5;
  [v3 removeAccount:v4 completion:v23];
  v6 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = +[SSLogConfig sharedAccountsConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = v8 | 2;
    }

    else
    {
      LODWORD(v9) = v8;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      v12 = *(a1 + 40);
      v13 = v11;
      v14 = [v12 description];
      v15 = SSHashIfNeeded(v14);
      v25 = 138543618;
      v26 = v11;
      v27 = 2114;
      v28 = v15;
      v16 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_1D48BA000, v10, 16, "%{public}@: Timed out while removing account %{public}@.", &v25, 22);

      if (!v16)
      {
LABEL_14:

        goto LABEL_15;
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:4];
      free(v16);
      SSFileLog(v7, @"%@", v17, v18, v19, v20, v21, v22, v10);
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (void)removeCookiesForAccount:(id)account logKey:(id)key
{
  v29 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  keyCopy = key;
  v7 = +[SSLogConfig sharedAccountsCookiesConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    LODWORD(v9) = shouldLog | 2;
  }

  else
  {
    LODWORD(v9) = shouldLog;
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v9;
  }

  else
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v11 = objc_opt_class();
  v12 = v11;
  accountName = [accountCopy accountName];
  v14 = SSHashIfNeeded(accountName);
  v23 = 138543874;
  v24 = v11;
  v25 = 2114;
  v26 = keyCopy;
  v27 = 2114;
  v28 = v14;
  v15 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_1D48BA000, oSLogObject, 0, "%{public}@: [%{public}@] Removing all cookies for %{public}@.", &v23, 32);

  if (v15)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:4];
    free(v15);
    SSFileLog(v7, @"%@", v16, v17, v18, v19, v20, v21, oSLogObject);
LABEL_12:
  }

  v22 = +[SSVCookieStorage sharedStorage];
  [v22 removeCookiesWithAccount:accountCopy];
}

- (void)resetExpiration
{
  v2 = objc_opt_class();

  [v2 resetExpiration];
}

- (void)resetExpirationForTokenType:(int64_t)type
{
  v4 = objc_opt_class();

  [v4 resetExpirationForTokenType:type];
}

- (void)saveAccount:(id)account verifyCredentials:(BOOL)credentials completion:(id)completion
{
  credentialsCopy = credentials;
  completionCopy = completion;
  v9 = [(SSAccountStore *)self _saveAccount:account verifyCredentials:credentialsCopy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__SSAccountStore_saveAccount_verifyCredentials_completion___block_invoke;
  v11[3] = &unk_1E84AE9C8;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 addFinishBlock:v11];
}

void __59__SSAccountStore_saveAccount_verifyCredentials_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    (*(v3 + 16))(v3, [a2 BOOLValue], v5);
  }
}

- (BOOL)saveAccount:(id)account verifyCredentials:(BOOL)credentials error:(id *)error
{
  v6 = [(SSAccountStore *)self _saveAccount:account verifyCredentials:credentials];
  v7 = [v6 resultWithTimeout:error error:5.0];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

- (void)setDefaultAccountName:(id)name completionBlock:(id)block
{
  blockCopy = block;
  nameCopy = name;
  keyValueStore = [(SSAccountStore *)self keyValueStore];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__SSAccountStore_setDefaultAccountName_completionBlock___block_invoke;
  v10[3] = &unk_1E84AE9F0;
  v11 = blockCopy;
  v9 = blockCopy;
  [keyValueStore setValue:nameCopy forDomain:@"com.apple.itunesstored" key:@"DefaultAccountName" completionBlock:v10];
}

uint64_t __56__SSAccountStore_setDefaultAccountName_completionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)setAuthenticationStartedDate:(id)date
{
  CFPreferencesSetAppValue(@"AuthenticationStarted", date, @"com.apple.itunesstored");

  CFPreferencesAppSynchronize(@"com.apple.itunesstored");
}

- (void)signOutAccount:(id)account completion:(id)completion
{
  v47 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  v7 = SSGenerateLogCorrelationString();
  v8 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    shouldLog |= 2u;
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v11 = shouldLog;
  }

  else
  {
    v11 = shouldLog & 2;
  }

  if (v11)
  {
    v12 = objc_opt_class();
    v13 = v12;
    accountName = [accountCopy accountName];
    v15 = SSHashIfNeeded(accountName);
    *location = 138543874;
    *&location[4] = v12;
    v43 = 2114;
    v44 = v7;
    v45 = 2114;
    v46 = v15;
    v16 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_1D48BA000, oSLogObject, 0, "%{public}@: [%{public}@] Signing out of %{public}@.", location, 32);

    if (v16)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:4];
      free(v16);
      SSFileLog(v8, @"%@", v18, v19, v20, v21, v22, v23, v17);
    }
  }

  else
  {
  }

  [accountCopy setActive:0];
  v24 = objc_alloc_init(SSPromise);
  objc_initWeak(location, self);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __44__SSAccountStore_signOutAccount_completion___block_invoke;
  v37[3] = &unk_1E84AEA18;
  objc_copyWeak(&v41, location);
  v25 = v7;
  v38 = v25;
  v26 = accountCopy;
  v39 = v26;
  v27 = completionCopy;
  v40 = v27;
  [(SSPromise *)v24 addSuccessBlock:v37];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __44__SSAccountStore_signOutAccount_completion___block_invoke_239;
  v33[3] = &unk_1E84AEA40;
  v33[4] = self;
  v28 = v25;
  v34 = v28;
  v29 = v26;
  v35 = v29;
  v30 = v27;
  v36 = v30;
  [(SSPromise *)v24 addErrorBlock:v33];
  bOOLCompletionHandlerAdapter = [(SSPromise *)v24 BOOLCompletionHandlerAdapter];
  [(SSAccountStore *)self saveAccount:v29 verifyCredentials:0 completion:bOOLCompletionHandlerAdapter];

  objc_destroyWeak(&v41);
  objc_destroyWeak(location);
}

void __44__SSAccountStore_signOutAccount_completion___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v5;
  }

  else
  {
    v7 = v5 & 2;
  }

  if (v7)
  {
    v8 = objc_opt_class();
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = v8;
    v12 = [v9 accountName];
    v13 = SSHashIfNeeded(v12);
    v22 = 138543874;
    v23 = v8;
    v24 = 2114;
    v25 = v10;
    v26 = 2114;
    v27 = v13;
    v14 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_1D48BA000, v6, 0, "%{public}@: [%{public}@] Successfully signed out of %{public}@. We'll now remove its cookies.", &v22, 32);

    if (!v14)
    {
      goto LABEL_13;
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:4];
    free(v14);
    SSFileLog(v3, @"%@", v15, v16, v17, v18, v19, v20, v6);
  }

LABEL_13:
  [WeakRetained removeCookiesForAccount:*(a1 + 40) logKey:*(a1 + 32)];
  v21 = *(a1 + 48);
  if (v21)
  {
    (*(v21 + 16))(v21, 1, 0);
  }
}

void __44__SSAccountStore_signOutAccount_completion___block_invoke_239(void *a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = v6;
  }

  else
  {
    v8 = v6 & 2;
  }

  if (v8)
  {
    v9 = objc_opt_class();
    v11 = a1[5];
    v10 = a1[6];
    v12 = v9;
    v13 = [v10 accountName];
    v14 = SSHashIfNeeded(v13);
    v23 = 138544130;
    v24 = v9;
    v25 = 2114;
    v26 = v11;
    v27 = 2114;
    v28 = v14;
    v29 = 2112;
    v30 = v3;
    v15 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_1D48BA000, v7, 16, "%{public}@: [%{public}@] Unable to sign out of %{public}@. error = %@", &v23, 42);

    if (!v15)
    {
      goto LABEL_13;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:4];
    free(v15);
    SSFileLog(v4, @"%@", v16, v17, v18, v19, v20, v21, v7);
  }

LABEL_13:
  v22 = a1[7];
  if (v22)
  {
    (*(v22 + 16))(v22, 0, v3);
  }
}

- (id)updateAccountWithAuthKit:(id)kit store:(id)store options:(id)options
{
  v47 = *MEMORY[0x1E69E9840];
  kitCopy = kit;
  storeCopy = store;
  optionsCopy = options;
  v11 = [optionsCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitSkipAuthKitKey"];
  bOOLValue = [v11 BOOLValue];

  if (bOOLValue)
  {
    v13 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = shouldLog | 2;
    }

    else
    {
      v15 = shouldLog;
    }

    oSLogObject = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v15;
    }

    else
    {
      v17 = v15 & 2;
    }

    if (v17)
    {
      v18 = [optionsCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      *location = 138543618;
      *&location[4] = self;
      v45 = 2114;
      v46 = v18;
      v19 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_1D48BA000, oSLogObject, 0, "%{public}@: [%{public}@] We were told to skip the call to AuthKit.", location, 22);

      if (v19)
      {
        v20 = [MEMORY[0x1E696AEC0] stringWithCString:v19 encoding:4];
        free(v19);
        SSFileLog(v13, @"%@", v21, v22, v23, v24, v25, v26, v20);
      }
    }

    else
    {
    }

    v33 = [SSUpdateAccountResponse alloc];
    v34 = [optionsCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitCredentialSource"];
    v27 = -[SSUpdateAccountResponse initWithUpdatedAccount:credentialSource:](v33, "initWithUpdatedAccount:credentialSource:", kitCopy, [v34 unsignedIntegerValue]);

    v32 = [SSPromise promiseWithResult:v27];
  }

  else
  {
    v27 = [optionsCopy objectForKeyedSubscript:@"SSAccountStoresProxiedDeviceFlagKey"];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [(SSUpdateAccountResponse *)v27 BOOLValue])
    {
      v28 = [optionsCopy mutableCopy];
      [v28 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"SSAccountStoreAuthKitAllowSilentAuth"];

      optionsCopy = v28;
    }

    v29 = [(SSAccountStore *)self _shouldCreateNewAccountForAccount:kitCopy options:optionsCopy];
    objc_initWeak(location, self);
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __57__SSAccountStore_updateAccountWithAuthKit_store_options___block_invoke;
    v39[3] = &unk_1E84AEA90;
    objc_copyWeak(&v43, location);
    v30 = optionsCopy;
    v40 = v30;
    v41 = kitCopy;
    v42 = storeCopy;
    v31 = [v29 thenWithBlock:v39];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __57__SSAccountStore_updateAccountWithAuthKit_store_options___block_invoke_267;
    v36[3] = &unk_1E84AEAB8;
    objc_copyWeak(&v38, location);
    optionsCopy = v30;
    v37 = optionsCopy;
    v32 = [v31 thenWithBlock:v36];

    objc_destroyWeak(&v38);
    objc_destroyWeak(&v43);
    objc_destroyWeak(location);
  }

  return v32;
}

id __57__SSAccountStore_updateAccountWithAuthKit_store_options___block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [v3 integerValue];

  if (v5 == 3)
  {
    v20 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v20)
    {
      v20 = +[SSLogConfig sharedConfig];
    }

    v21 = [v20 shouldLog];
    if ([v20 shouldLogToDisk])
    {
      LODWORD(v22) = v21 | 2;
    }

    else
    {
      LODWORD(v22) = v21;
    }

    v23 = [v20 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v22;
    }

    else
    {
      v22 &= 2u;
    }

    if (v22)
    {
      v24 = [*(a1 + 32) objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v42 = 138543618;
      v43 = WeakRetained;
      v44 = 2114;
      v45 = v24;
      v25 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &dword_1D48BA000, v23, 0, "%{public}@: [%{public}@] The user opted to create a new account. This authentication will fail and we'll start the create account flow.", &v42, 22);

      if (!v25)
      {
LABEL_28:

        v18 = [MEMORY[0x1E698C7D8] bagForProfile:@"Accounts" profileVersion:@"1"];
        v32 = [v18 URLForKey:@"signup"];
        v33 = [v32 valuePromise];

        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __57__SSAccountStore_updateAccountWithAuthKit_store_options___block_invoke_256;
        v39[3] = &unk_1E84AEA68;
        v39[4] = WeakRetained;
        v40 = *(a1 + 32);
        [v33 resultWithCompletion:v39];
        v34 = SSError(@"SSErrorDomain", 140, 0, @"The user opted to create a new account.");
        v19 = [SSPromise promiseWithError:v34];

        goto LABEL_30;
      }

      v23 = [MEMORY[0x1E696AEC0] stringWithCString:v25 encoding:4];
      free(v25);
      SSFileLog(v20, @"%@", v26, v27, v28, v29, v30, v31, v23);
    }

    goto LABEL_28;
  }

  if (v5 == 2)
  {
    v6 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v8) = v7 | 2;
    }

    else
    {
      LODWORD(v8) = v7;
    }

    v9 = [v6 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v10 = [*(a1 + 32) objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v42 = 138543618;
      v43 = WeakRetained;
      v44 = 2114;
      v45 = v10;
      v11 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_1D48BA000, v9, 0, "%{public}@: [%{public}@] The user cancelled the create account dialog.", &v42, 22);

      if (!v11)
      {
LABEL_15:

        v18 = SSError(@"SSErrorDomain", 140, 0, @"The user cancelled the create account dialog.");
        v19 = [SSPromise promiseWithError:v18];
        goto LABEL_31;
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:4];
      free(v11);
      SSFileLog(v6, @"%@", v12, v13, v14, v15, v16, v17, v9);
    }

    goto LABEL_15;
  }

  v18 = [WeakRetained _updateAccountWithAuthKitViaSilentPETAuth:*(a1 + 40) options:*(a1 + 32)];
  v41[0] = v18;
  v33 = [WeakRetained _updateAccountWithAuthKitViaSilentPasswordAuth:*(a1 + 40) options:*(a1 + 32)];
  v41[1] = v33;
  v35 = [WeakRetained _updateAccountWithAuthKitViaSilentAuth:*(a1 + 40) options:*(a1 + 32)];
  v41[2] = v35;
  v36 = [WeakRetained _updateAccountWithAuthKitViaPromptAuth:*(a1 + 40) store:*(a1 + 48) options:*(a1 + 32)];
  v41[3] = v36;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:4];
  v19 = [SSPromise promiseWithAny:v37];

LABEL_30:
LABEL_31:

  return v19;
}

void __57__SSAccountStore_updateAccountWithAuthKit_store_options___block_invoke_256(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!a2)
  {
    v6 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v8) = v7 | 2;
    }

    else
    {
      LODWORD(v8) = v7;
    }

    v9 = [v6 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v10 = *(a1 + 32);
      v11 = [*(a1 + 40) objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v19 = 138543874;
      v20 = v10;
      v21 = 2114;
      v22 = v11;
      v23 = 2112;
      v24 = v5;
      v12 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_1D48BA000, v9, 0, "%{public}@: [%{public}@] Opening account creation URL failed with error: %@", &v19, 32);

      if (!v12)
      {
LABEL_15:

        goto LABEL_16;
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:4];
      free(v12);
      SSFileLog(v6, @"%@", v13, v14, v15, v16, v17, v18, v9);
    }

    goto LABEL_15;
  }

  [MEMORY[0x1E698CA98] openURL:a2 account:0 preferredClient:@"com.apple.AppStore"];
LABEL_16:
}

id __57__SSAccountStore_updateAccountWithAuthKit_store_options___block_invoke_267(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 updatedAccount];
  if ([v5 isActive])
  {
    v6 = 0;
  }

  else
  {
    if ([v5 accountScope] == 1)
    {
      v7 = [MEMORY[0x1E6959A48] ams_sharedAccountStoreForMediaType:*MEMORY[0x1E698C4C8]];
      v8 = [v7 ams_activeiTunesAccount];
    }

    else
    {
      v7 = [WeakRetained activeAccount];
      v8 = v7;
    }

    v6 = v8 == 0;
  }

  v9 = [*(a1 + 32) objectForKeyedSubscript:@"SSAccountStoreAuthKitCanSetActiveAccountKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 BOOLValue];
  if ((v11 & v6) == 1)
  {
    v12 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    v13 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      LODWORD(v14) = v13 | 2;
    }

    else
    {
      LODWORD(v14) = v13;
    }

    v15 = [v12 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v14;
    }

    else
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v16 = [*(a1 + 32) objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v17 = [v5 accountName];
      v18 = SSHashIfNeeded(v17);
      v29 = 138543874;
      v30 = WeakRetained;
      v31 = 2114;
      v32 = v16;
      v33 = 2114;
      v34 = v18;
      v19 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_1D48BA000, v15, 0, "%{public}@: [%{public}@] The device doesn't have an active account for the scope. %{public}@ will become the active account.", &v29, 32);

      if (!v19)
      {
LABEL_23:

        [v5 setActive:1];
        v26 = -[SSUpdateAccountResponse initWithUpdatedAccount:credentialSource:]([SSUpdateAccountResponse alloc], "initWithUpdatedAccount:credentialSource:", v5, [v3 credentialSource]);
        v27 = [SSPromise promiseWithResult:v26];

        goto LABEL_25;
      }

      v15 = [MEMORY[0x1E696AEC0] stringWithCString:v19 encoding:4];
      free(v19);
      SSFileLog(v12, @"%@", v20, v21, v22, v23, v24, v25, v15);
    }

    goto LABEL_23;
  }

  v27 = [SSPromise promiseWithResult:v3];
LABEL_25:

  return v27;
}

+ (void)setUnitTestModeEnabled:(BOOL)enabled
{
  _unitTestAccountsAccessQueue = [self _unitTestAccountsAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SSAccountStore_setUnitTestModeEnabled___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  enabledCopy = enabled;
  dispatch_barrier_async(_unitTestAccountsAccessQueue, block);
}

void __41__SSAccountStore_setUnitTestModeEnabled___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (sUnitTestModeEnabled != v2)
  {
    sUnitTestModeEnabled = *(a1 + 32);
    if (v2)
    {
      if (!sUnitTestAccounts)
      {
        v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v4 = sUnitTestAccounts;
        sUnitTestAccounts = v3;
      }
    }

    else
    {
      [sUnitTestAccounts removeAllObjects];
    }

    v5 = +[SSAccountStore defaultStore];
    [v5 clearCachedAccounts];
  }
}

+ (void)_addAccountToUnitTestStore:(id)store
{
  storeCopy = store;
  _unitTestAccountsAccessQueue = [self _unitTestAccountsAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SSAccountStore__addAccountToUnitTestStore___block_invoke;
  block[3] = &unk_1E84AC050;
  v8 = storeCopy;
  v6 = storeCopy;
  dispatch_barrier_async(_unitTestAccountsAccessQueue, block);
}

void __45__SSAccountStore__addAccountToUnitTestStore___block_invoke(uint64_t a1)
{
  v2 = sUnitTestAccounts;
  if (!sUnitTestAccounts)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = sUnitTestAccounts;
    sUnitTestAccounts = v3;

    v2 = sUnitTestAccounts;
  }

  v5 = *(a1 + 32);
  v7 = [v5 backingAccount];
  v6 = [v7 identifier];
  [v2 setObject:v5 forKeyedSubscript:v6];
}

+ (void)_removeAccountFromUnitTestStore:(id)store
{
  storeCopy = store;
  _unitTestAccountsAccessQueue = [self _unitTestAccountsAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__SSAccountStore__removeAccountFromUnitTestStore___block_invoke;
  block[3] = &unk_1E84AC050;
  v8 = storeCopy;
  v6 = storeCopy;
  dispatch_barrier_async(_unitTestAccountsAccessQueue, block);
}

void __50__SSAccountStore__removeAccountFromUnitTestStore___block_invoke(uint64_t a1)
{
  v2 = sUnitTestAccounts;
  if (!sUnitTestAccounts)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = sUnitTestAccounts;
    sUnitTestAccounts = v3;

    v2 = sUnitTestAccounts;
  }

  v6 = [*(a1 + 32) backingAccount];
  v5 = [v6 identifier];
  [v2 removeObjectForKey:v5];
}

+ (id)_backingAccountForAccount:(id)account
{
  backingAccount = [account backingAccount];
  v4 = [backingAccount copy];

  return v4;
}

- (id)_buyParamsForBuyParamsString:(id)string
{
  v22 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [stringCopy componentsSeparatedByString:@"&"];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v17 + 1) + 8 * i) componentsSeparatedByString:@"="];
        if ([v10 count] == 2)
        {
          v11 = [v10 objectAtIndexedSubscript:0];
          v12 = [v10 objectAtIndexedSubscript:1];
          v13 = v12;
          if (v11)
          {
            v14 = v12 == 0;
          }

          else
          {
            v14 = 1;
          }

          if (!v14)
          {
            [v4 setObject:v12 forKeyedSubscript:v11];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v4];

  return v15;
}

+ (id)_copyKVSDatabasePath
{
  v2 = +[SSKeyValueStoreSchema databasePath];
  stringByDeletingPathExtension = [v2 stringByDeletingPathExtension];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-copy", stringByDeletingPathExtension];

  v5 = [v4 stringByAppendingPathExtension:@"sqlitedb"];

  return v5;
}

+ (BOOL)_copyKVSDatabaseWithError:(id *)error
{
  v77 = *MEMORY[0x1E69E9840];
  v5 = +[SSLogConfig sharedAccountsMigrationConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    LODWORD(v7) = shouldLog | 2;
  }

  else
  {
    LODWORD(v7) = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v7 = v7;
  }

  else
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v73 = 138543362;
    v74 = objc_opt_class();
    v9 = v74;
    v10 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_1D48BA000, oSLogObject, 2, "%{public}@: Making a copy of the KVS database for later debugging.", &v73, 12);

    if (!v10)
    {
      goto LABEL_13;
    }

    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
    free(v10);
    SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
  }

LABEL_13:
  v17 = +[SSKeyValueStoreSchema databasePath];
  _copyKVSDatabasePath = [self _copyKVSDatabasePath];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (![defaultManager fileExistsAtPath:_copyKVSDatabasePath])
  {
    goto LABEL_41;
  }

  v20 = +[SSLogConfig sharedAccountsMigrationConfig];
  if (!v20)
  {
    v20 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v20 shouldLog];
  if ([v20 shouldLogToDisk])
  {
    LODWORD(v22) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v22) = shouldLog2;
  }

  oSLogObject2 = [v20 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
  {
    v22 = v22;
  }

  else
  {
    v22 &= 2u;
  }

  if (v22)
  {
    v24 = objc_opt_class();
    v73 = 138543362;
    v74 = v24;
    v25 = v24;
    LODWORD(v69) = 12;
    v26 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 2, "%{public}@: A copy of the KVS already exists. Removing it so we can create a new one.", &v73, v69);

    if (!v26)
    {
      goto LABEL_26;
    }

    oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v26 encoding:4];
    free(v26);
    SSFileLog(v20, @"%@", v27, v28, v29, v30, v31, v32, oSLogObject2);
  }

LABEL_26:
  v72 = 0;
  v33 = [defaultManager removeItemAtPath:_copyKVSDatabasePath error:&v72];
  v34 = v72;
  if ((v33 & 1) == 0)
  {
    v35 = +[SSLogConfig sharedAccountsMigrationConfig];
    if (!v35)
    {
      v35 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v35 shouldLog];
    if ([v35 shouldLogToDisk])
    {
      LODWORD(v37) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v37) = shouldLog3;
    }

    oSLogObject3 = [v35 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v37 = v37;
    }

    else
    {
      v37 &= 2u;
    }

    if (v37)
    {
      v39 = objc_opt_class();
      v73 = 138543618;
      v74 = v39;
      v75 = 2112;
      v76 = v34;
      v40 = v17;
      errorCopy = error;
      v42 = v39;
      LODWORD(v69) = 22;
      v43 = _os_log_send_and_compose_impl(v37, 0, 0, 0, &dword_1D48BA000, oSLogObject3, 16, "%{public}@: Failed to remove the existing KVS database. error = %@", &v73, v69);

      error = errorCopy;
      v17 = v40;

      if (!v43)
      {
LABEL_39:

        goto LABEL_40;
      }

      oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v43 encoding:4];
      free(v43);
      SSFileLog(v35, @"%@", v44, v45, v46, v47, v48, v49, oSLogObject3);
    }

    goto LABEL_39;
  }

LABEL_40:

LABEL_41:
  v71 = 0;
  v50 = [defaultManager copyItemAtPath:v17 toPath:_copyKVSDatabasePath error:&v71];
  v51 = v71;
  if (v50)
  {
    [self _excludeCopyKVSDatabasePathFromBackups];
    if (!error)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  v70 = v17;
  errorCopy2 = error;
  v53 = +[SSLogConfig sharedAccountsMigrationConfig];
  if (!v53)
  {
    v53 = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [v53 shouldLog];
  if ([v53 shouldLogToDisk])
  {
    v55 = shouldLog4 | 2;
  }

  else
  {
    v55 = shouldLog4;
  }

  oSLogObject4 = [v53 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
  {
    v57 = v55;
  }

  else
  {
    v57 = v55 & 2;
  }

  if (v57)
  {
    v58 = objc_opt_class();
    v73 = 138543618;
    v74 = v58;
    v75 = 2112;
    v76 = v51;
    v59 = v58;
    LODWORD(v69) = 22;
    v60 = _os_log_send_and_compose_impl(v57, 0, 0, 0, &dword_1D48BA000, oSLogObject4, 16, "%{public}@: Failed to copy the KVS database. error = %@", &v73, v69);

    error = errorCopy2;
    v17 = v70;
    if (!v60)
    {
      goto LABEL_57;
    }

    oSLogObject4 = [MEMORY[0x1E696AEC0] stringWithCString:v60 encoding:4];
    free(v60);
    SSFileLog(v53, @"%@", v61, v62, v63, v64, v65, v66, oSLogObject4);
  }

  else
  {
    error = errorCopy2;
    v17 = v70;
  }

LABEL_57:
  if (error)
  {
LABEL_58:
    v67 = v51;
    *error = v51;
  }

LABEL_59:

  return v50;
}

+ (void)_disableAccountStoreChangedNotifications
{
  CFPreferencesSetAppValue(@"AccountsChangedNotificationsSuppressionStarted", [MEMORY[0x1E695DF00] date], @"com.apple.itunesstored");

  CFPreferencesAppSynchronize(@"com.apple.itunesstored");
}

+ (void)_enableAccountStoreChangedNotifications
{
  CFPreferencesSetAppValue(@"AccountsChangedNotificationsSuppressionStarted", 0, @"com.apple.itunesstored");

  CFPreferencesAppSynchronize(@"com.apple.itunesstored");
}

+ (void)_excludeCopyKVSDatabasePathFromBackups
{
  v28 = *MEMORY[0x1E69E9840];
  _copyKVSDatabasePath = [self _copyKVSDatabasePath];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [defaultManager fileExistsAtPath:_copyKVSDatabasePath];

  if (v4)
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:_copyKVSDatabasePath];
    v6 = v5;
    if (!v5)
    {
LABEL_18:

      goto LABEL_19;
    }

    v7 = *MEMORY[0x1E695DB80];
    v23 = 0;
    v8 = [v5 setResourceValue:MEMORY[0x1E695E118] forKey:v7 error:&v23];
    v9 = v23;
    if (v8)
    {
LABEL_17:

      goto LABEL_18;
    }

    v10 = +[SSLogConfig sharedAccountsMigrationConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      LODWORD(v12) = shouldLog | 2;
    }

    else
    {
      LODWORD(v12) = shouldLog;
    }

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v12 = v12;
    }

    else
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v14 = objc_opt_class();
      v24 = 138543618;
      v25 = v14;
      v26 = 2112;
      v27 = v9;
      v15 = v14;
      v16 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@: Failed to exclude the KVS database copy from backups. error = %@", &v24, 22);

      if (!v16)
      {
LABEL_16:

        goto LABEL_17;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:4];
      free(v16);
      SSFileLog(v10, @"%@", v17, v18, v19, v20, v21, v22, oSLogObject);
    }

    goto LABEL_16;
  }

LABEL_19:
}

+ (id)_hashedDescriptionFromAccountDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"AltDSID"];
  v5 = SSHashIfNeeded(v4);

  v6 = [dictionaryCopy objectForKeyedSubscript:@"DSPersonID"];
  stringValue = [v6 stringValue];
  v8 = SSHashIfNeeded(stringValue);

  v9 = [dictionaryCopy objectForKeyedSubscript:@"FirstName"];
  v10 = SSHashIfNeeded(v9);

  v11 = [dictionaryCopy objectForKeyedSubscript:@"LastName"];
  v12 = SSHashIfNeeded(v11);

  v13 = [dictionaryCopy objectForKeyedSubscript:@"AccountURLBagType"];
  v14 = [dictionaryCopy objectForKeyedSubscript:@"AccountStoreFront"];
  v15 = SSHashIfNeeded(v14);

  v16 = [dictionaryCopy objectForKeyedSubscript:@"AppleID"];

  v17 = SSHashIfNeeded(v16);

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<altDSID = %@ | DSID = %@ | username = %@ | firstName = %@ | lastName = %@ | storefront = %@ | scope = %@>", v5, v8, v17, v10, v12, v15, v13];

  return v18;
}

+ (void)_postAccountsChangedInternalDarwinNotification
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = +[SSLogConfig sharedAccountsConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = shouldLog | 2;
  }

  else
  {
    LODWORD(v4) = shouldLog;
  }

  oSLogObject = [v2 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  v15 = 138543362;
  v16 = objc_opt_class();
  v6 = v16;
  v7 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_1D48BA000, oSLogObject, 2, "%{public}@: Posting a com.apple.itunesstored.accountschanged.internal notification.", &v15, 12);

  if (v7)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:4];
    free(v7);
    SSFileLog(v2, @"%@", v8, v9, v10, v11, v12, v13, oSLogObject);
LABEL_12:
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.itunesstored.accountschanged.internal", 0, 0, 1u);
}

+ (void)_postAccountsChangedDarwinNotification
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = +[SSLogConfig sharedAccountsConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = shouldLog | 2;
  }

  else
  {
    LODWORD(v4) = shouldLog;
  }

  oSLogObject = [v2 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  v15 = 138543362;
  v16 = objc_opt_class();
  v6 = v16;
  v7 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_1D48BA000, oSLogObject, 2, "%{public}@: Posting a com.apple.itunesstored.accountschanged notification.", &v15, 12);

  if (v7)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:4];
    free(v7);
    SSFileLog(v2, @"%@", v8, v9, v10, v11, v12, v13, oSLogObject);
LABEL_12:
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.itunesstored.accountschanged", 0, 0, 1u);
}

- (void)_postAccountStoreChangeNotification
{
  v21 = *MEMORY[0x1E69E9840];
  notificationQueue = [(SSAccountStore *)self notificationQueue];

  if (!notificationQueue)
  {
    notificationQueue2 = +[SSLogConfig sharedAccountsConfig];
    if (!notificationQueue2)
    {
      notificationQueue2 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [notificationQueue2 shouldLog];
    if ([notificationQueue2 shouldLogToDisk])
    {
      LODWORD(v6) = shouldLog | 2;
    }

    else
    {
      LODWORD(v6) = shouldLog;
    }

    oSLogObject = [notificationQueue2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v6 = v6;
    }

    else
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v17 = 138543618;
      v18 = objc_opt_class();
      v19 = 2114;
      v20 = @"SSAccountStoreChangedNotification";
      v8 = v18;
      v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@: Attempting to post a %{public}@, but our notificationQueue is NULL. Something went wrong.", &v17, 22);

      if (!v9)
      {
        goto LABEL_15;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
      free(v9);
      SSFileLog(notificationQueue2, @"%@", v10, v11, v12, v13, v14, v15, oSLogObject);
    }

    goto LABEL_15;
  }

  notificationQueue2 = [(SSAccountStore *)self notificationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__SSAccountStore__postAccountStoreChangeNotification__block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_async(notificationQueue2, block);
LABEL_15:
}

void __53__SSAccountStore__postAccountStoreChangeNotification__block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = CFPreferencesGetAppBooleanValue(@"ActiveAccountIsManagedAppleID", @"com.apple.itunesstored", 0) != 0;
  v3 = [*(a1 + 32) activeAccount];
  v4 = [v3 isManagedAppleID];

  if (v2 != v4)
  {
    [objc_opt_class() _setActiveAccountIsManagedAppleIDPreference:v4];
    v5 = +[SSLogConfig sharedAccountsConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      LODWORD(v7) = v6 | 2;
    }

    else
    {
      LODWORD(v7) = v6;
    }

    v8 = [v5 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v7 = v7;
    }

    else
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v32 = 138543362;
      v33 = objc_opt_class();
      v9 = v33;
      v10 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_1D48BA000, v8, 1, "%{public}@: The value of SSActiveAccountIsManagedAppleID changed.", &v32, 12);

      if (!v10)
      {
LABEL_14:

        goto LABEL_15;
      }

      v8 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
      free(v10);
      SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, v8);
    }

    goto LABEL_14;
  }

LABEL_15:
  v17 = +[SSLogConfig sharedAccountsConfig];
  if (!v17)
  {
    v17 = +[SSLogConfig sharedConfig];
  }

  v18 = [v17 shouldLog];
  if ([v17 shouldLogToDisk])
  {
    LODWORD(v19) = v18 | 2;
  }

  else
  {
    LODWORD(v19) = v18;
  }

  v20 = [v17 OSLogObject];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v19 = v19;
  }

  else
  {
    v19 &= 2u;
  }

  if (!v19)
  {
    goto LABEL_26;
  }

  v21 = objc_opt_class();
  v32 = 138543618;
  v33 = v21;
  v34 = 2114;
  v35 = @"SSAccountStoreChangedNotification";
  v22 = v21;
  LODWORD(v31) = 22;
  v23 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_1D48BA000, v20, 2, "%{public}@: Posting a %{public}@ notification.", &v32, v31);

  if (v23)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:4];
    free(v23);
    SSFileLog(v17, @"%@", v24, v25, v26, v27, v28, v29, v20);
LABEL_26:
  }

  v30 = [MEMORY[0x1E696AD88] defaultCenter];
  [v30 postNotificationName:@"_SSAccountStoreDidChangeNotification" object:*(a1 + 32)];
  [v30 postNotificationName:@"SSAccountStoreChangedNotification" object:*(a1 + 32)];
}

- (void)_postActiveAccountChangedNotification
{
  v21 = *MEMORY[0x1E69E9840];
  notificationQueue = [(SSAccountStore *)self notificationQueue];

  if (!notificationQueue)
  {
    notificationQueue2 = +[SSLogConfig sharedAccountsConfig];
    if (!notificationQueue2)
    {
      notificationQueue2 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [notificationQueue2 shouldLog];
    if ([notificationQueue2 shouldLogToDisk])
    {
      LODWORD(v6) = shouldLog | 2;
    }

    else
    {
      LODWORD(v6) = shouldLog;
    }

    oSLogObject = [notificationQueue2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v6 = v6;
    }

    else
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v17 = 138543618;
      v18 = objc_opt_class();
      v19 = 2114;
      v20 = @"SSAccountStoreActiveAccountChangedNotification";
      v8 = v18;
      v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@: Attempted to post a %{public}@, but our notificationQueue is NULL. Something went wrong.", &v17, 22);

      if (!v9)
      {
        goto LABEL_15;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
      free(v9);
      SSFileLog(notificationQueue2, @"%@", v10, v11, v12, v13, v14, v15, oSLogObject);
    }

    goto LABEL_15;
  }

  notificationQueue2 = [(SSAccountStore *)self notificationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__SSAccountStore__postActiveAccountChangedNotification__block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_async(notificationQueue2, block);
LABEL_15:
}

void __55__SSAccountStore__postActiveAccountChangedNotification__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = +[SSLogConfig sharedAccountsConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  v15 = 138543618;
  v16 = objc_opt_class();
  v17 = 2114;
  v18 = @"SSAccountStoreActiveAccountChangedNotification";
  v6 = v16;
  v7 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_1D48BA000, v5, 2, "%{public}@: Posting a %{public}@ notification.", &v15, 22);

  if (v7)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:4];
    free(v7);
    SSFileLog(v2, @"%@", v8, v9, v10, v11, v12, v13, v5);
LABEL_12:
  }

  v14 = [MEMORY[0x1E696AD88] defaultCenter];
  [v14 postNotificationName:@"SSAccountStoreActiveAccountChangedNotification" object:*(a1 + 32)];
}

- (void)_postAuthenticationActivityNotification
{
  v21 = *MEMORY[0x1E69E9840];
  notificationQueue = [(SSAccountStore *)self notificationQueue];

  if (!notificationQueue)
  {
    notificationQueue2 = +[SSLogConfig sharedAccountsConfig];
    if (!notificationQueue2)
    {
      notificationQueue2 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [notificationQueue2 shouldLog];
    if ([notificationQueue2 shouldLogToDisk])
    {
      LODWORD(v6) = shouldLog | 2;
    }

    else
    {
      LODWORD(v6) = shouldLog;
    }

    oSLogObject = [notificationQueue2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v6 = v6;
    }

    else
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v17 = 138543618;
      v18 = objc_opt_class();
      v19 = 2114;
      v20 = @"SSAccountStoreChangedNotification";
      v8 = v18;
      v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@: Attempted to post a %{public}@, but our notificationQueue is NULL. Something went wrong.", &v17, 22);

      if (!v9)
      {
        goto LABEL_15;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
      free(v9);
      SSFileLog(notificationQueue2, @"%@", v10, v11, v12, v13, v14, v15, oSLogObject);
    }

    goto LABEL_15;
  }

  notificationQueue2 = [(SSAccountStore *)self notificationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__SSAccountStore__postAuthenticationActivityNotification__block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_async(notificationQueue2, block);
LABEL_15:
}

void __57__SSAccountStore__postAuthenticationActivityNotification__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = +[SSLogConfig sharedAccountsConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  v15 = 138543618;
  v16 = objc_opt_class();
  v17 = 2114;
  v18 = @"SSAccountStoreAuthenticationActivityNotification";
  v6 = v16;
  v7 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_1D48BA000, v5, 2, "%{public}@: Posting a %{public}@ notification.", &v15, 22);

  if (v7)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:4];
    free(v7);
    SSFileLog(v2, @"%@", v8, v9, v10, v11, v12, v13, v5);
LABEL_12:
  }

  v14 = [MEMORY[0x1E696AD88] defaultCenter];
  [v14 postNotificationName:@"SSAccountStoreAuthenticationActivityNotification" object:*(a1 + 32)];
}

- (void)_recordAnalyticsForMetricsDialogEvent:(id)event withTopic:(id)topic
{
  v27 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  topicCopy = topic;
  metricsQueue = [(SSAccountStore *)self metricsQueue];

  if (!metricsQueue)
  {
    v10 = +[SSLogConfig sharedAccountsConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      LODWORD(v12) = shouldLog | 2;
    }

    else
    {
      LODWORD(v12) = shouldLog;
    }

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v12 = v12;
    }

    else
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v25 = 138543362;
      v26 = objc_opt_class();
      v14 = v26;
      v15 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@: Attempted to post metrics event, but our metricsQueue is NULL. Something went wrong", &v25, 12);

      if (!v15)
      {
        goto LABEL_15;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:4];
      free(v15);
      SSFileLog(v10, @"%@", v16, v17, v18, v19, v20, v21, oSLogObject);
    }

    goto LABEL_15;
  }

  metricsQueue2 = [(SSAccountStore *)self metricsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__SSAccountStore__recordAnalyticsForMetricsDialogEvent_withTopic___block_invoke;
  block[3] = &unk_1E84AC028;
  v23 = eventCopy;
  v24 = topicCopy;
  dispatch_async(metricsQueue2, block);

  v10 = v23;
LABEL_15:
}

void __66__SSAccountStore__recordAnalyticsForMetricsDialogEvent_withTopic___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SSMetricsController);
  [(SSMetricsController *)v2 recordAnalyticsForMetricsDialogEvent:*(a1 + 32) withTopic:*(a1 + 40)];
}

+ (id)_refreshAccount:(id)account
{
  accountCopy = account;
  v4 = [objc_opt_class() _backingAccountForAccount:accountCopy];

  [v4 refresh];
  v5 = [[SSAccount alloc] initWithBackingAccount:v4];

  return v5;
}

- (id)_saveAccountInUnitTestMode:(id)mode ignoreValidationErrors:(BOOL)errors
{
  modeCopy = mode;
  v7 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/Accounts/Notification/iTunesAccountsNotificationPlugin.bundle"];
  v8 = objc_alloc_init([v7 principalClass]);
  if (v8)
  {
    v9 = NSSelectorFromString(&cfstr_Cansaveaccount.isa);
    v10 = [objc_opt_class() instanceMethodSignatureForSelector:v9];
    v11 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v10];
    [v11 setTarget:v8];
    [v11 setSelector:v9];
    backingAccount = [modeCopy backingAccount];
    [v11 setArgument:&backingAccount atIndex:2];
    accounts = [(SSAccountStore *)self accounts];
    v18 = [accounts _ss_map:&__block_literal_global_310];

    [v11 setArgument:&v18 atIndex:3];
    [v11 invoke];
    v17 = 0;
    [v11 getReturnValue:&v17];
    if (errors || (v17 & 1) != 0)
    {
      [objc_opt_class() _addAccountToUnitTestStore:modeCopy];
      __AccountsChangedInternal();
      if (([objc_opt_class() areAccountStoreChangedNotificationsDisabled] & 1) == 0)
      {
        __AccountsChanged();
      }

      v13 = [SSPromise promiseWithResult:MEMORY[0x1E695E118]];
    }

    else
    {
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6959978] code:5 userInfo:0];
      v13 = [SSPromise promiseWithError:v15];
    }
  }

  else
  {
    v14 = SSError(@"SSErrorDomain", 100, 0, @"We failed to load the notification plugin.");
    v13 = [SSPromise promiseWithError:v14];
  }

  return v13;
}

- (id)_saveAccount:(id)account verifyCredentials:(BOOL)credentials
{
  credentialsCopy = credentials;
  v103 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v7 = SSGenerateLogCorrelationString();
  if (accountCopy)
  {
    if ([accountCopy isDirty])
    {
      v89 = [objc_opt_class() _backingAccountForAccount:accountCopy];
      if (!v89)
      {
        v38 = +[SSLogConfig sharedAccountsConfig];
        if (!v38)
        {
          v38 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [v38 shouldLog];
        if ([v38 shouldLogToDisk])
        {
          shouldLog |= 2u;
        }

        oSLogObject = [v38 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          v41 = shouldLog;
        }

        else
        {
          v41 = shouldLog & 2;
        }

        if (v41)
        {
          v42 = objc_opt_class();
          v43 = v42;
          hashedDescription = [accountCopy hashedDescription];
          *location = 138543874;
          *&location[4] = v42;
          v97 = 2114;
          v98 = v7;
          v99 = 2114;
          v100 = hashedDescription;
          v45 = _os_log_send_and_compose_impl(v41, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@: [%{public}@] Refusing to save %{public}@. It's backing account is nil.", location, 32);

          if (v45)
          {
            v46 = [MEMORY[0x1E696AEC0] stringWithCString:v45 encoding:4];
            free(v45);
            SSFileLog(v38, @"%@", v47, v48, v49, v50, v51, v52, v46);
          }
        }

        else
        {
        }

        v70 = SSError(@"SSErrorDomain", 100, 0, @"The backing account is nil.");
        v8 = [SSPromise promiseWithError:v70];

        goto LABEL_69;
      }

      if ([objc_opt_class() unitTestModeEnabled])
      {
        v8 = [(SSAccountStore *)self _saveAccountInUnitTestMode:accountCopy ignoreValidationErrors:0];
LABEL_69:

        goto LABEL_70;
      }

      v53 = +[SSLogConfig sharedAccountsConfig];
      if (!v53)
      {
        v53 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v53 shouldLog];
      if ([v53 shouldLogToDisk])
      {
        shouldLog2 |= 2u;
      }

      oSLogObject2 = [v53 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v56 = shouldLog2;
      }

      else
      {
        v56 = shouldLog2 & 2;
      }

      if (v56)
      {
        v57 = objc_opt_class();
        v58 = v57;
        hashedDescription2 = [accountCopy hashedDescription];
        v60 = hashedDescription2;
        v61 = @"NO";
        *location = 138544130;
        *&location[4] = v57;
        v97 = 2114;
        if (credentialsCopy)
        {
          v61 = @"YES";
        }

        v98 = v7;
        v99 = 2114;
        v100 = hashedDescription2;
        v101 = 2114;
        v102 = v61;
        v62 = _os_log_send_and_compose_impl(v56, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 0, "%{public}@: [%{public}@] Attempting to save %{public}@. verifyCredentials = %{public}@", location, 42);

        if (v62)
        {
          v63 = [MEMORY[0x1E696AEC0] stringWithCString:v62 encoding:4];
          free(v62);
          SSFileLog(v53, @"%@", v64, v65, v66, v67, v68, v69, v63);
        }
      }

      else
      {
      }

      v71 = +[SSLogConfig sharedAccountsConfig];
      if (!v71)
      {
        v71 = +[SSLogConfig sharedConfig];
      }

      shouldLog3 = [v71 shouldLog];
      if ([v71 shouldLogToDisk])
      {
        shouldLog3 |= 2u;
      }

      oSLogObject3 = [v71 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
      {
        v74 = shouldLog3;
      }

      else
      {
        v74 = shouldLog3 & 2;
      }

      if (v74)
      {
        v75 = objc_opt_class();
        *location = 138543618;
        *&location[4] = v75;
        v97 = 2114;
        v98 = v7;
        v76 = v75;
        LODWORD(v88) = 22;
        v77 = _os_log_send_and_compose_impl(v74, 0, 0, 0, &dword_1D48BA000, oSLogObject3, 1, "%{public}@: [%{public}@] Clearing the in-process cache in preparation of saving the account.", location, v88);

        if (!v77)
        {
LABEL_68:

          [(SSAccountStore *)self clearCachedAccounts];
          v8 = objc_alloc_init(SSPromise);
          objc_initWeak(location, self);
          v93[0] = MEMORY[0x1E69E9820];
          v93[1] = 3221225472;
          v93[2] = __49__SSAccountStore__saveAccount_verifyCredentials___block_invoke;
          v93[3] = &unk_1E84AEB20;
          objc_copyWeak(&v95, location);
          v84 = v7;
          v94 = v84;
          [(SSPromise *)v8 addSuccessBlock:v93];
          v90[0] = MEMORY[0x1E69E9820];
          v90[1] = 3221225472;
          v90[2] = __49__SSAccountStore__saveAccount_verifyCredentials___block_invoke_324;
          v90[3] = &unk_1E84AEB48;
          objc_copyWeak(&v92, location);
          v91 = v84;
          [(SSPromise *)v8 addErrorBlock:v90];
          backingAccountStore = [(SSAccountStore *)self backingAccountStore];
          bOOLCompletionHandlerAdapter = [(SSPromise *)v8 BOOLCompletionHandlerAdapter];
          [backingAccountStore saveAccount:v89 withDataclassActions:0 doVerify:credentialsCopy completion:bOOLCompletionHandlerAdapter];

          objc_destroyWeak(&v92);
          objc_destroyWeak(&v95);
          objc_destroyWeak(location);
          goto LABEL_69;
        }

        oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v77 encoding:4];
        free(v77);
        SSFileLog(v71, @"%@", v78, v79, v80, v81, v82, v83, oSLogObject3);
      }

      goto LABEL_68;
    }

    v22 = +[SSLogConfig sharedAccountsConfig];
    if (!v22)
    {
      v22 = +[SSLogConfig sharedConfig];
    }

    shouldLog4 = [v22 shouldLog];
    if ([v22 shouldLogToDisk])
    {
      LODWORD(v24) = shouldLog4 | 2;
    }

    else
    {
      LODWORD(v24) = shouldLog4;
    }

    oSLogObject4 = [v22 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_INFO))
    {
      v24 = v24;
    }

    else
    {
      v24 &= 2u;
    }

    if (v24)
    {
      v26 = objc_opt_class();
      v27 = v26;
      hashedDescription3 = [accountCopy hashedDescription];
      *location = 138543874;
      *&location[4] = v26;
      v97 = 2114;
      v98 = v7;
      v99 = 2114;
      v100 = hashedDescription3;
      v29 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_1D48BA000, oSLogObject4, 1, "%{public}@: [%{public}@] Refusing to save %{public}@. None of its properties have changed.", location, 32);

      if (v29)
      {
        v30 = [MEMORY[0x1E696AEC0] stringWithCString:v29 encoding:4];
        free(v29);
        SSFileLog(v22, @"%@", v31, v32, v33, v34, v35, v36, v30);
      }
    }

    else
    {
    }

    v8 = [SSPromise promiseWithResult:MEMORY[0x1E695E118]];
  }

  else
  {
    v9 = +[SSLogConfig sharedAccountsConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog5 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      LODWORD(v11) = shouldLog5 | 2;
    }

    else
    {
      LODWORD(v11) = shouldLog5;
    }

    oSLogObject5 = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      *location = 138543618;
      *&location[4] = objc_opt_class();
      v97 = 2114;
      v98 = v7;
      v13 = *&location[4];
      v14 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_1D48BA000, oSLogObject5, 16, "%{public}@: [%{public}@] Someone is attempting to save a nil acount.", location, 22);

      if (v14)
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:4];
        free(v14);
        SSFileLog(v9, @"%@", v16, v17, v18, v19, v20, v21, v15);
      }
    }

    else
    {
    }

    v37 = SSError(@"SSErrorDomain", 137, 0, @"The account must be non-nil.");
    v8 = [SSPromise promiseWithError:v37];
  }

LABEL_70:

  return v8;
}

void __49__SSAccountStore__saveAccount_verifyCredentials___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[SSLogConfig sharedAccountsConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = v4 | 2;
  }

  else
  {
    LODWORD(v5) = v4;
  }

  v6 = [v3 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = objc_opt_class();
  v8 = *(a1 + 32);
  v17 = 138543618;
  v18 = v7;
  v19 = 2114;
  v20 = v8;
  v9 = v7;
  v10 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, v6, 1, "%{public}@: [%{public}@] Successfully saved the account.", &v17, 22);

  if (v10)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
    free(v10);
    SSFileLog(v3, @"%@", v11, v12, v13, v14, v15, v16, v6);
LABEL_12:
  }
}

void __49__SSAccountStore__saveAccount_verifyCredentials___block_invoke_324(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = +[SSLogConfig sharedAccountsConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    LODWORD(v7) = v6 | 2;
  }

  else
  {
    LODWORD(v7) = v6;
  }

  v8 = [v5 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v7 = v7;
  }

  else
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  v9 = objc_opt_class();
  v10 = *(a1 + 32);
  v19 = 138543874;
  v20 = v9;
  v21 = 2114;
  v22 = v10;
  v23 = 2112;
  v24 = v3;
  v11 = v9;
  v12 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_1D48BA000, v8, 16, "%{public}@: [%{public}@] Failed to save the account. error = %@", &v19, 32);

  if (v12)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:4];
    free(v12);
    SSFileLog(v5, @"%@", v13, v14, v15, v16, v17, v18, v8);
LABEL_12:
  }
}

+ (void)_setActiveAccountIsManagedAppleIDPreference:(BOOL)preference
{
  v3 = MEMORY[0x1E695E4D0];
  if (!preference)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  CFPreferencesSetAppValue(@"ActiveAccountIsManagedAppleID", *v3, @"com.apple.itunesstored");

  CFPreferencesAppSynchronize(@"com.apple.itunesstored");
}

- (void)_setCachedAccounts:(id)accounts
{
  accountsCopy = accounts;
  objc_initWeak(&location, self);
  accountsCacheAccessQueue = [(SSAccountStore *)self accountsCacheAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SSAccountStore__setCachedAccounts___block_invoke;
  block[3] = &unk_1E84AD870;
  objc_copyWeak(&v9, &location);
  v8 = accountsCopy;
  v6 = accountsCopy;
  dispatch_barrier_async(accountsCacheAccessQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __37__SSAccountStore__setCachedAccounts___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) copy];
  [WeakRetained setAccountsCache:v2];
}

+ (BOOL)_accountDictionaryRepresentsActiveAccount:(id)account inKeyValueStore:(id)store
{
  accountCopy = account;
  v6 = [store iTunesValueForKey:@"DSPersonID" usedDomain:0];
  v7 = [accountCopy objectForKeyedSubscript:@"DSPersonID"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = [v6 isEqualToNumber:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)_accountDictionaryRepresentsActiveLockerAccount:(id)account inKeyValueStore:(id)store
{
  accountCopy = account;
  v6 = [store iTunesValueForKey:@"ActiveLockerAccountID" usedDomain:0];
  v7 = [accountCopy objectForKeyedSubscript:@"DSPersonID"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = [v6 isEqualToNumber:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)_cleanupActiveAccountsAfterMigrationWithActiveDSID:(id)d activeLockerDSID:(id)iD
{
  v82 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  if (dCopy | iDCopy)
  {
    +[SSAccountStore defaultStore];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v67 = v74 = 0u;
    obj = [v67 accounts];
    v69 = [obj countByEnumeratingWithState:&v71 objects:v81 count:16];
    if (!v69)
    {
      goto LABEL_55;
    }

    v68 = *v72;
    v64 = dCopy;
    v65 = iDCopy;
    while (1)
    {
      for (i = 0; i != v69; ++i)
      {
        if (*v72 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v71 + 1) + 8 * i);
        if (dCopy)
        {
          if ([*(*(&v71 + 1) + 8 * i) isActive])
          {
            uniqueIdentifier = [v8 uniqueIdentifier];
            v10 = [uniqueIdentifier isEqualToNumber:dCopy];

            if ((v10 & 1) == 0)
            {
              v30 = +[SSLogConfig sharedAccountsMigrationConfig];
              if (!v30)
              {
                v30 = +[SSLogConfig sharedConfig];
              }

              shouldLog = [v30 shouldLog];
              if ([v30 shouldLogToDisk])
              {
                v32 = shouldLog | 2;
              }

              else
              {
                v32 = shouldLog;
              }

              oSLogObject = [v30 OSLogObject];
              if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
              {
                v34 = v32;
              }

              else
              {
                v34 = v32 & 2;
              }

              if (v34)
              {
                v35 = objc_opt_class();
                v36 = v35;
                hashedDescription = [v8 hashedDescription];
                stringValue = [dCopy stringValue];
                v39 = SSHashIfNeeded(stringValue);
                v75 = 138543874;
                v76 = v35;
                iDCopy = v65;
                v77 = 2114;
                v78 = hashedDescription;
                v79 = 2114;
                v80 = v39;
                LODWORD(v63) = 32;
                v40 = _os_log_send_and_compose_impl(v34, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@: An account is set to active when it shouldn't be. Deactivating it. account = %{public}@ | activeDSID = %{public}@", &v75, v63);

                if (v40)
                {
                  oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v40 encoding:4];
                  free(v40);
                  SSFileLog(v30, @"%@", v41, v42, v43, v44, v45, v46, oSLogObject);
                  goto LABEL_36;
                }
              }

              else
              {
LABEL_36:
              }

              [v8 setActive:0];
              v11 = 1;
              dCopy = v64;
              if (!iDCopy)
              {
                goto LABEL_38;
              }

              goto LABEL_11;
            }
          }
        }

        v11 = 0;
        if (!iDCopy)
        {
          goto LABEL_38;
        }

LABEL_11:
        if ([v8 isActiveLockerAccount])
        {
          uniqueIdentifier2 = [v8 uniqueIdentifier];
          v13 = [uniqueIdentifier2 isEqualToNumber:iDCopy];

          if ((v13 & 1) == 0)
          {
            v14 = +[SSLogConfig sharedAccountsMigrationConfig];
            if (!v14)
            {
              v14 = +[SSLogConfig sharedConfig];
            }

            shouldLog2 = [v14 shouldLog];
            if ([v14 shouldLogToDisk])
            {
              shouldLog2 |= 2u;
            }

            oSLogObject2 = [v14 OSLogObject];
            if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
            {
              v17 = shouldLog2;
            }

            else
            {
              v17 = shouldLog2 & 2;
            }

            if (v17)
            {
              v18 = objc_opt_class();
              v19 = v18;
              hashedDescription2 = [v8 hashedDescription];
              stringValue2 = [iDCopy stringValue];
              v22 = SSHashIfNeeded(stringValue2);
              v75 = 138543874;
              v76 = v18;
              v77 = 2114;
              v78 = hashedDescription2;
              v79 = 2114;
              v80 = v22;
              LODWORD(v63) = 32;
              v23 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 16, "%{public}@: An account is set as the active locker account when it shouldn't be. Deactivating it. account = %{public}@ | activeLockerDSID = %{public}@", &v75, v63);

              dCopy = v64;
              if (v23)
              {
                oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:4];
                free(v23);
                SSFileLog(v14, @"%@", v24, v25, v26, v27, v28, v29, oSLogObject2);
                goto LABEL_23;
              }
            }

            else
            {
LABEL_23:
            }

            [v8 setActiveLockerAccount:0];
            iDCopy = v65;
            goto LABEL_39;
          }
        }

LABEL_38:
        if (!v11)
        {
          continue;
        }

LABEL_39:
        v70 = 0;
        v47 = [v67 saveAccount:v8 verifyCredentials:0 error:&v70];
        v48 = v70;
        if ((v47 & 1) == 0)
        {
          v49 = +[SSLogConfig sharedAccountsMigrationConfig];
          if (!v49)
          {
            v49 = +[SSLogConfig sharedConfig];
          }

          shouldLog3 = [v49 shouldLog];
          if ([v49 shouldLogToDisk])
          {
            shouldLog3 |= 2u;
          }

          oSLogObject3 = [v49 OSLogObject];
          if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
          {
            v52 = shouldLog3;
          }

          else
          {
            v52 = shouldLog3 & 2;
          }

          if (v52)
          {
            v53 = objc_opt_class();
            v54 = v53;
            hashedDescription3 = [v8 hashedDescription];
            v75 = 138543874;
            v76 = v53;
            v77 = 2114;
            v78 = hashedDescription3;
            v79 = 2112;
            v80 = v48;
            LODWORD(v63) = 32;
            v56 = _os_log_send_and_compose_impl(v52, 0, 0, 0, &dword_1D48BA000, oSLogObject3, 16, "%{public}@: Failed to save %{public}@ after modifying its active or activeLocker property. error = %@", &v75, v63);

            iDCopy = v65;
            if (v56)
            {
              oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v56 encoding:4];
              free(v56);
              SSFileLog(v49, @"%@", v57, v58, v59, v60, v61, v62, oSLogObject3);
              goto LABEL_50;
            }
          }

          else
          {
LABEL_50:
          }
        }
      }

      v69 = [obj countByEnumeratingWithState:&v71 objects:v81 count:16];
      if (!v69)
      {
LABEL_55:

        break;
      }
    }
  }
}

+ (id)_migrateAccountDictionary:(id)dictionary fromKeyValueStore:(id)store originalActiveDSID:(id)d originalActiveLockerDSID:(id)iD logKey:(id)key error:(id *)error
{
  v221 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  storeCopy = store;
  dCopy = d;
  iDCopy = iD;
  keyCopy = key;
  v14 = +[SSAccountStore defaultStore];
  selfCopy = self;
  [self _disableAccountStoreChangedNotifications];
  v15 = 0;
  v206 = 1;
  v203 = *MEMORY[0x1E6959978];
  v16 = 1;
  v210 = v14;
  while (1)
  {
    v209 = v15;
    v17 = +[SSLogConfig sharedAccountsMigrationConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      LODWORD(v19) = shouldLog | 2;
    }

    else
    {
      LODWORD(v19) = shouldLog;
    }

    oSLogObject = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v19;
    }

    else
    {
      v19 &= 2u;
    }

    if (!v19)
    {
      goto LABEL_13;
    }

    v21 = objc_opt_class();
    v215 = 138543874;
    v216 = v21;
    v217 = 2114;
    v218 = keyCopy;
    v219 = 2048;
    v220 = v16;
    v22 = v21;
    LODWORD(v200) = 32;
    v23 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_1D48BA000, oSLogObject, 0, "%{public}@: [%{public}@] Attempting to find an existing account. attempt = %ld", &v215, v200);

    if (v23)
    {
      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:4];
      free(v23);
      SSFileLog(v17, @"%@", v24, v25, v26, v27, v28, v29, oSLogObject);
LABEL_13:
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"AltDSID"];
    v31 = [dictionaryCopy objectForKeyedSubscript:@"DSPersonID"];
    v211 = [dictionaryCopy objectForKeyedSubscript:@"AppleID"];
    v32 = [dictionaryCopy objectForKeyedSubscript:@"AccountURLBagType"];
    v33 = SSAccountScopeForString(v32);

    v208 = v30;
    v34 = [v14 accountWithAltDSID:v30 scope:v33];
    v207 = v31;
    if (!v34)
    {
      v34 = [v14 accountWithUniqueIdentifier:v31 scope:v33];
      if (!v34)
      {
        v35 = [v14 accountWithAccountName:v211 scope:v33];
        altDSID = [(SSAccount *)v35 altDSID];
        if ([altDSID isEqualToString:&stru_1F503F418])
        {
        }

        else
        {
          uniqueIdentifier = [(SSAccount *)v35 uniqueIdentifier];
          v111 = [uniqueIdentifier isEqualToNumber:&unk_1F507A150];

          if (!v111)
          {
            altDSID2 = [(SSAccount *)v35 altDSID];
            if (altDSID2)
            {

LABEL_193:
              v188 = +[SSLogConfig sharedAccountsMigrationConfig];
              if (!v188)
              {
                v188 = +[SSLogConfig sharedConfig];
              }

              LODWORD(v189) = [v188 shouldLog];
              if ([v188 shouldLogToDisk])
              {
                LODWORD(v189) = v189 | 2;
              }

              oSLogObject2 = [v188 OSLogObject];
              if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
              {
                v189 = v189;
              }

              else
              {
                v189 &= 2u;
              }

              if (v189)
              {
                v191 = objc_opt_class();
                v215 = 138543618;
                v216 = v191;
                v217 = 2114;
                v218 = keyCopy;
                v192 = v191;
                LODWORD(v200) = 22;
                v193 = _os_log_send_and_compose_impl(v189, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 16, "%{public}@: [%{public}@] Refusing to migrate an account because there's already an account with the same username but different altDSID or DSID.", &v215, v200);

                v177 = storeCopy;
                if (v193)
                {
                  oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v193 encoding:4];
                  free(v193);
                  SSFileLog(v188, @"%@", v194, v195, v196, v197, v198, v199, oSLogObject2);
                  goto LABEL_204;
                }
              }

              else
              {
                v177 = storeCopy;
LABEL_204:
              }

              v186 = 0;
              v15 = v209;
              goto LABEL_189;
            }

            uniqueIdentifier2 = [(SSAccount *)v35 uniqueIdentifier];

            if (uniqueIdentifier2)
            {
              goto LABEL_193;
            }

LABEL_122:
            if (v35)
            {
              goto LABEL_17;
            }

            v126 = +[SSLogConfig sharedAccountsMigrationConfig];
            if (!v126)
            {
              v126 = +[SSLogConfig sharedConfig];
            }

            LODWORD(v127) = [v126 shouldLog];
            if ([v126 shouldLogToDisk])
            {
              LODWORD(v127) = v127 | 2;
            }

            oSLogObject3 = [v126 OSLogObject];
            if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
            {
              v127 = v127;
            }

            else
            {
              v127 &= 2u;
            }

            if (v127)
            {
              v129 = objc_opt_class();
              v215 = 138543618;
              v216 = v129;
              v217 = 2114;
              v218 = keyCopy;
              v130 = v129;
              LODWORD(v200) = 22;
              v131 = _os_log_send_and_compose_impl(v127, 0, 0, 0, &dword_1D48BA000, oSLogObject3, 0, "%{public}@: [%{public}@] There's no preexisting account. We'll create a new one.", &v215, v200);

              if (!v131)
              {
                goto LABEL_134;
              }

              oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v131 encoding:4];
              free(v131);
              SSFileLog(v126, @"%@", v132, v133, v134, v135, v136, v137, oSLogObject3);
            }

LABEL_134:
            v35 = objc_alloc_init(SSAccount);
            v36 = [SSAccount secureTokenForIdentifier:v211];
            v138 = [v36 length];
            v139 = +[SSLogConfig sharedAccountsMigrationConfig];
            oSLogObject7 = v139;
            if (!v138)
            {
              if (!v139)
              {
                oSLogObject7 = +[SSLogConfig sharedConfig];
              }

              LODWORD(v151) = [oSLogObject7 shouldLog];
              if ([oSLogObject7 shouldLogToDisk])
              {
                LODWORD(v151) = v151 | 2;
              }

              oSLogObject4 = [oSLogObject7 OSLogObject];
              if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
              {
                v151 = v151;
              }

              else
              {
                v151 &= 2u;
              }

              if (v151)
              {
                v153 = objc_opt_class();
                v215 = 138543618;
                v216 = v153;
                v217 = 2114;
                v218 = keyCopy;
                v154 = v153;
                LODWORD(v200) = 22;
                v155 = _os_log_send_and_compose_impl(v151, 0, 0, 0, &dword_1D48BA000, oSLogObject4, 0, "%{public}@: [%{public}@] There's no pre-existing iTunes token. The new account will be unauthenticated.", &v215, v200);

                if (!v155)
                {
                  goto LABEL_28;
                }

                oSLogObject4 = [MEMORY[0x1E696AEC0] stringWithCString:v155 encoding:4];
                free(v155);
                SSFileLog(oSLogObject7, @"%@", v156, v157, v158, v159, v160, v161, oSLogObject4);
              }

              goto LABEL_28;
            }

            if (!v139)
            {
              oSLogObject7 = +[SSLogConfig sharedConfig];
            }

            LODWORD(v140) = [oSLogObject7 shouldLog];
            if ([oSLogObject7 shouldLogToDisk])
            {
              LODWORD(v140) = v140 | 2;
            }

            oSLogObject5 = [oSLogObject7 OSLogObject];
            if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
            {
              v140 = v140;
            }

            else
            {
              v140 &= 2u;
            }

            if (v140)
            {
              v142 = objc_opt_class();
              v215 = 138543618;
              v216 = v142;
              v217 = 2114;
              v218 = keyCopy;
              v143 = v142;
              LODWORD(v200) = 22;
              v144 = _os_log_send_and_compose_impl(v140, 0, 0, 0, &dword_1D48BA000, oSLogObject5, 0, "%{public}@: [%{public}@] Found a pre-existing iTunes token. Setting the new account as authenticated.", &v215, v200);

              if (!v144)
              {
LABEL_146:

                [(SSAccount *)v35 setAuthenticated:1];
                [(SSAccount *)v35 setSecureToken:v36];
                goto LABEL_30;
              }

              oSLogObject5 = [MEMORY[0x1E696AEC0] stringWithCString:v144 encoding:4];
              free(v144);
              SSFileLog(oSLogObject7, @"%@", v145, v146, v147, v148, v149, v150, oSLogObject5);
            }

            goto LABEL_146;
          }
        }

        v112 = +[SSLogConfig sharedAccountsMigrationConfig];
        if (!v112)
        {
          v112 = +[SSLogConfig sharedConfig];
        }

        LODWORD(v113) = [v112 shouldLog];
        if ([v112 shouldLogToDisk])
        {
          LODWORD(v113) = v113 | 2;
        }

        oSLogObject6 = [v112 OSLogObject];
        if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_INFO))
        {
          v113 = v113;
        }

        else
        {
          v113 &= 2u;
        }

        if (v113)
        {
          v115 = objc_opt_class();
          v215 = 138543618;
          v216 = v115;
          v217 = 2114;
          v218 = keyCopy;
          v116 = v115;
          LODWORD(v200) = 22;
          v117 = _os_log_send_and_compose_impl(v113, 0, 0, 0, &dword_1D48BA000, oSLogObject6, 1, "%{public}@: [%{public}@] Found a preexisting account with a broken altDSID or DSID that we can use.", &v215, v200);

          if (!v117)
          {
LABEL_119:

            goto LABEL_122;
          }

          oSLogObject6 = [MEMORY[0x1E696AEC0] stringWithCString:v117 encoding:4];
          free(v117);
          SSFileLog(v112, @"%@", v118, v119, v120, v121, v122, v123, oSLogObject6);
        }

        goto LABEL_119;
      }
    }

    v35 = v34;
LABEL_17:
    v36 = +[SSLogConfig sharedAccountsMigrationConfig];
    if (!v36)
    {
      v36 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v36 shouldLog];
    if ([v36 shouldLogToDisk])
    {
      LODWORD(v38) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v38) = shouldLog2;
    }

    oSLogObject7 = [v36 OSLogObject];
    if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v38;
    }

    else
    {
      v38 &= 2u;
    }

    if (!v38)
    {
      goto LABEL_28;
    }

    v40 = objc_opt_class();
    v41 = v40;
    hashedDescription = [(SSAccount *)v35 hashedDescription];
    v215 = 138543874;
    v216 = v40;
    v217 = 2114;
    v218 = keyCopy;
    v219 = 2114;
    v220 = hashedDescription;
    LODWORD(v200) = 32;
    v43 = _os_log_send_and_compose_impl(v38, 0, 0, 0, &dword_1D48BA000, oSLogObject7, 0, "%{public}@: [%{public}@] There's a preexisting account, %{public}@. We'll merge the given properties into it.", &v215, v200);

    if (v43)
    {
      oSLogObject7 = [MEMORY[0x1E696AEC0] stringWithCString:v43 encoding:4];
      free(v43);
      SSFileLog(v36, @"%@", v44, v45, v46, v47, v48, v49, oSLogObject7);
      v14 = v210;
LABEL_28:

      goto LABEL_30;
    }

    v14 = v210;
LABEL_30:

    [(SSAccount *)v35 setLockdownDictionary:dictionaryCopy];
    uniqueIdentifier3 = [(SSAccount *)v35 uniqueIdentifier];
    v51 = [dCopy isEqualToNumber:uniqueIdentifier3];

    v52 = +[SSLogConfig sharedAccountsMigrationConfig];
    v53 = v52;
    if (!v51)
    {
      if (!v52)
      {
        v53 = +[SSLogConfig sharedConfig];
      }

      LODWORD(v61) = [v53 shouldLog];
      if ([v53 shouldLogToDisk])
      {
        LODWORD(v61) = v61 | 2;
      }

      oSLogObject8 = [v53 OSLogObject];
      if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_DEFAULT))
      {
        v61 = v61;
      }

      else
      {
        v61 &= 2u;
      }

      if (v61)
      {
        v62 = objc_opt_class();
        v63 = v62;
        isActive = [(SSAccount *)v35 isActive];
        v215 = 138543874;
        v65 = @"NO";
        if (isActive)
        {
          v65 = @"YES";
        }

        v216 = v62;
        v217 = 2114;
        v218 = keyCopy;
        v219 = 2114;
        v220 = v65;
        LODWORD(v200) = 32;
        v60 = _os_log_send_and_compose_impl(v61, 0, 0, 0, &dword_1D48BA000, oSLogObject8, 0, "%{public}@: [%{public}@] Making the account inactive. previousActiveState = %{public}@", &v215, v200);

        if (!v60)
        {
          v51 = 0;
          goto LABEL_61;
        }

LABEL_54:
        oSLogObject8 = [MEMORY[0x1E696AEC0] stringWithCString:v60 encoding:4];
        free(v60);
        SSFileLog(v53, @"%@", v66, v67, v68, v69, v70, v71, oSLogObject8);
        v14 = v210;
      }

      else
      {
        v51 = 0;
      }

LABEL_57:

      goto LABEL_62;
    }

    if (!v52)
    {
      v53 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v54) = [v53 shouldLog];
    if ([v53 shouldLogToDisk])
    {
      LODWORD(v54) = v54 | 2;
    }

    oSLogObject8 = [v53 OSLogObject];
    if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_DEFAULT))
    {
      v54 = v54;
    }

    else
    {
      v54 &= 2u;
    }

    if (!v54)
    {
      v51 = 1;
      goto LABEL_57;
    }

    v56 = objc_opt_class();
    v57 = v56;
    isActive2 = [(SSAccount *)v35 isActive];
    v215 = 138543874;
    v59 = @"NO";
    if (isActive2)
    {
      v59 = @"YES";
    }

    v216 = v56;
    v217 = 2114;
    v218 = keyCopy;
    v219 = 2114;
    v220 = v59;
    LODWORD(v200) = 32;
    v60 = _os_log_send_and_compose_impl(v54, 0, 0, 0, &dword_1D48BA000, oSLogObject8, 0, "%{public}@: [%{public}@] Making the account the active account. previousActiveState = %{public}@", &v215, v200);

    if (v60)
    {
      goto LABEL_54;
    }

    v51 = 1;
LABEL_61:
    v14 = v210;
LABEL_62:

    [(SSAccount *)v35 setActive:v51];
    uniqueIdentifier4 = [(SSAccount *)v35 uniqueIdentifier];
    v74 = [iDCopy isEqualToNumber:uniqueIdentifier4];

    v75 = +[SSLogConfig sharedAccountsMigrationConfig];
    v76 = v75;
    if (!v74)
    {
      if (!v75)
      {
        v76 = +[SSLogConfig sharedConfig];
      }

      LODWORD(v84) = [v76 shouldLog];
      if ([v76 shouldLogToDisk])
      {
        LODWORD(v84) = v84 | 2;
      }

      oSLogObject9 = [v76 OSLogObject];
      if (os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_DEFAULT))
      {
        v84 = v84;
      }

      else
      {
        v84 &= 2u;
      }

      if (v84)
      {
        v85 = objc_opt_class();
        v86 = v85;
        isActiveLockerAccount = [(SSAccount *)v35 isActiveLockerAccount];
        v215 = 138543874;
        v88 = @"NO";
        if (isActiveLockerAccount)
        {
          v88 = @"YES";
        }

        v216 = v85;
        v217 = 2114;
        v218 = keyCopy;
        v219 = 2114;
        v220 = v88;
        LODWORD(v200) = 32;
        v83 = _os_log_send_and_compose_impl(v84, 0, 0, 0, &dword_1D48BA000, oSLogObject9, 0, "%{public}@: [%{public}@] Making the account an inactive locker account. previousActiveLockerState = %{public}@", &v215, v200);

        if (!v83)
        {
          v74 = 0;
          goto LABEL_91;
        }

LABEL_86:
        oSLogObject9 = [MEMORY[0x1E696AEC0] stringWithCString:v83 encoding:4];
        free(v83);
        SSFileLog(v76, @"%@", v89, v90, v91, v92, v93, v94, oSLogObject9);
        v14 = v210;
      }

      else
      {
        v74 = 0;
      }

LABEL_89:

      goto LABEL_92;
    }

    if (!v75)
    {
      v76 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v77) = [v76 shouldLog];
    if ([v76 shouldLogToDisk])
    {
      LODWORD(v77) = v77 | 2;
    }

    oSLogObject9 = [v76 OSLogObject];
    if (os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_DEFAULT))
    {
      v77 = v77;
    }

    else
    {
      v77 &= 2u;
    }

    if (!v77)
    {
      v74 = 1;
      goto LABEL_89;
    }

    v79 = objc_opt_class();
    v80 = v79;
    isActiveLockerAccount2 = [(SSAccount *)v35 isActiveLockerAccount];
    v215 = 138543874;
    v82 = @"NO";
    if (isActiveLockerAccount2)
    {
      v82 = @"YES";
    }

    v216 = v79;
    v217 = 2114;
    v218 = keyCopy;
    v219 = 2114;
    v220 = v82;
    LODWORD(v200) = 32;
    v83 = _os_log_send_and_compose_impl(v77, 0, 0, 0, &dword_1D48BA000, oSLogObject9, 0, "%{public}@: [%{public}@] Making the account the active locker account. previousActiveLockerState = %{public}@", &v215, v200);

    if (v83)
    {
      goto LABEL_86;
    }

    v74 = 1;
LABEL_91:
    v14 = v210;
LABEL_92:

    [(SSAccount *)v35 setActiveLockerAccount:v74];
    v214 = v209;
    v95 = [v14 saveAccount:v35 verifyCredentials:0 error:&v214];
    v15 = v214;

    if (v95)
    {
      v162 = v35;
      goto LABEL_161;
    }

    domain = [v15 domain];
    if (([domain isEqualToString:v203] & 1) == 0)
    {
      break;
    }

    v97 = [v15 code] != 5;

    if (v97 || (v206 & 1) == 0)
    {
      goto LABEL_160;
    }

    v98 = +[SSLogConfig sharedAccountsMigrationConfig];
    if (!v98)
    {
      v98 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v99) = [v98 shouldLog];
    if ([v98 shouldLogToDisk])
    {
      LODWORD(v99) = v99 | 2;
    }

    oSLogObject10 = [v98 OSLogObject];
    if (os_log_type_enabled(oSLogObject10, OS_LOG_TYPE_DEFAULT))
    {
      v99 = v99;
    }

    else
    {
      v99 &= 2u;
    }

    if (v99)
    {
      v101 = objc_opt_class();
      v215 = 138543618;
      v216 = v101;
      v217 = 2114;
      v218 = keyCopy;
      v102 = v101;
      LODWORD(v200) = 22;
      v103 = _os_log_send_and_compose_impl(v99, 0, 0, 0, &dword_1D48BA000, oSLogObject10, 0, "%{public}@: [%{public}@] It appears that someone created the account while we were attempting to migrate it. We'll perform the migration again.", &v215, v200);

      if (!v103)
      {
        goto LABEL_106;
      }

      oSLogObject10 = [MEMORY[0x1E696AEC0] stringWithCString:v103 encoding:4];
      free(v103);
      SSFileLog(v98, @"%@", v104, v105, v106, v107, v108, v109, oSLogObject10);
    }

LABEL_106:
    v206 = 0;
    v16 = 2;
  }

LABEL_160:
  v162 = 0;
LABEL_161:

  [selfCopy _enableAccountStoreChangedNotifications];
  v163 = +[SSLogConfig sharedAccountsMigrationConfig];
  v164 = v163;
  if (v95)
  {
    if (!v163)
    {
      v164 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v164 shouldLog];
    if ([v164 shouldLogToDisk])
    {
      v166 = shouldLog3 | 2;
    }

    else
    {
      v166 = shouldLog3;
    }

    oSLogObject11 = [v164 OSLogObject];
    if (os_log_type_enabled(oSLogObject11, OS_LOG_TYPE_DEFAULT))
    {
      v168 = v166;
    }

    else
    {
      v168 = v166 & 2;
    }

    if (v168)
    {
      v169 = objc_opt_class();
      v215 = 138543618;
      v216 = v169;
      v217 = 2114;
      v218 = keyCopy;
      v170 = v169;
      LODWORD(v200) = 22;
      v171 = _os_log_send_and_compose_impl(v168, 0, 0, 0, &dword_1D48BA000, oSLogObject11, 0, "%{public}@: [%{public}@] Successfully saved the account.", &v215, v200);
      goto LABEL_182;
    }

LABEL_184:
    errorCopy2 = error;
    v177 = storeCopy;
LABEL_185:
  }

  else
  {
    if (!v163)
    {
      v164 = +[SSLogConfig sharedConfig];
    }

    shouldLog4 = [v164 shouldLog];
    if ([v164 shouldLogToDisk])
    {
      v173 = shouldLog4 | 2;
    }

    else
    {
      v173 = shouldLog4;
    }

    oSLogObject11 = [v164 OSLogObject];
    if (os_log_type_enabled(oSLogObject11, OS_LOG_TYPE_ERROR))
    {
      v174 = v173;
    }

    else
    {
      v174 = v173 & 2;
    }

    if (!v174)
    {
      goto LABEL_184;
    }

    v175 = objc_opt_class();
    v215 = 138543874;
    v216 = v175;
    v217 = 2114;
    v218 = keyCopy;
    v219 = 2112;
    v220 = v15;
    v170 = v175;
    LODWORD(v200) = 32;
    v171 = _os_log_send_and_compose_impl(v174, 0, 0, 0, &dword_1D48BA000, oSLogObject11, 16, "%{public}@: [%{public}@] Failed to save the account. error = %@", &v215, v200);
LABEL_182:
    v176 = v171;

    errorCopy2 = error;
    v177 = storeCopy;
    if (v176)
    {
      oSLogObject11 = [MEMORY[0x1E696AEC0] stringWithCString:v176 encoding:4];
      free(v176);
      SSFileLog(v164, @"%@", v179, v180, v181, v182, v183, v184, oSLogObject11);
      goto LABEL_185;
    }
  }

  if (errorCopy2)
  {
    v185 = v15;
    *errorCopy2 = v15;
  }

  v186 = v162;
  v14 = v210;
LABEL_189:

  return v186;
}

+ (void)_removeAccountDictionary:(id)dictionary fromKeyValueStore:(id)store
{
  dictionaryCopy = dictionary;
  storeCopy = store;
  if ([self _accountDictionaryRepresentsActiveAccount:dictionaryCopy inKeyValueStore:storeCopy])
  {
    [storeCopy removeAccountFromDomain:@"com.apple.mobile.iTunes.store"];
    [storeCopy removeAccountFromDomain:@"com.apple.itunesstored"];
  }

  if ([self _accountDictionaryRepresentsActiveLockerAccount:dictionaryCopy inKeyValueStore:storeCopy])
  {
    [storeCopy setValue:0 forDomain:@"com.apple.mobile.iTunes.store" key:@"ActiveLockerAccountID"];
    [storeCopy setValue:0 forDomain:@"com.apple.itunesstored" key:@"ActiveLockerAccountID"];
  }

  accountDictionaries = [storeCopy accountDictionaries];
  v8 = [accountDictionaries mutableCopy];

  [v8 removeObject:dictionaryCopy];
  if (![v8 count])
  {

    v8 = 0;
  }

  [storeCopy setValue:v8 forDomain:@"com.apple.mobile.iTunes.store" key:@"KnownAccounts"];
}

+ (BOOL)_shouldRemoveAccountDictionaryWithoutMigration:(id)migration reason:(id *)reason
{
  migrationCopy = migration;
  if (![migrationCopy count])
  {
    v7 = @"it's empty";
    goto LABEL_9;
  }

  if ([migrationCopy count] == 1)
  {
    v6 = [migrationCopy objectForKeyedSubscript:@"AccountSource"];

    if (v6)
    {
      v7 = @"it only has an account source";
LABEL_9:
      *reason = v7;
      v9 = 1;
      goto LABEL_10;
    }
  }

  v8 = [migrationCopy objectForKeyedSubscript:@"AppleID"];

  if (!v8)
  {
    v7 = @"it has no username";
    goto LABEL_9;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (id)_convertPasswordToPET:(id)t forAccount:(id)account options:(id)options
{
  v37 = *MEMORY[0x1E69E9840];
  tCopy = t;
  optionsCopy = options;
  accountCopy = account;
  if (SSIsInternalBuild(accountCopy, v10) && (NSStringIsNotPET(tCopy) & 1) == 0)
  {
    v11 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      LODWORD(v13) = shouldLog | 2;
    }

    else
    {
      LODWORD(v13) = shouldLog;
    }

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v13 = v13;
    }

    else
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v15 = [optionsCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v35 = 138543362;
      v36 = v15;
      v16 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "SSAccountStore: [%{public}@] The raw password might actually be a PET.", &v35, 12);

      if (!v16)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:4];
      free(v16);
      SSFileLog(v11, @"%@", v17, v18, v19, v20, v21, v22, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v23 = objc_alloc_init(SSPromise);
  _createAuthenticationController = [objc_opt_class() _createAuthenticationController];
  v25 = [objc_opt_class() _createAuthenticationContextForAccount:accountCopy silentAuthentication:1 options:optionsCopy];

  [v25 _setPassword:tCopy];
  v26 = [optionsCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitPreventPrompt"];
  [v25 setShouldPreventInteractiveAuth:{objc_msgSend(v26, "BOOLValue")}];

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __59__SSAccountStore__convertPasswordToPET_forAccount_options___block_invoke;
  v32[3] = &unk_1E84AEB70;
  v33 = optionsCopy;
  v27 = v23;
  v34 = v27;
  v28 = optionsCopy;
  [_createAuthenticationController authenticateWithContext:v25 completion:v32];
  v29 = v34;
  v30 = v27;

  return v27;
}

void __59__SSAccountStore__convertPasswordToPET_forAccount_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBC8]];
  v8 = [v7 length];
  v9 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  v10 = v9;
  if (v8)
  {
    if (!v9)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      LODWORD(v12) = v11 | 2;
    }

    else
    {
      LODWORD(v12) = v11;
    }

    v13 = [v10 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v12;
    }

    else
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v14 = [*(a1 + 32) objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v35 = 138543362;
      v36 = v14;
      v15 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_1D48BA000, v13, 0, "SSAccountStore: [%{public}@] Successfully converted a raw password into a PET.", &v35, 12);

      if (!v15)
      {
LABEL_14:

        [*(a1 + 40) finishWithResult:v5];
        goto LABEL_30;
      }

      v13 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:4];
      free(v15);
      SSFileLog(v10, @"%@", v16, v17, v18, v19, v20, v21, v13);
    }

    goto LABEL_14;
  }

  if (!v9)
  {
    v10 = +[SSLogConfig sharedConfig];
  }

  v22 = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    LODWORD(v23) = v22 | 2;
  }

  else
  {
    LODWORD(v23) = v22;
  }

  v24 = [v10 OSLogObject];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v23 = v23;
  }

  else
  {
    v23 &= 2u;
  }

  if (v23)
  {
    v25 = [*(a1 + 32) objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
    v35 = 138543618;
    v36 = v25;
    v37 = 2114;
    v38 = v6;
    v26 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &dword_1D48BA000, v24, 16, "SSAccountStore: [%{public}@] Failed to convert a raw password into a PET. error = %{public}@", &v35, 22);

    if (!v26)
    {
      goto LABEL_27;
    }

    v24 = [MEMORY[0x1E696AEC0] stringWithCString:v26 encoding:4];
    free(v26);
    SSFileLog(v10, @"%@", v27, v28, v29, v30, v31, v32, v24);
  }

LABEL_27:
  v33 = *(a1 + 40);
  if (v6)
  {
    [v33 finishWithError:v6];
  }

  else
  {
    v34 = SSError(@"SSErrorDomain", 100, 0, 0);
    [v33 finishWithError:v34];
  }

LABEL_30:
}

+ (id)_createAuthenticationContextForAccount:(id)account silentAuthentication:(BOOL)authentication options:(id)options
{
  authenticationCopy = authentication;
  accountCopy = account;
  optionsCopy = options;
  if ([objc_opt_class() _currentProcessLinksUIKit])
  {
    v9 = [optionsCopy objectForKey:@"SSAccountStoreAuthKitPresentingViewController"];
    pointerValue = [v9 pointerValue];

    if (!pointerValue)
    {
      v13 = SSVUIKitFramework(v11, v12);
      v14 = [SSVWeakLinkedClassForString(&cfstr_Uiapplication.isa v13)];
      keyWindow = [v14 keyWindow];
      rootViewController = [keyWindow rootViewController];

      presentedViewController = [rootViewController presentedViewController];

      if (presentedViewController)
      {
        do
        {
          pointerValue = [rootViewController presentedViewController];

          presentedViewController2 = [pointerValue presentedViewController];

          rootViewController = pointerValue;
        }

        while (presentedViewController2);
        if (!pointerValue)
        {
          goto LABEL_13;
        }
      }

      else
      {
        pointerValue = rootViewController;
        if (!rootViewController)
        {
          goto LABEL_13;
        }
      }
    }

    v19 = SSVAuthKitUIFramework(v11, v12);
    v20 = objc_alloc_init(SSVWeakLinkedClassForString(&cfstr_Akappleidauthe.isa, v19));
    v22 = SSVUIKitFramework(v20, v21);
    SSVWeakLinkedClassForString(&cfstr_Uinavigationco.isa, v22);
    if (objc_opt_isKindOfClass())
    {
      topViewController = [pointerValue topViewController];
      [v20 setPresentingViewController:topViewController];

      if (v20)
      {
        goto LABEL_14;
      }
    }

    else
    {
      [v20 setPresentingViewController:pointerValue];
      if (v20)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    pointerValue = 0;
  }

LABEL_13:
  v20 = objc_alloc_init(MEMORY[0x1E698DCB8]);
  [v20 _setProxyingForApp:1];
LABEL_14:
  accountName = [accountCopy accountName];
  altDSID = [accountCopy altDSID];
  v26 = [altDSID length];

  if (v26)
  {
    altDSID2 = [accountCopy altDSID];
    [v20 setAltDSID:altDSID2];
  }

  uniqueIdentifier = [accountCopy uniqueIdentifier];
  if (uniqueIdentifier)
  {
    v29 = uniqueIdentifier;
    uniqueIdentifier2 = [accountCopy uniqueIdentifier];
    v31 = [uniqueIdentifier2 isEqualToNumber:&unk_1F507A150];

    if ((v31 & 1) == 0)
    {
      uniqueIdentifier3 = [accountCopy uniqueIdentifier];
      stringValue = [uniqueIdentifier3 stringValue];
      [v20 setDSID:stringValue];
    }
  }

  v34 = [optionsCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitOKButtonLabel"];
  [v20 setDefaultButtonString:v34];

  [v20 setIsUsernameEditable:accountName == 0];
  v35 = [optionsCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitPromptTitle"];
  [v20 set_passwordPromptTitle:v35];

  v36 = [optionsCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitReasonKey"];
  [v20 setReason:v36];

  [v20 setServiceType:2];
  [v20 setShouldAllowAppleIDCreation:0];
  [v20 setShouldForceInteractiveAuth:1];
  [v20 setShouldUpdatePersistentServiceTokens:1];
  [v20 setUsername:accountName];
  clientInfo = [v20 clientInfo];
  if (clientInfo)
  {
    v38 = clientInfo;
  }

  else
  {
    v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (!v38)
    {
      goto LABEL_27;
    }
  }

  v39 = [optionsCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitCreateAccountQueryParamsKey"];
  if (v39)
  {
    [v38 setObject:v39 forKeyedSubscript:@"SSAccountStoreAuthKitCreateAccountQueryParamsKey"];
  }

  v40 = [optionsCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitUserAgentKey"];
  if (v40)
  {
    [v38 setObject:v40 forKeyedSubscript:@"SSAccountStoreAuthKitUserAgentKey"];
  }

LABEL_27:
  [v20 setClientInfo:v38];
  v59 = accountName;
  if (authenticationCopy)
  {
    bOOLValue = 1;
  }

  else
  {
    v42 = [optionsCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitPreventPrompt"];
    bOOLValue = [v42 BOOLValue];
  }

  [v20 setShouldPreventInteractiveAuth:bOOLValue];
  v43 = [optionsCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitProxiedAppBundleIDKey"];
  if ([v43 length])
  {
    [v20 _setProxyingForApp:1];
    [v20 _setProxiedAppBundleID:v43];
  }

  v44 = [optionsCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitProxiedAppNameKey"];
  v45 = [v44 length];
  if (v45)
  {
    [v20 _setProxyingForApp:1];
    v45 = [v20 _setProxiedAppName:v44];
  }

  if (authenticationCopy)
  {
    v58 = accountCopy;
    v47 = SSVAppleAccountFramework(v45, v46);
    v48 = SSVWeakLinkedStringConstantForString("kAASaveOptionCompanionDeviceClientInfoKey", v47);
    v50 = SSVAppleAccountFramework(v48, v49);
    v51 = SSVWeakLinkedStringConstantForString("kAASaveOptionCompanionDeviceUDIDKey", v50);
    v57 = v48;
    v52 = [optionsCopy objectForKeyedSubscript:v48];
    v53 = [optionsCopy objectForKeyedSubscript:v51];
    if ([v52 length] || objc_msgSend(v53, "length"))
    {
      v54 = objc_alloc_init(MEMORY[0x1E698DD60]);
      [v54 setLinkType:2];
      [v54 setServerFriendlyDescription:v52];
      [v54 setUniqueDeviceIdentifier:v53];
      if (v54)
      {
        [v20 setCompanionDevice:v54];
      }
    }

    [v20 setIsUsernameEditable:0];
    [v20 setShouldForceInteractiveAuth:0];
    v55 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E6959A90]];
    [v20 setServiceIdentifiers:v55];

    accountCopy = v58;
  }

  return v20;
}

+ (id)_createAuthenticationController
{
  v2 = objc_alloc_init(MEMORY[0x1E698DCC0]);

  return v2;
}

+ (id)_createUpdatedAccount:(id)account withAuthenticationResults:(id)results options:(id)options
{
  v213 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  resultsCopy = results;
  optionsCopy = options;
  v10 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DB40]];
  v11 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DB68]];
  v12 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DBF0]];
  v202 = optionsCopy;
  v13 = [optionsCopy objectForKeyedSubscript:SSVerifyCredentialsAccountScope];
  integerValue = [v13 integerValue];

  v199 = v10;
  v200 = v11;
  v201 = v12;
  v197 = resultsCopy;
  if (!accountCopy)
  {
    v14 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = shouldLog | 2;
    }

    else
    {
      v16 = shouldLog;
    }

    oSLogObject = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v18 = v16;
    }

    else
    {
      v18 = v16 & 2;
    }

    if (v18)
    {
      v19 = [optionsCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v10 = v199;
      v20 = SSHashIfNeeded(v199);
      stringValue = [v200 stringValue];
      v22 = SSHashIfNeeded(stringValue);
      v23 = SSHashIfNeeded(v201);
      v203 = 138544386;
      v204 = v19;
      v205 = 2114;
      v206 = v20;
      v207 = 2114;
      v208 = v22;
      v209 = 2114;
      v210 = v23;
      v211 = 2048;
      v212 = integerValue;
      v24 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_1D48BA000, oSLogObject, 1, "SSAccountStore: [%{public}@] We were told to update a nil account. We'll try to find an existing account matching the info we got from AuthKit. altDSID = %{public}@ | DSID = %{public}@ | username = %{public}@ | scope = %ld", &v203, 52);

      v11 = v200;
      v12 = v201;

      if (v24)
      {
        v25 = [MEMORY[0x1E696AEC0] stringWithCString:v24 encoding:4];
        free(v24);
        SSFileLog(v14, @"%@", v26, v27, v28, v29, v30, v31, v25);
      }
    }

    else
    {

      v10 = v199;
    }

    v32 = +[SSAccountStore defaultStore];
    accountCopy = [v32 accountWithAltDSID:v10 uniqueIdentifier:v11 accountName:v12 scope:integerValue];

    v33 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    v34 = v33;
    if (accountCopy)
    {
      resultsCopy = v197;
      if (!v33)
      {
        v34 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v34 shouldLog];
      if ([v34 shouldLogToDisk])
      {
        v36 = shouldLog2 | 2;
      }

      else
      {
        v36 = shouldLog2;
      }

      oSLogObject2 = [v34 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
      {
        v38 = v36;
      }

      else
      {
        v38 = v36 & 2;
      }

      if (v38)
      {
        v39 = [v202 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
        v203 = 138543362;
        v204 = v39;
        LODWORD(v196) = 12;
        v40 = _os_log_send_and_compose_impl(v38, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 1, "SSAccountStore: [%{public}@] Found an account existing account matching the AuthKit information.", &v203, v196);

        if (!v40)
        {
LABEL_29:

          goto LABEL_70;
        }

        oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v40 encoding:4];
        free(v40);
        SSFileLog(v34, @"%@", v41, v42, v43, v44, v45, v46, oSLogObject2);
      }

      goto LABEL_29;
    }

    if (!v33)
    {
      v34 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v34 shouldLog];
    if ([v34 shouldLogToDisk])
    {
      v48 = shouldLog3 | 2;
    }

    else
    {
      v48 = shouldLog3;
    }

    oSLogObject3 = [v34 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
    {
      v50 = v48;
    }

    else
    {
      v50 = v48 & 2;
    }

    if (v50)
    {
      v51 = [optionsCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v203 = 138543362;
      v204 = v51;
      LODWORD(v196) = 12;
      v52 = _os_log_send_and_compose_impl(v50, 0, 0, 0, &dword_1D48BA000, oSLogObject3, 1, "SSAccountStore: [%{public}@] Failed to find an account existing account. We'll create a new account.", &v203, v196);

      v10 = v199;
      if (!v52)
      {
        goto LABEL_43;
      }

      oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v52 encoding:4];
      free(v52);
      SSFileLog(v34, @"%@", v53, v54, v55, v56, v57, v58, oSLogObject3);
    }

    else
    {
      v10 = v199;
    }

LABEL_43:
    accountCopy = objc_alloc_init(SSAccount);
    v59 = [optionsCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitCanSetActiveAccountKey"];
    bOOLValue = [v59 BOOLValue];

    v61 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    v62 = v61;
    if (bOOLValue)
    {
      if (!v61)
      {
        v62 = +[SSLogConfig sharedConfig];
      }

      shouldLog4 = [v62 shouldLog];
      if ([v62 shouldLogToDisk])
      {
        v64 = shouldLog4 | 2;
      }

      else
      {
        v64 = shouldLog4;
      }

      oSLogObject4 = [v62 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
      {
        v66 = v64;
      }

      else
      {
        v66 = v64 & 2;
      }

      if (!v66)
      {
        bOOLValue = 1;
        goto LABEL_68;
      }

      v67 = [v202 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v203 = 138543362;
      v204 = v67;
      LODWORD(v196) = 12;
      v68 = _os_log_send_and_compose_impl(v66, 0, 0, 0, &dword_1D48BA000, oSLogObject4, 0, "SSAccountStore: [%{public}@] The newly created account will be set to active.", &v203, v196);

      if (!v68)
      {
        bOOLValue = 1;
LABEL_69:

        [(SSAccount *)accountCopy setActive:bOOLValue];
        [(SSAccount *)accountCopy setAccountScope:integerValue];
        resultsCopy = v197;
LABEL_70:
        v12 = v201;
        if (!v10)
        {
          goto LABEL_72;
        }

LABEL_71:
        altDSID = [(SSAccount *)accountCopy altDSID];
        v80 = [altDSID isEqualToString:v10];

        if (v80)
        {
          goto LABEL_72;
        }

        altDSID2 = [(SSAccount *)accountCopy altDSID];

        if (!altDSID2)
        {
LABEL_88:
          [(SSAccount *)accountCopy setAltDSID:v10];
          v81 = 1;
          if (!v11)
          {
            goto LABEL_105;
          }

          goto LABEL_89;
        }

        v83 = +[SSLogConfig sharedAccountsAuthenticationConfig];
        if (!v83)
        {
          v83 = +[SSLogConfig sharedConfig];
        }

        shouldLog5 = [v83 shouldLog];
        if ([v83 shouldLogToDisk])
        {
          v85 = shouldLog5 | 2;
        }

        else
        {
          v85 = shouldLog5;
        }

        oSLogObject5 = [v83 OSLogObject];
        if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
        {
          v87 = v85;
        }

        else
        {
          v87 = v85 & 2;
        }

        if (v87)
        {
          v88 = [v202 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
          altDSID3 = [(SSAccount *)accountCopy altDSID];
          v90 = SSHashIfNeeded(altDSID3);
          SSHashIfNeeded(v10);
          v92 = v91 = resultsCopy;
          v203 = 138543874;
          v204 = v88;
          v205 = 2114;
          v206 = v90;
          v207 = 2114;
          v208 = v92;
          LODWORD(v196) = 32;
          v93 = _os_log_send_and_compose_impl(v87, 0, 0, 0, &dword_1D48BA000, oSLogObject5, 0, "SSAccountStore: [%{public}@] AuthKit gave us an updated altDSID. oldAltDSID = %{public}@ | newAltDSID = %{public}@", &v203, v196);

          resultsCopy = v91;
          v11 = v200;

          if (!v93)
          {
LABEL_87:

            v12 = v201;
            goto LABEL_88;
          }

          oSLogObject5 = [MEMORY[0x1E696AEC0] stringWithCString:v93 encoding:4];
          free(v93);
          SSFileLog(v83, @"%@", v94, v95, v96, v97, v98, v99, oSLogObject5);
        }

        goto LABEL_87;
      }
    }

    else
    {
      if (!v61)
      {
        v62 = +[SSLogConfig sharedConfig];
      }

      shouldLog6 = [v62 shouldLog];
      if ([v62 shouldLogToDisk])
      {
        v70 = shouldLog6 | 2;
      }

      else
      {
        v70 = shouldLog6;
      }

      oSLogObject4 = [v62 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
      {
        v71 = v70;
      }

      else
      {
        v71 = v70 & 2;
      }

      if (!v71)
      {
        bOOLValue = 0;
        goto LABEL_68;
      }

      v72 = [v202 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v203 = 138543362;
      v204 = v72;
      LODWORD(v196) = 12;
      v68 = _os_log_send_and_compose_impl(v71, 0, 0, 0, &dword_1D48BA000, oSLogObject4, 0, "SSAccountStore: [%{public}@] The newly created account will be set to inactive.", &v203, v196);

      if (!v68)
      {
        bOOLValue = 0;
        goto LABEL_69;
      }
    }

    oSLogObject4 = [MEMORY[0x1E696AEC0] stringWithCString:v68 encoding:4];
    free(v68);
    SSFileLog(v62, @"%@", v73, v74, v75, v76, v77, v78, oSLogObject4);
LABEL_68:

    goto LABEL_69;
  }

  if (v10)
  {
    goto LABEL_71;
  }

LABEL_72:
  v81 = 0;
  if (!v11)
  {
    goto LABEL_105;
  }

LABEL_89:
  uniqueIdentifier = [(SSAccount *)accountCopy uniqueIdentifier];
  v101 = [uniqueIdentifier isEqualToNumber:v11];

  if ((v101 & 1) == 0)
  {
    uniqueIdentifier2 = [(SSAccount *)accountCopy uniqueIdentifier];

    if (!uniqueIdentifier2)
    {
LABEL_104:
      [(SSAccount *)accountCopy setUniqueIdentifier:v11];
      v81 = 1;
      goto LABEL_105;
    }

    v103 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v103)
    {
      v103 = +[SSLogConfig sharedConfig];
    }

    shouldLog7 = [v103 shouldLog];
    if ([v103 shouldLogToDisk])
    {
      v105 = shouldLog7 | 2;
    }

    else
    {
      v105 = shouldLog7;
    }

    oSLogObject6 = [v103 OSLogObject];
    if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
    {
      v107 = v105;
    }

    else
    {
      v107 = v105 & 2;
    }

    if (v107)
    {
      v108 = [v202 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      uniqueIdentifier3 = [(SSAccount *)accountCopy uniqueIdentifier];
      stringValue2 = [uniqueIdentifier3 stringValue];
      v111 = SSHashIfNeeded(stringValue2);
      stringValue3 = [v200 stringValue];
      v113 = SSHashIfNeeded(stringValue3);
      v203 = 138543874;
      v204 = v108;
      v205 = 2114;
      v206 = v111;
      v207 = 2114;
      v208 = v113;
      LODWORD(v196) = 32;
      v114 = _os_log_send_and_compose_impl(v107, 0, 0, 0, &dword_1D48BA000, oSLogObject6, 0, "SSAccountStore: [%{public}@] AuthKit gave us an updated DSID. oldDSID = %{public}@ | newDSID = %{public}@", &v203, v196);

      resultsCopy = v197;
      v11 = v200;

      if (!v114)
      {
LABEL_103:

        v12 = v201;
        goto LABEL_104;
      }

      oSLogObject6 = [MEMORY[0x1E696AEC0] stringWithCString:v114 encoding:4];
      free(v114);
      SSFileLog(v103, @"%@", v115, v116, v117, v118, v119, v120, oSLogObject6);
    }

    goto LABEL_103;
  }

LABEL_105:
  if (v12)
  {
    accountName = [(SSAccount *)accountCopy accountName];
    v122 = [accountName isEqualToString:v12];

    if ((v122 & 1) == 0)
    {
      accountName2 = [(SSAccount *)accountCopy accountName];

      if (!accountName2)
      {
LABEL_122:
        [(SSAccount *)accountCopy setAccountName:v12];
        goto LABEL_123;
      }

      v124 = +[SSLogConfig sharedAccountsAuthenticationConfig];
      if (!v124)
      {
        v124 = +[SSLogConfig sharedConfig];
      }

      shouldLog8 = [v124 shouldLog];
      if ([v124 shouldLogToDisk])
      {
        shouldLog8 |= 2u;
      }

      oSLogObject7 = [v124 OSLogObject];
      if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEFAULT))
      {
        v127 = shouldLog8;
      }

      else
      {
        v127 = shouldLog8 & 2;
      }

      if (v127)
      {
        v128 = [v202 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
        accountName3 = [(SSAccount *)accountCopy accountName];
        v130 = SSHashIfNeeded(accountName3);
        v131 = SSHashIfNeeded(v201);
        v203 = 138543874;
        v204 = v128;
        v205 = 2114;
        v206 = v130;
        v207 = 2114;
        v208 = v131;
        LODWORD(v196) = 32;
        v132 = _os_log_send_and_compose_impl(v127, 0, 0, 0, &dword_1D48BA000, oSLogObject7, 0, "SSAccountStore: [%{public}@] AuthKit gave us an updated username. oldUsername = %{public}@ | newUsername = %{public}@", &v203, v196);

        if (!v132)
        {
LABEL_121:

          v12 = v201;
          goto LABEL_122;
        }

        oSLogObject7 = [MEMORY[0x1E696AEC0] stringWithCString:v132 encoding:4];
        free(v132);
        SSFileLog(v124, @"%@", v133, v134, v135, v136, v137, v138, oSLogObject7);
      }

      goto LABEL_121;
    }
  }

  if (!v81)
  {
    goto LABEL_172;
  }

LABEL_123:
  v139 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v139)
  {
    v139 = +[SSLogConfig sharedConfig];
  }

  shouldLog9 = [v139 shouldLog];
  if ([v139 shouldLogToDisk])
  {
    shouldLog9 |= 2u;
  }

  oSLogObject8 = [v139 OSLogObject];
  if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_DEFAULT))
  {
    v142 = shouldLog9;
  }

  else
  {
    v142 = shouldLog9 & 2;
  }

  if (v142)
  {
    v143 = [v202 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
    v203 = 138543362;
    v204 = v143;
    LODWORD(v196) = 12;
    v144 = _os_log_send_and_compose_impl(v142, 0, 0, 0, &dword_1D48BA000, oSLogObject8, 0, "SSAccountStore: [%{public}@] AuthKit gave us updated identifiers. We'll attempt to find an existing account that matches the new identifiers.", &v203, v196);

    if (!v144)
    {
      goto LABEL_134;
    }

    oSLogObject8 = [MEMORY[0x1E696AEC0] stringWithCString:v144 encoding:4];
    free(v144);
    SSFileLog(v139, @"%@", v145, v146, v147, v148, v149, v150, oSLogObject8);
  }

LABEL_134:
  v151 = +[SSAccountStore defaultStore];
  altDSID4 = [(SSAccount *)accountCopy altDSID];
  uniqueIdentifier4 = [(SSAccount *)accountCopy uniqueIdentifier];
  accountName4 = [(SSAccount *)accountCopy accountName];
  v155 = [v151 accountWithAltDSID:altDSID4 uniqueIdentifier:uniqueIdentifier4 accountName:accountName4 scope:integerValue];

  if (v155)
  {
    backingAccount = [v155 backingAccount];
    identifier = [backingAccount identifier];
    backingAccount2 = [(SSAccount *)accountCopy backingAccount];
    identifier2 = [backingAccount2 identifier];
    v160 = [identifier isEqualToString:identifier2];

    v161 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    v162 = v161;
    if (v160)
    {
      if (!v161)
      {
        v162 = +[SSLogConfig sharedConfig];
      }

      shouldLog10 = [v162 shouldLog];
      if ([v162 shouldLogToDisk])
      {
        shouldLog10 |= 2u;
      }

      oSLogObject9 = [v162 OSLogObject];
      if (os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_DEFAULT))
      {
        v165 = shouldLog10;
      }

      else
      {
        v165 = shouldLog10 & 2;
      }

      if (v165)
      {
        v166 = [v202 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
        v203 = 138543362;
        v204 = v166;
        LODWORD(v196) = 12;
        v167 = _os_log_send_and_compose_impl(v165, 0, 0, 0, &dword_1D48BA000, oSLogObject9, 0, "SSAccountStore: [%{public}@] The new identifiers point to the same account we're already working with.", &v203, v196);
        goto LABEL_154;
      }

LABEL_166:
      resultsCopy = v197;
      goto LABEL_167;
    }

    if (!v161)
    {
      v162 = +[SSLogConfig sharedConfig];
    }

    shouldLog11 = [v162 shouldLog];
    if ([v162 shouldLogToDisk])
    {
      shouldLog11 |= 2u;
    }

    oSLogObject10 = [v162 OSLogObject];
    if (os_log_type_enabled(oSLogObject10, OS_LOG_TYPE_DEFAULT))
    {
      v179 = shouldLog11;
    }

    else
    {
      v179 = shouldLog11 & 2;
    }

    if (v179)
    {
      v180 = [v202 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      hashedDescription = [v155 hashedDescription];
      v203 = 138543618;
      v204 = v180;
      v205 = 2114;
      v206 = hashedDescription;
      LODWORD(v196) = 22;
      v182 = _os_log_send_and_compose_impl(v179, 0, 0, 0, &dword_1D48BA000, oSLogObject10, 0, "SSAccountStore: [%{public}@] The new identifiers are for a different existing account, %{public}@.", &v203, v196);

      resultsCopy = v197;
      if (!v182)
      {
LABEL_170:

        v162 = accountCopy;
        accountCopy = v155;
        goto LABEL_171;
      }

      oSLogObject10 = [MEMORY[0x1E696AEC0] stringWithCString:v182 encoding:4];
      free(v182);
      SSFileLog(v162, @"%@", v183, v184, v185, v186, v187, v188, oSLogObject10);
    }

    else
    {
      resultsCopy = v197;
    }

    goto LABEL_170;
  }

  v162 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v162)
  {
    v162 = +[SSLogConfig sharedConfig];
  }

  shouldLog12 = [v162 shouldLog];
  if ([v162 shouldLogToDisk])
  {
    shouldLog12 |= 2u;
  }

  oSLogObject9 = [v162 OSLogObject];
  if (os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_DEFAULT))
  {
    v169 = shouldLog12;
  }

  else
  {
    v169 = shouldLog12 & 2;
  }

  if (!v169)
  {
    goto LABEL_166;
  }

  v166 = [v202 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
  v203 = 138543362;
  v204 = v166;
  LODWORD(v196) = 12;
  v167 = _os_log_send_and_compose_impl(v169, 0, 0, 0, &dword_1D48BA000, oSLogObject9, 0, "SSAccountStore: [%{public}@] We didn't find an existing account using the new identifiers.", &v203, v196);
LABEL_154:
  v170 = v167;

  resultsCopy = v197;
  if (v170)
  {
    oSLogObject9 = [MEMORY[0x1E696AEC0] stringWithCString:v170 encoding:4];
    free(v170);
    SSFileLog(v162, @"%@", v171, v172, v173, v174, v175, v176, oSLogObject9);
LABEL_167:
  }

LABEL_171:

  v12 = v201;
LABEL_172:
  v189 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DBC8]];
  if (v189)
  {
    passwordEquivalentToken = [(SSAccount *)accountCopy passwordEquivalentToken];
    v191 = [passwordEquivalentToken isEqualToString:v189];

    if ((v191 & 1) == 0)
    {
      [(SSAccount *)accountCopy setPasswordEquivalentToken:v189];
    }
  }

  v192 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DBD0]];
  if (v192)
  {
    rawPassword = [(SSAccount *)accountCopy rawPassword];
    v194 = [rawPassword isEqualToString:v192];

    if ((v194 & 1) == 0)
    {
      [(SSAccount *)accountCopy setRawPassword:v192];
    }
  }

  return accountCopy;
}

- (id)_optionsForProxiedAuthenticationWithVerifyCredentialsOptions:(id)options
{
  v26 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"SSAccountStoresProxiedDeviceFlagKey"];
  currentDevice = [MEMORY[0x1E698DD60] currentDevice];
  [currentDevice setLinkType:2];
  serializedData = [currentDevice serializedData];
  v8 = serializedData;
  if (serializedData)
  {
    v9 = SSVAppleAccountFramework(serializedData, v7);
    v10 = SSVWeakLinkedStringConstantForString("kAAErrorDetailsProxiedDeviceDataKey", v9);
    [v4 setObject:v8 forKeyedSubscript:v10];

    goto LABEL_16;
  }

  v11 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v11)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    LODWORD(v13) = shouldLog | 2;
  }

  else
  {
    LODWORD(v13) = shouldLog;
  }

  oSLogObject = [v11 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v13 = v13;
  }

  else
  {
    v13 &= 2u;
  }

  if (!v13)
  {
    goto LABEL_14;
  }

  v15 = [optionsCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
  v24 = 138543362;
  v25 = v15;
  v16 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "SSAccountStore: [%{public}@] Failed to encode AKDevice. Proxied authentication will fail.", &v24, 12);

  if (v16)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:4];
    free(v16);
    SSFileLog(v11, @"%@", v17, v18, v19, v20, v21, v22, oSLogObject);
LABEL_14:
  }

  v4 = 0;
LABEL_16:

  return v4;
}

- (id)_shouldCreateNewAccountForAccount:(id)account options:(id)options
{
  v86 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  optionsCopy = options;
  accountName = [accountCopy accountName];
  if (accountName || ([accountCopy altDSID], (accountName = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_4:
    v9 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 2;
    }

    if (v13)
    {
      v14 = [optionsCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      *location = 138543618;
      *&location[4] = self;
      v84 = 2114;
      v85 = v14;
      v15 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_1D48BA000, oSLogObject, 1, "%{public}@: [%{public}@] We aren't prompting to create a new account because the account isn't empty.", location, 22);

      if (v15)
      {
        v16 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:4];
        free(v15);
        SSFileLog(v9, @"%@", v17, v18, v19, v20, v21, v22, v16);
      }
    }

    else
    {
    }

    v23 = [SSPromise promiseWithResult:&unk_1F507A168];
    goto LABEL_17;
  }

  uniqueIdentifier = [accountCopy uniqueIdentifier];

  if (uniqueIdentifier)
  {
    goto LABEL_4;
  }

  v27 = [optionsCopy objectForKeyedSubscript:SSVerifyCredentialsAccountScope];
  integerValue = [v27 integerValue];

  if (integerValue == 1)
  {
    v29 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v29)
    {
      v29 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v29 shouldLog];
    if ([v29 shouldLogToDisk])
    {
      v31 = shouldLog2 | 2;
    }

    else
    {
      v31 = shouldLog2;
    }

    oSLogObject2 = [v29 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v33 = v31;
    }

    else
    {
      v33 = v31 & 2;
    }

    if (!v33)
    {

      goto LABEL_75;
    }

    v34 = [optionsCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
    *location = 138543618;
    *&location[4] = self;
    v84 = 2114;
    v85 = v34;
    v35 = _os_log_send_and_compose_impl(v33, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 0, "%{public}@: [%{public}@] We aren't prompting to create a new account because we're authenticating for a sandbox account.", location, 22);

    if (v35)
    {
      goto LABEL_47;
    }

    goto LABEL_75;
  }

  v36 = [optionsCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitCanCreateNewAccountKey"];
  bOOLValue = [v36 BOOLValue];

  v38 = [optionsCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitPreventPrompt"];
  bOOLValue2 = [v38 BOOLValue];

  if (!bOOLValue || bOOLValue2)
  {
    v29 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v29)
    {
      v29 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v29 shouldLog];
    if ([v29 shouldLogToDisk])
    {
      v55 = shouldLog3 | 2;
    }

    else
    {
      v55 = shouldLog3;
    }

    oSLogObject3 = [v29 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v57 = v55;
    }

    else
    {
      v57 = v55 & 2;
    }

    if (!v57)
    {

      goto LABEL_75;
    }

    v58 = [optionsCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
    *location = 138543618;
    *&location[4] = self;
    v84 = 2114;
    v85 = v58;
    v35 = _os_log_send_and_compose_impl(v57, 0, 0, 0, &dword_1D48BA000, oSLogObject3, 0, "%{public}@: [%{public}@] We aren't prompting to create a new account because we either shouldn't be prompting or SSAccountStoreAuthKitCanCreateNewAccountKey isn't set to YES.", location, 22);

    if (v35)
    {
LABEL_47:
      v47 = [MEMORY[0x1E696AEC0] stringWithCString:v35 encoding:4];
      free(v35);
      SSFileLog(v29, @"%@", v48, v49, v50, v51, v52, v53, v47);
    }

LABEL_75:

    v23 = [SSPromise promiseWithResult:&unk_1F507A180];
LABEL_17:
    v24 = v23;
    goto LABEL_18;
  }

  _isBuddyRunning = [objc_opt_class() _isBuddyRunning];
  v41 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  v29 = v41;
  if (_isBuddyRunning)
  {
    if (!v41)
    {
      v29 = +[SSLogConfig sharedConfig];
    }

    shouldLog4 = [v29 shouldLog];
    if ([v29 shouldLogToDisk])
    {
      v43 = shouldLog4 | 2;
    }

    else
    {
      v43 = shouldLog4;
    }

    oSLogObject4 = [v29 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v43;
    }

    else
    {
      v45 = v43 & 2;
    }

    if (!v45)
    {

      goto LABEL_75;
    }

    v46 = [optionsCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
    *location = 138543618;
    *&location[4] = self;
    v84 = 2114;
    v85 = v46;
    v35 = _os_log_send_and_compose_impl(v45, 0, 0, 0, &dword_1D48BA000, oSLogObject4, 0, "%{public}@: [%{public}@] We aren't prompting to create a new account because Buddy is still running.", location, 22);

    if (v35)
    {
      goto LABEL_47;
    }

    goto LABEL_75;
  }

  if (!v41)
  {
    v29 = +[SSLogConfig sharedConfig];
  }

  shouldLog5 = [v29 shouldLog];
  if ([v29 shouldLogToDisk])
  {
    v60 = shouldLog5 | 2;
  }

  else
  {
    v60 = shouldLog5;
  }

  oSLogObject5 = [v29 OSLogObject];
  if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
  {
    v62 = v60;
  }

  else
  {
    v62 = v60 & 2;
  }

  if (v62)
  {
    v63 = [optionsCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
    *location = 138543618;
    *&location[4] = self;
    v84 = 2114;
    v85 = v63;
    v64 = _os_log_send_and_compose_impl(v62, 0, 0, 0, &dword_1D48BA000, oSLogObject5, 0, "%{public}@: [%{public}@] Prompting the user to see if they want to create a new account.", location, 22);

    if (v64)
    {
      v65 = [MEMORY[0x1E696AEC0] stringWithCString:v64 encoding:4];
      free(v64);
      SSFileLog(v29, @"%@", v66, v67, v68, v69, v70, v71, v65);
    }
  }

  else
  {
  }

  v72 = objc_alloc_init(SSPromise);
  v74 = SSViTunesStoreFramework(v72, v73);
  v75 = objc_alloc_init(SSVWeakLinkedClassForString(&cfstr_Iscreateaccoun.isa, v74));
  objc_initWeak(location, v75);
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = __60__SSAccountStore__shouldCreateNewAccountForAccount_options___block_invoke;
  v80[3] = &unk_1E84AD870;
  objc_copyWeak(&v82, location);
  v24 = v72;
  v81 = v24;
  v76 = [v75 setCompletionBlock:v80];
  v78 = SSViTunesStoreFramework(v76, v77);
  v79 = [SSVWeakLinkedClassForString(&cfstr_Isoperationque.isa v78)];
  [v79 addOperation:v75];

  objc_destroyWeak(&v82);
  objc_destroyWeak(location);

LABEL_18:

  return v24;
}

void __60__SSAccountStore__shouldCreateNewAccountForAccount_options___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(WeakRetained, "responseType")}];
  [v2 finishWithResult:v3];
}

+ (BOOL)_allowSilentPasswordAuthForAccount:(id)account withOptions:(id)options
{
  v31 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  optionsCopy = options;
  if ([self _isBuddyRunning])
  {
    goto LABEL_16;
  }

  if ([accountCopy isDemoAccount])
  {
    v8 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      LODWORD(v10) = shouldLog | 2;
    }

    else
    {
      LODWORD(v10) = shouldLog;
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v10;
    }

    else
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v12 = objc_opt_class();
      v13 = v12;
      v14 = [optionsCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v27 = 138543618;
      v28 = v12;
      v29 = 2114;
      v30 = v14;
      v15 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_1D48BA000, oSLogObject, 0, "%{public}@: [%{public}@] Allowing silent authentication because the account is marked as a demo account.", &v27, 22);

      if (!v15)
      {
LABEL_15:

LABEL_16:
        bOOLValue = 1;
        goto LABEL_17;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:4];
      free(v15);
      SSFileLog(v8, @"%@", v16, v17, v18, v19, v20, v21, oSLogObject);
    }

    goto LABEL_15;
  }

  v24 = [optionsCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitAllowPasswordReuse"];
  bOOLValue = [v24 BOOLValue];

  if (+[SSDevice deviceIsAppleWatch])
  {
    v25 = [optionsCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitAllowPasswordReuse"];
    v26 = v25;
    if (v25)
    {
      bOOLValue = [v25 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }
  }

LABEL_17:

  return bOOLValue;
}

- (id)_updateAccountWithAuthKitViaPromptAuth:(id)auth store:(id)store options:(id)options
{
  authCopy = auth;
  storeCopy = store;
  optionsCopy = options;
  objc_initWeak(&location, self);
  v11 = [SSLazyPromise alloc];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71__SSAccountStore__updateAccountWithAuthKitViaPromptAuth_store_options___block_invoke;
  v16[3] = &unk_1E84AEBC0;
  objc_copyWeak(&v19, &location);
  v16[4] = self;
  v12 = optionsCopy;
  v17 = v12;
  v13 = authCopy;
  v18 = v13;
  v14 = [(SSLazyPromise *)v11 initWithBlock:v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v14;
}

void __71__SSAccountStore__updateAccountWithAuthKitViaPromptAuth_store_options___block_invoke(id *a1, void *a2)
{
  location[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if ([objc_opt_class() _isBuddyRunning])
  {
    v5 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (!v9)
    {

      goto LABEL_50;
    }

    v10 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
    LODWORD(location[0]) = 138543362;
    *(location + 4) = v10;
    v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_1D48BA000, v8, 0, "SSAccountStore: [%{public}@] Buddy is still running. We can't prompt the user to enter their password. Prompt auth won't run.", location, 12);

    if (v11)
    {
      goto LABEL_12;
    }

    goto LABEL_50;
  }

  v19 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitPreventPrompt"];
  v20 = [v19 BOOLValue];

  if (v20)
  {
    v5 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v21 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v22 = v21 | 2;
    }

    else
    {
      v22 = v21;
    }

    v23 = [v5 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v22;
    }

    else
    {
      v24 = v22 & 2;
    }

    if (!v24)
    {

      goto LABEL_50;
    }

    v25 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
    LODWORD(location[0]) = 138543362;
    *(location + 4) = v25;
    v11 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_1D48BA000, v23, 0, "SSAccountStore: [%{public}@] We were told not to prompt the user.", location, 12);

    if (v11)
    {
LABEL_12:
      v12 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:4];
      free(v11);
      SSFileLog(v5, @"%@", v13, v14, v15, v16, v17, v18, v12);
    }

LABEL_50:

    v53 = SSError(@"SSErrorDomain", 132, 0, 0);
    [v3 finishWithError:v53];
    goto LABEL_55;
  }

  if (a1[6] || !SSRestrictionsShouldRestrictAccountModification())
  {
    v40 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v40)
    {
      v40 = +[SSLogConfig sharedConfig];
    }

    v41 = [v40 shouldLog];
    if ([v40 shouldLogToDisk])
    {
      LODWORD(v42) = v41 | 2;
    }

    else
    {
      LODWORD(v42) = v41;
    }

    v43 = [v40 OSLogObject];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v42 = v42;
    }

    else
    {
      v42 &= 2u;
    }

    if (v42)
    {
      v44 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v44;
      v45 = _os_log_send_and_compose_impl(v42, 0, 0, 0, &dword_1D48BA000, v43, 0, "SSAccountStore: [%{public}@] Prompting the user for their password.", location, 12);

      if (v45)
      {
        v46 = [MEMORY[0x1E696AEC0] stringWithCString:v45 encoding:4];
        free(v45);
        SSFileLog(v40, @"%@", v47, v48, v49, v50, v51, v52, v46);
      }
    }

    else
    {
    }

    v53 = [objc_opt_class() _createAuthenticationController];
    v54 = a1 + 6;
    v55 = a1 + 5;
    v56 = [objc_opt_class() _createAuthenticationContextForAccount:a1[6] silentAuthentication:0 options:a1[5]];
    v58 = a1[4];
    v57 = a1 + 4;
    [v53 setDelegate:v58];
    objc_initWeak(location, *v57);
    objc_initWeak(&from, v53);
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __71__SSAccountStore__updateAccountWithAuthKitViaPromptAuth_store_options___block_invoke_363;
    v61[3] = &unk_1E84AEB98;
    objc_copyWeak(&v67, location);
    objc_copyWeak(&v68, &from);
    v59 = v56;
    v60 = *v57;
    v62 = v59;
    v63 = v60;
    v64 = *v54;
    v65 = *v55;
    v66 = v3;
    [v53 authenticateWithContext:v59 completion:v61];

    objc_destroyWeak(&v68);
    objc_destroyWeak(&v67);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);
  }

  else
  {
    v26 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v26)
    {
      v26 = +[SSLogConfig sharedConfig];
    }

    v27 = [v26 shouldLog];
    if ([v26 shouldLogToDisk])
    {
      v28 = v27 | 2;
    }

    else
    {
      v28 = v27;
    }

    v29 = [v26 OSLogObject];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = v28;
    }

    else
    {
      v30 = v28 & 2;
    }

    if (v30)
    {
      v31 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v31;
      v32 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &dword_1D48BA000, v29, 16, "SSAccountStore: [%{public}@] Refusing to prompt the user. Account creation isn't allowed and this would create a new account.", location, 12);

      if (v32)
      {
        v33 = [MEMORY[0x1E696AEC0] stringWithCString:v32 encoding:4];
        free(v32);
        SSFileLog(v26, @"%@", v34, v35, v36, v37, v38, v39, v33);
      }
    }

    else
    {
    }

    v53 = SSError(@"SSErrorDomain", 107, 0, 0);
    [v3 finishWithError:v53];
  }

LABEL_55:
}

void __71__SSAccountStore__updateAccountWithAuthKitViaPromptAuth_store_options___block_invoke_363(uint64_t a1, void *a2, void *a3)
{
  v54[1] = *MEMORY[0x1E69E9840];
  v44 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v7 = objc_loadWeakRetained((a1 + 80));
  [v7 setDelegate:0];

  v8 = objc_alloc_init(SSMetricsDialogEvent);
  [(SSMetricsDialogEvent *)v8 setDialogType:@"SignIn"];
  [(SSMetricsMutableEvent *)v8 setEventType:@"dialog"];
  v42 = [*(a1 + 32) username];
  v9 = [v42 length];
  v10 = SSMetricsDialogEventIdPassword;
  if (!v9)
  {
    v10 = SSMetricsDialogEventIdUserNamePassword;
  }

  v41 = *v10;
  [(SSMetricsDialogEvent *)v8 setDialogId:?];
  if (v5)
  {
    if ([v5 code] == -7003)
    {
      [(SSMetricsDialogEvent *)v8 setActionType:@"cancel"];
      [(SSMetricsDialogEvent *)v8 setTargetId:@"Cancel"];
    }

    else
    {
      [(SSMetricsDialogEvent *)v8 setTargetId:@"Ok"];
      [(SSMetricsDialogEvent *)v8 setActionType:@"enterPassword"];
    }

    v11 = SSMetricsDialogEventResultFailure;
  }

  else
  {
    [(SSMetricsDialogEvent *)v8 setTargetId:@"Ok"];
    [(SSMetricsDialogEvent *)v8 setActionType:@"ok"];
    v11 = SSMetricsDialogEventResultSuccess;
  }

  [(SSMetricsDialogEvent *)v8 setResult:*v11];
  v12 = [*(a1 + 32) clientInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v12 objectForKey:@"metricsAuthenticationAttempts"];
    [(SSMetricsDialogEvent *)v8 setUserActions:v13];
  }

  v43 = WeakRetained;
  v14 = [v12 objectForKeyedSubscript:@"SSAccountStoreAuthKitCreateAccountQueryParamsKey"];
  v40 = v14;
  if (v14)
  {
    v15 = [v14 objectForKeyedSubscript:@"product"];
    v16 = v15;
    if (v15)
    {
      v53 = @"buyParams";
      v54[0] = v15;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
      [(SSMetricsDialogEvent *)v8 setDetails:v17];

      v18 = [*(a1 + 40) _buyParamsForBuyParamsString:v16];
      v19 = [v18 objectForKeyedSubscript:@"mtTopic"];
      if (v19)
      {
        [(SSMetricsMutableEvent *)v8 setTopic:v19];
      }
    }

    else
    {
      v51 = @"buyParams";
      v52 = MEMORY[0x1E695E0F8];
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      [(SSMetricsDialogEvent *)v8 setDetails:v18];
      v19 = 0;
    }
  }

  else
  {
    v49 = @"buyParams";
    v50 = MEMORY[0x1E695E0F8];
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    [(SSMetricsDialogEvent *)v8 setDetails:v16];
    v19 = 0;
  }

  v20 = [v12 objectForKeyedSubscript:@"SSAccountStoreAuthKitUserAgentKey"];
  if (v20)
  {
    [(SSMetricsMutableEvent *)v8 setProperty:v20 forBodyKey:@"userAgent"];
  }

  if (v8)
  {
    [*(a1 + 40) _recordAnalyticsForMetricsDialogEvent:v8 withTopic:v19];
  }

  v21 = [v44 objectForKeyedSubscript:*MEMORY[0x1E698DBC8]];
  if ([v21 length])
  {
    v22 = v43;
    v23 = [objc_opt_class() _createUpdatedAccount:*(a1 + 48) withAuthenticationResults:v44 options:*(a1 + 56)];
    v24 = [[SSUpdateAccountResponse alloc] initWithUpdatedAccount:v23 credentialSource:1];
    [*(a1 + 64) finishWithResult:v24];

    goto LABEL_40;
  }

  v39 = v5;
  v25 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v25)
  {
    v25 = +[SSLogConfig sharedConfig];
  }

  v26 = [v25 shouldLog];
  if ([v25 shouldLogToDisk])
  {
    LODWORD(v27) = v26 | 2;
  }

  else
  {
    LODWORD(v27) = v26;
  }

  v28 = [v25 OSLogObject];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v27 = v27;
  }

  else
  {
    v27 &= 2u;
  }

  if (!v27)
  {
    goto LABEL_35;
  }

  v29 = [*(a1 + 56) objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
  v45 = 138543618;
  v46 = v29;
  v47 = 2112;
  v48 = v39;
  v30 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &dword_1D48BA000, v28, 16, "SSAccountStore: [%{public}@] Failed to update the account by prompting the user for their password. The authentication will fail. error = %@", &v45, 22);

  if (v30)
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithCString:v30 encoding:4];
    free(v30);
    SSFileLog(v25, @"%@", v31, v32, v33, v34, v35, v36, v28);
LABEL_35:
  }

  v37 = *(a1 + 64);
  v5 = v39;
  if (v39)
  {
    [*(a1 + 64) finishWithError:v39];
  }

  else
  {
    v38 = SSError(@"SSErrorDomain", 100, 0, 0);
    [v37 finishWithError:v38];
  }

  v22 = v43;
LABEL_40:
}

- (id)_updateAccountWithAuthKitViaSilentAuth:(id)auth options:(id)options
{
  authCopy = auth;
  optionsCopy = options;
  objc_initWeak(&location, self);
  v8 = [SSLazyPromise alloc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__SSAccountStore__updateAccountWithAuthKitViaSilentAuth_options___block_invoke;
  v13[3] = &unk_1E84AEC10;
  objc_copyWeak(&v16, &location);
  v9 = authCopy;
  v14 = v9;
  v10 = optionsCopy;
  v15 = v10;
  v11 = [(SSLazyPromise *)v8 initWithBlock:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v11;
}

void __65__SSAccountStore__updateAccountWithAuthKitViaSilentAuth_options___block_invoke(id *a1, void *a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (a1[4])
  {
    v5 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitAllowSilentAuth"];
    v6 = [v5 BOOLValue];

    if (+[SSDevice deviceIsAppleWatch])
    {
      v7 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitAllowSilentAuth"];
      v8 = v7;
      if (v7)
      {
        v6 = [v7 BOOLValue];
      }

      else
      {
        v6 = 1;
      }
    }

    if ([objc_opt_class() _isBuddyRunning])
    {
      v24 = +[SSLogConfig sharedAccountsAuthenticationConfig];
      if (!v24)
      {
        v24 = +[SSLogConfig sharedConfig];
      }

      v25 = [v24 shouldLog];
      if ([v24 shouldLogToDisk])
      {
        LODWORD(v26) = v25 | 2;
      }

      else
      {
        LODWORD(v26) = v25;
      }

      v27 = [v24 OSLogObject];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v26;
      }

      else
      {
        v26 &= 2u;
      }

      if (v26)
      {
        v28 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
        v70 = 138543362;
        v71 = v28;
        v29 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &dword_1D48BA000, v27, 0, "SSAccountStore: [%{public}@] Attempting to update the account silently while we're running Buddy.", &v70, 12);

        if (v29)
        {
          v30 = [MEMORY[0x1E696AEC0] stringWithCString:v29 encoding:4];
          free(v29);
          SSFileLog(v24, @"%@", v31, v32, v33, v34, v35, v36, v30);
        }
      }

      else
      {
      }

LABEL_46:
      v51 = +[SSLogConfig sharedAccountsAuthenticationConfig];
      if (!v51)
      {
        v51 = +[SSLogConfig sharedConfig];
      }

      v52 = [v51 shouldLog];
      if ([v51 shouldLogToDisk])
      {
        LODWORD(v53) = v52 | 2;
      }

      else
      {
        LODWORD(v53) = v52;
      }

      v54 = [v51 OSLogObject];
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v53 = v53;
      }

      else
      {
        v53 &= 2u;
      }

      if (v53)
      {
        v55 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
        v70 = 138543362;
        v71 = v55;
        LODWORD(v64) = 12;
        v56 = _os_log_send_and_compose_impl(v53, 0, 0, 0, &dword_1D48BA000, v54, 0, "SSAccountStore: [%{public}@] Attempting to update the account silently.", &v70, v64);

        if (!v56)
        {
LABEL_58:

          v23 = [objc_opt_class() _createAuthenticationController];
          v63 = [objc_opt_class() _createAuthenticationContextForAccount:a1[4] silentAuthentication:1 options:a1[5]];
          v65[0] = MEMORY[0x1E69E9820];
          v65[1] = 3221225472;
          v65[2] = __65__SSAccountStore__updateAccountWithAuthKitViaSilentAuth_options___block_invoke_369;
          v65[3] = &unk_1E84AEBE8;
          objc_copyWeak(&v69, a1 + 6);
          v66 = a1[5];
          v67 = a1[4];
          v68 = v3;
          [v23 authenticateWithContext:v63 completion:v65];

          objc_destroyWeak(&v69);
          goto LABEL_61;
        }

        v54 = [MEMORY[0x1E696AEC0] stringWithCString:v56 encoding:4];
        free(v56);
        SSFileLog(v51, @"%@", v57, v58, v59, v60, v61, v62, v54);
      }

      goto LABEL_58;
    }

    if (v6)
    {
      goto LABEL_46;
    }

    v37 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v37)
    {
      v37 = +[SSLogConfig sharedConfig];
    }

    v38 = [v37 shouldLog];
    if ([v37 shouldLogToDisk])
    {
      v39 = v38 | 2;
    }

    else
    {
      v39 = v38;
    }

    v40 = [v37 OSLogObject];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = v39;
    }

    else
    {
      v41 = v39 & 2;
    }

    if (v41)
    {
      v42 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v70 = 138543362;
      v71 = v42;
      v43 = _os_log_send_and_compose_impl(v41, 0, 0, 0, &dword_1D48BA000, v40, 0, "SSAccountStore: [%{public}@] We aren't allowed to attempt silent authentication.", &v70, 12);

      if (v43)
      {
        v44 = [MEMORY[0x1E696AEC0] stringWithCString:v43 encoding:4];
        free(v43);
        SSFileLog(v37, @"%@", v45, v46, v47, v48, v49, v50, v44);
      }
    }

    else
    {
    }

    v23 = SSError(@"SSErrorDomain", 106, 0, @"Silent authentication isn't allowed.");
    [v3 finishWithError:v23];
  }

  else
  {
    v9 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    v12 = [v9 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 2;
    }

    if (v13)
    {
      v14 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v70 = 138543362;
      v71 = v14;
      v15 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_1D48BA000, v12, 1, "SSAccountStore: [%{public}@] Unable to perform silent authentication if we don't have an account.", &v70, 12);

      if (v15)
      {
        v16 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:4];
        free(v15);
        SSFileLog(v9, @"%@", v17, v18, v19, v20, v21, v22, v16);
      }
    }

    else
    {
    }

    v23 = SSError(@"SSErrorDomain", 100, 0, 0);
    [v3 finishWithError:v23];
  }

LABEL_61:
}

void __65__SSAccountStore__updateAccountWithAuthKitViaSilentAuth_options___block_invoke_369(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBC8]];
  v9 = [v8 length];
  v10 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  v11 = v10;
  if (v9)
  {
    if (!v10)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      LODWORD(v13) = v12 | 2;
    }

    else
    {
      LODWORD(v13) = v12;
    }

    v14 = [v11 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v13;
    }

    else
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v15 = [*(a1 + 32) objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v37 = 138543362;
      v38 = v15;
      v16 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_1D48BA000, v14, 0, "SSAccountStore: [%{public}@] Successfully updated the account silently.", &v37, 12);

      if (!v16)
      {
LABEL_14:

        v23 = [objc_opt_class() _createUpdatedAccount:*(a1 + 40) withAuthenticationResults:v5 options:*(a1 + 32)];
        v24 = [[SSUpdateAccountResponse alloc] initWithUpdatedAccount:v23 credentialSource:3];
        [*(a1 + 48) finishWithResult:v24];

        goto LABEL_15;
      }

      v14 = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:4];
      free(v16);
      SSFileLog(v11, @"%@", v17, v18, v19, v20, v21, v22, v14);
    }

    goto LABEL_14;
  }

  if (!v10)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  v25 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    LODWORD(v26) = v25 | 2;
  }

  else
  {
    LODWORD(v26) = v25;
  }

  v27 = [v11 OSLogObject];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v26 = v26;
  }

  else
  {
    v26 &= 2u;
  }

  if (!v26)
  {
    goto LABEL_27;
  }

  v28 = [*(a1 + 32) objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
  v37 = 138543618;
  v38 = v28;
  v39 = 2112;
  v40 = v6;
  v29 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &dword_1D48BA000, v27, 16, "SSAccountStore: [%{public}@] Failed to silently update the account. error = %@", &v37, 22);

  if (v29)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithCString:v29 encoding:4];
    free(v29);
    SSFileLog(v11, @"%@", v30, v31, v32, v33, v34, v35, v27);
LABEL_27:
  }

  v36 = *(a1 + 48);
  if (v6)
  {
    [v36 finishWithError:v6];
    goto LABEL_30;
  }

  v23 = SSError(@"SSErrorDomain", 100, 0, 0);
  [v36 finishWithError:v23];
LABEL_15:

LABEL_30:
}

- (id)_updateAccountWithAuthKitViaSilentPasswordAuth:(id)auth options:(id)options
{
  authCopy = auth;
  optionsCopy = options;
  objc_initWeak(&location, self);
  v8 = [SSLazyPromise alloc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__SSAccountStore__updateAccountWithAuthKitViaSilentPasswordAuth_options___block_invoke;
  v13[3] = &unk_1E84AEBC0;
  objc_copyWeak(&v17, &location);
  v9 = authCopy;
  v14 = v9;
  v10 = optionsCopy;
  v15 = v10;
  selfCopy = self;
  v11 = [(SSLazyPromise *)v8 initWithBlock:v13];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v11;
}

void __73__SSAccountStore__updateAccountWithAuthKitViaSilentPasswordAuth_options___block_invoke(id *a1, void *a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (a1[4])
  {
    if ([objc_opt_class() _allowSilentPasswordAuthForAccount:a1[4] withOptions:a1[5]])
    {
      v5 = [a1[4] rawPassword];
      v6 = +[SSLogConfig sharedAccountsAuthenticationConfig];
      v7 = v6;
      if (v5)
      {
        if (!v6)
        {
          v7 = +[SSLogConfig sharedConfig];
        }

        v8 = [v7 shouldLog];
        if ([v7 shouldLogToDisk])
        {
          LODWORD(v9) = v8 | 2;
        }

        else
        {
          LODWORD(v9) = v8;
        }

        v10 = [v7 OSLogObject];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v9;
        }

        else
        {
          v9 &= 2u;
        }

        if (v9)
        {
          v11 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
          v70 = 138543362;
          v71 = v11;
          v12 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_1D48BA000, v10, 0, "SSAccountStore: [%{public}@] We were given a raw password. We'll attempt to convert it into a PET.", &v70, 12);

          if (v12)
          {
            v13 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:4];
            free(v12);
            SSFileLog(v7, @"%@", v14, v15, v16, v17, v18, v19, v13);
          }
        }

        else
        {
        }

        v61 = [a1[6] _convertPasswordToPET:v5 forAccount:a1[4] options:a1[5]];
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __73__SSAccountStore__updateAccountWithAuthKitViaSilentPasswordAuth_options___block_invoke_373;
        v65[3] = &unk_1E84AEC38;
        objc_copyWeak(&v69, a1 + 7);
        v66 = a1[4];
        v67 = a1[5];
        v62 = v3;
        v68 = v62;
        [v61 addSuccessBlock:v65];
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = __73__SSAccountStore__updateAccountWithAuthKitViaSilentPasswordAuth_options___block_invoke_2;
        v63[3] = &unk_1E84AD730;
        v64 = v62;
        [v61 addErrorBlock:v63];

        objc_destroyWeak(&v69);
      }

      else
      {
        if (!v6)
        {
          v7 = +[SSLogConfig sharedConfig];
        }

        v48 = [v7 shouldLog];
        if ([v7 shouldLogToDisk])
        {
          v49 = v48 | 2;
        }

        else
        {
          v49 = v48;
        }

        v50 = [v7 OSLogObject];
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = v49;
        }

        else
        {
          v51 = v49 & 2;
        }

        if (v51)
        {
          v52 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
          v70 = 138543362;
          v71 = v52;
          v53 = _os_log_send_and_compose_impl(v51, 0, 0, 0, &dword_1D48BA000, v50, 0, "SSAccountStore: [%{public}@] We don't have a raw password to convert into a PET.", &v70, 12);

          if (v53)
          {
            v54 = [MEMORY[0x1E696AEC0] stringWithCString:v53 encoding:4];
            free(v53);
            SSFileLog(v7, @"%@", v55, v56, v57, v58, v59, v60, v54);
          }
        }

        else
        {
        }

        v61 = SSError(@"SSErrorDomain", 139, 0, 0);
        [v3 finishWithError:v61];
      }
    }

    else
    {
      v34 = +[SSLogConfig sharedAccountsAuthenticationConfig];
      if (!v34)
      {
        v34 = +[SSLogConfig sharedConfig];
      }

      v35 = [v34 shouldLog];
      if ([v34 shouldLogToDisk])
      {
        v36 = v35 | 2;
      }

      else
      {
        v36 = v35;
      }

      v37 = [v34 OSLogObject];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = v36;
      }

      else
      {
        v38 = v36 & 2;
      }

      if (v38)
      {
        v39 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
        v70 = 138543362;
        v71 = v39;
        v40 = _os_log_send_and_compose_impl(v38, 0, 0, 0, &dword_1D48BA000, v37, 0, "SSAccountStore: [%{public}@] We weren't told to allow silent password authentication.", &v70, 12);

        if (v40)
        {
          v41 = [MEMORY[0x1E696AEC0] stringWithCString:v40 encoding:4];
          free(v40);
          SSFileLog(v34, @"%@", v42, v43, v44, v45, v46, v47, v41);
        }
      }

      else
      {
      }

      v5 = SSError(@"SSErrorDomain", 106, 0, @"Silent password authentication isn't allowed.");
      [v3 finishWithError:v5];
    }
  }

  else
  {
    v20 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v20)
    {
      v20 = +[SSLogConfig sharedConfig];
    }

    v21 = [v20 shouldLog];
    if ([v20 shouldLogToDisk])
    {
      v22 = v21 | 2;
    }

    else
    {
      v22 = v21;
    }

    v23 = [v20 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = v22;
    }

    else
    {
      v24 = v22 & 2;
    }

    if (v24)
    {
      v25 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v70 = 138543362;
      v71 = v25;
      v26 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_1D48BA000, v23, 1, "SSAccountStore: [%{public}@] Unable to perform silent password authentication if we don't have an account.", &v70, 12);

      if (v26)
      {
        v27 = [MEMORY[0x1E696AEC0] stringWithCString:v26 encoding:4];
        free(v26);
        SSFileLog(v20, @"%@", v28, v29, v30, v31, v32, v33, v27);
      }
    }

    else
    {
    }

    v5 = SSError(@"SSErrorDomain", 100, 0, 0);
    [v3 finishWithError:v5];
  }
}

void __73__SSAccountStore__updateAccountWithAuthKitViaSilentPasswordAuth_options___block_invoke_373(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [objc_opt_class() _createUpdatedAccount:*(a1 + 32) withAuthenticationResults:v3 options:*(a1 + 40)];

  v5 = [[SSUpdateAccountResponse alloc] initWithUpdatedAccount:v4 credentialSource:5];
  [*(a1 + 48) finishWithResult:v5];
}

void __73__SSAccountStore__updateAccountWithAuthKitViaSilentPasswordAuth_options___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 finishWithError:a2];
  }

  else
  {
    v4 = SSError(@"SSErrorDomain", 100, 0, 0);
    [v2 finishWithError:v4];
  }
}

- (id)_updateAccountWithAuthKitViaSilentPETAuth:(id)auth options:(id)options
{
  authCopy = auth;
  optionsCopy = options;
  objc_initWeak(&location, self);
  v8 = [SSLazyPromise alloc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__SSAccountStore__updateAccountWithAuthKitViaSilentPETAuth_options___block_invoke;
  v13[3] = &unk_1E84AEC10;
  objc_copyWeak(&v16, &location);
  v9 = authCopy;
  v14 = v9;
  v10 = optionsCopy;
  v15 = v10;
  v11 = [(SSLazyPromise *)v8 initWithBlock:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v11;
}

void __68__SSAccountStore__updateAccountWithAuthKitViaSilentPETAuth_options___block_invoke(id *a1, void *a2)
{
  v107 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (!a1[4])
  {
    v35 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v35)
    {
      v35 = +[SSLogConfig sharedConfig];
    }

    v36 = [v35 shouldLog];
    if ([v35 shouldLogToDisk])
    {
      LODWORD(v37) = v36 | 2;
    }

    else
    {
      LODWORD(v37) = v36;
    }

    v38 = [v35 OSLogObject];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v37 = v37;
    }

    else
    {
      v37 &= 2u;
    }

    if (v37)
    {
      v39 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      LODWORD(v106) = 138543362;
      *(&v106 + 4) = v39;
      v40 = _os_log_send_and_compose_impl(v37, 0, 0, 0, &dword_1D48BA000, v38, 1, "SSAccountStore: [%{public}@] Unable to perform silent PET authentication if we don't have an account.", &v106, 12);

      if (!v40)
      {
LABEL_45:

        v47 = 100;
LABEL_46:
        v48 = 0;
LABEL_60:
        v6 = SSError(@"SSErrorDomain", v47, 0, v48);
        [v3 finishWithError:v6];
        goto LABEL_61;
      }

      v38 = [MEMORY[0x1E696AEC0] stringWithCString:v40 encoding:4];
      free(v40);
      SSFileLog(v35, @"%@", v41, v42, v43, v44, v45, v46, v38);
    }

    goto LABEL_45;
  }

  if (([objc_opt_class() _allowSilentPasswordAuthForAccount:a1[4] withOptions:a1[5]] & 1) == 0)
  {
    v49 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v49)
    {
      v49 = +[SSLogConfig sharedConfig];
    }

    v50 = [v49 shouldLog];
    if ([v49 shouldLogToDisk])
    {
      LODWORD(v51) = v50 | 2;
    }

    else
    {
      LODWORD(v51) = v50;
    }

    v52 = [v49 OSLogObject];
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v51 = v51;
    }

    else
    {
      v51 &= 2u;
    }

    if (v51)
    {
      v53 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      LODWORD(v106) = 138543362;
      *(&v106 + 4) = v53;
      v54 = _os_log_send_and_compose_impl(v51, 0, 0, 0, &dword_1D48BA000, v52, 0, "SSAccountStore: [%{public}@] We weren't told to allow silent PET authentication.", &v106, 12);

      if (!v54)
      {
LABEL_59:

        v48 = @"Silent password authentication isn't allowed.";
        v47 = 106;
        goto LABEL_60;
      }

      v52 = [MEMORY[0x1E696AEC0] stringWithCString:v54 encoding:4];
      free(v54);
      SSFileLog(v49, @"%@", v55, v56, v57, v58, v59, v60, v52);
    }

    goto LABEL_59;
  }

  v5 = [a1[4] passwordEquivalentToken];
  if (!v5)
  {
    v61 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitPreventSecondaryAccountPETLookup"];
    v62 = [v61 BOOLValue];

    v63 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    v64 = v63;
    if (v62)
    {
      if (!v63)
      {
        v64 = +[SSLogConfig sharedConfig];
      }

      v65 = [v64 shouldLog];
      if ([v64 shouldLogToDisk])
      {
        LODWORD(v66) = v65 | 2;
      }

      else
      {
        LODWORD(v66) = v65;
      }

      v67 = [v64 OSLogObject];
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v66 = v66;
      }

      else
      {
        v66 &= 2u;
      }

      if (!v66)
      {
        goto LABEL_111;
      }

      v68 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      LODWORD(v106) = 138543362;
      *(&v106 + 4) = v68;
      v69 = _os_log_send_and_compose_impl(v66, 0, 0, 0, &dword_1D48BA000, v67, 0, "SSAccountStore: [%{public}@] We weren't given a PET, and we were told not to check alternate accounts for one.", &v106, 12, v106);
LABEL_109:
      v98 = v69;

      if (!v98)
      {
LABEL_112:

        v47 = 139;
        goto LABEL_46;
      }

      v67 = [MEMORY[0x1E696AEC0] stringWithCString:v98 encoding:4];
      free(v98);
      SSFileLog(v64, @"%@", v99, v100, v101, v102, v103, v104, v67);
LABEL_111:

      goto LABEL_112;
    }

    if (!v63)
    {
      v64 = +[SSLogConfig sharedConfig];
    }

    v70 = [v64 shouldLog];
    if ([v64 shouldLogToDisk])
    {
      LODWORD(v71) = v70 | 2;
    }

    else
    {
      LODWORD(v71) = v70;
    }

    v72 = [v64 OSLogObject];
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      v71 = v71;
    }

    else
    {
      v71 &= 2u;
    }

    if (v71)
    {
      v73 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      LODWORD(v106) = 138543362;
      *(&v106 + 4) = v73;
      v74 = _os_log_send_and_compose_impl(v71, 0, 0, 0, &dword_1D48BA000, v72, 0, "SSAccountStore: [%{public}@] We weren't given a PET. We'll check alternate accounts for one.", &v106, 12);

      if (!v74)
      {
        goto LABEL_85;
      }

      v72 = [MEMORY[0x1E696AEC0] stringWithCString:v74 encoding:4];
      free(v74);
      SSFileLog(v64, @"%@", v75, v76, v77, v78, v79, v80, v72);
    }

LABEL_85:
    v81 = [a1[4] altDSID];
    v82 = [a1[4] uniqueIdentifier];
    v83 = [a1[4] accountName];
    v6 = [WeakRetained _passwordEquivalentTokenFromAlternateAccountWithAltDSID:v81 DSID:v82 username:v83];

    v84 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    v64 = v84;
    if (!v6)
    {
      if (!v84)
      {
        v64 = +[SSLogConfig sharedConfig];
      }

      v96 = [v64 shouldLog];
      if ([v64 shouldLogToDisk])
      {
        LODWORD(v97) = v96 | 2;
      }

      else
      {
        LODWORD(v97) = v96;
      }

      v67 = [v64 OSLogObject];
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v97 = v97;
      }

      else
      {
        v97 &= 2u;
      }

      if (!v97)
      {
        goto LABEL_111;
      }

      v68 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      LODWORD(v106) = 138543362;
      *(&v106 + 4) = v68;
      LODWORD(v105) = 12;
      v69 = _os_log_send_and_compose_impl(v97, 0, 0, 0, &dword_1D48BA000, v67, 0, "SSAccountStore: [%{public}@] Unable to get a PET from an alternate account.", &v106, v105, v106);
      goto LABEL_109;
    }

    if (!v84)
    {
      v64 = +[SSLogConfig sharedConfig];
    }

    v85 = [v64 shouldLog];
    if ([v64 shouldLogToDisk])
    {
      LODWORD(v86) = v85 | 2;
    }

    else
    {
      LODWORD(v86) = v85;
    }

    v87 = [v64 OSLogObject];
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      v86 = v86;
    }

    else
    {
      v86 &= 2u;
    }

    if (v86)
    {
      v88 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      LODWORD(v106) = 138543362;
      *(&v106 + 4) = v88;
      LODWORD(v105) = 12;
      v89 = _os_log_send_and_compose_impl(v86, 0, 0, 0, &dword_1D48BA000, v87, 0, "SSAccountStore: [%{public}@] Found a PET on an alternate account we can use.", &v106, v105);

      if (!v89)
      {
LABEL_98:

        v19 = [a1[4] setPasswordEquivalentToken:v6];
        v21 = 2;
        goto LABEL_17;
      }

      v87 = [MEMORY[0x1E696AEC0] stringWithCString:v89 encoding:4];
      free(v89);
      SSFileLog(v64, @"%@", v90, v91, v92, v93, v94, v95, v87);
    }

    goto LABEL_98;
  }

  v6 = v5;
  v7 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    LODWORD(v9) = v8 | 2;
  }

  else
  {
    LODWORD(v9) = v8;
  }

  v10 = [v7 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v9;
  }

  else
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_15;
  }

  v11 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
  LODWORD(v106) = 138543362;
  *(&v106 + 4) = v11;
  v12 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_1D48BA000, v10, 0, "SSAccountStore: [%{public}@] The account already has a PET we can use.", &v106, 12);

  if (v12)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:4];
    free(v12);
    SSFileLog(v7, @"%@", v13, v14, v15, v16, v17, v18, v10);
LABEL_15:
  }

  v21 = 4;
LABEL_17:
  if (!SSIsInternalBuild(v19, v20) || !NSStringIsNotPET(v6))
  {
    goto LABEL_32;
  }

  v22 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v22)
  {
    v22 = +[SSLogConfig sharedConfig];
  }

  v23 = [v22 shouldLog];
  if ([v22 shouldLogToDisk])
  {
    LODWORD(v24) = v23 | 2;
  }

  else
  {
    LODWORD(v24) = v23;
  }

  v25 = [v22 OSLogObject];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v24 = v24;
  }

  else
  {
    v24 &= 2u;
  }

  if (!v24)
  {
    goto LABEL_30;
  }

  v26 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
  LODWORD(v106) = 138543362;
  *(&v106 + 4) = v26;
  LODWORD(v105) = 12;
  v27 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_1D48BA000, v25, 16, "SSAccountStore: [%{public}@] The PET appears to be misformed and could be a raw password.", &v106, v105);

  if (v27)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithCString:v27 encoding:4];
    free(v27);
    SSFileLog(v22, @"%@", v28, v29, v30, v31, v32, v33, v25);
LABEL_30:
  }

LABEL_32:
  v34 = [[SSUpdateAccountResponse alloc] initWithUpdatedAccount:a1[4] credentialSource:v21];
  [v3 finishWithResult:v34];

LABEL_61:
}

- (id)addAccount:(id)account
{
  accountCopy = account;
  v5 = 0;
  if ([(SSAccountStore *)self saveAccount:accountCopy error:0])
  {
    v5 = [objc_opt_class() _refreshAccount:accountCopy];
  }

  return v5;
}

- (BOOL)isExpiredForTokenType:(int64_t)type
{
  v4 = objc_opt_class();

  return [v4 isExpiredForTokenType:type];
}

- (void)setAccountCredits:(id)credits forAccountWithUniqueIdentifier:(id)identifier
{
  creditsCopy = credits;
  v6 = [(SSAccountStore *)self accountWithUniqueIdentifier:identifier];
  v7 = v6;
  if (v6)
  {
    [v6 setCreditsString:creditsCopy];
  }
}

- (id)setActiveAccount:(id)account
{
  v47 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v5 = accountCopy;
  if (!accountCopy)
  {
    v7 = +[SSLogConfig sharedAccountsConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = shouldLog | 2;
    }

    else
    {
      LODWORD(v9) = shouldLog;
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v41 = 138543362;
      v42 = objc_opt_class();
      v11 = v42;
      v12 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@: Someone is setting the active account to nil. [SSAccountStore setActiveAccount:] is deprecated. The caller should get the active account, set its active property to NO, and save it.", &v41, 12);

      if (!v12)
      {
        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:4];
      free(v12);
      SSFileLog(v7, @"%@", v13, v14, v15, v16, v17, v18, oSLogObject);
    }

LABEL_16:
    activeAccount = [(SSAccountStore *)self activeAccount];
    v20 = activeAccount;
    if (!activeAccount)
    {
LABEL_32:

      v6 = 0;
      goto LABEL_33;
    }

    [activeAccount setActive:0];
    v40 = 0;
    v21 = [(SSAccountStore *)self saveAccount:v20 verifyCredentials:0 error:&v40];
    v22 = v40;
    if (v21)
    {
LABEL_31:

      goto LABEL_32;
    }

    v23 = +[SSLogConfig sharedAccountsConfig];
    if (!v23)
    {
      v23 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v23 shouldLog];
    if ([v23 shouldLogToDisk])
    {
      LODWORD(v25) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v25) = shouldLog2;
    }

    oSLogObject2 = [v23 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v25 = v25;
    }

    else
    {
      v25 &= 2u;
    }

    if (v25)
    {
      v27 = objc_opt_class();
      v28 = v27;
      accountName = [v20 accountName];
      v30 = SSHashIfNeeded(accountName);
      v41 = 138543874;
      v42 = v27;
      v43 = 2114;
      v44 = v30;
      v45 = 2112;
      v46 = v22;
      LODWORD(v39) = 32;
      v31 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 16, "%{public}@: Failed to deactivate the active account, %{public}@. error = %@", &v41, v39);

      if (!v31)
      {
LABEL_30:

        goto LABEL_31;
      }

      oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v31 encoding:4];
      free(v31);
      SSFileLog(v23, @"%@", v32, v33, v34, v35, v36, v37, oSLogObject2);
    }

    goto LABEL_30;
  }

  [accountCopy setActive:1];
  v6 = 0;
  if ([(SSAccountStore *)self saveAccount:v5 error:0])
  {
    v6 = [objc_opt_class() _refreshAccount:v5];
  }

LABEL_33:

  return v6;
}

- (id)setActiveLockerAccount:(id)account
{
  v47 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v5 = accountCopy;
  if (!accountCopy)
  {
    v7 = +[SSLogConfig sharedAccountsConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = shouldLog | 2;
    }

    else
    {
      LODWORD(v9) = shouldLog;
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v41 = 138543362;
      v42 = objc_opt_class();
      v11 = v42;
      v12 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@: Someone is setting the active account to nil. [SSAccountStore setActiveLockerAccount:] is deprecated. The caller should get the active locker account, set its activeLocker property to NO, and save it.", &v41, 12);

      if (!v12)
      {
        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:4];
      free(v12);
      SSFileLog(v7, @"%@", v13, v14, v15, v16, v17, v18, oSLogObject);
    }

LABEL_16:
    activeLockerAccount = [(SSAccountStore *)self activeLockerAccount];
    v20 = activeLockerAccount;
    if (!activeLockerAccount)
    {
LABEL_32:

      v6 = 0;
      goto LABEL_33;
    }

    [activeLockerAccount setActiveLockerAccount:0];
    v40 = 0;
    v21 = [(SSAccountStore *)self saveAccount:v20 verifyCredentials:0 error:&v40];
    v22 = v40;
    if (v21)
    {
LABEL_31:

      goto LABEL_32;
    }

    v23 = +[SSLogConfig sharedAccountsConfig];
    if (!v23)
    {
      v23 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v23 shouldLog];
    if ([v23 shouldLogToDisk])
    {
      LODWORD(v25) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v25) = shouldLog2;
    }

    oSLogObject2 = [v23 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v25 = v25;
    }

    else
    {
      v25 &= 2u;
    }

    if (v25)
    {
      v27 = objc_opt_class();
      v28 = v27;
      accountName = [v20 accountName];
      v30 = SSHashIfNeeded(accountName);
      v41 = 138543874;
      v42 = v27;
      v43 = 2114;
      v44 = v30;
      v45 = 2112;
      v46 = v22;
      LODWORD(v39) = 32;
      v31 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 16, "%{public}@: Failed to deactivate the active locker account, %{public}@. error = %@", &v41, v39);

      if (!v31)
      {
LABEL_30:

        goto LABEL_31;
      }

      oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v31 encoding:4];
      free(v31);
      SSFileLog(v23, @"%@", v32, v33, v34, v35, v36, v37, oSLogObject2);
    }

    goto LABEL_30;
  }

  [accountCopy setActiveLockerAccount:1];
  v6 = 0;
  if ([(SSAccountStore *)self saveAccount:v5 error:0])
  {
    v6 = [objc_opt_class() _refreshAccount:v5];
  }

LABEL_33:

  return v6;
}

- (void)signOutAllAccountsWithCompletionBlock:(id)block
{
  blockCopy = block;
  activeAccount = [(SSAccountStore *)self activeAccount];
  if (activeAccount)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__SSAccountStore_signOutAllAccountsWithCompletionBlock___block_invoke;
    v6[3] = &unk_1E84AEC60;
    v7 = blockCopy;
    [(SSAccountStore *)self signOutAccount:activeAccount completion:v6];
  }

  else if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }
}

uint64_t __56__SSAccountStore_signOutAllAccountsWithCompletionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)repairAccountWithBrokenDSID:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SSAccountStore.m" lineNumber:670 description:{@"Invalid parameter not satisfying: %@", @"account"}];
}

@end