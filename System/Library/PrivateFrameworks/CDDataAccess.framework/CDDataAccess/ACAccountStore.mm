@interface ACAccountStore
@end

@implementation ACAccountStore

void __129__ACAccountStore_DAExtensions___daAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.dataaccess.statusreport", v2);
  v1 = _daAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion__statusReportQueue;
  _daAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion__statusReportQueue = v0;
}

id __129__ACAccountStore_DAExtensions___daAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_2()
{
  v0 = [MEMORY[0x277CBEB18] array];
  v1 = _daAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion__statusReportQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __129__ACAccountStore_DAExtensions___daAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_3;
  block[3] = &unk_278D4C450;
  v2 = v0;
  v5 = v2;
  dispatch_sync(v1, block);

  return v2;
}

void __129__ACAccountStore_DAExtensions___daAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = +[DAAccountMonitor sharedMonitor];
  v3 = [v2 monitoredAccounts];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [v8 statusReport];
        if (v9)
        {
          [*(a1 + 32) addObject:v9];
        }

        [v8 resetStatusReport];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

void __129__ACAccountStore_DAExtensions___daAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__1;
  v30[4] = __Block_byref_object_dispose__1;
  v6 = a3;
  v31 = v6;
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = dispatch_group_create();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v5;
  v9 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v9)
  {
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        dispatch_group_enter(v8);
        v13 = *(a1 + 32);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __129__ACAccountStore_DAExtensions___daAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_34;
        v22[3] = &unk_278D4C730;
        v22[4] = v13;
        v25 = v30;
        v23 = v7;
        v24 = v8;
        [v13 accountWithIdentifier:v12 completion:v22];
      }

      v9 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v9);
  }

  v14 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __129__ACAccountStore_DAExtensions___daAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_2_37;
  block[3] = &unk_278D4C758;
  v15 = *(a1 + 40);
  v19 = v7;
  v20 = v15;
  v21 = v30;
  v16 = v7;
  dispatch_group_notify(v8, v14, block);

  _Block_object_dispose(v30, 8);
}

void __129__ACAccountStore_DAExtensions___daAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_34(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  v7 = *(*(a1 + 56) + 8);
  v9 = *(v7 + 40);
  v8 = (v7 + 40);
  if (!v9)
  {
    objc_storeStrong(v8, a3);
  }

  if (v11)
  {
    v10 = [DAAccount daAccountSubclassWithBackingAccountInfo:?];
    if (v10)
    {
      [*(a1 + 40) addObject:v10];
    }
  }

  objc_sync_exit(v6);

  dispatch_group_leave(*(a1 + 48));
}

uint64_t __129__ACAccountStore_DAExtensions___daAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_2_37(void *a1)
{
  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, a1[4], *(*(a1[6] + 8) + 40));
  }

  return result;
}

void __129__ACAccountStore_DAExtensions___daAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_3_39(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  v8 = *(*(a1 + 56) + 8);
  v10 = *(v8 + 40);
  v9 = (v8 + 40);
  if (!v10)
  {
    objc_storeStrong(v9, a3);
  }

  objc_sync_exit(v7);

  if (v5)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __129__ACAccountStore_DAExtensions___daAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_4_40;
    v15[3] = &unk_278D4C7A8;
    v11 = *(a1 + 56);
    v14 = *(a1 + 32);
    v12 = *(&v14 + 1);
    *&v13 = *(a1 + 48);
    *(&v13 + 1) = v11;
    v16 = v14;
    v17 = v13;
    [v14 accountsWithAccountType:v5 completion:v15];
  }

  else
  {
    dispatch_group_leave(*(a1 + 48));
  }
}

void __129__ACAccountStore_DAExtensions___daAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_4_40(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  v8 = *(*(a1 + 56) + 8);
  v10 = *(v8 + 40);
  v9 = (v8 + 40);
  if (!v10)
  {
    objc_storeStrong(v9, a3);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = [DAAccount daAccountSubclassWithBackingAccountInfo:*(*(&v16 + 1) + 8 * v14), v16];
        if (v15)
        {
          [*(a1 + 40) addObject:v15];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  objc_sync_exit(v7);
  dispatch_group_leave(*(a1 + 48));
}

uint64_t __129__ACAccountStore_DAExtensions___daAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_5(void *a1)
{
  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, a1[4], *(*(a1[6] + 8) + 40));
  }

  return result;
}

void __43__ACAccountStore_DAExtensions__da_accounts__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __67__ACAccountStore_DAExtensions__da_accountsEnabledForDADataclasses___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __70__ACAccountStore_DAExtensions__da_accountsWithAccountTypeIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __94__ACAccountStore_DAExtensions__da_accountsWithAccountTypeIdentifiers_enabledForDADataclasses___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

@end