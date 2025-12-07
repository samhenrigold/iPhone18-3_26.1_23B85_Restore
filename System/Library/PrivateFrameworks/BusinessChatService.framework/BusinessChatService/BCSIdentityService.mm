@interface BCSIdentityService
+ (id)sharedInstance;
- (id)businessChatAccount;
- (void)refreshIDStatusForBizID:(id)d completion:(id)completion;
@end

@implementation BCSIdentityService

+ (id)sharedInstance
{
  objc_opt_self();
  v1 = _MergedGlobals_39;
  if (!_MergedGlobals_39)
  {
    if (qword_280BCF580 != -1)
    {
      dispatch_once(&qword_280BCF580, &__block_literal_global_5);
    }

    v1 = _MergedGlobals_39;
  }

  return v1;
}

void __36__BCSIdentityService_sharedInstance__block_invoke()
{
  v0 = [BCSIdentityService alloc];
  v1 = objc_alloc_init(BCSIDSServiceFactory);
  v2 = [MEMORY[0x277D18728] sharedInstance];
  v8 = v1;
  v3 = v2;
  if (v0)
  {
    v9.receiver = v0;
    v9.super_class = BCSIdentityService;
    v4 = objc_msgSendSuper2(&v9, sel_init);
    v0 = v4;
    if (v4)
    {
      objc_storeStrong(&v4->_IDSServiceFactory, v1);
      objc_storeStrong(&v0->_IDSQueryController, v2);
      v5 = dispatch_queue_create([@"com.apple.businesschatservice.bizItemController.serialqueue" UTF8String], 0);
      serialDispatchQueue = v0->_serialDispatchQueue;
      v0->_serialDispatchQueue = v5;
    }
  }

  v7 = _MergedGlobals_39;
  _MergedGlobals_39 = v0;
}

- (id)businessChatAccount
{
  v24 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_businessChatAccount)
  {
    v3 = selfCopy->_IDSServiceFactory;
    makeIDSService = [(BCSIDSServiceFactoryProtocol *)v3 makeIDSService];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    accounts = [makeIDSService accounts];
    v6 = [accounts countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      v9 = *v20;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(accounts);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          if ([v11 accountType] == 1)
          {
            v12 = v11;

            v7 = v12;
          }

          if (![v11 accountType])
          {
            v13 = v11;

            v8 = v13;
          }
        }

        v6 = [accounts countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v6);

      if (v7)
      {
        v14 = v7;
        v15 = v14;
LABEL_17:
        businessChatAccount = selfCopy->_businessChatAccount;
        selfCopy->_businessChatAccount = v14;

        goto LABEL_18;
      }
    }

    else
    {

      v8 = 0;
    }

    v14 = v8;
    v15 = 0;
    v8 = v14;
    goto LABEL_17;
  }

LABEL_18:
  objc_sync_exit(selfCopy);

  v17 = selfCopy->_businessChatAccount;

  return v17;
}

- (void)refreshIDStatusForBizID:(id)d completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    if (self)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __54__BCSIdentityService__addIDSIDQueryControllerDelegate__block_invoke;
      v26 = &unk_278D38CC8;
      selfCopy = self;
      if (_addIDSIDQueryControllerDelegate_onceToken != -1)
      {
        dispatch_once(&_addIDSIDQueryControllerDelegate_onceToken, buf);
      }

      IDSQueryController = self->_IDSQueryController;
    }

    else
    {
      IDSQueryController = 0;
    }

    v9 = [(BCSIDSQueryControllerProtocol *)IDSQueryController _currentIDStatusForDestination:dCopy service:@"com.apple.private.alloy.biz" listenerID:@"com.apple.businesschatservice.bizItemController"];
    v10 = ABSLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "[BCSIdentityService refreshIDStatusForBizID:completion:]";
      *&buf[12] = 2048;
      *&buf[14] = v9;
      *&buf[22] = 2112;
      v26 = dCopy;
      _os_log_impl(&dword_242072000, v10, OS_LOG_TYPE_DEFAULT, "%s Cached IDSIDStatus result: %ld for destination: %@", buf, 0x20u);
    }

    if (v9)
    {
      if (self)
      {
        v11 = self->_IDSQueryController;
        self = self->_serialDispatchQueue;
      }

      else
      {
        v11 = 0;
      }

      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __57__BCSIdentityService_refreshIDStatusForBizID_completion___block_invoke_13;
      v20[3] = &unk_278D39AA8;
      v21 = dCopy;
      [(BCSIDSQueryControllerProtocol *)v11 refreshIDStatusForDestination:v21 service:@"com.apple.private.alloy.biz" listenerID:@"com.apple.businesschatservice.bizItemController" queue:self completionBlock:v20];

      completionCopy[2](completionCopy, v9 == 1);
      v12 = v21;
    }

    else
    {
      if (self)
      {
        idStatusCompletionBlocks = self->_idStatusCompletionBlocks;
        if (!idStatusCompletionBlocks)
        {
          v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v15 = self->_idStatusCompletionBlocks;
          self->_idStatusCompletionBlocks = v14;

          idStatusCompletionBlocks = self->_idStatusCompletionBlocks;
        }
      }

      else
      {

        idStatusCompletionBlocks = 0;
      }

      v12 = [(NSMutableDictionary *)idStatusCompletionBlocks objectForKey:dCopy];
      if (!v12)
      {
        v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
        if (self)
        {
          v16 = self->_idStatusCompletionBlocks;
        }

        else
        {
          v16 = 0;
        }

        [(NSMutableDictionary *)v16 setValue:v12 forKey:dCopy];
      }

      v17 = MEMORY[0x245D07100](completionCopy);
      [v12 addObject:v17];

      if (self)
      {
        v18 = self->_IDSQueryController;
        serialDispatchQueue = self->_serialDispatchQueue;
      }

      else
      {
        v18 = 0;
        serialDispatchQueue = 0;
      }

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __57__BCSIdentityService_refreshIDStatusForBizID_completion___block_invoke;
      v22[3] = &unk_278D39A80;
      v23 = dCopy;
      selfCopy2 = self;
      [(BCSIDSQueryControllerProtocol *)v18 refreshIDStatusForDestination:v23 service:@"com.apple.private.alloy.biz" listenerID:@"com.apple.businesschatservice.bizItemController" queue:serialDispatchQueue completionBlock:v22];
    }
  }
}

void __57__BCSIdentityService_refreshIDStatusForBizID_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = ABSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 134218242;
    v21 = a2;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_242072000, v4, OS_LOG_TYPE_DEFAULT, "IDSIDStatus result: %ld for destination: %@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = [*(v6 + 24) objectForKey:*(a1 + 32)];
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:buf count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if (a2)
          {
            v14 = *(*(&v16 + 1) + 8 * i);
            (*(v14 + 16))(v14, a2 == 1);
            v15 = MEMORY[0x245D07100](v14);
            [v8 addObject:{v15, v16}];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:buf count:16];
      }

      while (v11);
    }

    [v9 minusSet:v8];
  }
}

void __57__BCSIdentityService_refreshIDStatusForBizID_completion___block_invoke_13(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = ABSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 134218242;
    v7 = a2;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_242072000, v4, OS_LOG_TYPE_DEFAULT, "Refreshed IDSIDStatus result: %ld for destination: %@", &v6, 0x16u);
  }
}

void __54__BCSIdentityService__addIDSIDQueryControllerDelegate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 40);
    v3 = *(v1 + 16);
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v4 = v2;
  [v4 addDelegate:v1 forService:@"com.apple.private.alloy.biz" listenerID:@"com.apple.businesschatservice.bizItemController" queue:v3];
}

@end