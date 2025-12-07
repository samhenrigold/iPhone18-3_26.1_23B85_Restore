@interface ASDAppStoreService
+ (id)defaultService;
- (ASDAppStoreChangedObserver)observer;
- (ASDAppStoreService)init;
- (void)_refreshCache:(int)cache sendActionResponse:;
- (void)addBadgeIDs:(id)ds replyHandler:(id)handler;
- (void)allBadgeIDsWithReplyHandler:(id)handler;
- (void)allBadgeMetricsWithReplyHandler:(id)handler;
- (void)badgeCountWithReplyHandler:(id)handler;
- (void)dealloc;
- (void)launchAppStoreWithURL:(id)l withReplyHandler:(id)handler;
- (void)reloadWidgetOnConnectivityToEndpoint:(id)endpoint parameters:(id)parameters replyHandler:(id)handler;
- (void)removeAllBadgeIDsWithReplyHandler:(id)handler;
- (void)removeBadgeIDs:(id)ds replyHandler:(id)handler;
- (void)removeMetricsForBadgeIDs:(id)ds replyHandler:(id)handler;
- (void)setObserver:(id)observer;
@end

@implementation ASDAppStoreService

- (ASDAppStoreService)init
{
  v3 = +[ASDServiceBroker defaultBroker];
  if (self && (v18.receiver = self, v18.super_class = ASDAppStoreService, (v4 = [(ASDAppStoreService *)&v18 init]) != 0))
  {
    v5 = v4;
    objc_storeWeak(&v4->_serviceBroker, v3);

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.ASDAppStoreService.dispatch", v6);
    dispatchQueue = v5->_dispatchQueue;
    v5->_dispatchQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.ASDAppStoreService.notification", v9);
    notificationQueue = v5->_notificationQueue;
    v5->_notificationQueue = v10;

    objc_initWeak(&v18.receiver, v5);
    v5->_badgesChangedNotificationToken = -1;
    v12 = dispatch_get_global_queue(21, 0);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __26__ASDAppStoreService_init__block_invoke;
    handler[3] = &unk_1E7CDC170;
    objc_copyWeak(&v17, &v18.receiver);
    notify_register_dispatch("com.apple.appstored.ASDAppStoreServiceBadgesChanged", &v5->_badgesChangedNotificationToken, v12, handler);

    v5->_badgesChangedForAppStoreNotificationToken = -1;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __26__ASDAppStoreService_init__block_invoke_2;
    v14[3] = &unk_1E7CDC170;
    objc_copyWeak(&v15, &v18.receiver);
    notify_register_dispatch("com.apple.appstored.ASDAppStoreServiceBadgeChangedWithActionResponse", &v5->_badgesChangedForAppStoreNotificationToken, v12, v14);

    [(ASDAppStoreService *)v5 _refreshCache:0 sendActionResponse:?];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v18.receiver);
  }

  else
  {

    return 0;
  }

  return v5;
}

void __26__ASDAppStoreService_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(ASDAppStoreService *)WeakRetained _refreshCache:0 sendActionResponse:?];
    WeakRetained = v2;
  }
}

- (void)_refreshCache:(int)cache sendActionResponse:
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 1024;
    *&buf[14] = a2;
    *&buf[18] = 1024;
    *&buf[20] = cache;
    v7 = *&buf[4];
    _os_log_impl(&dword_1B8220000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Refreshing caches with notify: %{BOOL}d sendActionResponse: %{BOOL}d", buf, 0x18u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = 0;
  v8 = self[2];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__ASDAppStoreService__refreshCache_sendActionResponse___block_invoke;
  block[3] = &unk_1E7CDB840;
  block[4] = self;
  block[5] = buf;
  dispatch_sync(v8, block);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__ASDAppStoreService__refreshCache_sendActionResponse___block_invoke_2;
  v9[3] = &unk_1E7CDC608;
  v10 = a2;
  v9[4] = self;
  v9[5] = buf;
  cacheCopy = cache;
  [self allBadgeMetricsWithReplyHandler:v9];
  _Block_object_dispose(buf, 8);
}

