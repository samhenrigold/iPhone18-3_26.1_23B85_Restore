@interface WLKOfferManager
+ (id)_offerFullPath;
+ (id)_offerPath;
+ (id)defaultOfferManager;
- (WLKOfferManager)init;
- (id)_connection;
- (id)_offers;
- (id)_updateOfferFile;
- (void)_activeAccountChangedNotification:(id)notification;
- (void)_setOffers:(id)offers;
- (void)clearOffers:(id)offers;
- (void)fetchOffers:(BOOL)offers completion:(id)completion;
- (void)removeOfferByBadgeId:(id)id completionHandler:(id)handler;
- (void)saveOffer:(id)offer completionHandler:(id)handler;
- (void)sendBadgeActionMetricsEvents:(id)events;
@end

@implementation WLKOfferManager

+ (id)defaultOfferManager
{
  if (defaultOfferManager___once != -1)
  {
    +[WLKOfferManager defaultOfferManager];
  }

  v3 = defaultOfferManager___defaultOfferManager;

  return v3;
}

uint64_t __38__WLKOfferManager_defaultOfferManager__block_invoke()
{
  v0 = objc_alloc_init(WLKOfferManager);
  v1 = defaultOfferManager___defaultOfferManager;
  defaultOfferManager___defaultOfferManager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (WLKOfferManager)init
{
  v29 = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = WLKOfferManager;
  v2 = [(WLKOfferManager *)&v26 init];
  v3 = v2;
  if (v2)
  {
    v4 = WLKSystemLogObject(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - + (instancetype)defaultOfferManager - init", buf, 2u);
    }

    v5 = dispatch_queue_create("com.apple.WatchListKit.OfferManager", 0);
    queue = v3->_queue;
    v3->_queue = v5;

    if (WLKIsDaemon())
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v8 = +[WLKAccountMonitor sharedInstance];
      [defaultCenter addObserver:v3 selector:sel__activeAccountChangedNotification_ name:@"WLKAccountMonitorAccountDidChange" object:v8];

      v9 = MEMORY[0x277CBEA90];
      v10 = +[WLKOfferManager _offerFullPath];
      v11 = [v9 dataWithContentsOfFile:v10];

      if (v11)
      {
        os_unfair_lock_lock(&__offersOnDiskLock);
        v25 = 0;
        v12 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v11 error:&v25];
        v13 = v25;
        os_unfair_lock_unlock(&__offersOnDiskLock);
        if (v13)
        {
          v15 = WLKSystemLogObject(v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v28 = v13;
            _os_log_impl(&dword_272A0F000, v15, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - init read from disk failed secure unarchiver error: %@", buf, 0xCu);
          }
        }

        else
        {
          v16 = MEMORY[0x277CBEB98];
          v17 = objc_opt_class();
          v18 = objc_opt_class();
          v19 = objc_opt_class();
          v20 = objc_opt_class();
          v15 = [v16 setWithObjects:{v17, v18, v19, v20, objc_opt_class(), 0}];
          v21 = [v12 decodeObjectOfClasses:v15 forKey:*MEMORY[0x277CCA308]];
          v22 = v21;
          if (v21)
          {
            v23 = [v21 copy];
            [(WLKOfferManager *)v3 _setOffers:v23];
          }

          else
          {
            v23 = WLKSystemLogObject(0);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_272A0F000, v23, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - init read from disk unarchiver failed to decode object", buf, 2u);
            }
          }
        }
      }
    }
  }

  return v3;
}

