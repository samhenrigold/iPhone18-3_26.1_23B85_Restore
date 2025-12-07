@interface WLKFavoritesRequestOperation
- (WLKFavoritesRequestOperation)initWithCaller:(id)caller;
- (void)prepareURLRequest:(id)request;
- (void)processResponse;
@end

@implementation WLKFavoritesRequestOperation

- (WLKFavoritesRequestOperation)initWithCaller:(id)caller
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = @"type";
  v12[0] = @"Team";
  v4 = MEMORY[0x277CBEAC0];
  callerCopy = caller;
  v6 = [v4 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v7 = [WLKURLRequestProperties requestPropertiesWithEndpoint:@"favorites" queryParameters:v6 httpMethod:0 headers:0 caller:callerCopy timeout:0 options:0];

  v10.receiver = self;
  v10.super_class = WLKFavoritesRequestOperation;
  v8 = [(WLKUTSNetworkRequestOperation *)&v10 initWithRequestProperties:v7];

  return v8;
}

- (void)prepareURLRequest:(id)request
{
  requestCopy = request;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__WLKFavoritesRequestOperation_prepareURLRequest___block_invoke;
  v7[3] = &unk_279E5E7D8;
  v7[4] = self;
  v8 = requestCopy;
  v6.receiver = self;
  v6.super_class = WLKFavoritesRequestOperation;
  v5 = requestCopy;
  [(WLKUTSNetworkRequestOperation *)&v6 prepareURLRequest:v7];
}

void __50__WLKFavoritesRequestOperation_prepareURLRequest___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[WLKSettingsStore sharedSettings];
  v5 = [v4 optedIn];

  if (v5)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__WLKFavoritesRequestOperation_prepareURLRequest___block_invoke_2;
    v12[3] = &unk_279E5E7B0;
    v15 = *(a1 + 40);
    v6 = v3;
    v7 = *(a1 + 32);
    v13 = v6;
    v14 = v7;
    WLKFetchIsSportsEnabled(v12);

    v8 = v15;
  }

  else
  {
    v9 = WLKNetworkingLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = objc_opt_class();
      v18 = 2112;
      v19 = @"User is not opted into TV.app";
      v10 = v17;
      _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "%@ - %@", buf, 0x16u);
    }

    v11 = *(a1 + 40);
    v8 = WLKError(300, 0, @"User is not opted into TV.app");
    (*(v11 + 16))(v11, 0, v8);
  }
}

void __50__WLKFavoritesRequestOperation_prepareURLRequest___block_invoke_2(void *a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = a1[6];
    v5 = a1[4];
    v6 = *(v4 + 16);
    v7 = a3;
    v6(v4, v5, v7);
  }

  else
  {
    v8 = a3;
    v9 = WLKNetworkingLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = objc_opt_class();
      v14 = 2112;
      v15 = @"Sports is not enabled";
      v10 = v13;
      _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "%@ - %@", &v12, 0x16u);
    }

    v11 = a1[6];
    v7 = WLKError(400, v8, @"Sports is not enabled");

    (*(v11 + 16))(v11, 0, v7);
  }
}

- (void)processResponse
{
  v18 = *MEMORY[0x277D85DE8];
  responseDictionary = [(WLKUTSNetworkRequestOperation *)self responseDictionary];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [responseDictionary objectForKeyedSubscript:@"data"];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [[WLKFavorite alloc] initWithDictionary:*(*(&v13 + 1) + 8 * v9)];
        if (v10)
        {
          [v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];
  favorites = self->_favorites;
  self->_favorites = v11;
}

@end