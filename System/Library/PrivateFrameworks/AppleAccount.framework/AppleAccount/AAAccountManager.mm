@interface AAAccountManager
+ (AAAccountManager)sharedManager;
- (id)_accountStore;
- (id)accountWithIdentifier:(id)identifier;
- (id)accountWithPersonID:(id)d;
- (id)accountWithUsername:(id)username;
- (id)accountsEnabledForDataclass:(id)dataclass;
- (id)primaryAccount;
- (void)_beginObservingAccountStoreDidChangeNotification;
- (void)_stopObservingAccountStoreDidChangeNotification;
- (void)addAccount:(id)account;
- (void)dealloc;
- (void)reloadAccounts;
- (void)removeAccount:(id)account;
- (void)saveAllAccounts;
- (void)updateAccount:(id)account;
@end

@implementation AAAccountManager

+ (AAAccountManager)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[AAAccountManager sharedManager];
  }

  v3 = sharedManager_sharedManager_0;

  return v3;
}

uint64_t __33__AAAccountManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(AAAccountManager);
  v1 = sharedManager_sharedManager_0;
  sharedManager_sharedManager_0 = v0;

  v2 = sharedManager_sharedManager_0;

  return [v2 reloadAccounts];
}

- (void)dealloc
{
  if (self->_accountStore)
  {
    [(AAAccountManager *)self _stopObservingAccountStoreDidChangeNotification];
  }

  v3.receiver = self;
  v3.super_class = AAAccountManager;
  [(AAAccountManager *)&v3 dealloc];
}

- (id)_accountStore
{
  accountStore = self->_accountStore;
  if (!accountStore)
  {
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    v5 = self->_accountStore;
    self->_accountStore = defaultStore;

    [(AAAccountManager *)self _beginObservingAccountStoreDidChangeNotification];
    accountStore = self->_accountStore;
  }

  return accountStore;
}

- (void)_beginObservingAccountStoreDidChangeNotification
{
  if (!self->_accountStoreDidChangeObserver)
  {
    objc_initWeak(&location, self);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = *MEMORY[0x1E69597D8];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68__AAAccountManager__beginObservingAccountStoreDidChangeNotification__block_invoke;
    v7[3] = &unk_1E7C9C8B0;
    objc_copyWeak(&v8, &location);
    v5 = [defaultCenter addObserverForName:v4 object:0 queue:0 usingBlock:v7];
    accountStoreDidChangeObserver = self->_accountStoreDidChangeObserver;
    self->_accountStoreDidChangeObserver = v5;

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __68__AAAccountManager__beginObservingAccountStoreDidChangeNotification__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadAccounts];
}

- (void)_stopObservingAccountStoreDidChangeNotification
{
  if (self->_accountStoreDidChangeObserver)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self->_accountStoreDidChangeObserver];

    accountStoreDidChangeObserver = self->_accountStoreDidChangeObserver;
    self->_accountStoreDidChangeObserver = 0;
  }
}

- (void)reloadAccounts
{
  v20 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _accountStore = [(AAAccountManager *)selfCopy _accountStore];
  aa_appleAccounts = [_accountStore aa_appleAccounts];

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = aa_appleAccounts;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = [AAAccount alloc];
        v12 = [(AAAccount *)v11 initWithAccount:v10, v15];
        [v5 addObject:v12];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  objc_storeStrong(&selfCopy->_accounts, v5);
  v13 = [(NSMutableArray *)selfCopy->_accounts copy];
  originalAccounts = selfCopy->_originalAccounts;
  selfCopy->_originalAccounts = v13;

  objc_sync_exit(selfCopy);
}

- (id)primaryAccount
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = selfCopy->_accounts;
  v4 = 0;
  v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 primaryAccount])
        {
          v9 = v8;

          v4 = v9;
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (id)accountsEnabledForDataclass:(id)dataclass
{
  v18 = *MEMORY[0x1E69E9840];
  dataclassCopy = dataclass;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = selfCopy->_accounts;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 isEnabledForDataclass:{dataclassCopy, v13}])
        {
          [array addObject:v11];
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  objc_sync_exit(selfCopy);

  return array;
}

- (id)accountWithUsername:(id)username
{
  v30 = *MEMORY[0x1E69E9840];
  usernameCopy = username;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = selfCopy;
  v6 = selfCopy->_accounts;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = *v25;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v25 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v24 + 1) + 8 * v9);
      username = [v10 username];
      v12 = [username isEqualToString:usernameCopy];

      if (v12)
      {
        v13 = v10;
      }

      else
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        appleIDAliases = [v10 appleIDAliases];
        v15 = [appleIDAliases countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v15)
        {
          v16 = *v21;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v21 != v16)
              {
                objc_enumerationMutation(appleIDAliases);
              }

              if ([*(*(&v20 + 1) + 8 * i) isEqualToString:usernameCopy])
              {
                v13 = v10;
                goto LABEL_18;
              }
            }

            v15 = [appleIDAliases countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v13 = 0;
LABEL_18:
      }

      if (v13)
      {
        break;
      }

      if (++v9 == v7)
      {
        v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_22;
      }
    }
  }

  else
  {
LABEL_22:
    v13 = 0;
  }

  objc_sync_exit(obj);

  return v13;
}

