@interface ASAccountAuthenticationModificationExtensionManager
@end

@implementation ASAccountAuthenticationModificationExtensionManager

uint64_t __69___ASAccountAuthenticationModificationExtensionManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedManager = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

void __80___ASAccountAuthenticationModificationExtensionManager__beginExtensionDiscovery__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80___ASAccountAuthenticationModificationExtensionManager__beginExtensionDiscovery__block_invoke_2;
    block[3] = &unk_1E7AF7740;
    block[4] = WeakRetained;
    v11 = v6;
    v12 = v5;
    dispatch_async(v9, block);
  }
}

void __80___ASAccountAuthenticationModificationExtensionManager__beginExtensionDiscovery__block_invoke_2(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 16));
  *(*(a1 + 32) + 56) = *(a1 + 40) != 0;
  if (*(a1 + 40))
  {
    [*(a1 + 32) _endExtensionDiscovery];
    v2 = *(*(a1 + 32) + 16);

    dispatch_resume(v2);
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 40), *(a1 + 48));
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __80___ASAccountAuthenticationModificationExtensionManager__beginExtensionDiscovery__block_invoke_3;
    v3[3] = &unk_1E7AF7A08;
    v3[4] = *(a1 + 32);
    [MEMORY[0x1E69C8E18] getAllApprovedSharedWebCredentialsEntries:v3];
  }
}

void __129___ASAccountAuthenticationModificationExtensionManager__buildDomainToExtensionDictionaryWithSharedWebCredentialsDatabaseEntries___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v24 = a1;
  obj = *(*(a1 + 32) + 40);
  v3 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v30;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        v8 = MEMORY[0x1E69635E0];
        v9 = [v7 _plugIn];
        v10 = [v9 containingUrl];
        v11 = [v8 applicationProxyForBundleURL:v10];
        v12 = [v11 bundleIdentifier];

        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v13 = [*(v24 + 40) objectForKeyedSubscript:v12];
        v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v26;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v26 != v16)
              {
                objc_enumerationMutation(v13);
              }

              [v2 setObject:v7 forKeyedSubscript:*(*(&v25 + 1) + 8 * j)];
            }

            v15 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v15);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v4);
  }

  v18 = *(v24 + 32);
  v19 = *(v18 + 32);
  *(v18 + 32) = v2;
  v20 = v2;

  dispatch_resume(*(*(v24 + 32) + 16));
  v21 = *(v24 + 32);
  v22 = [v21[6] array];
  [v21 _notifyObservers:v22];
}

void __93___ASAccountAuthenticationModificationExtensionManager_extensionForDomain_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 56) == 1)
    {
      [WeakRetained _beginExtensionDiscovery];
    }

    v3 = [MEMORY[0x1E69C8DE8] domainByStrippingSubdomainWildcardPrefixIfNecessary:*(a1 + 32)];
    v4 = [v3 safari_highLevelDomainFromHost];

    v5 = *(a1 + 40);
    v6 = [v7[4] objectForKeyedSubscript:v4];
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void *__74___ASAccountAuthenticationModificationExtensionManager_addChangeObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) addObject:*(a1 + 40)];
  result = [*(*(a1 + 32) + 48) count];
  if (result == 1)
  {
    v3 = *(a1 + 32);

    return [v3 _beginExtensionDiscovery];
  }

  return result;
}

void *__77___ASAccountAuthenticationModificationExtensionManager_removeChangeObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) removeObject:*(a1 + 40)];
  result = [*(*(a1 + 32) + 48) count];
  if (!result)
  {
    v3 = *(a1 + 32);

    return [v3 _endExtensionDiscovery];
  }

  return result;
}

void __73___ASAccountAuthenticationModificationExtensionManager__notifyObservers___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 accountModificationExtensionManagerExtensionListDidChange:{*(a1 + 40), v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

@end