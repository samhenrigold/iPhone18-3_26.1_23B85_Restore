@interface WLKFavoritesModificationRequestOperation
- (WLKFavoritesModificationRequestOperation)initWithAction:(unint64_t)action entityId:(id)id caller:(id)caller;
- (void)processResponse;
@end

@implementation WLKFavoritesModificationRequestOperation

- (WLKFavoritesModificationRequestOperation)initWithAction:(unint64_t)action entityId:(id)id caller:(id)caller
{
  v20[2] = *MEMORY[0x277D85DE8];
  idCopy = id;
  callerCopy = caller;
  if (idCopy)
  {
    if (action)
    {
      if (action == 1)
      {
        v11 = @"favorites/remove";
      }

      else
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Invalid action provided (%ld)", action}];
        v11 = 0;
      }
    }

    else
    {
      v11 = @"favorites/add";
    }

    v19[0] = @"entityId";
    v19[1] = @"entityType";
    v20[0] = idCopy;
    v20[1] = @"team";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v14 = [WLKURLRequestProperties requestPropertiesWithEndpoint:v11 queryParameters:v13 httpMethod:@"POST" caller:callerCopy];
    v18.receiver = self;
    v18.super_class = WLKFavoritesModificationRequestOperation;
    v15 = [(WLKUTSNetworkRequestOperation *)&v18 initWithRequestProperties:v14];
    v16 = v15;
    if (v15)
    {
      v15->_action = action;
      objc_storeStrong(&v15->_entityID, id);
    }

    self = v16;

    selfCopy = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"entity ID is required"];
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)processResponse
{
  if (WLKIsTVApp(self, a2))
  {
    v2 = dispatch_get_global_queue(21, 0);
    dispatch_async(v2, &__block_literal_global_51);
  }
}

void __59__WLKFavoritesModificationRequestOperation_processResponse__block_invoke()
{
  v4 = [MEMORY[0x277CBEAA8] date];
  NSLog(&cfstr_Wlkfavoritesmo_0.isa, v4);
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v0 setObject:v4 forKey:@"WLKFavoritesModificationDate"];

  v1 = objc_alloc_init(MEMORY[0x277D2BA60]);
  v2 = WLKTVAppBundleID();
  v3 = [MEMORY[0x277CBEB98] setWithObject:@"WLKFavoritesModificationDate"];
  [v1 synchronizeUserDefaultsDomain:v2 keys:v3];
}

@end