- (id)accountWithPersonID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = selfCopy->_accounts;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        personID = [v10 personID];
        v12 = [personID isEqualToString:dCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(selfCopy);

  return v7;
}

- (id)accountWithIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = selfCopy->_accounts;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [identifier isEqualToString:identifierCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)addAccount:(id)account
{
  v15 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  selfCopy = self;
  v6 = objc_sync_enter(selfCopy);
  v7 = _AALogSystem(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    username = [accountCopy username];
    identifier = [accountCopy identifier];
    v11 = 138412546;
    v12 = username;
    v13 = 2112;
    v14 = identifier;
    _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Adding account: %@:%@", &v11, 0x16u);
  }

  accounts = selfCopy->_accounts;
  if (accounts)
  {
    [(NSMutableArray *)accounts addObject:accountCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)updateAccount:(id)account
{
  v29 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableArray *)selfCopy->_accounts copy];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v8)
  {
    v10 = 0;
    v11 = *v21;
    *&v9 = 138412546;
    v19 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        identifier = [*(*(&v20 + 1) + 8 * v12) identifier];
        identifier2 = [accountCopy identifier];
        v15 = [identifier isEqualToString:identifier2];

        if (v15)
        {
          v16 = _AALogSystem([(NSMutableArray *)selfCopy->_accounts replaceObjectAtIndex:v10 withObject:accountCopy]);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            username = [accountCopy username];
            identifier3 = [accountCopy identifier];
            *buf = v19;
            v25 = username;
            v26 = 2112;
            v27 = identifier3;
            _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "Updating account: %@:%@", buf, 0x16u);
          }
        }

        ++v10;
        ++v12;
      }

      while (v8 != v12);
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v8);
  }

  objc_sync_exit(selfCopy);
}

- (void)removeAccount:(id)account
{
  v20 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  username = [accountCopy username];
  v7 = _AALogSystem(username);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(NSMutableArray *)selfCopy->_accounts count];
    *buf = 138412546;
    v17 = username;
    v18 = 2048;
    v19 = v8;
    _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Removing account %@. Count: %lu", buf, 0x16u);
  }

  _accountStore = [(AAAccountManager *)selfCopy _accountStore];
  account = [accountCopy account];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __34__AAAccountManager_removeAccount___block_invoke;
  v13[3] = &unk_1E7C9C8D8;
  v13[4] = selfCopy;
  v11 = accountCopy;
  v14 = v11;
  v12 = username;
  v15 = v12;
  [_accountStore removeAccount:account withCompletionHandler:v13];

  objc_sync_exit(selfCopy);
}

void __34__AAAccountManager_removeAccount___block_invoke(void *a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AALogSystem(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      v8 = [*(a1[4] + 16) count];
      v10 = 134217984;
      v11 = v8;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Removed account. Count: %lu", &v10, 0xCu);
    }

    [*(a1[4] + 16) removeObject:a1[5]];
  }

  else
  {
    if (v7)
    {
      v9 = a1[6];
      v10 = 138412546;
      v11 = v9;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Failed to remove account %@. Error: %@", &v10, 0x16u);
    }
  }
}

- (void)saveAllAccounts
{
  v26 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v3 = objc_sync_enter(selfCopy);
  v4 = selfCopy;
  v5 = _AALogSystem(v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NSMutableArray *)selfCopy->_accounts count];
    *buf = 134217984;
    v25 = v6;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Saving Accounts. Count: %lu", buf, 0xCu);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = selfCopy->_accounts;
  v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        _accountStore = [(AAAccountManager *)v4 _accountStore];
        account = [v10 account];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __35__AAAccountManager_saveAllAccounts__block_invoke;
        v18[3] = &unk_1E7C9C900;
        v18[4] = v10;
        [_accountStore saveAccount:account withCompletionHandler:v18];

        selfCopy = v4;
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v13 = [(NSMutableArray *)selfCopy->_accounts copy];
  originalAccounts = selfCopy->_originalAccounts;
  selfCopy->_originalAccounts = v13;

  objc_sync_exit(selfCopy);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotificationWithOptions(DarwinNotifyCenter, @"AAAccountConfigChangedNotification", selfCopy, 0, 1uLL);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"AAAccountConfigChangedNotification" object:0];
}

void __35__AAAccountManager_saveAllAccounts__block_invoke(uint64_t a1, char a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    v3 = _AALogSystem(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) username];
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_1B6F6A000, v3, OS_LOG_TYPE_DEFAULT, "Failed to save account %@.", &v5, 0xCu);
    }
  }
}

@end