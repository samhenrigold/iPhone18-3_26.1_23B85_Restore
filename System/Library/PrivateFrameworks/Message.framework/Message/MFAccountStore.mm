@interface MFAccountStore
+ (BOOL)_shouldUpdateAccountsInPlace;
+ (id)_accountWithAccountClass:(Class)class persistentAccount:(id)account useExisting:(BOOL)existing;
+ (id)sharedAccountStore;
- (ACAccountStore)persistentStore;
- (MFAccountStore)init;
- (id)_accountWithPersistentAccount:(id)account useExisting:(BOOL)existing;
- (id)accountsWithTypeIdentifiers:(id)identifiers error:(id *)error;
- (id)existingAccountWithPersistentAccount:(id)account;
- (id)newPersistentAccountWithAccountTypeIdentifier:(id)identifier;
- (id)supportedDataclassesWithAccountTypeIdentifier:(id)identifier;
- (void)_accountsStoreChanged:(id)changed;
- (void)dealloc;
- (void)removePersistentAccountWithAccount:(id)account;
- (void)savePersistentAccountWithAccount:(id)account;
- (void)setPersistentStore:(id)store;
@end

@implementation MFAccountStore

- (MFAccountStore)init
{
  v7.receiver = self;
  v7.super_class = MFAccountStore;
  v2 = [(MFAccountStore *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_accountStoreLock._os_unfair_lock_opaque = 0;
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    [(MFAccountStore *)v3 setPersistentStore:defaultStore];

    v5 = v3;
  }

  return v3;
}

+ (BOOL)_shouldUpdateAccountsInPlace
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"MFUpdateAccountsInPlaceKey"];

  if (v3)
  {
    if (objc_opt_respondsToSelector())
    {
      bOOLValue = [v3 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    v5 = MFUserAgent();
    bOOLValue = [v5 isMobileMail];
  }

  return bOOLValue;
}

void __36__MFAccountStore_sharedAccountStore__block_invoke()
{
  v0 = objc_alloc_init(MFAccountStore);
  v1 = sharedAccountStore_sAccountStore;
  sharedAccountStore_sAccountStore = v0;
}

+ (id)sharedAccountStore
{
  if (sharedAccountStore_onceToken != -1)
  {
    +[MFAccountStore sharedAccountStore];
  }

  v3 = sharedAccountStore_sAccountStore;

  return v3;
}

- (void)dealloc
{
  [(MFAccountStore *)self setPersistentStore:0];
  v3.receiver = self;
  v3.super_class = MFAccountStore;
  [(MFAccountStore *)&v3 dealloc];
}

- (ACAccountStore)persistentStore
{
  os_unfair_lock_lock(&self->_accountStoreLock);
  v3 = self->_accountStore;
  os_unfair_lock_unlock(&self->_accountStoreLock);

  return v3;
}

- (void)setPersistentStore:(id)store
{
  storeCopy = store;
  os_unfair_lock_lock(&self->_accountStoreLock);
  accountStore = self->_accountStore;
  if (accountStore != storeCopy)
  {
    v6 = MEMORY[0x1E69597D8];
    if (accountStore)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter removeObserver:self name:*v6 object:self->_accountStore];
    }

    objc_storeStrong(&self->_accountStore, store);
    if (storeCopy)
    {
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel__accountsStoreChanged_ name:*v6 object:storeCopy];
    }
  }

  os_unfair_lock_unlock(&self->_accountStoreLock);
}

- (id)newPersistentAccountWithAccountTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = [(ACAccountStore *)self->_accountStore accountTypeWithAccountTypeIdentifier:identifierCopy];
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x1E6959A28]) initWithAccountType:v5];
    }

    else
    {
      v7 = MFAccountsLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(MFAccountStore *)identifierCopy newPersistentAccountWithAccountTypeIdentifier:v7];
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)supportedDataclassesWithAccountTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    v5 = [defaultStore accountTypeWithAccountTypeIdentifier:identifierCopy];

    supportedDataclasses = [v5 supportedDataclasses];
    allObjects = [supportedDataclasses allObjects];
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
}

- (id)accountsWithTypeIdentifiers:(id)identifiers error:(id *)error
{
  v61 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  accountStore = self->_accountStore;
  v51[1] = 0;
  v41 = identifiersCopy;
  obj = [ACAccountStore accountsWithAccountTypeIdentifiers:"accountsWithAccountTypeIdentifiers:error:" error:?];
  v42 = 0;
  domain = [v42 domain];
  if ([domain isEqualToString:*MEMORY[0x1E6959978]])
  {
    v8 = [v42 code] == 10002;

    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = MFAccountsLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v41 componentsJoinedByString:{@", "}];
      ef_publicDescription = [v42 ef_publicDescription];
      *buf = 138543618;
      v58 = v10;
      v59 = 2114;
      v60 = ef_publicDescription;
      _os_log_impl(&dword_1B0389000, v9, OS_LOG_TYPE_DEFAULT, "Transient account store error; re-attempting to fetch accounts for types [%{public}@]: %{public}@", buf, 0x16u);
    }

    v12 = self->_accountStore;
    v51[0] = v42;
    v13 = [(ACAccountStore *)v12 accountsWithAccountTypeIdentifiers:v41 error:v51];
    v14 = v51[0];

    domain = obj;
    obj = v13;
    v42 = v14;
  }

