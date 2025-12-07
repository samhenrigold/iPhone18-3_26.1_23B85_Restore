@interface VSIdentityProviderUserAccountUpdateOperation
- (VSIdentityProviderUserAccountUpdateOperation)initWithIdentityProvider:(id)provider userAccounts:(id)accounts;
- (id)_allowedBundleIDs;
- (void)executionDidBegin;
@end

@implementation VSIdentityProviderUserAccountUpdateOperation

- (VSIdentityProviderUserAccountUpdateOperation)initWithIdentityProvider:(id)provider userAccounts:(id)accounts
{
  providerCopy = provider;
  accountsCopy = accounts;
  v12.receiver = self;
  v12.super_class = VSIdentityProviderUserAccountUpdateOperation;
  v9 = [(VSIdentityProviderUserAccountUpdateOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_provider, provider);
    objc_storeStrong(&v10->_userAccounts, accounts);
  }

  return v10;
}

- (void)executionDidBegin
{
  v31 = *MEMORY[0x277D85DE8];
  userAccounts = [(VSIdentityProviderUserAccountUpdateOperation *)self userAccounts];
  v3 = [userAccounts count];
  if (v3)
  {
    v4 = VSDefaultLogObject(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [userAccounts count];
      provider = [(VSIdentityProviderUserAccountUpdateOperation *)self provider];
      *buf = 134218242;
      v28 = v5;
      v29 = 2112;
      v30 = provider;
      _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "%lu user accounts to write for provider %@", buf, 0x16u);
    }

    v7 = objc_alloc_init(VSUserAccountServiceConnection);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __65__VSIdentityProviderUserAccountUpdateOperation_executionDidBegin__block_invoke;
    v25[3] = &unk_278B732E0;
    v25[4] = self;
    v16 = v7;
    v8 = [(VSUserAccountServiceConnection *)v7 serviceWithErrorHandler:v25];
    v9 = objc_alloc_init(VSWaitGroup);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v17 = userAccounts;
    v10 = userAccounts;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        v14 = 0;
        do
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * v14);
          [(VSWaitGroup *)v9 enter];
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __65__VSIdentityProviderUserAccountUpdateOperation_executionDidBegin__block_invoke_2;
          v19[3] = &unk_278B74DC0;
          v19[4] = self;
          v19[5] = v15;
          v20 = v9;
          [v8 updateUserAccount:v15 completion:v19];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v12);
    }

    [(VSWaitGroup *)v9 waitWithMilliseconds:0];
    [(VSAsyncOperation *)self finishExecutionIfPossible];

    userAccounts = v17;
  }
}

void __65__VSIdentityProviderUserAccountUpdateOperation_executionDidBegin__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__VSIdentityProviderUserAccountUpdateOperation_executionDidBegin__block_invoke_cold_1(v3, v4);
  }

  [*(a1 + 32) setError:v3];
  [*(a1 + 32) finishExecutionIfPossible];
}

void __65__VSIdentityProviderUserAccountUpdateOperation_executionDidBegin__block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = VSErrorLogObject(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __65__VSIdentityProviderUserAccountUpdateOperation_executionDidBegin__block_invoke_2_cold_1(v4, v5);
    }

    [*(a1 + 32) setError:v4];
  }

  else
  {
    v6 = VSDefaultLogObject(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Successfully updated user account for provider: %@", &v8, 0xCu);
    }
  }

  [*(a1 + 48) leave];
}

- (id)_allowedBundleIDs
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  provider = [(VSIdentityProviderUserAccountUpdateOperation *)self provider];
  nonChannelAppDescriptions = [provider nonChannelAppDescriptions];

  v6 = [nonChannelAppDescriptions countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(nonChannelAppDescriptions);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        bundleID = [v11 bundleID];

        if (!bundleID)
        {
          [MEMORY[0x277CBEAD8] raise:v9 format:@"The [appDescription bundleID] parameter must not be nil."];
        }

        bundleID2 = [v11 bundleID];
        [v3 addObject:bundleID2];
      }

      v7 = [nonChannelAppDescriptions countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v3;
}

void __65__VSIdentityProviderUserAccountUpdateOperation_executionDidBegin__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Error with user account service connection: %@", &v2, 0xCu);
}

void __65__VSIdentityProviderUserAccountUpdateOperation_executionDidBegin__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Error updating user account for provider: %@", &v2, 0xCu);
}

@end