void __26__ASDAppStoreService_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(ASDAppStoreService *)WeakRetained _refreshCache:1 sendActionResponse:?];
    WeakRetained = v2;
  }
}

- (void)dealloc
{
  badgesChangedNotificationToken = self->_badgesChangedNotificationToken;
  if (badgesChangedNotificationToken != -1)
  {
    notify_cancel(badgesChangedNotificationToken);
    self->_badgesChangedNotificationToken = -1;
  }

  badgesChangedForAppStoreNotificationToken = self->_badgesChangedForAppStoreNotificationToken;
  if (badgesChangedForAppStoreNotificationToken != -1)
  {
    notify_cancel(badgesChangedForAppStoreNotificationToken);
    self->_badgesChangedForAppStoreNotificationToken = -1;
  }

  v5.receiver = self;
  v5.super_class = ASDAppStoreService;
  [(ASDAppStoreService *)&v5 dealloc];
}

+ (id)defaultService
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__ASDAppStoreService_defaultService__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED90D4C8 != -1)
  {
    dispatch_once(&qword_1ED90D4C8, block);
  }

  v2 = _MergedGlobals_30;

  return v2;
}

uint64_t __36__ASDAppStoreService_defaultService__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _MergedGlobals_30;
  _MergedGlobals_30 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (ASDAppStoreChangedObserver)observer
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__ASDAppStoreService_observer__block_invoke;
  v5[3] = &unk_1E7CDB840;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __30__ASDAppStoreService_observer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x1EEE66BB8](WeakRetained, v4);
}

- (void)setObserver:(id)observer
{
  observerCopy = observer;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__ASDAppStoreService_setObserver___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)addBadgeIDs:(id)ds replyHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v8 = +[ASDServiceBroker defaultBroker];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__ASDAppStoreService_addBadgeIDs_replyHandler___block_invoke;
  v11[3] = &unk_1E7CDC590;
  v12 = dsCopy;
  v13 = handlerCopy;
  v11[4] = self;
  v9 = dsCopy;
  v10 = handlerCopy;
  [v8 getAppStoreServiceWithCompletionHandler:v11];
}

void __47__ASDAppStoreService_addBadgeIDs_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__ASDAppStoreService_addBadgeIDs_replyHandler___block_invoke_2;
    v12[3] = &unk_1E7CDBAB8;
    v12[4] = *(a1 + 32);
    v13 = *(a1 + 48);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __47__ASDAppStoreService_addBadgeIDs_replyHandler___block_invoke_9;
    v10[3] = &unk_1E7CDB758;
    v7 = *(a1 + 40);
    v11 = *(a1 + 48);
    [v6 addBadgeIDs:v7 replyHandler:v10];
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = v5;
      v9 = v15;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] addBadgeIDs failed with error: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __47__ASDAppStoreService_addBadgeIDs_replyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543618;
    v8 = objc_opt_class();
    v9 = 2114;
    v10 = v3;
    v6 = v8;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] addBadgeIDs failed with xpc error: %{public}@", &v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v3, v5);
}

void __47__ASDAppStoreService_addBadgeIDs_replyHandler___block_invoke_9(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__ASDAppStoreService_addBadgeIDs_replyHandler___block_invoke_2_10;
  block[3] = &unk_1E7CDBB30;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)allBadgeMetricsWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[ASDServiceBroker defaultBroker];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__ASDAppStoreService_allBadgeMetricsWithReplyHandler___block_invoke;
  v7[3] = &unk_1E7CDC4C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [v5 getAppStoreServiceWithCompletionHandler:v7];
}

void __54__ASDAppStoreService_allBadgeMetricsWithReplyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__ASDAppStoreService_allBadgeMetricsWithReplyHandler___block_invoke_2;
    v12[3] = &unk_1E7CDBAB8;
    v6 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v13 = v6;
    v7 = [a2 remoteObjectProxyWithErrorHandler:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__ASDAppStoreService_allBadgeMetricsWithReplyHandler___block_invoke_13;
    v10[3] = &unk_1E7CDB7F8;
    v11 = *(a1 + 40);
    [v7 allBadgeMetricsWithReplyHandler:v10];
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = v5;
      v9 = v15;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] allBadgeMetricsWithReplyHandler failed with error: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __54__ASDAppStoreService_allBadgeMetricsWithReplyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543618;
    v8 = objc_opt_class();
    v9 = 2114;
    v10 = v3;
    v6 = v8;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] allBadgeMetricsWithReplyHandler failed with xpc error: %{public}@", &v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v3, v5);
}

