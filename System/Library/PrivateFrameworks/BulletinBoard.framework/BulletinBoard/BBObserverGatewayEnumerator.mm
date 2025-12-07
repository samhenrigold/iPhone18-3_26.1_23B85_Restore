@interface BBObserverGatewayEnumerator
- (BBObserverGatewayEnumerator)init;
- (id)defaultGateway;
- (void)attemptNextGatewayInEnumerator:(id)enumerator playLightsAndSirens:(BOOL)sirens completion:(id)completion;
- (void)cancel;
- (void)enumerateWithCompletion:(id)completion;
- (void)sendToDefaultGatewayToPlayLightsAndSirens:(BOOL)sirens;
@end

@implementation BBObserverGatewayEnumerator

- (BBObserverGatewayEnumerator)init
{
  v6.receiver = self;
  v6.super_class = BBObserverGatewayEnumerator;
  v2 = [(BBObserverGatewayEnumerator *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    gatewaysPlayedLightsAndSirens = v2->_gatewaysPlayedLightsAndSirens;
    v2->_gatewaysPlayedLightsAndSirens = v3;
  }

  return v2;
}

- (void)cancel
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = BBLogGateway;
  if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    bulletin = [(BBObserverGatewayEnumerator *)self bulletin];
    bulletinID = [bulletin bulletinID];
    bulletin2 = [(BBObserverGatewayEnumerator *)self bulletin];
    sectionID = [bulletin2 sectionID];
    v9 = 138543618;
    v10 = bulletinID;
    v11 = 2114;
    v12 = sectionID;
    _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Gateway enumerator for bulletin %{public}@ in section %{public}@ cancelled", &v9, 0x16u);
  }

  self->_cancelled = 1;
}

- (void)enumerateWithCompletion:(id)completion
{
  gateways = self->_gateways;
  completionCopy = completion;
  objectEnumerator = [(NSArray *)gateways objectEnumerator];
  [(BBObserverGatewayEnumerator *)self attemptNextGatewayInEnumerator:objectEnumerator playLightsAndSirens:1 completion:completionCopy];
}

- (void)attemptNextGatewayInEnumerator:(id)enumerator playLightsAndSirens:(BOOL)sirens completion:(id)completion
{
  sirensCopy = sirens;
  v35 = *MEMORY[0x277D85DE8];
  enumeratorCopy = enumerator;
  completionCopy = completion;
  bulletinID = [(BBBulletin *)self->_bulletin bulletinID];
  sectionID = [(BBBulletin *)self->_bulletin sectionID];
  nextObject = [enumeratorCopy nextObject];
  name = [nextObject name];
  if (self->_cancelled)
  {
    v14 = BBLogGateway;
    if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v30 = bulletinID;
      v31 = 2114;
      v32 = sectionID;
      v15 = "Gateway enumerator was cancelled for bulletin %{public}@ in section %{public}@";
LABEL_10:
      _os_log_impl(&dword_241EFF000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0x16u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (!nextObject)
  {
    [(BBObserverGatewayEnumerator *)self sendToDefaultGatewayToPlayLightsAndSirens:sirensCopy];
    v14 = BBLogGateway;
    if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v30 = bulletinID;
      v31 = 2114;
      v32 = sectionID;
      v15 = "Gateway enumerator was completed for bulletin %{public}@ in section %{public}@";
      goto LABEL_10;
    }

LABEL_11:
    completionCopy[2](completionCopy);
    goto LABEL_12;
  }

  v16 = BBLogGateway;
  if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v30 = name;
    v31 = 2114;
    v32 = bulletinID;
    v33 = 2114;
    v34 = sectionID;
    _os_log_impl(&dword_241EFF000, v16, OS_LOG_TYPE_DEFAULT, "Attempt gateway %{public}@ for bulletin %{public}@ in section %{public}@", buf, 0x20u);
  }

  bulletin = self->_bulletin;
  feeds = self->_feeds;
  gatewayTimeout = self->_gatewayTimeout;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __93__BBObserverGatewayEnumerator_attemptNextGatewayInEnumerator_playLightsAndSirens_completion___block_invoke;
  v20[3] = &unk_278D2BA60;
  v21 = name;
  v22 = bulletinID;
  v23 = sectionID;
  selfCopy = self;
  v25 = nextObject;
  v28 = sirensCopy;
  v26 = enumeratorCopy;
  v27 = completionCopy;
  [v25 sendAddBulletin:bulletin playLightsAndSirens:sirensCopy forFeeds:feeds withTimeout:v20 handler:gatewayTimeout];

LABEL_12:
}

void __93__BBObserverGatewayEnumerator_attemptNextGatewayInEnumerator_playLightsAndSirens_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = BBLogGateway;
  if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v7 = "DID";
    }

    else
    {
      v7 = "DID NOT";
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(a1 + 48);
    v10 = *(a1 + 56);
    v12 = v6;
    v13 = [v10 cancelled];
    *v15 = 138544386;
    v14 = "NOT";
    *&v15[4] = v8;
    *&v15[12] = 2082;
    if (v13)
    {
      v14 = "";
    }

    *&v15[14] = v7;
    v16 = 2114;
    v17 = v9;
    v18 = 2114;
    v19 = v11;
    v20 = 2082;
    v21 = v14;
    _os_log_impl(&dword_241EFF000, v12, OS_LOG_TYPE_DEFAULT, "Gateway enumerator received from %{public}@ %{public}s play lights and sirens for %{public}@ in section %{public}@ currently %{public}s cancelled", v15, 0x34u);
  }

  if (a2)
  {
    [*(*(a1 + 56) + 48) addObject:*(a1 + 64)];
  }

  [*(a1 + 56) attemptNextGatewayInEnumerator:*(a1 + 72) playLightsAndSirens:(a2 ^ 1) & *(a1 + 88) completion:{*(a1 + 80), *v15, *&v15[8]}];
}

- (id)defaultGateway
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_gateways;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 gatewayPriority] == 3)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)sendToDefaultGatewayToPlayLightsAndSirens:(BOOL)sirens
{
  sirensCopy = sirens;
  v17 = *MEMORY[0x277D85DE8];
  defaultGateway = [(BBObserverGatewayEnumerator *)self defaultGateway];
  if (([(NSMutableSet *)self->_gatewaysPlayedLightsAndSirens containsObject:defaultGateway]& 1) == 0)
  {
    v6 = BBLogGateway;
    if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      name = [defaultGateway name];
      bulletinID = [(BBBulletin *)self->_bulletin bulletinID];
      sectionID = [(BBBulletin *)self->_bulletin sectionID];
      v11 = 138543874;
      v12 = name;
      v13 = 2114;
      v14 = bulletinID;
      v15 = 2114;
      v16 = sectionID;
      _os_log_impl(&dword_241EFF000, v7, OS_LOG_TYPE_DEFAULT, "Attempt default gateway %{public}@ for bulletin %{public}@ in section %{public}@", &v11, 0x20u);
    }

    [defaultGateway sendObserversAddBulletin:self->_bulletin playLightsAndSirens:sirensCopy forFeeds:self->_feeds];
  }
}

@end