@interface VSAppsOperation
- (VSAppsOperation)initWithIdentityProvider:(id)provider accountChannels:(id)channels;
- (id)createAppsResult;
- (void)executionDidBegin;
- (void)fetchChannelAppsWithCompletion:(id)completion;
- (void)filterVisionOSCompatibleApps:(id)apps;
@end

@implementation VSAppsOperation

- (VSAppsOperation)initWithIdentityProvider:(id)provider accountChannels:(id)channels
{
  providerCopy = provider;
  channelsCopy = channels;
  v14.receiver = self;
  v14.super_class = VSAppsOperation;
  v9 = [(VSAppsOperation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identityProvider, provider);
    objc_storeStrong(&v10->_accountChannels, channels);
    v11 = dispatch_group_create();
    dispatchGroup = v10->_dispatchGroup;
    v10->_dispatchGroup = v11;
  }

  return v10;
}

- (void)fetchChannelAppsWithCompletion:(id)completion
{
  completionCopy = completion;
  identityProvider = [(VSAppsOperation *)self identityProvider];
  uniqueID = [identityProvider uniqueID];
  forceUnwrapObject = [uniqueID forceUnwrapObject];

  v8 = [[VSIdentityProviderFetchAppsOperation alloc] initWithProviderIdentifier:forceUnwrapObject andType:3];
  objc_initWeak(&location, v8);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__VSAppsOperation_fetchChannelAppsWithCompletion___block_invoke;
  v10[3] = &unk_279E1A660;
  v9 = completionCopy;
  v11 = v9;
  objc_copyWeak(&v12, &location);
  [(VSIdentityProviderFetchAppsOperation *)v8 setCompletionBlock:v10];
  [(VSAsyncOperation *)v8 start];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&location);
}

void __50__VSAppsOperation_fetchChannelAppsWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained result];
  v3 = [v2 object];
  (*(v1 + 16))(v1, v3);
}

- (id)createAppsResult
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(VSApps);
  identityProvider = [(VSAppsOperation *)self identityProvider];
  nonChannelAppDescriptions = [identityProvider nonChannelAppDescriptions];
  v6 = nonChannelAppDescriptions;
  v7 = MEMORY[0x277CBEBF8];
  if (nonChannelAppDescriptions)
  {
    v8 = nonChannelAppDescriptions;
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  [(VSApps *)v3 setNonChannelApps:v8];

  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__4;
  v43 = __Block_byref_object_dispose__4;
  v44 = 0;
  channelAppsFailable = [(VSAppsOperation *)self channelAppsFailable];
  v33 = channelAppsFailable;
  if (channelAppsFailable)
  {
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __35__VSAppsOperation_createAppsResult__block_invoke;
    v38[3] = &unk_279E1A688;
    v38[4] = &v39;
    [channelAppsFailable unwrapObject:v38 error:&__block_literal_global_20];
    accountChannels = [(VSAppsOperation *)self accountChannels];
    allApps = [v40[5] allApps];
    v12 = allApps;
    if (allApps)
    {
      v13 = allApps;
    }

    else
    {
      v13 = v7;
    }

    [(VSApps *)v3 setAvailableApps:v13];

    availableApps = [(VSApps *)v3 availableApps];
    -[VSApps setHasChannelApps:](v3, "setHasChannelApps:", [availableApps count] != 0);

    appsByChannelID = [v40[5] appsByChannelID];
    if ([appsByChannelID count])
    {
      channelIDs = [accountChannels channelIDs];
      v16 = [channelIDs count] != 0;
    }

    else
    {
      v16 = 0;
    }

    [(VSApps *)v3 setHasUserChannelList:v16];
    if (v16)
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v19 = objc_alloc(MEMORY[0x277CBEB18]);
      availableApps2 = [(VSApps *)v3 availableApps];
      v21 = [v19 initWithArray:availableApps2];

      [accountChannels channelIDs];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v22 = v35 = 0u;
      v23 = [v22 countByEnumeratingWithState:&v34 objects:v45 count:16];
      if (v23)
      {
        v24 = *v35;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v35 != v24)
            {
              objc_enumerationMutation(v22);
            }

            v26 = *(*(&v34 + 1) + 8 * i);
            appsByChannelID2 = [v40[5] appsByChannelID];
            v28 = [appsByChannelID2 objectForKey:v26];

            if (v28)
            {
              [v21 removeObjectsInArray:v28];
              [v18 addObjectsFromArray:v28];
            }
          }

          v23 = [v22 countByEnumeratingWithState:&v34 objects:v45 count:16];
        }

        while (v23);
      }

      v29 = [v21 copy];
      [(VSApps *)v3 setAvailableApps:v29];

      allObjects = [v18 allObjects];
      [(VSApps *)v3 setSubscribedApps:allObjects];
    }

    v17 = v3;
  }

  else
  {
    accountChannels = VSErrorLogObject();
    if (os_log_type_enabled(accountChannels, OS_LOG_TYPE_ERROR))
    {
      [(VSAppsOperation *)accountChannels createAppsResult];
    }

    v17 = 0;
  }

  _Block_object_dispose(&v39, 8);

  return v17;
}

