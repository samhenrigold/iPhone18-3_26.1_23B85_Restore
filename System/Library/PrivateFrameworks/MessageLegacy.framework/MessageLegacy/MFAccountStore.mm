@interface MFAccountStore
+ (BOOL)_shouldUpdateAccountsInPlace;
+ (id)_accountWithAccountClass:(Class)class persistentAccount:(id)account useExisting:(BOOL)existing;
+ (id)sharedAccountStore;
- (ACAccountStore)persistentStore;
- (MFAccountStore)init;
- (id)_accountWithPersistentAccount:(id)account useExisting:(BOOL)existing;
- (id)accountsWithTypeIdentifiers:(id)identifiers error:(id *)error;
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
  v5.receiver = self;
  v5.super_class = MFAccountStore;
  v2 = [(MFAccountStore *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_accountStoreLock._os_unfair_lock_opaque = 0;
    [(MFAccountStore *)v2 setPersistentStore:objc_alloc_init(MEMORY[0x277CB8F48])];
  }

  return v3;
}

- (void)dealloc
{
  [(MFAccountStore *)self setPersistentStore:0];
  v3.receiver = self;
  v3.super_class = MFAccountStore;
  [(MFAccountStore *)&v3 dealloc];
}

+ (id)sharedAccountStore
{
  if (sharedAccountStore_onceToken != -1)
  {
    +[MFAccountStore sharedAccountStore];
  }

  return sharedAccountStore_sAccountStore;
}

MFAccountStore *__36__MFAccountStore_sharedAccountStore__block_invoke()
{
  result = objc_alloc_init(MFAccountStore);
  sharedAccountStore_sAccountStore = result;
  return result;
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
  os_unfair_lock_lock(&self->_accountStoreLock);
  accountStore = self->_accountStore;
  if (accountStore != store)
  {
    v6 = MEMORY[0x277CB8B78];
    if (accountStore)
    {
      [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
      accountStore = self->_accountStore;
    }

    self->_accountStore = store;
    if (store)
    {
      [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    }
  }

  os_unfair_lock_unlock(&self->_accountStoreLock);
}

- (id)newPersistentAccountWithAccountTypeIdentifier:(id)identifier
{
  if (!identifier)
  {
    return 0;
  }

  v4 = [(ACAccountStore *)self->_accountStore accountTypeWithAccountTypeIdentifier:?];
  if (!v4)
  {
    v8 = MFLogGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(MFAccountStore *)identifier newPersistentAccountWithAccountTypeIdentifier:v8];
    }

    return 0;
  }

  v5 = v4;
  v6 = objc_alloc(MEMORY[0x277CB8F30]);

  return [v6 initWithAccountType:v5];
}

- (id)supportedDataclassesWithAccountTypeIdentifier:(id)identifier
{
  if (!identifier)
  {
    return 0;
  }

  supportedDataclasses = [(ACAccountType *)[(ACAccountStore *)self->_accountStore accountTypeWithAccountTypeIdentifier:?] supportedDataclasses];

  return [supportedDataclasses allObjects];
}

- (id)accountsWithTypeIdentifiers:(id)identifiers error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v7 = [(ACAccountStore *)self->_accountStore accountsWithAccountTypeIdentifiers:identifiers error:&v21];
  if (v21)
  {
    v8 = MFLogGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MFAccountStore accountsWithTypeIdentifiers:identifiers error:&v21];
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (!v9)
  {
    array = 0;
    if (!error)
    {
      return array;
    }

    goto LABEL_16;
  }

  v10 = v9;
  array = 0;
  v12 = *v18;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v18 != v12)
      {
        objc_enumerationMutation(v7);
      }

      v14 = -[MFAccountStore _accountWithPersistentAccount:useExisting:](self, "_accountWithPersistentAccount:useExisting:", *(*(&v17 + 1) + 8 * i), [objc_opt_class() _shouldUpdateAccountsInPlace]);
      if (v14)
      {
        v15 = v14;
        if (!array)
        {
          array = [MEMORY[0x277CBEB18] array];
        }

        [array addObject:v15];
      }
    }

    v10 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
  }

  while (v10);
  if (error)
  {
LABEL_16:
    *error = v21;
  }

  return array;
}

- (id)_accountWithPersistentAccount:(id)account useExisting:(BOOL)existing
{
  if (!account)
  {
    return 0;
  }

  existingCopy = existing;
  v9 = 0;
  v6 = [MFAccountLoader accountClassForPersistentAccount:account error:&v9];
  if (v6)
  {
    return [objc_opt_class() _accountWithAccountClass:v6 persistentAccount:account useExisting:existingCopy];
  }

  v8 = MFLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MFAccountStore _accountWithPersistentAccount:account useExisting:&v9];
  }

  return 0;
}

