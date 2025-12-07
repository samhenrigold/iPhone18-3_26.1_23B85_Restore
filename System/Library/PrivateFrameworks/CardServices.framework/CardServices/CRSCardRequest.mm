@interface CRSCardRequest
+ (void)initialize;
+ (void)registerService:(id)service;
- (CRSCardRequest)initWithContent:(id)content format:(unint64_t)format;
- (void)_loadAndRegisterBundleServices:(id)services;
- (void)_tryRemainingCardServices:(id)services reply:(id)reply;
- (void)startWithReply:(id)reply;
@end

@implementation CRSCardRequest

- (CRSCardRequest)initWithContent:(id)content format:(unint64_t)format
{
  contentCopy = content;
  v14.receiver = self;
  v14.super_class = CRSCardRequest;
  v8 = [(CRSCardRequest *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_content, content);
    v9->_format = format;
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v11 = dispatch_queue_create("com.apple.CardServices.CRSCardRequest.request-queue", v10);
    queue = v9->_queue;
    v9->_queue = v11;

    v9->_loadsBundleServices = 1;
  }

  return v9;
}

- (void)startWithReply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    v5 = self->_queue;
    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __33__CRSCardRequest_startWithReply___block_invoke;
    v13[3] = &unk_278DA4FC0;
    v6 = v5;
    v14 = v6;
    objc_copyWeak(&v17, &location);
    v7 = replyCopy;
    selfCopy = self;
    v16 = v7;
    v8 = MEMORY[0x245D2D910](v13);
    v9 = v8;
    if (self->_loadsBundleServices)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __33__CRSCardRequest_startWithReply___block_invoke_56;
      v10[3] = &unk_278DA4FE8;
      v11 = v7;
      v12 = v9;
      [(CRSCardRequest *)self _loadAndRegisterBundleServices:v10];
    }

    else
    {
      (*(v8 + 16))(v8);
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __33__CRSCardRequest_startWithReply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__CRSCardRequest_startWithReply___block_invoke_2;
  block[3] = &unk_278DA4F98;
  objc_copyWeak(&v6, (a1 + 56));
  v3 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v5 = v3;
  dispatch_async(v2, block);

  objc_destroyWeak(&v6);
}

void __33__CRSCardRequest_startWithReply___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v38 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
    {
      v4 = *(v1 + 32);
      *buf = 138412290;
      v34 = v4;
      _os_log_impl(&dword_243268000, v3, OS_LOG_TYPE_INFO, "Starting card request: %@", buf, 0xCu);
    }

    v5 = +[CRSIdentifiedServiceRegistry sharedInstance];
    v6 = [v5 identifiedServices];

    v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      do
      {
        v11 = 0;
        v27 = v9;
        do
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v29 + 1) + 8 * v11);
          if ([v12 conformsToProtocol:&unk_2855F2AE0])
          {
            v13 = v12;
            if ([v13 canSatisfyCardRequest:WeakRetained])
            {
              [*(v1 + 32) _excludedServiceIdentifiers];
              v15 = v14 = v10;
              [v13 serviceIdentifier];
              v16 = v7;
              v17 = WeakRetained;
              v19 = v18 = v1;
              v20 = [v15 containsObject:v19];

              v1 = v18;
              WeakRetained = v17;
              v7 = v16;

              v10 = v14;
              v9 = v27;
              if ((v20 & 1) == 0)
              {
                [v26 addObject:v13];
              }
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v9);
    }

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __33__CRSCardRequest_startWithReply___block_invoke_52;
    v28[3] = &unk_278DA4F70;
    v28[4] = WeakRetained;
    [v26 sortUsingComparator:v28];
    v21 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
    {
      v22 = *(v1 + 32);
      v23 = v21;
      v24 = [v26 reverseObjectEnumerator];
      v25 = [v24 allObjects];
      *buf = 138412546;
      v34 = v22;
      v35 = 2112;
      v36 = v25;
      _os_log_impl(&dword_243268000, v23, OS_LOG_TYPE_INFO, "Sorted card services by priority for request %@: %@", buf, 0x16u);
    }

    [WeakRetained _tryRemainingCardServices:v26 reply:*(v1 + 40)];
  }

  else
  {
    (*(*(v1 + 40) + 16))();
  }
}

