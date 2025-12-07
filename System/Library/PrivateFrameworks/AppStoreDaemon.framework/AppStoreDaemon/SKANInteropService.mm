@interface SKANInteropService
+ (SKANInteropService)sharedInstance;
- (void)getImpressionsForApp:(id)app completionHandler:(id)handler;
- (void)storePostbacks:(id)postbacks completionHandler:(id)handler;
- (void)storeSkannerEvents:(id)events advertisedItemID:(id)d completionHandler:(id)handler;
@end

@implementation SKANInteropService

+ (SKANInteropService)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__SKANInteropService_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED90D510 != -1)
  {
    dispatch_once(&qword_1ED90D510, block);
  }

  v2 = _MergedGlobals_34;

  return v2;
}

void __36__SKANInteropService_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v2 = +[ASDServiceBroker defaultBroker];
  v5 = v2;
  if (v1)
  {
    v6.receiver = v1;
    v6.super_class = SKANInteropService;
    v3 = objc_msgSendSuper2(&v6, sel_init);
    v1 = v3;
    if (v3)
    {
      objc_storeStrong(v3 + 1, v2);
    }
  }

  v4 = _MergedGlobals_34;
  _MergedGlobals_34 = v1;
}

- (void)getImpressionsForApp:(id)app completionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  appCopy = app;
  handlerCopy = handler;
  v8 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = objc_opt_class();
    v18 = 2114;
    v19 = appCopy;
    v9 = v17;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting skan impressions for adamID: %{public}@", buf, 0x16u);
  }

  serviceBroker = self->_serviceBroker;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__SKANInteropService_getImpressionsForApp_completionHandler___block_invoke;
  v13[3] = &unk_1E7CDC970;
  v14 = appCopy;
  v15 = handlerCopy;
  v11 = appCopy;
  v12 = handlerCopy;
  [(ASDServiceBroker *)serviceBroker getSKANInteropServiceWithCompletionHandler:v13];
}

void __61__SKANInteropService_getImpressionsForApp_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__SKANInteropService_getImpressionsForApp_completionHandler___block_invoke_2;
    v7[3] = &unk_1E7CDB730;
    v8 = *(a1 + 40);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v7];
    [v4 getImpressionsForApp:*(a1 + 32) completionHandler:*(a1 + 40)];
  }

  else
  {
    v5 = ASDLogHandleForCategory(32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1B8220000, v5, OS_LOG_TYPE_ERROR, "Error getting skan interop service", v6, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __61__SKANInteropService_getImpressionsForApp_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "Error getting skan interop service remote proxy: %{public}@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)storeSkannerEvents:(id)events advertisedItemID:(id)d completionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  dCopy = d;
  handlerCopy = handler;
  v11 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = objc_opt_class();
    v12 = v22;
    _os_log_impl(&dword_1B8220000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Storing SKanner events from BD", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __76__SKANInteropService_storeSkannerEvents_advertisedItemID_completionHandler___block_invoke;
  v17[3] = &unk_1E7CDC998;
  v19 = dCopy;
  v20 = handlerCopy;
  v18 = eventsCopy;
  v14 = dCopy;
  v15 = eventsCopy;
  v16 = handlerCopy;
  [(ASDServiceBroker *)serviceBroker getSKANInteropServiceWithCompletionHandler:v17];
}

void __76__SKANInteropService_storeSkannerEvents_advertisedItemID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __76__SKANInteropService_storeSkannerEvents_advertisedItemID_completionHandler___block_invoke_2;
    v7[3] = &unk_1E7CDB730;
    v8 = *(a1 + 48);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v7];
    [v4 storeSkannerEvents:*(a1 + 32) advertisedItemID:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    v5 = ASDLogHandleForCategory(32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1B8220000, v5, OS_LOG_TYPE_ERROR, "Error getting skan interop service", v6, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __76__SKANInteropService_storeSkannerEvents_advertisedItemID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "Error getting skan interop service remote proxy: %{public}@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)storePostbacks:(id)postbacks completionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  postbacksCopy = postbacks;
  handlerCopy = handler;
  v8 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = objc_opt_class();
    v9 = v17;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Storing postbacks from BD", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__SKANInteropService_storePostbacks_completionHandler___block_invoke;
  v13[3] = &unk_1E7CDC970;
  v14 = postbacksCopy;
  v15 = handlerCopy;
  v11 = postbacksCopy;
  v12 = handlerCopy;
  [(ASDServiceBroker *)serviceBroker getSKANInteropServiceWithCompletionHandler:v13];
}

void __55__SKANInteropService_storePostbacks_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__SKANInteropService_storePostbacks_completionHandler___block_invoke_2;
    v7[3] = &unk_1E7CDB730;
    v8 = *(a1 + 40);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v7];
    [v4 storePostbacks:*(a1 + 32) completionHandler:*(a1 + 40)];
  }

  else
  {
    v5 = ASDLogHandleForCategory(32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1B8220000, v5, OS_LOG_TYPE_ERROR, "Error getting skan interop service", v6, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __55__SKANInteropService_storePostbacks_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "Error getting skan interop service remote proxy: %{public}@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

@end