void __54__ASDAppStoreService_allBadgeMetricsWithReplyHandler___block_invoke_13(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__ASDAppStoreService_allBadgeMetricsWithReplyHandler___block_invoke_2_14;
  block[3] = &unk_1E7CDBAE0;
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)allBadgeIDsWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[ASDServiceBroker defaultBroker];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__ASDAppStoreService_allBadgeIDsWithReplyHandler___block_invoke;
  v7[3] = &unk_1E7CDC4C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [v5 getAppStoreServiceWithCompletionHandler:v7];
}

void __50__ASDAppStoreService_allBadgeIDsWithReplyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__ASDAppStoreService_allBadgeIDsWithReplyHandler___block_invoke_2;
    v12[3] = &unk_1E7CDBAB8;
    v6 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v13 = v6;
    v7 = [a2 remoteObjectProxyWithErrorHandler:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__ASDAppStoreService_allBadgeIDsWithReplyHandler___block_invoke_16;
    v10[3] = &unk_1E7CDB7A8;
    v11 = *(a1 + 40);
    [v7 allBadgeIDsWithReplyHandler:v10];
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = v5;
      v9 = v15;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] allBadgeIDsWithReplyHandler failed with error: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __50__ASDAppStoreService_allBadgeIDsWithReplyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543618;
    v8 = objc_opt_class();
    v9 = 2114;
    v10 = v3;
    v6 = v8;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] allBadgeIDsWithReplyHandler failed with xpc error: %{public}@", &v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), MEMORY[0x1E695E0F0], v3, v5);
}

void __50__ASDAppStoreService_allBadgeIDsWithReplyHandler___block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__ASDAppStoreService_allBadgeIDsWithReplyHandler___block_invoke_2_17;
  block[3] = &unk_1E7CDBAE0;
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)badgeCountWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[ASDServiceBroker defaultBroker];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__ASDAppStoreService_badgeCountWithReplyHandler___block_invoke;
  v7[3] = &unk_1E7CDC4C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [v5 getAppStoreServiceWithCompletionHandler:v7];
}

void __49__ASDAppStoreService_badgeCountWithReplyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49__ASDAppStoreService_badgeCountWithReplyHandler___block_invoke_2;
    v12[3] = &unk_1E7CDBAB8;
    v6 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v13 = v6;
    v7 = [a2 remoteObjectProxyWithErrorHandler:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49__ASDAppStoreService_badgeCountWithReplyHandler___block_invoke_19;
    v10[3] = &unk_1E7CDC4F0;
    v11 = *(a1 + 40);
    [v7 badgeIDCountWithReplyHandler:v10];
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = v5;
      v9 = v15;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] badgeCountWithReplyHandler failed with error: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __49__ASDAppStoreService_badgeCountWithReplyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543618;
    v8 = objc_opt_class();
    v9 = 2114;
    v10 = v3;
    v6 = v8;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] badgeCountWithReplyHandler failed with xpc error: %{public}@", &v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v3, v5);
}

- (void)removeAllBadgeIDsWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[ASDServiceBroker defaultBroker];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__ASDAppStoreService_removeAllBadgeIDsWithReplyHandler___block_invoke;
  v7[3] = &unk_1E7CDC4C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [v5 getAppStoreServiceWithCompletionHandler:v7];
}