uint64_t __33__CRSCardRequest_startWithReply___block_invoke_52(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 servicePriorityForRequest:v5];
  v8 = [v6 servicePriorityForRequest:*(a1 + 32)];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v11 = [v9 compare:v10];

  return v11;
}

uint64_t __33__CRSCardRequest_startWithReply___block_invoke_56(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

+ (void)initialize
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___CRSCardRequest;
  objc_msgSendSuper2(&v4, sel_initialize);
  CRLogInitIfNeeded();
  v3 = objc_alloc_init(_CRSPassthroughService);
  [self registerService:v3];
}

- (void)_loadAndRegisterBundleServices:(id)services
{
  servicesCopy = services;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__CRSCardRequest__loadAndRegisterBundleServices___block_invoke;
  v7[3] = &unk_278DA5010;
  v7[4] = self;
  v8 = servicesCopy;
  v6 = servicesCopy;
  dispatch_async(queue, v7);
}

void __49__CRSCardRequest__loadAndRegisterBundleServices___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&dword_243268000, v2, OS_LOG_TYPE_INFO, "Loading and registering bundle services if necessary: %@", buf, 0xCu);
  }

  v4 = +[(_CRSServiceBundleManager *)_CRSCardServiceBundleManager];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__CRSCardRequest__loadAndRegisterBundleServices___block_invoke_63;
  v5[3] = &unk_278DA4F48;
  v6 = *(a1 + 40);
  [v4 getServiceBundlesWithCompletion:v5];
}

void __49__CRSCardRequest__loadAndRegisterBundleServices___block_invoke_63(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 16);
LABEL_13:
      v8();
    }
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v5);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          v14 = +[CRSIdentifiedServiceRegistry sharedInstance];
          [v14 registerIdentifiedService:v13];
        }

        v10 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    v15 = *(a1 + 32);
    if (v15)
    {
      v8 = *(v15 + 16);
      goto LABEL_13;
    }
  }
}

- (void)_tryRemainingCardServices:(id)services reply:(id)reply
{
  servicesCopy = services;
  replyCopy = reply;
  if (replyCopy)
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__CRSCardRequest__tryRemainingCardServices_reply___block_invoke;
    block[3] = &unk_278DA50B0;
    objc_copyWeak(&v13, &location);
    v10 = servicesCopy;
    selfCopy = self;
    v12 = replyCopy;
    dispatch_async(queue, block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __50__CRSCardRequest__tryRemainingCardServices_reply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy_;
  v25[4] = __Block_byref_object_dispose_;
  v26 = 0;
  v3 = [*(a1 + 32) lastObject];
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  objc_initWeak(&location, WeakRetained);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __50__CRSCardRequest__tryRemainingCardServices_reply___block_invoke_65;
  v18[3] = &unk_278DA5060;
  objc_copyWeak(&v23, &location);
  v18[4] = WeakRetained;
  v5 = v3;
  v6 = *(a1 + 40);
  v19 = v5;
  v20 = v6;
  v22 = v25;
  v7 = v4;
  v21 = v7;
  [v5 requestCard:WeakRetained reply:v18];
  if (WeakRetained)
  {
    v8 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__CRSCardRequest__tryRemainingCardServices_reply___block_invoke_67;
    block[3] = &unk_278DA5088;
    objc_copyWeak(&v17, &location);
    v12 = *(a1 + 32);
    v16 = v25;
    v9 = *(a1 + 48);
    v10 = *(a1 + 40);
    v13 = 0;
    v14 = v10;
    v15 = v9;
    dispatch_group_notify(v7, v8, block);

    objc_destroyWeak(&v17);
  }

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  _Block_object_dispose(v25, 8);
}

void __50__CRSCardRequest__tryRemainingCardServices_reply___block_invoke_65(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&to, (a1 + 72));
  v7 = objc_loadWeakRetained(&to);

  if (v7)
  {
    v8 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__CRSCardRequest__tryRemainingCardServices_reply___block_invoke_2;
    block[3] = &unk_278DA5038;
    v14 = v6;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v15 = v9;
    v16 = v10;
    v17 = v5;
    v12 = *(a1 + 56);
    v11 = v12;
    v18 = v12;
    dispatch_async(v8, block);
  }

  objc_destroyWeak(&to);
}

