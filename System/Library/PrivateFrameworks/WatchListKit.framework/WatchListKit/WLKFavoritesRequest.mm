@interface WLKFavoritesRequest
- (id)convertToWLKFavorite:(id)favorite;
- (void)makeRequestWithCompletion:(id)completion;
@end

@implementation WLKFavoritesRequest

- (void)makeRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = [[WLKSportsFavoriteRequestOperation alloc] initWithAction:0 ids:0];
    objc_initWeak(&location, v5);
    objc_initWeak(&from, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __49__WLKFavoritesRequest_makeRequestWithCompletion___block_invoke;
    v7[3] = &unk_279E5E9E8;
    objc_copyWeak(&v9, &location);
    objc_copyWeak(&v10, &from);
    v8 = completionCopy;
    [(WLKSportsFavoriteRequestOperation *)v5 setCompletionBlock:v7];
    wlkDefaultQueue = [MEMORY[0x277CCABD8] wlkDefaultQueue];
    [wlkDefaultQueue addOperation:v5];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __49__WLKFavoritesRequest_makeRequestWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained response];
  v4 = [v3 favorites];

  v5 = [v2 convertToWLKFavorite:v4];
  if (WLKIsTVApp(v5, v6))
  {
    v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277CBEBD0]);
    v9 = WLKTVAppBundleID();
    v7 = [v8 initWithSuiteName:v9];
  }

  v10 = [MEMORY[0x277CBEAA8] now];
  [v7 setObject:v10 forKey:@"WLKSettingsLastSyncDate"];

  v11 = *(a1 + 32);
  v12 = [WeakRetained error];
  (*(v11 + 16))(v11, v5, v12);
}

- (id)convertToWLKFavorite:(id)favorite
{
  v23 = *MEMORY[0x277D85DE8];
  favoriteCopy = favorite;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = favoriteCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [WLKFavorite alloc];
        v12 = [v10 ID];
        name = [v10 name];
        leagueId = [v10 leagueId];
        v15 = [(WLKFavorite *)v11 initWithID:v12 name:name leagueID:leagueId];
        [v4 addObject:v15];
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v16 = [v4 copy];

  return v16;
}

@end