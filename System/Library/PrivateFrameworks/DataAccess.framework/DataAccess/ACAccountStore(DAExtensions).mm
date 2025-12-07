@interface ACAccountStore(DAExtensions)
- (id)da_accounts;
- (id)da_accountsWithAccountTypeIdentifiers:()DAExtensions;
- (id)da_accountsWithAccountTypeIdentifiers:()DAExtensions enabledForDADataclasses:;
- (id)da_accountsWithAccountTypeIdentifiers:()DAExtensions outError:;
- (void)_daAccountsWithAccountTypeIdentifiers:()DAExtensions enabledForDADataclasses:filterOnDataclasses:withCompletion:;
- (void)da_loadDAAccountsWithCompletion:()DAExtensions;
@end

@implementation ACAccountStore(DAExtensions)

- (void)_daAccountsWithAccountTypeIdentifiers:()DAExtensions enabledForDADataclasses:filterOnDataclasses:withCompletion:
{
  v43 = *MEMORY[0x277D85DE8];
  v24 = a3;
  v23 = a6;
  if ((_daAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___haveRegisteredForInterrogation & 1) == 0)
  {
    _daAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___haveRegisteredForInterrogation = 1;
    if ((_sDAIsRunningInDataAccessD & 1) == 0)
    {
      if (_daAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion__onceToken != -1)
      {
        [ACAccountStore(DAExtensions) _daAccountsWithAccountTypeIdentifiers:enabledForDADataclasses:filterOnDataclasses:withCompletion:];
      }

      mEMORY[0x277D03928] = [MEMORY[0x277D03928] sharedConnection];
      [mEMORY[0x277D03928] registerForInterrogationWithBlock:&__block_literal_global_33];
    }
  }

  if (a5)
  {
    v11 = acDataclassesForDADataclasses(a4);
    allObjects = [v11 allObjects];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __129__ACAccountStore_DAExtensions___daAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_4;
    v40[3] = &unk_278F13748;
    v40[4] = self;
    v41 = v23;
    v13 = v23;
    [self accountIdentifiersEnabledForDataclasses:allObjects withAccountTypeIdentifiers:v24 completion:v40];
  }

  else
  {
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x3032000000;
    v38[3] = __Block_byref_object_copy__3;
    v38[4] = __Block_byref_object_dispose__3;
    v39 = 0;
    array = [MEMORY[0x277CBEB18] array];
    v15 = dispatch_group_create();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v24;
    v16 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v16)
    {
      v17 = *v35;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v34 + 1) + 8 * i);
          dispatch_group_enter(v15);
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __129__ACAccountStore_DAExtensions___daAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_3_41;
          v30[3] = &unk_278F13798;
          v30[4] = self;
          v33 = v38;
          v31 = array;
          v32 = v15;
          [self accountTypeWithIdentifier:v19 completion:v30];
        }

        v16 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v16);
    }

    v20 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __129__ACAccountStore_DAExtensions___daAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_5;
    block[3] = &unk_278F13720;
    v27 = array;
    v28 = v23;
    v29 = v38;
    v21 = array;
    v22 = v23;
    dispatch_group_notify(v15, v20, block);

    _Block_object_dispose(v38, 8);
  }
}

- (void)da_loadDAAccountsWithCompletion:()DAExtensions
{
  v4 = MEMORY[0x277D03970];
  v5 = a3;
  leafAccountTypes = [v4 leafAccountTypes];
  allObjects = [leafAccountTypes allObjects];
  [self _daAccountsWithAccountTypeIdentifiers:allObjects enabledForDADataclasses:0 filterOnDataclasses:0 withCompletion:v5];
}

- (id)da_accounts
{
  v2 = dispatch_semaphore_create(0);
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__ACAccountStore_DAExtensions__da_accounts__block_invoke;
  v6[3] = &unk_278F137C0;
  v8 = &v9;
  v3 = v2;
  v7 = v3;
  [self da_loadDAAccountsWithCompletion:v6];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

- (id)da_accountsWithAccountTypeIdentifiers:()DAExtensions
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__ACAccountStore_DAExtensions__da_accountsWithAccountTypeIdentifiers___block_invoke;
  v9[3] = &unk_278F137C0;
  v11 = &v12;
  v6 = v5;
  v10 = v6;
  [self da_loadDAAccountsWithAccountTypeIdentifiers:v4 withCompletion:v9];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)da_accountsWithAccountTypeIdentifiers:()DAExtensions outError:
{
  v46 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = a3;
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v8)
  {
    v9 = *v33;
    v10 = *MEMORY[0x277CB8C00];
    v11 = *MEMORY[0x277CB8C50];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        if (([v13 isEqualToString:v10] & 1) == 0 && (objc_msgSend(v13, "isEqualToString:", v11) & 1) == 0)
        {
          [ACAccountStore(DAExtensions) da_accountsWithAccountTypeIdentifiers:a2 outError:self];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v8);
  }

  v26 = [self accountsWithAccountTypeIdentifiers:v7 error:a4];
  if (v26)
  {
    v27 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = v26;
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v40 count:16];
    if (v15)
    {
      v16 = *v29;
      v17 = *(MEMORY[0x277D03988] + 3);
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v28 + 1) + 8 * j);
          if (!ExchangeSyncLibraryCore_0(0))
          {
            goto LABEL_22;
          }

          v36 = 0;
          v37 = &v36;
          v38 = 0x2050000000;
          v20 = getESAccountClass_softClass_0;
          v39 = getESAccountClass_softClass_0;
          if (!getESAccountClass_softClass_0)
          {
            *&buf = MEMORY[0x277D85DD0];
            *(&buf + 1) = 3221225472;
            v43 = __getESAccountClass_block_invoke_0;
            v44 = &unk_278F13318;
            v45 = &v36;
            __getESAccountClass_block_invoke_0(&buf);
            v20 = v37[3];
          }

          v21 = v20;
          _Block_object_dispose(&v36, 8);
          v22 = [v20 esAccountSubclassWithBackingAccountInfo:v19];
          if (v22)
          {
            [v27 addObject:v22];
          }

          else
          {
LABEL_22:
            v22 = DALoggingwithCategory();
            if (os_log_type_enabled(v22, v17))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v19;
              _os_log_impl(&dword_24844D000, v22, v17, "Could not convert ACAccount (%@) to DAAccount", &buf, 0xCu);
            }
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v28 objects:v40 count:16];
      }

      while (v15);
    }
  }

  else
  {
    v14 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v14, v23))
    {
      v24 = *a4;
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v24;
      _os_log_impl(&dword_24844D000, v14, v23, "Could not load ACAccounts due to Account Error %@", &buf, 0xCu);
    }

    v27 = 0;
  }

  return v27;
}

- (id)da_accountsWithAccountTypeIdentifiers:()DAExtensions enabledForDADataclasses:
{
  v6 = a3;
  v7 = dispatch_semaphore_create(0);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __94__ACAccountStore_DAExtensions__da_accountsWithAccountTypeIdentifiers_enabledForDADataclasses___block_invoke;
  v11[3] = &unk_278F137C0;
  v13 = &v14;
  v8 = v7;
  v12 = v8;
  [self da_loadDAAccountsWithAccountTypeIdentifiers:v6 enabledForDADataclasses:a4 withCompletion:v11];
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

- (void)da_accountsWithAccountTypeIdentifiers:()DAExtensions outError:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DAUtils.m" lineNumber:329 description:@"Only supports Exchange account types"];
}

@end