void __50__CRSCardRequest__tryRemainingCardServices_reply___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
    {
      __50__CRSCardRequest__tryRemainingCardServices_reply___block_invoke_2_cold_1(a1, v2, v3);
    }
  }

  else
  {
    v4 = *(a1 + 56);
    v5 = *MEMORY[0x277CF93F0];
    v6 = os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO);
    if (v4)
    {
      if (v6)
      {
        v8 = *(a1 + 48);
        v7 = *(a1 + 56);
        v9 = *(a1 + 40);
        v12 = 138412802;
        v13 = v7;
        v14 = 2112;
        v15 = v9;
        v16 = 2112;
        v17 = v8;
        _os_log_impl(&dword_243268000, v5, OS_LOG_TYPE_INFO, "Retrieved card %@ from service %@ for request %@", &v12, 0x20u);
      }

      objc_storeStrong((*(*(a1 + 72) + 8) + 40), *(a1 + 56));
    }

    else if (v6)
    {
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&dword_243268000, v5, OS_LOG_TYPE_INFO, "No card retrieved from service %@ for request %@", &v12, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 64));
}

void __50__CRSCardRequest__tryRemainingCardServices_reply___block_invoke_67(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  objc_copyWeak(&to, (a1 + 72));
  v2 = [*(a1 + 32) mutableCopy];
  [v2 removeLastObject];
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v3 = objc_alloc_init(CRSCardResponse);
    [(CRSCardResponse *)v3 setCard:*(*(*(a1 + 64) + 8) + 40)];
    v4 = objc_loadWeakRetained(&to);
    [(CRSCardResponse *)v3 setRequest:v4];

    (*(*(a1 + 56) + 16))();
    if ([v2 count])
    {
      v5 = *MEMORY[0x277CF93F0];
      if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v14 = v2;
        _os_log_impl(&dword_243268000, v5, OS_LOG_TYPE_INFO, "Found card, so not trying remaining services %@", buf, 0xCu);
      }
    }

    goto LABEL_10;
  }

  if (![v2 count])
  {
    v7 = *(a1 + 56);
    v8 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA068];
    v12 = @"No service produced a card";
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v9 = [v8 errorWithDomain:*MEMORY[0x277CF93E8] code:401 userInfo:v3];
    (*(v7 + 16))(v7, 0, v9);

LABEL_10:
    goto LABEL_11;
  }

  v6 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v14 = v2;
    _os_log_impl(&dword_243268000, v6, OS_LOG_TYPE_INFO, "Trying remaining services %@", buf, 0xCu);
  }

  [*(a1 + 48) _tryRemainingCardServices:v2 reply:*(a1 + 56)];
LABEL_11:

  objc_destroyWeak(&to);
}

+ (void)registerService:(id)service
{
  serviceCopy = service;
  v4 = +[CRSIdentifiedServiceRegistry sharedInstance];
  [v4 registerIdentifiedService:serviceCopy];
}

void __50__CRSCardRequest__tryRemainingCardServices_reply___block_invoke_2_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *a2;
  v6 = 138412802;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  v10 = 2112;
  v11 = v5;
  _os_log_error_impl(&dword_243268000, log, OS_LOG_TYPE_ERROR, "Failed to retrieve card from service %@ for request %@ due to error: %@", &v6, 0x20u);
}

@end