LABEL_7:
  if (v42)
  {
    v15 = MFAccountsLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v41 componentsJoinedByString:{@", "}];
      ef_publicDescription2 = [v42 ef_publicDescription];
      [(MFAccountStore *)v16 accountsWithTypeIdentifiers:ef_publicDescription2 error:buf, v15];
    }
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obja = obj;
  v18 = [obja countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v18)
  {
    v19 = 0;
    array = 0;
    v46 = *v48;
    v45 = *MEMORY[0x1E698B760];
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v48 != v46)
        {
          objc_enumerationMutation(obja);
        }

        v22 = *(*(&v47 + 1) + 8 * i);
        v23 = -[MFAccountStore _accountWithPersistentAccount:useExisting:](self, "_accountWithPersistentAccount:useExisting:", v22, [objc_opt_class() _shouldUpdateAccountsInPlace]);
        if (v23)
        {
          if (!array)
          {
            array = [MEMORY[0x1E695DF70] array];
          }

          parentAccount = [v22 parentAccount];
          v25 = [parentAccount aa_isAccountClass:v45];

          if (v25)
          {
            if (v19)
            {
              v26 = MFAccountsLog();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                identifier = [v22 identifier];
                parentAccount2 = [v22 parentAccount];
                identifier2 = [parentAccount2 identifier];
                *v52 = 138543618;
                v53 = identifier;
                v54 = 2114;
                v55 = identifier2;
                _os_log_error_impl(&dword_1B0389000, v26, OS_LOG_TYPE_ERROR, "Duplicate Primary iCloud IMAPMail account %{public}@ found for parent iCloud account %{public}@", v52, 0x16u);
              }
            }

            else
            {
              v31 = MFAccountsLog();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                identifier3 = [v22 identifier];
                parentAccount3 = [v22 parentAccount];
                identifier4 = [parentAccount3 identifier];
                *v52 = 138543618;
                v53 = identifier3;
                v54 = 2114;
                v55 = identifier4;
                _os_log_impl(&dword_1B0389000, v31, OS_LOG_TYPE_DEFAULT, "Primary iCloud IMAPMail account %{public}@ found for parent iCloud account %{public}@", v52, 0x16u);
              }

              [array addObject:v23];
            }

            v19 = 1;
          }

          else
          {
            v27 = MFAccountsLog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              identifier5 = [v22 identifier];
              parentAccount4 = [v22 parentAccount];
              identifier6 = [parentAccount4 identifier];
              *v52 = 138543618;
              v53 = identifier5;
              v54 = 2114;
              v55 = identifier6;
              _os_log_impl(&dword_1B0389000, v27, OS_LOG_TYPE_DEFAULT, "Mail account %{public}@ found for parent account %{public}@", v52, 0x16u);
            }

            [array addObject:v23];
          }
        }
      }

      v18 = [obja countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v18);
  }

  else
  {
    array = 0;
  }

  if (error)
  {
    v38 = v42;
    *error = v42;
  }

  return array;
}

- (id)existingAccountWithPersistentAccount:(id)account
{
  v3 = [(MFAccountStore *)self _accountWithPersistentAccount:account useExisting:1];

  return v3;
}