void __35__VSAppsOperation_createAppsResult__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __35__VSAppsOperation_createAppsResult__block_invoke_2_cold_1(v2, v3);
  }
}

- (void)filterVisionOSCompatibleApps:(id)apps
{
  v3 = MEMORY[0x277CCAC30];
  appsCopy = apps;
  v11 = [v3 predicateWithBlock:&__block_literal_global_9];
  availableApps = [appsCopy availableApps];
  v6 = [availableApps filteredArrayUsingPredicate:v11];
  [appsCopy setAvailableApps:v6];

  subscribedApps = [appsCopy subscribedApps];
  v8 = [subscribedApps filteredArrayUsingPredicate:v11];
  [appsCopy setSubscribedApps:v8];

  nonChannelApps = [appsCopy nonChannelApps];
  v10 = [nonChannelApps filteredArrayUsingPredicate:v11];
  [appsCopy setNonChannelApps:v10];
}

uint64_t __48__VSAppsOperation_filterVisionOSCompatibleApps___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 isVisionOSCompatible];
  if (v3)
  {
    v4 = [v2 isVisionOSCompatible];
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)executionDidBegin
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[VSAppsOperation executionDidBegin]";
    _os_log_impl(&dword_270DD4000, v3, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  accountChannels = [(VSAppsOperation *)self accountChannels];
  v5 = accountChannels == 0;

  if (v5)
  {
    dispatchGroup = [(VSAppsOperation *)self dispatchGroup];
    dispatch_group_enter(dispatchGroup);

    mEMORY[0x277CE21C8] = [MEMORY[0x277CE21C8] sharedCenter];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __36__VSAppsOperation_executionDidBegin__block_invoke;
    v14[3] = &unk_279E1A6D0;
    objc_copyWeak(&v15, buf);
    [mEMORY[0x277CE21C8] fetchAccountChannelsWithCompletionHandler:v14];

    objc_destroyWeak(&v15);
  }

  dispatchGroup2 = [(VSAppsOperation *)self dispatchGroup];
  dispatch_group_enter(dispatchGroup2);

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __36__VSAppsOperation_executionDidBegin__block_invoke_2;
  v12[3] = &unk_279E1A6F8;
  objc_copyWeak(&v13, buf);
  [(VSAppsOperation *)self fetchChannelAppsWithCompletion:v12];
  dispatchGroup3 = [(VSAppsOperation *)self dispatchGroup];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__VSAppsOperation_executionDidBegin__block_invoke_3;
  block[3] = &unk_279E19D48;
  objc_copyWeak(&v11, buf);
  dispatch_group_notify(dispatchGroup3, MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __36__VSAppsOperation_executionDidBegin__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAccountChannels:v3];

  v4 = [WeakRetained dispatchGroup];
  dispatch_group_leave(v4);
}

void __36__VSAppsOperation_executionDidBegin__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setChannelAppsFailable:v3];

  v4 = [WeakRetained dispatchGroup];
  dispatch_group_leave(v4);
}

void __36__VSAppsOperation_executionDidBegin__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained createAppsResult];
  [WeakRetained setResult:v1];
  [WeakRetained finishExecutionIfPossible];
}

void __35__VSAppsOperation_createAppsResult__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_270DD4000, a2, OS_LOG_TYPE_ERROR, "Error fetching channel apps: %@", &v2, 0xCu);
}

@end