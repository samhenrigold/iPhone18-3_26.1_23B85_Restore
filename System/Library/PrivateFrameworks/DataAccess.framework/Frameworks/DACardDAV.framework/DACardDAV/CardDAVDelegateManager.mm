@interface CardDAVDelegateManager
+ (void)finishFutures:(id)futures;
- (CardDAVDelegateManager)initWithDelegateInfoProvider:(id)provider accountID:(id)d databaseHelper:(id)helper;
- (id)account;
- (id)addChildWithDelegateInfo:(id)info;
- (id)collectDelegateInfoReturningError:(id *)error;
- (id)existingChildAccountsWithProperty:(id)property;
- (id)removeAccount:(id)account;
- (id)saveAccount:(id)account;
- (void)deleteOrphanDatabasesLackingRepresentationInDelegateInfos:(id)infos;
- (void)updateDelegates;
@end

@implementation CardDAVDelegateManager

- (CardDAVDelegateManager)initWithDelegateInfoProvider:(id)provider accountID:(id)d databaseHelper:(id)helper
{
  providerCopy = provider;
  dCopy = d;
  helperCopy = helper;
  v17.receiver = self;
  v17.super_class = CardDAVDelegateManager;
  v12 = [(CardDAVDelegateManager *)&v17 init];
  if (v12)
  {
    v13 = sharedDAAccountStore();
    accountStore = v12->_accountStore;
    v12->_accountStore = v13;

    objc_storeStrong(&v12->_accountID, d);
    objc_storeStrong(&v12->_delegateProvider, provider);
    objc_storeStrong(&v12->_databaseHelper, helper);
    v15 = v12;
  }

  return v12;
}

- (void)updateDelegates
{
  v51 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v45 = 0;
  v4 = [(CardDAVDelegateManager *)self collectDelegateInfoReturningError:&v45];
  v5 = v45;
  v6 = v5;
  if (v4)
  {
    v33 = v5;
    v35 = array;
    dAAccountPrincipalPath = [MEMORY[0x277D03970] DAAccountPrincipalPath];
    selfCopy = self;
    v8 = [(CardDAVDelegateManager *)self existingChildAccountsWithProperty:dAAccountPrincipalPath];
    v9 = [v8 mutableCopy];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v34 = v4;
    obj = v4;
    v10 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (!v10)
    {
      goto LABEL_19;
    }

    v11 = v10;
    v12 = *v42;
    v13 = *MEMORY[0x277CFBD30];
    v14 = *MEMORY[0x277CFBD30] + 16;
    v15 = *(MEMORY[0x277D03988] + 3);
    type = v15;
    v36 = *MEMORY[0x277CFBD30];
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v41 + 1) + 8 * i);
        principalPath = [v17 principalPath];
        if (!(*(v13 + 16))(v13, principalPath))
        {
          v21 = v11;
          v22 = v14;
          v23 = v12;
          v24 = v9;
          v25 = [v9 objectForKeyedSubscript:principalPath];
          if (v25)
          {
            v19 = v25;
            accountProperties = [v25 accountProperties];
            [v17 setPropertiesOnAccount:v19];
            accountProperties2 = [v19 accountProperties];
            v28 = [accountProperties isEqualToDictionary:accountProperties2];

            if (v28)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v19 = [(CardDAVDelegateManager *)selfCopy addChildWithDelegateInfo:v17];
          }

          v29 = [(CardDAVDelegateManager *)selfCopy saveAccount:v19];
          [v35 addObject:v29];

LABEL_15:
          v9 = v24;
          [v24 removeObjectForKey:principalPath];
          v12 = v23;
          v14 = v22;
          v11 = v21;
          v13 = v36;
          goto LABEL_16;
        }

        v19 = DALoggingwithCategory();
        if (!os_log_type_enabled(v19, v15))
        {
          goto LABEL_17;
        }

        dsid = [v17 dsid];
        *buf = 138543618;
        v47 = dsid;
        v48 = 2112;
        v49 = v17;
        _os_log_impl(&dword_24850D000, v19, type, "Unexpected condition updating deletes - no principal path for delegateInfo: %{public}@ %@", buf, 0x16u);

LABEL_16:
        v15 = type;
LABEL_17:
      }

      v11 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
      if (!v11)
      {
LABEL_19:

        allValues = [v9 allValues];
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __41__CardDAVDelegateManager_updateDelegates__block_invoke;
        v40[3] = &unk_278F1AD10;
        v40[4] = selfCopy;
        v31 = [allValues _cn_map:v40];

        [(CardDAVDelegateManager *)selfCopy deleteOrphanDatabasesLackingRepresentationInDelegateInfos:obj];
        [objc_opt_class() finishFutures:v31];
        array = v35;
        [objc_opt_class() finishFutures:v35];

        v6 = v33;
        v4 = v34;
        goto LABEL_22;
      }
    }
  }

  v9 = DALoggingwithCategory();
  v32 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v9, v32))
  {
    *buf = 138412290;
    v47 = v6;
    _os_log_impl(&dword_24850D000, v9, v32, "Skipping delegate state update (including account account adds/removes) because we got an error fetching delegates from Family Circle. error:  %@", buf, 0xCu);
  }

LABEL_22:
}

- (void)deleteOrphanDatabasesLackingRepresentationInDelegateInfos:(id)infos
{
  v5 = [infos _cn_map:&__block_literal_global_0];
  databaseHelper = [(CardDAVDelegateManager *)self databaseHelper];
  [databaseHelper removeDelegateDatabasesNotMatchingAltDSIDs:v5];
}

