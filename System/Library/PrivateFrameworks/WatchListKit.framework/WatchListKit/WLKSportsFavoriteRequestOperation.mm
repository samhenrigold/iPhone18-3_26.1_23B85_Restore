@interface WLKSportsFavoriteRequestOperation
- (WLKSportsFavoriteRequestOperation)initWithAction:(unint64_t)action ids:(id)ids caller:(id)caller;
- (id)_preparePOSTQueryOnlyWithRequest:(id)request;
- (void)prepareURLRequest:(id)request;
- (void)processResponse;
@end

@implementation WLKSportsFavoriteRequestOperation

- (WLKSportsFavoriteRequestOperation)initWithAction:(unint64_t)action ids:(id)ids caller:(id)caller
{
  v24[1] = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  callerCopy = caller;
  if (action == 2)
  {
    WLKRequireNonNilParameter(idsCopy);
    v21 = @"id";
    v11 = [idsCopy componentsJoinedByString:{@", "}];
    v22 = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    [WLKURLRequestProperties requestPropertiesWithEndpoint:@"favorite-teams" queryParameters:v12 httpMethod:@"DELETE" httpBody:0 headers:0 caller:callerCopy timeout:0 apiVersion:&unk_288222C38 options:0x200000];
    goto LABEL_7;
  }

  if (action == 1)
  {
    WLKRequireNonNilParameter(idsCopy);
    v23 = @"id";
    v11 = [idsCopy componentsJoinedByString:{@", "}];
    v24[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    [WLKURLRequestProperties requestPropertiesWithEndpoint:@"favorite-teams" queryParameters:v12 httpMethod:@"POST" httpBody:0 headers:0 caller:callerCopy timeout:0 apiVersion:&unk_288222C38 options:0x200000];
    v10 = LABEL_7:;

    goto LABEL_9;
  }

  if (action)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Invalid action provided (%ld)", action}];
    v10 = 0;
  }

  else
  {
    v10 = [WLKURLRequestProperties requestPropertiesWithEndpoint:@"favorite-teams" queryParameters:0 httpMethod:@"GET" httpBody:0 headers:0 caller:callerCopy timeout:0 apiVersion:&unk_288222C38 options:2097160];
  }

LABEL_9:
  v20.receiver = self;
  v20.super_class = WLKSportsFavoriteRequestOperation;
  v13 = [(WLKUTSNetworkRequestOperation *)&v20 initWithRequestProperties:v10];
  v14 = v13;
  if (v13)
  {
    v13->_action = action;
    v15 = [idsCopy copy];
    ids = v14->_ids;
    v14->_ids = v15;

    v17 = [callerCopy copy];
    caller = v14->_caller;
    v14->_caller = v17;
  }

  return v14;
}

- (void)processResponse
{
  v7 = objc_alloc_init(WLKDictionaryResponseProcessor);
  [(WLKDictionaryResponseProcessor *)v7 setObjectClass:objc_opt_class()];
  data = [(WLKNetworkRequestOperation *)self data];
  v4 = [(WLKDictionaryResponseProcessor *)v7 processResponseData:data error:0];
  response = self->_response;
  self->_response = v4;

  if ([(WLKSportsFavoriteRequestOperation *)self action]== 1 || [(WLKSportsFavoriteRequestOperation *)self action]== 2)
  {
    v6 = dispatch_get_global_queue(21, 0);
    dispatch_async(v6, &__block_literal_global_22);
  }
}

void __52__WLKSportsFavoriteRequestOperation_processResponse__block_invoke(uint64_t a1, uint64_t a2)
{
  if (WLKIsTVApp(a1, a2))
  {
    v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  }

  else
  {
    v2 = objc_alloc(MEMORY[0x277CBEBD0]);
    v3 = WLKTVAppBundleID();
    v8 = [v2 initWithSuiteName:v3];
  }

  v4 = [MEMORY[0x277CBEAA8] now];
  [v8 setObject:v4 forKey:@"WLKSettingsLastSyncDate"];

  v5 = objc_alloc_init(MEMORY[0x277D2BA60]);
  v6 = WLKTVAppBundleID();
  v7 = [MEMORY[0x277CBEB98] setWithObject:@"WLKSettingsLastSyncDate"];
  [v5 synchronizeUserDefaultsDomain:v6 keys:v7];
}

- (void)prepareURLRequest:(id)request
{
  requestCopy = request;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__WLKSportsFavoriteRequestOperation_prepareURLRequest___block_invoke;
  v7[3] = &unk_279E5F4D8;
  v7[4] = self;
  v8 = requestCopy;
  v6.receiver = self;
  v6.super_class = WLKSportsFavoriteRequestOperation;
  v5 = requestCopy;
  [(WLKUTSNetworkRequestOperation *)&v6 prepareURLRequest:v7];
}

void __55__WLKSportsFavoriteRequestOperation_prepareURLRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  if ([v5 action] == 1)
  {
    v7 = [*(a1 + 32) _preparePOSTQueryOnlyWithRequest:v6];

    v6 = v7;
  }

  (*(*(a1 + 40) + 16))();
}

- (id)_preparePOSTQueryOnlyWithRequest:(id)request
{
  requestCopy = request;
  v4 = [requestCopy mutableCopy];
  v5 = [requestCopy URL];

  if (v5)
  {
    v6 = MEMORY[0x277CCACE0];
    v7 = [requestCopy URL];
    v8 = [v6 componentsWithURL:v7 resolvingAgainstBaseURL:0];

    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    hTTPBody = [requestCopy HTTPBody];
    v11 = [v9 initWithData:hTTPBody encoding:4];

    if (v8 && v11)
    {
      [v8 setQuery:v11];
      v12 = [v8 URL];
      if (v12)
      {
        [v4 setURL:v12];
        [v4 setHTTPBody:0];
        [v4 setValue:0 forHTTPHeaderField:@"Content-Type"];
      }
    }
  }

  return v4;
}

@end