void __56__ASDAppStoreService_removeAllBadgeIDsWithReplyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__ASDAppStoreService_removeAllBadgeIDsWithReplyHandler___block_invoke_2;
    v12[3] = &unk_1E7CDBAB8;
    v6 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v13 = v6;
    v7 = [a2 remoteObjectProxyWithErrorHandler:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__ASDAppStoreService_removeAllBadgeIDsWithReplyHandler___block_invoke_21;
    v10[3] = &unk_1E7CDB758;
    v11 = *(a1 + 40);
    [v7 removeAllBadgeIDsWithReplyHandler:v10];
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = v5;
      v9 = v15;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] removeAllBadgeIDsWithReplyHandler failed with error: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __56__ASDAppStoreService_removeAllBadgeIDsWithReplyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543618;
    v8 = objc_opt_class();
    v9 = 2114;
    v10 = v3;
    v6 = v8;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] removeAllBadgeIDsWithReplyHandler failed with xpc error: %{public}@", &v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v3, v5);
}

void __56__ASDAppStoreService_removeAllBadgeIDsWithReplyHandler___block_invoke_21(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__ASDAppStoreService_removeAllBadgeIDsWithReplyHandler___block_invoke_2_22;
  block[3] = &unk_1E7CDBB30;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)removeBadgeIDs:(id)ds replyHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v8 = +[ASDServiceBroker defaultBroker];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__ASDAppStoreService_removeBadgeIDs_replyHandler___block_invoke;
  v11[3] = &unk_1E7CDC590;
  v12 = dsCopy;
  v13 = handlerCopy;
  v11[4] = self;
  v9 = dsCopy;
  v10 = handlerCopy;
  [v8 getAppStoreServiceWithCompletionHandler:v11];
}

void __50__ASDAppStoreService_removeBadgeIDs_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__ASDAppStoreService_removeBadgeIDs_replyHandler___block_invoke_2;
    v12[3] = &unk_1E7CDBAB8;
    v12[4] = *(a1 + 32);
    v13 = *(a1 + 48);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__ASDAppStoreService_removeBadgeIDs_replyHandler___block_invoke_23;
    v10[3] = &unk_1E7CDB758;
    v7 = *(a1 + 40);
    v11 = *(a1 + 48);
    [v6 removeBadgeIDs:v7 replyHandler:v10];
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = v5;
      v9 = v15;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] removeBadgeIDs failed with error: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __50__ASDAppStoreService_removeBadgeIDs_replyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543618;
    v8 = objc_opt_class();
    v9 = 2114;
    v10 = v3;
    v6 = v8;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] removeBadgeIDs failed with xpc error: %{public}@", &v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v3, v5);
}

void __50__ASDAppStoreService_removeBadgeIDs_replyHandler___block_invoke_23(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__ASDAppStoreService_removeBadgeIDs_replyHandler___block_invoke_2_24;
  block[3] = &unk_1E7CDBB30;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)removeMetricsForBadgeIDs:(id)ds replyHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v8 = +[ASDServiceBroker defaultBroker];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__ASDAppStoreService_removeMetricsForBadgeIDs_replyHandler___block_invoke;
  v11[3] = &unk_1E7CDC590;
  v12 = dsCopy;
  v13 = handlerCopy;
  v11[4] = self;
  v9 = dsCopy;
  v10 = handlerCopy;
  [v8 getAppStoreServiceWithCompletionHandler:v11];
}

void __60__ASDAppStoreService_removeMetricsForBadgeIDs_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__ASDAppStoreService_removeMetricsForBadgeIDs_replyHandler___block_invoke_2;
    v12[3] = &unk_1E7CDBAB8;
    v12[4] = *(a1 + 32);
    v13 = *(a1 + 48);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__ASDAppStoreService_removeMetricsForBadgeIDs_replyHandler___block_invoke_25;
    v10[3] = &unk_1E7CDB758;
    v7 = *(a1 + 40);
    v11 = *(a1 + 48);
    [v6 removeBadgeMetricsForBadgeIDs:v7 replyHandler:v10];
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = v5;
      v9 = v15;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] removeMetricsForBadgeIDs failed with error: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __60__ASDAppStoreService_removeMetricsForBadgeIDs_replyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543618;
    v8 = objc_opt_class();
    v9 = 2114;
    v10 = v3;
    v6 = v8;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] removeMetricsForBadgeIDs failed with xpc error: %{public}@", &v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v3, v5);
}