+ (void)finishFutures:(id)futures
{
  futuresCopy = futures;
  if (((*(*MEMORY[0x277CFBCF8] + 16))() & 1) == 0)
  {
    v3 = [MEMORY[0x277CFBE28] sequence:futuresCopy];
    v4 = [v3 result:0];
  }
}

- (id)account
{
  accountStore = [(CardDAVDelegateManager *)self accountStore];
  accountID = [(CardDAVDelegateManager *)self accountID];
  v5 = [accountStore accountWithIdentifier:accountID];

  return v5;
}

- (id)collectDelegateInfoReturningError:(id *)error
{
  delegateProvider = [(CardDAVDelegateManager *)self delegateProvider];
  account = [(CardDAVDelegateManager *)self account];
  v7 = [delegateProvider collectDelegatesForAccount:account error:error];

  return v7;
}

- (id)existingChildAccountsWithProperty:(id)property
{
  v22 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  account = [(CardDAVDelegateManager *)self account];
  childAccounts = [account childAccounts];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = childAccounts;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v13 accountPropertyForKey:{propertyCopy, v17}];
        [dictionary setObject:v13 forKeyedSubscript:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = [dictionary copy];

  return v15;
}

- (id)addChildWithDelegateInfo:(id)info
{
  v4 = MEMORY[0x277CB8F30];
  infoCopy = info;
  v6 = [v4 alloc];
  accountStore = [(CardDAVDelegateManager *)self accountStore];
  v8 = [accountStore accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8BD8]];
  v9 = [v6 initWithAccountType:v8];

  [infoCopy setPropertiesOnAccount:v9];
  account = [(CardDAVDelegateManager *)self account];
  [v9 setParentAccount:account];

  [v9 setAuthenticationType:@"parent"];

  return v9;
}

- (id)saveAccount:(id)account
{
  accountCopy = account;
  accountStore = [(CardDAVDelegateManager *)self accountStore];
  v6 = [accountStore _cn_canSaveAccount:accountCopy];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __38__CardDAVDelegateManager_saveAccount___block_invoke;
  v16[3] = &unk_278F1AD58;
  v7 = accountCopy;
  v17 = v7;
  [v6 addFailureBlock:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __38__CardDAVDelegateManager_saveAccount___block_invoke_8;
  v14[3] = &unk_278F1AD80;
  v8 = v7;
  v15 = v8;
  [v6 addSuccessBlock:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __38__CardDAVDelegateManager_saveAccount___block_invoke_10;
  v12[3] = &unk_278F1ADA8;
  v12[4] = self;
  v13 = v8;
  v9 = v8;
  v10 = [v6 flatMap:v12];

  return v10;
}

void __38__CardDAVDelegateManager_saveAccount___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = [*(a1 + 32) identifier];
    v7 = 138412546;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_24850D000, v4, v5, "Delegate with account ID %@ cannot be saved, error %{public}@", &v7, 0x16u);
  }
}

void __38__CardDAVDelegateManager_saveAccount___block_invoke_8(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = [*(a1 + 32) identifier];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_24850D000, v2, v3, "Delegate with account ID %@ can be saved", &v5, 0xCu);
  }
}

id __38__CardDAVDelegateManager_saveAccount___block_invoke_10(uint64_t a1)
{
  v2 = [*(a1 + 32) accountStore];
  v3 = [v2 _cn_saveVerifiedAccount:*(a1 + 40)];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__CardDAVDelegateManager_saveAccount___block_invoke_2;
  v7[3] = &unk_278F1AD58;
  v8 = *(a1 + 40);
  [v3 addFailureBlock:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__CardDAVDelegateManager_saveAccount___block_invoke_11;
  v5[3] = &unk_278F1AD80;
  v6 = *(a1 + 40);
  [v3 addSuccessBlock:v5];

  return v3;
}

void __38__CardDAVDelegateManager_saveAccount___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = [*(a1 + 32) identifier];
    v7 = 138412546;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_24850D000, v4, v5, "Delegate with account ID %@ save failed, error %{public}@", &v7, 0x16u);
  }
}

void __38__CardDAVDelegateManager_saveAccount___block_invoke_11(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = [*(a1 + 32) identifier];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_24850D000, v2, v3, "Delegate with account ID %@ saved", &v5, 0xCu);
  }
}

- (id)removeAccount:(id)account
{
  accountCopy = account;
  accountStore = [(CardDAVDelegateManager *)self accountStore];
  v6 = [accountStore _cn_removeAccount:accountCopy];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__CardDAVDelegateManager_removeAccount___block_invoke;
  v12[3] = &unk_278F1AD58;
  v7 = accountCopy;
  v13 = v7;
  [v6 addFailureBlock:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__CardDAVDelegateManager_removeAccount___block_invoke_13;
  v10[3] = &unk_278F1AD80;
  v11 = v7;
  v8 = v7;
  [v6 addSuccessBlock:v10];

  return v6;
}

void __40__CardDAVDelegateManager_removeAccount___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = [*(a1 + 32) identifier];
    v7 = 138412546;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_24850D000, v4, v5, "Delegate with account ID %@ failed to be removed, error %{public}@", &v7, 0x16u);
  }
}

void __40__CardDAVDelegateManager_removeAccount___block_invoke_13(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = [*(a1 + 32) identifier];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_24850D000, v2, v3, "Delegate with account ID %@ was successfully removed", &v5, 0xCu);
  }
}

@end