- (id)_accountWithPersistentAccount:(id)account useExisting:(BOOL)existing
{
  existingCopy = existing;
  v23 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  if (accountCopy)
  {
    v16 = 0;
    v6 = [MFAccountLoader accountClassForPersistentAccount:accountCopy error:&v16];
    v7 = v16;
    if (v6)
    {
      v8 = [objc_opt_class() _accountWithAccountClass:v6 persistentAccount:accountCopy useExisting:existingCopy];
    }

    else
    {
      v9 = MFAccountsLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        identifier = [accountCopy identifier];
        ef_publicDescription = [v7 ef_publicDescription];
        v13 = ef_publicDescription;
        v14 = ": ";
        if (!v7)
        {
          v14 = "";
        }

        v15 = &stru_1F273A5E0;
        *buf = 138543874;
        v18 = identifier;
        if (ef_publicDescription)
        {
          v15 = ef_publicDescription;
        }

        v19 = 2080;
        v20 = v14;
        v21 = 2114;
        v22 = v15;
        _os_log_error_impl(&dword_1B0389000, v9, OS_LOG_TYPE_ERROR, "Failed to load account for persistent account %{public}@%s%{public}@", buf, 0x20u);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_accountWithAccountClass:(Class)class persistentAccount:(id)account useExisting:(BOOL)existing
{
  existingCopy = existing;
  accountCopy = account;
  v8 = accountCopy;
  if (existingCopy && ([accountCopy identifier], v9 = objc_claimAutoreleasedReturnValue(), -[objc_class existingAccountForUniqueID:](class, "existingAccountForUniqueID:", v9), v10 = objc_claimAutoreleasedReturnValue(), v9, v10))
  {
    if (objc_opt_class() == class)
    {
      [v10 setPersistentAccount:v8];
    }
  }

  else
  {
    v10 = [[class alloc] initWithPersistentAccount:v8];
  }

  return v10;
}

- (void)savePersistentAccountWithAccount:(id)account
{
  v26 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  persistentAccount = [accountCopy persistentAccount];
  v6 = persistentAccount;
  if (persistentAccount)
  {
    accountDescription = [persistentAccount accountDescription];
    identifier = [v6 identifier];
    accountType = [v6 accountType];
    identifier2 = [accountType identifier];
    if ([identifier2 isEqualToString:*MEMORY[0x1E6959890]])
    {
      username = [v6 username];
      v12 = [username dataUsingEncoding:1];

      if (!v12)
      {
        v13 = MFAccountsLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v23 = accountDescription;
          v24 = 2114;
          v25 = identifier;
          _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_DEFAULT, "%@ has Non-ASCII username - Disabling Notes for account (%{public}@)", buf, 0x16u);
        }

        v14 = *MEMORY[0x1E6959B40];
        [v6 setProvisioned:0 forDataclass:*MEMORY[0x1E6959B40]];
        [v6 setEnabled:0 forDataclass:v14];
      }
    }

    else
    {
    }

    if ([v6 isDirty])
    {
      v15 = dispatch_semaphore_create(0);
      accountStore = self->_accountStore;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __51__MFAccountStore_savePersistentAccountWithAccount___block_invoke;
      v18[3] = &unk_1E7AA4AA8;
      v19 = accountDescription;
      v20 = identifier;
      v21 = v15;
      v17 = v15;
      [(ACAccountStore *)accountStore saveVerifiedAccount:v6 withCompletionHandler:v18];
      dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v17 = MFAccountsLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v23 = accountDescription;
        v24 = 2114;
        v25 = identifier;
        _os_log_impl(&dword_1B0389000, v17, OS_LOG_TYPE_DEFAULT, "Nothing to save for account %@ (%{public}@)", buf, 0x16u);
      }
    }
  }
}

void __51__MFAccountStore_savePersistentAccountWithAccount___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = MFAccountsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v12 = 138412546;
      v13 = v7;
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_DEFAULT, "Saved account %@ (%{public}@)", &v12, 0x16u);
    }
  }

  else
  {
    v6 = MFAccountsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = [v5 ef_publicDescription];
      v12 = 138412802;
      v13 = v10;
      v14 = 2112;
      v15 = v9;
      v16 = 2114;
      v17 = v11;
      _os_log_error_impl(&dword_1B0389000, v6, OS_LOG_TYPE_ERROR, "Failed to save account %@ (%@) error: %{public}@", &v12, 0x20u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)removePersistentAccountWithAccount:(id)account
{
  accountCopy = account;
  persistentAccount = [accountCopy persistentAccount];
  v6 = persistentAccount;
  if (persistentAccount)
  {
    accountDescription = [persistentAccount accountDescription];
    identifier = [v6 identifier];
    v9 = dispatch_semaphore_create(0);
    accountStore = self->_accountStore;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __53__MFAccountStore_removePersistentAccountWithAccount___block_invoke;
    v14[3] = &unk_1E7AA4AA8;
    v11 = accountDescription;
    v15 = v11;
    v16 = identifier;
    v17 = v9;
    v12 = v9;
    v13 = identifier;
    [(ACAccountStore *)accountStore removeAccount:v6 withCompletionHandler:v14];
    dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void __53__MFAccountStore_removePersistentAccountWithAccount___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = MFAccountsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v12 = 138412546;
      v13 = v7;
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_DEFAULT, "Removed account %@ (%{public}@)", &v12, 0x16u);
    }
  }

  else
  {
    v6 = MFAccountsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = [v5 ef_publicDescription];
      v12 = 138412802;
      v13 = v10;
      v14 = 2114;
      v15 = v9;
      v16 = 2114;
      v17 = v11;
      _os_log_error_impl(&dword_1B0389000, v6, OS_LOG_TYPE_ERROR, "Failed to remove account %@ (%{public}@) error: %{public}@", &v12, 0x20u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)_accountsStoreChanged:(id)changed
{
  v8 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v4 = MFAccountsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    name = [changedCopy name];
    v6 = 138412290;
    v7 = name;
    _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_INFO, "Received %@ notification", &v6, 0xCu);
  }
}

- (void)newPersistentAccountWithAccountTypeIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1B0389000, a2, OS_LOG_TYPE_ERROR, "Missing account type for identifier %{public}@", &v2, 0xCu);
}

- (void)accountsWithTypeIdentifiers:(uint8_t *)buf error:(os_log_t)log .cold.1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "Failed to fetch accounts for types [%{public}@]: %{public}@", buf, 0x16u);
}

@end