void __60__ASDAppStoreService_removeMetricsForBadgeIDs_replyHandler___block_invoke_25(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__ASDAppStoreService_removeMetricsForBadgeIDs_replyHandler___block_invoke_2_26;
  block[3] = &unk_1E7CDBB30;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)launchAppStoreWithURL:(id)l withReplyHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v8 = +[ASDServiceBroker defaultBroker];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__ASDAppStoreService_launchAppStoreWithURL_withReplyHandler___block_invoke;
  v11[3] = &unk_1E7CDC590;
  v11[4] = self;
  v12 = lCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = lCopy;
  [v8 getAppStoreServiceWithCompletionHandler:v11];
}

void __61__ASDAppStoreService_launchAppStoreWithURL_withReplyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __61__ASDAppStoreService_launchAppStoreWithURL_withReplyHandler___block_invoke_2;
    v16[3] = &unk_1E7CDC518;
    v6 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v17 = v6;
    v18 = *(a1 + 48);
    v7 = [a2 remoteObjectProxyWithErrorHandler:v16];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61__ASDAppStoreService_launchAppStoreWithURL_withReplyHandler___block_invoke_27;
    v13[3] = &unk_1E7CDC568;
    v8 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v14 = v8;
    v15 = *(a1 + 48);
    [v7 launchAppStoreWithURL:v14 withReplyHandler:v13];
  }

  else
  {
    v9 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = *(a1 + 40);
      *buf = 138543874;
      v20 = v10;
      v21 = 2114;
      v22 = v11;
      v23 = 2114;
      v24 = v5;
      v12 = v10;
      _os_log_error_impl(&dword_1B8220000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to launch %{public}@ error: %{public}@", buf, 0x20u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __61__ASDAppStoreService_launchAppStoreWithURL_withReplyHandler___block_invoke_2(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = a1[5];
    v9 = 138543874;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    v13 = 2114;
    v14 = v3;
    v8 = v6;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to launch %{public}@ error: %{public}@", &v9, 0x20u);
  }

  (*(a1[6] + 16))(a1[6], 2, v3, v5);
}

void __61__ASDAppStoreService_launchAppStoreWithURL_withReplyHandler___block_invoke_27(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = *(a1 + 40);
      *buf = 138543874;
      v17 = v9;
      v18 = 2114;
      v19 = v10;
      v20 = 2048;
      v21 = a2;
      v11 = v9;
      _os_log_error_impl(&dword_1B8220000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to launch %{public}@ status: %ld", buf, 0x20u);
    }
  }

  v7 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__ASDAppStoreService_launchAppStoreWithURL_withReplyHandler___block_invoke_28;
  block[3] = &unk_1E7CDC540;
  v14 = *(a1 + 48);
  v15 = a2;
  v13 = v5;
  v8 = v5;
  dispatch_async(v7, block);
}

- (void)reloadWidgetOnConnectivityToEndpoint:(id)endpoint parameters:(id)parameters replyHandler:(id)handler
{
  endpointCopy = endpoint;
  parametersCopy = parameters;
  handlerCopy = handler;
  v12 = +[ASDServiceBroker defaultBroker];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __83__ASDAppStoreService_reloadWidgetOnConnectivityToEndpoint_parameters_replyHandler___block_invoke;
  v16[3] = &unk_1E7CDC5B8;
  v19 = handlerCopy;
  v20 = a2;
  v16[4] = self;
  v17 = endpointCopy;
  v18 = parametersCopy;
  v13 = parametersCopy;
  v14 = endpointCopy;
  v15 = handlerCopy;
  [v12 getAppStoreServiceWithCompletionHandler:v16];
}