- (void)saveOffer:(id)offer completionHandler:(id)handler
{
  offerCopy = offer;
  handlerCopy = handler;
  v8 = WLKSystemLogObject(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - saveOffer: begin", &buf, 2u);
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __47__WLKOfferManager_saveOffer_completionHandler___block_invoke;
  v28[3] = &unk_279E5EB38;
  v9 = handlerCopy;
  v29 = v9;
  v10 = MEMORY[0x2743D2DF0](v28);
  if (WLKIsDaemon())
  {
    objc_initWeak(&buf, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__WLKOfferManager_saveOffer_completionHandler___block_invoke_49;
    block[3] = &unk_279E5EB88;
    objc_copyWeak(&v26, &buf);
    v24 = offerCopy;
    v25 = v10;
    v12 = v10;
    dispatch_async(queue, block);

    objc_destroyWeak(&v26);
    objc_destroyWeak(&buf);
  }

  else
  {
    _connection = [(WLKOfferManager *)self _connection];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __47__WLKOfferManager_saveOffer_completionHandler___block_invoke_3;
    v21[3] = &unk_279E5EB38;
    v14 = v10;
    v22 = v14;
    v15 = [_connection remoteObjectProxyWithErrorHandler:v21];

    v17 = WLKSystemLogObject(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_272A0F000, v17, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - calling out to daemon for saving offer", &buf, 2u);
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __47__WLKOfferManager_saveOffer_completionHandler___block_invoke_53;
    v19[3] = &unk_279E5EB38;
    v20 = v14;
    v18 = v14;
    [v15 saveOffer:offerCopy completionHandler:v19];
  }
}

void __47__WLKOfferManager_saveOffer_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WLKSystemLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - saveOffer: end", v6, 2u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __47__WLKOfferManager_saveOffer_completionHandler___block_invoke_49(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (a1[4])
  {
    v4 = [WeakRetained _offers];
    if (!v4 || (v5 = v4, [v3 _offers], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5, !v7))
    {
      v10 = [MEMORY[0x277CBEB18] arrayWithObject:a1[4]];
LABEL_13:
      v18 = [v10 copy];
      [v3 _setOffers:v18];

      v19 = [v3 _updateOfferFile];
      (*(a1[5] + 2))();

      goto LABEL_14;
    }

    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v8 = [v3 _offers];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __47__WLKOfferManager_saveOffer_completionHandler___block_invoke_2;
    v20[3] = &unk_279E5EB60;
    v21 = a1[4];
    v22 = a1[5];
    v23 = &v24;
    [v8 enumerateObjectsUsingBlock:v20];

    v9 = *(v25 + 24);
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v12 = [v3 _offers];
      v13 = [v12 count];

      v14 = MEMORY[0x277CBEB18];
      [v3 _offers];
      if (v13 < 5)
        v15 = {;
        v16 = [v15 copy];
        v10 = [v14 arrayWithArray:v16];
      }

      else
        v15 = {;
        v16 = [v15 subarrayWithRange:{1, 4}];
        v17 = [v16 copy];
        v10 = [v14 arrayWithArray:v17];
      }

      [v10 addObject:a1[4]];
    }

    _Block_object_dispose(&v24, 8);
    if ((v9 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WLKOfferManagerErrorDomain" code:-1 userInfo:0];
    (*(a1[5] + 2))();

    v10 = 0;
  }

LABEL_14:
}

void __47__WLKOfferManager_saveOffer_completionHandler___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ([a2 isEqualToDictionary:a1[4]])
  {
    *a4 = 1;
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WLKOfferManagerErrorDomain" code:-2 userInfo:0];
    (*(a1[5] + 16))();
    *(*(a1[6] + 8) + 24) = 1;
  }
}

void __47__WLKOfferManager_saveOffer_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = WLKSystemLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - Error: Unable to communicate with the remote object proxy (%@)", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __47__WLKOfferManager_saveOffer_completionHandler___block_invoke_53(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WLKSystemLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - daemon callback for saving offer", v5, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchOffers:(BOOL)offers completion:(id)completion
{
  offersCopy = offers;
  completionCopy = completion;
  v7 = WLKSystemLogObject(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - fetchOffers: begin", &buf, 2u);
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __42__WLKOfferManager_fetchOffers_completion___block_invoke;
  v27[3] = &unk_279E5EBB0;
  v8 = completionCopy;
  v28 = v8;
  v9 = MEMORY[0x2743D2DF0](v27);
  if (WLKIsDaemon())
  {
    objc_initWeak(&buf, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__WLKOfferManager_fetchOffers_completion___block_invoke_55;
    block[3] = &unk_279E5EBD8;
    objc_copyWeak(&v24, &buf);
    v25 = offersCopy;
    v23 = v9;
    v11 = v9;
    dispatch_async(queue, block);

    objc_destroyWeak(&v24);
    objc_destroyWeak(&buf);
  }

  else
  {
    _connection = [(WLKOfferManager *)self _connection];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __42__WLKOfferManager_fetchOffers_completion___block_invoke_57;
    v20[3] = &unk_279E5EB38;
    v13 = v9;
    v21 = v13;
    v14 = [_connection remoteObjectProxyWithErrorHandler:v20];

    v16 = WLKSystemLogObject(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_272A0F000, v16, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - calling out to daemon for fetching", &buf, 2u);
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __42__WLKOfferManager_fetchOffers_completion___block_invoke_58;
    v18[3] = &unk_279E5EC00;
    v18[4] = self;
    v19 = v13;
    v17 = v13;
    [v14 fetchOffers:offersCopy completion:v18];
  }
}

void __42__WLKOfferManager_fetchOffers_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WLKSystemLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - fetchOffers: end", v6, 2u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3, 0);
  }
}

void __42__WLKOfferManager_fetchOffers_completion___block_invoke_55(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _offers];
  if (*(a1 + 48) == 1)
  {
    [WeakRetained _setOffers:0];
    os_unfair_lock_lock(&__offersOnDiskLock);
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = +[WLKOfferManager _offerFullPath];
    v9 = 0;
    [v4 removeItemAtPath:v5 error:&v9];
    v6 = v9;

    os_unfair_lock_unlock(&__offersOnDiskLock);
    if (v6)
    {
      v8 = WLKSystemLogObject(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = v6;
        _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - Error: Failed to clear offers after fetching (%@)", buf, 0xCu);
      }
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __42__WLKOfferManager_fetchOffers_completion___block_invoke_57(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = WLKSystemLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - Error: Unable to communicate with the remote object proxy (%@)", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __42__WLKOfferManager_fetchOffers_completion___block_invoke_58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WLKSystemLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - daemon callback for fetching", v5, 2u);
  }

  (*(*(a1 + 40) + 16))();
  if (v3 && [v3 count])
  {
    [*(a1 + 32) sendBadgeActionMetricsEvents:v3];
  }
}

- (void)removeOfferByBadgeId:(id)id completionHandler:(id)handler
{
  idCopy = id;
  handlerCopy = handler;
  v8 = WLKSystemLogObject(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - removeOffer: begin", &buf, 2u);
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __58__WLKOfferManager_removeOfferByBadgeId_completionHandler___block_invoke;
  v28[3] = &unk_279E5EB38;
  v9 = handlerCopy;
  v29 = v9;
  v10 = MEMORY[0x2743D2DF0](v28);
  if (WLKIsDaemon())
  {
    objc_initWeak(&buf, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__WLKOfferManager_removeOfferByBadgeId_completionHandler___block_invoke_60;
    block[3] = &unk_279E5EB88;
    objc_copyWeak(&v26, &buf);
    v24 = idCopy;
    v25 = v10;
    v12 = v10;
    dispatch_async(queue, block);

    objc_destroyWeak(&v26);
    objc_destroyWeak(&buf);
  }

  else
  {
    _connection = [(WLKOfferManager *)self _connection];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __58__WLKOfferManager_removeOfferByBadgeId_completionHandler___block_invoke_64;
    v21[3] = &unk_279E5EB38;
    v14 = v10;
    v22 = v14;
    v15 = [_connection remoteObjectProxyWithErrorHandler:v21];

    v17 = WLKSystemLogObject(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_272A0F000, v17, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - calling out to daemon for removing offer", &buf, 2u);
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __58__WLKOfferManager_removeOfferByBadgeId_completionHandler___block_invoke_65;
    v19[3] = &unk_279E5EB38;
    v20 = v14;
    v18 = v14;
    [v15 removeOfferByBadgeId:idCopy completionHandler:v19];
  }
}

void __58__WLKOfferManager_removeOfferByBadgeId_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WLKSystemLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - removeOffer: end", v6, 2u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __58__WLKOfferManager_removeOfferByBadgeId_completionHandler___block_invoke_60(id *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained _offers];
  v4 = v3;
  if (v3 && (v3 = [v3 count]) != 0)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v22 = 0x2020000000;
    v23 = -1;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __58__WLKOfferManager_removeOfferByBadgeId_completionHandler___block_invoke_2;
    v18[3] = &unk_279E5EC28;
    v19 = a1[4];
    p_buf = &buf;
    [v4 enumerateObjectsUsingBlock:v18];
    v5 = *(*(&buf + 1) + 24);
    if (v5 == -1 || ([WeakRetained _offers], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count") == 1, v6, v7))
    {
      v8 = 0;
    }

    else
    {
      v11 = MEMORY[0x277CBEB18];
      v12 = [WeakRetained _offers];
      v13 = [v12 copy];
      v8 = [v11 arrayWithArray:v13];

      [v8 removeObjectAtIndex:*(*(&buf + 1) + 24)];
    }

    _Block_object_dispose(&buf, 8);
    if (v5 != -1)
    {
      if (v8)
      {
        v14 = [v8 copy];
        [WeakRetained _setOffers:v14];

        v15 = [WeakRetained _updateOfferFile];
        (*(a1[5] + 2))();
      }

      else
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __58__WLKOfferManager_removeOfferByBadgeId_completionHandler___block_invoke_3;
        v16[3] = &unk_279E5EB38;
        v17 = a1[5];
        [WeakRetained clearOffers:v16];
        v8 = v17;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = WLKSystemLogObject(v3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[4];
    if (!v10)
    {
      v10 = &stru_288206BC0;
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - Fail to remove offer. Badge ID %@ Not found", &buf, 0xCu);
  }

  (*(a1[5] + 2))();
LABEL_12:
}

void __58__WLKOfferManager_removeOfferByBadgeId_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 objectForKey:@"badgeId"];
  if ([v7 isEqualToString:*(a1 + 32)])
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

void __58__WLKOfferManager_removeOfferByBadgeId_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = WLKSystemLogObject(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - Failed to remove offer - %@", &v6, 0xCu);
    }
  }

  else if (v5)
  {
    LOWORD(v6) = 0;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - Remove offer successfully", &v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __58__WLKOfferManager_removeOfferByBadgeId_completionHandler___block_invoke_64(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = WLKSystemLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - Error: Unable to communicate with the remote object proxy (%@)", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __58__WLKOfferManager_removeOfferByBadgeId_completionHandler___block_invoke_65(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WLKSystemLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - daemon callback for removing offer", v5, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)clearOffers:(id)offers
{
  offersCopy = offers;
  v5 = WLKSystemLogObject(offersCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - clearAllOffers: begin", &buf, 2u);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __31__WLKOfferManager_clearOffers___block_invoke;
  v24[3] = &unk_279E5EB38;
  v6 = offersCopy;
  v25 = v6;
  v7 = MEMORY[0x2743D2DF0](v24);
  if (WLKIsDaemon())
  {
    objc_initWeak(&buf, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__WLKOfferManager_clearOffers___block_invoke_66;
    block[3] = &unk_279E5E660;
    objc_copyWeak(&v22, &buf);
    v21 = v7;
    v9 = v7;
    dispatch_async(queue, block);

    objc_destroyWeak(&v22);
    objc_destroyWeak(&buf);
  }

  else
  {
    _connection = [(WLKOfferManager *)self _connection];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __31__WLKOfferManager_clearOffers___block_invoke_68;
    v18[3] = &unk_279E5EB38;
    v11 = v7;
    v19 = v11;
    v12 = [_connection remoteObjectProxyWithErrorHandler:v18];

    v14 = WLKSystemLogObject(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_272A0F000, v14, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - calling out to daemon for clearing all offers", &buf, 2u);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __31__WLKOfferManager_clearOffers___block_invoke_69;
    v16[3] = &unk_279E5EB38;
    v17 = v11;
    v15 = v11;
    [v12 clearOffers:v16];
  }
}

void __31__WLKOfferManager_clearOffers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WLKSystemLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - clearAllOffers: end", v6, 2u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __31__WLKOfferManager_clearOffers___block_invoke_66(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setOffers:0];
  os_unfair_lock_lock(&__offersOnDiskLock);
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = +[WLKOfferManager _offerFullPath];
  v10 = 0;
  [v3 removeItemAtPath:v4 error:&v10];
  v5 = v10;

  os_unfair_lock_unlock(&__offersOnDiskLock);
  v6 = [MEMORY[0x277CBEBD0] wlk_userDefaults];
  [v6 removeObjectForKey:@"badgeIdentifiers"];

  if (v5)
  {
    v8 = WLKSystemLogObject(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - Error: daemon error when clearing offer: (%@)", buf, 0xCu);
    }

    v9 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"WLKOfferManagerErrorDomain" code:objc_msgSend(v5 userInfo:{"code"), 0}];
  }

  else
  {
    v9 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void __31__WLKOfferManager_clearOffers___block_invoke_68(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = WLKSystemLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - Error: Unable to communicate with the remote object proxy (%@)", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __31__WLKOfferManager_clearOffers___block_invoke_69(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WLKSystemLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - daemon callback for clearing all offers", v5, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)_connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.watchlistd.xpc" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = self->_connection;
    v7 = WLKConnectionClientInterface();
    [(NSXPCConnection *)v6 setExportedInterface:v7];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    v8 = self->_connection;
    v9 = WLKConnectionServerInterface();
    [(NSXPCConnection *)v8 setRemoteObjectInterface:v9];

    [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_75];
    objc_initWeak(&location, self);
    v10 = self->_connection;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __30__WLKOfferManager__connection__block_invoke_76;
    v15 = &unk_279E5EC50;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v10 setInvalidationHandler:&v12];
    [(NSXPCConnection *)self->_connection resume:v12];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

void __30__WLKOfferManager__connection__block_invoke(uint64_t a1)
{
  v1 = WLKSystemLogObject(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_272A0F000, v1, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - Connection interrupted.", v2, 2u);
  }
}

void __30__WLKOfferManager__connection__block_invoke_76(uint64_t a1)
{
  v2 = WLKSystemLogObject(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_272A0F000, v2, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - Connection invalidated.", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 1);
    *(WeakRetained + 1) = 0;
  }
}

- (void)_activeAccountChangedNotification:(id)notification
{
  if (WLKIsDaemon())
  {
    activeAccount = [MEMORY[0x277D6C478] activeAccount];
    if (!activeAccount)
    {
      NSLog(&cfstr_Wlkoffermanage_0.isa);
      +[WLKBadgingUtilities clearSavedBadgeIdentifiers];
      v4 = +[WLKNotificationCenter defaultCenter];
      v5 = [MEMORY[0x277CCABB0] numberWithInt:0];
      [v4 setBadgeNumber:v5 withCompletionHandler:0];

      v6 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.WatchListKit"];
      [v6 removeObjectForKey:@"PreviouslyBadgedTVOffers"];

      activeAccount = 0;
    }
  }
}

- (id)_offers
{
  os_unfair_lock_lock(&__offersLock);
  v3 = [(NSArray *)self->_offers copy];
  os_unfair_lock_unlock(&__offersLock);

  return v3;
}

- (void)_setOffers:(id)offers
{
  offersCopy = offers;
  os_unfair_lock_lock(&__offersLock);
  offers = self->_offers;
  self->_offers = offersCopy;

  os_unfair_lock_unlock(&__offersLock);
}

+ (id)_offerPath
{
  v2 = WLKDefaultSupportPath(self);
  if ([v2 length])
  {
    activeAccount = [MEMORY[0x277D6C478] activeAccount];
    ams_DSID = [activeAccount ams_DSID];

    if (ams_DSID)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", ams_DSID];
      if (v5)
      {
        v6 = [v2 stringByAppendingPathComponent:v5];

        v2 = v6;
      }
    }
  }

  else
  {
    NSLog(&cfstr_Wlksettingssto.isa);
  }

  return v2;
}

+ (id)_offerFullPath
{
  v2 = +[WLKOfferManager _offerPath];
  v3 = [v2 stringByAppendingPathComponent:@"offers.plist"];

  stringByExpandingTildeInPath = [v3 stringByExpandingTildeInPath];

  return stringByExpandingTildeInPath;
}

- (id)_updateOfferFile
{
  v26 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = +[WLKOfferManager _offerPath];
  v23 = 0;
  [defaultManager createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v23];
  v5 = v23;

  if (!v5)
  {
    v9 = MEMORY[0x277CCAAB0];
    offers = [(WLKOfferManager *)self offers];
    v22 = 0;
    v11 = [v9 archivedDataWithRootObject:offers requiringSecureCoding:1 error:&v22];
    v12 = v22;

    if (!v11)
    {
LABEL_13:
      v8 = v12;

      goto LABEL_14;
    }

    os_unfair_lock_lock(&__offersOnDiskLock);
    v13 = +[WLKOfferManager _offerFullPath];
    v14 = [v11 writeToFile:v13 atomically:1];

    os_unfair_lock_unlock(&__offersOnDiskLock);
    v16 = WLKSystemLogObject(v15);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v17)
      {
        *buf = 0;
        v18 = "WLKOfferManager - _updateOfferFile: wrote offers to disk successfully";
        v19 = v16;
        v20 = 2;
LABEL_11:
        _os_log_impl(&dword_272A0F000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
      }
    }

    else if (v17)
    {
      *buf = 138412290;
      v25 = v12;
      v18 = "WLKOfferManager - _updateOfferFile: failed to write offers to disk - %@";
      v19 = v16;
      v20 = 12;
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v7 = WLKSystemLogObject(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v5;
    _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - _updateOfferFile: failed to create directory at path - %@", buf, 0xCu);
  }

  v8 = v5;
LABEL_14:

  return v8;
}

- (void)sendBadgeActionMetricsEvents:(id)events
{
  v53 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v4 = objc_alloc(MEMORY[0x277CEE598]);
  v5 = WLKTVAppBundleID();
  wlk_defaultBag = [MEMORY[0x277CEE3F8] wlk_defaultBag];
  v31 = [v4 initWithContainerID:v5 bag:wlk_defaultBag];

  v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v32 = eventsCopy;
  lastObject = [eventsCopy lastObject];
  v8 = [lastObject objectForKeyedSubscript:@"metrics"];

  obj = v8;
  v35 = [v8 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (!v35)
  {
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v9 = 0;
    goto LABEL_33;
  }

  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v9 = 0;
  v34 = *v46;
  do
  {
    v10 = 0;
    do
    {
      if (*v46 != v34)
      {
        objc_enumerationMutation(obj);
      }

      v36 = v10;
      v11 = *(*(&v45 + 1) + 8 * v10);
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v41 objects:v51 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v42;
        do
        {
          v16 = 0;
          do
          {
            if (*v42 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v41 + 1) + 8 * v16);
            v18 = [v12 objectForKey:v17];
            if (![v17 isEqualToString:@"details"] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_24;
              }

              v19 = v18;
              if ([v17 isEqualToString:@"notificationId"])
              {
                v20 = v39;
                v21 = v9;
                v39 = v19;
              }

              else
              {
                if ([v17 isEqualToString:@"marketingCampaignGroup"])
                {
                  v20 = v38;
                  v38 = v19;
                }

                else
                {
                  if (([v17 isEqualToString:@"marketingCampaignToken"] & 1) == 0)
                  {
                    v22 = [v17 isEqualToString:@"notificationType"];
                    v20 = v9;
                    v21 = v19;
                    if (!v22)
                    {
                      goto LABEL_23;
                    }

                    goto LABEL_22;
                  }

                  v20 = v37;
                  v37 = v19;
                }

                v21 = v9;
              }

LABEL_22:
              v19 = v19;

              v9 = v21;
              goto LABEL_23;
            }

            v19 = v40;
            v40 = v18;
LABEL_23:

LABEL_24:
            ++v16;
          }

          while (v14 != v16);
          v23 = [v12 countByEnumeratingWithState:&v41 objects:v51 count:16];
          v14 = v23;
        }

        while (v23);
      }

      v10 = v36 + 1;
    }

    while (v36 + 1 != v35);
    v35 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
  }

  while (v35);
LABEL_33:

  v24 = [objc_alloc(MEMORY[0x277CEE5A8]) initWithTopic:@"xp_amp_notifications"];
  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v25 setObject:@"badgeAction" forKey:@"eventType"];
  if (v40)
  {
    v26 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v40];
    [v26 removeObjectForKey:@"brandId"];
    v27 = [v26 copy];
    [v25 setObject:v27 forKey:@"details"];
  }

  if (v9)
  {
    [v25 setObject:v9 forKey:@"notificationType"];
  }

  if (v39)
  {
    [v25 setObject:v39 forKey:@"notificationId"];
  }

  if (v38)
  {
    [v25 setObject:v38 forKey:@"marketingCampaignGroup"];
  }

  if (v37)
  {
    [v25 setObject:v37 forKey:@"marketingCampaignToken"];
  }

  [v24 addPropertiesWithDictionary:v25];
  v28 = WLKSystemLogObject([v30 addObject:v24]);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v50 = v30;
    _os_log_impl(&dword_272A0F000, v28, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - Will send BadgeAction events: %@", buf, 0xCu);
  }

  [v31 enqueueEvents:v30];
  flush = [v31 flush];
  [flush addFinishBlock:&__block_literal_global_108];
}

void __48__WLKOfferManager_sendBadgeActionMetricsEvents___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = WLKSystemLogObject(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v9 = 138412290;
      v10 = v3;
      v6 = "WLKOfferManager - Error flushing BadgeAction events: %@";
      v7 = v4;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, v6, &v9, v8);
    }
  }

  else if (v5)
  {
    LOWORD(v9) = 0;
    v6 = "WLKOfferManager - BadgeAction Events flushed.";
    v7 = v4;
    v8 = 2;
    goto LABEL_6;
  }
}

@end