+ (id)_accountWithAccountClass:(Class)class persistentAccount:(id)account useExisting:(BOOL)existing
{
  if (existing && (v7 = -[objc_class existingAccountForUniqueID:](class, "existingAccountForUniqueID:", [account identifier])) != 0)
  {
    v8 = v7;
    if (objc_opt_class() == class)
    {
      [v8 setPersistentAccount:account];
    }

    return v8;
  }

  else
  {
    v10 = [[class alloc] initWithPersistentAccount:account];

    return v10;
  }
}

+ (BOOL)_shouldUpdateAccountsInPlace
{
  v2 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  if (v2)
  {
    v3 = v2;
    if (objc_opt_respondsToSelector())
    {

      return [v3 BOOLValue];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v5 = MFUserAgent();

    return [v5 isMobileMail];
  }
}

- (void)savePersistentAccountWithAccount:(id)account
{
  v16 = *MEMORY[0x277D85DE8];
  persistentAccount = [account persistentAccount];
  if (persistentAccount)
  {
    v5 = persistentAccount;
    accountDescription = [persistentAccount accountDescription];
    identifier = [v5 identifier];
    if ([v5 isDirty])
    {
      v8 = dispatch_semaphore_create(0);
      accountStore = self->_accountStore;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __51__MFAccountStore_savePersistentAccountWithAccount___block_invoke;
      v11[3] = &unk_2798B6D68;
      v11[4] = accountDescription;
      v11[5] = identifier;
      v11[6] = v8;
      [(ACAccountStore *)accountStore saveVerifiedAccount:v5 withCompletionHandler:v11];
      dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v8);
    }

    else
    {
      v10 = MFLogGeneral();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v13 = accountDescription;
        v14 = 2112;
        v15 = identifier;
        _os_log_impl(&dword_258BDA000, v10, OS_LOG_TYPE_INFO, "Nothing to save for account %@ (%@)", buf, 0x16u);
      }
    }
  }
}

intptr_t __51__MFAccountStore_savePersistentAccountWithAccount___block_invoke(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = MFLogGeneral();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_258BDA000, v7, OS_LOG_TYPE_INFO, "Saved account %@ (%@)", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __51__MFAccountStore_savePersistentAccountWithAccount___block_invoke_cold_1(a1, a3);
  }

  return dispatch_semaphore_signal(*(a1 + 48));
}

- (void)removePersistentAccountWithAccount:(id)account
{
  persistentAccount = [account persistentAccount];
  if (persistentAccount)
  {
    v5 = persistentAccount;
    accountDescription = [persistentAccount accountDescription];
    identifier = [v5 identifier];
    v8 = dispatch_semaphore_create(0);
    accountStore = self->_accountStore;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__MFAccountStore_removePersistentAccountWithAccount___block_invoke;
    v10[3] = &unk_2798B6D68;
    v10[4] = accountDescription;
    v10[5] = identifier;
    v10[6] = v8;
    [(ACAccountStore *)accountStore removeAccount:v5 withCompletionHandler:v10];
    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v8);
  }
}

intptr_t __53__MFAccountStore_removePersistentAccountWithAccount___block_invoke(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = MFLogGeneral();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_258BDA000, v7, OS_LOG_TYPE_INFO, "Removed account %@ (%@)", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __53__MFAccountStore_removePersistentAccountWithAccount___block_invoke_cold_1(a1, a3);
  }

  return dispatch_semaphore_signal(*(a1 + 48));
}

- (void)_accountsStoreChanged:(id)changed
{
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(MFAccountStore *)changed _accountsStoreChanged:v4];
  }
}

- (void)newPersistentAccountWithAccountTypeIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_258BDA000, a2, OS_LOG_TYPE_ERROR, "Missing account type for identifier %@", &v2, 0xCu);
}

- (void)accountsWithTypeIdentifiers:(void *)a1 error:(id *)a2 .cold.1(void *a1, id *a2)
{
  [a1 componentsJoinedByString:{@", "}];
  [*a2 ef_publicDescription];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_accountWithPersistentAccount:(void *)a1 useExisting:(id *)a2 .cold.1(void *a1, id *a2)
{
  [a1 identifier];
  [*a2 ef_publicDescription];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __51__MFAccountStore_savePersistentAccountWithAccount___block_invoke_cold_1(uint64_t a1, void *a2)
{
  [a2 ef_publicDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __53__MFAccountStore_removePersistentAccountWithAccount___block_invoke_cold_1(uint64_t a1, void *a2)
{
  [a2 ef_publicDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)_accountsStoreChanged:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = [a1 name];
  _os_log_debug_impl(&dword_258BDA000, a2, OS_LOG_TYPE_DEBUG, "Received %@ notification", &v3, 0xCu);
}

@end