void __83__ASDAppStoreService_reloadWidgetOnConnectivityToEndpoint_parameters_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __83__ASDAppStoreService_reloadWidgetOnConnectivityToEndpoint_parameters_replyHandler___block_invoke_2;
    v17[3] = &unk_1E7CDBBD0;
    v17[4] = *(a1 + 32);
    v14 = *(a1 + 56);
    v6 = v14;
    v18 = v14;
    v7 = [a2 remoteObjectProxyWithErrorHandler:v17];
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __83__ASDAppStoreService_reloadWidgetOnConnectivityToEndpoint_parameters_replyHandler___block_invoke_29;
    v15[3] = &unk_1E7CDB758;
    v16 = *(a1 + 56);
    [v7 reloadWidgetOnConnectivityToEndpoint:v8 parameters:v9 replyHandler:v15];
  }

  else
  {
    v10 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = *(a1 + 64);
      v13 = v11;
      *buf = 138543874;
      v20 = v11;
      v21 = 2080;
      Name = sel_getName(v12);
      v23 = 2114;
      v24 = v5;
      _os_log_error_impl(&dword_1B8220000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] %s failed with error: %{public}@", buf, 0x20u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __83__ASDAppStoreService_reloadWidgetOnConnectivityToEndpoint_parameters_replyHandler___block_invoke_2(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = a1[6];
    v7 = v5;
    v8 = 138543874;
    v9 = v5;
    v10 = 2080;
    Name = sel_getName(v6);
    v12 = 2114;
    v13 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] %s failed with xpc error: %{public}@", &v8, 0x20u);
  }

  (*(a1[5] + 16))();
}

void __83__ASDAppStoreService_reloadWidgetOnConnectivityToEndpoint_parameters_replyHandler___block_invoke_29(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__ASDAppStoreService_reloadWidgetOnConnectivityToEndpoint_parameters_replyHandler___block_invoke_2_30;
  block[3] = &unk_1E7CDBB30;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

void __75__ASDAppStoreService__handleNotificationRefresh_addedBadges_removedBadges___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  [WeakRetained service:*(a1 + 32) badgesDidChange:*(a1 + 40)];
}

void __75__ASDAppStoreService__handleNotificationRefresh_addedBadges_removedBadges___block_invoke_55(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  [WeakRetained service:*(a1 + 32) didAddBadges:*(a1 + 40)];
}

void __75__ASDAppStoreService__handleNotificationRefresh_addedBadges_removedBadges___block_invoke_58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  [WeakRetained service:*(a1 + 32) didRemoveBadges:*(a1 + 40)];
}

uint64_t __55__ASDAppStoreService__refreshCache_sendActionResponse___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void __55__ASDAppStoreService__refreshCache_sendActionResponse___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__ASDAppStoreService__refreshCache_sendActionResponse___block_invoke_3;
  v7[3] = &unk_1E7CDC5E0;
  v7[4] = v4;
  v8 = v3;
  v10 = *(a1 + 48);
  v9 = *(a1 + 40);
  v6 = v3;
  dispatch_async(v5, v7);
}

