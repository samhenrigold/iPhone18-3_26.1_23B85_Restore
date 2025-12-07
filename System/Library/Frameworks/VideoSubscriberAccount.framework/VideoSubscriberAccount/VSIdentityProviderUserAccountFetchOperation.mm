@interface VSIdentityProviderUserAccountFetchOperation
- (VSIdentityProviderUserAccountFetchOperation)initWithIdentityProvider:(id)provider;
- (void)executionDidBegin;
@end

@implementation VSIdentityProviderUserAccountFetchOperation

- (VSIdentityProviderUserAccountFetchOperation)initWithIdentityProvider:(id)provider
{
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = VSIdentityProviderUserAccountFetchOperation;
  v6 = [(VSIdentityProviderUserAccountFetchOperation *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_provider, provider);
    v8 = MEMORY[0x277CCABD8];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 queueWithName:v10];
    privateQueue = v7->_privateQueue;
    v7->_privateQueue = v11;

    [(NSOperationQueue *)v7->_privateQueue setMaxConcurrentOperationCount:1];
  }

  return v7;
}

- (void)executionDidBegin
{
  v27 = *MEMORY[0x277D85DE8];
  provider = [(VSIdentityProviderUserAccountFetchOperation *)self provider];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  nonChannelAppDescriptions = [provider nonChannelAppDescriptions];
  v5 = [nonChannelAppDescriptions countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    v8 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(nonChannelAppDescriptions);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        bundleID = [v10 bundleID];

        if (!bundleID)
        {
          [MEMORY[0x277CBEAD8] raise:v8 format:@"The [appDescription bundleID] parameter must not be nil."];
        }

        bundleID2 = [v10 bundleID];
        [v3 addObject:bundleID2];
      }

      v6 = [nonChannelAppDescriptions countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  v13 = objc_alloc_init(VSUserAccountServiceConnection);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __64__VSIdentityProviderUserAccountFetchOperation_executionDidBegin__block_invoke;
  v21[3] = &unk_278B732E0;
  v21[4] = self;
  v14 = [(VSUserAccountServiceConnection *)v13 serviceWithErrorHandler:v21];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __64__VSIdentityProviderUserAccountFetchOperation_executionDidBegin__block_invoke_5;
  v18[3] = &unk_278B74C00;
  v18[4] = self;
  v19 = provider;
  v20 = v3;
  v15 = v3;
  v16 = provider;
  [v14 queryUserAccountsWithOptions:0 completion:v18];
}

void __64__VSIdentityProviderUserAccountFetchOperation_executionDidBegin__block_invoke(uint64_t a1, void *a2)
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

void __64__VSIdentityProviderUserAccountFetchOperation_executionDidBegin__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = VSErrorLogObject(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __64__VSIdentityProviderUserAccountFetchOperation_executionDidBegin__block_invoke_5_cold_1(v7, v8);
    }

    [*(a1 + 32) setError:v7];
    [*(a1 + 32) finishExecutionIfPossible];
  }

  else
  {
    v24 = a1;
    v9 = [*(a1 + 40) providerID];
    v10 = [v9 forceUnwrapObject];

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v23 = v5;
    v12 = v5;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          if ([v17 sourceType] == 2)
          {
            v18 = [v17 sourceIdentifier];
            v19 = [v18 isEqual:v10];
          }

          else
          {
            v19 = 0;
          }

          if ([v17 sourceType])
          {
            v20 = 0;
          }

          else
          {
            v21 = *(v24 + 48);
            v22 = [v17 sourceIdentifier];
            v20 = [v21 containsObject:v22];
          }

          if ((v19 | v20))
          {
            [v11 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v14);
    }

    [*(v24 + 32) setResults:v11];
    [*(v24 + 32) finishExecutionIfPossible];

    v7 = 0;
    v5 = v23;
  }
}

void __64__VSIdentityProviderUserAccountFetchOperation_executionDidBegin__block_invoke_5_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Error fetching user accounts: %@", &v2, 0xCu);
}

@end