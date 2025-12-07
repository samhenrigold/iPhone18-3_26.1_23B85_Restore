@interface ASDArcadeService
+ (id)defaultService;
- (ASDArcadeService)init;
- (void)recordAppLaunchForBundleID:(id)d additionalMetrics:(id)metrics replyHandler:(id)handler;
@end

@implementation ASDArcadeService

- (ASDArcadeService)init
{
  v3 = +[ASDAppStoreService defaultService];
  appstoreService = self->_appstoreService;
  self->_appstoreService = v3;

  return self;
}

+ (id)defaultService
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__ASDArcadeService_defaultService__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED90D600 != -1)
  {
    dispatch_once(&qword_1ED90D600, block);
  }

  v2 = _MergedGlobals_48;

  return v2;
}

uint64_t __34__ASDArcadeService_defaultService__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _MergedGlobals_48;
  _MergedGlobals_48 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (void)recordAppLaunchForBundleID:(id)d additionalMetrics:(id)metrics replyHandler:(id)handler
{
  dCopy = d;
  metricsCopy = metrics;
  handlerCopy = handler;
  v11 = +[ASDServiceBroker defaultBroker];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__ASDArcadeService_recordAppLaunchForBundleID_additionalMetrics_replyHandler___block_invoke;
  v15[3] = &unk_1E7CDD530;
  v15[4] = self;
  v16 = dCopy;
  v17 = metricsCopy;
  v18 = handlerCopy;
  v12 = metricsCopy;
  v13 = dCopy;
  v14 = handlerCopy;
  [v11 getOcelotServiceWithCompletionHandler:v15];
}

void __78__ASDArcadeService_recordAppLaunchForBundleID_additionalMetrics_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __78__ASDArcadeService_recordAppLaunchForBundleID_additionalMetrics_replyHandler___block_invoke_2;
    v13[3] = &unk_1E7CDBAB8;
    v13[4] = *(a1 + 32);
    v14 = *(a1 + 56);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v13];
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78__ASDArcadeService_recordAppLaunchForBundleID_additionalMetrics_replyHandler___block_invoke_3;
    v11[3] = &unk_1E7CDB758;
    v12 = *(a1 + 56);
    [v6 recordLaunchForBundleID:v7 additionalMetrics:v8 replyHandler:v11];
  }

  else
  {
    v9 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v16 = objc_opt_class();
      v17 = 2114;
      v18 = v5;
      v10 = v16;
      _os_log_error_impl(&dword_1B8220000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] recordLaunch failed with error: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __78__ASDArcadeService_recordAppLaunchForBundleID_additionalMetrics_replyHandler___block_invoke_2(uint64_t a1, void *a2)
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
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] recordLaunch failed with xpc error: %{public}@", &v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v3, v5);
}

void __78__ASDArcadeService_recordAppLaunchForBundleID_additionalMetrics_replyHandler___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__ASDArcadeService_recordAppLaunchForBundleID_additionalMetrics_replyHandler___block_invoke_2_4;
  block[3] = &unk_1E7CDBB30;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

@end