void __55__ASDAppStoreService__refreshCache_sendActionResponse___block_invoke_3(uint64_t a1)
{
  v84 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  if (*(a1 + 56) == 1)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = [*(*(*(a1 + 48) + 8) + 40) allKeys];
    v7 = [v5 setWithArray:v6];

    v8 = MEMORY[0x1E695DFD8];
    v9 = [*(a1 + 40) allKeys];
    v10 = [v8 setWithArray:v9];

    v59 = [MEMORY[0x1E695DF90] dictionary];
    v58 = [MEMORY[0x1E695DF90] dictionary];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v66 objects:v71 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v67;
      obj = *v67;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v67 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v66 + 1) + 8 * i);
          if (([v10 containsObject:v16] & 1) == 0)
          {
            v17 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:v16];
            v18 = objc_opt_class();
            v19 = _ASA(v17, v18);

            if (v19)
            {
              v20 = MEMORY[0x1E695E0F8];
              if (*(a1 + 57))
              {
                v21 = [v19 objectForKeyedSubscript:@"actionMetrics"];

                if (v21)
                {
                  v20 = [v19 objectForKeyedSubscript:@"actionMetrics"];
                }

                else
                {
                  v20 = MEMORY[0x1E695E0F8];
                }

                v14 = obj;
              }
            }

            else
            {
              v20 = MEMORY[0x1E695E0F8];
            }

            [v59 setValue:v20 forKey:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v66 objects:v71 count:16];
      }

      while (v13);
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    obja = v10;
    v22 = [obja countByEnumeratingWithState:&v62 objects:v70 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v63;
      v25 = MEMORY[0x1E695E0F8];
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v63 != v24)
          {
            objc_enumerationMutation(obja);
          }

          v27 = *(*(&v62 + 1) + 8 * j);
          if (([v11 containsObject:v27] & 1) == 0)
          {
            v28 = [*(a1 + 40) objectForKeyedSubscript:v27];
            v29 = objc_opt_class();
            v30 = _ASA(v28, v29);

            if (v30 && ([v30 objectForKeyedSubscript:@"metrics"], v31 = objc_claimAutoreleasedReturnValue(), v31, v31))
            {
              v32 = [v30 objectForKeyedSubscript:@"metrics"];
            }

            else
            {
              v32 = v25;
            }

            [v58 setValue:v32 forKey:v27];
          }
        }

        v23 = [obja countByEnumeratingWithState:&v62 objects:v70 count:16];
      }

      while (v23);
    }

    v33 = *(a1 + 32);
    v34 = [obja allObjects];
    v35 = [v58 copy];
    v36 = [v59 copy];
    v37 = v34;
    v38 = v35;
    v39 = v36;
    if (v33)
    {
      WeakRetained = objc_loadWeakRetained((v33 + 40));
      v41 = objc_opt_respondsToSelector();

      if (v41)
      {
        v42 = ASDLogHandleForCategory(13);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = objc_opt_class();
          *buf = 138543618;
          *&buf[4] = v43;
          *&buf[12] = 2114;
          *&buf[14] = v37;
          v44 = v43;
          _os_log_impl(&dword_1B8220000, v42, OS_LOG_TYPE_INFO, "[%{public}@] Handling apps refreshed to %{public}@", buf, 0x16u);
        }

        v45 = *(v33 + 24);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __75__ASDAppStoreService__handleNotificationRefresh_addedBadges_removedBadges___block_invoke;
        v81 = &unk_1E7CDB868;
        v82 = v33;
        v83 = v37;
        dispatch_async(v45, buf);
      }

      v46 = objc_loadWeakRetained((v33 + 40));
      if (objc_opt_respondsToSelector())
      {
        v47 = [v38 count];

        if (v47)
        {
          v48 = ASDLogHandleForCategory(13);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            v49 = objc_opt_class();
            *block = 138543618;
            *&block[4] = v49;
            *&block[12] = 2114;
            *&block[14] = v38;
            v50 = v49;
            _os_log_impl(&dword_1B8220000, v48, OS_LOG_TYPE_INFO, "[%{public}@] Handling didAddBadges %{public}@", block, 0x16u);
          }

          v51 = *(v33 + 24);
          *block = MEMORY[0x1E69E9820];
          *&block[8] = 3221225472;
          *&block[16] = __75__ASDAppStoreService__handleNotificationRefresh_addedBadges_removedBadges___block_invoke_55;
          v77 = &unk_1E7CDB868;
          v78 = v33;
          v79 = v38;
          dispatch_async(v51, block);
        }
      }

      else
      {
      }

      v52 = objc_loadWeakRetained((v33 + 40));
      if (objc_opt_respondsToSelector())
      {
        v53 = [v39 count];

        if (v53)
        {
          v54 = ASDLogHandleForCategory(13);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            v55 = objc_opt_class();
            *v72 = 138543618;
            *&v72[4] = v55;
            *&v72[12] = 2114;
            *&v72[14] = v39;
            v56 = v55;
            _os_log_impl(&dword_1B8220000, v54, OS_LOG_TYPE_INFO, "[%{public}@] Handling didRemoveBadges %{public}@", v72, 0x16u);
          }

          v57 = *(v33 + 24);
          *v72 = MEMORY[0x1E69E9820];
          *&v72[8] = 3221225472;
          *&v72[16] = __75__ASDAppStoreService__handleNotificationRefresh_addedBadges_removedBadges___block_invoke_58;
          v73 = &unk_1E7CDB868;
          v74 = v33;
          v75 = v39;
          dispatch_async(v57, v72);
        }
      }

      else
      {
      }
    }
  }
}

@end