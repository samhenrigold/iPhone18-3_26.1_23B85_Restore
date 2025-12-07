@interface ACAccountStore(ESExtensions)
- (id)es_accountsWithAccountTypeIdentifiers:()ESExtensions outError:;
- (void)_esAccountsWithAccountTypeIdentifiers:()ESExtensions enabledForDADataclasses:filterOnDataclasses:withCompletion:;
- (void)es_loadESAccountsEnabledForDADataclasses:()ESExtensions withCompletion:;
- (void)es_loadESAccountsWithCompletion:()ESExtensions;
@end

@implementation ACAccountStore(ESExtensions)

- (void)_esAccountsWithAccountTypeIdentifiers:()ESExtensions enabledForDADataclasses:filterOnDataclasses:withCompletion:
{
  v42 = *MEMORY[0x277D85DE8];
  v23 = a3;
  v22 = a6;
  if ((_esAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___haveRegisteredForInterrogation & 1) == 0)
  {
    _esAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___haveRegisteredForInterrogation = 1;
    if ((_sESIsRunningInExchangeSyncD & 1) == 0)
    {
      if (_esAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion__onceToken != -1)
      {
        [ACAccountStore(ESExtensions) _esAccountsWithAccountTypeIdentifiers:enabledForDADataclasses:filterOnDataclasses:withCompletion:];
      }

      mEMORY[0x277D07AF0] = [MEMORY[0x277D07AF0] sharedConnection];
      [mEMORY[0x277D07AF0] registerForInterrogationWithBlock:&__block_literal_global_4];
    }
  }

  if (a5)
  {
    v10 = acDataclassesForDADataclasses();
    allObjects = [v10 allObjects];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __129__ACAccountStore_ESExtensions___esAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_4;
    v39[3] = &unk_278FC6248;
    v39[4] = self;
    v40 = v22;
    v12 = v22;
    [self accountIdentifiersEnabledForDataclasses:allObjects withAccountTypeIdentifiers:v23 completion:v39];
  }

  else
  {
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x3032000000;
    v37[3] = __Block_byref_object_copy__0;
    v37[4] = __Block_byref_object_dispose__0;
    v38 = 0;
    array = [MEMORY[0x277CBEB18] array];
    v14 = dispatch_group_create();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v23;
    v15 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v15)
    {
      v16 = *v34;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v33 + 1) + 8 * i);
          dispatch_group_enter(v14);
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __129__ACAccountStore_ESExtensions___esAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_3_12;
          v29[3] = &unk_278FC6298;
          v29[4] = self;
          v32 = v37;
          v30 = array;
          v31 = v14;
          [self accountTypeWithIdentifier:v18 completion:v29];
        }

        v15 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v15);
    }

    v19 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __129__ACAccountStore_ESExtensions___esAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_5;
    block[3] = &unk_278FC6220;
    v26 = array;
    v27 = v22;
    v28 = v37;
    v20 = array;
    v21 = v22;
    dispatch_group_notify(v14, v19, block);

    _Block_object_dispose(v37, 8);
  }
}

- (void)es_loadESAccountsWithCompletion:()ESExtensions
{
  v4 = MEMORY[0x277D03720];
  v5 = a3;
  _leafAccountTypes = [v4 _leafAccountTypes];
  allObjects = [_leafAccountTypes allObjects];
  [self _esAccountsWithAccountTypeIdentifiers:allObjects enabledForDADataclasses:0 filterOnDataclasses:0 withCompletion:v5];
}

- (void)es_loadESAccountsEnabledForDADataclasses:()ESExtensions withCompletion:
{
  v6 = MEMORY[0x277D03720];
  v7 = a4;
  _leafAccountTypes = [v6 _leafAccountTypes];
  allObjects = [_leafAccountTypes allObjects];
  [self _esAccountsWithAccountTypeIdentifiers:allObjects enabledForDADataclasses:a3 filterOnDataclasses:1 withCompletion:v7];
}

- (id)es_accountsWithAccountTypeIdentifiers:()ESExtensions outError:
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = [self accountsWithAccountTypeIdentifiers:a3 error:?];
  if (v5)
  {
    v6 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v19 = v5;
      v10 = *v21;
      v11 = *(MEMORY[0x277D03988] + 3);
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [ESAccount esAccountSubclassWithBackingAccountInfo:v13];
          if (v14)
          {
            [v6 addObject:v14];
          }

          else
          {
            v15 = DALoggingwithCategory();
            if (os_log_type_enabled(v15, v11))
            {
              *buf = 138412290;
              v25 = v13;
              _os_log_impl(&dword_24A097000, v15, v11, "Could not convert ACAccount (%@) to DAAccount", buf, 0xCu);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v9);
      v5 = v19;
    }
  }

  else
  {
    v7 = DALoggingwithCategory();
    v16 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v7, v16))
    {
      v17 = *a4;
      *buf = 138412290;
      v25 = v17;
      _os_log_impl(&dword_24A097000, v7, v16, "Could not load ACAccounts due to Account Error %@", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

@end